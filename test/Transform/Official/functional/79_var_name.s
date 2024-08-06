.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADDI a0, zero, 3
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 5
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 8
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 13
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 21
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 34
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 55
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 89
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 144
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 233
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 377
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 610
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 987
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 1597
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LUI a0, 1
  ADDIW a0, a0, -1512
  ADD a0, zero, a0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LUI a0, 1
  ADDIW a0, a0, 85
  ADD a0, zero, a0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LUI a0, 2
  ADDIW a0, a0, -1427
  ADD a0, zero, a0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LUI a0, 3
  ADDIW a0, a0, -1342
  ADD a0, zero, a0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LUI t0, 7
  ADDIW t0, t0, -20
  ADD a0, zero, t0
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
