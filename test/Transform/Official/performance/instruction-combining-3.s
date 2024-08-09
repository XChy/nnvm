.global main
.section .bss

.section .data
loopCount:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  CALL getint
  LA s0, loopCount
  LUI s1, 2
  ADDIW s1, s1, 1823
  LA s2, loopCount
  SW a0, 0(s0)
  ADD a0, zero, s1
  ADDI s0, zero, 0
  CALL _sysy_starttime
  LW s1, 0(s2)
  BLT s0, s1, bb3
  # implict jump to bb1
bb1:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb2
bb2:   # loop depth 0
  LUI a0, 2
  ADDIW a0, a0, 1838
  ADD a0, zero, a0
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
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb3:   # loop depth 0
  ADD s0, zero, zero
  ADD a0, zero, zero
  # implict jump to bb4
bb4:   # loop depth 1
  ADDI s2, zero, 60
  MULW s2, a0, s2
  ADDI s3, zero, 60
  LUI s4, 131068
  ADDIW s4, s4, 1
  ADDIW a0, a0, 1
  DIVW s2, s2, s3
  ADDW s0, s0, s2
  REMW s0, s0, s4
  BLT a0, s1, bb6
  # implict jump to bb5
bb5:   # loop depth 0
  JAL zero, bb2
bb6:   # loop depth 1
  JAL zero, bb4
