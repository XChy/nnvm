.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -48
  SD ra, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADDI s0, zero, 15
  SW s0, 8(sp)
  ADDI s0, zero, 12
  SW s0, 0(sp)
  LW s0, 8(sp)
  ADDIW s1, s0, 12
  ADDIW s0, s1, 61
  ADD a0, s0, zero
  LD ra, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
