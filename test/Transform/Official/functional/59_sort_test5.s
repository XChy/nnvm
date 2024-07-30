.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -144
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s4, 16(sp)
  SD s8, 24(sp)
  SD s0, 32(sp)
  SD s1, 40(sp)
  SD s3, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  LA s0, n
  ADDI s1, zero, 10
  SW s1, 0(s0)
  ADDI s0, zero, 4
  SW s0, 104(sp)
  ADDI s0, zero, 3
  SW s0, 108(sp)
  ADDI s0, zero, 9
  SW s0, 112(sp)
  ADDI s0, zero, 2
  SW s0, 116(sp)
  ADDI s0, zero, 0
  SW s0, 120(sp)
  ADDI s0, zero, 1
  SW s0, 124(sp)
  ADDI s0, zero, 6
  SW s0, 128(sp)
  ADDI s0, zero, 5
  SW s0, 132(sp)
  ADDI s0, zero, 7
  SW s0, 136(sp)
  ADDI s0, zero, 8
  SW s0, 140(sp)
  ADDI s0, zero, 4
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  SLLIW s2, s1, 1
  ADDIW s2, s2, 1
  SLTI s3, s2, 10
  BNE s3, zero, bb23
  # implict jump to bb2
bb2:
  ADDI s2, zero, 1
  SUBW s1, s1, s2
  ADDI s2, zero, -1
  BLT s2, s1, bb22
  # implict jump to bb3
bb3:
  ADDI s2, zero, 9
  # implict jump to bb4
bb4:
  ADD s3, s2, zero
  LW s4, 104(sp)
  SLLIW s5, s3, 2
  ADDI t5, sp, 104
  ADD s5, t5, s5
  LW s6, 0(s5)
  SW s6, 104(sp)
  SW s4, 0(s5)
  ADDI s4, zero, 1
  SUBW s4, s3, s4
  ADDI s5, zero, 1
  BLT s5, s3, bb12
  # implict jump to bb5
bb5:
  BLT zero, s4, bb11
  # implict jump to bb6
bb6:
  LA s3, n
  LW s3, 0(s3)
  BLT zero, s3, bb8
  # implict jump to bb7
bb7:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s4, 16(sp)
  LD s8, 24(sp)
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s3, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb8:
  ADD s3, zero, zero
  # implict jump to bb9
bb9:
  ADD s5, s3, zero
  SLLIW s6, s5, 2
  ADDI a0, sp, 104
  ADD s6, a0, s6
  LW s6, 0(s6)
  ADD a0, s6, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s5, s5, 1
  LA s6, n
  LW s6, 0(s6)
  BLT s5, s6, bb10
  JAL zero, bb7
bb10:
  ADD s3, s5, zero
  JAL zero, bb9
bb11:
  ADD s2, s4, zero
  JAL zero, bb4
bb12:
  ADD s5, zero, zero
  ADDI s6, zero, 1
  # implict jump to bb13
bb13:
  ADD s7, s6, zero
  ADD s8, s5, zero
  BLT s7, s4, bb21
  # implict jump to bb14
bb14:
  ADD s9, zero, zero
  # implict jump to bb15
bb15:
  BNE s9, zero, bb20
  # implict jump to bb16
bb16:
  ADD s9, s7, zero
  # implict jump to bb17
bb17:
  SLLIW s7, s8, 2
  ADDI t5, sp, 104
  ADD s7, t5, s7
  LW s8, 0(s7)
  SLLIW s10, s9, 2
  ADDI t5, sp, 104
  ADD s10, t5, s10
  LW s11, 0(s10)
  BLT s11, s8, bb5
  # implict jump to bb18
bb18:
  LW s8, 0(s7)
  LW s11, 0(s10)
  SW s11, 0(s7)
  SW s8, 0(s10)
  SLLIW s7, s9, 1
  ADDIW s7, s7, 1
  BLT s7, s3, bb19
  JAL zero, bb5
bb19:
  ADD s5, s9, zero
  ADD s6, s7, zero
  JAL zero, bb13
bb20:
  ADDIW s7, s7, 1
  ADD s9, s7, zero
  JAL zero, bb17
bb21:
  SLLIW s10, s7, 2
  ADDI t5, sp, 104
  ADD s10, t5, s10
  LW s10, 0(s10)
  ADDIW s11, s7, 1
  SLLIW s11, s11, 2
  ADDI t5, sp, 104
  ADD s11, t5, s11
  LW s11, 0(s11)
  SLT s10, s10, s11
  ADD s9, s10, zero
  JAL zero, bb15
bb22:
  ADD s0, s1, zero
  JAL zero, bb1
bb23:
  ADD s3, s1, zero
  # implict jump to bb24
bb24:
  ADD s4, s2, zero
  ADD s5, s3, zero
  SLTI s6, s4, 9
  BNE s6, zero, bb32
  # implict jump to bb25
bb25:
  ADD s6, zero, zero
  # implict jump to bb26
bb26:
  BNE s6, zero, bb31
  # implict jump to bb27
bb27:
  ADD s6, s4, zero
  # implict jump to bb28
bb28:
  SLLIW s4, s5, 2
  ADDI t5, sp, 104
  ADD s4, t5, s4
  LW s5, 0(s4)
  SLLIW s7, s6, 2
  ADDI t5, sp, 104
  ADD s7, t5, s7
  LW s8, 0(s7)
  BLT s8, s5, bb2
  # implict jump to bb29
bb29:
  LW s5, 0(s4)
  LW s8, 0(s7)
  SW s8, 0(s4)
  SW s5, 0(s7)
  SLLIW s4, s6, 1
  ADDIW s4, s4, 1
  SLTI s5, s4, 10
  BNE s5, zero, bb30
  JAL zero, bb2
bb30:
  ADD s3, s6, zero
  ADD s2, s4, zero
  JAL zero, bb24
bb31:
  ADDIW s4, s4, 1
  ADD s6, s4, zero
  JAL zero, bb28
bb32:
  SLLIW s7, s4, 2
  ADDI t5, sp, 104
  ADD s7, t5, s7
  LW s7, 0(s7)
  ADDIW s8, s4, 1
  SLLIW s8, s8, 2
  ADDI t5, sp, 104
  ADD s8, t5, s8
  LW s8, 0(s8)
  SLT s7, s7, s8
  ADD s6, s7, zero
  JAL zero, bb26
