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
  ADDI sp, sp, -192
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSD fs2, 32(sp)
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
  FSW fs0, 40(sp)
  FSW fs0, 56(sp)
  FSW fs0, 72(sp)
  FSW fs0, 88(sp)
  FSW fs0, 104(sp)
  FSW fs0, 120(sp)
  ADDI a0, zero, 1
  FCVT.S.W fs1, a0
  FSW fs1, 44(sp)
  FSW fs1, 60(sp)
  FSW fs1, 76(sp)
  FSW fs1, 92(sp)
  FSW fs1, 108(sp)
  FSW fs1, 124(sp)
  ADDI a0, zero, 2
  FCVT.S.W fs2, a0
  FSW fs2, 48(sp)
  FSW fs2, 64(sp)
  FSW fs2, 80(sp)
  FSW fs2, 96(sp)
  FSW fs2, 112(sp)
  FSW fs2, 128(sp)
  FSW fs1, 168(sp)
  FSW fs2, 180(sp)
  FSW fs0, 140(sp)
  FSW fs0, 144(sp)
  FSW fs1, 160(sp)
  FSW fs2, 176(sp)
  FSW fs1, 164(sp)
  FSW fs2, 184(sp)
  FSW fs0, 136(sp)
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
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb4:
  ADD s0, zero, zero
  # implict jump to bb5
bb5:
  SLLIW a0, s0, 2
  ADDI t6, sp, 176
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
  ADDI t6, sp, 160
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
  ADDI t6, sp, 136
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
