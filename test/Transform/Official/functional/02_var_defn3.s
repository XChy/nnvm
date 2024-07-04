.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -48
  SD ra, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADDI s0, zero, 1
  SW s0, 16(sp)
  ADDI s0, zero, 2
  SW s0, 8(sp)
  ADDI s0, zero, 3
  SW s0, 0(sp)
  ADDI s0, zero, 3
  ADDIW s1, s0, 2
  ADD a0, s1, zero
  LD ra, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
