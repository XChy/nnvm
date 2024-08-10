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
  SD s5, 8(sp)
  SD s6, 16(sp)
  SD s7, 24(sp)
  SD s8, 32(sp)
  SD s9, 40(sp)
  SD s10, 48(sp)
  SD s0, 56(sp)
  SD s1, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  LA s0, a
  CALL getint
  ADD s10, a0, zero
  ADDI s1, zero, 0
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  ADDI a0, zero, 28
  CALL _sysy_starttime
  BLT s1, s10, bb24
  # implict jump to bb1
bb1:   # loop depth 0
  BLT zero, s0, bb12
  # implict jump to bb2
bb2:   # loop depth 0
  BLT zero, s0, bb8
  # implict jump to bb3
bb3:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb4
bb4:   # loop depth 0
  BLT s1, zero, bb7
  # implict jump to bb5
bb5:   # loop depth 0
  # implict jump to bb6
bb6:   # loop depth 0
  ADDI a0, zero, 47
  CALL _sysy_stoptime
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s5, 8(sp)
  LD s6, 16(sp)
  LD s7, 24(sp)
  LD s8, 32(sp)
  LD s9, 40(sp)
  LD s10, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb7:   # loop depth 0
  SUBW s1, zero, s1
  JAL zero, bb6
bb8:   # loop depth 0
  ADD s1, zero, zero
  ADD a0, zero, zero
  # implict jump to bb9
bb9:   # loop depth 1
  LA s4, matrix
  SLLIW s3, a0, 2
  MULW s2, a0, a0
  ADD s3, s4, s3
  LW s3, 0(s3)
  ADDIW a0, a0, 1
  MULW s2, s2, s3
  ADDW s1, s1, s2
  BLT a0, s0, bb11
  # implict jump to bb10
bb10:   # loop depth 0
  JAL zero, bb4
bb11:   # loop depth 1
  JAL zero, bb9
bb12:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb13
bb13:   # loop depth 1
  LA s2, a
  ADD s1, a0, zero
  SLLIW a0, s1, 2
  ADD a0, s2, a0
  LW s2, 0(a0)
  DIVW s3, s10, s2
  BLT zero, s3, bb16
  # implict jump to bb14
bb14:   # loop depth 1
  ADDIW a0, s1, 1
  BLT a0, s0, bb15
  JAL zero, bb2
bb15:   # loop depth 1
  JAL zero, bb13
bb16:   # loop depth 1
  ADD s6, zero, zero
  ADD s4, zero, zero
  # implict jump to bb17
bb17:   # loop depth 2
  ADD a0, zero, zero
  # implict jump to bb18
bb18:   # loop depth 3
  ADD s5, a0, zero
  BLT s5, s2, bb21
  # implict jump to bb19
bb19:   # loop depth 2
  ADDIW s4, s4, 1
  BLT s4, s3, bb20
  JAL zero, bb14
bb20:   # loop depth 2
  JAL zero, bb17
bb21:   # loop depth 3
  ADDIW a0, s5, 1
  BLT s4, s5, bb23
  # implict jump to bb22
bb22:   # loop depth 3
  MULW s6, s4, s2
  MULW s7, s5, s3
  LA s8, matrix
  LA s9, matrix
  ADDW s5, s6, s5
  ADDW s6, s7, s4
  SLLIW s5, s5, 2
  SLLIW s6, s6, 2
  ADD s5, s8, s5
  ADD s6, s9, s6
  LW s7, 0(s5)
  SW s7, 0(s6)
  ADD s6, s7, zero
  SW s7, 0(s5)
  JAL zero, bb18
bb23:   # loop depth 3
  JAL zero, bb18
bb24:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb25
bb25:   # loop depth 1
  LA s3, matrix
  SLLIW s2, a0, 2
  ADDIW s1, a0, 1
  ADD s2, s3, s2
  SW a0, 0(s2)
  BLT s1, s10, bb26
  JAL zero, bb1
bb26:   # loop depth 1
  ADD a0, s1, zero
  JAL zero, bb25
