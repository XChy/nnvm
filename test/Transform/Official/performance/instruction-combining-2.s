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
  LUI s0, 2
  LA s1, loopCount
  CALL getint
  ADDIW s0, s0, 1823
  ADD t0, a0, zero
  ADDI s2, zero, 0
  ADD a0, zero, s0
  SW t0, 0(s1)
  CALL _sysy_starttime
  LW t1, 0(s1)
  BLT s2, t1, bb3
  # implict jump to bb1
bb1:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb2
bb2:   # loop depth 0
  LUI t0, 2
  ADDIW t0, t0, 1838
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
  ADD t0, zero, zero
  ADD s0, zero, zero
  # implict jump to bb4
bb4:   # loop depth 1
  ADDI t2, zero, 60
  MULW t2, t0, t2
  ADDI a0, zero, 60
  LUI a1, 131068
  ADDIW a1, a1, 1
  ADDIW t0, t0, 1
  DIVW t2, t2, a0
  ADDW t2, s0, t2
  REMW s0, t2, a1
  BLT t0, t1, bb6
  # implict jump to bb5
bb5:   # loop depth 0
  JAL zero, bb2
bb6:   # loop depth 1
  JAL zero, bb4
