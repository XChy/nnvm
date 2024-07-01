#!python3
'''Usage: python3 test.py [OPTION]... [FILE]...
Test all FILEs, or all the .sy files under current directory (recursively) if no FILE is specified.

Options:
  -b, --brief             Show failed cases only, without any detail.
  -d, --difftest=ARCH     Differential testing mode, comparing program output with that compiled by gcc on ARCH.
                          Alternatives for ARCH: riscv64, x86_64.
  -e, --regexp=PATTERN    Test files whose paths match PATTERN, with FILEs ignored. Multiple patterns can be specified.
  -E, --exclude=PATTERN   Exclude files whose paths match PATTERN. Multiple patterns can be specified.
  -f, --frontend          Frontend testing mode.
  -h, --help              Display help text and exit.
  -OLEVEL                 Set optimization level of compilation to LEVEL for host program and, if in diffrential testing mode, guest program.
  --opaque-pointers       Use opaque pointers while assembling with llc.
  -v, --verbose           Show all standard errors of subprocesses.

Examples:
  python3 test.py test1.sy test2.sy
    Test test1.sy and test2.sy.

  python3 test.py -bf
    Test all files under current directory (recursively) with minimal information in frontend testing mode.

  python3 test.py -e if -E performance
    Test files whose paths match 'if' but don't match 'performance'.

  python3 test.py -O2 -bdriscv64 -e 'unary' -e '\d+_if'
    Test files whose paths match 'unary' or '\d+_if' with O2 optimization and brief output in differential testing mode where guest program running on riscv64.'''

import subprocess
import tempfile
import os
import os.path as path
import re
import sys
import getopt


TEST_DIR = path.dirname(path.abspath(__file__))
ROOT_DIR = path.dirname(path.dirname(TEST_DIR))
NNVM = path.join(ROOT_DIR, 'build', 'compiler')
SYLIB_RV = path.join(ROOT_DIR, 'build', 'libsylib.a')
SYLIB_X86 = path.join(ROOT_DIR, 'build', 'x86-64libsy.o')
SYLIB_SRC = path.join(ROOT_DIR, 'test', 'Runtime', 'sylib.c')
SYLIB_HDR = f'{path.splitext(SYLIB_SRC)[0]}.h'

GCC_RV = 'riscv64-linux-gnu-gcc'
GCC_X86 = 'gcc'
LLC = 'llc'
QEMU = 'qemu-riscv64'

TIMEOUT_PERIOD = 4

brief_mode = False
verbose_mode = False
frontend_mode = False
difftest_mode = False
difftest_arch = 'riscv64'
inclusion_patterns = []
exclusion_patterns = []
opaque_pointers = False
optimization_level = 0

tmp_asm = tempfile.NamedTemporaryFile(suffix='.s', prefix='nnvm', delete=False)
tmp_obj = tempfile.NamedTemporaryFile(suffix='.o', prefix='nnvm', delete=False)
tmp_out = tempfile.NamedTemporaryFile(suffix='.out', prefix='nnvm',
                                      delete=False)
tmp_asm.close()
tmp_obj.close()
tmp_out.close()


class ExecutionException(Exception):
  def __init__(self, msg: str, stderr: str = ''):
    super().__init__(msg)
    self.verbose_msg = stderr

  def log(self, rel_path: str, is_guest: bool):
    guest_msg = ' for \033[35mGUEST PROGRAM\033[0m, using hard-coded output instead' if is_guest else ''
    print(f'\033[31m{self}\033[0m on {rel_path}{guest_msg}')
    if verbose_mode:
      print(self.verbose_msg, end='')


# helper functions of execute()

def __run(subproc_arglist: list):
  if verbose_mode:
    return subprocess.run(
        subproc_arglist, capture_output=verbose_mode, encoding='UTF-8', check=True)
  return subprocess.run(
      subproc_arglist, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL, encoding='UTF-8', check=True)


def execute(subproc_arglists: list, input_text: str):
  try:
    __run(subproc_arglists[0])  # source code -> assembly code
  except subprocess.CalledProcessError as err:
    raise ExecutionException('COMPLIATION FAILED', stderr=err.stderr)

  try:
    __run(subproc_arglists[1])  # assembly code -> objects
  except subprocess.CalledProcessError as err:
    raise ExecutionException('ASSEMBLING FAILED', stderr=err.stderr)

  try:
    __run(subproc_arglists[2])  # objects -> executable
  except subprocess.CalledProcessError as err:
    raise ExecutionException('LINKAGE FAILED', stderr=err.stderr)

  try:
    # run the executable
    completed = subprocess.run(
        subproc_arglists[3],
        input=input_text, capture_output=True, text=True,
        encoding='UTF-8', timeout=TIMEOUT_PERIOD)
    if len(completed.stdout) == 0:
      return str(completed.returncode)
    else:
      actual = completed.stdout
      if actual.endswith('\n'):
          actual = actual[:-1]
      return f'{actual}\n{completed.returncode}'
  except subprocess.TimeoutExpired:
    raise ExecutionException('TIME OUT')


# helper functions of test()

def __read_input(src: str):
  in_path = f'{path.splitext(src)[0]}.in'
  if path.exists(in_path):
    with open(in_path) as f:
      return ''.join(f.readlines())

  with open(src) as f:
    line = f.readlines()[0]
    searched_groups = re.search('INPUT:(.*)', line)
    return ('' if searched_groups is None else searched_groups.group(1))


def __read_expected(src: str):
  out_path = f'{path.splitext(src)[0]}.out'
  if path.exists(out_path):
    with open(out_path) as f:
      return ''.join(f.readlines())

  with open(src) as f:
    line = f.readlines()[1]
    searched_groups = re.search('EXPECTED:(.*)', line)
    return ('' if searched_groups is None else searched_groups.group(1))


def __choose_host_arglists(src: str):
  HOST_ARGLISTS_NORMAL = [
      [NNVM, src, f'-O{optimization_level}',
       '--backend', 'riscv', '-o', tmp_asm.name],
      [GCC_RV, '-c', tmp_asm.name, '-o', tmp_obj.name],
      [GCC_RV, tmp_obj.name, SYLIB_RV, '-o', tmp_out.name],
      [QEMU, '-L', '/usr/riscv64-linux-gnu', tmp_out.name, 'console=ttyS0'],
  ]
  HOST_ARGLISTS_FRONTEND = [
      [NNVM, src, f'-O{optimization_level}',
       '--backend', 'llvm', '-o', tmp_asm.name],
      [LLC, '--filetype=obj', tmp_asm.name, '-o', tmp_obj.name],
      [GCC_X86, tmp_obj.name, SYLIB_X86, '-o', tmp_out.name],
      [tmp_out.name]
  ]
  if opaque_pointers:
    HOST_ARGLISTS_FRONTEND[1].append('--opaque-pointers')

  if frontend_mode:
    return HOST_ARGLISTS_FRONTEND
  return HOST_ARGLISTS_NORMAL


def __choose_guest_arglists(src: str):
  GUEST_ARGLISTS_RISCV64 = [
      [GCC_RV, '-x', 'c', '-fcommon', '-include', f'{SYLIB_HDR}', f'-O{optimization_level}',
       '-ffp-contract=off', '-fsingle-precision-constant', src, '-S', '-o', tmp_asm.name],
      [GCC_RV, '-c', tmp_asm.name, '-o', tmp_obj.name],
      [GCC_RV, '-fcommon', '-include', f'{SYLIB_HDR}',
       tmp_obj.name, SYLIB_RV, '-o', tmp_out.name],
      [QEMU, '-L', '/usr/riscv64-linux-gnu', tmp_out.name, 'console=ttyS0'],
  ]
  GUEST_ARGLISTS_X86_64 = [
      [GCC_X86, '-x', 'c', '-fcommon', '-include', f'{SYLIB_HDR}', f'-O{optimization_level}',
       '-ffp-contract=off', '-fsingle-precision-constant', src, '-S', '-o', tmp_asm.name],
      [GCC_X86, '-c', tmp_asm.name, '-o', tmp_obj.name],
      [GCC_X86, '-fcommon', '-include', f'{SYLIB_HDR}',
       tmp_obj.name, SYLIB_X86, '-o', tmp_out.name],
      [tmp_out.name]
  ]

  if difftest_arch == 'x86_64':
    return GUEST_ARGLISTS_X86_64
  return GUEST_ARGLISTS_RISCV64


def test(src: str):
  rel_path = path.relpath(src, TEST_DIR)

  input_text = __read_input(src)
  host_arglists = __choose_host_arglists(src)
  try:
    actual_text = execute(host_arglists, input_text)
  except ExecutionException as err:
    err.log(rel_path, is_guest=False)
    return False

  if difftest_mode:
    guest_arglists = __choose_guest_arglists(src)
    try:
      expected_text = execute(guest_arglists, input_text)
    except ExecutionException as err:
      err.log(rel_path, is_guest=True)
      expected_text = __read_expected(src).strip()
  else:
    expected_text = __read_expected(src).strip()

  if actual_text != expected_text:
    print(f'\033[31mDIFFERENT\033[0m on {rel_path}')
    if not brief_mode:
      print(f'\033[33mACTUAL\033[0m:\n{actual_text}')
      print(f'\033[35mEXPECTED\033[0m:\n{expected_text}')
    return False
  if not brief_mode:
    print(f'\033[32mPASSED\033[0m {rel_path}')
  return True


# helper functions of main()

def __init_sylib():
  if path.exists(SYLIB_X86):
    return
  try:
    subprocess.run(
        [GCC_X86, '-c', SYLIB_SRC, '-o', SYLIB_X86], stdout=subprocess.DEVNULL,
        stderr=subprocess.DEVNULL, encoding='UTF-8', check=True)
  except subprocess.CalledProcessError as err:
    print(err)
    exit(1)


def __init_brief_mode():
  global brief_mode
  brief_mode = True


def __init_difftest_mode(arch: str):
  global difftest_mode, difftest_arch
  difftest_mode = True
  alternatives = ['riscv64', 'x86_64']
  if arch not in alternatives:
    print(f'Unsupported reference ARCH \'{arch}\'.')
    print(f'Alternatives: {alternatives}')
    exit(1)
  difftest_arch = arch
  if re.search('x86', arch):
    __init_sylib()


def __init_regexp(arg: str):
  inclusion_patterns.append(arg)


def __init_exclude(arg: str):
  exclusion_patterns.append(arg)


def __init_frontend_mode():
  global frontend_mode
  frontend_mode = True
  __init_sylib()


def __init_optimization(arg: str):
  global optimization_level
  optimization_level = int(arg)


def __init_opaque_pointers():
  global opaque_pointers
  opaque_pointers = True


def __init_verbose():
  global verbose_mode
  verbose_mode = True


def __parse_args():
  try:
    opts, args = getopt.getopt(sys.argv[1:], 'bd:e:E:fhO:v', [
                               'brief', 'difftest=', 'regexp=', 'exclude=', 'frontend', 'help', 'O=', 'opaque-pointers', 'verbose'])
  except getopt.GetoptError as err:
    print(err)
    exit(1)
  for opt, arg in opts:
    if opt in ['-h', '--help']:
      print(__doc__)
      exit(0)
    elif opt in ['-b', '--brief']:
      __init_brief_mode()
    elif opt in ['-d', '--difftest']:
      __init_difftest_mode(arg)
    elif opt in ['-e', '--regexp']:
      __init_regexp(arg)
    elif opt in ['-E', '--exclude']:
      __init_exclude(arg)
    elif opt in ['-f', '--frontend']:
      __init_frontend_mode()
    elif opt in ['-O', '--O']:
      __init_optimization(arg)
    elif opt in ['--opaque-pointers']:
      __init_opaque_pointers()
    elif opt in ['-v', '--verbose']:
      __init_verbose()
    else:
      print(f'Unknown option {opt}.')
      exit(1)
  return args


def __add_test(test_set: set, src: str):
  test_set.add(path.expanduser(src))


def __walk_test_dir(test_set: set):
  for root, _, filenames in os.walk(TEST_DIR):
    for filename in filenames:
      src = path.join(root, filename)
      if (not src.endswith('.sy') or len(inclusion_patterns) != 0
              and not any(re.search(pattern, src) for pattern in inclusion_patterns)
              or any(re.search(pattern, src) for pattern in exclusion_patterns)):
        continue
      __add_test(test_set, src)


def main():
  args = __parse_args()

  test_set = set()
  for file in args:
    __add_test(test_set, file)
  if len(test_set) == 0:
    __walk_test_dir(test_set)

  passed_cnt, total_cnt = 0, 0
  for src in test_set:
    if not brief_mode:
      print(f'[{total_cnt}] Running on {path.basename(src)}')
    passed = test(src)
    if passed:
      passed_cnt += 1
    total_cnt += 1

  print('============ Test Complete =============')
  print(f'Total: {total_cnt}')
  print(f'Passed: {passed_cnt}')
  print(f'Failed: {total_cnt - passed_cnt}')


if __name__ == '__main__':
  main()
