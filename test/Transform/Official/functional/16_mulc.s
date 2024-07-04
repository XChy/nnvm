.global main
.section .bss

.section .data
a:
.word 0x00000005
.section .text
main:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  LA s0, a
  LW s1, 0(s0)
  ADDI s0, zero, 5
  MULW s2, s1, s0
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
