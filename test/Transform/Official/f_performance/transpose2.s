.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
a:
.space 400000
matrix:
.space 80000000
.section .data


.section .text
main:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  LA s3, a
  LA s0, matrix
  CALL getint
  ADDI s4, zero, 0
  ADD s2, a0, zero
  ADD a0, s3, zero
  CALL getarray
  ADD s1, a0, zero
  ADDI a0, zero, 28
  CALL _sysy_starttime
  BLT s4, s2, bb25
  # implict jump to bb1
bb1:   # loop depth 0
  BLT zero, s1, bb12
  # implict jump to bb2
bb2:   # loop depth 0
  BLT zero, s1, bb8
  # implict jump to bb3
bb3:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb4
bb4:   # loop depth 0
  SUBW s0, zero, t0
  BLT t0, zero, bb7
  # implict jump to bb5
bb5:   # loop depth 0
  ADD s0, t0, zero
  # implict jump to bb6
bb6:   # loop depth 0
  ADDI a0, zero, 47
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
bb7:   # loop depth 0
  JAL zero, bb6
bb8:   # loop depth 0
  ADD t0, zero, zero
  ADD t1, zero, zero
  # implict jump to bb9
bb9:   # loop depth 1
  SH2ADD a0, t1, s0
  MULW t2, t1, t1
  LW a0, 0(a0)
  ADDIW t1, t1, 1
  MULW t2, t2, a0
  ADDW t0, t0, t2
  BLT t1, s1, bb11
  # implict jump to bb10
bb10:   # loop depth 0
  JAL zero, bb4
bb11:   # loop depth 1
  JAL zero, bb9
bb12:   # loop depth 0
  ADD a1, zero, zero
  # implict jump to bb13
bb13:   # loop depth 1
  SH2ADD t0, a1, s3
  LW a2, 0(t0)
  DIVW a3, s2, a2
  BLT zero, a3, bb16
  # implict jump to bb14
bb14:   # loop depth 1
  ADDIW a1, a1, 1
  BLT a1, s1, bb15
  JAL zero, bb2
bb15:   # loop depth 1
  JAL zero, bb13
bb16:   # loop depth 1
  ADD t0, zero, zero
  ADD a0, zero, zero
  # implict jump to bb17
bb17:   # loop depth 2
  MULW a4, a0, a2
  ADD t1, zero, zero
  # implict jump to bb18
bb18:   # loop depth 3
  BLT t1, a2, bb21
  # implict jump to bb19
bb19:   # loop depth 2
  ADDIW a0, a0, 1
  BLT a0, a3, bb20
  JAL zero, bb14
bb20:   # loop depth 2
  JAL zero, bb17
bb21:   # loop depth 3
  ADDIW t2, t1, 1
  BLT a0, t1, bb24
  # implict jump to bb22
bb22:   # loop depth 3
  MULW a6, t1, a3
  ADDW t0, a4, t1
  SH2ADD a5, t0, s0
  LW t1, 0(a5)
  ADDW t0, a6, a0
  SH2ADD t0, t0, s0
  SW t1, 0(t0)
  ADD t0, t1, zero
  SW t1, 0(a5)
  # implict jump to bb23
bb23:   # loop depth 3
  ADD t1, t2, zero
  JAL zero, bb18
bb24:   # loop depth 3
  JAL zero, bb23
bb25:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb26
bb26:   # loop depth 1
  SH2ADD t2, t0, s0
  ADDIW t1, t0, 1
  SW t0, 0(t2)
  BLT t1, s2, bb27
  JAL zero, bb1
bb27:   # loop depth 1
  ADD t0, t1, zero
  JAL zero, bb26
