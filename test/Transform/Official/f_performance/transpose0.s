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
  ADDI a3, zero, 0
  BLT a3, s1, bb12
  # implict jump to bb2
bb2:   # loop depth 0
  BLT a3, s1, bb8
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
bb10:   # loop depth 1
  JAL zero, bb4
bb11:   # loop depth 1
  JAL zero, bb9
bb12:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb13
bb13:   # loop depth 1
  ADDI t1, zero, 0
  SH2ADD t0, a0, s3
  LW a4, 0(t0)
  DIVW a5, s2, a4
  BLT t1, a5, bb16
  # implict jump to bb14
bb14:   # loop depth 1
  ADDIW a0, a0, 1
  BLT a0, s1, bb15
  JAL zero, bb2
bb15:   # loop depth 1
  JAL zero, bb13
bb16:   # loop depth 1
  ADD t1, zero, zero
  ADD t0, zero, zero
  # implict jump to bb17
bb17:   # loop depth 2
  ADD a1, zero, zero
  ADD t2, zero, zero
  # implict jump to bb18
bb18:   # loop depth 3
  BLT a1, a4, bb21
  # implict jump to bb19
bb19:   # loop depth 2
  ADDIW t0, t0, 1
  BLT t0, a5, bb20
  ADDIW a0, a0, 1
  BLT a0, s1, bb15
  JAL zero, bb2
bb20:   # loop depth 2
  JAL zero, bb17
bb21:   # loop depth 3
  ADDIW a2, a1, 1
  BLT t0, a1, bb24
  # implict jump to bb22
bb22:   # loop depth 3
  MULW t1, t0, a4
  ADDW a6, t2, t0
  SH2ADD a7, a6, s0
  ADDW t1, t1, a1
  SH2ADD a6, t1, s0
  LW a1, 0(a6)
  SW a1, 0(a7)
  ADD t1, a1, zero
  SW a1, 0(a6)
  # implict jump to bb23
bb23:   # loop depth 3
  ADDW t2, t2, a5
  ADD a1, a2, zero
  JAL zero, bb18
bb24:   # loop depth 3
  ADDW t2, t2, a5
  ADD a1, a2, zero
  JAL zero, bb18
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
