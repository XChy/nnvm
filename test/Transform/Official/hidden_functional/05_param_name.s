.global main
.global f
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  JAL zero, bb1
bb1:
  ADDI a0, zero, 20
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
f:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 2
  MULW s2, s0, s1
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
