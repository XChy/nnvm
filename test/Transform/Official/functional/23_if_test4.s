.global main
.global if_ifElse_
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADDI a0, zero, 25
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
if_ifElse_:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADDI a0, zero, 25
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
