.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  ADDI a0, zero, 324
  ADDI s0, zero, 0
  CALL _sysy_starttime
  CALL getint
  BLT s0, a0, bb3
  # implict jump to bb1
bb1:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb2
bb2:   # loop depth 0
  ADD a0, t0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 328
  CALL _sysy_stoptime
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb3:   # loop depth 0
  ADD t1, zero, zero
  ADD t0, zero, zero
  # implict jump to bb4
bb4:   # loop depth 1
  LUI t2, 1
  LUI a1, 16
  ADDIW t2, t2, 854
  ADDIW a1, a1, -1
  ADDW t0, t0, t2
  REMW t0, t0, a1
  ADDIW t1, t1, 1
  BLT t1, a0, bb6
  # implict jump to bb5
bb5:   # loop depth 0
  JAL zero, bb2
bb6:   # loop depth 1
  JAL zero, bb4
