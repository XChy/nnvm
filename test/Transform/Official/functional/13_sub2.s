.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADDI a0, zero, -8
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
