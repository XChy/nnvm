.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADD t1, zero, zero
  ADD t0, zero, zero
  # implict jump to bb1
bb1:   # loop depth 1
  XORI t2, t1, 50
  SLTIU t2, t2, 1
  BNE t2, zero, bb3
  # implict jump to bb2
bb2:   # loop depth 1
  ADDW a0, t0, t1
  ADDIW t1, t1, 1
  SLTI t0, t1, 100
  BNE t0, zero, bb4
  # implict jump to bb3
bb3:   # loop depth 0
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb4:   # loop depth 1
  ADD t0, a0, zero
  JAL zero, bb1
