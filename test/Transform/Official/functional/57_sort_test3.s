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
  BNE s3, zero, bb2
  # implict jump to bb1
bb1:
  ADD a0, zero, zero
  LD s10, 0(sp)
  LD s11, 8(sp)
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
bb2:
  SLLIW s3, s1, 2
  ADD s4, s0, s3
  LW s3, 0(s4)
  ADD s4, s2, zero
  ADD s5, s1, zero
  # implict jump to bb3
bb3:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLT s8, s6, s7
  BNE s8, zero, bb5
  # implict jump to bb4
bb4:
  SLLIW s4, s6, 2
  ADD s5, s0, s4
  SW s3, 0(s5)
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
  JAL zero, bb1
bb5:
  ADD s8, s7, zero
  # implict jump to bb6
bb6:
  ADD s7, s8, zero
  SLT s9, s6, s7
  BNE s9, zero, bb23
  # implict jump to bb7
bb7:
  ADD s10, zero, zero
  # implict jump to bb8
bb8:
  ADD s11, s10, zero
  BNE s11, zero, bb22
  # implict jump to bb9
bb9:
  BNE s9, zero, bb21
  # implict jump to bb10
bb10:
  ADD s11, s6, zero
  # implict jump to bb11
bb11:
  ADD s8, s11, zero
  ADD t0, s8, zero
  # implict jump to bb12
bb12:
  ADD s8, t0, zero
  SLT t1, s8, s7
  BNE t1, zero, bb20
  # implict jump to bb13
bb13:
  ADD t2, zero, zero
  # implict jump to bb14
bb14:
  ADD a3, t2, zero
  BNE a3, zero, bb19
  # implict jump to bb15
bb15:
  BNE t1, zero, bb18
  # implict jump to bb16
bb16:
  ADD t0, s7, zero
  # implict jump to bb17
bb17:
  ADD a3, t0, zero
  ADD s4, a3, zero
  ADD s5, s8, zero
  JAL zero, bb3
bb18:
  SLLIW t0, s7, 2
  ADD a3, s0, t0
  SLLIW t0, s8, 2
  ADD a4, s0, t0
  LW t0, 0(a4)
  SW t0, 0(a3)
  ADDI t0, zero, 1
  SUBW a3, s7, t0
  ADD t0, a3, zero
  JAL zero, bb17
bb19:
  ADDIW a3, s8, 1
  ADD t0, a3, zero
  JAL zero, bb12
bb20:
  SLLIW t2, s8, 2
  ADD a3, s0, t2
  LW t2, 0(a3)
  SLT a3, t2, s3
  ADD t2, a3, zero
  JAL zero, bb14
bb21:
  SLLIW s8, s6, 2
  ADD s11, s0, s8
  SLLIW s8, s7, 2
  ADD t0, s0, s8
  LW s8, 0(t0)
  SW s8, 0(s11)
  ADDIW s8, s6, 1
  ADD s11, s8, zero
  JAL zero, bb11
bb22:
  ADDI s11, zero, 1
  SUBW t0, s7, s11
  ADD s8, t0, zero
  JAL zero, bb6
bb23:
  SLLIW s10, s7, 2
  ADD s11, s0, s10
  LW s10, 0(s11)
  ADDI s11, zero, 1
  SUBW t0, s3, s11
  SLT s11, t0, s10
  ADD s10, s11, zero
  JAL zero, bb8
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
  # implict jump to bb25
bb25:
  ADD s0, s1, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s0, s3
  BNE s2, zero, bb27
  # implict jump to bb26
bb26:
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s3, 48(sp)
  LD s2, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb27:
  SLLIW s2, s0, 2
  ADDI t5, sp, 0
  ADD s3, t5, s2
  LW s2, 0(s3)
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s2, s0, 1
  ADD s1, s2, zero
  JAL zero, bb25
