.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SLTU a0, zero, zero
  XORI a0, a0, 1
  SLTU a0, zero, a0
  XORI a0, a0, 1
  SUBW a0, zero, a0
  BNE a0, zero, bb3
  # implict jump to bb1
bb1:   # loop depth 0
  ADDI a0, zero, 4
  # implict jump to bb2
bb2:   # loop depth 0
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb3:   # loop depth 0
  ADDI a0, zero, -1
  JAL zero, bb2
