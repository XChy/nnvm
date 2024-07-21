.global counting_sort
.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
counting_sort:
  ADDI sp, sp, -144
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD s6, 96(sp)
  SD s7, 104(sp)
  SD s8, 112(sp)
  SD s9, 120(sp)
  SD s10, 128(sp)
  SD s11, 136(sp)
  ADD s0, a0, zero
  ADD s1, zero, zero
  # implict jump to bb1
bb1:
  ADD s2, s1, zero
  SLTI s3, s2, 10
  BNE s3, zero, bb12
  # implict jump to bb2
bb2:
  ADD s3, zero, zero
  # implict jump to bb3
bb3:
  ADD s4, s3, zero
  BLT s4, a2, bb11
  # implict jump to bb4
bb4:
  ADDI s5, zero, 1
  # implict jump to bb5
bb5:
  ADD s6, s5, zero
  SLTI s7, s6, 10
  BNE s7, zero, bb10
  # implict jump to bb6
bb6:
  ADD s7, a2, zero
  # implict jump to bb7
bb7:
  ADD s8, s7, zero
  BLT zero, s8, bb9
  # implict jump to bb8
bb8:
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  LD s7, 104(sp)
  LD s8, 112(sp)
  LD s9, 120(sp)
  LD s10, 128(sp)
  LD s11, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb9:
  ADDI s9, zero, 1
  SUBW s8, s8, s9
  SLLIW s9, s8, 2
  ADD s9, s0, s9
  LW s9, 0(s9)
  SLLIW s10, s9, 2
  ADDI t5, sp, 0
  ADD s10, t5, s10
  LW s11, 0(s10)
  ADDI t0, zero, 1
  SUBW s11, s11, t0
  SW s11, 0(s10)
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  ADD s10, a1, s10
  SW s9, 0(s10)
  ADD s7, s8, zero
  JAL zero, bb7
bb10:
  SLLIW s7, s6, 2
  ADDI t5, sp, 0
  ADD s7, t5, s7
  LW s8, 0(s7)
  ADDI s9, zero, 1
  SUBW s9, s6, s9
  SLLIW s9, s9, 2
  ADDI t5, sp, 0
  ADD s9, t5, s9
  LW s9, 0(s9)
  ADDW s8, s8, s9
  SW s8, 0(s7)
  ADDIW s6, s6, 1
  ADD s5, s6, zero
  JAL zero, bb5
bb11:
  SLLIW s5, s4, 2
  ADD s5, s0, s5
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  ADDI t5, sp, 0
  ADD s5, t5, s5
  LW s6, 0(s5)
  ADDIW s6, s6, 1
  SW s6, 0(s5)
  ADDIW s4, s4, 1
  ADD s3, s4, zero
  JAL zero, bb3
bb12:
  SLLIW s3, s2, 2
  ADDI t5, sp, 0
  ADD s3, t5, s3
  SW zero, 0(s3)
  ADDIW s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb1
main:
  ADDI sp, sp, -224
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s2, 16(sp)
  SD s3, 24(sp)
  SD s4, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  SD s7, 56(sp)
  SD s11, 64(sp)
  SD s6, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD s10, 96(sp)
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
  ADD s0, zero, zero
  # implict jump to bb14
bb14:
  ADD s1, s0, zero
  SLTI s2, s1, 10
  BNE s2, zero, bb28
  # implict jump to bb15
bb15:
  ADD s2, zero, zero
  # implict jump to bb16
bb16:
  ADD s3, s2, zero
  SLTI s4, s3, 10
  BNE s4, zero, bb27
  # implict jump to bb17
bb17:
  ADDI s4, zero, 1
  # implict jump to bb18
bb18:
  ADD s5, s4, zero
  SLTI s6, s5, 10
  BNE s6, zero, bb26
  # implict jump to bb19
bb19:
  ADDI s6, zero, 10
  # implict jump to bb20
bb20:
  ADD s7, s6, zero
  BLT zero, s7, bb25
  # implict jump to bb21
bb21:
  ADD s8, zero, zero
  # implict jump to bb22
bb22:
  ADD s9, s8, zero
  LA s10, n
  LW s10, 0(s10)
  BLT s9, s10, bb24
  # implict jump to bb23
bb23:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s2, 16(sp)
  LD s3, 24(sp)
  LD s4, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  LD s7, 56(sp)
  LD s11, 64(sp)
  LD s6, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb24:
  SLLIW s10, s9, 2
  ADDI a0, sp, 144
  ADD s10, a0, s10
  LW s10, 0(s10)
  ADD a0, s10, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb22
bb25:
  ADDI s8, zero, 1
  SUBW s7, s7, s8
  SLLIW s8, s7, 2
  ADDI t5, sp, 104
  ADD s8, t5, s8
  LW s8, 0(s8)
  SLLIW s9, s8, 2
  ADDI t5, sp, 184
  ADD s9, t5, s9
  LW s10, 0(s9)
  ADDI s11, zero, 1
  SUBW s10, s10, s11
  SW s10, 0(s9)
  LW s9, 0(s9)
  SLLIW s9, s9, 2
  ADDI t5, sp, 144
  ADD s9, t5, s9
  SW s8, 0(s9)
  ADD s6, s7, zero
  JAL zero, bb20
bb26:
  SLLIW s6, s5, 2
  ADDI t5, sp, 184
  ADD s6, t5, s6
  LW s7, 0(s6)
  ADDI s8, zero, 1
  SUBW s8, s5, s8
  SLLIW s8, s8, 2
  ADDI t5, sp, 184
  ADD s8, t5, s8
  LW s8, 0(s8)
  ADDW s7, s7, s8
  SW s7, 0(s6)
  ADDIW s5, s5, 1
  ADD s4, s5, zero
  JAL zero, bb18
bb27:
  SLLIW s4, s3, 2
  ADDI t5, sp, 104
  ADD s4, t5, s4
  LW s4, 0(s4)
  SLLIW s4, s4, 2
  ADDI t5, sp, 184
  ADD s4, t5, s4
  LW s5, 0(s4)
  ADDIW s5, s5, 1
  SW s5, 0(s4)
  ADDIW s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb16
bb28:
  SLLIW s2, s1, 2
  ADDI t5, sp, 184
  ADD s2, t5, s2
  SW zero, 0(s2)
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb14
