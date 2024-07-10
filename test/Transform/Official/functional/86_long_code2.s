.global main
.section .bss
a:
.space 400000
.section .data

.section .text
main:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  LUI s0, 98
  ADDIW s0, s0, -1412
  LA s1, a
  ADD s0, s1, s0
  ADDI s1, zero, 1
  SW s1, 0(s0)
  LUI s0, 1
  ADDIW s0, s0, -96
  ADD a0, zero, s0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
