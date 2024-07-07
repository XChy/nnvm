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
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s7, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s8, 72(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, a
  ADD a0, s1, zero
  CALL getarray
  ADD s1, a0, zero
  ADDI a0, zero, 28
  CALL _sysy_starttime
  ADD s2, zero, zero
  JAL zero, bb1
bb1:
  ADD s3, s2, zero
  SLT s4, s3, s0
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
  ADD s2, zero, zero
  JAL zero, bb4
bb4:
  ADD s3, s2, zero
  SLT s4, s3, s1
  BNE s4, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s4, zero, 4
  MULW s5, s3, s4
  LA s4, a
  ADD s6, s4, s5
  LW s4, 0(s6)
  ADD a0, s0, zero
  LA s5, matrix
  ADD a1, s5, zero
  ADD a2, s4, zero
  CALL transpose
  ADD s4, a0, zero
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb4
bb6:
  ADD s0, zero, zero
  ADD s2, zero, zero
  JAL zero, bb7
bb7:
  ADD s3, s2, zero
  ADD s4, s0, zero
  SLT s5, s3, s1
  BNE s5, zero, bb8
  JAL zero, bb9
bb8:
  MULW s5, s3, s3
  ADDI s6, zero, 4
  MULW s7, s3, s6
  LA s6, matrix
  ADD s8, s6, s7
  LW s6, 0(s8)
  MULW s7, s5, s6
  ADDW s5, s4, s7
  ADDIW s6, s3, 1
  ADD s0, s5, zero
  ADD s2, s6, zero
  JAL zero, bb7
bb9:
  SLT s0, s4, zero
  BNE s0, zero, bb10
  JAL zero, bb12
bb10:
  SUBW s0, zero, s4
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
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s8, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb12:
  ADD s1, s4, zero
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
  JAL zero, bb14
bb14:
  ADD s5, s4, zero
  ADD s6, s0, zero
  SLT s7, s5, s3
  BNE s7, zero, bb15
  JAL zero, bb16
bb15:
  ADD s7, s6, zero
  ADD s6, zero, zero
  JAL zero, bb17
bb16:
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
bb17:
  ADD s8, s6, zero
  ADD s9, s7, zero
  SLT s10, s8, s2
  BNE s10, zero, bb18
  JAL zero, bb19
bb18:
  SLT s10, s5, s8
  BNE s10, zero, bb20
  JAL zero, bb21
bb19:
  ADDIW s6, s5, 1
  ADD s0, s9, zero
  ADD s4, s6, zero
  JAL zero, bb14
bb20:
  ADDIW s10, s8, 1
  ADD s7, s9, zero
  ADD s6, s10, zero
  JAL zero, bb17
bb21:
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
  JAL zero, bb17
