.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
  LA s1, loopCount
  CALL getint
  ADD s0, a0, zero
  LA s2, loopCount
  ADDI a0, zero, 121
  SW s0, 0(s1)
  ADDI s0, zero, 0
  CALL _sysy_starttime
  LW s1, 0(s2)
  BLT s0, s1, bb3
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
  ADD s0, zero, zero
  ADD a0, zero, zero
  # implict jump to bb4
bb4:   # loop depth 1
  LUI s2, 366211
  ADDIW s2, s2, -255
  ADDIW s0, s0, 15
  REMW s0, s0, s2
  ADDIW a0, a0, 1
  BLT a0, s1, bb6
  # implict jump to bb5
bb5:   # loop depth 0
  JAL zero, bb2
bb6:   # loop depth 1
  JAL zero, bb4
