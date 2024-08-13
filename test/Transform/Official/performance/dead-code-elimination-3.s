.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
  LUI s2, 24
  LA s1, loopCount
  CALL getint
  ADDIW s2, s2, 1712
  ADD s0, a0, zero
  LA s3, loopCount
  ADD a0, zero, s2
  SW s0, 0(s1)
  ADDI s0, zero, 0
  CALL _sysy_starttime
  LW s2, 0(s3)
  BLT s0, s2, bb3
  # implict jump to bb1
bb1:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb2
bb2:   # loop depth 0
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
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb3:   # loop depth 0
  ADD a0, zero, zero
  ADD s0, zero, zero
  # implict jump to bb4
bb4:   # loop depth 1
  ADDI s1, zero, 60
  MULW s1, a0, s1
  ADDI s3, zero, 60
  LUI s5, 32766
  ADDIW s5, s5, 1
  LA s4, global
  DIVW s3, s1, s3
  ADDIW s1, a0, 1
  SW a0, 0(s4)
  ADDW a0, s0, s3
  REMW s0, a0, s5
  BLT s1, s2, bb6
  # implict jump to bb5
bb5:   # loop depth 0
  JAL zero, bb2
bb6:   # loop depth 1
  ADD a0, s1, zero
  JAL zero, bb4
