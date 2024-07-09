.global ififElse
.global main
.section .bss
.section .data
.section .text
ififElse:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADDI a0, zero, 25
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADDI a0, zero, 25
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
