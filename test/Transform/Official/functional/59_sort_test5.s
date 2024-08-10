.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -112
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD s6, 96(sp)
  LA a0, n
  ADDI s0, zero, 10
  ADDI s1, zero, 4
  ADDI s2, zero, 3
  SW s0, 0(a0)
  ADDI a0, zero, 9
  SW s1, 0(sp)
  ADDI s0, zero, 2
  SW s2, 4(sp)
  ADDI s1, zero, 0
  SW a0, 8(sp)
  ADDI a0, zero, 1
  SW s0, 12(sp)
  ADDI s0, zero, 6
  SW s1, 16(sp)
  ADDI s1, zero, 5
  SW a0, 20(sp)
  ADDI a0, zero, 7
  SW s0, 24(sp)
  ADDI s0, zero, 8
  SW s1, 28(sp)
  ADDI s2, zero, 4
  SW a0, 32(sp)
  SW s0, 36(sp)
  # implict jump to bb1
bb1:   # loop depth 1
  SLLIW a0, s2, 1
  ADDIW a0, a0, 1
  SLTI s0, a0, 10
  BNE s0, zero, bb23
  # implict jump to bb2
bb2:   # loop depth 1
  ADDI a0, zero, -1
  ADDIW s2, s2, -1
  BLT a0, s2, bb22
  # implict jump to bb3
bb3:   # loop depth 0
  ADDI s2, zero, 9
  # implict jump to bb4
bb4:   # loop depth 1
  LW a0, 0(sp)
  SLLIW s0, s2, 2
  ADDI s4, zero, 1
  ADDI t6, sp, 0
  ADD s0, t6, s0
  ADDIW s3, s2, -1
  LW s1, 0(s0)
  SW s1, 0(sp)
  SW a0, 0(s0)
  BLT s4, s2, bb12
  # implict jump to bb5
bb5:   # loop depth 1
  BLT zero, s3, bb11
  # implict jump to bb6
bb6:   # loop depth 0
  ADDI a0, zero, 1
  BNE a0, zero, bb8
  # implict jump to bb7
bb7:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb8:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb9
bb9:   # loop depth 1
  LA s1, n
  SLLIW a0, s0, 2
  ADDIW s0, s0, 1
  ADDI t6, sp, 0
  ADD a0, t6, a0
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW a0, 0(s1)
  BLT s0, a0, bb10
  JAL zero, bb7
bb10:   # loop depth 1
  JAL zero, bb9
bb11:   # loop depth 1
  ADD s2, s3, zero
  JAL zero, bb4
bb12:   # loop depth 1
  ADDI a0, zero, 1
  ADD s0, zero, zero
  # implict jump to bb13
bb13:   # loop depth 2
  BLT a0, s3, bb21
  # implict jump to bb14
bb14:   # loop depth 2
  ADD s1, zero, zero
  # implict jump to bb15
bb15:   # loop depth 2
  BNE s1, zero, bb20
  # implict jump to bb16
bb16:   # loop depth 2
  # implict jump to bb17
bb17:   # loop depth 2
  SLLIW s1, s0, 2
  ADD s0, a0, zero
  ADDI t6, sp, 0
  ADD s1, t6, s1
  SLLIW s4, s0, 2
  LW a0, 0(s1)
  ADDI t6, sp, 0
  ADD s4, t6, s4
  LW s5, 0(s4)
  BLT s5, a0, bb5
  # implict jump to bb18
bb18:   # loop depth 2
  LW s5, 0(s1)
  SLLIW a0, s0, 1
  ADDIW a0, a0, 1
  LW s6, 0(s4)
  SW s6, 0(s1)
  SW s5, 0(s4)
  BLT a0, s2, bb19
  JAL zero, bb5
bb19:   # loop depth 2
  JAL zero, bb13
bb20:   # loop depth 2
  ADDIW a0, a0, 1
  JAL zero, bb17
bb21:   # loop depth 2
  SLLIW s1, a0, 2
  ADDI t6, sp, 0
  ADD s1, t6, s1
  LW s4, 0(s1)
  LW s1, 4(s1)
  SLT s1, s4, s1
  JAL zero, bb15
bb22:   # loop depth 1
  JAL zero, bb1
bb23:   # loop depth 1
  ADD s0, s2, zero
  # implict jump to bb24
bb24:   # loop depth 2
  SLTI s1, a0, 9
  BNE s1, zero, bb32
  # implict jump to bb25
bb25:   # loop depth 2
  ADD s1, zero, zero
  # implict jump to bb26
bb26:   # loop depth 2
  BNE s1, zero, bb31
  # implict jump to bb27
bb27:   # loop depth 2
  # implict jump to bb28
bb28:   # loop depth 2
  SLLIW s1, s0, 2
  ADD s0, a0, zero
  ADDI t6, sp, 0
  ADD s1, t6, s1
  SLLIW s3, s0, 2
  LW a0, 0(s1)
  ADDI t6, sp, 0
  ADD s3, t6, s3
  LW s4, 0(s3)
  BLT s4, a0, bb2
  # implict jump to bb29
bb29:   # loop depth 2
  LW s4, 0(s1)
  SLLIW a0, s0, 1
  ADDIW a0, a0, 1
  SLTI s6, a0, 10
  LW s5, 0(s3)
  SW s5, 0(s1)
  SW s4, 0(s3)
  BNE s6, zero, bb30
  JAL zero, bb2
bb30:   # loop depth 2
  JAL zero, bb24
bb31:   # loop depth 2
  ADDIW a0, a0, 1
  JAL zero, bb28
bb32:   # loop depth 2
  SLLIW s1, a0, 2
  ADDI t6, sp, 0
  ADD s1, t6, s1
  LW s3, 0(s1)
  LW s1, 4(s1)
  SLT s1, s3, s1
  JAL zero, bb26
