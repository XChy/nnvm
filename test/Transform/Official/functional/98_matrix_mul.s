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
  ADDI sp, sp, -176
  SD ra, 0(sp)
  FSD fs1, 8(sp)
  FSD fs2, 16(sp)
  FSD fs3, 24(sp)
  FSD fs4, 32(sp)
  FSD fs5, 40(sp)
  FSD fs6, 48(sp)
  FSD fs7, 56(sp)
  FSD fs8, 64(sp)
  FSD fs9, 72(sp)
  SD s0, 80(sp)
  SD s1, 88(sp)
  SD s2, 96(sp)
  SD s3, 104(sp)
  FSD fs0, 112(sp)
  ADDI s0, zero, 1
  ADDI a0, zero, 0
  FCVT.S.W fs1, s0
  ADDI s0, zero, 2
  FCVT.S.W fs0, a0
  LA a0, N
  FCVT.S.W fs2, s0
  LA s1, M
  FMUL.S fs4, fs1, fs0
  ADDI s0, zero, 3
  FMUL.S fs3, fs0, fs0
  LA s3, L
  FMUL.S fs7, fs1, fs1
  ADDI s2, zero, 3
  FMUL.S fs6, fs0, fs1
  SW s0, 0(a0)
  FMUL.S fs5, fs2, fs0
  ADDI a0, zero, 3
  FMUL.S fs8, fs1, fs2
  SW s2, 0(s1)
  FADD.S fs3, fs3, fs4
  SW a0, 0(s3)
  FMUL.S fs9, fs0, fs2
  ADDI a0, zero, 1
  FMUL.S fs4, fs2, fs1
  FADD.S fs1, fs6, fs7
  FMUL.S fs6, fs2, fs2
  FADD.S fs0, fs3, fs5
  FADD.S fs2, fs9, fs8
  FADD.S fs1, fs1, fs4
  FSW fs0, 120(sp)
  FADD.S fs2, fs2, fs6
  FSW fs1, 124(sp)
  FSW fs2, 128(sp)
  FSW fs0, 144(sp)
  FSW fs1, 148(sp)
  FSW fs2, 152(sp)
  FSW fs0, 160(sp)
  FSW fs1, 164(sp)
  FSW fs2, 168(sp)
  BNE a0, zero, bb10
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
  FLD fs1, 8(sp)
  FLD fs2, 16(sp)
  FLD fs3, 24(sp)
  FLD fs4, 32(sp)
  FLD fs5, 40(sp)
  FLD fs6, 48(sp)
  FLD fs7, 56(sp)
  FLD fs8, 64(sp)
  FLD fs9, 72(sp)
  LD s0, 80(sp)
  LD s1, 88(sp)
  LD s2, 96(sp)
  LD s3, 104(sp)
  FLD fs0, 112(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb4:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  LA s1, N
  SLLIW a0, s0, 2
  ADDIW s0, s0, 1
  ADDI t6, sp, 160
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
  ADDI t6, sp, 144
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
  ADDI t6, sp, 120
  ADD a0, t6, a0
  FLW fs0, 0(a0)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  LW a0, 0(s1)
  BLT s0, a0, bb12
  JAL zero, bb1
bb12:   # loop depth 1
  JAL zero, bb11
