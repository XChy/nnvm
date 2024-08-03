.global main
.section .bss

.section .data
loopCount:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  CALL getint
  ADD s0, a0, zero
  LA a0, loopCount
  SW s0, 0(a0)
  ADDI a0, zero, 121
  CALL _sysy_starttime
  LA a0, loopCount
  LW s0, 0(a0)
  ADDI a0, zero, 0
  BLT a0, s0, bb3
  # implict jump to bb1
bb1:
  ADD a0, zero, zero
  # implict jump to bb2
bb2:
  ADD s0, a0, zero
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
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb3:
  ADD s0, zero, zero
  ADD a0, zero, zero
  # implict jump to bb4
bb4:
  ADDIW a0, a0, 15
  LUI s1, 366211
  ADDIW s1, s1, -255
  REMW s1, a0, s1
  ADDIW s0, s0, 1
  LA a0, loopCount
  LW a0, 0(a0)
  BLT s0, a0, bb6
  # implict jump to bb5
bb5:
  ADD a0, s1, zero
  JAL zero, bb2
bb6:
  ADD a0, s1, zero
  JAL zero, bb4
