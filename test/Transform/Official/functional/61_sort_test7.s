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
  BNE s2, zero, bb21
  # implict jump to bb2
bb2:
  ADDW s2, s0, s1
  ADDI s3, zero, 2
  DIVW s2, s2, s3
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
  BLT s6, s2, bb20
  # implict jump to bb4
bb4:
  ADD s9, zero, zero
  # implict jump to bb5
bb5:
  BNE s9, zero, bb16
  # implict jump to bb6
bb6:
  ADD s9, s8, zero
  ADD s10, s6, zero
  # implict jump to bb7
bb7:
  ADD s11, s10, zero
  ADD t0, s9, zero
  BLT s11, s2, bb15
  # implict jump to bb8
bb8:
  ADD t1, t0, zero
  ADD t2, s7, zero
  # implict jump to bb9
bb9:
  ADD a0, t2, zero
  ADD a1, t1, zero
  BLT a0, s1, bb14
  # implict jump to bb10
bb10:
  ADD a2, s0, zero
  # implict jump to bb11
bb11:
  ADD a3, a2, zero
  BLT a3, s1, bb13
  # implict jump to bb12
bb12:
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
bb13:
  SLLIW a4, a3, 2
  LA a5, buf
  ADD a5, a5, a4
  LA a6, buf
  ADDI a6, a6, 400
  ADD a4, a6, a4
  LW a4, 0(a4)
  SW a4, 0(a5)
  ADDIW a3, a3, 1
  ADD a2, a3, zero
  JAL zero, bb11
bb14:
  LA a2, buf
  ADDI a2, a2, 400
  SLLIW a3, a1, 2
  ADD a2, a2, a3
  SLLIW a3, a0, 2
  LA a4, buf
  ADD a3, a4, a3
  LW a3, 0(a3)
  SW a3, 0(a2)
  ADDIW a0, a0, 1
  ADDIW a1, a1, 1
  ADD t1, a1, zero
  ADD t2, a0, zero
  JAL zero, bb9
bb15:
  LA t1, buf
  ADDI t1, t1, 400
  SLLIW t2, t0, 2
  ADD t1, t1, t2
  SLLIW t2, s11, 2
  LA a0, buf
  ADD t2, a0, t2
  LW t2, 0(t2)
  SW t2, 0(t1)
  ADDIW s11, s11, 1
  ADDIW t0, t0, 1
  ADD s9, t0, zero
  ADD s10, s11, zero
  JAL zero, bb7
bb16:
  SLLIW s9, s6, 2
  LA s10, buf
  ADD s9, s10, s9
  LW s10, 0(s9)
  SLLIW s11, s7, 2
  LA t0, buf
  ADD s11, t0, s11
  LW t0, 0(s11)
  BLT s10, t0, bb19
  # implict jump to bb17
bb17:
  LA s10, buf
  ADDI s10, s10, 400
  SLLIW t0, s8, 2
  ADD s10, s10, t0
  LW s11, 0(s11)
  SW s11, 0(s10)
  ADDIW s10, s7, 1
  ADD s11, s6, zero
  # implict jump to bb18
bb18:
  ADDIW s6, s8, 1
  ADD s3, s6, zero
  ADD s4, s10, zero
  ADD s5, s11, zero
  JAL zero, bb3
bb19:
  LA t0, buf
  ADDI t0, t0, 400
  SLLIW t1, s8, 2
  ADD t0, t0, t1
  LW s9, 0(s9)
  SW s9, 0(t0)
  ADDIW s6, s6, 1
  ADD s10, s7, zero
  ADD s11, s6, zero
  JAL zero, bb18
bb20:
  SLT s10, s7, s1
  ADD s9, s10, zero
  JAL zero, bb5
bb21:
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
