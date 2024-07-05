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
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
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
  SLT s3, s2, s0
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s3, matrix
  ADD s5, s3, s4
  SW s2, 0(s5)
  ADDIW s3, s2, 1
  ADD s2, s3, zero
  JAL zero, bb1
bb3:
  ADD s2, zero, zero
  JAL zero, bb4
bb4:
  SLT s3, s2, s1
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s3, a
  ADD s5, s3, s4
  LW s3, 0(s5)
  ADD a0, s0, zero
  LA s4, matrix
  ADD a1, s4, zero
  ADD a2, s3, zero
  CALL transpose
  ADD s3, a0, zero
  ADDIW s3, s2, 1
  ADD s2, s3, zero
  JAL zero, bb4
bb6:
  ADD s0, zero, zero
  ADD s2, zero, zero
  JAL zero, bb7
bb7:
  SLT s3, s2, s1
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb8
  JAL zero, bb9
bb8:
  MULW s3, s2, s2
  ADDI s4, zero, 4
  MULW s5, s2, s4
  LA s4, matrix
  ADD s6, s4, s5
  LW s4, 0(s6)
  MULW s5, s3, s4
  ADDW s3, s0, s5
  ADDIW s4, s2, 1
  ADD s0, s3, zero
  ADD s2, s4, zero
  JAL zero, bb7
bb9:
  SLT s1, s0, zero
  BNE s1, zero, bb10
  JAL zero, bb12
bb10:
  SUBW s1, zero, s0
  ADD s2, s1, zero
  JAL zero, bb11
bb11:
  ADDI a0, zero, 47
  CALL _sysy_stoptime
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb12:
  ADD s2, s0, zero
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
  SLT s5, s4, s3
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb15
  JAL zero, bb16
bb15:
  ADD s5, s0, zero
  ADD s6, zero, zero
  JAL zero, bb17
bb16:
  ADDI s0, zero, 1
  SUB s1, zero, s0
  ADD a0, s1, zero
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
  SLT s7, s6, s2
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb18
  JAL zero, bb19
bb18:
  SLT s7, s4, s6
  BNE s7, zero, bb20
  JAL zero, bb21
bb19:
  ADDIW s6, s4, 1
  ADD s0, s5, zero
  ADD s4, s6, zero
  JAL zero, bb14
bb20:
  ADDIW s7, s6, 1
  ADD s5, s5, zero
  ADD s6, s7, zero
  JAL zero, bb17
bb21:
  MULW s7, s4, s2
  ADDW s8, s7, s6
  ADDI s7, zero, 4
  MULW s9, s8, s7
  ADD s7, s1, s9
  LW s8, 0(s7)
  MULW s7, s6, s3
  ADDW s9, s7, s4
  ADDI s7, zero, 4
  MULW s10, s9, s7
  ADD s7, s1, s10
  MULW s9, s4, s2
  ADDW s10, s9, s6
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s1, s11
  LW s10, 0(s9)
  SW s10, 0(s7)
  MULW s7, s4, s2
  ADDW s9, s7, s6
  ADDI s7, zero, 4
  MULW s10, s9, s7
  ADD s7, s1, s10
  SW s8, 0(s7)
  ADDIW s7, s6, 1
  ADD s5, s8, zero
  ADD s6, s7, zero
  JAL zero, bb17
