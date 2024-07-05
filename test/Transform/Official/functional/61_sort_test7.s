.global main
.global merge_sort
.section .bss
buf:
.space 800
.section .data

.section .text
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADDI s0, zero, 400
  MULW s1, s0, zero
  LA s0, buf
  ADD s2, s0, s1
  ADD a0, s2, zero
  CALL getarray
  ADD s0, a0, zero
  ADD a0, zero, zero
  ADD a1, s0, zero
  CALL merge_sort
  ADDI s1, zero, 400
  MULW s2, zero, s1
  LA s1, buf
  ADD s3, s1, s2
  ADD a0, s0, zero
  ADD a1, s3, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
merge_sort:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s7, 8(sp)
  SD s10, 16(sp)
  SD s0, 24(sp)
  SD s5, 32(sp)
  SD s1, 40(sp)
  SD s6, 48(sp)
  SD s8, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD ra, 80(sp)
  SD s4, 88(sp)
  SD s9, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADDIW s2, s0, 1
  SLT s3, s2, s1
  XORI s2, s3, 1
  BNE s2, zero, bb2
  JAL zero, bb3
bb2:
  LD s11, 0(sp)
  LD s7, 8(sp)
  LD s10, 16(sp)
  LD s0, 24(sp)
  LD s5, 32(sp)
  LD s1, 40(sp)
  LD s6, 48(sp)
  LD s8, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD ra, 80(sp)
  LD s4, 88(sp)
  LD s9, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb3:
  ADDW s2, s0, s1
  ADDI s3, zero, 2
  DIVW s4, s2, s3
  ADD a0, s0, zero
  ADD a1, s4, zero
  CALL merge_sort
  ADD a0, s4, zero
  ADD a1, s1, zero
  CALL merge_sort
  ADD s2, s0, zero
  ADD s3, s4, zero
  ADD s5, s0, zero
  JAL zero, bb4
bb4:
  SLT s6, s5, s4
  BNE s6, zero, bb7
  JAL zero, bb8
bb5:
  ADDI s6, zero, 400
  MUL s8, zero, s6
  LA s6, buf
  ADD s9, s6, s8
  ADDI s6, zero, 4
  MULW s8, s5, s6
  ADD s6, s9, s8
  LW s8, 0(s6)
  ADDI s6, zero, 400
  MUL s9, zero, s6
  LA s6, buf
  ADD s10, s6, s9
  ADDI s6, zero, 4
  MULW s9, s3, s6
  ADD s6, s10, s9
  LW s9, 0(s6)
  SLT s6, s8, s9
  BNE s6, zero, bb10
  JAL zero, bb12
bb6:
  ADD s6, s2, zero
  ADD s8, s5, zero
  JAL zero, bb13
bb7:
  SLT s6, s3, s1
  ADD s7, s6, zero
  JAL zero, bb9
bb8:
  ADD s7, zero, zero
  JAL zero, bb9
bb9:
  XOR s6, s7, zero
  SLTU s8, zero, s6
  BNE s8, zero, bb5
  JAL zero, bb6
bb10:
  ADDI s6, zero, 400
  ADDI s8, zero, 1
  MULW s9, s6, s8
  LA s6, buf
  ADD s8, s6, s9
  ADDI s6, zero, 4
  MULW s9, s2, s6
  ADD s6, s8, s9
  ADDI s8, zero, 400
  MUL s9, zero, s8
  LA s8, buf
  ADD s10, s8, s9
  ADDI s8, zero, 4
  MULW s9, s5, s8
  ADD s8, s10, s9
  LW s9, 0(s8)
  SW s9, 0(s6)
  ADDIW s6, s5, 1
  ADD s8, s3, zero
  ADD s9, s6, zero
  JAL zero, bb11
bb11:
  ADDIW s6, s2, 1
  ADD s2, s6, zero
  ADD s3, s8, zero
  ADD s5, s9, zero
  JAL zero, bb4
bb12:
  ADDI s6, zero, 400
  ADDI s10, zero, 1
  MULW s11, s6, s10
  LA s6, buf
  ADD s10, s6, s11
  ADDI s6, zero, 4
  MULW s11, s2, s6
  ADD s6, s10, s11
  ADDI s10, zero, 400
  MUL s11, zero, s10
  LA s10, buf
  ADD t0, s10, s11
  ADDI s10, zero, 4
  MULW s11, s3, s10
  ADD s10, t0, s11
  LW s11, 0(s10)
  SW s11, 0(s6)
  ADDIW s6, s3, 1
  ADD s8, s6, zero
  ADD s9, s5, zero
  JAL zero, bb11
bb13:
  SLT s9, s8, s4
  XOR s10, s9, zero
  SLTU s9, zero, s10
  BNE s9, zero, bb14
  JAL zero, bb15
bb14:
  ADDI s9, zero, 400
  ADDI s10, zero, 1
  MULW s11, s9, s10
  LA s9, buf
  ADD s10, s9, s11
  ADDI s9, zero, 4
  MULW s11, s6, s9
  ADD s9, s10, s11
  ADDI s10, zero, 400
  MUL s11, zero, s10
  LA s10, buf
  ADD t0, s10, s11
  ADDI s10, zero, 4
  MULW s11, s8, s10
  ADD s10, t0, s11
  LW s11, 0(s10)
  SW s11, 0(s9)
  ADDIW s9, s8, 1
  ADDIW s10, s6, 1
  ADD s6, s10, zero
  ADD s8, s9, zero
  JAL zero, bb13
bb15:
  ADD s8, s6, zero
  ADD s6, s3, zero
  JAL zero, bb16
bb16:
  SLT s9, s6, s1
  XOR s10, s9, zero
  SLTU s9, zero, s10
  BNE s9, zero, bb17
  JAL zero, bb18
bb17:
  ADDI s9, zero, 400
  ADDI s10, zero, 1
  MULW s11, s9, s10
  LA s9, buf
  ADD s10, s9, s11
  ADDI s9, zero, 4
  MULW s11, s8, s9
  ADD s9, s10, s11
  ADDI s10, zero, 400
  MUL s11, zero, s10
  LA s10, buf
  ADD t0, s10, s11
  ADDI s10, zero, 4
  MULW s11, s6, s10
  ADD s10, t0, s11
  LW s11, 0(s10)
  SW s11, 0(s9)
  ADDIW s9, s6, 1
  ADDIW s10, s8, 1
  ADD s8, s10, zero
  ADD s6, s9, zero
  JAL zero, bb16
bb18:
  ADD s6, s0, zero
  JAL zero, bb19
bb19:
  SLT s8, s6, s1
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb20
  JAL zero, bb21
bb20:
  ADDI s8, zero, 400
  MUL s9, zero, s8
  LA s8, buf
  ADD s10, s8, s9
  ADDI s8, zero, 4
  MULW s9, s6, s8
  ADD s8, s10, s9
  ADDI s9, zero, 400
  ADDI s10, zero, 1
  MULW s11, s9, s10
  LA s9, buf
  ADD s10, s9, s11
  ADDI s9, zero, 4
  MULW s11, s6, s9
  ADD s9, s10, s11
  LW s10, 0(s9)
  SW s10, 0(s8)
  ADDIW s8, s6, 1
  ADD s6, s8, zero
  JAL zero, bb19
bb21:
  LD s11, 0(sp)
  LD s7, 8(sp)
  LD s10, 16(sp)
  LD s0, 24(sp)
  LD s5, 32(sp)
  LD s1, 40(sp)
  LD s6, 48(sp)
  LD s8, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD ra, 80(sp)
  LD s4, 88(sp)
  LD s9, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
