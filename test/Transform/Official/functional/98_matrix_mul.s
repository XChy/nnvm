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
  SLTI s2, s1, 3
  BNE s2, zero, bb15
  # implict jump to bb2
bb2:
  FLW fs0, 176(sp)
  FLW fs1, 224(sp)
  FMUL.S fs2, fs0, fs1
  FLW fs3, 180(sp)
  FLW fs4, 240(sp)
  FMUL.S fs5, fs3, fs4
  FADD.S fs2, fs2, fs5
  FLW fs5, 184(sp)
  FLW fs6, 256(sp)
  FMUL.S fs7, fs5, fs6
  FADD.S fs2, fs2, fs7
  FSW fs2, 272(sp)
  FLW fs2, 228(sp)
  FMUL.S fs7, fs0, fs2
  FLW fs8, 244(sp)
  FMUL.S fs9, fs3, fs8
  FADD.S fs7, fs7, fs9
  FLW fs9, 260(sp)
  FMUL.S fs10, fs5, fs9
  FADD.S fs7, fs7, fs10
  FSW fs7, 276(sp)
  FLW fs7, 232(sp)
  FMUL.S fs0, fs0, fs7
  FLW fs10, 248(sp)
  FMUL.S fs3, fs3, fs10
  FADD.S fs0, fs0, fs3
  FLW fs3, 264(sp)
  FMUL.S fs5, fs5, fs3
  FADD.S fs0, fs0, fs5
  FSW fs0, 280(sp)
  FLW fs0, 192(sp)
  FMUL.S fs5, fs0, fs1
  FLW fs11, 196(sp)
  FMUL.S ft0, fs11, fs4
  FADD.S fs5, fs5, ft0
  FLW ft0, 200(sp)
  FMUL.S ft1, ft0, fs6
  FADD.S fs5, fs5, ft1
  FSW fs5, 296(sp)
  FMUL.S fs5, fs0, fs2
  FMUL.S ft1, fs11, fs8
  FADD.S fs5, fs5, ft1
  FMUL.S ft1, ft0, fs9
  FADD.S fs5, fs5, ft1
  FSW fs5, 300(sp)
  FMUL.S fs0, fs0, fs7
  FMUL.S fs5, fs11, fs10
  FADD.S fs0, fs0, fs5
  FMUL.S fs5, ft0, fs3
  FADD.S fs0, fs0, fs5
  FSW fs0, 304(sp)
  FLW fs0, 208(sp)
  FMUL.S fs1, fs0, fs1
  FLW fs5, 212(sp)
  FMUL.S fs4, fs5, fs4
  FADD.S fs1, fs1, fs4
  FLW fs4, 216(sp)
  FMUL.S fs6, fs4, fs6
  FADD.S fs1, fs1, fs6
  FSW fs1, 312(sp)
  FMUL.S fs1, fs0, fs2
  FMUL.S fs2, fs5, fs8
  FADD.S fs1, fs1, fs2
  FMUL.S fs2, fs4, fs9
  FADD.S fs1, fs1, fs2
  FSW fs1, 316(sp)
  FMUL.S fs0, fs0, fs7
  FMUL.S fs1, fs5, fs10
  FADD.S fs0, fs0, fs1
  FMUL.S fs1, fs4, fs3
  FADD.S fs0, fs0, fs1
  FSW fs0, 320(sp)
  LA s2, N
  LW s2, 0(s2)
  BLT zero, s2, bb12
  # implict jump to bb3
bb3:
  ADDI a0, zero, 10
  CALL putch
  LA s4, N
  LW s4, 0(s4)
  BLT zero, s4, bb9
  # implict jump to bb4
bb4:
  ADDI a0, zero, 10
  CALL putch
  LA s6, N
  LW s6, 0(s6)
  BLT zero, s6, bb6
  # implict jump to bb5
bb5:
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
bb6:
  ADD s6, zero, zero
  # implict jump to bb7
bb7:
  ADD s7, s6, zero
  SLLIW s8, s7, 2
  ADDI t5, sp, 312
  ADD s8, t5, s8
  FLW fs0, 0(s8)
  FCVT.W.S s8, fs0, rtz
  ADD a0, s8, zero
  CALL putint
  ADDIW s7, s7, 1
  LA s8, N
  LW s8, 0(s8)
  BLT s7, s8, bb8
  JAL zero, bb5
bb8:
  ADD s6, s7, zero
  JAL zero, bb7
bb9:
  ADD s4, zero, zero
  # implict jump to bb10
bb10:
  ADD s5, s4, zero
  SLLIW s6, s5, 2
  ADDI t5, sp, 296
  ADD s6, t5, s6
  FLW fs0, 0(s6)
  FCVT.W.S s6, fs0, rtz
  ADD a0, s6, zero
  CALL putint
  ADDIW s5, s5, 1
  LA s6, N
  LW s6, 0(s6)
  BLT s5, s6, bb11
  JAL zero, bb4
bb11:
  ADD s4, s5, zero
  JAL zero, bb10
bb12:
  ADD s2, zero, zero
  # implict jump to bb13
bb13:
  ADD s3, s2, zero
  SLLIW s4, s3, 2
  ADDI t5, sp, 272
  ADD s4, t5, s4
  FLW fs0, 0(s4)
  FCVT.W.S s4, fs0, rtz
  ADD a0, s4, zero
  CALL putint
  ADDIW s3, s3, 1
  LA s4, N
  LW s4, 0(s4)
  BLT s3, s4, bb14
  JAL zero, bb3
bb14:
  ADD s2, s3, zero
  JAL zero, bb13
bb15:
  ADD s0, s1, zero
  JAL zero, bb1
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
