#!python3

import subprocess
import tempfile
import os
import os.path as path

test_dir = path.split(__file__)[0]
root_dir = path.split(path.split(test_dir)[0])[0]
compiler = path.join(root_dir, "build", "compiler")

asm = tempfile.mktemp(".s")

mainobj = tempfile.mktemp(".o")
obj = tempfile.mktemp(".o")

mainexec = tempfile.mktemp(".out")

riscvgcc = "riscv64-unknown-linux-gnu-gcc"

subprocess.run(
    [riscvgcc, "-c", path.join(root_dir, "test", "Driver", "int_main.c"), "-o", mainobj], check=True)

for root, _, filenames in os.walk(test_dir):
    for filename in filenames:
        source = path.join(root, filename)
        if source.endswith(".sysy"):
            ret = subprocess.Popen(
                [compiler, source, "-o", asm], stdout=subprocess.PIPE, encoding="UTF-8")
            stdout, stderr = ret.communicate()
            if ret.returncode != 0:
                print("FAIL on", filename)
            else:
                subprocess.run([riscvgcc, "-c", asm, "-o", obj])
                subprocess.run([riscvgcc, obj, mainobj, "-o", mainexec])
                ret = subprocess.Popen(["qemu-riscv64", "-L", "/usr/riscv64-linux-gnu", mainexec],
                                       stdout=subprocess.PIPE, encoding="UTF-8")
                stdout, stderr = ret.communicate()
                print(mainexec)
                if stdout != "233":
                    print("FAIL on", filename, ", output is ", stdout)
                else:
                    print("PASS", filename)