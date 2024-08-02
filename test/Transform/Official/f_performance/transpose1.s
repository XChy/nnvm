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
  ADD s0, a0, zero
  LA a0, a
  CALL getarray
  ADD s1, a0, zero
  ADDI a0, zero, 28
  CALL _sysy_starttime
  ADDI a0, zero, 0
  BLT a0, s0, bb24
  # implict jump to bb1
bb1:
  BLT zero, s1, bb12
  # implict jump to bb2
bb2:
  BLT zero, s1, bb8
  # implict jump to bb3
bb3:
  ADD a0, zero, zero
  # implict jump to bb4
bb4:
  BLT a0, zero, bb7
  # implict jump to bb5
bb5:
  # implict jump to bb6
bb6:
  ADD s0, a0, zero
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
  SUBW a0, zero, a0
  JAL zero, bb6
bb8:
  ADD a0, zero, zero
  ADD s0, zero, zero
  # implict jump to bb9
bb9:
  MULW s2, a0, a0
  SLLIW s3, a0, 2
  LA s4, matrix
  ADD s3, s4, s3
  LW s3, 0(s3)
  MULW s2, s2, s3
  ADDW s0, s0, s2
  ADDIW a0, a0, 1
  BLT a0, s1, bb11
  # implict jump to bb10
bb10:
  ADD a0, s0, zero
  JAL zero, bb4
bb11:
  JAL zero, bb9
bb12:
  ADD a0, zero, zero
  # implict jump to bb13
bb13:
  SLLIW s2, a0, 2
  LA s3, a
  ADD s2, s3, s2
  LW s2, 0(s2)
  DIVW s3, s0, s2
  BLT zero, s3, bb16
  # implict jump to bb14
bb14:
  ADDIW a0, a0, 1
  BLT a0, s1, bb15
  JAL zero, bb2
bb15:
  JAL zero, bb13
bb16:
  ADD s4, zero, zero
  ADD s5, zero, zero
  # implict jump to bb17
bb17:
  ADD s7, s5, zero
  ADD s5, zero, zero
  # implict jump to bb18
bb18:
  ADD s6, s5, zero
  ADD s5, s7, zero
  BLT s6, s2, bb21
  # implict jump to bb19
bb19:
  ADDIW s4, s4, 1
  BLT s4, s3, bb20
  JAL zero, bb14
bb20:
  JAL zero, bb17
bb21:
  BLT s4, s6, bb23
  # implict jump to bb22
bb22:
  MULW s5, s4, s2
  ADDW s5, s5, s6
  SLLIW s5, s5, 2
  LA s7, matrix
  ADD s5, s7, s5
  LW s7, 0(s5)
  MULW s8, s6, s3
  ADDW s8, s8, s4
  SLLIW s8, s8, 2
  LA s9, matrix
  ADD s8, s9, s8
  SW s7, 0(s8)
  SW s7, 0(s5)
  ADDIW s5, s6, 1
  JAL zero, bb18
bb23:
  ADDIW s6, s6, 1
  ADD s7, s5, zero
  ADD s5, s6, zero
  JAL zero, bb18
bb24:
  ADD a0, zero, zero
  # implict jump to bb25
bb25:
  SLLIW s2, a0, 2
  LA s3, matrix
  ADD s2, s3, s2
  SW a0, 0(s2)
  ADDIW a0, a0, 1
  BLT a0, s0, bb26
  JAL zero, bb1
bb26:
  JAL zero, bb25
