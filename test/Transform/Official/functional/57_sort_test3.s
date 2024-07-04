.global QuickSort
.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
QuickSort:
  ADDI sp, sp, -112
  SD s4, 64(sp)
  SD ra, 72(sp)
  SD s3, 80(sp)
  SD s2, 88(sp)
  SD s1, 96(sp)
  SD s0, 104(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  SW s1, 56(sp)
  SW s2, 48(sp)
  LW s1, 56(sp)
  SLT s3, s1, s2
  BNE s3, zero, bb1
  JAL zero, bb2
bb1:
  LW s1, 56(sp)
  SW s1, 40(sp)
  LW s1, 48(sp)
  SW s1, 32(sp)
  LW s1, 56(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 0(s1)
  SW s2, 24(sp)
  JAL zero, bb3
bb2:
  ADD a0, zero, zero
  LD s4, 64(sp)
  LD ra, 72(sp)
  LD s3, 80(sp)
  LD s2, 88(sp)
  LD s1, 96(sp)
  LD s0, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb3:
  LW s1, 40(sp)
  LW s2, 32(sp)
  SLT s3, s1, s2
  XOR s1, s3, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb4
  JAL zero, bb5
bb4:
  JAL zero, bb6
bb5:
  LW s1, 40(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 24(sp)
  SW s2, 0(s1)
  LW s1, 40(sp)
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  SW s3, 0(sp)
  LW s1, 56(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s3, zero
  CALL QuickSort
  ADD s1, a0, zero
  SW s1, 0(sp)
  LW s1, 40(sp)
  ADDIW s2, s1, 1
  SW s2, 0(sp)
  LW s1, 48(sp)
  ADD a0, s0, zero
  ADD a1, s2, zero
  ADD a2, s1, zero
  CALL QuickSort
  ADD s0, a0, zero
  SW s0, 0(sp)
  JAL zero, bb2
bb6:
  LW s1, 40(sp)
  LW s2, 32(sp)
  SLT s3, s1, s2
  BNE s3, zero, bb9
  JAL zero, bb10
bb7:
  LW s1, 32(sp)
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  SW s3, 32(sp)
  JAL zero, bb6
bb8:
  LW s1, 40(sp)
  LW s2, 32(sp)
  SLT s3, s1, s2
  BNE s3, zero, bb12
  JAL zero, bb13
bb9:
  LW s1, 32(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 0(s1)
  LW s1, 24(sp)
  ADDI s3, zero, 1
  SUBW s4, s1, s3
  SLT s1, s4, s2
  SB s1, 16(sp)
  JAL zero, bb11
bb10:
  SB zero, 16(sp)
  JAL zero, bb11
bb11:
  LB s1, 16(sp)
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb7
  JAL zero, bb8
bb12:
  LW s1, 40(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 32(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s3, 0(s2)
  SW s3, 0(s1)
  LW s1, 40(sp)
  ADDIW s2, s1, 1
  SW s2, 40(sp)
  JAL zero, bb13
bb13:
  JAL zero, bb14
bb14:
  LW s1, 40(sp)
  LW s2, 32(sp)
  SLT s3, s1, s2
  BNE s3, zero, bb17
  JAL zero, bb18
bb15:
  LW s1, 40(sp)
  ADDIW s2, s1, 1
  SW s2, 40(sp)
  JAL zero, bb14
bb16:
  LW s1, 40(sp)
  LW s2, 32(sp)
  SLT s3, s1, s2
  BNE s3, zero, bb20
  JAL zero, bb21
bb17:
  LW s1, 40(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 0(s1)
  LW s1, 24(sp)
  SLT s3, s2, s1
  SB s3, 8(sp)
  JAL zero, bb19
bb18:
  SB zero, 8(sp)
  JAL zero, bb19
bb19:
  LB s1, 8(sp)
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb15
  JAL zero, bb16
bb20:
  LW s1, 32(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 40(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s3, 0(s2)
  SW s3, 0(s1)
  LW s1, 32(sp)
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  SW s3, 32(sp)
  JAL zero, bb21
bb21:
  JAL zero, bb3
main:
  ADDI sp, sp, -96
  SD ra, 64(sp)
  SD s2, 72(sp)
  SD s1, 80(sp)
  SD s0, 88(sp)
  LA s0, n
  ADDI s1, zero, 10
  SW s1, 0(s0)
  ADDI s0, zero, 4
  MUL s1, zero, s0
  ADDI t5, sp, 24
  ADD s0, t5, s1
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 1
  MULW s2, s0, s1
  ADDI t6, sp, 24
  ADD s0, t6, s2
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 2
  MULW s2, s0, s1
  ADDI t5, sp, 24
  ADD s0, t5, s2
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 3
  MULW s2, s0, s1
  ADDI t6, sp, 24
  ADD s0, t6, s2
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 24
  ADD s0, t5, s2
  SW zero, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 5
  MULW s2, s0, s1
  ADDI t6, sp, 24
  ADD s0, t6, s2
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 6
  MULW s2, s0, s1
  ADDI t5, sp, 24
  ADD s0, t5, s2
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 7
  MULW s2, s0, s1
  ADDI t6, sp, 24
  ADD s0, t6, s2
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 8
  MULW s2, s0, s1
  ADDI t5, sp, 24
  ADD s0, t5, s2
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 9
  MULW s2, s0, s1
  ADDI t6, sp, 24
  ADD s0, t6, s2
  ADDI s1, zero, 8
  SW s1, 0(s0)
  SW zero, 16(sp)
  ADDI s0, zero, 9
  SW s0, 8(sp)
  LW s0, 16(sp)
  ADDI a0, sp, 24
  ADD a0, a0, zero
  ADD a1, s0, zero
  ADDI a2, zero, 9
  CALL QuickSort
  ADD s0, a0, zero
  SW s0, 16(sp)
  JAL zero, bb23
bb23:
  LW s0, 16(sp)
  LA s1, n
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb24
  JAL zero, bb25
bb24:
  LW s0, 16(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 24
  ADD s0, t5, s2
  LW s1, 0(s0)
  SW s1, 0(sp)
  ADD a0, s1, zero
  CALL putint
  ADDI s0, zero, 10
  SW s0, 0(sp)
  ADDI a0, zero, 10
  CALL putch
  LW s0, 16(sp)
  ADDIW s1, s0, 1
  SW s1, 16(sp)
  JAL zero, bb23
bb25:
  ADD a0, zero, zero
  LD ra, 64(sp)
  LD s2, 72(sp)
  LD s1, 80(sp)
  LD s0, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
