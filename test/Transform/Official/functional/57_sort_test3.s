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
  SD s1, 24(sp)
  SD s2, 32(sp)
  SD s3, 40(sp)
  SD s4, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD s10, 96(sp)
  SD s11, 104(sp)
  ADD s2, a0, zero
  ADD s3, a1, zero
  ADD s4, a2, zero
  BLT s3, s4, bb2
  # implict jump to bb1
bb1:
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s3, 40(sp)
  LD s4, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb2:
  SLLIW s5, s3, 2
  ADD s5, s2, s5
  LW s5, 0(s5)
  BLT s3, s4, bb5
  # implict jump to bb3
bb3:
  ADD s6, s3, zero
  # implict jump to bb4
bb4:
  SLLIW t1, s6, 2
  ADD t1, s2, t1
  SW s5, 0(t1)
  ADDI t1, zero, 1
  SUBW t1, s6, t1
  ADD a0, s2, zero
  ADD a1, s3, zero
  ADD a2, t1, zero
  CALL QuickSort
  ADDIW s6, s6, 1
  ADD a0, s2, zero
  ADD a1, s6, zero
  ADD a2, s4, zero
  CALL QuickSort
  JAL zero, bb1
bb5:
  # implict jump to bb6
bb6:
  ADD s7, s3, zero
  ADD s8, s4, zero
  # implict jump to bb7
bb7:
  ADD s9, s8, zero
  ADD s10, s7, zero
  # implict jump to bb8
bb8:
  ADD s11, s9, zero
  BLT s10, s11, bb28
  # implict jump to bb9
bb9:
  ADD t0, zero, zero
  # implict jump to bb10
bb10:
  BNE t0, zero, bb27
  # implict jump to bb11
bb11:
  BLT s10, s11, bb26
  # implict jump to bb12
bb12:
  ADD t0, s10, zero
  # implict jump to bb13
bb13:
  ADD t4, t0, zero
  SW t4, 0(sp)
  # implict jump to bb14
bb14:
  LW t4, 0(sp)
  ADD s0, t4, zero
  BLT s0, s11, bb25
  # implict jump to bb15
bb15:
  ADD t1, zero, zero
  # implict jump to bb16
bb16:
  BNE t1, zero, bb24
  # implict jump to bb17
bb17:
  BLT s0, s11, bb23
  # implict jump to bb18
bb18:
  ADD t1, s11, zero
  # implict jump to bb19
bb19:
  ADD s1, t1, zero
  # implict jump to bb20
bb20:
  BLT s0, s1, bb22
  # implict jump to bb21
bb21:
  ADD s6, s0, zero
  JAL zero, bb4
bb22:
  ADD s7, s0, zero
  ADD s8, s1, zero
  JAL zero, bb7
bb23:
  SLLIW t2, s11, 2
  ADD t2, s2, t2
  SLLIW a3, s0, 2
  ADD a3, s2, a3
  LW a3, 0(a3)
  SW a3, 0(t2)
  ADDI t2, zero, 1
  SUBW t2, s11, t2
  ADD t1, t2, zero
  JAL zero, bb19
bb24:
  ADDIW s0, s0, 1
  ADD t4, s0, zero
  SW t4, 0(sp)
  JAL zero, bb14
bb25:
  SLLIW t2, s0, 2
  ADD t2, s2, t2
  LW t2, 0(t2)
  SLT t2, t2, s5
  ADD t1, t2, zero
  JAL zero, bb16
bb26:
  SLLIW t1, s10, 2
  ADD t1, s2, t1
  SLLIW t2, s11, 2
  ADD t2, s2, t2
  LW t2, 0(t2)
  SW t2, 0(t1)
  ADDIW t1, s10, 1
  ADD t0, t1, zero
  JAL zero, bb13
bb27:
  ADDI s0, zero, 1
  SUBW s0, s11, s0
  ADD s9, s0, zero
  JAL zero, bb8
bb28:
  SLLIW t1, s11, 2
  ADD t1, s2, t1
  LW t1, 0(t1)
  ADDI t2, zero, 1
  SUBW t2, s5, t2
  SLT t1, t2, t1
  ADD t0, t1, zero
  JAL zero, bb10
main:
  ADDI sp, sp, -80
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  LA s1, n
  ADDI s2, zero, 10
  SW s2, 0(s1)
  ADDI s1, zero, 4
  SW s1, 0(sp)
  ADDI s1, sp, 4
  ADDI s2, zero, 3
  SW s2, 0(s1)
  ADDI s1, sp, 8
  ADDI s2, zero, 9
  SW s2, 0(s1)
  ADDI s1, sp, 12
  ADDI s2, zero, 2
  SW s2, 0(s1)
  ADDI s1, sp, 16
  SW zero, 0(s1)
  ADDI s1, sp, 20
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDI s1, sp, 24
  ADDI s2, zero, 6
  SW s2, 0(s1)
  ADDI s1, sp, 28
  ADDI s2, zero, 5
  SW s2, 0(s1)
  ADDI s1, sp, 32
  ADDI s2, zero, 7
  SW s2, 0(s1)
  ADDI s1, sp, 36
  ADDI s2, zero, 8
  SW s2, 0(s1)
  ADDI a0, sp, 0
  ADD a0, a0, zero
  ADD a1, zero, zero
  ADDI a2, zero, 9
  CALL QuickSort
  ADD s1, a0, zero
  LA s2, n
  LW s2, 0(s2)
  BLT s1, s2, bb31
  # implict jump to bb30
bb30:
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb31:
  # implict jump to bb32
bb32:
  # implict jump to bb33
bb33:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  ADDI a0, sp, 0
  ADD s3, a0, s3
  LW s3, 0(s3)
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s0, s2, 1
  # implict jump to bb34
bb34:
  LA s2, n
  LW s2, 0(s2)
  BLT s0, s2, bb35
  JAL zero, bb30
bb35:
  ADD s1, s0, zero
  JAL zero, bb33
