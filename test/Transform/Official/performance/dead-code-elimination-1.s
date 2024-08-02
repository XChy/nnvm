.global main
.section .bss


.section .data
global:
.word 0x00000000
loopCount:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  CALL getint
  ADD s0, a0, zero
  LA a0, loopCount
  SW s0, 0(a0)
  LUI a0, 24
  ADDIW a0, a0, 1712
  ADD a0, zero, a0
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
  LUI a0, 24
  ADDIW a0, a0, 1728
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
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb3:
  ADD s0, zero, zero
  ADD a0, zero, zero
  # implict jump to bb4
bb4:
  ADD s2, a0, zero
  ADD s3, s0, zero
  LA a0, global
  SW s2, 0(a0)
  ADD s0, zero, zero
  ADD a0, zero, zero
  # implict jump to bb5
bb5:
  ADDW s0, s0, s2
  ADDIW s1, a0, 1
  SLTI a0, s1, 60
  BNE a0, zero, bb10
  # implict jump to bb6
bb6:
  # implict jump to bb7
bb7:
  ADDI a0, zero, 60
  DIVW a0, s0, a0
  ADDW s0, s3, a0
  LUI a0, 32766
  ADDIW a0, a0, 1
  REMW s0, s0, a0
  ADDIW s1, s2, 1
  LA a0, loopCount
  LW a0, 0(a0)
  BLT s1, a0, bb9
  # implict jump to bb8
bb8:
  ADD a0, s0, zero
  JAL zero, bb2
bb9:
  ADD a0, s1, zero
  JAL zero, bb4
bb10:
  ADD a0, s1, zero
  JAL zero, bb5
