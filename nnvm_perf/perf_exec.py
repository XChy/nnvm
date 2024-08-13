#!python3

import subprocess
import json
import os
import os.path as path
import datetime as datetime
import time

ROOT_DIR = path.dirname(path.dirname(path.abspath(__file__)))
EXEC_DIR = path.join(ROOT_DIR, "nnvm_perf", "exec")
TEST_DIR = path.join(ROOT_DIR, "test", "Integrate", "Official")


def findInput(src: str):
    src = path.splitext(path.basename(src))[0]
    for root, _, files in os.walk(TEST_DIR):
        for name in files:
            if name == src + ".in":
                with open(path.join(root, name)) as f:
                    return ''.join(f.readlines())
    return ""


def run(src: str):
    start = time.perf_counter()
    subprocess.run(src, capture_output=True,
                   input=findInput(src), text=True, encoding='UTF-8')
    end = time.perf_counter()
    return end - start


def main():
    total_cnt = 0

    time_map = dict()

    time_map["__commit_hash__"] = subprocess.check_output(
        ['git', 'rev-parse', 'HEAD']).decode('utf-8').strip()
    time_map["__datetime__"] = datetime.datetime.now().strftime(
        '%Y-%m-%d %H:%M:%S')

    for root, _, files in os.walk(EXEC_DIR):
        for src in files:
            if src.endswith(".out"):
                print(f'[{total_cnt}] Executing {path.basename(src)}')
                time_map[src] = run(path.join(root, src))
                print(f'Run for {time_map[src]}s')
                total_cnt += 1

    output_name = time_map["__datetime__"][0:10] + "_" + \
        time_map["__commit_hash__"][0:9] + ".json"

    with open(path.join(ROOT_DIR, "nnvm_perf", "perf_data", output_name), "w+") as f:
        f.write(json.dumps(time_map, indent=4, sort_keys=True))


if __name__ == '__main__':
    main()
