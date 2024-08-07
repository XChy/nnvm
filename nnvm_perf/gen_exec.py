#!python3

import subprocess
import tempfile
import os
import os.path as path
import re

ROOT_DIR = path.dirname(path.dirname(path.abspath(__file__)))
TEST_DIR = path.join(ROOT_DIR, "test", "Transform", "Official")
OUTPUT_DIR = path.join(ROOT_DIR, "nnvm_perf", "exec")
NNVM = path.join(ROOT_DIR, 'build', 'compiler')
GCC_RV = 'riscv64-linux-gnu-gcc'
SYLIB_RV = path.join(ROOT_DIR, 'build', 'libsylib.a')


def update(src: str, tmp_files: dict):
    output_name = path.splitext(path.basename(src))[0] + ".out"
    HOST_ARGLISTS_NORMAL = [
        [NNVM, src, '-O1', '--backend', 'riscv', '-o', tmp_files['asm'].name],
        [GCC_RV, '-c', tmp_files['asm'].name, '-o', tmp_files['obj'].name],
        [GCC_RV, tmp_files['obj'].name,
         SYLIB_RV, '-o', path.join(OUTPUT_DIR, output_name)],
    ]

    for command in HOST_ARGLISTS_NORMAL:
        subprocess.run(
            command, capture_output=True,
            text=True, encoding='UTF-8')


def __add_test(test_set: set, src: str):
    test_set.add(path.expanduser(src))


def __walk_test_dir(test_set: set):
    for root, _, filenames in os.walk(TEST_DIR):
        for filename in filenames:
            src = path.join(root, filename)
            if (not src.endswith('.sy') or not re.search("performance", src)):
                continue
            __add_test(test_set, src)


def main():

    tmp_files = {}
    tmp_files['asm'] = tempfile.NamedTemporaryFile(
        suffix='.s', prefix='nnvm-', delete=False)
    tmp_files['obj'] = tempfile.NamedTemporaryFile(
        suffix='.o', prefix='nnvm-', delete=False)

    test_set = set()
    __walk_test_dir(test_set)

    total_cnt = 0
    for src in test_set:
        print(f'[{total_cnt}] generate {path.basename(src)}')
        update(src, tmp_files)
        total_cnt += 1


if __name__ == '__main__':
    main()
