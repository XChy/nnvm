.global my_putint
.global my_getint
.global main
.section .bss

.section .data
ascii_0:
.word 0x00000030
.section .text
my_putint:
  ADDI sp, sp, -144
  SD ra, 64(sp)
  SD s4, 72(sp)
  SD s3, 80(sp)
  SD s2, 88(sp)
  SD s6, 96(sp)
  SD s1, 104(sp)
  SD s7, 112(sp)
  SD s5, 120(sp)
  SD s0, 128(sp)
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb1
bb1:
  ADD s0, s2, zero
  ADD s3, s1, zero
  SLT s4, zero, s0
  BNE s4, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADDI t5, sp, 0
  ADD s4, t5, s5
  ADDI s5, zero, 10
  REMW s6, s0, s5
  LA s5, ascii_0
  LW s7, 0(s5)
  ADDW s5, s6, s7
  SW s5, 0(s4)
  ADDI s4, zero, 10
  DIVW s5, s0, s4
  ADDIW s0, s3, 1
  ADD s1, s0, zero
  ADD s2, s5, zero
  JAL zero, bb1
bb3:
  ADD s0, s3, zero
  JAL zero, bb4
bb4:
  ADD s1, s0, zero
  SLT s2, zero, s1
  BNE s2, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADDI s1, zero, 4
  MULW s2, s3, s1
  ADDI t6, sp, 0
  ADD s1, t6, s2
  LW s2, 0(s1)
  ADD a0, s2, zero
  CALL putch
  ADD s0, s3, zero
  JAL zero, bb4
bb6:
  LD ra, 64(sp)
  LD s4, 72(sp)
  LD s3, 80(sp)
  LD s2, 88(sp)
  LD s6, 96(sp)
  LD s1, 104(sp)
  LD s7, 112(sp)
  LD s5, 120(sp)
  LD s0, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
my_getint:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s7, 24(sp)
  SD s2, 32(sp)
  SD s6, 40(sp)
  SD s1, 48(sp)
  SD s5, 56(sp)
  SD s0, 64(sp)
  ADD s0, zero, zero
  JAL zero, bb8
bb8:
  ADD s1, s0, zero
  ADD s2, s1, zero
  JAL zero, bb9
bb9:
  CALL getch
  ADD s1, a0, zero
  LA s3, ascii_0
  LW s4, 0(s3)
  SUBW s3, s1, s4
  SLT s1, s3, zero
  BNE s1, zero, bb11
  JAL zero, bb12
bb10:
  ADD s0, s2, zero
  ADD s2, s0, zero
  JAL zero, bb16
bb11:
  ADDI s1, zero, 1
  JAL zero, bb13
bb12:
  ADDI s0, zero, 9
  SLT s2, s0, s3
  ADD s1, s2, zero
  JAL zero, bb13
bb13:
  ADD s4, s1, zero
  BNE s4, zero, bb14
  JAL zero, bb15
bb14:
  ADD s0, s3, zero
  JAL zero, bb8
bb15:
  ADD s2, s3, zero
  JAL zero, bb10
bb16:
  ADD s0, s2, zero
  JAL zero, bb17
bb17:
  CALL getch
  ADD s4, a0, zero
  LA s5, ascii_0
  LW s6, 0(s5)
  SUBW s5, s4, s6
  SLT s4, s5, zero
  XORI s6, s4, 1
  BNE s6, zero, bb19
  JAL zero, bb20
bb18:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s7, 24(sp)
  LD s2, 32(sp)
  LD s6, 40(sp)
  LD s1, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb19:
  ADDI s4, zero, 9
  SLT s6, s4, s5
  XORI s4, s6, 1
  ADD s6, s4, zero
  JAL zero, bb21
bb20:
  ADD s6, zero, zero
  JAL zero, bb21
bb21:
  ADD s4, s6, zero
  BNE s4, zero, bb22
  JAL zero, bb23
bb22:
  ADDI s4, zero, 10
  MULW s7, s0, s4
  ADDW s4, s7, s5
  ADD s2, s4, zero
  JAL zero, bb16
bb23:
  JAL zero, bb18
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  CALL my_getint
  ADD s0, a0, zero
  ADD s1, s0, zero
  JAL zero, bb25
bb25:
  ADD s0, s1, zero
  SLT s2, zero, s0
  BNE s2, zero, bb26
  JAL zero, bb27
bb26:
  CALL my_getint
  ADD s2, a0, zero
  ADD a0, s2, zero
  CALL my_putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s2, zero, 1
  SUBW s3, s0, s2
  ADD s1, s3, zero
  JAL zero, bb25
bb27:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
