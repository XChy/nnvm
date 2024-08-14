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
  LA s0, loopCount
  CALL getint
  ADD t0, a0, zero
  LA s1, loopCount
  ADDI a0, zero, 121
  SW t0, 0(s0)
  ADDI s0, zero, 0
  CALL _sysy_starttime
  LW t1, 0(s1)
  BLT s0, t1, bb3
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
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb3:   # loop depth 0
  ADD s0, zero, zero
  ADD t0, zero, zero
  # implict jump to bb4
bb4:   # loop depth 1
  LUI a0, 366211
  ADDIW a0, a0, -255
  ADDIW t2, s0, 15
  REMW s0, t2, a0
  ADDIW t0, t0, 1
  BLT t0, t1, bb6
  # implict jump to bb5
bb5:   # loop depth 0
  JAL zero, bb2
bb6:   # loop depth 1
  JAL zero, bb4
