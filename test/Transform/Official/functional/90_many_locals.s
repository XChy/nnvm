.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -80
  SD ra, 64(sp)
  SD s0, 72(sp)
  ADDI s0, zero, 0
  SW s0, 0(sp)
  ADDI s0, zero, 1
  SW s0, 4(sp)
  ADDI s0, zero, 2
  SW s0, 8(sp)
  ADDI s0, zero, 3
  SW s0, 12(sp)
  ADDI s0, zero, 0
  SW s0, 16(sp)
  ADDI s0, zero, 1
  SW s0, 20(sp)
  ADDI s0, zero, 2
  SW s0, 24(sp)
  ADDI s0, zero, 3
  SW s0, 28(sp)
  ADDI s0, zero, 0
  SW s0, 32(sp)
  ADDI s0, zero, 1
  SW s0, 36(sp)
  ADDI s0, zero, 2
  SW s0, 40(sp)
  ADDI s0, zero, 3
  SW s0, 44(sp)
  ADDI s0, zero, 0
  SW s0, 48(sp)
  ADDI s0, zero, 1
  SW s0, 52(sp)
  ADDI s0, zero, 2
  SW s0, 56(sp)
  ADDI s0, zero, 3
  SW s0, 60(sp)
  ADDI a0, zero, 254
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
