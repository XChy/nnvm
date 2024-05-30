#!python3
'''Usage: python3 test.py [OPTION]... [FILE]...
Test all FILEs, or all the .sy files under current directory (recursively) if no FILE is specified.

Options:
  -b, --brief             Show failed cases only, without any detail.
  -d, --difftest=ARCH     Differential testing mode, comparing program output with that compiled by gcc on ARCH.
                          Alternatives for ARCH: riscv64, x86_64.
  -e, --regexp=PATTERN    Test files whose names match PATTERN, with FILEs ignored.
                          If this option appears multiple times, search for all patterns given.
  -f, --frontend          Frontend testing mode.
  -h, --help              Display help text and exit.
  -OLEVEL                 Set optimization level of compilation to LEVEL for guest program and, if in diffrential testing mode, reference program.

Examples:
  python3 test.py test1.sy test2.sy
    Test test1.sy and test2.sy.

  python3 test.py -bf
    Test all files under current directory (recursively) with minimal information in frontend testing mode.

  python3 test.py -O2 -bdriscv64 -e 'unary' -e '\d+_if'
    Test files with O2 optimization whose names include substrings 'if' or 'op' briefly in differential testing mode with reference program running on riscv64.'''

import subprocess
import tempfile
import os
import os.path as path
import re
import sys
import getopt


TEST_DIR = path.split(path.abspath(__file__))[0]
ROOT_DIR = path.split(path.split(TEST_DIR)[0])[0]
NNVM = path.join(ROOT_DIR, 'build', 'compiler')
SYLIB_RV = path.join(ROOT_DIR, 'build', 'libsylib.a')
SYLIB_X86 = path.join(ROOT_DIR, 'build', 'x86-64libsy.o')
SYLIB_SRC = path.join(ROOT_DIR, 'test', 'Runtime', 'sylib.c')

GCC_RV = 'riscv64-linux-gnu-gcc'
GCC_X86 = 'gcc'
LLC = 'llc'
QEMU = 'qemu-riscv64'

TIMEOUT_PERIOD = 2

brief_mode = False
frontend_mode = False
difftest_mode = False
difftest_arch = 'riscv64'
patterns = []
optimization_level = 0

tmp_asm = tempfile.NamedTemporaryFile(suffix='.s', prefix='nnvm', delete=False)
tmp_obj = tempfile.NamedTemporaryFile(suffix='.o', prefix='nnvm', delete=False)
tmp_out = tempfile.NamedTemporaryFile(suffix='.out', prefix='nnvm',
                                      delete=False)


class ExecutionException(Exception):
  pass


def __read_expected(src: str):
  out_path = path.splitext(src)[0] + '.out'
  if path.exists(out_path):
    with open(out_path) as f:
      return ''.join(f.readlines())

  with open(src) as f:
    line = f.readlines()[1]
    searched_groups = re.search('EXPECTED:(.*)', line)
    return ('' if searched_groups is None else searched_groups.group(1))


def __read_input(src: str):
  in_path = path.splitext(src)[0] + '.in'
  if path.exists(in_path):
    with open(in_path) as f:
      return ''.join(f.readlines())

  with open(src) as f:
    line = f.readlines()[0]
    searched_groups = re.search('INPUT:(.*)', line)
    return ('' if searched_groups is None else searched_groups.group(1))


def execute(subproc_arglists: list, input_text: str):
  # source code -> assembly code
  try:
    subprocess.run(
        subproc_arglists[0], stdout=subprocess.DEVNULL,
        stderr=subprocess.DEVNULL, encoding='UTF-8', check=True)
  except subprocess.CalledProcessError:
    raise ExecutionException('COMPLIATION FAILED')

  # assembly code -> objects
  try:
    subprocess.run(
        subproc_arglists[1], stdout=subprocess.DEVNULL,
        stderr=subprocess.DEVNULL if brief_mode else None, encoding='UTF-8', check=True)
  except subprocess.CalledProcessError:
    raise ExecutionException('ASSEMBLING FAILED')

  # objects -> executable
  try:
    subprocess.run(
        subproc_arglists[2], stdout=subprocess.DEVNULL,
        stderr=subprocess.DEVNULL, encoding='UTF-8', check=True)
  except subprocess.CalledProcessError:
    raise ExecutionException('LINKAGE FAILED')

  # run the executable
  try:
    ret = subprocess.run(
        subproc_arglists[3],
        input=input_text, capture_output=True, text=True,
        encoding='UTF-8', timeout=TIMEOUT_PERIOD)
    if len(ret.stdout) == 0:
      return str(ret.returncode)
    else:
      return f'{ret.stdout.strip()}\n{ret.returncode}'
  except subprocess.TimeoutExpired:
    raise ExecutionException('TIME OUT')


def test(src: str):
  rel_path = path.relpath(src, TEST_DIR)

  try:
    SUBPROC_ARGLISTS_RV = [
        [NNVM, src, f'-O{optimization_level}',
         '--backend', 'riscv', '-o', tmp_asm.name],
        [GCC_RV, '-c', tmp_asm.name, '-o', tmp_obj.name],
        [GCC_RV, tmp_obj.name, SYLIB_RV, '-o', tmp_out.name],
        [QEMU, '-L', '/usr/riscv64-linux-gnu', tmp_out.name, 'console=ttyS0'],
    ]
    SUBPROC_ARGLISTS_FRONTEND = [
        [NNVM, src, f'-O{optimization_level}',
         '--backend', 'llvm', '-o', tmp_asm.name],
        [LLC, '--filetype=obj', tmp_asm.name, '-o', tmp_obj.name],
        [GCC_X86, tmp_obj.name, SYLIB_X86, '-o', tmp_out.name],
        [tmp_out.name]
    ]

    if frontend_mode:
      subproc_arglists = SUBPROC_ARGLISTS_FRONTEND
    else:
      subproc_arglists = SUBPROC_ARGLISTS_RV
    input_text = __read_input(src).strip()
    actual_text = execute(subproc_arglists, input_text)
  except ExecutionException as err:
    print(f'\033[31m{err}\033[0m on {rel_path}')
    return False

  if difftest_mode:
    SUBPROC_ARGLISTS_DIFF_RV = SUBPROC_ARGLISTS_RV.copy()
    SUBPROC_ARGLISTS_DIFF_RV[0] = [
        GCC_RV, '-x', 'c', f'-O{optimization_level}', src, '-S', '-o', tmp_asm.name]
    SUBPROC_ARGLISTS_DIFF_X86 = SUBPROC_ARGLISTS_FRONTEND.copy()
    SUBPROC_ARGLISTS_DIFF_X86[0] = [
        GCC_X86, '-x', 'c', f'-O{optimization_level}', src, '-S', '-o', tmp_asm.name]

    if difftest_arch == 'x86_64':
      subproc_arglists_diff = SUBPROC_ARGLISTS_DIFF_X86
    else:
      subproc_arglists_diff = SUBPROC_ARGLISTS_DIFF_RV
    expected_text = execute(subproc_arglists_diff, input_text)
  else:
    expected_text = __read_expected(src).strip()

  if actual_text != expected_text:
    print(f'\033[31mDIFFERENT\033[0m on {rel_path}')
    print(f'\033[33mACTUAL\033[0m:\n{actual_text}')
    print(f'\033[35mEXPECTED\033[0m:\n{expected_text}')
    return False
  if not brief_mode:
    print(f'\033[32mPASSED\033[0m {rel_path}')
  return True


def __add_test(test_set: set, src: str):
  test_set.add(path.expanduser(src))


def __walk_test_dir(test_set: set):
  for root, _, filenames in os.walk(TEST_DIR):
    for filename in filenames:
      src = path.join(root, filename)
      if (not src.endswith('.sy') or len(patterns) != 0
              and not any(re.search(pattern, src) for pattern in patterns)):
        continue
      __add_test(test_set, src)


def __init_brief_mode():
  global brief_mode
  brief_mode = True


def __init_difftest_mode(arch: str):
  global difftest_mode
  difftest_mode = True
  alternatives = ['riscv64', 'x86_64']
  if arch not in alternatives:
    print(f'Unsupported reference ARCH \'{arch}\'.')
    print(f'Alternatives: {alternatives}')
    exit(1)


def __init_regexp(arg: str):
  patterns.append(arg)


def __init_frontend_mode():
  global frontend_mode
  frontend_mode = True
  try:
    subprocess.run(
        [GCC_X86, '-c', SYLIB_SRC, '-o', SYLIB_X86], stdout=subprocess.PIPE, stderr=subprocess.DEVNULL, encoding='UTF-8', check=True)
  except subprocess.CalledProcessError as err:
    print(err)
    exit(1)


def __init_optimization(arg: str):
  global optimization_level
  optimization_level = int(arg)


def __parse_args():
  try:
    opts, args = getopt.getopt(sys.argv[1:], 'bd:e:fhO:', [
                               'brief', 'difftest=', 'regexp=', 'frontend', 'help', 'O='])
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
    elif opt in ['-f', '--frontend']:
      __init_frontend_mode()
    elif opt in ['-O', '--O']:
      __init_optimization(arg)
    else:
      print(f'Unknown option {opt}.')
      exit(1)
  return args


def main():
  tmp_asm.close()
  tmp_obj.close()
  tmp_out.close()

  args = __parse_args()

  test_set = set()
  for file in args:
    __add_test(test_set, file)
  if len(test_set) == 0:
    __walk_test_dir(test_set)

  passed_cnt, total_cnt = 0, 0
  for src in test_set:
    if not brief_mode:
      print(f'[{total_cnt}] Running on {path.split(src)[1]}')
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
