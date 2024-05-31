#!/bin/bash
set -e

riscvgcc="riscv64-unknown-linux-gnu-gcc"

root_dir=$(dirname $(dirname $0))
compiler=$root_dir/build/compiler

asm=$(mktemp --suffix=".s")
obj=$(mktemp --suffix=".o")
sylib=$root_dir/build/libsylib.a
mainexec=$(mktemp --suffix=".out")
echo "mainexec is in $mainexec"


$compiler $1 -o $asm
$riscvgcc -c $asm -o $obj
$riscvgcc $obj $sylib -o $mainexec

qemu-riscv64 -L "/usr/riscv64-linux-gnu" $mainexec console=ttyS0
