.global main
.section .bss


.section .data
global:
.word 0x00000000
loopCount:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  CALL getint
  LA s0, loopCount
  LUI s1, 24
  ADDIW s1, s1, 1712
  LA s2, loopCount
  SW a0, 0(s0)
  ADD a0, zero, s1
  ADDI s0, zero, 0
  CALL _sysy_starttime
  LW s2, 0(s2)
  BLT s0, s2, bb3
  # implict jump to bb1
bb1:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb2
bb2:   # loop depth 0
  LUI a0, 24
  ADDIW a0, a0, 1728
  ADD a0, zero, a0
  CALL _sysy_stoptime
  ADD a0, s1, zero
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
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb3:   # loop depth 0
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb4
bb4:   # loop depth 1
  ADD a0, s0, zero
  ADDI s0, zero, 60
  MULW s0, a0, s0
  ADDI s3, zero, 60
  LUI s5, 32766
  ADDIW s5, s5, 1
  LA s4, global
  DIVW s3, s0, s3
  ADDIW s0, a0, 1
  SW a0, 0(s4)
  ADDW a0, s1, s3
  REMW s1, a0, s5
  BLT s0, s2, bb6
  # implict jump to bb5
bb5:   # loop depth 0
  JAL zero, bb2
bb6:   # loop depth 1
  JAL zero, bb4
