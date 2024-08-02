.global main
.section .bss

.section .data
a:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  LA t1, a
  ADDI t0, zero, 10
  SW t0, 0(t1)
  ADDI a0, zero, 9
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
