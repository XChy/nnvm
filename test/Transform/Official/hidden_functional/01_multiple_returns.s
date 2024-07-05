.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -32
  SD s2, 0(sp)
  SD ra, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADDI s0, zero, 12
  ADDIW s1, s0, 8
  ADD a0, s1, zero
  JALR zero, 0(ra)
  ADDI s0, zero, 9
  MULW s2, s1, s0
  ADD a0, s2, zero
  LD s2, 0(sp)
  LD ra, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  LD s2, 0(sp)
  LD ra, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
