.global main
.global transpose
.section .bss
a:
.space 400000
matrix:
.space 80000000
.section .data


.section .text
main:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s3, 16(sp)
  SD s4, 24(sp)
  SD s8, 32(sp)
  SD s9, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, a
  ADD a0, s1, zero
  CALL getarray
  ADD s1, a0, zero
  ADDI a0, zero, 28
  CALL _sysy_starttime
  ADD s2, zero, zero
  # implict jump to bb1
bb1:
  ADD s3, s2, zero
  SLT s4, s3, s0
  BNE s4, zero, bb20
  # implict jump to bb2
bb2:
  ADD s4, zero, zero
  # implict jump to bb3
bb3:
  ADD s5, s4, zero
  SLT s6, s5, s1
  BNE s6, zero, bb11
  # implict jump to bb4
bb4:
  ADD s6, zero, zero
  ADD s7, zero, zero
  # implict jump to bb5
bb5:
  ADD s8, s7, zero
  ADD s9, s6, zero
  SLT s10, s8, s1
  BNE s10, zero, bb10
  # implict jump to bb6
bb6:
  SLT s10, s9, zero
  BNE s10, zero, bb9
  # implict jump to bb7
bb7:
  ADD s10, s9, zero
  # implict jump to bb8
bb8:
  ADDI a0, zero, 47
  CALL _sysy_stoptime
  ADD a0, s10, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s3, 16(sp)
  LD s4, 24(sp)
  LD s8, 32(sp)
  LD s9, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb9:
  SUBW s11, zero, s9
  ADD s10, s11, zero
  JAL zero, bb8
bb10:
  MULW s10, s8, s8
  SLLIW s11, s8, 2
  LA ra, matrix
  ADD s11, ra, s11
  LW s11, 0(s11)
  MULW s10, s10, s11
  ADDW s9, s9, s10
  ADDIW s8, s8, 1
  ADD s6, s9, zero
  ADD s7, s8, zero
  JAL zero, bb5
bb11:
  SLLIW s6, s5, 2
  LA s7, a
  ADD s6, s7, s6
  LW s6, 0(s6)
  DIVW s7, s0, s6
  ADD s8, zero, zero
  ADD s9, zero, zero
  # implict jump to bb12
bb12:
  ADD s10, s9, zero
  ADD s11, s8, zero
  SLT ra, s10, s7
  BNE ra, zero, bb14
  # implict jump to bb13
bb13:
  ADDIW ra, s5, 1
  ADD s4, ra, zero
  JAL zero, bb3
bb14:
  ADD s4, s11, zero
  ADD s11, zero, zero
  # implict jump to bb15
bb15:
  ADD ra, s11, zero
  ADD t0, s4, zero
  SLT t1, ra, s6
  BNE t1, zero, bb17
  # implict jump to bb16
bb16:
  ADDIW t1, s10, 1
  ADD s8, t0, zero
  ADD s9, t1, zero
  JAL zero, bb12
bb17:
  SLT s8, s10, ra
  BNE s8, zero, bb19
  # implict jump to bb18
bb18:
  MULW s8, s10, s6
  ADDW s8, s8, ra
  SLLIW s8, s8, 2
  LA s9, matrix
  ADD s8, s9, s8
  LW s9, 0(s8)
  MULW t1, ra, s7
  ADDW t1, t1, s10
  SLLIW t1, t1, 2
  LA t2, matrix
  ADD t1, t2, t1
  SW s9, 0(t1)
  SW s9, 0(s8)
  ADDIW s8, ra, 1
  ADD s4, s9, zero
  ADD s11, s8, zero
  JAL zero, bb15
bb19:
  ADDIW s8, ra, 1
  ADD s4, t0, zero
  ADD s11, s8, zero
  JAL zero, bb15
bb20:
  SLLIW s4, s3, 2
  LA s5, matrix
  ADD s4, s5, s4
  SW s3, 0(s4)
  ADDIW s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb1
transpose:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  ADD s0, a0, zero
  DIVW s0, s0, a2
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb22
bb22:
  ADD s3, s2, zero
  ADD s4, s1, zero
  SLT s5, s3, s0
  BNE s5, zero, bb24
  # implict jump to bb23
bb23:
  ADDI a0, zero, -1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb24:
  ADD s5, zero, zero
  # implict jump to bb25
bb25:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLT s8, s6, a2
  BNE s8, zero, bb27
  # implict jump to bb26
bb26:
  ADDIW s8, s3, 1
  ADD s1, s7, zero
  ADD s2, s8, zero
  JAL zero, bb22
bb27:
  SLT s1, s3, s6
  BNE s1, zero, bb29
  # implict jump to bb28
bb28:
  MULW s1, s3, a2
  ADDW s1, s1, s6
  SLLIW s1, s1, 2
  ADD s1, a1, s1
  LW s2, 0(s1)
  MULW s8, s6, s0
  ADDW s8, s8, s3
  SLLIW s8, s8, 2
  ADD s8, a1, s8
  SW s2, 0(s8)
  SW s2, 0(s1)
  ADDIW s1, s6, 1
  ADD s4, s2, zero
  ADD s5, s1, zero
  JAL zero, bb25
bb29:
  ADDIW s1, s6, 1
  ADD s4, s7, zero
  ADD s5, s1, zero
  JAL zero, bb25
