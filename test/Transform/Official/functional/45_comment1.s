.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -32
  SD ra, 8(sp)
  SD s0, 16(sp)
  ADDI s0, zero, 5
  SW s0, 0(sp)
  ADDI a0, zero, 5
  LD ra, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
