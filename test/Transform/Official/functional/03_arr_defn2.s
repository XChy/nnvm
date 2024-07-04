.global main
.section .bss
a:
.space 400
.section .data

.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADD a0, zero, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
