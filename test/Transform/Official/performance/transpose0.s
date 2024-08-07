.global main
.section .bss
a:
.space 400000
matrix:
.space 80000000
.section .data


.section .text
main:   # loop depth 0
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s5, 16(sp)
  SD s6, 24(sp)
  SD s7, 32(sp)
  SD s8, 40(sp)
  SD s9, 48(sp)
  SD s0, 56(sp)
  SD s1, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  CALL getint
  ADD s3, a0, zero
  LA a0, a
  CALL getarray
  ADD s4, a0, zero
  ADDI a0, zero, 28
  CALL _sysy_starttime
  ADDI a0, zero, 0
  BLT a0, s3, bb24
  # implict jump to bb1
bb1:   # loop depth 0
  BLT zero, s4, bb12
  # implict jump to bb2
bb2:   # loop depth 0
  BLT zero, s4, bb8
  # implict jump to bb3
bb3:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb4
bb4:   # loop depth 0
  BLT s0, zero, bb7
  # implict jump to bb5
bb5:   # loop depth 0
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
  LD s4, 8(sp)
  LD s5, 16(sp)
  LD s6, 24(sp)
  LD s7, 32(sp)
  LD s8, 40(sp)
  LD s9, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb7:   # loop depth 0
  SUBW s0, zero, s0
  JAL zero, bb6
bb8:   # loop depth 0
  ADD a0, zero, zero
  ADD s0, zero, zero
  # implict jump to bb9
bb9:   # loop depth 1
  MULW s1, a0, a0
  SLLIW s2, a0, 2
  LA s3, matrix
  ADD s2, s3, s2
  LW s2, 0(s2)
  MULW s1, s1, s2
  ADDW s0, s0, s1
  ADDIW a0, a0, 1
  BLT a0, s4, bb11
  # implict jump to bb10
bb10:   # loop depth 0
  JAL zero, bb4
bb11:   # loop depth 1
  JAL zero, bb9
bb12:   # loop depth 0
  ADD s5, zero, zero
  # implict jump to bb13
bb13:   # loop depth 1
  SLLIW a0, s5, 2
  LA s0, a
  ADD a0, s0, a0
  LW s6, 0(a0)
  DIVW s7, s3, s6
  BLT zero, s7, bb16
  # implict jump to bb14
bb14:   # loop depth 1
  ADDIW s5, s5, 1
  BLT s5, s4, bb15
  JAL zero, bb2
bb15:   # loop depth 1
  JAL zero, bb13
bb16:   # loop depth 1
  ADD s2, zero, zero
  ADD s1, zero, zero
  # implict jump to bb17
bb17:   # loop depth 2
  ADD a0, zero, zero
  # implict jump to bb18
bb18:   # loop depth 3
  BLT a0, s6, bb21
  # implict jump to bb19
bb19:   # loop depth 2
  ADDIW s2, s2, 1
  BLT s2, s7, bb20
  JAL zero, bb14
bb20:   # loop depth 2
  JAL zero, bb17
bb21:   # loop depth 3
  ADDIW s0, a0, 1
  BLT s2, a0, bb23
  # implict jump to bb22
bb22:   # loop depth 3
  MULW s1, s2, s6
  ADDW s1, s1, a0
  SLLIW s1, s1, 2
  LA s8, matrix
  ADD s8, s8, s1
  LW s1, 0(s8)
  MULW a0, a0, s7
  ADDW a0, a0, s2
  SLLIW a0, a0, 2
  LA s9, matrix
  ADD a0, s9, a0
  SW s1, 0(a0)
  SW s1, 0(s8)
  ADD a0, s0, zero
  JAL zero, bb18
bb23:   # loop depth 3
  ADD a0, s0, zero
  JAL zero, bb18
bb24:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb25
bb25:   # loop depth 1
  SLLIW s0, a0, 2
  LA s1, matrix
  ADD s0, s1, s0
  SW a0, 0(s0)
  ADDIW a0, a0, 1
  BLT a0, s3, bb26
  JAL zero, bb1
bb26:   # loop depth 1
  JAL zero, bb25
