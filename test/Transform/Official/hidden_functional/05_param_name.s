.global main
.global f
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADDI a0, zero, 20
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
f:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  ADD s0, a0, zero
  SLLIW s0, s0, 1
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
