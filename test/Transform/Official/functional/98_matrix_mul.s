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
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSD fs2, 32(sp)
  FSD fs3, 40(sp)
  FSD fs4, 48(sp)
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
  FMUL.S fs3, fs0, fs0
  FMUL.S fs4, fs1, fs0
  FADD.S fs3, fs3, fs4
  FMUL.S fs4, fs2, fs0
  FADD.S fs3, fs3, fs4
  FSW fs3, 56(sp)
  FMUL.S fs3, fs0, fs1
  FMUL.S fs4, fs1, fs1
  FADD.S fs3, fs3, fs4
  FMUL.S fs4, fs2, fs1
  FADD.S fs3, fs3, fs4
  FSW fs3, 60(sp)
  FMUL.S fs3, fs0, fs2
  FMUL.S fs4, fs1, fs2
  FADD.S fs3, fs3, fs4
  FMUL.S fs4, fs2, fs2
  FADD.S fs3, fs3, fs4
  FSW fs3, 64(sp)
  FMUL.S fs3, fs0, fs0
  FMUL.S fs4, fs1, fs0
  FADD.S fs3, fs3, fs4
  FMUL.S fs4, fs2, fs0
  FADD.S fs3, fs3, fs4
  FSW fs3, 80(sp)
  FMUL.S fs3, fs0, fs1
  FMUL.S fs4, fs1, fs1
  FADD.S fs3, fs3, fs4
  FMUL.S fs4, fs2, fs1
  FADD.S fs3, fs3, fs4
  FSW fs3, 84(sp)
  FMUL.S fs3, fs0, fs2
  FMUL.S fs4, fs1, fs2
  FADD.S fs3, fs3, fs4
  FMUL.S fs4, fs2, fs2
  FADD.S fs3, fs3, fs4
  FSW fs3, 88(sp)
  FMUL.S fs3, fs0, fs0
  FMUL.S fs4, fs1, fs0
  FADD.S fs3, fs3, fs4
  FMUL.S fs4, fs2, fs0
  FADD.S fs3, fs3, fs4
  FSW fs3, 96(sp)
  FMUL.S fs3, fs0, fs1
  FMUL.S fs4, fs1, fs1
  FADD.S fs3, fs3, fs4
  FMUL.S fs4, fs2, fs1
  FADD.S fs3, fs3, fs4
  FSW fs3, 100(sp)
  FMUL.S fs0, fs0, fs2
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FMUL.S fs1, fs2, fs2
  FADD.S fs0, fs0, fs1
  FSW fs0, 104(sp)
  ADDI a0, zero, 1
  BNE a0, zero, bb10
  # implict jump to bb1
bb1:   # loop depth 0
  ADDI a0, zero, 10
  CALL putch
  LA a0, N
  LW a0, 0(a0)
  BLT zero, a0, bb7
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI a0, zero, 10
  CALL putch
  LA a0, N
  LW a0, 0(a0)
  BLT zero, a0, bb4
  # implict jump to bb3
bb3:   # loop depth 0
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  FLD fs3, 40(sp)
  FLD fs4, 48(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb4:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  SLLIW a0, s0, 2
  ADDI t6, sp, 96
  ADD a0, t6, a0
  FLW fs0, 0(a0)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  ADDIW s0, s0, 1
  LA a0, N
  LW a0, 0(a0)
  BLT s0, a0, bb6
  JAL zero, bb3
bb6:   # loop depth 1433607224
  JAL zero, bb5
bb7:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb8
bb8:   # loop depth 1
  SLLIW a0, s0, 2
  ADDI t6, sp, 80
  ADD a0, t6, a0
  FLW fs0, 0(a0)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  ADDIW s0, s0, 1
  LA a0, N
  LW a0, 0(a0)
  BLT s0, a0, bb9
  JAL zero, bb2
bb9:   # loop depth 0
  JAL zero, bb8
bb10:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb11
bb11:   # loop depth 1
  SLLIW a0, s0, 2
  ADDI t6, sp, 56
  ADD a0, t6, a0
  FLW fs0, 0(a0)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  ADDIW s0, s0, 1
  LA a0, N
  LW a0, 0(a0)
  BLT s0, a0, bb12
  JAL zero, bb1
bb12:   # loop depth 1433566136
  JAL zero, bb11
