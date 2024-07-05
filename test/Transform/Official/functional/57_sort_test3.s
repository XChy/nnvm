.global QuickSort
.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
QuickSort:
  ADDI sp, sp, -112
  SD s10, 0(sp)
  SD s11, 8(sp)
  SD s1, 16(sp)
  SD s9, 24(sp)
  SD s0, 32(sp)
  SD s5, 40(sp)
  SD s7, 48(sp)
  SD s2, 56(sp)
  SD s8, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s6, 88(sp)
  SD ra, 96(sp)
  ADD s0, a0, zero
  ADD s2, a1, zero
  ADD s3, a2, zero
  SLT s4, s2, s3
  BNE s4, zero, bb1
  JAL zero, bb2
bb1:
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s4, s0, s5
  LW s5, 0(s4)
  ADD s4, zero, zero
  ADD s6, s3, zero
  ADD s7, s2, zero
  JAL zero, bb3
bb2:
  ADD a0, zero, zero
  LD s10, 0(sp)
  LD s11, 8(sp)
  LD s1, 16(sp)
  LD s9, 24(sp)
  LD s0, 32(sp)
  LD s5, 40(sp)
  LD s7, 48(sp)
  LD s2, 56(sp)
  LD s8, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s6, 88(sp)
  LD ra, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb3:
  SLT s8, s7, s6
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb4
  JAL zero, bb5
bb4:
  ADD s8, s6, zero
  JAL zero, bb6
bb5:
  ADDI s1, zero, 4
  MULW s4, s7, s1
  ADD s1, s0, s4
  SW s5, 0(s1)
  ADDI s1, zero, 1
  SUBW s4, s7, s1
  ADD a0, s0, zero
  ADD a1, s2, zero
  ADD a2, s4, zero
  CALL QuickSort
  ADD s1, a0, zero
  ADDIW s1, s7, 1
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s3, zero
  CALL QuickSort
  ADD s0, a0, zero
  JAL zero, bb2
bb6:
  SLT s9, s7, s8
  BNE s9, zero, bb9
  JAL zero, bb10
bb7:
  ADDI s9, zero, 1
  SUBW s11, s8, s9
  ADD s8, s11, zero
  JAL zero, bb6
bb8:
  SLT s9, s7, s8
  BNE s9, zero, bb12
  JAL zero, bb22
bb9:
  ADDI s9, zero, 4
  MULW s10, s8, s9
  ADD s9, s0, s10
  LW s10, 0(s9)
  ADDI s9, zero, 1
  SUBW s11, s5, s9
  SLT s9, s11, s10
  ADD s10, s9, zero
  JAL zero, bb11
bb10:
  ADD s10, zero, zero
  JAL zero, bb11
bb11:
  XOR s9, s10, zero
  SLTU s11, zero, s9
  BNE s11, zero, bb7
  JAL zero, bb8
bb12:
  ADDI s9, zero, 4
  MULW s11, s7, s9
  ADD s9, s0, s11
  ADDI s11, zero, 4
  MULW t0, s8, s11
  ADD s11, s0, t0
  LW t0, 0(s11)
  SW t0, 0(s9)
  ADDIW s9, s7, 1
  ADD s11, s9, zero
  JAL zero, bb13
bb13:
  ADD s9, s11, zero
  JAL zero, bb14
bb14:
  SLT t0, s9, s8
  BNE t0, zero, bb17
  JAL zero, bb18
bb15:
  ADDIW t0, s9, 1
  ADD s9, t0, zero
  JAL zero, bb14
bb16:
  SLT t0, s9, s8
  BNE t0, zero, bb20
  JAL zero, bb23
bb17:
  ADDI t0, zero, 4
  MULW t1, s9, t0
  ADD t0, s0, t1
  LW t1, 0(t0)
  SLT t0, t1, s5
  ADD s1, t0, zero
  JAL zero, bb19
bb18:
  ADD s1, zero, zero
  JAL zero, bb19
bb19:
  XOR t0, s1, zero
  SLTU t1, zero, t0
  BNE t1, zero, bb15
  JAL zero, bb16
bb20:
  ADDI t0, zero, 4
  MULW t1, s8, t0
  ADD t0, s0, t1
  ADDI t1, zero, 4
  MULW t2, s9, t1
  ADD t1, s0, t2
  LW t2, 0(t1)
  SW t2, 0(t0)
  ADDI t0, zero, 1
  SUBW t1, s8, t0
  ADD t0, t1, zero
  JAL zero, bb21
bb21:
  ADD s4, s1, zero
  ADD s6, t0, zero
  ADD s7, s9, zero
  JAL zero, bb3
bb22:
  ADD s11, s7, zero
  JAL zero, bb13
bb23:
  ADD t0, s8, zero
  JAL zero, bb21
main:
  ADDI sp, sp, -80
  SD ra, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  SD s0, 64(sp)
  LA s0, n
  ADDI s1, zero, 10
  SW s1, 0(s0)
  ADDI s0, zero, 4
  MUL s1, zero, s0
  ADDI t5, sp, 0
  ADD s0, t5, s1
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 1
  MULW s2, s0, s1
  ADDI t6, sp, 0
  ADD s0, t6, s2
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 2
  MULW s2, s0, s1
  ADDI t5, sp, 0
  ADD s0, t5, s2
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 3
  MULW s2, s0, s1
  ADDI t6, sp, 0
  ADD s0, t6, s2
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 0
  ADD s0, t5, s2
  SW zero, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 5
  MULW s2, s0, s1
  ADDI t6, sp, 0
  ADD s0, t6, s2
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 6
  MULW s2, s0, s1
  ADDI t5, sp, 0
  ADD s0, t5, s2
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 7
  MULW s2, s0, s1
  ADDI t6, sp, 0
  ADD s0, t6, s2
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 8
  MULW s2, s0, s1
  ADDI t5, sp, 0
  ADD s0, t5, s2
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 9
  MULW s2, s0, s1
  ADDI t6, sp, 0
  ADD s0, t6, s2
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
  LA s0, n
  LW s2, 0(s0)
  SLT s0, s1, s2
  XOR s2, s0, zero
  SLTU s0, zero, s2
  BNE s0, zero, bb26
  JAL zero, bb27
bb26:
  ADDI s0, zero, 4
  MULW s2, s1, s0
  ADDI t5, sp, 0
  ADD s0, t5, s2
  LW s2, 0(s0)
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s0, s1, 1
  ADD s1, s0, zero
  JAL zero, bb25
bb27:
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
