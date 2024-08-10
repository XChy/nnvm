.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADD t0, zero, zero
  ADD t1, zero, zero
  # implict jump to bb1
bb1:   # loop depth 1
  XORI t2, t1, 50
  SLTIU t2, t2, 1
  BNE t2, zero, bb3
  # implict jump to bb2
bb2:   # loop depth 1
  ADDIW t2, t1, 1
  ADDW a0, t0, t1
  SLTI t0, t2, 100
  BNE t0, zero, bb4
  # implict jump to bb3
bb3:   # loop depth 0
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb4:   # loop depth 1
  ADD t0, a0, zero
  ADD t1, t2, zero
  JAL zero, bb1
