.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADDI s0, zero, 10
  SW s0, 0(sp)
  ADDI s0, zero, 10
  ADDI s1, zero, 3
  REMW s2, s0, s1
  ADD a0, s2, zero
  LD ra, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
