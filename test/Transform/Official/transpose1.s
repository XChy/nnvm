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
  ADDI sp, sp, -128
  SD s11, 24(sp)
  SD s10, 32(sp)
  SD s9, 40(sp)
  SD s7, 48(sp)
  SD s1, 56(sp)
  SD s6, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD s5, 96(sp)
  SD s0, 104(sp)
  SD ra, 112(sp)
  SD s8, 120(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 4(sp)
  LA s1, a
  ADD a0, s1, zero
  CALL getarray
  ADD t4, a0, zero
  SW t4, 0(sp)
  ADDI a0, zero, 28
  CALL _sysy_starttime
  ADD s2, zero, zero
  # implict jump to bb1
bb1:
  ADD s3, s2, zero
  LW t4, 4(sp)
  SLT s4, s3, t4
  BNE s4, zero, bb20
  # implict jump to bb2
bb2:
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb3
bb3:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t4, 12(sp)
  LW t3, 0(sp)
  SLT s4, t4, t3
  BNE s4, zero, bb11
  # implict jump to bb4
bb4:
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb5
bb5:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LW t4, 0(sp)
  SLT s4, s2, t4
  BNE s4, zero, bb10
  # implict jump to bb6
bb6:
  SLT s0, s3, zero
  BNE s0, zero, bb9
  # implict jump to bb7
bb7:
  ADD s1, s3, zero
  # implict jump to bb8
bb8:
  ADD s0, s1, zero
  ADDI a0, zero, 47
  CALL _sysy_stoptime
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD s11, 24(sp)
  LD s10, 32(sp)
  LD s9, 40(sp)
  LD s7, 48(sp)
  LD s1, 56(sp)
  LD s6, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s5, 96(sp)
  LD s0, 104(sp)
  LD ra, 112(sp)
  LD s8, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb9:
  SUBW s0, zero, s3
  ADD s1, s0, zero
  JAL zero, bb8
bb10:
  MULW s4, s2, s2
  SLLIW s5, s2, 2
  LA s6, matrix
  ADD s7, s6, s5
  LW s5, 0(s7)
  MULW s6, s4, s5
  ADDW s4, s3, s6
  ADDIW s5, s2, 1
  ADD s0, s4, zero
  ADD s1, s5, zero
  JAL zero, bb5
bb11:
  LW t4, 12(sp)
  SLLIW s4, t4, 2
  LA s5, a
  ADD s6, s5, s4
  LW t4, 0(s6)
  SW t4, 20(sp)
  LW t3, 4(sp)
  LW t4, 20(sp)
  DIVW t4, t3, t4
  SW t4, 16(sp)
  ADD s6, zero, zero
  ADD s7, zero, zero
  # implict jump to bb12
bb12:
  ADD s8, s7, zero
  ADD s9, s6, zero
  LW t4, 16(sp)
  SLT s10, s8, t4
  BNE s10, zero, bb14
  # implict jump to bb13
bb13:
  LW t4, 12(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 8(sp)
  JAL zero, bb3
bb14:
  ADD s10, s9, zero
  ADD s9, zero, zero
  # implict jump to bb15
bb15:
  ADD s11, s9, zero
  ADD s1, s10, zero
  LW t4, 20(sp)
  SLT s0, s11, t4
  BNE s0, zero, bb17
  # implict jump to bb16
bb16:
  ADDIW s0, s8, 1
  ADD s6, s1, zero
  ADD s7, s0, zero
  JAL zero, bb12
bb17:
  SLT s0, s8, s11
  BNE s0, zero, bb19
  # implict jump to bb18
bb18:
  LW t4, 20(sp)
  MULW s0, s8, t4
  ADDW s2, s0, s11
  SLLIW s0, s2, 2
  LA s2, matrix
  ADD s3, s2, s0
  LW s0, 0(s3)
  LW t4, 16(sp)
  MULW s2, s11, t4
  ADDW s5, s2, s8
  SLLIW s2, s5, 2
  LA s5, matrix
  ADD s4, s5, s2
  SW s0, 0(s4)
  SW s0, 0(s3)
  ADDIW s2, s11, 1
  ADD s10, s0, zero
  ADD s9, s2, zero
  JAL zero, bb15
bb19:
  ADDIW s0, s11, 1
  ADD s10, s1, zero
  ADD s9, s0, zero
  JAL zero, bb15
bb20:
  SLLIW s4, s3, 2
  LA s5, matrix
  ADD s6, s5, s4
  SW s3, 0(s6)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb1
transpose:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD s9, 16(sp)
  SD s8, 24(sp)
  SD s0, 32(sp)
  SD s5, 40(sp)
  SD s7, 48(sp)
  SD s1, 56(sp)
  SD s6, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD ra, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  DIVW s3, s0, s2
  ADD s0, zero, zero
  ADD s4, zero, zero
  # implict jump to bb22
bb22:
  ADD s5, s4, zero
  ADD s6, s0, zero
  SLT s7, s5, s3
  BNE s7, zero, bb24
  # implict jump to bb23
bb23:
  ADDI a0, zero, -1
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  LD s8, 24(sp)
  LD s0, 32(sp)
  LD s5, 40(sp)
  LD s7, 48(sp)
  LD s1, 56(sp)
  LD s6, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD ra, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb24:
  ADD s7, s6, zero
  ADD s6, zero, zero
  # implict jump to bb25
bb25:
  ADD s8, s6, zero
  ADD s9, s7, zero
  SLT s10, s8, s2
  BNE s10, zero, bb27
  # implict jump to bb26
bb26:
  ADDIW s6, s5, 1
  ADD s0, s9, zero
  ADD s4, s6, zero
  JAL zero, bb22
bb27:
  SLT s10, s5, s8
  BNE s10, zero, bb29
  # implict jump to bb28
bb28:
  MULW s10, s5, s2
  ADDW s11, s10, s8
  SLLIW s10, s11, 2
  ADD s11, s1, s10
  LW s10, 0(s11)
  MULW t0, s8, s3
  ADDW t1, t0, s5
  SLLIW t0, t1, 2
  ADD t1, s1, t0
  SW s10, 0(t1)
  SW s10, 0(s11)
  ADDIW s11, s8, 1
  ADD s7, s10, zero
  ADD s6, s11, zero
  JAL zero, bb25
bb29:
  ADDIW s10, s8, 1
  ADD s7, s9, zero
  ADD s6, s10, zero
  JAL zero, bb25
