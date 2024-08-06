.global main
.section .bss

.section .data
a:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  LA t0, a
  ADDI t1, zero, 10
  SW t1, 0(t0)
  ADDI a0, zero, 9
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
