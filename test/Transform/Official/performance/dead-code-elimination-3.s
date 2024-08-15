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
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  LUI s0, 24
  LA s1, loopCount
  CALL getint
  ADDIW s0, s0, 1712
  ADD t0, a0, zero
  ADDI s2, zero, 0
  ADD a0, zero, s0
  SW t0, 0(s1)
  CALL _sysy_starttime
  LW t2, 0(s1)
  BLT s2, t2, bb3
  # implict jump to bb1
bb1:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb2
bb2:   # loop depth 0
  LUI t0, 24
  ADDIW t0, t0, 1728
  ADD a0, zero, t0
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
  ADD t1, zero, zero
  ADD s0, zero, zero
  # implict jump to bb4
bb4:   # loop depth 1
  ADDI a0, zero, 60
  ADD t0, t1, zero
  MULW t1, t0, a0
  ADDI a0, zero, 60
  LUI a2, 32766
  ADDIW a2, a2, 1
  LA a1, global
  DIVW a0, t1, a0
  ADDIW t1, t0, 1
  SW t0, 0(a1)
  ADDW t0, s0, a0
  REMW s0, t0, a2
  BLT t1, t2, bb6
  # implict jump to bb5
bb5:   # loop depth 0
  JAL zero, bb2
bb6:   # loop depth 1
  JAL zero, bb4
