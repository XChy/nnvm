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
  -r, --random            Test with random sources generated by Csmith. Other test cases will be ignored.
  -v, --verbose           Show all standard errors of subprocesses.

Examples:
  python3 test.py test1.sy test2.sy
    Test test1.sy and test2.sy.

  python3 test.py -bf
    Test all files under current directory (recursively) with minimal information in frontend testing mode.

  python3 test.py -e if -E performance
    Test files whose paths match 'if' but don't match 'performance'.

  python3 test.py -O2 -bdriscv64 -e 'unary' -e \\d'+_if'
    Test files whose paths match 'unary' or 'r'\\d'+_if' with O2 optimization and brief output in differential testing mode where guest program running on riscv64.'''

import subprocess
import tempfile
import os
import os.path as path
import re
import sys
import getopt
from concurrent.futures import ProcessPoolExecutor
import hashlib
import shutil


TEST_DIR = path.dirname(path.abspath(__file__))
ROOT_DIR = path.dirname(path.dirname(TEST_DIR))
CSMITH_GENERATED_DIR = path.join(TEST_DIR, 'Csmith')
NNVM = path.join(ROOT_DIR, 'build', 'compiler')
SYLIB_RV = path.join(ROOT_DIR, 'build', 'libsylib.a')
SYLIB_X86 = path.join(ROOT_DIR, 'build', 'x86-64libsy.o')
SYLIB_SRC = path.join(ROOT_DIR, 'test', 'Runtime', 'sylib.c')
SYLIB_HDR = f'{path.splitext(SYLIB_SRC)[0]}.h'
CSMITH_HDR = path.join(ROOT_DIR, 'test', 'Runtime', 'csmith.h')

GCC_RV = 'riscv64-linux-gnu-gcc'
GCC_X86 = 'gcc'
LLC = 'llc'
QEMU = 'qemu-riscv64'
CSMITH = 'csmith'

COMPILING_TIME_LIMIT = 120
RUNNING_TIME_LIMIT = 60

brief_mode = False
verbose_mode = False
frontend_mode = False
difftest_mode = False
random_mode = False
difftest_arch = 'riscv64'
inclusion_patterns = []
exclusion_patterns = []
opaque_pointers = False
optimization_level = 0
random_sources = []


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
            subproc_arglist, capture_output=verbose_mode, encoding='UTF-8', check=True, timeout=COMPILING_TIME_LIMIT, errors='ignore')
    return subprocess.run(
        subproc_arglist, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL, encoding='UTF-8', check=True, timeout=COMPILING_TIME_LIMIT, errors='ignore')


def execute(subproc_arglists: list, input_text: str):
  try:
    __run(subproc_arglists[0])  # source code -> assembly code
  except subprocess.CalledProcessError as err:
    raise ExecutionException('COMPLIATION FAILED', stderr=err.stderr)
  except subprocess.TimeoutExpired as err:
    raise ExecutionException('COMPILING TIME OUT', stderr=err.stderr)

  try:
    __run(subproc_arglists[1])  # assembly code -> objects
  except subprocess.CalledProcessError as err:
    raise ExecutionException('ASSEMBLING FAILED', stderr=err.stderr)
  except subprocess.TimeoutExpired as err:
    raise ExecutionException('ASSENBLING TIME OUT', stderr=err.stderr)

  try:
    __run(subproc_arglists[2])  # objects -> executable
  except subprocess.CalledProcessError as err:
    raise ExecutionException('LINKAGE FAILED', stderr=err.stderr)
  except subprocess.TimeoutExpired as err:
    raise ExecutionException('LINKAGE TIME OUT', stderr=err.stderr)

    try:
        # run the executable
        completed = subprocess.run(
            subproc_arglists[3],
            input=input_text, capture_output=True, text=True,
            encoding='UTF-8', timeout=RUNNING_TIME_LIMIT, errors='ignore')
        if len(completed.stdout) == 0:
            return str(completed.returncode)
        else:
            actual = completed.stdout
            if actual.endswith('\n'):
                actual = actual[:-1]
            return f'{actual}\n{completed.returncode}'
    except subprocess.TimeoutExpired as err:
        raise ExecutionException('TIME OUT', stderr=err.stderr)


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


def __choose_host_arglists(src: str, tmp_files: dict):
  HOST_ARGLISTS_NORMAL = [
      [NNVM, src, f'-O{optimization_level}',
       '--backend', 'riscv', '-o', tmp_files['asm'].name],
      [GCC_RV, '-march=rv64gc', '-c', tmp_files['asm'].name,
          '-o', tmp_files['obj'].name],
      [GCC_RV, tmp_files['obj'].name, SYLIB_RV, '-o', tmp_files['out'].name],
      [QEMU, '-L', '/usr/riscv64-linux-gnu', '-cpu', 'rv64,zba=true,zbb=true',
       tmp_files['out'].name, 'console=ttyS0'],
  ]
  HOST_ARGLISTS_FRONTEND = [
      [NNVM, src, f'-O{optimization_level}',
       '--backend', 'llvm', '-o', tmp_files['asm'].name],
      [LLC, '--filetype=obj', tmp_files['asm'].name, '-o', tmp_files['obj'].name],
      [GCC_X86, tmp_files['obj'].name, SYLIB_X86, '-o', tmp_files['out'].name],
      [tmp_files['out'].name]
  ]
  if opaque_pointers:
    HOST_ARGLISTS_FRONTEND[1].append('--opaque-pointers')

  if frontend_mode:
    return HOST_ARGLISTS_FRONTEND
  return HOST_ARGLISTS_NORMAL


def __choose_guest_arglists(src: str, tmp_files: dict):
  GUEST_ARGLISTS_RISCV64 = [
      [GCC_RV, '-x', 'c', '-fcommon', '-include', f'{SYLIB_HDR}', f'-O{optimization_level}',
       '-ffp-contract=off', '-fsingle-precision-constant', src, '-S', '-o', tmp_files['asm'].name],
      [GCC_RV, '-c', tmp_files['asm'].name, '-o', tmp_files['obj'].name],
      [GCC_RV, '-fcommon', '-include', f'{SYLIB_HDR}',
       tmp_files['obj'].name, SYLIB_RV, '-o', tmp_files['out'].name],
      [QEMU, '-L', '/usr/riscv64-linux-gnu', '-cpu', 'rv64,zba=true,zbb=true',
       tmp_files['out'].name, 'console=ttyS0'],
  ]
  GUEST_ARGLISTS_X86_64 = [
      [GCC_X86, '-x', 'c', '-fcommon', '-include', f'{SYLIB_HDR}', f'-O{optimization_level}',
       '-ffp-contract=off', '-fsingle-precision-constant', src, '-S', '-o', tmp_files['asm'].name],
      [GCC_X86, '-c', tmp_files['asm'].name, '-o',
       tmp_files['obj'].name],
      [GCC_X86, '-fcommon', '-include', f'{SYLIB_HDR}',
       tmp_files['obj'].name, SYLIB_X86, '-o', tmp_files['out'].name],
      [tmp_files['out'].name]
  ]

  if difftest_arch == 'x86_64':
    return GUEST_ARGLISTS_X86_64
  return GUEST_ARGLISTS_RISCV64


def test(src: str, tmp_files: dict):
  rel_path = path.relpath(src, TEST_DIR)

  input_text = __read_input(src)
  host_arglists = __choose_host_arglists(src, tmp_files)
  try:
    actual_text = execute(host_arglists, input_text)
  except ExecutionException as err:
    err.log(rel_path, is_guest=False)
    return False

  if difftest_mode:
    guest_arglists = __choose_guest_arglists(src, tmp_files)
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


def __init_random():
    global random_mode
    random_mode = True
    completed = subprocess.run(
        [CSMITH, '--no-pointers', '--quiet', '--no-structs', '--no-unions', '--no-volatile-pointers', '--no-const-pointers', '--no-builtins', '--no-jumps', '--no-bitfields', '--no-argc', '--no-structs', '--output', '/dev/stdout', '--no-longlong', '--no-uint8', '--no-math64', '--no-comma-operators', '--no-bitfields', '--no-volatiles', '--max-funcs', '10'], capture_output=True, text=True, encoding='UTF-8', errors='ignore')
    with open(CSMITH_HDR, 'r') as f:
        csmith_hdr = f.read()
    code = completed.stdout.replace(
        '#include "csmith.h"', csmith_hdr).replace(
        '#define NO_LONGLONG', '').replace(
        'static ', '').replace(
        '(void)', '()').replace(
        'int print_hash_value = 0', 'int print_hash_value = 1').replace(
        'printf("index = [%d]\\n", ', 'putdim(').replace(
        'printf("index = [%d][%d]\\n", ', 'putdim2(').replace(
        'printf("index = [%d][%d][%d]\\n", ', 'putdim3(').replace(
            'volatile', ''
        )
    code = re.sub(r'(?:(?:const )?u?int(8|16|32|64)_t|long)', 'int', code)
    code = re.sub(r'\b(0[Xx][\dA-Fa-f]+|0[0-7]+|\d+)[UuLl]+\b', r'\1', code)
    code = re.sub(r'(print_hash\()[^, ]+, ([^, ]+\))', r'\1\2', code)
    code = re.sub(
        r'(transparent_crc\([^, ]+, )[^, ]+, ([^, ]+\))', r'\1\2', code)
    code = re.sub(
        r'(transparent_crc_bytes\()[^, ]+, [^, ]+, [^, ]+, ([^, ]+\))', r'\1\2', code)
    with tempfile.NamedTemporaryFile(
            suffix='.sy', prefix='csmith-', delete=False) as f:
        f.write(code.encode())
        random_sources.append(f.name)


def __init_verbose():
  global verbose_mode
  verbose_mode = True


def __parse_args():
  try:
    opts, args = getopt.getopt(sys.argv[1:], 'bd:e:E:fhO:rv', [
        'brief', 'difftest=', 'regexp=', 'exclude=', 'frontend', 'help', 'O=', 'opaque-pointers', 'random', 'verbose'])
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
    elif opt in ['-r', '--random']:
      __init_random()
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


def __test_src(src: str):
  h = hashlib.new('sha256')
  h.update(src.encode())
  hashed_name = h.hexdigest()
  tmp_files = {}
  tmp_files['asm'] = tempfile.NamedTemporaryFile(
      suffix='.s', prefix=f'nnvm-{hashed_name}-', delete=False)
  tmp_files['obj'] = tempfile.NamedTemporaryFile(
      suffix='.o', prefix=f'nnvm-{hashed_name}-', delete=False)
  tmp_files['out'] = tempfile.NamedTemporaryFile(
      suffix='.out', prefix=f'nnvm-{hashed_name}-', delete=False)
  for file in tmp_files.values():
    file.close()

  if not brief_mode:
    print(f'Running on {path.basename(src)}')
  result = test(src, tmp_files)
  if random_mode and not result:
    shutil.copy(src, CSMITH_GENERATED_DIR)
  for file in tmp_files.values():
    try:
      os.remove(file.name)
    except FileNotFoundError:
      if verbose_mode:
        print('A temporary file to remove not found.')
  return result


def main():
  args = __parse_args()

  test_set = set()
  if random_mode:
    for file in random_sources:
      __add_test(test_set, file)
  else:
    for file in args:
      __add_test(test_set, file)
    if len(test_set) == 0:
      __walk_test_dir(test_set)

  passed_cnt, total_cnt = 0, 0

  with ProcessPoolExecutor() as executor:
    for result in executor.map(__test_src, test_set):
      if result:
        passed_cnt += 1
      total_cnt += 1

  print('============ Test Complete =============')
  print(f'Total: {total_cnt}')
  print(f'Passed: {passed_cnt}')
  print(f'Failed: {total_cnt - passed_cnt}')


if __name__ == '__main__':
  main()
