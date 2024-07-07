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
  SD s6, 96(sp)
  SD s1, 104(sp)
  SD s5, 112(sp)
  SD s0, 120(sp)
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
  ADDIW s5, s6, 48
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
  LD s5, 112(sp)
  LD s0, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
my_getint:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s7, 48(sp)
  SD s5, 56(sp)
  SD s0, 64(sp)
  JAL zero, bb8
bb8:
  CALL getch
  ADD s0, a0, zero
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  SLT s0, s2, zero
  BNE s0, zero, bb10
  JAL zero, bb11
bb9:
  ADD s3, s1, zero
  ADD s1, s3, zero
  JAL zero, bb15
bb10:
  ADDI s0, zero, 1
  JAL zero, bb12
bb11:
  ADDI s1, zero, 9
  SLT s3, s1, s2
  ADD s0, s3, zero
  JAL zero, bb12
bb12:
  ADD s1, s0, zero
  BNE s1, zero, bb13
  JAL zero, bb14
bb13:
  JAL zero, bb8
bb14:
  ADD s1, s2, zero
  JAL zero, bb9
bb15:
  ADD s3, s1, zero
  CALL getch
  ADD s4, a0, zero
  ADDI s5, zero, 48
  SUBW s6, s4, s5
  SLT s4, s6, zero
  XORI s5, s4, 1
  BNE s5, zero, bb17
  JAL zero, bb18
bb16:
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s7, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb17:
  ADDI s4, zero, 9
  SLT s5, s4, s6
  XORI s4, s5, 1
  ADD s5, s4, zero
  JAL zero, bb19
bb18:
  ADD s5, zero, zero
  JAL zero, bb19
bb19:
  ADD s4, s5, zero
  BNE s4, zero, bb20
  JAL zero, bb22
bb20:
  ADDI s4, zero, 10
  MULW s7, s3, s4
  ADDW s4, s7, s6
  JAL zero, bb21
bb21:
  ADD s1, s4, zero
  JAL zero, bb15
bb22:
  JAL zero, bb16
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
  JAL zero, bb24
bb24:
  ADD s0, s1, zero
  SLT s2, zero, s0
  BNE s2, zero, bb25
  JAL zero, bb26
bb25:
  CALL my_getint
  ADD s2, a0, zero
  ADD a0, s2, zero
  CALL my_putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s2, zero, 1
  SUBW s3, s0, s2
  ADD s1, s3, zero
  JAL zero, bb24
bb26:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
