.global QuickSort
.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
QuickSort:
  ADDI sp, sp, -112
  SD ra, 8(sp)
  SD s0, 16(sp)
  SD s4, 24(sp)
  SD s9, 32(sp)
  SD s10, 40(sp)
  SD s11, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s5, 80(sp)
  SD s6, 88(sp)
  SD s7, 96(sp)
  SD s8, 104(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  BLT s1, s2, bb2
  # implict jump to bb1
bb1:
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s4, 24(sp)
  LD s9, 32(sp)
  LD s10, 40(sp)
  LD s11, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s5, 80(sp)
  LD s6, 88(sp)
  LD s7, 96(sp)
  LD s8, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb2:
  SLLIW s3, s1, 2
  ADD s3, s0, s3
  LW s3, 0(s3)
  BLT s1, s2, bb5
  # implict jump to bb3
bb3:
  ADD s4, s1, zero
  # implict jump to bb4
bb4:
  SLLIW t1, s4, 2
  ADD t1, s0, t1
  SW s3, 0(t1)
  ADDI t1, zero, 1
  SUBW t1, s4, t1
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, t1, zero
  CALL QuickSort
  ADDIW s4, s4, 1
  ADD a0, s0, zero
  ADD a1, s4, zero
  ADD a2, s2, zero
  CALL QuickSort
  JAL zero, bb1
bb5:
  ADD s5, s1, zero
  ADD s6, s2, zero
  # implict jump to bb6
bb6:
  ADD s7, s6, zero
  ADD s8, s5, zero
  # implict jump to bb7
bb7:
  ADD s9, s7, zero
  BLT s8, s9, bb26
  # implict jump to bb8
bb8:
  ADD s10, zero, zero
  # implict jump to bb9
bb9:
  BNE s10, zero, bb25
  # implict jump to bb10
bb10:
  BLT s8, s9, bb24
  # implict jump to bb11
bb11:
  ADD s10, s8, zero
  # implict jump to bb12
bb12:
  # implict jump to bb13
bb13:
  ADD s11, s10, zero
  BLT s11, s9, bb23
  # implict jump to bb14
bb14:
  ADD t0, zero, zero
  # implict jump to bb15
bb15:
  BNE t0, zero, bb22
  # implict jump to bb16
bb16:
  BLT s11, s9, bb21
  # implict jump to bb17
bb17:
  ADD t0, s9, zero
  # implict jump to bb18
bb18:
  ADD t4, t0, zero
  SW t4, 0(sp)
  LW t4, 0(sp)
  BLT s11, t4, bb20
  # implict jump to bb19
bb19:
  ADD s4, s11, zero
  JAL zero, bb4
bb20:
  ADD s5, s11, zero
  LW t4, 0(sp)
  ADD s6, t4, zero
  JAL zero, bb6
bb21:
  SLLIW t1, s9, 2
  ADD t1, s0, t1
  SLLIW t2, s11, 2
  ADD t2, s0, t2
  LW t2, 0(t2)
  SW t2, 0(t1)
  ADDI t1, zero, 1
  SUBW t1, s9, t1
  ADD t0, t1, zero
  JAL zero, bb18
bb22:
  ADDIW s4, s11, 1
  ADD s10, s4, zero
  JAL zero, bb13
bb23:
  SLLIW t1, s11, 2
  ADD t1, s0, t1
  LW t1, 0(t1)
  SLT t1, t1, s3
  ADD t0, t1, zero
  JAL zero, bb15
bb24:
  SLLIW s11, s8, 2
  ADD s11, s0, s11
  SLLIW t0, s9, 2
  ADD t0, s0, t0
  LW t0, 0(t0)
  SW t0, 0(s11)
  ADDIW s11, s8, 1
  ADD s10, s11, zero
  JAL zero, bb12
bb25:
  ADDI s4, zero, 1
  SUBW s4, s9, s4
  ADD s7, s4, zero
  JAL zero, bb7
bb26:
  SLLIW s11, s9, 2
  ADD s11, s0, s11
  LW s11, 0(s11)
  ADDI t0, zero, 1
  SUBW t0, s3, t0
  SLT s11, t0, s11
  ADD s10, s11, zero
  JAL zero, bb9
main:
  ADDI sp, sp, -80
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  LA s0, n
  ADDI s1, zero, 10
  SW s1, 0(s0)
  ADDI s0, zero, 4
  SW s0, 0(sp)
  ADDI s0, zero, 3
  SW s0, 4(sp)
  ADDI s0, zero, 9
  SW s0, 8(sp)
  ADDI s0, zero, 2
  SW s0, 12(sp)
  SW zero, 16(sp)
  ADDI s0, zero, 1
  SW s0, 20(sp)
  ADDI s0, zero, 6
  SW s0, 24(sp)
  ADDI s0, zero, 5
  SW s0, 28(sp)
  ADDI s0, zero, 7
  SW s0, 32(sp)
  ADDI s0, zero, 8
  SW s0, 36(sp)
  ADDI a0, sp, 0
  ADD a0, a0, zero
  ADD a1, zero, zero
  ADDI a2, zero, 9
  CALL QuickSort
  ADD s0, a0, zero
  LA s1, n
  LW s1, 0(s1)
  BLT s0, s1, bb29
  # implict jump to bb28
bb28:
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb29:
  # implict jump to bb30
bb30:
  ADD s1, s0, zero
  SLLIW s2, s1, 2
  ADDI a0, sp, 0
  ADD s2, a0, s2
  LW s2, 0(s2)
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s1, s1, 1
  LA s2, n
  LW s2, 0(s2)
  BLT s1, s2, bb31
  JAL zero, bb28
bb31:
  ADD s0, s1, zero
  JAL zero, bb30
