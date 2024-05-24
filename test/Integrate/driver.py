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
    with open(source) as f:
        line = f.readlines()[1]
        return re.search('EXPECTED:(.*)', line).group(1)


def get_input(source):
    with open(source) as f:
        line = f.readlines()[0]
        return re.search('INPUT:(.*)', line).group(1)


for root, _, filenames in os.walk(test_dir):
    for filename in filenames:
        source = path.join(root, filename)
        if source.endswith(".sysy") or source.endswith(".sy"):
            total_test += 1
            ret = subprocess.Popen(
                [compiler, source, "-o", asm], stdout=subprocess.PIPE, stderr=subprocess.DEVNULL, encoding="UTF-8")
            stdout, stderr = ret.communicate()
            if ret.returncode != 0:
                print("FAILED on", filename)
            else:
                # Use assembler to generate binary.
                ret = subprocess.run([riscvgcc, "-c", asm, "-o", obj])
                ret = subprocess.run([riscvgcc,  obj, sylib, "-o", mainexec])

                # parse input and output
                inputed = get_input(source) + "\n"
                expected = get_expected(source)

                ret = subprocess.Popen(["qemu-riscv64", "-L", "/usr/riscv64-linux-gnu", mainexec, "console=ttyS0"],
                                       stdout=subprocess.PIPE, stdin=subprocess.PIPE, encoding="UTF-8")

                stdout, stderr = ret.communicate(input=inputed)

                if stdout != expected:
                    print("FAILED on", filename, ", actual",
                          stdout, ", expected", expected)
                else:
                    print("PASSED", filename)
                    pass_test += 1

print("============Complete Test=============")
print(f"Total: {total_test}")
print(f"Passed: {pass_test}")
print(f"Failed: {total_test - pass_test}")
