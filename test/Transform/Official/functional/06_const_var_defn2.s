.global main
.section .bss


.section .data
b:
.word 0x00000005
a:
.word 0x0000000a
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADDI a0, zero, 5
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
