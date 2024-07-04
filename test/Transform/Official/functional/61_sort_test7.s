.global main
.global merge_sort
.section .bss
buf:
.space 800
.section .data

.section .text
main:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADDI s0, zero, 400
  MULW s1, s0, zero
  LA s0, buf
  ADD s2, s0, s1
  ADD a0, s2, zero
  CALL getarray
  ADD s0, a0, zero
  SW s0, 0(sp)
  ADD a0, zero, zero
  ADD a1, s0, zero
  CALL merge_sort
  LW s0, 0(sp)
  ADDI s1, zero, 400
  MULW s2, zero, s1
  LA s1, buf
  ADD s3, s1, s2
  ADD a0, s0, zero
  ADD a1, s3, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
merge_sort:
  ADDI sp, sp, -112
  SD s4, 56(sp)
  SD s3, 64(sp)
  SD ra, 72(sp)
  SD s2, 80(sp)
  SD s1, 88(sp)
  SD s0, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 48(sp)
  SW s1, 40(sp)
  ADDIW s2, s0, 1
  SLT s0, s2, s1
  XORI s1, s0, 1
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  LD s4, 56(sp)
  LD s3, 64(sp)
  LD ra, 72(sp)
  LD s2, 80(sp)
  LD s1, 88(sp)
  LD s0, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb3:
  LW s0, 48(sp)
  LW s1, 40(sp)
  ADDW s2, s0, s1
  ADDI s0, zero, 2
  DIVW s1, s2, s0
  SW s1, 32(sp)
  LW s0, 48(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL merge_sort
  LW s0, 32(sp)
  LW s1, 40(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL merge_sort
  LW s0, 48(sp)
  SW s0, 24(sp)
  LW s0, 32(sp)
  SW s0, 16(sp)
  LW s0, 48(sp)
  SW s0, 8(sp)
  JAL zero, bb4
bb4:
  LW s0, 24(sp)
  LW s1, 32(sp)
  SLT s2, s0, s1
  BNE s2, zero, bb7
  JAL zero, bb8
bb5:
  ADDI s0, zero, 400
  MUL s1, zero, s0
  LA s0, buf
  ADD s2, s0, s1
  LW s0, 24(sp)
  ADDI s1, zero, 4
  MULW s3, s0, s1
  ADD s0, s2, s3
  LW s1, 0(s0)
  ADDI s0, zero, 400
  MUL s2, zero, s0
  LA s0, buf
  ADD s3, s0, s2
  LW s0, 16(sp)
  ADDI s2, zero, 4
  MULW s4, s0, s2
  ADD s0, s3, s4
  LW s2, 0(s0)
  SLT s0, s1, s2
  BNE s0, zero, bb10
  JAL zero, bb12
bb6:
  JAL zero, bb13
bb7:
  LW s0, 16(sp)
  LW s1, 40(sp)
  SLT s2, s0, s1
  SB s2, 0(sp)
  JAL zero, bb9
bb8:
  ADDI s0, zero, 0
  SB s0, 0(sp)
  JAL zero, bb9
bb9:
  LB s0, 0(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb5
  JAL zero, bb6
bb10:
  ADDI s0, zero, 400
  ADDI s1, zero, 1
  MULW s2, s0, s1
  LA s0, buf
  ADD s1, s0, s2
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  ADDI s1, zero, 400
  MUL s2, zero, s1
  LA s1, buf
  ADD s3, s1, s2
  LW s1, 24(sp)
  ADDI s2, zero, 4
  MULW s4, s1, s2
  ADD s1, s3, s4
  LW s2, 0(s1)
  SW s2, 0(s0)
  LW s0, 24(sp)
  ADDIW s1, s0, 1
  SW s1, 24(sp)
  JAL zero, bb11
bb11:
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb4
bb12:
  ADDI s0, zero, 400
  ADDI s1, zero, 1
  MULW s2, s0, s1
  LA s0, buf
  ADD s1, s0, s2
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  ADDI s1, zero, 400
  MUL s2, zero, s1
  LA s1, buf
  ADD s3, s1, s2
  LW s1, 16(sp)
  ADDI s2, zero, 4
  MULW s4, s1, s2
  ADD s1, s3, s4
  LW s2, 0(s1)
  SW s2, 0(s0)
  LW s0, 16(sp)
  ADDIW s1, s0, 1
  SW s1, 16(sp)
  JAL zero, bb11
bb13:
  LW s0, 24(sp)
  LW s1, 32(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb14
  JAL zero, bb15
bb14:
  ADDI s0, zero, 400
  ADDI s1, zero, 1
  MULW s2, s0, s1
  LA s0, buf
  ADD s1, s0, s2
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  ADDI s1, zero, 400
  MUL s2, zero, s1
  LA s1, buf
  ADD s3, s1, s2
  LW s1, 24(sp)
  ADDI s2, zero, 4
  MULW s4, s1, s2
  ADD s1, s3, s4
  LW s2, 0(s1)
  SW s2, 0(s0)
  LW s0, 24(sp)
  ADDIW s1, s0, 1
  SW s1, 24(sp)
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb13
bb15:
  JAL zero, bb16
bb16:
  LW s0, 16(sp)
  LW s1, 40(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb17
  JAL zero, bb18
bb17:
  ADDI s0, zero, 400
  ADDI s1, zero, 1
  MULW s2, s0, s1
  LA s0, buf
  ADD s1, s0, s2
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  ADDI s1, zero, 400
  MUL s2, zero, s1
  LA s1, buf
  ADD s3, s1, s2
  LW s1, 16(sp)
  ADDI s2, zero, 4
  MULW s4, s1, s2
  ADD s1, s3, s4
  LW s2, 0(s1)
  SW s2, 0(s0)
  LW s0, 16(sp)
  ADDIW s1, s0, 1
  SW s1, 16(sp)
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb16
bb18:
  JAL zero, bb19
bb19:
  LW s0, 48(sp)
  LW s1, 40(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb20
  JAL zero, bb21
bb20:
  ADDI s0, zero, 400
  MUL s1, zero, s0
  LA s0, buf
  ADD s2, s0, s1
  LW s0, 48(sp)
  ADDI s1, zero, 4
  MULW s3, s0, s1
  ADD s0, s2, s3
  ADDI s1, zero, 400
  ADDI s2, zero, 1
  MULW s3, s1, s2
  LA s1, buf
  ADD s2, s1, s3
  LW s1, 48(sp)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADD s1, s2, s4
  LW s2, 0(s1)
  SW s2, 0(s0)
  LW s0, 48(sp)
  ADDIW s1, s0, 1
  SW s1, 48(sp)
  JAL zero, bb19
bb21:
  LD s4, 56(sp)
  LD s3, 64(sp)
  LD ra, 72(sp)
  LD s2, 80(sp)
  LD s1, 88(sp)
  LD s0, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
