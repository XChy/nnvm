.global main
.global mul
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
  ADDI sp, sp, -336
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  FSD fs0, 80(sp)
  FSD fs1, 88(sp)
  FSD fs2, 96(sp)
  FSD fs3, 104(sp)
  FSD fs4, 112(sp)
  FSD fs5, 120(sp)
  FSD fs6, 128(sp)
  FSD fs7, 136(sp)
  FSD fs8, 144(sp)
  FSD fs9, 152(sp)
  FSD fs10, 160(sp)
  FSD fs11, 168(sp)
  LA s0, N
  ADDI s1, zero, 3
  SW s1, 0(s0)
  LA s0, M
  ADDI s1, zero, 3
  SW s1, 0(s0)
  LA s0, L
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADD s0, zero, zero
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  SLTI s2, s1, 3
  BNE s2, zero, bb12
  # implict jump to bb2
bb2:
  FLW fs0, 176(sp)
  FLW fs1, 224(sp)
  FMUL.S fs2, fs0, fs1
  ADDI s2, sp, 180
  FLW fs3, 0(s2)
  FLW fs4, 240(sp)
  FMUL.S fs5, fs3, fs4
  FADD.S fs2, fs2, fs5
  ADDI s2, sp, 184
  FLW fs5, 0(s2)
  FLW fs6, 256(sp)
  FMUL.S fs7, fs5, fs6
  FADD.S fs2, fs2, fs7
  FSW fs2, 272(sp)
  ADDI s2, sp, 276
  ADDI s3, sp, 228
  FLW fs2, 0(s3)
  FMUL.S fs7, fs0, fs2
  ADDI s3, sp, 244
  FLW fs8, 0(s3)
  FMUL.S fs9, fs3, fs8
  FADD.S fs7, fs7, fs9
  ADDI s3, sp, 260
  FLW fs9, 0(s3)
  FMUL.S fs10, fs5, fs9
  FADD.S fs7, fs7, fs10
  FSW fs7, 0(s2)
  ADDI s2, sp, 280
  ADDI s3, sp, 232
  FLW fs7, 0(s3)
  FMUL.S fs0, fs0, fs7
  ADDI s3, sp, 248
  FLW fs10, 0(s3)
  FMUL.S fs3, fs3, fs10
  FADD.S fs0, fs0, fs3
  ADDI s3, sp, 264
  FLW fs3, 0(s3)
  FMUL.S fs5, fs5, fs3
  FADD.S fs0, fs0, fs5
  FSW fs0, 0(s2)
  FLW fs0, 192(sp)
  FMUL.S fs5, fs0, fs1
  ADDI s2, sp, 196
  FLW fs11, 0(s2)
  FMUL.S ft0, fs11, fs4
  FADD.S fs5, fs5, ft0
  ADDI s2, sp, 200
  FLW ft0, 0(s2)
  FMUL.S ft1, ft0, fs6
  FADD.S fs5, fs5, ft1
  FSW fs5, 296(sp)
  ADDI s2, sp, 300
  FMUL.S fs5, fs0, fs2
  FMUL.S ft1, fs11, fs8
  FADD.S fs5, fs5, ft1
  FMUL.S ft1, ft0, fs9
  FADD.S fs5, fs5, ft1
  FSW fs5, 0(s2)
  ADDI s2, sp, 304
  FMUL.S fs0, fs0, fs7
  FMUL.S fs5, fs11, fs10
  FADD.S fs0, fs0, fs5
  FMUL.S fs5, ft0, fs3
  FADD.S fs0, fs0, fs5
  FSW fs0, 0(s2)
  FLW fs0, 208(sp)
  FMUL.S fs1, fs0, fs1
  ADDI s2, sp, 212
  FLW fs5, 0(s2)
  FMUL.S fs4, fs5, fs4
  FADD.S fs1, fs1, fs4
  ADDI s2, sp, 216
  FLW fs4, 0(s2)
  FMUL.S fs6, fs4, fs6
  FADD.S fs1, fs1, fs6
  FSW fs1, 312(sp)
  ADDI s2, sp, 316
  FMUL.S fs1, fs0, fs2
  FMUL.S fs2, fs5, fs8
  FADD.S fs1, fs1, fs2
  FMUL.S fs2, fs4, fs9
  FADD.S fs1, fs1, fs2
  FSW fs1, 0(s2)
  ADDI s2, sp, 320
  FMUL.S fs0, fs0, fs7
  FMUL.S fs1, fs5, fs10
  FADD.S fs0, fs0, fs1
  FMUL.S fs1, fs4, fs3
  FADD.S fs0, fs0, fs1
  FSW fs0, 0(s2)
  ADD s2, zero, zero
  # implict jump to bb3
bb3:
  ADD s3, s2, zero
  LA s4, N
  LW s4, 0(s4)
  BLT s3, s4, bb11
  # implict jump to bb4
bb4:
  ADDI a0, zero, 10
  CALL putch
  ADD s4, zero, zero
  # implict jump to bb5
bb5:
  ADD s5, s4, zero
  LA s6, N
  LW s6, 0(s6)
  BLT s5, s6, bb10
  # implict jump to bb6
bb6:
  ADDI a0, zero, 10
  CALL putch
  ADD s6, zero, zero
  # implict jump to bb7
bb7:
  ADD s7, s6, zero
  LA s8, N
  LW s8, 0(s8)
  BLT s7, s8, bb9
  # implict jump to bb8
bb8:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  FLD fs0, 80(sp)
  FLD fs1, 88(sp)
  FLD fs2, 96(sp)
  FLD fs3, 104(sp)
  FLD fs4, 112(sp)
  FLD fs5, 120(sp)
  FLD fs6, 128(sp)
  FLD fs7, 136(sp)
  FLD fs8, 144(sp)
  FLD fs9, 152(sp)
  FLD fs10, 160(sp)
  FLD fs11, 168(sp)
  ADDI sp, sp, 336
  JALR zero, 0(ra)
bb9:
  SLLIW s8, s7, 2
  ADDI t5, sp, 312
  ADD s8, t5, s8
  FLW fs0, 0(s8)
  FCVT.W.S s8, fs0, rtz
  ADD a0, s8, zero
  CALL putint
  ADDIW s7, s7, 1
  ADD s6, s7, zero
  JAL zero, bb7
bb10:
  SLLIW s6, s5, 2
  ADDI t5, sp, 296
  ADD s6, t5, s6
  FLW fs0, 0(s6)
  FCVT.W.S s6, fs0, rtz
  ADD a0, s6, zero
  CALL putint
  ADDIW s5, s5, 1
  ADD s4, s5, zero
  JAL zero, bb5
bb11:
  SLLIW s4, s3, 2
  ADDI t5, sp, 272
  ADD s4, t5, s4
  FLW fs0, 0(s4)
  FCVT.W.S s4, fs0, rtz
  ADD a0, s4, zero
  CALL putint
  ADDIW s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb3
bb12:
  SLLIW s2, s1, 2
  ADDI t5, sp, 176
  ADD s3, t5, s2
  FCVT.S.W fs0, s1
  FSW fs0, 0(s3)
  ADDI t5, sp, 192
  ADD s3, t5, s2
  FSW fs0, 0(s3)
  ADDI t5, sp, 208
  ADD s3, t5, s2
  FSW fs0, 0(s3)
  ADDI t5, sp, 224
  ADD s3, t5, s2
  FSW fs0, 0(s3)
  ADDI t5, sp, 240
  ADD s3, t5, s2
  FSW fs0, 0(s3)
  ADDI t5, sp, 256
  ADD s2, t5, s2
  FSW fs0, 0(s2)
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb1
mul:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  FSD fs0, 88(sp)
  FSD fs1, 96(sp)
  FSD fs2, 104(sp)
  ADD s0, a0, zero
  ADDI t5, sp, 112
  ADD s1, t5, zero
  LD s1, 0(s1)
  FLW fs0, 0(s0)
  FLW fs1, 0(a3)
  FMUL.S fs0, fs0, fs1
  ADDI s2, s0, 4
  FLW fs1, 0(s2)
  FLW fs2, 0(a4)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  ADDI s3, s0, 8
  FLW fs1, 0(s3)
  FLW fs2, 0(a5)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FSW fs0, 0(a6)
  ADDI s4, a6, 4
  FLW fs0, 0(s0)
  ADDI s5, a3, 4
  FLW fs1, 0(s5)
  FMUL.S fs0, fs0, fs1
  FLW fs1, 0(s2)
  ADDI s6, a4, 4
  FLW fs2, 0(s6)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FLW fs1, 0(s3)
  ADDI s7, a5, 4
  FLW fs2, 0(s7)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FSW fs0, 0(s4)
  ADDI s4, a6, 8
  FLW fs0, 0(s0)
  ADDI s0, a3, 8
  FLW fs1, 0(s0)
  FMUL.S fs0, fs0, fs1
  FLW fs1, 0(s2)
  ADDI s2, a4, 8
  FLW fs2, 0(s2)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FLW fs1, 0(s3)
  ADDI s3, a5, 8
  FLW fs2, 0(s3)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FSW fs0, 0(s4)
  FLW fs0, 0(a1)
  FLW fs1, 0(a3)
  FMUL.S fs0, fs0, fs1
  ADDI s4, a1, 4
  FLW fs1, 0(s4)
  FLW fs2, 0(a4)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  ADDI s8, a1, 8
  FLW fs1, 0(s8)
  FLW fs2, 0(a5)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FSW fs0, 0(a7)
  ADDI s9, a7, 4
  FLW fs0, 0(a1)
  FLW fs1, 0(s5)
  FMUL.S fs0, fs0, fs1
  FLW fs1, 0(s4)
  FLW fs2, 0(s6)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FLW fs1, 0(s8)
  FLW fs2, 0(s7)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FSW fs0, 0(s9)
  ADDI s9, a7, 8
  FLW fs0, 0(a1)
  FLW fs1, 0(s0)
  FMUL.S fs0, fs0, fs1
  FLW fs1, 0(s4)
  FLW fs2, 0(s2)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FLW fs1, 0(s8)
  FLW fs2, 0(s3)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FSW fs0, 0(s9)
  FLW fs0, 0(a2)
  FLW fs1, 0(a3)
  FMUL.S fs0, fs0, fs1
  ADDI s4, a2, 4
  FLW fs1, 0(s4)
  FLW fs2, 0(a4)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  ADDI s8, a2, 8
  FLW fs1, 0(s8)
  FLW fs2, 0(a5)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FSW fs0, 0(s1)
  ADDI s9, s1, 4
  FLW fs0, 0(a2)
  FLW fs1, 0(s5)
  FMUL.S fs0, fs0, fs1
  FLW fs1, 0(s4)
  FLW fs2, 0(s6)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FLW fs1, 0(s8)
  FLW fs2, 0(s7)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FSW fs0, 0(s9)
  ADDI s1, s1, 8
  FLW fs0, 0(a2)
  FLW fs1, 0(s0)
  FMUL.S fs0, fs0, fs1
  FLW fs1, 0(s4)
  FLW fs2, 0(s2)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FLW fs1, 0(s8)
  FLW fs2, 0(s3)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FSW fs0, 0(s1)
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  FLD fs0, 88(sp)
  FLD fs1, 96(sp)
  FLD fs2, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
