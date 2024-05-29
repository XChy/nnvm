#!python3

import subprocess
import tempfile
import os
import os.path as path
import re
import sys
import getopt
from threading import Timer

test_dir = path.split(path.abspath(__file__))[0]
root_dir = path.split(path.split(test_dir)[0])[0]
compiler = path.join(root_dir, "build", "compiler")
sylib = path.join(root_dir, "build", "libsylib.a")

asm = tempfile.mktemp(suffix=".s")
obj = tempfile.mktemp(suffix=".o")
mainexec = tempfile.mktemp(suffix=".out")

riscvgcc = "riscv64-linux-gnu-gcc"

frontend_mode = False
difftest_mode = False


def get_expected(source):
  out_path = path.splitext(source)[0] + ".out"
  if path.exists(out_path):
    with open(out_path) as f:
      return "".join(f.readlines())

  with open(source) as f:
    line = f.readlines()[1]
    searched_groups = re.search('EXPECTED:(.*)', line)
    return ("" if searched_groups is None else searched_groups.group(1))


def get_input(source):
  in_path = path.splitext(source)[0] + ".in"
  if path.exists(in_path):
    with open(in_path) as f:
      return "".join(f.readlines())

  with open(source) as f:
    line = f.readlines()[0]
    searched_groups = re.search('INPUT:(.*)', line)
    return ("" if searched_groups is None else searched_groups.group(1))


def test(source, reported_name):
  ret = subprocess.Popen(
      [compiler, source, "-o", asm], stdout=subprocess.PIPE, encoding="UTF-8", stderr=subprocess.DEVNULL)
  stdout, stderr = ret.communicate()
  if ret.returncode != 0:
    print("COMPLIATION ERROR on", reported_name, "")
    return False
  else:
    # Use assembler to generate binary.
    ret = subprocess.run(
        [riscvgcc, "-c", asm, "-o", obj])
    if ret.returncode != 0:
      print("ASSEMBLER FAILED", reported_name, "")
      return False
    ret = subprocess.run(
        [riscvgcc, obj, sylib, "-o", mainexec], stderr=subprocess.DEVNULL)
    if ret.returncode != 0:
      print("GCC FAILED", reported_name, "")
      return False

    # parse input and output
    inputed = get_input(source).strip() + "\n"
    expected = get_expected(source).strip()

    ret = subprocess.Popen(["qemu-riscv64", "-L", "/usr/riscv64-linux-gnu", mainexec, "console=ttyS0"],
                           stdout=subprocess.PIPE, stdin=subprocess.PIPE,
                           encoding="UTF-8")
    timer = Timer(2, ret.kill)
    try:
      timer.start()
      actual, stderr = ret.communicate(input=inputed)
      if source.count("functional"):
        actual = (actual + ("" if actual.endswith('\n')
                  else "\n") + str(ret.wait())).strip()
    finally:
      if not timer.is_alive():
        print("TIMEOUT on", reported_name)
        timer.cancel()
        return False
      timer.cancel()

    if actual != expected:
      print("FAILED on", reported_name, ", actual",
            actual, ", expected", expected)
      return False
    else:
      print("PASSED", reported_name)
      return True


def __add_test(test_set: set, src: str):
  test_set.add(path.expanduser(src))


def __walk_test_dir(test_set: set, pattern: str):
  for root, _, filenames in os.walk(test_dir):
    for filename in filenames:
      src = path.join(root, filename)
      if (not src.endswith('.sy') or
              len(pattern) != 0 and not re.search(pattern, src)):
        continue
      __add_test(test_set, src)


def main():
  """ Usage: python3 test.py [OPTION]... [FILE]...
  Test all FILEs, or all the tests under $TEST_DIR if no FILE is specified.

  Options:
    -e, --regexp=PATTERNS   test files whose name match PATTERNS, ONLY if no FILE is specified
    -f, --frontend          frontend-testing mode
    -h, --help              display help text and exit
  """
  try:
    opts, args = getopt.getopt(sys.argv[1:], 'de:fh', [
                               'difftest', 'regexp', 'frontend', 'help'])
  except getopt.GetoptError as err:
    print(err)
    exit(1)
  pattern = ''
  for opt, arg in opts:
    if opt in ['-h', '--help']:
      print(main.__doc__)
      exit(0)
    elif opt in ['-d', '--difftest']:
      difftest_mode = True
    elif opt in ['-e', '--regexp']:
      pattern = arg
    elif opt in ['-f', '--frontend']:
      frontend_mode = True
  test_set = set()
  for file in args:
    __add_test(test_set, file)
  if len(test_set) == 0:
    __walk_test_dir(test_set, pattern)

  passed_cnt, total_cnt = 0, 0
  for src in test_set:
    rel_path = path.relpath(src, test_dir)
    print(f"[{total_cnt}] Running on", rel_path)
    passed = test(src, rel_path)
    if passed:
      passed_cnt += 1
    total_cnt += 1

  print("============Complete Test=============")
  print(f"Total: {total_cnt}")
  print(f"Passed: {passed_cnt}")
  print(f"Failed: {total_cnt - passed_cnt}")


if __name__ == '__main__':
  main()
