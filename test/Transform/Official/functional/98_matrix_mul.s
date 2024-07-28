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
  SD s9, 80(sp)
  FSD fs0, 88(sp)
  FSD fs1, 96(sp)
  FSD fs2, 104(sp)
  FSD fs3, 112(sp)
  FSD fs4, 120(sp)
  FSD fs5, 128(sp)
  FSD fs6, 136(sp)
  FSD fs7, 144(sp)
  FSD fs8, 152(sp)
  FSD fs9, 160(sp)
  FSD fs10, 168(sp)
  FSD fs11, 176(sp)
  LA s4, N
  ADDI s5, zero, 3
  SW s5, 0(s4)
  LA s4, M
  ADDI s5, zero, 3
  SW s5, 0(s4)
  LA s4, L
  ADDI s5, zero, 3
  SW s5, 0(s4)
  ADDI s4, zero, 0
  SLTI s4, s4, 3
  BNE s4, zero, bb20
  # implict jump to bb1
bb1:
  FLW fs0, 184(sp)
  FLW fs1, 232(sp)
  FMUL.S fs2, fs0, fs1
  ADDI s5, sp, 188
  FLW fs3, 0(s5)
  FLW fs4, 248(sp)
  FMUL.S fs5, fs3, fs4
  FADD.S fs2, fs2, fs5
  ADDI s5, sp, 192
  FLW fs5, 0(s5)
  FLW fs6, 264(sp)
  FMUL.S fs7, fs5, fs6
  FADD.S fs2, fs2, fs7
  FSW fs2, 280(sp)
  ADDI s5, sp, 284
  ADDI s6, sp, 236
  FLW fs2, 0(s6)
  FMUL.S fs7, fs0, fs2
  ADDI s6, sp, 252
  FLW fs8, 0(s6)
  FMUL.S fs9, fs3, fs8
  FADD.S fs7, fs7, fs9
  ADDI s6, sp, 268
  FLW fs9, 0(s6)
  FMUL.S fs10, fs5, fs9
  FADD.S fs7, fs7, fs10
  FSW fs7, 0(s5)
  ADDI s5, sp, 288
  ADDI s6, sp, 240
  FLW fs7, 0(s6)
  FMUL.S fs0, fs0, fs7
  ADDI s6, sp, 256
  FLW fs10, 0(s6)
  FMUL.S fs3, fs3, fs10
  FADD.S fs0, fs0, fs3
  ADDI s6, sp, 272
  FLW fs3, 0(s6)
  FMUL.S fs5, fs5, fs3
  FADD.S fs0, fs0, fs5
  FSW fs0, 0(s5)
  FLW fs0, 200(sp)
  FMUL.S fs5, fs0, fs1
  ADDI s5, sp, 204
  FLW fs11, 0(s5)
  FMUL.S ft0, fs11, fs4
  FADD.S fs5, fs5, ft0
  ADDI s5, sp, 208
  FLW ft0, 0(s5)
  FMUL.S ft1, ft0, fs6
  FADD.S fs5, fs5, ft1
  FSW fs5, 304(sp)
  ADDI s5, sp, 308
  FMUL.S fs5, fs0, fs2
  FMUL.S ft1, fs11, fs8
  FADD.S fs5, fs5, ft1
  FMUL.S ft1, ft0, fs9
  FADD.S fs5, fs5, ft1
  FSW fs5, 0(s5)
  ADDI s5, sp, 312
  FMUL.S fs0, fs0, fs7
  FMUL.S fs5, fs11, fs10
  FADD.S fs0, fs0, fs5
  FMUL.S fs5, ft0, fs3
  FADD.S fs0, fs0, fs5
  FSW fs0, 0(s5)
  FLW fs0, 216(sp)
  FMUL.S fs1, fs0, fs1
  ADDI s5, sp, 220
  FLW fs5, 0(s5)
  FMUL.S fs4, fs5, fs4
  FADD.S fs1, fs1, fs4
  ADDI s5, sp, 224
  FLW fs4, 0(s5)
  FMUL.S fs6, fs4, fs6
  FADD.S fs1, fs1, fs6
  FSW fs1, 320(sp)
  ADDI s5, sp, 324
  FMUL.S fs1, fs0, fs2
  FMUL.S fs2, fs5, fs8
  FADD.S fs1, fs1, fs2
  FMUL.S fs2, fs4, fs9
  FADD.S fs1, fs1, fs2
  FSW fs1, 0(s5)
  ADDI s5, sp, 328
  FMUL.S fs0, fs0, fs7
  FMUL.S fs1, fs5, fs10
  FADD.S fs0, fs0, fs1
  FMUL.S fs1, fs4, fs3
  FADD.S fs0, fs0, fs1
  FSW fs0, 0(s5)
  LA s5, N
  LW s5, 0(s5)
  ADDI s6, zero, 0
  BLT s6, s5, bb15
  # implict jump to bb2
bb2:
  ADDI a0, zero, 10
  CALL putch
  LA s6, N
  LW s6, 0(s6)
  ADDI s7, zero, 0
  BLT s7, s6, bb10
  # implict jump to bb3
bb3:
  ADDI a0, zero, 10
  CALL putch
  LA s7, N
  LW s7, 0(s7)
  ADDI s8, zero, 0
  BLT s8, s7, bb5
  # implict jump to bb4
bb4:
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
  LD s9, 80(sp)
  FLD fs0, 88(sp)
  FLD fs1, 96(sp)
  FLD fs2, 104(sp)
  FLD fs3, 112(sp)
  FLD fs4, 120(sp)
  FLD fs5, 128(sp)
  FLD fs6, 136(sp)
  FLD fs7, 144(sp)
  FLD fs8, 152(sp)
  FLD fs9, 160(sp)
  FLD fs10, 168(sp)
  FLD fs11, 176(sp)
  ADDI sp, sp, 336
  JALR zero, 0(ra)
bb5:
  # implict jump to bb6
bb6:
  ADD s7, zero, zero
  # implict jump to bb7
bb7:
  ADD s8, s7, zero
  SLLIW s9, s8, 2
  ADDI t5, sp, 320
  ADD s9, t5, s9
  FLW fs0, 0(s9)
  FCVT.W.S s9, fs0, rtz
  ADD a0, s9, zero
  CALL putint
  ADDIW s2, s8, 1
  # implict jump to bb8
bb8:
  LA s8, N
  LW s8, 0(s8)
  BLT s2, s8, bb9
  JAL zero, bb4
bb9:
  ADD s7, s2, zero
  JAL zero, bb7
bb10:
  # implict jump to bb11
bb11:
  ADD s6, zero, zero
  # implict jump to bb12
bb12:
  ADD s7, s6, zero
  SLLIW s8, s7, 2
  ADDI t5, sp, 304
  ADD s8, t5, s8
  FLW fs0, 0(s8)
  FCVT.W.S s8, fs0, rtz
  ADD a0, s8, zero
  CALL putint
  ADDIW s0, s7, 1
  # implict jump to bb13
bb13:
  LA s7, N
  LW s7, 0(s7)
  BLT s0, s7, bb14
  JAL zero, bb3
bb14:
  ADD s6, s0, zero
  JAL zero, bb12
bb15:
  # implict jump to bb16
bb16:
  ADD s5, zero, zero
  # implict jump to bb17
bb17:
  ADD s6, s5, zero
  SLLIW s7, s6, 2
  ADDI t5, sp, 280
  ADD s7, t5, s7
  FLW fs0, 0(s7)
  FCVT.W.S s7, fs0, rtz
  ADD a0, s7, zero
  CALL putint
  ADDIW s3, s6, 1
  # implict jump to bb18
bb18:
  LA s6, N
  LW s6, 0(s6)
  BLT s3, s6, bb19
  JAL zero, bb2
bb19:
  ADD s5, s3, zero
  JAL zero, bb17
bb20:
  # implict jump to bb21
bb21:
  ADD s4, zero, zero
  # implict jump to bb22
bb22:
  ADD s5, s4, zero
  SLLIW s6, s5, 2
  ADDI t5, sp, 184
  ADD s7, t5, s6
  FCVT.S.W fs0, s5
  FSW fs0, 0(s7)
  ADDI t5, sp, 200
  ADD s7, t5, s6
  FSW fs0, 0(s7)
  ADDI t5, sp, 216
  ADD s7, t5, s6
  FSW fs0, 0(s7)
  ADDI t5, sp, 232
  ADD s7, t5, s6
  FSW fs0, 0(s7)
  ADDI t5, sp, 248
  ADD s7, t5, s6
  FSW fs0, 0(s7)
  ADDI t5, sp, 264
  ADD s6, t5, s6
  FSW fs0, 0(s6)
  ADDIW s1, s5, 1
  # implict jump to bb23
bb23:
  SLTI s5, s1, 3
  BNE s5, zero, bb24
  JAL zero, bb1
bb24:
  ADD s4, s1, zero
  JAL zero, bb22
mul:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  FSD fs0, 24(sp)
  FSD fs1, 32(sp)
  FSD fs2, 40(sp)
  ADD s0, a0, zero
  ADDI t5, sp, 48
  ADD s1, t5, zero
  LD s1, 0(s1)
  FLW fs0, 0(s0)
  FLW fs1, 0(a3)
  FMUL.S fs0, fs0, fs1
  FLW fs1, 4(s0)
  FLW fs2, 0(a4)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FLW fs1, 8(s0)
  FLW fs2, 0(a5)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FSW fs0, 0(a6)
  FLW fs0, 0(s0)
  FLW fs1, 4(a3)
  FMUL.S fs0, fs0, fs1
  FLW fs1, 4(s0)
  FLW fs2, 4(a4)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FLW fs1, 8(s0)
  FLW fs2, 4(a5)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FSW fs0, 4(a6)
  FLW fs0, 0(s0)
  FLW fs1, 8(a3)
  FMUL.S fs0, fs0, fs1
  FLW fs1, 4(s0)
  FLW fs2, 8(a4)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FLW fs1, 8(s0)
  FLW fs2, 8(a5)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FSW fs0, 8(a6)
  FLW fs0, 0(a1)
  FLW fs1, 0(a3)
  FMUL.S fs0, fs0, fs1
  FLW fs1, 4(a1)
  FLW fs2, 0(a4)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FLW fs1, 8(a1)
  FLW fs2, 0(a5)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FSW fs0, 0(a7)
  FLW fs0, 0(a1)
  FLW fs1, 4(a3)
  FMUL.S fs0, fs0, fs1
  FLW fs1, 4(a1)
  FLW fs2, 4(a4)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FLW fs1, 8(a1)
  FLW fs2, 4(a5)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FSW fs0, 4(a7)
  FLW fs0, 0(a1)
  FLW fs1, 8(a3)
  FMUL.S fs0, fs0, fs1
  FLW fs1, 4(a1)
  FLW fs2, 8(a4)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FLW fs1, 8(a1)
  FLW fs2, 8(a5)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FSW fs0, 8(a7)
  FLW fs0, 0(a2)
  FLW fs1, 0(a3)
  FMUL.S fs0, fs0, fs1
  FLW fs1, 4(a2)
  FLW fs2, 0(a4)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FLW fs1, 8(a2)
  FLW fs2, 0(a5)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FSW fs0, 0(s1)
  FLW fs0, 0(a2)
  FLW fs1, 4(a3)
  FMUL.S fs0, fs0, fs1
  FLW fs1, 4(a2)
  FLW fs2, 4(a4)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FLW fs1, 8(a2)
  FLW fs2, 4(a5)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FSW fs0, 4(s1)
  FLW fs0, 0(a2)
  FLW fs1, 8(a3)
  FMUL.S fs0, fs0, fs1
  FLW fs1, 4(a2)
  FLW fs2, 8(a4)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FLW fs1, 8(a2)
  FLW fs2, 8(a5)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FSW fs0, 8(s1)
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  FLD fs0, 24(sp)
  FLD fs1, 32(sp)
  FLD fs2, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
