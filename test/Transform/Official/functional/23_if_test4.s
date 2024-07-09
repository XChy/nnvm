.global main
.global if_ifElse_
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  JAL zero, bb1
bb1:
  ADDI a0, zero, 25
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
if_ifElse_:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  JAL zero, bb3
bb3:
  ADDI a0, zero, 25
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
