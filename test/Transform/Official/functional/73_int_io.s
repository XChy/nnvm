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
  SD ra, 64(sp)
  SD s4, 72(sp)
  SD s3, 80(sp)
  SD s2, 88(sp)
  SD s1, 96(sp)
  SD s5, 104(sp)
  SD s0, 112(sp)
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb1
bb1:
  SLT s0, zero, s2
  XOR s3, s0, zero
  SLTU s0, zero, s3
  BNE s0, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s0, zero, 4
  MULW s3, s1, s0
  ADDI t5, sp, 0
  ADD s0, t5, s3
  ADDI s3, zero, 10
  REMW s4, s2, s3
  LA s3, ascii_0
  LW s5, 0(s3)
  ADDW s3, s4, s5
  SW s3, 0(s0)
  ADDI s0, zero, 10
  DIVW s3, s2, s0
  ADDIW s0, s1, 1
  ADD s1, s0, zero
  ADD s2, s3, zero
  JAL zero, bb1
bb3:
  ADD s0, s1, zero
  JAL zero, bb4
bb4:
  SLT s1, zero, s0
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADDI t6, sp, 0
  ADD s1, t6, s3
  LW s3, 0(s1)
  ADD a0, s3, zero
  CALL putch
  ADD s0, s2, zero
  JAL zero, bb4
bb6:
  LD ra, 64(sp)
  LD s4, 72(sp)
  LD s3, 80(sp)
  LD s2, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
my_getint:
  ADDI sp, sp, -96
  SD s9, 0(sp)
  SD ra, 8(sp)
  SD s8, 16(sp)
  SD s4, 24(sp)
  SD s7, 32(sp)
  SD s3, 40(sp)
  SD s2, 48(sp)
  SD s5, 56(sp)
  SD s0, 64(sp)
  SD s6, 72(sp)
  SD s1, 80(sp)
  ADD s1, zero, zero
  ADD s0, zero, zero
  JAL zero, bb8
bb8:
  XORI s2, zero, 1
  SLTU s3, zero, s2
  BNE s3, zero, bb9
  JAL zero, bb26
bb9:
  CALL getch
  ADD s2, a0, zero
  LA s3, ascii_0
  LW s4, 0(s3)
  SUBW s3, s2, s4
  SLT s2, s3, zero
  BNE s2, zero, bb11
  JAL zero, bb12
bb10:
  ADD s4, zero, zero
  ADD s5, s1, zero
  JAL zero, bb17
bb11:
  ADDI s2, zero, 1
  JAL zero, bb13
bb12:
  ADDI s4, zero, 9
  SLT s5, s4, s3
  XOR s4, s5, zero
  SLTU s5, zero, s4
  ADD s2, s5, zero
  JAL zero, bb13
bb13:
  BNE s2, zero, bb14
  JAL zero, bb16
bb14:
  ADD s1, s2, zero
  ADD s0, s3, zero
  JAL zero, bb8
bb15:
  JAL zero, bb8
bb16:
  ADD s1, s3, zero
  JAL zero, bb10
bb17:
  XORI s6, zero, 1
  SLTU s7, zero, s6
  BNE s7, zero, bb18
  JAL zero, bb19
bb18:
  CALL getch
  ADD s6, a0, zero
  LA s7, ascii_0
  LW s8, 0(s7)
  SUBW s7, s6, s8
  SLT s6, s7, zero
  XORI s8, s6, 1
  BNE s8, zero, bb20
  JAL zero, bb21
bb19:
  ADD a0, s5, zero
  LD s9, 0(sp)
  LD ra, 8(sp)
  LD s8, 16(sp)
  LD s4, 24(sp)
  LD s7, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  LD s6, 72(sp)
  LD s1, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb20:
  ADDI s6, zero, 9
  SLT s8, s6, s7
  XORI s6, s8, 1
  ADD s8, s6, zero
  JAL zero, bb22
bb21:
  ADD s8, zero, zero
  JAL zero, bb22
bb22:
  BNE s8, zero, bb23
  JAL zero, bb25
bb23:
  ADDI s6, zero, 10
  MULW s9, s5, s6
  ADDW s6, s9, s7
  JAL zero, bb24
bb24:
  ADD s4, s8, zero
  ADD s5, s6, zero
  JAL zero, bb17
bb25:
  JAL zero, bb19
bb26:
  ADD s1, s0, zero
  JAL zero, bb10
main:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  CALL my_getint
  ADD s0, a0, zero
  ADD s1, s0, zero
  JAL zero, bb28
bb28:
  SLT s0, zero, s1
  XOR s2, s0, zero
  SLTU s0, zero, s2
  BNE s0, zero, bb29
  JAL zero, bb30
bb29:
  CALL my_getint
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL my_putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s0, zero, 1
  SUBW s2, s1, s0
  ADD s1, s2, zero
  JAL zero, bb28
bb30:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
