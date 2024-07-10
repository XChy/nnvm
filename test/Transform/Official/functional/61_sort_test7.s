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
  SLT s3, s2, s1
  XORI s2, s3, 1
  BNE s2, zero, bb21
  # implict jump to bb2
bb2:
  ADDW s2, s0, s1
  ADDI s3, zero, 2
  DIVW s4, s2, s3
  ADD a0, s0, zero
  ADD a1, s4, zero
  CALL merge_sort
  ADD a0, s4, zero
  ADD a1, s1, zero
  CALL merge_sort
  ADD s2, s0, zero
  ADD s3, s4, zero
  ADD s5, s0, zero
  # implict jump to bb3
bb3:
  ADD s6, s5, zero
  ADD s7, s3, zero
  ADD s8, s2, zero
  SLT s9, s6, s4
  BNE s9, zero, bb20
  # implict jump to bb4
bb4:
  ADD s9, zero, zero
  # implict jump to bb5
bb5:
  ADD s10, s9, zero
  BNE s10, zero, bb16
  # implict jump to bb6
bb6:
  ADD s9, s8, zero
  ADD s10, s6, zero
  # implict jump to bb7
bb7:
  ADD s11, s10, zero
  ADD t0, s9, zero
  SLT t1, s11, s4
  BNE t1, zero, bb15
  # implict jump to bb8
bb8:
  ADD t1, t0, zero
  ADD t2, s7, zero
  # implict jump to bb9
bb9:
  ADD a0, t2, zero
  ADD a1, t1, zero
  SLT a2, a0, s1
  BNE a2, zero, bb14
  # implict jump to bb10
bb10:
  ADD a2, s0, zero
  # implict jump to bb11
bb11:
  ADD a3, a2, zero
  SLT a4, a3, s1
  BNE a4, zero, bb13
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
  ADD a6, a5, a4
  LA a5, buf
  ADDI a7, a5, 400
  ADD a5, a7, a4
  LW a4, 0(a5)
  SW a4, 0(a6)
  ADDIW a4, a3, 1
  ADD a2, a4, zero
  JAL zero, bb11
bb14:
  LA a2, buf
  ADDI a3, a2, 400
  SLLIW a2, a1, 2
  ADD a4, a3, a2
  SLLIW a2, a0, 2
  LA a3, buf
  ADD a5, a3, a2
  LW a2, 0(a5)
  SW a2, 0(a4)
  ADDIW a2, a0, 1
  ADDIW a0, a1, 1
  ADD t1, a0, zero
  ADD t2, a2, zero
  JAL zero, bb9
bb15:
  LA t1, buf
  ADDI t2, t1, 400
  SLLIW t1, t0, 2
  ADD a0, t2, t1
  SLLIW t1, s11, 2
  LA t2, buf
  ADD a1, t2, t1
  LW t1, 0(a1)
  SW t1, 0(a0)
  ADDIW t1, s11, 1
  ADDIW s11, t0, 1
  ADD s9, s11, zero
  ADD s10, t1, zero
  JAL zero, bb7
bb16:
  SLLIW s9, s6, 2
  LA s10, buf
  ADD s11, s10, s9
  LW s9, 0(s11)
  SLLIW s10, s7, 2
  LA t0, buf
  ADD t1, t0, s10
  LW s10, 0(t1)
  SLT t0, s9, s10
  BNE t0, zero, bb19
  # implict jump to bb17
bb17:
  LA s9, buf
  ADDI s10, s9, 400
  SLLIW s9, s8, 2
  ADD t0, s10, s9
  LW s9, 0(t1)
  SW s9, 0(t0)
  ADDIW s9, s7, 1
  ADD s10, s9, zero
  ADD s9, s6, zero
  # implict jump to bb18
bb18:
  ADD s6, s9, zero
  ADD s7, s10, zero
  ADDIW s9, s8, 1
  ADD s2, s9, zero
  ADD s3, s7, zero
  ADD s5, s6, zero
  JAL zero, bb3
bb19:
  LA t0, buf
  ADDI t1, t0, 400
  SLLIW t0, s8, 2
  ADD t2, t1, t0
  LW t0, 0(s11)
  SW t0, 0(t2)
  ADDIW s11, s6, 1
  ADD s10, s7, zero
  ADD s9, s11, zero
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
