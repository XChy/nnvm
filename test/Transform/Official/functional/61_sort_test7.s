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
  ADD s5, a0, zero
  ADD s6, a1, zero
  ADDIW s7, s5, 1
  SLT s7, s7, s6
  XORI s7, s7, 1
  BNE s7, zero, bb32
  # implict jump to bb2
bb2:
  ADDW s7, s5, s6
  ADDI s8, zero, 2
  DIVW s7, s7, s8
  ADD a0, s5, zero
  ADD a1, s7, zero
  CALL merge_sort
  ADD a0, s7, zero
  ADD a1, s6, zero
  CALL merge_sort
  ADD s8, s5, zero
  ADD s9, s7, zero
  ADD s10, s5, zero
  # implict jump to bb3
bb3:
  ADD s11, s10, zero
  ADD t0, s9, zero
  ADD t1, s8, zero
  BLT s11, s7, bb31
  # implict jump to bb4
bb4:
  ADD t2, zero, zero
  # implict jump to bb5
bb5:
  BNE t2, zero, bb27
  # implict jump to bb6
bb6:
  BLT s11, s7, bb21
  # implict jump to bb7
bb7:
  ADD t2, t1, zero
  # implict jump to bb8
bb8:
  BLT t0, s6, bb16
  # implict jump to bb9
bb9:
  BLT s5, s6, bb11
  # implict jump to bb10
bb10:
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
bb11:
  # implict jump to bb12
bb12:
  ADD a3, s5, zero
  # implict jump to bb13
bb13:
  ADD a4, a3, zero
  SLLIW a5, a4, 2
  LA a6, buf
  ADD a6, a6, a5
  LA a7, buf
  ADDI a7, a7, 400
  ADD a5, a7, a5
  LW a5, 0(a5)
  SW a5, 0(a6)
  ADDIW s0, a4, 1
  # implict jump to bb14
bb14:
  BLT s0, s6, bb15
  JAL zero, bb10
bb15:
  ADD a3, s0, zero
  JAL zero, bb13
bb16:
  # implict jump to bb17
bb17:
  ADD a2, t0, zero
  # implict jump to bb18
bb18:
  ADD a3, t2, zero
  ADD a4, a2, zero
  LA a5, buf
  ADDI a5, a5, 400
  SLLIW a6, a3, 2
  ADD a5, a5, a6
  SLLIW a6, a4, 2
  LA a7, buf
  ADD a6, a7, a6
  LW a6, 0(a6)
  SW a6, 0(a5)
  ADDIW s1, a4, 1
  ADDIW s3, a3, 1
  # implict jump to bb19
bb19:
  BLT s1, s6, bb20
  JAL zero, bb9
bb20:
  ADD a2, s1, zero
  ADD t2, s3, zero
  JAL zero, bb18
bb21:
  # implict jump to bb22
bb22:
  ADD a0, s11, zero
  ADD a1, t1, zero
  # implict jump to bb23
bb23:
  ADD a2, a1, zero
  ADD a3, a0, zero
  LA a4, buf
  ADDI a4, a4, 400
  SLLIW a5, a2, 2
  ADD a4, a4, a5
  SLLIW a5, a3, 2
  LA a6, buf
  ADD a5, a6, a5
  LW a5, 0(a5)
  SW a5, 0(a4)
  ADDIW s2, a3, 1
  ADDIW s4, a2, 1
  # implict jump to bb24
bb24:
  BLT s2, s7, bb26
  # implict jump to bb25
bb25:
  ADD t2, s4, zero
  JAL zero, bb8
bb26:
  ADD a0, s2, zero
  ADD a1, s4, zero
  JAL zero, bb23
bb27:
  SLLIW s0, s11, 2
  LA s1, buf
  ADD s0, s1, s0
  LW s1, 0(s0)
  SLLIW s2, t0, 2
  LA s3, buf
  ADD s2, s3, s2
  LW s3, 0(s2)
  BLT s1, s3, bb30
  # implict jump to bb28
bb28:
  LA s1, buf
  ADDI s1, s1, 400
  SLLIW s3, t1, 2
  ADD s1, s1, s3
  LW s2, 0(s2)
  SW s2, 0(s1)
  ADDIW s1, t0, 1
  ADD s2, s11, zero
  # implict jump to bb29
bb29:
  ADDIW s0, t1, 1
  ADD s8, s0, zero
  ADD s9, s1, zero
  ADD s10, s2, zero
  JAL zero, bb3
bb30:
  LA s3, buf
  ADDI s3, s3, 400
  SLLIW s4, t1, 2
  ADD s3, s3, s4
  LW s0, 0(s0)
  SW s0, 0(s3)
  ADDIW s0, s11, 1
  ADD s1, t0, zero
  ADD s2, s0, zero
  JAL zero, bb29
bb31:
  SLT a0, t0, s6
  ADD t2, a0, zero
  JAL zero, bb5
bb32:
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
