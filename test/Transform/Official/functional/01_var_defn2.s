.global main
.section .bss


.section .data
b:
.word 0x00000005
a:
.word 0x00000003
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  LA t0, b
  LW t0, 0(t0)
  ADDIW a0, t0, 5
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
