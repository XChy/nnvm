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
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADDIW s2, s0, 1
  SLT s2, s2, s1
  XORI s2, s2, 1
  BNE s2, zero, bb26
  # implict jump to bb2
bb2:
  ADDW s2, s0, s1
  SRAIW s3, s2, 31
  SRLIW s3, s3, 31
  ADD s2, s2, s3
  SRAIW s2, s2, 1
  ADD a0, s0, zero
  ADD a1, s2, zero
  CALL merge_sort
  ADD a0, s2, zero
  ADD a1, s1, zero
  CALL merge_sort
  ADD s3, s0, zero
  ADD s4, s2, zero
  ADD s5, s0, zero
  # implict jump to bb3
bb3:
  ADD s6, s5, zero
  ADD s7, s4, zero
  ADD s8, s3, zero
  BLT s6, s2, bb25
  # implict jump to bb4
bb4:
  ADD s9, zero, zero
  # implict jump to bb5
bb5:
  BNE s9, zero, bb21
  # implict jump to bb6
bb6:
  BLT s6, s2, bb17
  # implict jump to bb7
bb7:
  ADD s9, s8, zero
  # implict jump to bb8
bb8:
  BLT s7, s1, bb14
  # implict jump to bb9
bb9:
  BLT s0, s1, bb11
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
  LA a4, buf
  ADDI a4, a4, 400
  ADD a5, s0, zero
  # implict jump to bb12
bb12:
  ADD a6, a5, zero
  SLLIW a7, a6, 2
  LA t6, buf
  ADD t6, t6, a7
  ADD a7, a4, a7
  LW a7, 0(a7)
  SW a7, 0(t6)
  ADDIW a6, a6, 1
  BLT a6, s1, bb13
  JAL zero, bb10
bb13:
  ADD a5, a6, zero
  JAL zero, bb12
bb14:
  LA a0, buf
  ADDI a0, a0, 400
  ADD a1, s7, zero
  # implict jump to bb15
bb15:
  ADD a2, s9, zero
  ADD a3, a1, zero
  SLLIW a4, a2, 2
  ADD a4, a0, a4
  SLLIW a5, a3, 2
  LA a6, buf
  ADD a5, a6, a5
  LW a5, 0(a5)
  SW a5, 0(a4)
  ADDIW a3, a3, 1
  ADDIW a2, a2, 1
  BLT a3, s1, bb16
  JAL zero, bb9
bb16:
  ADD a1, a3, zero
  ADD s9, a2, zero
  JAL zero, bb15
bb17:
  LA s10, buf
  ADDI s10, s10, 400
  ADD s11, s6, zero
  ADD t0, s8, zero
  # implict jump to bb18
bb18:
  ADD t1, t0, zero
  ADD t2, s11, zero
  SLLIW a0, t1, 2
  ADD a0, s10, a0
  SLLIW a1, t2, 2
  LA a2, buf
  ADD a1, a2, a1
  LW a1, 0(a1)
  SW a1, 0(a0)
  ADDIW t2, t2, 1
  ADDIW t1, t1, 1
  BLT t2, s2, bb20
  # implict jump to bb19
bb19:
  ADD s9, t1, zero
  JAL zero, bb8
bb20:
  ADD s11, t2, zero
  ADD t0, t1, zero
  JAL zero, bb18
bb21:
  SLLIW s9, s6, 2
  LA s10, buf
  ADD s9, s10, s9
  LW s10, 0(s9)
  SLLIW s11, s7, 2
  LA t0, buf
  ADD s11, t0, s11
  LW t0, 0(s11)
  BLT s10, t0, bb24
  # implict jump to bb22
bb22:
  LA s10, buf
  ADDI s10, s10, 400
  SLLIW t0, s8, 2
  ADD s10, s10, t0
  LW s11, 0(s11)
  SW s11, 0(s10)
  ADDIW s10, s7, 1
  ADD s11, s6, zero
  # implict jump to bb23
bb23:
  ADDIW s6, s8, 1
  ADD s3, s6, zero
  ADD s4, s10, zero
  ADD s5, s11, zero
  JAL zero, bb3
bb24:
  LA t0, buf
  ADDI t0, t0, 400
  SLLIW t1, s8, 2
  ADD t0, t0, t1
  LW s9, 0(s9)
  SW s9, 0(t0)
  ADDIW s6, s6, 1
  ADD s10, s7, zero
  ADD s11, s6, zero
  JAL zero, bb23
bb25:
  SLT s10, s7, s1
  ADD s9, s10, zero
  JAL zero, bb5
bb26:
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
