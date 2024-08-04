.global main
.section .bss
a:
.space 400000
matrix:
.space 80000000
.section .data


.section .text
main:
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
  ADD s1, a0, zero
  LA a0, a
  CALL getarray
  ADD s2, a0, zero
  ADDI a0, zero, 28
  CALL _sysy_starttime
  ADDI a0, zero, 0
  BLT a0, s1, bb24
  # implict jump to bb1
bb1:
  BLT zero, s2, bb12
  # implict jump to bb2
bb2:
  BLT zero, s2, bb8
  # implict jump to bb3
bb3:
  ADD s0, zero, zero
  # implict jump to bb4
bb4:
  BLT s0, zero, bb7
  # implict jump to bb5
bb5:
  # implict jump to bb6
bb6:
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
bb7:
  SUBW s0, zero, s0
  JAL zero, bb6
bb8:
  ADD a0, zero, zero
  ADD s0, zero, zero
  # implict jump to bb9
bb9:
  MULW s1, a0, a0
  SLLIW s3, a0, 2
  LA s4, matrix
  ADD s3, s4, s3
  LW s3, 0(s3)
  MULW s1, s1, s3
  ADDW s0, s0, s1
  ADDIW a0, a0, 1
  BLT a0, s2, bb11
  # implict jump to bb10
bb10:
  JAL zero, bb4
bb11:
  JAL zero, bb9
bb12:
  ADD s3, zero, zero
  # implict jump to bb13
bb13:
  SLLIW a0, s3, 2
  LA s0, a
  ADD a0, s0, a0
  LW s4, 0(a0)
  DIVW s5, s1, s4
  BLT zero, s5, bb16
  # implict jump to bb14
bb14:
  ADDIW s3, s3, 1
  BLT s3, s2, bb15
  JAL zero, bb2
bb15:
  JAL zero, bb13
bb16:
  ADD s6, zero, zero
  ADD s0, zero, zero
  # implict jump to bb17
bb17:
  ADD a0, zero, zero
  # implict jump to bb18
bb18:
  BLT a0, s4, bb21
  # implict jump to bb19
bb19:
  ADDIW s6, s6, 1
  BLT s6, s5, bb20
  JAL zero, bb14
bb20:
  JAL zero, bb17
bb21:
  BLT s6, a0, bb23
  # implict jump to bb22
bb22:
  MULW s0, s6, s4
  ADDW s0, s0, a0
  SLLIW s0, s0, 2
  LA s7, matrix
  ADD s7, s7, s0
  LW s0, 0(s7)
  MULW s8, a0, s5
  ADDW s8, s8, s6
  SLLIW s8, s8, 2
  LA s9, matrix
  ADD s8, s9, s8
  SW s0, 0(s8)
  SW s0, 0(s7)
  ADDIW a0, a0, 1
  JAL zero, bb18
bb23:
  ADDIW a0, a0, 1
  JAL zero, bb18
bb24:
  ADD a0, zero, zero
  # implict jump to bb25
bb25:
  SLLIW s0, a0, 2
  LA s3, matrix
  ADD s0, s3, s0
  SW a0, 0(s0)
  ADDIW a0, a0, 1
  BLT a0, s1, bb26
  JAL zero, bb1
bb26:
  JAL zero, bb25
