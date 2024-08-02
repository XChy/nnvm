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
  ADDI sp, sp, -288
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  FSD fs0, 40(sp)
  FSD fs1, 48(sp)
  FSD fs2, 56(sp)
  FSD fs3, 64(sp)
  FSD fs4, 72(sp)
  FSD fs5, 80(sp)
  FSD fs6, 88(sp)
  FSD fs7, 96(sp)
  FSD fs8, 104(sp)
  FSD fs9, 112(sp)
  FSD fs10, 120(sp)
  LA s0, N
  ADDI a0, zero, 3
  SW a0, 0(s0)
  LA s0, M
  ADDI a0, zero, 3
  SW a0, 0(s0)
  LA a0, L
  ADDI s0, zero, 3
  SW s0, 0(a0)
  ADD a0, zero, zero
  # implict jump to bb1
bb1:
  ADD s0, a0, zero
  SLLIW s1, s0, 2
  ADDI a0, sp, 128
  ADD a0, a0, s1
  FCVT.S.W fs0, s0
  FSW fs0, 0(a0)
  ADDI a0, sp, 144
  ADD a0, a0, s1
  FSW fs0, 0(a0)
  ADDI a0, sp, 160
  ADD a0, a0, s1
  FSW fs0, 0(a0)
  ADDI a0, sp, 176
  ADD a0, a0, s1
  FSW fs0, 0(a0)
  ADDI a0, sp, 192
  ADD a0, a0, s1
  FSW fs0, 0(a0)
  ADDI a0, sp, 208
  ADD a0, a0, s1
  FSW fs0, 0(a0)
  ADDIW a0, s0, 1
  SLTI s0, a0, 3
  BNE s0, zero, bb15
  # implict jump to bb2
bb2:
  FLW fs4, 128(sp)
  FLW fs0, 176(sp)
  FSW fs0, 4(sp)
  FLW fs0, 4(sp)
  FMUL.S fs1, fs4, fs0
  FLW fs9, 132(sp)
  FLW fs0, 192(sp)
  FSW fs0, 0(sp)
  FLW fs0, 0(sp)
  FMUL.S fs0, fs9, fs0
  FADD.S fs0, fs1, fs0
  FLW fs3, 136(sp)
  FLW fs1, 208(sp)
  FMUL.S fs2, fs3, fs1
  FADD.S fs0, fs0, fs2
  FSW fs0, 224(sp)
  FLW fs7, 180(sp)
  FMUL.S fs2, fs4, fs7
  FLW fs6, 196(sp)
  FMUL.S fs0, fs9, fs6
  FADD.S fs0, fs2, fs0
  FLW fs5, 212(sp)
  FMUL.S fs2, fs3, fs5
  FADD.S fs0, fs0, fs2
  FSW fs0, 228(sp)
  FLW fs8, 184(sp)
  FMUL.S fs2, fs4, fs8
  FLW fs0, 200(sp)
  FSW fs0, 12(sp)
  FLW fs0, 12(sp)
  FMUL.S fs0, fs9, fs0
  FADD.S fs0, fs2, fs0
  FLW fs9, 216(sp)
  FMUL.S fs2, fs3, fs9
  FADD.S fs0, fs0, fs2
  FSW fs0, 232(sp)
  FLW fs4, 144(sp)
  FLW fs0, 4(sp)
  FMUL.S fs3, fs4, fs0
  FLW fs2, 148(sp)
  FLW fs0, 0(sp)
  FMUL.S fs0, fs2, fs0
  FADD.S fs0, fs3, fs0
  FLW fs3, 152(sp)
  FMUL.S fs10, fs3, fs1
  FADD.S fs0, fs0, fs10
  FSW fs0, 248(sp)
  FMUL.S fs0, fs4, fs7
  FMUL.S fs10, fs2, fs6
  FADD.S fs10, fs0, fs10
  FMUL.S fs0, fs3, fs5
  FADD.S fs0, fs10, fs0
  FSW fs0, 252(sp)
  FMUL.S fs4, fs4, fs8
  FLW fs0, 12(sp)
  FMUL.S fs0, fs2, fs0
  FADD.S fs2, fs4, fs0
  FMUL.S fs0, fs3, fs9
  FADD.S fs0, fs2, fs0
  FSW fs0, 256(sp)
  FLW fs3, 160(sp)
  FLW fs0, 4(sp)
  FMUL.S fs2, fs3, fs0
  FLW fs10, 164(sp)
  FLW fs0, 0(sp)
  FMUL.S fs0, fs10, fs0
  FADD.S fs4, fs2, fs0
  FLW fs2, 168(sp)
  FMUL.S fs0, fs2, fs1
  FADD.S fs0, fs4, fs0
  FSW fs0, 264(sp)
  FMUL.S fs1, fs3, fs7
  FMUL.S fs0, fs10, fs6
  FADD.S fs0, fs1, fs0
  FMUL.S fs1, fs2, fs5
  FADD.S fs0, fs0, fs1
  FSW fs0, 268(sp)
  FMUL.S fs1, fs3, fs8
  FLW fs0, 12(sp)
  FMUL.S fs0, fs10, fs0
  FADD.S fs0, fs1, fs0
  FMUL.S fs1, fs2, fs9
  FADD.S fs0, fs0, fs1
  FSW fs0, 272(sp)
  LA a0, N
  LW a0, 0(a0)
  BLT zero, a0, bb12
  # implict jump to bb3
bb3:
  ADDI a0, zero, 10
  CALL putch
  LA a0, N
  LW a0, 0(a0)
  BLT zero, a0, bb9
  # implict jump to bb4
bb4:
  ADDI a0, zero, 10
  CALL putch
  LA a0, N
  LW a0, 0(a0)
  BLT zero, a0, bb6
  # implict jump to bb5
bb5:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  FLD fs0, 40(sp)
  FLD fs1, 48(sp)
  FLD fs2, 56(sp)
  FLD fs3, 64(sp)
  FLD fs4, 72(sp)
  FLD fs5, 80(sp)
  FLD fs6, 88(sp)
  FLD fs7, 96(sp)
  FLD fs8, 104(sp)
  FLD fs9, 112(sp)
  FLD fs10, 120(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
bb6:
  ADD a0, zero, zero
  # implict jump to bb7
bb7:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 264
  ADD a0, t5, a0
  FLW fs0, 0(a0)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  ADDIW s0, s0, 1
  LA a0, N
  LW a0, 0(a0)
  BLT s0, a0, bb8
  JAL zero, bb5
bb8:
  ADD a0, s0, zero
  JAL zero, bb7
bb9:
  ADD a0, zero, zero
  # implict jump to bb10
bb10:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 248
  ADD a0, t5, a0
  FLW fs0, 0(a0)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  ADDIW s0, s0, 1
  LA a0, N
  LW a0, 0(a0)
  BLT s0, a0, bb11
  JAL zero, bb4
bb11:
  ADD a0, s0, zero
  JAL zero, bb10
bb12:
  ADD a0, zero, zero
  # implict jump to bb13
bb13:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 224
  ADD a0, t5, a0
  FLW fs0, 0(a0)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  ADDIW s0, s0, 1
  LA a0, N
  LW a0, 0(a0)
  BLT s0, a0, bb14
  JAL zero, bb3
bb14:
  ADD a0, s0, zero
  JAL zero, bb13
bb15:
  JAL zero, bb1
