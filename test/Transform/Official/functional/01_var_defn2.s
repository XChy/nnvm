.global main
.section .bss


.section .data
b:
.word 0x00000005
a:
.word 0x00000003
.section .text
main:
  ADDI sp, sp, -32
  SD ra, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADDI s0, zero, 5
  SW s0, 0(sp)
  LA s0, b
  LW s1, 0(s0)
  ADDIW s0, s1, 5
  ADD a0, s0, zero
  LD ra, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)