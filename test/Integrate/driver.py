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
mainobj = tempfile.mktemp(".o")
sylib = path.join(root_dir, "build", "libsylib.a")
mainexec = tempfile.mktemp(".out")

riscvgcc = "riscv64-unknown-linux-gnu-gcc"

subprocess.run(
    [riscvgcc, "-c", path.join(root_dir, "test", "Driver", "int_main.c"), "-o", mainobj], check=True)

total_test = 0
pass_test = 0


def get_expected(source):
    with open(source) as f:
        first_line = f.readline()
        return re.search('EXPECTED:(.*)', first_line).group(1)
    pass


for root, _, filenames in os.walk(test_dir):
    for filename in filenames:
        source = path.join(root, filename)
        if source.endswith(".sysy"):
            total_test += 1
            ret = subprocess.Popen(
                [compiler, source, "-o", asm], stdout=subprocess.PIPE, encoding="UTF-8")
            stdout, stderr = ret.communicate()
            if ret.returncode != 0:
                print("FAIL on", filename)
            else:
                # Use assembler to generate binary.
                ret = subprocess.run([riscvgcc, "-c", asm, "-o", obj])

                # Link runtime libraries
                ret = subprocess.run(
                    [riscvgcc, obj, mainobj, sylib, "-o", mainexec])

                ret = subprocess.Popen(["qemu-riscv64", "-L", "/usr/riscv64-linux-gnu", mainexec],
                                       stdout=subprocess.PIPE, encoding="UTF-8")

                stdout, stderr = ret.communicate()

                expected = get_expected(source)
                if stdout != expected:
                    print("FAIL on", filename, ", actual",
                          stdout, ", expected", expected)
                else:
                    print("PASS", filename)
                    pass_test += 1

print("============Complete Test=============")
print(f"Total: {total_test}")
print(f"Passed: {pass_test}")
print(f"Failed: {total_test - pass_test}")
