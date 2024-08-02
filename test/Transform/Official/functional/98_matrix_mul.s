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
  ADDI sp, sp, -304
  SD ra, 32(sp)
  SD s0, 40(sp)
  SD s1, 48(sp)
  FSD fs0, 56(sp)
  FSD fs1, 64(sp)
  FSD fs2, 72(sp)
  FSD fs3, 80(sp)
  FSD fs4, 88(sp)
  FSD fs5, 96(sp)
  FSD fs6, 104(sp)
  FSD fs7, 112(sp)
  FSD fs8, 120(sp)
  FSD fs9, 128(sp)
  FSD fs10, 136(sp)
  FSD fs11, 144(sp)
  LA a0, N
  ADDI s0, zero, 3
  SW s0, 0(a0)
  LA a0, M
  ADDI s0, zero, 3
  SW s0, 0(a0)
  LA a0, L
  ADDI s0, zero, 3
  SW s0, 0(a0)
  ADD a0, zero, zero
  # implict jump to bb1
bb1:
  SLLIW s0, a0, 2
  ADDI t5, sp, 152
  ADD s1, t5, s0
  FCVT.S.W fs0, a0
  FSW fs0, 0(s1)
  ADDI t5, sp, 168
  ADD s1, t5, s0
  FSW fs0, 0(s1)
  ADDI t5, sp, 184
  ADD s1, t5, s0
  FSW fs0, 0(s1)
  ADDI t5, sp, 200
  ADD s1, t5, s0
  FSW fs0, 0(s1)
  ADDI t5, sp, 216
  ADD s1, t5, s0
  FSW fs0, 0(s1)
  ADDI t5, sp, 232
  ADD s0, t5, s0
  FSW fs0, 0(s0)
  ADDIW a0, a0, 1
  SLTI s0, a0, 3
  BNE s0, zero, bb15
  # implict jump to bb2
bb2:
  FLW fs0, 152(sp)
  FLW fs1, 200(sp)
  FSW fs1, 8(sp)
  FLW fs1, 8(sp)
  FMUL.S fs2, fs0, fs1
  FLW fs3, 156(sp)
  FLW fs4, 216(sp)
  FMUL.S fs5, fs3, fs4
  FADD.S fs2, fs2, fs5
  FLW fs5, 160(sp)
  FLW fs6, 232(sp)
  FMUL.S fs7, fs5, fs6
  FADD.S fs2, fs2, fs7
  FSW fs2, 248(sp)
  FLW fs2, 204(sp)
  FMUL.S fs7, fs0, fs2
  FLW fs8, 220(sp)
  FMUL.S fs9, fs3, fs8
  FADD.S fs7, fs7, fs9
  FLW fs9, 236(sp)
  FMUL.S fs10, fs5, fs9
  FADD.S fs7, fs7, fs10
  FSW fs7, 252(sp)
  FLW fs7, 208(sp)
  FMUL.S fs0, fs0, fs7
  FLW fs1, 224(sp)
  FSW fs1, 12(sp)
  FLW fs1, 12(sp)
  FMUL.S fs3, fs3, fs1
  FADD.S fs0, fs0, fs3
  FLW fs3, 240(sp)
  FMUL.S fs5, fs5, fs3
  FADD.S fs0, fs0, fs5
  FSW fs0, 256(sp)
  FLW fs0, 168(sp)
  FLW fs1, 8(sp)
  FMUL.S fs5, fs0, fs1
  FLW fs11, 172(sp)
  FMUL.S fs1, fs11, fs4
  FSW fs1, 16(sp)
  FLW fs1, 16(sp)
  FADD.S fs5, fs5, fs1
  FLW fs1, 176(sp)
  FSW fs1, 20(sp)
  FLW fs1, 20(sp)
  FMUL.S fs1, fs1, fs6
  FSW fs1, 24(sp)
  FLW fs1, 24(sp)
  FADD.S fs5, fs5, fs1
  FSW fs5, 272(sp)
  FMUL.S fs5, fs0, fs2
  FMUL.S fs1, fs11, fs8
  FSW fs1, 4(sp)
  FLW fs1, 4(sp)
  FADD.S fs5, fs5, fs1
  FLW fs1, 20(sp)
  FMUL.S fs1, fs1, fs9
  FSW fs1, 0(sp)
  FLW fs1, 0(sp)
  FADD.S fs5, fs5, fs1
  FSW fs5, 276(sp)
  FMUL.S fs0, fs0, fs7
  FLW fs1, 12(sp)
  FMUL.S fs5, fs11, fs1
  FADD.S fs0, fs0, fs5
  FLW fs1, 20(sp)
  FMUL.S fs5, fs1, fs3
  FADD.S fs0, fs0, fs5
  FSW fs0, 280(sp)
  FLW fs0, 184(sp)
  FLW fs1, 8(sp)
  FMUL.S fs1, fs0, fs1
  FLW fs5, 188(sp)
  FMUL.S fs4, fs5, fs4
  FADD.S fs1, fs1, fs4
  FLW fs4, 192(sp)
  FMUL.S fs6, fs4, fs6
  FADD.S fs1, fs1, fs6
  FSW fs1, 288(sp)
  FMUL.S fs1, fs0, fs2
  FMUL.S fs2, fs5, fs8
  FADD.S fs1, fs1, fs2
  FMUL.S fs2, fs4, fs9
  FADD.S fs1, fs1, fs2
  FSW fs1, 292(sp)
  FMUL.S fs0, fs0, fs7
  FLW fs1, 12(sp)
  FMUL.S fs1, fs5, fs1
  FADD.S fs0, fs0, fs1
  FMUL.S fs1, fs4, fs3
  FADD.S fs0, fs0, fs1
  FSW fs0, 296(sp)
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
  LD ra, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  FLD fs0, 56(sp)
  FLD fs1, 64(sp)
  FLD fs2, 72(sp)
  FLD fs3, 80(sp)
  FLD fs4, 88(sp)
  FLD fs5, 96(sp)
  FLD fs6, 104(sp)
  FLD fs7, 112(sp)
  FLD fs8, 120(sp)
  FLD fs9, 128(sp)
  FLD fs10, 136(sp)
  FLD fs11, 144(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
bb6:
  ADD a0, zero, zero
  # implict jump to bb7
bb7:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 288
  ADD a0, t5, a0
  FLW fs0, 0(a0)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  ADDIW a0, s0, 1
  LA s0, N
  LW s0, 0(s0)
  BLT a0, s0, bb8
  JAL zero, bb5
bb8:
  JAL zero, bb7
bb9:
  ADD a0, zero, zero
  # implict jump to bb10
bb10:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 272
  ADD a0, t5, a0
  FLW fs0, 0(a0)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  ADDIW a0, s0, 1
  LA s0, N
  LW s0, 0(s0)
  BLT a0, s0, bb11
  JAL zero, bb4
bb11:
  JAL zero, bb10
bb12:
  ADD a0, zero, zero
  # implict jump to bb13
bb13:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 248
  ADD a0, t5, a0
  FLW fs0, 0(a0)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  ADDIW a0, s0, 1
  LA s0, N
  LW s0, 0(s0)
  BLT a0, s0, bb14
  JAL zero, bb3
bb14:
  JAL zero, bb13
bb15:
  JAL zero, bb1
