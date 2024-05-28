#!python3

import subprocess
import tempfile
import os
import os.path as path
import re

test_dir = path.split(__file__)[0]
root_dir = path.split(path.split(test_dir)[0])[0]
compiler = path.join(root_dir, "build", "compiler")

llvm = tempfile.mktemp(".ll")
obj = tempfile.mktemp(".o")
sylib = path.join(root_dir, "build", "x86-64libsy.o")
sylib_source = path.join(test_dir, "../Runtime", "sylib.c")
mainexec = tempfile.mktemp(".out")

gcc = "gcc"
llc = "llc"

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
        return ("" if searched_groups is None else searched_groups.group(1))


def get_input(source):
    in_path = path.splitext(source)[0] + ".in"
    if path.exists(in_path):
        with open(in_path) as f:
            return "\n".join(f.readlines())

    with open(source) as f:
        line = f.readlines()[0]
        searched_groups = re.search('INPUT:(.*)', line)
        return ("" if searched_groups is None else searched_groups.group(1))


def test(source):
    reported_name = path.relpath(source, test_dir)
    ret = subprocess.Popen(
        [compiler, source, "-backend", "llvm", "-o", llvm], stdout=subprocess.PIPE, stderr=subprocess.DEVNULL, encoding="UTF-8",)
    stdout, stderr = ret.communicate()
    if ret.returncode != 0:
        print("COMPLIATION ERROR on", reported_name, "")
        return False
    else:
        # Use assembler to generate binary.
        ret = subprocess.run([llc, "-O2", "-filetype=obj", llvm, "-o", obj])
        if ret.returncode != 0:
            return False
        ret = subprocess.run([gcc,  obj, sylib, "-o", mainexec])
        if ret.returncode != 0:
            return False

        # parse input and output
        inputed = get_input(source).strip() + "\n"
        expected = get_expected(source).strip()

        ret = subprocess.Popen(mainexec,
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


# compile sylib(x86-64) for frontend test
print(f"{gcc} -c {sylib_source} -o {sylib}")
ret = subprocess.Popen(
    ["gcc", "-c", sylib_source, "-o", sylib], stdout=subprocess.PIPE, stderr=subprocess.DEVNULL, encoding="UTF-8",)
ret.communicate()
assert (ret.returncode == 0)

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
