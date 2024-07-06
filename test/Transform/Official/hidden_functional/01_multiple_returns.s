.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADDI a0, zero, 20
  JALR zero, 0(ra)
  ADDI a0, zero, 180
  LD ra, 0(sp)
  ADDI sp, sp, 16
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
