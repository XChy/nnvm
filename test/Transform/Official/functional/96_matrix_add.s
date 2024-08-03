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
  LA s0, N
  ADDI a0, zero, 3
  SW a0, 0(s0)
  LA s0, M
  ADDI a0, zero, 3
  SW a0, 0(s0)
  LA a0, L
  ADDI s0, zero, 3
  SW s0, 0(a0)
  ADDI a0, zero, 0
  FCVT.S.W fs0, a0
  FSW fs0, 32(sp)
  FSW fs0, 48(sp)
  FSW fs0, 64(sp)
  FSW fs0, 80(sp)
  FSW fs0, 96(sp)
  FSW fs0, 112(sp)
  ADDI a0, zero, 1
  FCVT.S.W fs0, a0
  FSW fs0, 36(sp)
  FSW fs0, 52(sp)
  FSW fs0, 68(sp)
  FSW fs0, 84(sp)
  FSW fs0, 100(sp)
  FSW fs0, 116(sp)
  ADDI a0, zero, 2
  FCVT.S.W fs0, a0
  FSW fs0, 40(sp)
  FSW fs0, 56(sp)
  FSW fs0, 72(sp)
  FSW fs0, 88(sp)
  FSW fs0, 104(sp)
  FSW fs0, 120(sp)
  FLW fs1, 32(sp)
  FLW fs0, 80(sp)
  FADD.S fs0, fs1, fs0
  FSW fs0, 128(sp)
  FLW fs1, 48(sp)
  FLW fs0, 96(sp)
  FADD.S fs0, fs1, fs0
  FSW fs0, 152(sp)
  FLW fs0, 64(sp)
  FLW fs1, 112(sp)
  FADD.S fs0, fs0, fs1
  FSW fs0, 168(sp)
  FLW fs0, 36(sp)
  FLW fs1, 84(sp)
  FADD.S fs0, fs0, fs1
  FSW fs0, 132(sp)
  FLW fs1, 52(sp)
  FLW fs0, 100(sp)
  FADD.S fs0, fs1, fs0
  FSW fs0, 156(sp)
  FLW fs0, 68(sp)
  FLW fs1, 116(sp)
  FADD.S fs0, fs0, fs1
  FSW fs0, 172(sp)
  FLW fs0, 40(sp)
  FLW fs1, 88(sp)
  FADD.S fs0, fs0, fs1
  FSW fs0, 136(sp)
  FLW fs1, 56(sp)
  FLW fs0, 104(sp)
  FADD.S fs0, fs1, fs0
  FSW fs0, 160(sp)
  FLW fs1, 72(sp)
  FLW fs0, 120(sp)
  FADD.S fs0, fs1, fs0
  FSW fs0, 176(sp)
  LA a0, N
  LW s0, 0(a0)
  ADDI a0, zero, 0
  BLT a0, s0, bb10
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
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb4:
  ADD a0, zero, zero
  # implict jump to bb5
bb5:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 168
  ADD a0, t5, a0
  FLW fs0, 0(a0)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  ADDIW s0, s0, 1
  LA a0, N
  LW a0, 0(a0)
  BLT s0, a0, bb6
  JAL zero, bb3
bb6:
  ADD a0, s0, zero
  JAL zero, bb5
bb7:
  ADD a0, zero, zero
  # implict jump to bb8
bb8:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 152
  ADD a0, t5, a0
  FLW fs0, 0(a0)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  ADDIW s0, s0, 1
  LA a0, N
  LW a0, 0(a0)
  BLT s0, a0, bb9
  JAL zero, bb2
bb9:
  ADD a0, s0, zero
  JAL zero, bb8
bb10:
  ADD a0, zero, zero
  # implict jump to bb11
bb11:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 128
  ADD a0, t5, a0
  FLW fs0, 0(a0)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  ADDIW s0, s0, 1
  LA a0, N
  LW a0, 0(a0)
  BLT s0, a0, bb12
  JAL zero, bb1
bb12:
  ADD a0, s0, zero
  JAL zero, bb11
