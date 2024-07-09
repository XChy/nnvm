.global main
.global insertsort
.section .bss

.section .data
n:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -128
  SD s8, 40(sp)
  SD s4, 48(sp)
  SD ra, 56(sp)
  SD s7, 64(sp)
  SD s3, 72(sp)
  SD s2, 80(sp)
  SD s6, 88(sp)
  SD s1, 96(sp)
  SD s5, 104(sp)
  SD s0, 112(sp)
  LA s0, n
  ADDI s1, zero, 10
  SW s1, 0(s0)
  ADDI s0, zero, 4
  SW s0, 0(sp)
  ADDI s0, sp, 4
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 8
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 12
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 16
  ADDI s1, zero, 0
  SW s1, 0(s0)
  ADDI s0, sp, 20
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 24
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 28
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 32
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 36
  ADDI s1, zero, 8
  SW s1, 0(s0)
  JAL zero, bb5
bb1:
  ADD s0, zero, zero
  JAL zero, bb2
bb2:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb3
  JAL zero, bb4
bb3:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 0
  ADD s2, t5, s3
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb2
bb4:
  ADD a0, zero, zero
  LD s8, 40(sp)
  LD s4, 48(sp)
  LD ra, 56(sp)
  LD s7, 64(sp)
  LD s3, 72(sp)
  LD s2, 80(sp)
  LD s6, 88(sp)
  LD s1, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb5:
  ADDI s0, zero, 1
  JAL zero, bb6
bb6:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb7
  JAL zero, bb8
bb7:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t6, sp, 0
  ADD s2, t6, s3
  LW s3, 0(s2)
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADD s2, s4, zero
  JAL zero, bb9
bb8:
  JAL zero, bb1
bb9:
  ADD s4, s2, zero
  ADDI s5, zero, -1
  SLT s6, s5, s4
  BNE s6, zero, bb12
  JAL zero, bb13
bb10:
  ADDIW s5, s4, 1
  ADDI s7, zero, 4
  MULW s8, s5, s7
  ADDI t5, sp, 0
  ADD s5, t5, s8
  ADDI s7, zero, 4
  MULW s8, s4, s7
  ADDI t6, sp, 0
  ADD s7, t6, s8
  LW s8, 0(s7)
  SW s8, 0(s5)
  ADDI s5, zero, 1
  SUBW s7, s4, s5
  ADD s2, s7, zero
  JAL zero, bb9
bb11:
  ADDIW s2, s4, 1
  ADDI s5, zero, 4
  MULW s7, s2, s5
  ADDI t5, sp, 0
  ADD s2, t5, s7
  SW s3, 0(s2)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb6
bb12:
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADDI t6, sp, 0
  ADD s5, t6, s6
  LW s6, 0(s5)
  SLT s5, s3, s6
  ADD s6, s5, zero
  JAL zero, bb14
bb13:
  ADD s6, zero, zero
  JAL zero, bb14
bb14:
  ADD s5, s6, zero
  BNE s5, zero, bb10
  JAL zero, bb11
insertsort:
  ADDI sp, sp, -96
  SD s9, 0(sp)
  SD s8, 8(sp)
  SD ra, 16(sp)
  SD s4, 24(sp)
  SD s3, 32(sp)
  SD s2, 40(sp)
  SD s6, 48(sp)
  SD s1, 56(sp)
  SD s7, 64(sp)
  SD s5, 72(sp)
  SD s0, 80(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 1
  JAL zero, bb16
bb16:
  ADD s2, s1, zero
  LA s3, n
  LW s4, 0(s3)
  SLT s3, s2, s4
  BNE s3, zero, bb17
  JAL zero, bb18
bb17:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s3, s0, s4
  LW s4, 0(s3)
  ADDI s3, zero, 1
  SUBW s5, s2, s3
  ADD s3, s5, zero
  JAL zero, bb19
bb18:
  ADD a0, zero, zero
  LD s9, 0(sp)
  LD s8, 8(sp)
  LD ra, 16(sp)
  LD s4, 24(sp)
  LD s3, 32(sp)
  LD s2, 40(sp)
  LD s6, 48(sp)
  LD s1, 56(sp)
  LD s7, 64(sp)
  LD s5, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb19:
  ADD s5, s3, zero
  ADDI s6, zero, -1
  SLT s7, s6, s5
  BNE s7, zero, bb22
  JAL zero, bb23
bb20:
  ADDIW s6, s5, 1
  ADDI s8, zero, 4
  MULW s9, s6, s8
  ADD s6, s0, s9
  ADDI s8, zero, 4
  MULW s9, s5, s8
  ADD s8, s0, s9
  LW s9, 0(s8)
  SW s9, 0(s6)
  ADDI s6, zero, 1
  SUBW s8, s5, s6
  ADD s3, s8, zero
  JAL zero, bb19
bb21:
  ADDIW s3, s5, 1
  ADDI s6, zero, 4
  MULW s8, s3, s6
  ADD s3, s0, s8
  SW s4, 0(s3)
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb16
bb22:
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADD s6, s0, s7
  LW s7, 0(s6)
  SLT s6, s4, s7
  ADD s7, s6, zero
  JAL zero, bb24
bb23:
  ADD s7, zero, zero
  JAL zero, bb24
bb24:
  ADD s6, s7, zero
  BNE s6, zero, bb20
  JAL zero, bb21
