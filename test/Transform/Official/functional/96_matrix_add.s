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
main:
  ADDI sp, sp, -208
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSD fs2, 32(sp)
  FSD fs3, 40(sp)
  LA a0, N
  ADDI s0, zero, 3
  SW s0, 0(a0)
  LA a0, M
  ADDI s0, zero, 3
  SW s0, 0(a0)
  LA a0, L
  ADDI s0, zero, 3
  SW s0, 0(a0)
  ADDI a0, zero, 0
  FCVT.S.W fs0, a0
  FSW fs0, 48(sp)
  FSW fs0, 64(sp)
  FSW fs0, 80(sp)
  FSW fs0, 96(sp)
  FSW fs0, 112(sp)
  FSW fs0, 128(sp)
  ADDI a0, zero, 1
  FCVT.S.W fs1, a0
  FSW fs1, 52(sp)
  FSW fs1, 68(sp)
  FSW fs1, 84(sp)
  FSW fs1, 100(sp)
  FSW fs1, 116(sp)
  FSW fs1, 132(sp)
  ADDI a0, zero, 2
  FCVT.S.W fs2, a0
  FSW fs2, 56(sp)
  FSW fs2, 72(sp)
  FSW fs2, 88(sp)
  FSW fs2, 104(sp)
  FSW fs2, 120(sp)
  FSW fs2, 136(sp)
  FADD.S fs3, fs0, fs0
  FSW fs3, 144(sp)
  FADD.S fs3, fs0, fs0
  FSW fs3, 168(sp)
  FADD.S fs0, fs0, fs0
  FSW fs0, 184(sp)
  FADD.S fs0, fs1, fs1
  FSW fs0, 148(sp)
  FADD.S fs0, fs1, fs1
  FSW fs0, 172(sp)
  FADD.S fs0, fs1, fs1
  FSW fs0, 188(sp)
  FADD.S fs0, fs2, fs2
  FSW fs0, 152(sp)
  FADD.S fs0, fs2, fs2
  FSW fs0, 176(sp)
  FADD.S fs0, fs2, fs2
  FSW fs0, 192(sp)
  ADDI a0, zero, 1
  BNE a0, zero, bb10
  # implict jump to bb1
bb1:
  ADDI a0, zero, 10
  CALL putch
  LA a0, N
  LW a0, 0(a0)
  BLT zero, a0, bb7
  # implict jump to bb2
bb2:
  ADDI a0, zero, 10
  CALL putch
  LA a0, N
  LW a0, 0(a0)
  BLT zero, a0, bb4
  # implict jump to bb3
bb3:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  FLD fs3, 40(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
bb4:
  ADD s0, zero, zero
  # implict jump to bb5
bb5:
  SLLIW a0, s0, 2
  ADDI t6, sp, 184
  ADD a0, t6, a0
  FLW fs0, 0(a0)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  ADDIW s0, s0, 1
  LA a0, N
  LW a0, 0(a0)
  BLT s0, a0, bb6
  JAL zero, bb3
bb6:
  JAL zero, bb5
bb7:
  ADD s0, zero, zero
  # implict jump to bb8
bb8:
  SLLIW a0, s0, 2
  ADDI t6, sp, 168
  ADD a0, t6, a0
  FLW fs0, 0(a0)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  ADDIW s0, s0, 1
  LA a0, N
  LW a0, 0(a0)
  BLT s0, a0, bb9
  JAL zero, bb2
bb9:
  JAL zero, bb8
bb10:
  ADD s0, zero, zero
  # implict jump to bb11
bb11:
  SLLIW a0, s0, 2
  ADDI t6, sp, 144
  ADD a0, t6, a0
  FLW fs0, 0(a0)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  ADDIW s0, s0, 1
  LA a0, N
  LW a0, 0(a0)
  BLT s0, a0, bb12
  JAL zero, bb1
bb12:
  JAL zero, bb11
