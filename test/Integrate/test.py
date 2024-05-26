#!python3

import subprocess
import tempfile
import os
import os.path as path
import re

test_dir = path.split(__file__)[0]
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
            return "\n".join(f.readlines())

    with open(source) as f:
        line = f.readlines()[1]
        searched_groups = re.search('EXPECTED:(.*)', line)
        if searched_groups is None:
            return ""
        else:
            return searched_groups.group(1)


def get_input(source):
    in_path = path.splitext(source)[0] + ".in"
    if path.exists(in_path):
        with open(in_path) as f:
            return "\n".join(f.readlines())

    with open(source) as f:
        line = f.readlines()[0]
        searched_groups = re.search('INPUT:(.*)', line)
        return ("" if searched_groups is None else searched_groups.group(1))


def test(source_path):
    reported_name = path.relpath(source, test_dir)
    ret = subprocess.Popen(
        [compiler, source, "-o", asm], stdout=subprocess.PIPE, stderr=subprocess.DEVNULL, encoding="UTF-8",)
    stdout, stderr = ret.communicate()
    if ret.returncode != 0:
        print("COMPLIATION ERROR on", reported_name, "")
        return False
    else:
        # Use assembler to generate binary.
        ret = subprocess.run([riscvgcc, "-c", asm, "-o", obj])
        ret = subprocess.run([riscvgcc,  obj, sylib, "-o", mainexec])

        # parse input and output
        inputed = get_input(source).strip() + "\n"
        expected = get_expected(source).strip()

        ret = subprocess.Popen(["qemu-riscv64", "-L", "/usr/riscv64-linux-gnu", mainexec, "console=ttyS0"],
                               stdout=subprocess.PIPE, stdin=subprocess.PIPE, encoding="UTF-8")

        if source.count("functional") != 0:
            actual = str(ret.wait())
        else:
            actual, stderr = ret.communicate(input=inputed)

        if actual != expected:
            print("FAILED on", reported_name, ", actual",
                  actual, ", expected", expected)
            return False
        else:
            print("PASSED", reported_name)
            return True


for root, _, filenames in os.walk(test_dir):
    for filename in filenames:
        source = path.join(root, filename)
        if source.endswith("sy"):
            passed = test(source)
            if passed:
                pass_test += 1
            total_test += 1


print("============Complete Test=============")
print(f"Total: {total_test}")
print(f"Passed: {pass_test}")
print(f"Failed: {total_test - pass_test}")
