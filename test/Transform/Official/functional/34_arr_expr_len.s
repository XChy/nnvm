.global main
.section .bss

.section .data
arr:
.byte 1, 0, 0, 0, 2, 0, 0, 0, 33, 0, 0, 0, 4, 0, 0, 0, 5, 0, 0, 0, 6, 0, 0, 0
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADDI a0, zero, 51
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
