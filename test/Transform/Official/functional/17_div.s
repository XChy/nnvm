.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -48
  SD ra, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADDI s0, zero, 10
  SW s0, 8(sp)
  ADDI s0, zero, 5
  SW s0, 0(sp)
  LW s0, 8(sp)
  ADDI s1, zero, 5
  DIVW s2, s0, s1
  ADD a0, s2, zero
  LD ra, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
