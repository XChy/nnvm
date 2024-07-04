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
  SD ra, 32(sp)
  SD s4, 40(sp)
  SD s3, 48(sp)
  SD s2, 56(sp)
  SD s1, 64(sp)
  SD s0, 72(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 24(sp)
  LA s0, a
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  SW s0, 16(sp)
  ADDI a0, zero, 28
  CALL _sysy_starttime
  ADDI s0, zero, 0
  SW s0, 8(sp)
  JAL zero, bb1
bb1:
  LW s0, 8(sp)
  LW s1, 24(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  LW s0, 8(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, matrix
  ADD s1, s0, s2
  LW s0, 8(sp)
  SW s0, 0(s1)
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb1
bb3:
  ADDI s0, zero, 0
  SW s0, 8(sp)
  JAL zero, bb4
bb4:
  LW s0, 8(sp)
  LW s1, 16(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb5
  JAL zero, bb6
bb5:
  LW s0, 24(sp)
  LW s1, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, a
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADD a0, s0, zero
  LA s0, matrix
  ADD a1, s0, zero
  ADD a2, s1, zero
  CALL transpose
  ADD s0, a0, zero
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb4
bb6:
  ADDI s0, zero, 0
  SW s0, 0(sp)
  ADDI s0, zero, 0
  SW s0, 8(sp)
  JAL zero, bb7
bb7:
  LW s0, 8(sp)
  LW s1, 16(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb8
  JAL zero, bb9
bb8:
  LW s0, 0(sp)
  LW s1, 8(sp)
  LW s2, 8(sp)
  MULW s3, s1, s2
  LW s1, 8(sp)
  ADDI s2, zero, 4
  MULW s4, s1, s2
  LA s1, matrix
  ADD s2, s1, s4
  LW s1, 0(s2)
  MULW s2, s3, s1
  ADDW s1, s0, s2
  SW s1, 0(sp)
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb7
bb9:
  LW s0, 0(sp)
  SLT s1, s0, zero
  BNE s1, zero, bb10
  JAL zero, bb11
bb10:
  LW s0, 0(sp)
  SUBW s1, zero, s0
  SW s1, 0(sp)
  JAL zero, bb11
bb11:
  ADDI a0, zero, 47
  CALL _sysy_stoptime
  LW s0, 0(sp)
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 32(sp)
  LD s4, 40(sp)
  LD s3, 48(sp)
  LD s2, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
transpose:
  ADDI sp, sp, -96
  SD s4, 48(sp)
  SD ra, 56(sp)
  SD s3, 64(sp)
  SD s2, 72(sp)
  SD s1, 80(sp)
  SD s0, 88(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  SW s0, 40(sp)
  SW s2, 32(sp)
  LW s0, 40(sp)
  DIVW s3, s0, s2
  SW s3, 24(sp)
  SW zero, 16(sp)
  SW zero, 8(sp)
  JAL zero, bb13
bb13:
  LW s0, 16(sp)
  LW s2, 24(sp)
  SLT s3, s0, s2
  XOR s0, s3, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb14
  JAL zero, bb15
bb14:
  SW zero, 8(sp)
  JAL zero, bb16
bb15:
  ADDI s0, zero, 1
  SUB s1, zero, s0
  ADD a0, s1, zero
  LD s4, 48(sp)
  LD ra, 56(sp)
  LD s3, 64(sp)
  LD s2, 72(sp)
  LD s1, 80(sp)
  LD s0, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb16:
  LW s0, 8(sp)
  LW s2, 32(sp)
  SLT s3, s0, s2
  XOR s0, s3, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb17
  JAL zero, bb18
bb17:
  LW s0, 16(sp)
  LW s2, 8(sp)
  SLT s3, s0, s2
  BNE s3, zero, bb19
  JAL zero, bb20
bb18:
  LW s0, 16(sp)
  ADDIW s2, s0, 1
  SW s2, 16(sp)
  JAL zero, bb13
bb19:
  LW s0, 8(sp)
  ADDIW s2, s0, 1
  SW s2, 8(sp)
  JAL zero, bb16
bb20:
  LW s0, 16(sp)
  LW s2, 32(sp)
  MULW s3, s0, s2
  LW s0, 8(sp)
  ADDW s2, s3, s0
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(s0)
  SW s2, 0(sp)
  LW s0, 8(sp)
  LW s2, 24(sp)
  MULW s3, s0, s2
  LW s0, 16(sp)
  ADDW s2, s3, s0
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 16(sp)
  LW s3, 32(sp)
  MULW s4, s2, s3
  LW s2, 8(sp)
  ADDW s3, s4, s2
  ADDI s2, zero, 4
  MULW s4, s3, s2
  ADD s2, s1, s4
  LW s3, 0(s2)
  SW s3, 0(s0)
  LW s0, 16(sp)
  LW s2, 32(sp)
  MULW s3, s0, s2
  LW s0, 8(sp)
  ADDW s2, s3, s0
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s2, 0(sp)
  SW s2, 0(s0)
  LW s0, 8(sp)
  ADDIW s2, s0, 1
  SW s2, 8(sp)
  JAL zero, bb16
