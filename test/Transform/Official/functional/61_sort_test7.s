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
  SD s6, 8(sp)
  SD s9, 16(sp)
  SD ra, 24(sp)
  SD s0, 32(sp)
  SD s1, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s5, 72(sp)
  SD s7, 80(sp)
  SD s8, 88(sp)
  SD s10, 96(sp)
  SD s11, 104(sp)
  ADD t4, a0, zero
  SW t4, 4(sp)
  ADD t4, a1, zero
  SW t4, 0(sp)
  LW t4, 4(sp)
  ADDIW s2, t4, 1
  LW t4, 0(sp)
  SLT s2, s2, t4
  XORI s2, s2, 1
  BNE s2, zero, bb21
  # implict jump to bb2
bb2:
  LW t4, 4(sp)
  LW t3, 0(sp)
  ADDW s2, t4, t3
  ADDI s3, zero, 2
  DIVW s2, s2, s3
  LW t4, 4(sp)
  ADD a0, t4, zero
  ADD a1, s2, zero
  CALL merge_sort
  ADD a0, s2, zero
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL merge_sort
  LA s3, buf
  ADDI s3, s3, 400
  LA s4, buf
  ADDI s4, s4, 400
  LW t4, 4(sp)
  ADD s5, t4, zero
  ADD s6, s2, zero
  LW t4, 4(sp)
  ADD s7, t4, zero
  # implict jump to bb3
bb3:
  ADD s8, s7, zero
  ADD s9, s6, zero
  ADD s10, s5, zero
  BLT s8, s2, bb20
  # implict jump to bb4
bb4:
  ADD s11, zero, zero
  # implict jump to bb5
bb5:
  BNE s11, zero, bb16
  # implict jump to bb6
bb6:
  LA s11, buf
  ADDI s11, s11, 400
  ADD t0, s10, zero
  ADD t1, s8, zero
  # implict jump to bb7
bb7:
  ADD t2, t1, zero
  ADD a0, t0, zero
  BLT t2, s2, bb15
  # implict jump to bb8
bb8:
  LA a1, buf
  ADDI a1, a1, 400
  ADD a2, a0, zero
  ADD a3, s9, zero
  # implict jump to bb9
bb9:
  ADD a4, a3, zero
  ADD a5, a2, zero
  LW t4, 0(sp)
  BLT a4, t4, bb14
  # implict jump to bb10
bb10:
  LA a6, buf
  ADDI a6, a6, 400
  LW t4, 4(sp)
  ADD a7, t4, zero
  # implict jump to bb11
bb11:
  ADD t6, a7, zero
  LW t4, 0(sp)
  BLT t6, t4, bb13
  # implict jump to bb12
bb12:
  LD s6, 8(sp)
  LD s9, 16(sp)
  LD ra, 24(sp)
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s5, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb13:
  SLLIW s1, t6, 2
  LA s0, buf
  ADD s0, s0, s1
  ADD s1, a6, s1
  LW s1, 0(s1)
  SW s1, 0(s0)
  ADDIW s0, t6, 1
  ADD a7, s0, zero
  JAL zero, bb11
bb14:
  SLLIW s0, a5, 2
  ADD s0, a1, s0
  SLLIW s1, a4, 2
  LA a6, buf
  ADD s1, a6, s1
  LW s1, 0(s1)
  SW s1, 0(s0)
  ADDIW s0, a4, 1
  ADDIW s1, a5, 1
  ADD a2, s1, zero
  ADD a3, s0, zero
  JAL zero, bb9
bb15:
  SLLIW s0, a0, 2
  ADD s0, s11, s0
  SLLIW s1, t2, 2
  LA a1, buf
  ADD s1, a1, s1
  LW s1, 0(s1)
  SW s1, 0(s0)
  ADDIW s0, t2, 1
  ADDIW s1, a0, 1
  ADD t0, s1, zero
  ADD t1, s0, zero
  JAL zero, bb7
bb16:
  SLLIW s0, s8, 2
  LA s1, buf
  ADD s0, s1, s0
  LW s1, 0(s0)
  SLLIW s11, s9, 2
  LA t0, buf
  ADD s11, t0, s11
  LW t0, 0(s11)
  BLT s1, t0, bb19
  # implict jump to bb17
bb17:
  SLLIW s1, s10, 2
  ADD s1, s4, s1
  LW s11, 0(s11)
  SW s11, 0(s1)
  ADDIW s1, s9, 1
  ADD s11, s8, zero
  # implict jump to bb18
bb18:
  ADDIW s0, s10, 1
  ADD s5, s0, zero
  ADD s6, s1, zero
  ADD s7, s11, zero
  JAL zero, bb3
bb19:
  SLLIW t0, s10, 2
  ADD t0, s3, t0
  LW s0, 0(s0)
  SW s0, 0(t0)
  ADDIW s0, s8, 1
  ADD s1, s9, zero
  ADD s11, s0, zero
  JAL zero, bb18
bb20:
  LW t4, 0(sp)
  SLT t0, s9, t4
  ADD s11, t0, zero
  JAL zero, bb5
bb21:
  LD s6, 8(sp)
  LD s9, 16(sp)
  LD ra, 24(sp)
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s5, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
