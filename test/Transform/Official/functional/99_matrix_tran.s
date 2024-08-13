.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss



.section .data
N:
.word 0x00000000
L:
.word 0x00000000
M:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -128
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  FSD fs0, 48(sp)
  FSD fs1, 56(sp)
  FSD fs2, 64(sp)
  LA a0, N
  LA s1, M
  ADDI s0, zero, 3
  ADDI s4, zero, 1
  LA s3, L
  ADDI s2, zero, 3
  SW s0, 0(a0)
  FCVT.S.W fs1, s4
  ADDI a0, zero, 3
  SW s2, 0(s1)
  SW a0, 0(s3)
  ADDI a0, zero, 2
  FSW fs1, 104(sp)
  FCVT.S.W fs2, a0
  ADDI a0, zero, 0
  ADDI s0, zero, 1
  FCVT.S.W fs0, a0
  FSW fs2, 116(sp)
  FSW fs0, 76(sp)
  FSW fs0, 80(sp)
  FSW fs1, 96(sp)
  FSW fs2, 112(sp)
  FSW fs1, 100(sp)
  FSW fs2, 120(sp)
  FSW fs0, 72(sp)
  BNE s0, zero, bb10
  # implict jump to bb1
bb1:   # loop depth 0
  LA s0, N
  ADDI a0, zero, 10
  CALL putch
  LW a0, 0(s0)
  BLT zero, a0, bb7
  # implict jump to bb2
bb2:   # loop depth 0
  LA s0, N
  ADDI a0, zero, 10
  CALL putch
  LW a0, 0(s0)
  BLT zero, a0, bb4
  # implict jump to bb3
bb3:   # loop depth 0
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  FLD fs0, 48(sp)
  FLD fs1, 56(sp)
  FLD fs2, 64(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb4:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  LA s1, N
  SLLIW a0, s0, 2
  ADDIW s0, s0, 1
  ADDI t6, sp, 112
  ADD a0, t6, a0
  FLW fs0, 0(a0)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  LW a0, 0(s1)
  BLT s0, a0, bb6
  JAL zero, bb3
bb6:   # loop depth 1
  JAL zero, bb5
bb7:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb8
bb8:   # loop depth 1
  LA s1, N
  SLLIW a0, s0, 2
  ADDIW s0, s0, 1
  ADDI t6, sp, 96
  ADD a0, t6, a0
  FLW fs0, 0(a0)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  LW a0, 0(s1)
  BLT s0, a0, bb9
  JAL zero, bb2
bb9:   # loop depth 1
  JAL zero, bb8
bb10:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb11
bb11:   # loop depth 1
  LA s1, N
  SLLIW a0, s0, 2
  ADDIW s0, s0, 1
  ADDI t6, sp, 72
  ADD a0, t6, a0
  FLW fs0, 0(a0)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  LW a0, 0(s1)
  BLT s0, a0, bb12
  JAL zero, bb1
bb12:   # loop depth 1
  JAL zero, bb11
