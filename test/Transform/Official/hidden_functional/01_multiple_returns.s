.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -32
  SD s2, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
  SD ra, 24(sp)
  ADDI a0, zero, 20
  JALR zero, 0(ra)
  ADDI s0, zero, 9
  ADDI s1, zero, 20
  MULW s2, s0, s1
  ADD a0, s2, zero
  LD s2, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  LD ra, 24(sp)
  ADDI sp, sp, 32
  LD s2, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  LD ra, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
