.global main
.section .bss


.section .data
c:
.byte 6, 0, 0, 0, 7, 0, 0, 0, 8, 0, 0, 0, 9, 0, 0, 0
b:
.word 0x00000005
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  ADDI a0, zero, 3
  CALL putint
  ADDI a0, zero, 3
  CALL putint
  ADDI a0, zero, 1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s0, c
  ADDI a0, zero, 1
  SW a0, 8(s0)
  ADDI a0, zero, 2
  CALL putint
  ADDI a0, zero, 1
  CALL putint
  ADDI a0, zero, 8
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA a0, b
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA a0, c
  LW a0, 0(a0)
  CALL putint
  LA a0, c
  LW a0, 4(a0)
  CALL putint
  LW a0, 8(s0)
  CALL putint
  LA a0, c
  LW a0, 12(a0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
