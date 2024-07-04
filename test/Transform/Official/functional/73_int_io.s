.global my_putint
.global my_getint
.global main
.section .bss

.section .data
ascii_0:
.word 0x00000030
.section .text
my_putint:
  ADDI sp, sp, -128
  SD ra, 80(sp)
  SD s3, 88(sp)
  SD s2, 96(sp)
  SD s1, 104(sp)
  SD s0, 112(sp)
  ADD s0, a0, zero
  SW s0, 72(sp)
  ADDI s0, zero, 0
  SW s0, 0(sp)
  JAL zero, bb1
bb1:
  LW s0, 72(sp)
  ADDI s1, zero, 0
  SLT s2, s1, s0
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 8
  ADD s0, t5, s2
  LW s1, 72(sp)
  ADDI s2, zero, 10
  REMW s3, s1, s2
  LA s1, ascii_0
  LW s2, 0(s1)
  ADDW s1, s3, s2
  SW s1, 0(s0)
  LW s0, 72(sp)
  ADDI s1, zero, 10
  DIVW s2, s0, s1
  SW s2, 72(sp)
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb1
bb3:
  JAL zero, bb4
bb4:
  LW s0, 0(sp)
  ADDI s1, zero, 0
  SLT s2, s1, s0
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb5
  JAL zero, bb6
bb5:
  LW s0, 0(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 0(sp)
  ADDI s0, zero, 4
  MULW s1, s2, s0
  ADDI t6, sp, 8
  ADD s0, t6, s1
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putch
  JAL zero, bb4
bb6:
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
my_getint:
  ADDI sp, sp, -64
  SD ra, 32(sp)
  SD s2, 40(sp)
  SD s1, 48(sp)
  SD s0, 56(sp)
  ADDI s0, zero, 0
  SW s0, 24(sp)
  JAL zero, bb8
bb8:
  ADDI s0, zero, 0
  XORI s1, s0, 1
  SLTU s0, zero, s1
  BNE s0, zero, bb9
  JAL zero, bb10
bb9:
  CALL getch
  ADD s0, a0, zero
  LA s1, ascii_0
  LW s2, 0(s1)
  SUBW s1, s0, s2
  SW s1, 16(sp)
  SLT s0, s1, zero
  BNE s0, zero, bb11
  JAL zero, bb12
bb10:
  LW s0, 16(sp)
  SW s0, 24(sp)
  JAL zero, bb17
bb11:
  ADDI s0, zero, 1
  SB s0, 8(sp)
  JAL zero, bb13
bb12:
  LW s0, 16(sp)
  ADDI s1, zero, 9
  SLT s2, s1, s0
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 8(sp)
  JAL zero, bb13
bb13:
  LB s0, 8(sp)
  BNE s0, zero, bb14
  JAL zero, bb16
bb14:
  JAL zero, bb8
bb15:
  JAL zero, bb8
bb16:
  JAL zero, bb10
bb17:
  XORI s0, zero, 1
  SLTU s1, zero, s0
  BNE s1, zero, bb18
  JAL zero, bb19
bb18:
  CALL getch
  ADD s0, a0, zero
  LA s1, ascii_0
  LW s2, 0(s1)
  SUBW s1, s0, s2
  SW s1, 16(sp)
  SLT s0, s1, zero
  XORI s1, s0, 1
  BNE s1, zero, bb20
  JAL zero, bb21
bb19:
  LW s0, 24(sp)
  ADD a0, s0, zero
  LD ra, 32(sp)
  LD s2, 40(sp)
  LD s1, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb20:
  LW s0, 16(sp)
  ADDI s1, zero, 9
  SLT s2, s1, s0
  XORI s0, s2, 1
  SB s0, 0(sp)
  JAL zero, bb22
bb21:
  SB zero, 0(sp)
  JAL zero, bb22
bb22:
  LB s0, 0(sp)
  BNE s0, zero, bb23
  JAL zero, bb25
bb23:
  LW s0, 24(sp)
  ADDI s1, zero, 10
  MULW s2, s0, s1
  LW s0, 16(sp)
  ADDW s1, s2, s0
  SW s1, 24(sp)
  JAL zero, bb24
bb24:
  JAL zero, bb17
bb25:
  JAL zero, bb19
main:
  ADDI sp, sp, -48
  SD ra, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  CALL my_getint
  ADD s0, a0, zero
  SW s0, 8(sp)
  JAL zero, bb27
bb27:
  LW s0, 8(sp)
  SLT s1, zero, s0
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb28
  JAL zero, bb29
bb28:
  CALL my_getint
  ADD s0, a0, zero
  SW s0, 0(sp)
  ADD a0, s0, zero
  CALL my_putint
  ADDI a0, zero, 10
  CALL putch
  LW s0, 8(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 8(sp)
  JAL zero, bb27
bb29:
  ADD a0, zero, zero
  LD ra, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
