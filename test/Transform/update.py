#!python3

import subprocess
import tempfile
import os
import os.path as path
import re
import sys
import getopt


TEST_DIR = path.dirname(path.abspath(__file__))
ROOT_DIR = path.dirname(path.dirname(TEST_DIR))
NNVM = path.join(ROOT_DIR, 'build', 'compiler')

arch = 'riscv64'
inclusion_patterns = []
exclusion_patterns = []

TIMEOUT_PERIOD = 60


def update(src: str):
    ir = subprocess.run(
        [NNVM, '-S', '-O1', '--dump-opt-ir', src, '-o', path.splitext(src)[0] + ".s"], capture_output=True,
        text=True, encoding='UTF-8')

    with open(path.splitext(src)[0] + ".nn", "w+") as outputfile:
        outputfile.write(ir.stdout)

    return True


# helper functions of main()

def __init_regexp(arg: str):
    inclusion_patterns.append(arg)


def __init_exclude(arg: str):
    exclusion_patterns.append(arg)


def __parse_args():
    try:
        opts, args = getopt.getopt(sys.argv[1:], 'e:E:', [
            'regexp=', 'exclude='])
    except getopt.GetoptError as err:
        print(err)
        exit(1)
    for opt, arg in opts:
        if opt in ['-e', '--regexp']:
            __init_regexp(arg)
        elif opt in ['-E', '--exclude']:
            __init_exclude(arg)
        else:
            print(f'Unknown option {opt}.')
            exit(1)
    return args


def __add_test(test_set: set, src: str):
    test_set.add(path.expanduser(src))


def __walk_test_dir(test_set: set):
    for root, _, filenames in os.walk(TEST_DIR):
        for filename in filenames:
            src = path.join(root, filename)
            if (not src.endswith('.sy') or len(inclusion_patterns) != 0
                    and not any(re.search(pattern, src) for pattern in inclusion_patterns)
                    or any(re.search(pattern, src) for pattern in exclusion_patterns)):
                continue
            __add_test(test_set, src)


def main():
    args = __parse_args()

    test_set = set()
    __walk_test_dir(test_set)

    passed_cnt, total_cnt = 0, 0
    for src in test_set:
        print(f'[{total_cnt}] Update {path.basename(src)}')
        passed = update(src)
        if passed:
            passed_cnt += 1
        total_cnt += 1


if __name__ == '__main__':
    main()
