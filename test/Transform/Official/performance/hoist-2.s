.global main
.section .bss

.section .data
loopCount:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  CALL getint
  LA s0, loopCount
  SW a0, 0(s0)
  ADDI a0, zero, 121
  CALL _sysy_starttime
  LA a0, loopCount
  LW s1, 0(a0)
  ADDI a0, zero, 0
  BLT a0, s1, bb3
  # implict jump to bb1
bb1:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI a0, zero, 123
  CALL _sysy_stoptime
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb3:   # loop depth 0
  ADD a0, zero, zero
  ADD s0, zero, zero
  # implict jump to bb4
bb4:   # loop depth 1
  ADDIW s0, s0, 15
  LUI s2, 366211
  ADDIW s2, s2, -255
  REMW s0, s0, s2
  ADDIW a0, a0, 1
  BLT a0, s1, bb6
  # implict jump to bb5
bb5:   # loop depth 0
  JAL zero, bb2
bb6:   # loop depth 1
  JAL zero, bb4
