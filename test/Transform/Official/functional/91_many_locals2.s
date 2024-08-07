.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  CALL getint
  ADD s0, a0, zero
  XORI a0, s0, 5
  SLTIU a0, a0, 1
  BNE a0, zero, bb3
  # implict jump to bb1
bb1:   # loop depth 0
  # implict jump to bb2
bb2:   # loop depth 0
  ADD a0, zero, zero
  CALL putint
  ADDI a0, zero, 1
  CALL putint
  ADDI a0, zero, 2
  CALL putint
  ADDI a0, zero, 3
  CALL putint
  ADDI a0, zero, 4
  CALL putint
  ADDI a0, zero, 5
  CALL putint
  ADDI a0, zero, 6
  CALL putint
  ADDI a0, zero, 7
  CALL putint
  ADDI a0, zero, 8
  CALL putint
  ADDI a0, zero, 9
  CALL putint
  ADDI a0, zero, 10
  CALL putint
  ADDI a0, zero, 11
  CALL putint
  ADDI a0, zero, 12
  CALL putint
  ADDI a0, zero, 13
  CALL putint
  ADDI a0, zero, 14
  CALL putint
  ADDI a0, zero, 15
  CALL putint
  ADDI a0, zero, 16
  CALL putint
  ADDI a0, zero, 17
  CALL putint
  ADDI a0, zero, 18
  CALL putint
  ADDI a0, zero, 19
  CALL putint
  ADDI a0, zero, 20
  CALL putint
  ADDI a0, zero, 21
  CALL putint
  ADDI a0, zero, 22
  CALL putint
  ADDI a0, zero, 23
  CALL putint
  ADDI a0, zero, 24
  CALL putint
  ADDI a0, zero, 25
  CALL putint
  ADDI a0, zero, 26
  CALL putint
  ADDI a0, zero, 27
  CALL putint
  ADDI a0, zero, 28
  CALL putint
  ADDI a0, zero, 29
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 25
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb3:   # loop depth 0
  # implict jump to bb4
bb4:   # loop depth 1
  ADDIW s0, s0, 1
  XORI a0, s0, 5
  SLTIU a0, a0, 1
  BNE a0, zero, bb6
  # implict jump to bb5
bb5:   # loop depth 0
  JAL zero, bb2
bb6:   # loop depth 1
  JAL zero, bb4
