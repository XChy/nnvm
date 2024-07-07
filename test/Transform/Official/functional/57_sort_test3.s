.global QuickSort
.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
QuickSort:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD s9, 16(sp)
  SD s8, 24(sp)
  SD s0, 32(sp)
  SD s5, 40(sp)
  SD s7, 48(sp)
  SD s1, 56(sp)
  SD s6, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD ra, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  SLT s3, s1, s2
  BNE s3, zero, bb1
  JAL zero, bb2
bb1:
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADD s3, s0, s4
  LW s4, 0(s3)
  ADD s3, s2, zero
  ADD s5, s1, zero
  JAL zero, bb3
bb2:
  ADD a0, zero, zero
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  LD s8, 24(sp)
  LD s0, 32(sp)
  LD s5, 40(sp)
  LD s7, 48(sp)
  LD s1, 56(sp)
  LD s6, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD ra, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb3:
  ADD s6, s5, zero
  ADD s7, s3, zero
  SLT s8, s6, s7
  BNE s8, zero, bb4
  JAL zero, bb5
bb4:
  ADD s8, s7, zero
  JAL zero, bb6
bb5:
  ADDI s3, zero, 4
  MULW s5, s6, s3
  ADD s3, s0, s5
  SW s4, 0(s3)
  ADDI s3, zero, 1
  SUBW s4, s6, s3
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s4, zero
  CALL QuickSort
  ADD s1, a0, zero
  ADDIW s1, s6, 1
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL QuickSort
  ADD s0, a0, zero
  JAL zero, bb2
bb6:
  ADD s7, s8, zero
  SLT s9, s6, s7
  BNE s9, zero, bb9
  JAL zero, bb10
bb7:
  ADDI s10, zero, 1
  SUBW t0, s7, s10
  ADD s8, t0, zero
  JAL zero, bb6
bb8:
  BNE s9, zero, bb12
  JAL zero, bb22
bb9:
  ADDI s10, zero, 4
  MULW s11, s7, s10
  ADD s10, s0, s11
  LW s11, 0(s10)
  ADDI s10, zero, 1
  SUBW t0, s4, s10
  SLT s10, t0, s11
  ADD s11, s10, zero
  JAL zero, bb11
bb10:
  ADD s11, zero, zero
  JAL zero, bb11
bb11:
  ADD s10, s11, zero
  BNE s10, zero, bb7
  JAL zero, bb8
bb12:
  ADDI s8, zero, 4
  MULW s10, s6, s8
  ADD s8, s0, s10
  ADDI s10, zero, 4
  MULW t0, s7, s10
  ADD s10, s0, t0
  LW t0, 0(s10)
  SW t0, 0(s8)
  ADDIW s8, s6, 1
  ADD s10, s8, zero
  JAL zero, bb13
bb13:
  ADD s8, s10, zero
  ADD t0, s8, zero
  JAL zero, bb14
bb14:
  ADD s8, t0, zero
  SLT t1, s8, s7
  BNE t1, zero, bb17
  JAL zero, bb18
bb15:
  ADDIW t2, s8, 1
  ADD t0, t2, zero
  JAL zero, bb14
bb16:
  BNE t1, zero, bb20
  JAL zero, bb23
bb17:
  ADDI t2, zero, 4
  MULW a3, s8, t2
  ADD t2, s0, a3
  LW a3, 0(t2)
  SLT t2, a3, s4
  ADD a3, t2, zero
  JAL zero, bb19
bb18:
  ADD a3, zero, zero
  JAL zero, bb19
bb19:
  ADD t2, a3, zero
  BNE t2, zero, bb15
  JAL zero, bb16
bb20:
  ADDI t0, zero, 4
  MULW t2, s7, t0
  ADD t0, s0, t2
  ADDI t2, zero, 4
  MULW a4, s8, t2
  ADD t2, s0, a4
  LW a4, 0(t2)
  SW a4, 0(t0)
  ADDI t0, zero, 1
  SUBW t2, s7, t0
  ADD t0, t2, zero
  JAL zero, bb21
bb21:
  ADD t2, t0, zero
  ADD s3, t2, zero
  ADD s5, s8, zero
  JAL zero, bb3
bb22:
  ADD s10, s6, zero
  JAL zero, bb13
bb23:
  ADD t0, s7, zero
  JAL zero, bb21
main:
  ADDI sp, sp, -80
  SD ra, 40(sp)
  SD s3, 48(sp)
  SD s2, 56(sp)
  SD s1, 64(sp)
  SD s0, 72(sp)
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
  SW zero, 0(s0)
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
  ADDI a0, sp, 0
  ADD a0, a0, zero
  ADD a1, zero, zero
  ADDI a2, zero, 9
  CALL QuickSort
  ADD s0, a0, zero
  ADD s1, s0, zero
  JAL zero, bb25
bb25:
  ADD s0, s1, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s0, s3
  BNE s2, zero, bb26
  JAL zero, bb27
bb26:
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADDI t5, sp, 0
  ADD s2, t5, s3
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s2, s0, 1
  ADD s1, s2, zero
  JAL zero, bb25
bb27:
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s3, 48(sp)
  LD s2, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
