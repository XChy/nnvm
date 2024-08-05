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
  ADDI sp, sp, -112
  SD ra, 56(sp)
  SD s0, 64(sp)
  FSD fs0, 72(sp)
  FSD fs1, 80(sp)
  FSD fs2, 88(sp)
  FSD fs3, 96(sp)
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
  ADDI a0, zero, 1
  FCVT.S.W fs1, a0
  ADDI a0, zero, 2
  FCVT.S.W fs2, a0
  FADD.S fs3, fs0, fs0
  FSW fs3, 32(sp)
  FADD.S fs3, fs0, fs0
  FSW fs3, 16(sp)
  FADD.S fs0, fs0, fs0
  FSW fs0, 0(sp)
  FADD.S fs0, fs1, fs1
  FSW fs0, 36(sp)
  FADD.S fs0, fs1, fs1
  FSW fs0, 20(sp)
  FADD.S fs0, fs1, fs1
  FSW fs0, 4(sp)
  FADD.S fs0, fs2, fs2
  FSW fs0, 40(sp)
  FADD.S fs0, fs2, fs2
  FSW fs0, 24(sp)
  FADD.S fs0, fs2, fs2
  FSW fs0, 8(sp)
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
  LD ra, 56(sp)
  LD s0, 64(sp)
  FLD fs0, 72(sp)
  FLD fs1, 80(sp)
  FLD fs2, 88(sp)
  FLD fs3, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb4:
  ADD s0, zero, zero
  # implict jump to bb5
bb5:
  SLLIW a0, s0, 2
  ADDI t6, sp, 0
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
  ADDI t6, sp, 16
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
  ADDI t6, sp, 32
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
