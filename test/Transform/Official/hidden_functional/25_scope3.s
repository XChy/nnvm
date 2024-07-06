.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADDI a0, zero, 97
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  ADDI s0, zero, 200
  ADDI s1, zero, 77
  REMW s2, s0, s1
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
