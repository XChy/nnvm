.global main
.section .bss


.section .data
b:
.word 0x00000005
a:
.word 0x00000003
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  LA s0, b
  LW s0, 0(s0)
  ADDIW s0, s0, 5
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
