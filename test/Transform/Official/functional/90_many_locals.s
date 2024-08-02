.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -80
  SD ra, 64(sp)
  ADDI a0, zero, 0
  SW a0, 0(sp)
  ADDI a0, zero, 1
  SW a0, 4(sp)
  ADDI a0, zero, 2
  SW a0, 8(sp)
  ADDI a0, zero, 3
  SW a0, 12(sp)
  ADDI a0, zero, 0
  SW a0, 16(sp)
  ADDI a0, zero, 1
  SW a0, 20(sp)
  ADDI a0, zero, 2
  SW a0, 24(sp)
  ADDI a0, zero, 3
  SW a0, 28(sp)
  ADDI a0, zero, 0
  SW a0, 32(sp)
  ADDI a0, zero, 1
  SW a0, 36(sp)
  ADDI a0, zero, 2
  SW a0, 40(sp)
  ADDI a0, zero, 3
  SW a0, 44(sp)
  ADDI a0, zero, 0
  SW a0, 48(sp)
  ADDI a0, zero, 1
  SW a0, 52(sp)
  ADDI a0, zero, 2
  SW a0, 56(sp)
  ADDI a0, zero, 3
  SW a0, 60(sp)
  ADDI a0, zero, 254
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
