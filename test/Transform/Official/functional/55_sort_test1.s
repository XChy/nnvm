.global main
.global bubblesort
.section .bss

.section .data
n:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -144
  SD s11, 40(sp)
  SD s10, 48(sp)
  SD s0, 56(sp)
  SD s5, 64(sp)
  SD s1, 72(sp)
  SD s6, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  SD s7, 104(sp)
  SD ra, 112(sp)
  SD s4, 120(sp)
  SD s8, 128(sp)
  SD s9, 136(sp)
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
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb4
bb1:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb2
  JAL zero, bb3
bb2:
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
  JAL zero, bb1
bb3:
  ADD a0, zero, zero
  LD s11, 40(sp)
  LD s10, 48(sp)
  LD s0, 56(sp)
  LD s5, 64(sp)
  LD s1, 72(sp)
  LD s6, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s7, 104(sp)
  LD ra, 112(sp)
  LD s4, 120(sp)
  LD s8, 128(sp)
  LD s9, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb4:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, n
  LW s5, 0(s4)
  ADDI s4, zero, 1
  SUBW s6, s5, s4
  SLT s4, s2, s6
  BNE s4, zero, bb5
  JAL zero, bb6
bb5:
  ADD s4, s3, zero
  ADD s3, zero, zero
  JAL zero, bb7
bb6:
  ADD s0, zero, zero
  JAL zero, bb1
bb7:
  ADD s5, s3, zero
  ADD s6, s4, zero
  LA s7, n
  LW s8, 0(s7)
  SUBW s7, s8, s2
  ADDI s8, zero, 1
  SUBW s9, s7, s8
  SLT s7, s5, s9
  BNE s7, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s7, zero, 4
  MULW s8, s5, s7
  ADDI t5, sp, 0
  ADD s7, t5, s8
  LW s8, 0(s7)
  ADDIW s9, s5, 1
  ADDI s5, zero, 4
  MULW s10, s9, s5
  ADDI t5, sp, 0
  ADD s5, t5, s10
  LW s10, 0(s5)
  SLT s11, s10, s8
  BNE s11, zero, bb10
  JAL zero, bb12
bb9:
  ADDIW s3, s2, 1
  ADD s0, s6, zero
  ADD s1, s3, zero
  JAL zero, bb4
bb10:
  LW s8, 0(s5)
  LW s10, 0(s7)
  SW s10, 0(s5)
  SW s8, 0(s7)
  ADD s5, s8, zero
  JAL zero, bb11
bb11:
  ADD s7, s5, zero
  ADD s4, s7, zero
  ADD s3, s9, zero
  JAL zero, bb7
bb12:
  ADD s5, s6, zero
  JAL zero, bb11
bubblesort:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD s0, 16(sp)
  SD s5, 24(sp)
  SD s7, 32(sp)
  SD s1, 40(sp)
  SD s6, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD ra, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  JAL zero, bb14
bb14:
  ADD s3, s2, zero
  ADD s4, s1, zero
  LA s5, n
  LW s6, 0(s5)
  ADDI s5, zero, 1
  SUBW s7, s6, s5
  SLT s5, s3, s7
  BNE s5, zero, bb15
  JAL zero, bb16
bb15:
  ADD s5, s4, zero
  ADD s4, zero, zero
  JAL zero, bb17
bb16:
  ADD a0, zero, zero
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s0, 16(sp)
  LD s5, 24(sp)
  LD s7, 32(sp)
  LD s1, 40(sp)
  LD s6, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb17:
  ADD s6, s4, zero
  ADD s7, s5, zero
  LA s8, n
  LW s9, 0(s8)
  SUBW s8, s9, s3
  ADDI s9, zero, 1
  SUBW s10, s8, s9
  SLT s8, s6, s10
  BNE s8, zero, bb18
  JAL zero, bb19
bb18:
  ADDI s8, zero, 4
  MULW s9, s6, s8
  ADD s8, s0, s9
  LW s9, 0(s8)
  ADDIW s10, s6, 1
  ADDI s6, zero, 4
  MULW s11, s10, s6
  ADD s6, s0, s11
  LW s11, 0(s6)
  SLT t0, s11, s9
  BNE t0, zero, bb20
  JAL zero, bb22
bb19:
  ADDIW s4, s3, 1
  ADD s1, s7, zero
  ADD s2, s4, zero
  JAL zero, bb14
bb20:
  LW s9, 0(s6)
  LW s11, 0(s8)
  SW s11, 0(s6)
  SW s9, 0(s8)
  ADD s6, s9, zero
  JAL zero, bb21
bb21:
  ADD s8, s6, zero
  ADD s5, s8, zero
  ADD s4, s10, zero
  JAL zero, bb17
bb22:
  ADD s6, s7, zero
  JAL zero, bb21
