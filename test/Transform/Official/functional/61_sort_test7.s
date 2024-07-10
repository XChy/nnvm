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
  SD s10, 0(sp)
  SD s11, 8(sp)
  SD s9, 16(sp)
  SD s0, 24(sp)
  SD s5, 32(sp)
  SD s7, 40(sp)
  SD s1, 48(sp)
  SD s6, 56(sp)
  SD s8, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD ra, 88(sp)
  SD s4, 96(sp)
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
  ADD s10, zero, zero
  # implict jump to bb5
bb5:
  ADD s9, s10, zero
  BNE s9, zero, bb16
  # implict jump to bb6
bb6:
  ADD s2, s8, zero
  ADD s3, s6, zero
  # implict jump to bb7
bb7:
  ADD s5, s3, zero
  ADD s9, s2, zero
  SLT s11, s5, s4
  BNE s11, zero, bb15
  # implict jump to bb8
bb8:
  ADD s2, s9, zero
  ADD s3, s7, zero
  # implict jump to bb9
bb9:
  ADD s5, s3, zero
  ADD s9, s2, zero
  SLT s11, s5, s1
  BNE s11, zero, bb14
  # implict jump to bb10
bb10:
  ADD s2, s0, zero
  # implict jump to bb11
bb11:
  ADD s3, s2, zero
  SLT s5, s3, s1
  BNE s5, zero, bb13
  # implict jump to bb12
bb12:
  LD s10, 0(sp)
  LD s11, 8(sp)
  LD s9, 16(sp)
  LD s0, 24(sp)
  LD s5, 32(sp)
  LD s7, 40(sp)
  LD s1, 48(sp)
  LD s6, 56(sp)
  LD s8, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD ra, 88(sp)
  LD s4, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb13:
  SLLIW s5, s3, 2
  LA s9, buf
  ADD s11, s9, s5
  LA s9, buf
  ADDI t0, s9, 400
  ADD s9, t0, s5
  LW s5, 0(s9)
  SW s5, 0(s11)
  ADDIW s5, s3, 1
  ADD s2, s5, zero
  JAL zero, bb11
bb14:
  LA s11, buf
  ADDI t0, s11, 400
  SLLIW s11, s9, 2
  ADD t1, t0, s11
  SLLIW s11, s5, 2
  LA t0, buf
  ADD t2, t0, s11
  LW s11, 0(t2)
  SW s11, 0(t1)
  ADDIW s11, s5, 1
  ADDIW s5, s9, 1
  ADD s2, s5, zero
  ADD s3, s11, zero
  JAL zero, bb9
bb15:
  LA s11, buf
  ADDI t0, s11, 400
  SLLIW s11, s9, 2
  ADD t1, t0, s11
  SLLIW s11, s5, 2
  LA t0, buf
  ADD t2, t0, s11
  LW s11, 0(t2)
  SW s11, 0(t1)
  ADDIW s11, s5, 1
  ADDIW s5, s9, 1
  ADD s2, s5, zero
  ADD s3, s11, zero
  JAL zero, bb7
bb16:
  SLLIW s9, s6, 2
  LA s11, buf
  ADD t0, s11, s9
  LW s9, 0(t0)
  SLLIW s11, s7, 2
  LA t1, buf
  ADD t2, t1, s11
  LW s11, 0(t2)
  SLT t1, s9, s11
  BNE t1, zero, bb19
  # implict jump to bb17
bb17:
  LA s2, buf
  ADDI s3, s2, 400
  SLLIW s2, s8, 2
  ADD s5, s3, s2
  LW s2, 0(t2)
  SW s2, 0(s5)
  ADDIW s2, s7, 1
  ADD s11, s2, zero
  ADD t0, s6, zero
  # implict jump to bb18
bb18:
  ADD s9, t0, zero
  ADD t1, s11, zero
  ADDIW a0, s8, 1
  ADD s2, a0, zero
  ADD s3, t1, zero
  ADD s5, s9, zero
  JAL zero, bb3
bb19:
  LA s9, buf
  ADDI s11, s9, 400
  SLLIW s9, s8, 2
  ADD t1, s11, s9
  LW s9, 0(t0)
  SW s9, 0(t1)
  ADDIW s9, s6, 1
  ADD s11, s7, zero
  ADD t0, s9, zero
  JAL zero, bb18
bb20:
  SLT s9, s7, s1
  ADD s10, s9, zero
  JAL zero, bb5
bb21:
  LD s10, 0(sp)
  LD s11, 8(sp)
  LD s9, 16(sp)
  LD s0, 24(sp)
  LD s5, 32(sp)
  LD s7, 40(sp)
  LD s1, 48(sp)
  LD s6, 56(sp)
  LD s8, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD ra, 88(sp)
  LD s4, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
