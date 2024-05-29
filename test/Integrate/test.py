#!python3
"""Usage: python3 test.py [OPTION]... [FILE]...
Test all FILEs, or all the .sy files under $TEST_DIR if no FILE is specified.

Options:
  -b, --brief             Show failed cases only
  -d, --difftest          Differential test mode
  -e, --regexp=PATTERN    Test files whose names contain PATTERN, with FILEs ignored. Multiple PATTERNs are allowed
  -f, --frontend          Frontend test mode
  -h, --help              Display help text and exit
"""

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


def __get_expected(src: str):
  out_path = path.splitext(src)[0] + ".out"
  if path.exists(out_path):
    with open(out_path) as f:
      return ''.join(f.readlines())

  with open(src) as f:
    line = f.readlines()[1]
    searched_groups = re.search('EXPECTED:(.*)', line)
    return ("" if searched_groups is None else searched_groups.group(1))


def __get_input(src: str):
  in_path = path.splitext(src)[0] + ".in"
  if path.exists(in_path):
    with open(in_path) as f:
      return ''.join(f.readlines())

  with open(src) as f:
    line = f.readlines()[0]
    searched_groups = re.search('INPUT:(.*)', line)
    return ("" if searched_groups is None else searched_groups.group(1))


def __print_error(msg: str, rel_path: str):
  print(f'\033[31m{msg}\033[0m on {rel_path}')


tmp_asm = tempfile.NamedTemporaryFile(suffix='.s', delete=False)
tmp_obj = tempfile.NamedTemporaryFile(suffix='.o', delete=False)
tmp_out = tempfile.NamedTemporaryFile(suffix='.out', delete=False)

frontend_mode = False
difftest_mode = False


def test(src: str, rel_path: str):
  SUBPROC_ARGLISTS_RV = [
      [NNVM, src, '-o', tmp_asm.name],
      [GCC_RV, '-c', tmp_asm.name, '-o', tmp_obj.name],
      [GCC_RV, tmp_obj.name, SYLIB_RV, '-o', tmp_out.name],
      [QEMU, '-L', '/usr/riscv64-linux-gnu', tmp_out.name, 'console=ttyS0'],
  ]
  SUBPROC_ARGLISTS_FRONTEND = [
      [NNVM, src, '--backend', 'llvm', '-o', tmp_asm.name],
      [LLC, '-O2', '--filetype=obj', tmp_asm.name, '-o', tmp_obj.name],
      [GCC_X86, tmp_obj.name, SYLIB_X86, '-o', tmp_out.name],
      [tmp_out.name, 'console=ttyS0']
  ]
  subproc_arglists = SUBPROC_ARGLISTS_FRONTEND if frontend_mode else SUBPROC_ARGLISTS_RV

  # source code -> assembly code
  ret = subprocess.run(subproc_arglists[0], stdout=subprocess.PIPE,
                       stderr=subprocess.DEVNULL, encoding='UTF-8')
  tmp_asm.close()
  if ret.returncode != 0:
    __print_error('COMPLIATION FAILED', rel_path)
    return False

  # assembly code -> objects
  ret = subprocess.run(subproc_arglists[1], stdout=subprocess.DEVNULL,
                       stderr=subprocess.DEVNULL, encoding='UTF-8')
  tmp_obj.close()
  if ret.returncode != 0:
    __print_error('ASSEMBLING FAILED', rel_path)
    return False

  # objects -> executable
  ret = subprocess.run(subproc_arglists[2], stdout=subprocess.DEVNULL,
                       stderr=subprocess.DEVNULL, encoding='UTF-8')
  tmp_out.close()
  if ret.returncode != 0:
    __print_error('LINKAGE FAILED', rel_path)
    return False

  # run the executable
  input_text = __get_input(src).strip()
  expected_text = __get_expected(src).strip()
  try:
    ret = subprocess.run(subproc_arglists[3],
                         input=input_text, capture_output=True, text=True,
                         encoding='UTF-8', timeout=TIMEOUT_PERIOD)
    if len(ret.stdout) == 0:
      actual_text = str(ret.returncode)
    else:
      actual_text = f'{ret.stdout.strip()}\n{ret.returncode}'
  except subprocess.TimeoutExpired:
    __print_error('TIMEOUT on', rel_path)
    return False

  if actual_text != expected_text:
    print(
        f'FAILED on {rel_path}.\n\033[31mACTUAL\033[0m:\n{actual_text}\n\033[35mEXPECTED\033[0m:\n{expected_text}')
    return False
  print(f'\033[32mPASSED\033[0m {rel_path}')
  return True


def __add_test(test_set: set, src: str):
  test_set.add(path.expanduser(src))


def __walk_test_dir(test_set: set, patterns: list):
  for root, _, filenames in os.walk(TEST_DIR):
    for filename in filenames:
      src = path.join(root, filename)
      if (not src.endswith('.sy') or len(patterns) != 0
              and not any(re.search(pattern, src) for pattern in patterns)):
        continue
      __add_test(test_set, src)


def __init_difftest_mode():
  global difftest_mode
  difftest_mode = True


def __init_frontend_mode():
  global frontend_mode
  frontend_mode = True
  # compile sylib(x86-64) for frontend test
  try:
    subprocess.run(
        [GCC_X86, "-c", SYLIB_SRC, "-o", SYLIB_X86], stdout=subprocess.PIPE, stderr=subprocess.DEVNULL, encoding="UTF-8", check=True)
  except subprocess.CalledProcessError as err:
    print(err)
    exit(1)


def main():
  try:
    opts, args = getopt.getopt(sys.argv[1:], 'de:fh', [
                               'difftest', 'regexp', 'frontend', 'help'])
  except getopt.GetoptError as err:
    print(err)
    exit(1)
  patterns = []
  for opt, arg in opts:
    if opt in ['-h', '--help']:
      print(__doc__)
      exit(0)
    elif opt in ['-d', '--difftest']:
      __init_difftest_mode()
    elif opt in ['-e', '--regexp']:
      patterns.append(arg)
    elif opt in ['-f', '--frontend']:
      __init_frontend_mode()

  test_set = set()
  for file in args:
    __add_test(test_set, file)
  if len(test_set) == 0:
    __walk_test_dir(test_set, patterns)

  passed_cnt, total_cnt = 0, 0
  for src in test_set:
    rel_path = path.relpath(src, TEST_DIR)
    print(f"[{total_cnt}] Running on", rel_path)
    passed = test(src, rel_path)
    if passed:
      passed_cnt += 1
    total_cnt += 1

  print("============ Test Complete =============")
  print(f"Total: {total_cnt}")
  print(f"Passed: {passed_cnt}")
  print(f"Failed: {total_cnt - passed_cnt}")


if __name__ == '__main__':
  main()
