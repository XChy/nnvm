.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADDI t0, zero, 3
  SLTI t0, t0, 2
  XORI t0, t0, 1
  BNE t0, zero, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  ADDI a0, zero, 5
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb2:   # loop depth 0
  ADDI t0, zero, -1
  SLT t0, t0, zero
  XORI t0, t0, 1
  BNE t0, zero, bb9
  # implict jump to bb3
bb3:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb4
bb4:   # loop depth 0
  BNE t0, zero, bb8
  # implict jump to bb5
bb5:   # loop depth 0
  BNE zero, zero, bb7
  # implict jump to bb6
bb6:   # loop depth 0
  ADDI a0, zero, 10
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb7:   # loop depth 0
  ADDI a0, zero, 9
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb8:   # loop depth 0
  ADDI a0, zero, 6
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb9:   # loop depth 0
  ADDI t0, zero, 1
  JAL zero, bb4
