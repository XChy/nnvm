.global select_sort
.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
select_sort:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s5, 32(sp)
  SD s7, 40(sp)
  SD s1, 48(sp)
  SD s6, 56(sp)
  SD s8, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD s9, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADD s2, zero, zero
  ADD s4, zero, zero
  # implict jump to bb1
bb1:
  ADD s5, s4, zero
  ADD s6, s2, zero
  SLT s7, s5, s3
  BNE s7, zero, bb3
  # implict jump to bb2
bb2:
  ADD a0, zero, zero
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s5, 32(sp)
  LD s7, 40(sp)
  LD s1, 48(sp)
  LD s6, 56(sp)
  LD s8, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s9, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb3:
  ADDIW s7, s5, 1
  ADD s8, s5, zero
  ADD s9, s7, zero
  # implict jump to bb4
bb4:
  ADD s10, s9, zero
  ADD s11, s8, zero
  SLT t0, s10, s1
  BNE t0, zero, bb9
  # implict jump to bb5
bb5:
  XOR t0, s11, s5
  SLTU t1, zero, t0
  BNE t1, zero, bb8
  # implict jump to bb6
bb6:
  ADD t0, s6, zero
  # implict jump to bb7
bb7:
  ADD t1, t0, zero
  ADD s2, t1, zero
  ADD s4, s7, zero
  JAL zero, bb1
bb8:
  SLLIW t1, s11, 2
  ADD t2, s0, t1
  LW t1, 0(t2)
  SLLIW a0, s5, 2
  ADD a1, s0, a0
  LW a0, 0(a1)
  SW a0, 0(t2)
  SW t1, 0(a1)
  ADD t0, t1, zero
  JAL zero, bb7
bb9:
  SLLIW s2, s11, 2
  ADD s4, s0, s2
  LW s2, 0(s4)
  SLLIW s4, s10, 2
  ADD t0, s0, s4
  LW s4, 0(t0)
  SLT t0, s4, s2
  BNE t0, zero, bb12
  # implict jump to bb10
bb10:
  ADD s2, s11, zero
  # implict jump to bb11
bb11:
  ADD s4, s2, zero
  ADDIW s2, s10, 1
  ADD s8, s4, zero
  ADD s9, s2, zero
  JAL zero, bb4
bb12:
  ADD s2, s10, zero
  JAL zero, bb11
main:
  ADDI sp, sp, -144
  SD s11, 40(sp)
  SD s10, 48(sp)
  SD s0, 56(sp)
  SD s5, 64(sp)
  SD s1, 72(sp)
  SD s6, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  SD s7, 104(sp)
  SD s8, 112(sp)
  SD s9, 120(sp)
  SD ra, 128(sp)
  SD s4, 136(sp)
  LA s0, n
  ADDI s1, zero, 10
  SW s1, 0(s0)
  ADDI s0, zero, 4
  SW s0, 0(sp)
  ADDI s0, sp, 4
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 8
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 12
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 16
  SW zero, 0(s0)
  ADDI s0, sp, 20
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 24
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 28
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 32
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 36
  ADDI s1, zero, 8
  SW s1, 0(s0)
  LA s0, n
  LW s1, 0(s0)
  ADDI s0, zero, 1
  SUBW s2, s1, s0
  ADD s0, zero, zero
  ADD s3, zero, zero
  # implict jump to bb14
bb14:
  ADD s4, s3, zero
  ADD s5, s0, zero
  SLT s6, s4, s2
  BNE s6, zero, bb19
  # implict jump to bb15
bb15:
  ADD s6, zero, zero
  # implict jump to bb16
bb16:
  ADD s7, s6, zero
  LA s8, n
  LW s9, 0(s8)
  SLT s8, s7, s9
  BNE s8, zero, bb18
  # implict jump to bb17
bb17:
  ADD a0, zero, zero
  LD s11, 40(sp)
  LD s10, 48(sp)
  LD s0, 56(sp)
  LD s5, 64(sp)
  LD s1, 72(sp)
  LD s6, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s7, 104(sp)
  LD s8, 112(sp)
  LD s9, 120(sp)
  LD ra, 128(sp)
  LD s4, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb18:
  SLLIW s8, s7, 2
  ADDI t5, sp, 0
  ADD s9, t5, s8
  LW s8, 0(s9)
  ADD a0, s8, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s8, s7, 1
  ADD s6, s8, zero
  JAL zero, bb16
bb19:
  ADDIW s6, s4, 1
  ADD s7, s4, zero
  ADD s8, s6, zero
  # implict jump to bb20
bb20:
  ADD s9, s8, zero
  ADD s10, s7, zero
  SLT s11, s9, s1
  BNE s11, zero, bb25
  # implict jump to bb21
bb21:
  XOR s11, s10, s4
  SLTU t0, zero, s11
  BNE t0, zero, bb24
  # implict jump to bb22
bb22:
  ADD s11, s5, zero
  # implict jump to bb23
bb23:
  ADD t0, s11, zero
  ADD s0, t0, zero
  ADD s3, s6, zero
  JAL zero, bb14
bb24:
  SLLIW t0, s10, 2
  ADDI t1, sp, 0
  ADD t1, t1, t0
  LW t0, 0(t1)
  SLLIW t2, s4, 2
  ADDI a0, sp, 0
  ADD a0, a0, t2
  LW t2, 0(a0)
  SW t2, 0(t1)
  SW t0, 0(a0)
  ADD s11, t0, zero
  JAL zero, bb23
bb25:
  SLLIW s0, s10, 2
  ADDI t5, sp, 0
  ADD s3, t5, s0
  LW s0, 0(s3)
  SLLIW s3, s9, 2
  ADDI t5, sp, 0
  ADD s11, t5, s3
  LW s3, 0(s11)
  SLT s11, s3, s0
  BNE s11, zero, bb28
  # implict jump to bb26
bb26:
  ADD s0, s10, zero
  # implict jump to bb27
bb27:
  ADD s3, s0, zero
  ADDIW s0, s9, 1
  ADD s7, s3, zero
  ADD s8, s0, zero
  JAL zero, bb20
bb28:
  ADD s0, s9, zero
  JAL zero, bb27
