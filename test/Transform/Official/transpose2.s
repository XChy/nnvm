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
  JAL zero, bb1
bb1:
  ADD s3, s2, zero
  LW t4, 4(sp)
  SLT s4, s3, t4
  BNE s4, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s4, zero, 4
  MULW s5, s3, s4
  LA s4, matrix
  ADD s6, s4, s5
  SW s3, 0(s6)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb1
bb3:
  ADD t4, zero, zero
  SW t4, 8(sp)
  JAL zero, bb4
bb4:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t4, 12(sp)
  LW t3, 0(sp)
  SLT s4, t4, t3
  BNE s4, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s4, zero, 4
  LW t4, 12(sp)
  MULW s5, t4, s4
  LA s4, a
  ADD s6, s4, s5
  LW t4, 0(s6)
  SW t4, 20(sp)
  LW t3, 4(sp)
  LW t4, 20(sp)
  DIVW t4, t3, t4
  SW t4, 16(sp)
  ADD s6, zero, zero
  ADD s7, zero, zero
  JAL zero, bb12
bb6:
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb7
bb7:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LW t4, 0(sp)
  SLT s4, s2, t4
  BNE s4, zero, bb8
  JAL zero, bb9
bb8:
  MULW s4, s2, s2
  ADDI s5, zero, 4
  MULW s6, s2, s5
  LA s5, matrix
  ADD s7, s5, s6
  LW s5, 0(s7)
  MULW s6, s4, s5
  ADDW s4, s3, s6
  ADDIW s5, s2, 1
  ADD s0, s4, zero
  ADD s1, s5, zero
  JAL zero, bb7
bb9:
  SLT s0, s3, zero
  BNE s0, zero, bb10
  JAL zero, bb20
bb10:
  SUBW s0, zero, s3
  ADD s1, s0, zero
  JAL zero, bb11
bb11:
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
bb12:
  ADD s8, s7, zero
  ADD s9, s6, zero
  LW t4, 16(sp)
  SLT s10, s8, t4
  BNE s10, zero, bb13
  JAL zero, bb14
bb13:
  ADD s10, s9, zero
  ADD s9, zero, zero
  JAL zero, bb15
bb14:
  LW t4, 12(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 8(sp)
  JAL zero, bb4
bb15:
  ADD s11, s9, zero
  ADD s1, s10, zero
  LW t4, 20(sp)
  SLT s0, s11, t4
  BNE s0, zero, bb16
  JAL zero, bb17
bb16:
  SLT s0, s8, s11
  BNE s0, zero, bb18
  JAL zero, bb19
bb17:
  ADDIW s0, s8, 1
  ADD s6, s1, zero
  ADD s7, s0, zero
  JAL zero, bb12
bb18:
  ADDIW s0, s11, 1
  ADD s10, s1, zero
  ADD s9, s0, zero
  JAL zero, bb15
bb19:
  LW t4, 20(sp)
  MULW s0, s8, t4
  ADDW s2, s0, s11
  ADDI s0, zero, 4
  MULW s3, s2, s0
  LA s0, matrix
  ADD s2, s0, s3
  LW s0, 0(s2)
  LW t4, 16(sp)
  MULW s3, s11, t4
  ADDW s5, s3, s8
  ADDI s3, zero, 4
  MULW s4, s5, s3
  LA s3, matrix
  ADD s5, s3, s4
  LW s3, 0(s2)
  SW s3, 0(s5)
  SW s0, 0(s2)
  ADDIW s2, s11, 1
  ADD s10, s0, zero
  ADD s9, s2, zero
  JAL zero, bb15
bb20:
  ADD s1, s3, zero
  JAL zero, bb11
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
  JAL zero, bb22
bb22:
  ADD s5, s4, zero
  ADD s6, s0, zero
  SLT s7, s5, s3
  BNE s7, zero, bb23
  JAL zero, bb24
bb23:
  ADD s7, s6, zero
  ADD s6, zero, zero
  JAL zero, bb25
bb24:
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
bb25:
  ADD s8, s6, zero
  ADD s9, s7, zero
  SLT s10, s8, s2
  BNE s10, zero, bb26
  JAL zero, bb27
bb26:
  SLT s10, s5, s8
  BNE s10, zero, bb28
  JAL zero, bb29
bb27:
  ADDIW s6, s5, 1
  ADD s0, s9, zero
  ADD s4, s6, zero
  JAL zero, bb22
bb28:
  ADDIW s10, s8, 1
  ADD s7, s9, zero
  ADD s6, s10, zero
  JAL zero, bb25
bb29:
  MULW s10, s5, s2
  ADDW s11, s10, s8
  ADDI s10, zero, 4
  MULW t0, s11, s10
  ADD s10, s1, t0
  LW s11, 0(s10)
  MULW t0, s8, s3
  ADDW t1, t0, s5
  ADDI t0, zero, 4
  MULW t2, t1, t0
  ADD t0, s1, t2
  LW t1, 0(s10)
  SW t1, 0(t0)
  SW s11, 0(s10)
  ADDIW s10, s8, 1
  ADD s7, s11, zero
  ADD s6, s10, zero
  JAL zero, bb25
