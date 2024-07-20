.global select_sort
.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
select_sort:
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
  ADDI s1, zero, 1
  SUBW s1, a1, s1
  ADD s2, zero, zero
  ADD s3, zero, zero
  # implict jump to bb1
bb1:
  ADD s4, s3, zero
  ADD s5, s2, zero
  BLT s4, s1, bb3
  # implict jump to bb2
bb2:
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
bb3:
  ADDIW s6, s4, 1
  ADD s7, s4, zero
  ADD s8, s6, zero
  # implict jump to bb4
bb4:
  ADD s9, s8, zero
  ADD s10, s7, zero
  BLT s9, a1, bb9
  # implict jump to bb5
bb5:
  BNE s10, s4, bb8
  # implict jump to bb6
bb6:
  ADD s11, s5, zero
  # implict jump to bb7
bb7:
  ADD s2, s11, zero
  ADD s3, s6, zero
  JAL zero, bb1
bb8:
  SLLIW t0, s10, 2
  ADD t0, s0, t0
  LW t1, 0(t0)
  SLLIW t2, s4, 2
  ADD t2, s0, t2
  LW a0, 0(t2)
  SW a0, 0(t0)
  SW t1, 0(t2)
  ADD s11, t1, zero
  JAL zero, bb7
bb9:
  SLLIW s2, s10, 2
  ADD s2, s0, s2
  LW s2, 0(s2)
  SLLIW s3, s9, 2
  ADD s3, s0, s3
  LW s3, 0(s3)
  BLT s3, s2, bb12
  # implict jump to bb10
bb10:
  ADD s2, s10, zero
  # implict jump to bb11
bb11:
  ADDIW s3, s9, 1
  ADD s7, s2, zero
  ADD s8, s3, zero
  JAL zero, bb4
bb12:
  ADD s2, s9, zero
  JAL zero, bb11
main:
  ADDI sp, sp, -144
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s4, 16(sp)
  SD s8, 24(sp)
  SD s9, 32(sp)
  SD s0, 40(sp)
  SD s1, 48(sp)
  SD s2, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  LA s0, n
  ADDI s1, zero, 10
  SW s1, 0(s0)
  ADDI s0, zero, 4
  SW s0, 104(sp)
  ADDI s0, sp, 108
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 112
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 116
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 120
  SW zero, 0(s0)
  ADDI s0, sp, 124
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 128
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 132
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 136
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 140
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI s0, zero, 10
  ADDI s1, zero, 1
  SUBW s0, s0, s1
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb14
bb14:
  ADD s3, s2, zero
  ADD s4, s1, zero
  BLT s3, s0, bb19
  # implict jump to bb15
bb15:
  ADD s5, zero, zero
  # implict jump to bb16
bb16:
  ADD s6, s5, zero
  LA s7, n
  LW s7, 0(s7)
  BLT s6, s7, bb18
  # implict jump to bb17
bb17:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s4, 16(sp)
  LD s8, 24(sp)
  LD s9, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb18:
  SLLIW s7, s6, 2
  ADDI a0, sp, 104
  ADD s7, a0, s7
  LW s7, 0(s7)
  ADD a0, s7, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s6, s6, 1
  ADD s5, s6, zero
  JAL zero, bb16
bb19:
  ADDIW s5, s3, 1
  ADD s6, s3, zero
  ADD s7, s5, zero
  # implict jump to bb20
bb20:
  ADD s8, s7, zero
  ADD s9, s6, zero
  SLTI s10, s8, 10
  BNE s10, zero, bb25
  # implict jump to bb21
bb21:
  BNE s9, s3, bb24
  # implict jump to bb22
bb22:
  ADD s10, s4, zero
  # implict jump to bb23
bb23:
  ADD s1, s10, zero
  ADD s2, s5, zero
  JAL zero, bb14
bb24:
  SLLIW s11, s9, 2
  ADDI t0, sp, 104
  ADD s11, t0, s11
  LW t0, 0(s11)
  SLLIW t1, s3, 2
  ADDI t2, sp, 104
  ADD t1, t2, t1
  LW t2, 0(t1)
  SW t2, 0(s11)
  SW t0, 0(t1)
  ADD s10, t0, zero
  JAL zero, bb23
bb25:
  SLLIW s1, s9, 2
  ADDI t5, sp, 104
  ADD s1, t5, s1
  LW s1, 0(s1)
  SLLIW s2, s8, 2
  ADDI t5, sp, 104
  ADD s2, t5, s2
  LW s2, 0(s2)
  BLT s2, s1, bb28
  # implict jump to bb26
bb26:
  ADD s1, s9, zero
  # implict jump to bb27
bb27:
  ADDIW s2, s8, 1
  ADD s6, s1, zero
  ADD s7, s2, zero
  JAL zero, bb20
bb28:
  ADD s1, s8, zero
  JAL zero, bb27
