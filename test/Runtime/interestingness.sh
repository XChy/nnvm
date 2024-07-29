#!/usr/bin/bash

# Usage: creduce path/to/interestingness.sh path/to/sysy-code

# manual modification required
NNVM_HOME=~/repos/projects/nnvm
SRC=median2

INPUT="$NNVM_HOME/test/Integrate/Official/performance/$SRC.in"
BIN_NNVM="$SRC-nnvm"
BIN_GCC="$SRC-gcc"

generate_nnvm_binary() {
    local optimization_level=$1
    ~/repos/projects/nnvm/build/compiler "$SRC.sy" -O"$optimization_level" -o "$SRC.s" >/dev/null 2>&1 &&
        riscv64-linux-gnu-gcc -c "$SRC.s" -o "$SRC.o" &&
        riscv64-linux-gnu-gcc "$SRC.o" "$NNVM_HOME/build/libsylib.a" -o "$BIN_NNVM-$optimization_level"
}

generate_gcc_binary() {
    local optimization_level=$1
    gcc -x c -fcommon -include "$NNVM_HOME/test/Runtime/sylib.h" -O"$optimization_level" -ffp-contract=off -fsingle-precision-constant "$NNVM_HOME/test/Runtime/sylib.c" "$SRC.sy" -o $BIN_GCC 2>/dev/null -fsanitize=undefined
}

run_interestingness_test() {
    diff -q <(qemu-riscv64 -L /usr/riscv64-linux-gnu $1 console=tty50 <"$INPUT") <("./$SRC-gcc" <"$INPUT")
}

generate_nnvm_binary 0 &&
    generate_nnvm_binary 1 &&
    generate_gcc_binary 1 &&
    run_interestingness_test "$BIN_NNVM-0" &&
    ! run_interestingness_test "$BIN_NNVM-1"
