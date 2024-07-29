.global main
.global merge_sort
.section .bss
buf:
.space 800
.section .data

.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  LA s0, buf
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  ADD a0, zero, zero
  ADD a1, s0, zero
  CALL merge_sort
  ADD a0, s0, zero
  LA s0, buf
  ADD a1, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
merge_sort:
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
  ADD t4, a0, zero
  SW t4, 4(sp)
  ADD t4, a1, zero
  SW t4, 0(sp)
  LW t4, 4(sp)
  ADDIW s10, t4, 1
  LW t4, 0(sp)
  SLT s10, s10, t4
  XORI s10, s10, 1
  BNE s10, zero, bb32
  # implict jump to bb2
bb2:
  LW t4, 4(sp)
  LW t3, 0(sp)
  ADDW s10, t4, t3
  ADDI s11, zero, 2
  DIVW s10, s10, s11
  LW t4, 4(sp)
  ADD a0, t4, zero
  ADD a1, s10, zero
  CALL merge_sort
  ADD a0, s10, zero
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL merge_sort
  LW t4, 4(sp)
  ADD s11, t4, zero
  ADD t0, s10, zero
  LW t4, 4(sp)
  ADD t1, t4, zero
  # implict jump to bb3
bb3:
  ADD t2, t1, zero
  ADD a0, t0, zero
  ADD a1, s11, zero
  BLT t2, s10, bb31
  # implict jump to bb4
bb4:
  ADD a2, zero, zero
  # implict jump to bb5
bb5:
  BNE a2, zero, bb27
  # implict jump to bb6
bb6:
  BLT t2, s10, bb21
  # implict jump to bb7
bb7:
  ADD a2, a1, zero
  # implict jump to bb8
bb8:
  LW t4, 0(sp)
  BLT a0, t4, bb16
  # implict jump to bb9
bb9:
  LW t4, 4(sp)
  LW t3, 0(sp)
  BLT t4, t3, bb11
  # implict jump to bb10
bb10:
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
bb11:
  # implict jump to bb12
bb12:
  LA s8, buf
  ADDI s0, s8, 400
  LW t4, 4(sp)
  ADD s8, t4, zero
  # implict jump to bb13
bb13:
  ADD a5, s8, zero
  SLLIW a6, a5, 2
  LA a7, buf
  ADD a7, a7, a6
  ADD a6, s0, a6
  LW a6, 0(a6)
  SW a6, 0(a7)
  ADDIW s4, a5, 1
  # implict jump to bb14
bb14:
  LW t4, 0(sp)
  BLT s4, t4, bb15
  JAL zero, bb10
bb15:
  ADD s8, s4, zero
  JAL zero, bb13
bb16:
  # implict jump to bb17
bb17:
  LA s9, buf
  ADDI s6, s9, 400
  ADD s9, a0, zero
  # implict jump to bb18
bb18:
  ADD a5, a2, zero
  ADD a6, s9, zero
  SLLIW a7, a5, 2
  ADD a7, s6, a7
  SLLIW t6, a6, 2
  LA s8, buf
  ADD s8, s8, t6
  LW s8, 0(s8)
  SW s8, 0(a7)
  ADDIW s1, a6, 1
  ADDIW s3, a5, 1
  # implict jump to bb19
bb19:
  LW t4, 0(sp)
  BLT s1, t4, bb20
  JAL zero, bb9
bb20:
  ADD s9, s1, zero
  ADD a2, s3, zero
  JAL zero, bb18
bb21:
  # implict jump to bb22
bb22:
  LA a3, buf
  ADDI s7, a3, 400
  ADD a3, t2, zero
  ADD a4, a1, zero
  # implict jump to bb23
bb23:
  ADD a5, a4, zero
  ADD a6, a3, zero
  SLLIW a7, a5, 2
  ADD a7, s7, a7
  SLLIW t6, a6, 2
  LA s9, buf
  ADD s9, s9, t6
  LW s9, 0(s9)
  SW s9, 0(a7)
  ADDIW s5, a6, 1
  ADDIW s2, a5, 1
  # implict jump to bb24
bb24:
  BLT s5, s10, bb26
  # implict jump to bb25
bb25:
  ADD a2, s2, zero
  JAL zero, bb8
bb26:
  ADD a3, s5, zero
  ADD a4, s2, zero
  JAL zero, bb23
bb27:
  SLLIW s0, t2, 2
  LA s1, buf
  ADD s0, s1, s0
  LW s1, 0(s0)
  SLLIW s2, a0, 2
  LA s3, buf
  ADD s2, s3, s2
  LW s3, 0(s2)
  BLT s1, s3, bb30
  # implict jump to bb28
bb28:
  LA s1, buf
  ADDI s1, s1, 400
  SLLIW s3, a1, 2
  ADD s1, s1, s3
  LW s2, 0(s2)
  SW s2, 0(s1)
  ADDIW s1, a0, 1
  ADD s2, t2, zero
  # implict jump to bb29
bb29:
  ADDIW s0, a1, 1
  ADD s11, s0, zero
  ADD t0, s1, zero
  ADD t1, s2, zero
  JAL zero, bb3
bb30:
  LA s3, buf
  ADDI s3, s3, 400
  SLLIW s4, a1, 2
  ADD s3, s3, s4
  LW s0, 0(s0)
  SW s0, 0(s3)
  ADDIW s0, t2, 1
  ADD s1, a0, zero
  ADD s2, s0, zero
  JAL zero, bb29
bb31:
  LW t4, 0(sp)
  SLT a3, a0, t4
  ADD a2, a3, zero
  JAL zero, bb5
bb32:
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
