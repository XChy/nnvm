.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADD t0, zero, zero
  # implict jump to bb1
bb1:   # loop depth 1
  XORI t1, t0, 5
  SLTIU t1, t1, 1
  BNE t1, zero, bb9
  # implict jump to bb2
bb2:   # loop depth 1
  XORI t1, t0, 10
  SLTIU t1, t1, 1
  BNE t1, zero, bb8
  # implict jump to bb3
bb3:   # loop depth 1
  SLLIW a0, t0, 1
  # implict jump to bb4
bb4:   # loop depth 1
  # implict jump to bb5
bb5:   # loop depth 1
  ADDIW t0, t0, 1
  SLTI t1, t0, 100
  BNE t1, zero, bb7
  # implict jump to bb6
bb6:   # loop depth 0
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb7:   # loop depth 1752639588
  JAL zero, bb1
bb8:   # loop depth 1
  ADDI a0, zero, 42
  JAL zero, bb4
bb9:   # loop depth 1
  ADDI a0, zero, 25
  JAL zero, bb5
