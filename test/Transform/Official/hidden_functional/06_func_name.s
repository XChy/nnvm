.global main
.global f
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -32
  SD ra, 8(sp)
  SD s0, 16(sp)
  ADDI s0, zero, 20
  SW s0, 0(sp)
  ADDI a0, zero, 20
  LD ra, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
f:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADDI a0, zero, 10
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
