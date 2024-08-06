.global main
.section .bss
a:
.space 400000
.section .data

.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  LUI t0, 1
  ADDIW t0, t0, -96
  ADD a0, zero, t0
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
