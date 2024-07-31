.global main
.section .bss
a:
.space 400000
.section .data

.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  LUI s0, 1
  ADDIW s0, s0, -96
  ADD a0, zero, s0
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
