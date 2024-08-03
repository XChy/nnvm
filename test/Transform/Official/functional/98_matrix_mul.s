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
  SD ra, 24(sp)
  SD s0, 32(sp)
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
  FSD fs11, 128(sp)
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
  FSW fs0, 136(sp)
  FSW fs0, 152(sp)
  FSW fs0, 168(sp)
  FSW fs0, 184(sp)
  FSW fs0, 200(sp)
  FSW fs0, 216(sp)
  ADDI a0, zero, 1
  FCVT.S.W fs0, a0
  FSW fs0, 140(sp)
  FSW fs0, 156(sp)
  FSW fs0, 172(sp)
  FSW fs0, 188(sp)
  FSW fs0, 204(sp)
  FSW fs0, 220(sp)
  ADDI a0, zero, 2
  FCVT.S.W fs0, a0
  FSW fs0, 144(sp)
  FSW fs0, 160(sp)
  FSW fs0, 176(sp)
  FSW fs0, 192(sp)
  FSW fs0, 208(sp)
  FSW fs0, 224(sp)
  FLW fs2, 136(sp)
  FLW fs6, 184(sp)
  FMUL.S fs1, fs2, fs6
  FLW fs10, 140(sp)
  FLW fs0, 200(sp)
  FSW fs0, 0(sp)
  FLW fs0, 0(sp)
  FMUL.S fs0, fs10, fs0
  FADD.S fs1, fs1, fs0
  FLW fs4, 144(sp)
  FLW fs0, 216(sp)
  FSW fs0, 4(sp)
  FLW fs0, 4(sp)
  FMUL.S fs0, fs4, fs0
  FADD.S fs0, fs1, fs0
  FSW fs0, 232(sp)
  FLW fs8, 188(sp)
  FMUL.S fs0, fs2, fs8
  FLW fs3, 204(sp)
  FMUL.S fs1, fs10, fs3
  FADD.S fs1, fs0, fs1
  FLW fs9, 220(sp)
  FMUL.S fs0, fs4, fs9
  FADD.S fs0, fs1, fs0
  FSW fs0, 236(sp)
  FLW fs5, 192(sp)
  FMUL.S fs0, fs2, fs5
  FLW fs7, 208(sp)
  FMUL.S fs1, fs10, fs7
  FADD.S fs1, fs0, fs1
  FLW fs2, 224(sp)
  FMUL.S fs0, fs4, fs2
  FADD.S fs0, fs1, fs0
  FSW fs0, 240(sp)
  FLW fs4, 152(sp)
  FMUL.S fs1, fs4, fs6
  FLW fs10, 156(sp)
  FLW fs0, 0(sp)
  FMUL.S fs0, fs10, fs0
  FADD.S fs11, fs1, fs0
  FLW fs0, 160(sp)
  FSW fs0, 8(sp)
  FLW fs1, 4(sp)
  FLW fs0, 8(sp)
  FMUL.S fs0, fs0, fs1
  FADD.S fs0, fs11, fs0
  FSW fs0, 256(sp)
  FMUL.S fs0, fs4, fs8
  FMUL.S fs1, fs10, fs3
  FADD.S fs1, fs0, fs1
  FLW fs0, 8(sp)
  FMUL.S fs0, fs0, fs9
  FADD.S fs0, fs1, fs0
  FSW fs0, 260(sp)
  FMUL.S fs0, fs4, fs5
  FMUL.S fs1, fs10, fs7
  FADD.S fs1, fs0, fs1
  FLW fs0, 8(sp)
  FMUL.S fs0, fs0, fs2
  FADD.S fs0, fs1, fs0
  FSW fs0, 264(sp)
  FLW fs4, 168(sp)
  FMUL.S fs1, fs4, fs6
  FLW fs6, 172(sp)
  FLW fs0, 0(sp)
  FMUL.S fs0, fs6, fs0
  FADD.S fs1, fs1, fs0
  FLW fs10, 176(sp)
  FLW fs0, 4(sp)
  FMUL.S fs0, fs10, fs0
  FADD.S fs0, fs1, fs0
  FSW fs0, 272(sp)
  FMUL.S fs1, fs4, fs8
  FMUL.S fs0, fs6, fs3
  FADD.S fs0, fs1, fs0
  FMUL.S fs1, fs10, fs9
  FADD.S fs0, fs0, fs1
  FSW fs0, 276(sp)
  FMUL.S fs1, fs4, fs5
  FMUL.S fs0, fs6, fs7
  FADD.S fs0, fs1, fs0
  FMUL.S fs1, fs10, fs2
  FADD.S fs0, fs0, fs1
  FSW fs0, 280(sp)
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
  LD ra, 24(sp)
  LD s0, 32(sp)
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
  FLD fs11, 128(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
bb4:
  ADD a0, zero, zero
  # implict jump to bb5
bb5:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 272
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
  ADDI t5, sp, 256
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
  ADDI t5, sp, 232
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
