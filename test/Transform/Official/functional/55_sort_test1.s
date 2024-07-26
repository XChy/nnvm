.global main
.global bubblesort
.section .bss

.section .data
n:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -144
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s2, 16(sp)
  SD s3, 24(sp)
  SD s7, 32(sp)
  SD s8, 40(sp)
  SD s1, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s10, 80(sp)
  SD s11, 88(sp)
  SD s9, 96(sp)
  LA s5, n
  ADDI s6, zero, 10
  SW s6, 0(s5)
  ADDI s5, zero, 4
  SW s5, 104(sp)
  ADDI s5, sp, 108
  ADDI s6, zero, 3
  SW s6, 0(s5)
  ADDI s5, sp, 112
  ADDI s6, zero, 9
  SW s6, 0(s5)
  ADDI s5, sp, 116
  ADDI s6, zero, 2
  SW s6, 0(s5)
  ADDI s5, sp, 120
  ADDI s6, zero, 0
  SW s6, 0(s5)
  ADDI s5, sp, 124
  ADDI s6, zero, 1
  SW s6, 0(s5)
  ADDI s5, sp, 128
  ADDI s6, zero, 6
  SW s6, 0(s5)
  ADDI s5, sp, 132
  ADDI s6, zero, 5
  SW s6, 0(s5)
  ADDI s5, sp, 136
  ADDI s6, zero, 7
  SW s6, 0(s5)
  ADDI s5, sp, 140
  ADDI s6, zero, 8
  SW s6, 0(s5)
  ADDI s5, zero, 10
  ADDI s6, zero, 1
  SUBW s5, s5, s6
  ADDI s6, zero, 0
  BLT s6, s5, bb7
  # implict jump to bb1
bb1:
  LA s9, n
  LW s9, 0(s9)
  BLT zero, s9, bb3
  # implict jump to bb2
bb2:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s2, 16(sp)
  LD s3, 24(sp)
  LD s7, 32(sp)
  LD s8, 40(sp)
  LD s1, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s10, 80(sp)
  LD s11, 88(sp)
  LD s9, 96(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb3:
  ADD s9, zero, zero
  # implict jump to bb4
bb4:
  ADD s11, s9, zero
  SLLIW t0, s11, 2
  ADDI a0, sp, 104
  ADD t0, a0, t0
  LW t0, 0(t0)
  ADD a0, t0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s3, s11, 1
  # implict jump to bb5
bb5:
  LA s11, n
  LW s11, 0(s11)
  BLT s3, s11, bb6
  JAL zero, bb2
bb6:
  ADD s9, s3, zero
  JAL zero, bb4
bb7:
  ADD s5, zero, zero
  ADD s6, zero, zero
  # implict jump to bb8
bb8:
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADDI s9, zero, 10
  SUBW s9, s9, s8
  ADDI s10, zero, 1
  SUBW s9, s9, s10
  BLT zero, s9, bb13
  # implict jump to bb9
bb9:
  ADD s9, s7, zero
  # implict jump to bb10
bb10:
  ADD s4, s9, zero
  ADDIW s1, s8, 1
  # implict jump to bb11
bb11:
  ADDI s9, zero, 10
  ADDI s11, zero, 1
  SUBW s9, s9, s11
  BLT s1, s9, bb12
  JAL zero, bb1
bb12:
  ADD s5, s1, zero
  ADD s6, s4, zero
  JAL zero, bb8
bb13:
  ADD s10, zero, zero
  # implict jump to bb14
bb14:
  ADD s11, s7, zero
  ADD t0, s10, zero
  SLLIW t1, t0, 2
  ADDI t2, sp, 104
  ADD t1, t2, t1
  LW t2, 0(t1)
  ADDIW s0, t0, 1
  SLLIW t0, s0, 2
  ADDI a0, sp, 104
  ADD t0, a0, t0
  LW a0, 0(t0)
  BLT a0, t2, bb20
  # implict jump to bb15
bb15:
  # implict jump to bb16
bb16:
  ADD s2, s11, zero
  # implict jump to bb17
bb17:
  ADDI s11, zero, 10
  SUBW s11, s11, s8
  ADDI t0, zero, 1
  SUBW s11, s11, t0
  BLT s0, s11, bb19
  # implict jump to bb18
bb18:
  ADD s9, s2, zero
  JAL zero, bb10
bb19:
  ADD s10, s0, zero
  ADD s7, s2, zero
  JAL zero, bb14
bb20:
  LW t2, 0(t0)
  LW a0, 0(t1)
  SW a0, 0(t0)
  SW t2, 0(t1)
  ADD s11, t2, zero
  JAL zero, bb16
bubblesort:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  ADD s4, a0, zero
  LA s5, n
  LW s5, 0(s5)
  ADDI s6, zero, 1
  SUBW s5, s5, s6
  BLT zero, s5, bb23
  # implict jump to bb22
bb22:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb23:
  ADD s5, zero, zero
  ADD s6, zero, zero
  # implict jump to bb24
bb24:
  ADD s7, s6, zero
  ADD s8, s5, zero
  LA s9, n
  LW s9, 0(s9)
  SUBW s9, s9, s8
  ADDI s10, zero, 1
  SUBW s9, s9, s10
  BLT zero, s9, bb29
  # implict jump to bb25
bb25:
  ADD s9, s7, zero
  # implict jump to bb26
bb26:
  ADD s0, s9, zero
  ADDIW s2, s8, 1
  # implict jump to bb27
bb27:
  LA s9, n
  LW s9, 0(s9)
  ADDI s11, zero, 1
  SUBW s9, s9, s11
  BLT s2, s9, bb28
  JAL zero, bb22
bb28:
  ADD s5, s2, zero
  ADD s6, s0, zero
  JAL zero, bb24
bb29:
  ADD s10, zero, zero
  # implict jump to bb30
bb30:
  ADD s11, s7, zero
  ADD t0, s10, zero
  SLLIW t1, t0, 2
  ADD t1, s4, t1
  LW t2, 0(t1)
  ADDIW s1, t0, 1
  SLLIW t0, s1, 2
  ADD t0, s4, t0
  LW a1, 0(t0)
  BLT a1, t2, bb36
  # implict jump to bb31
bb31:
  # implict jump to bb32
bb32:
  ADD s3, s11, zero
  # implict jump to bb33
bb33:
  LA s11, n
  LW s11, 0(s11)
  SUBW s11, s11, s8
  ADDI t0, zero, 1
  SUBW s11, s11, t0
  BLT s1, s11, bb35
  # implict jump to bb34
bb34:
  ADD s9, s3, zero
  JAL zero, bb26
bb35:
  ADD s10, s1, zero
  ADD s7, s3, zero
  JAL zero, bb30
bb36:
  LW t2, 0(t0)
  LW a1, 0(t1)
  SW a1, 0(t0)
  SW t2, 0(t1)
  ADD s11, t2, zero
  JAL zero, bb32
