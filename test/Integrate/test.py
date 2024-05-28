#!python3

import subprocess
import tempfile
import os
import os.path as path
import re
import sys
from threading import Timer

test_dir = path.split(path.abspath(__file__))[0]
root_dir = path.split(path.split(test_dir)[0])[0]
compiler = path.join(root_dir, "build", "compiler")

asm = tempfile.mktemp(".s")
obj = tempfile.mktemp(".o")
sylib = path.join(root_dir, "build", "libsylib.a")
mainexec = tempfile.mktemp(".out")

riscvgcc = "riscv64-unknown-linux-gnu-gcc"

total_test = 0
pass_test = 0


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


if len(sys.argv) == 2:
    passed = test(path.expanduser(sys.argv[1]))
    if passed:
        pass_test += 1
    total_test += 1
else:
    for root, _, filenames in os.walk(test_dir):
        for filename in filenames:
            source = path.join(root, filename)
            reported_name = path.relpath(source, test_dir)
            if source.endswith("sy") and (source.count('functional') or source.count('Integer')):
                print(f"[{total_test}] Running on", reported_name)
                passed = test(source, reported_name)
                if passed:
                    pass_test += 1
                total_test += 1


print("============Complete Test=============")
print(f"Total: {total_test}")
print(f"Passed: {pass_test}")
print(f"Failed: {total_test - pass_test}")
