.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -96
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  LA a0, n
  ADDI s0, zero, 10
  SW s0, 0(a0)
  ADDI a0, zero, 4
  SW a0, 0(sp)
  ADDI a0, zero, 3
  SW a0, 4(sp)
  ADDI a0, zero, 9
  SW a0, 8(sp)
  ADDI a0, zero, 2
  SW a0, 12(sp)
  ADDI a0, zero, 0
  SW a0, 16(sp)
  ADDI a0, zero, 1
  SW a0, 20(sp)
  ADDI a0, zero, 6
  SW a0, 24(sp)
  ADDI a0, zero, 5
  SW a0, 28(sp)
  ADDI a0, zero, 7
  SW a0, 32(sp)
  ADDI a0, zero, 8
  SW a0, 36(sp)
  ADDI a0, zero, 4
  # implict jump to bb1
bb1:
  SLLIW s0, a0, 1
  ADDIW s0, s0, 1
  SLTI s1, s0, 10
  BNE s1, zero, bb23
  # implict jump to bb2
bb2:
  ADDI s0, zero, 1
  SUBW a0, a0, s0
  ADDI s0, zero, -1
  BLT s0, a0, bb22
  # implict jump to bb3
bb3:
  ADDI a0, zero, 9
  # implict jump to bb4
bb4:
  LW s0, 0(sp)
  SLLIW s1, a0, 2
  ADDI t5, sp, 0
  ADD s1, t5, s1
  LW s2, 0(s1)
  SW s2, 0(sp)
  SW s0, 0(s1)
  ADDI s0, zero, 1
  SUBW s0, a0, s0
  ADDI s1, zero, 1
  BLT s1, a0, bb12
  # implict jump to bb5
bb5:
  BLT zero, s0, bb11
  # implict jump to bb6
bb6:
  LA a0, n
  LW a0, 0(a0)
  BLT zero, a0, bb8
  # implict jump to bb7
bb7:
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb8:
  ADD a0, zero, zero
  # implict jump to bb9
bb9:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 0
  ADD a0, t5, a0
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW a0, s0, 1
  LA s0, n
  LW s0, 0(s0)
  BLT a0, s0, bb10
  JAL zero, bb7
bb10:
  JAL zero, bb9
bb11:
  ADD a0, s0, zero
  JAL zero, bb4
bb12:
  ADD s3, zero, zero
  ADDI s1, zero, 1
  # implict jump to bb13
bb13:
  ADD s2, s1, zero
  ADD s1, s3, zero
  BLT s2, s0, bb21
  # implict jump to bb14
bb14:
  ADD s3, zero, zero
  # implict jump to bb15
bb15:
  BNE s3, zero, bb20
  # implict jump to bb16
bb16:
  # implict jump to bb17
bb17:
  SLLIW s1, s1, 2
  ADDI t5, sp, 0
  ADD s1, t5, s1
  LW s3, 0(s1)
  SLLIW s4, s2, 2
  ADDI t5, sp, 0
  ADD s4, t5, s4
  LW s5, 0(s4)
  BLT s5, s3, bb5
  # implict jump to bb18
bb18:
  LW s3, 0(s1)
  LW s5, 0(s4)
  SW s5, 0(s1)
  SW s3, 0(s4)
  SLLIW s1, s2, 1
  ADDIW s1, s1, 1
  BLT s1, a0, bb19
  JAL zero, bb5
bb19:
  ADD s3, s2, zero
  JAL zero, bb13
bb20:
  ADDIW s2, s2, 1
  JAL zero, bb17
bb21:
  SLLIW s3, s2, 2
  ADDI t5, sp, 0
  ADD s3, t5, s3
  LW s3, 0(s3)
  ADDIW s4, s2, 1
  SLLIW s4, s4, 2
  ADDI t5, sp, 0
  ADD s4, t5, s4
  LW s4, 0(s4)
  SLT s3, s3, s4
  JAL zero, bb15
bb22:
  JAL zero, bb1
bb23:
  ADD s2, a0, zero
  # implict jump to bb24
bb24:
  ADD s1, s0, zero
  ADD s0, s2, zero
  SLTI s2, s1, 9
  BNE s2, zero, bb32
  # implict jump to bb25
bb25:
  ADD s2, zero, zero
  # implict jump to bb26
bb26:
  BNE s2, zero, bb31
  # implict jump to bb27
bb27:
  # implict jump to bb28
bb28:
  SLLIW s0, s0, 2
  ADDI t5, sp, 0
  ADD s0, t5, s0
  LW s2, 0(s0)
  SLLIW s3, s1, 2
  ADDI t5, sp, 0
  ADD s3, t5, s3
  LW s4, 0(s3)
  BLT s4, s2, bb2
  # implict jump to bb29
bb29:
  LW s2, 0(s0)
  LW s4, 0(s3)
  SW s4, 0(s0)
  SW s2, 0(s3)
  SLLIW s0, s1, 1
  ADDIW s0, s0, 1
  SLTI s2, s0, 10
  BNE s2, zero, bb30
  JAL zero, bb2
bb30:
  ADD s2, s1, zero
  JAL zero, bb24
bb31:
  ADDIW s1, s1, 1
  JAL zero, bb28
bb32:
  SLLIW s2, s1, 2
  ADDI t5, sp, 0
  ADD s2, t5, s2
  LW s2, 0(s2)
  ADDIW s3, s1, 1
  SLLIW s3, s3, 2
  ADDI t5, sp, 0
  ADD s3, t5, s3
  LW s3, 0(s3)
  SLT s2, s2, s3
  JAL zero, bb26
