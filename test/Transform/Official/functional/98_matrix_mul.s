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
  ADDI sp, sp, -288
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s7, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  FSD fs2, 104(sp)
  SD s8, 128(sp)
  FSD fs0, 136(sp)
  FSD fs1, 144(sp)
  FSD fs3, 152(sp)
  SD s9, 248(sp)
  SD s10, 256(sp)
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
  LA s2, M
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb12
  # implict jump to bb2
bb2:
  FLW fs0, 264(sp)
  FLW fs1, 200(sp)
  FMUL.S fs2, fs0, fs1
  ADDI s2, sp, 268
  FLW fs0, 0(s2)
  FLW fs1, 72(sp)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  ADDI s3, sp, 272
  FLW fs1, 0(s3)
  FLW fs2, 184(sp)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 160(sp)
  ADDI s4, sp, 164
  FLW fs0, 264(sp)
  ADDI s5, sp, 204
  FLW fs1, 0(s5)
  FMUL.S fs2, fs0, fs1
  FLW fs0, 0(s2)
  ADDI s6, sp, 76
  FLW fs1, 0(s6)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  FLW fs1, 0(s3)
  ADDI s7, sp, 188
  FLW fs2, 0(s7)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 0(s4)
  ADDI s4, sp, 168
  FLW fs0, 264(sp)
  ADDI s8, sp, 208
  FLW fs1, 0(s8)
  FMUL.S fs2, fs0, fs1
  FLW fs0, 0(s2)
  ADDI s2, sp, 80
  FLW fs1, 0(s2)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  FLW fs1, 0(s3)
  ADDI s3, sp, 192
  FLW fs2, 0(s3)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 0(s4)
  FLW fs0, 232(sp)
  FLW fs1, 200(sp)
  FMUL.S fs2, fs0, fs1
  ADDI s4, sp, 236
  FLW fs0, 0(s4)
  FLW fs1, 72(sp)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  ADDI s9, sp, 240
  FLW fs1, 0(s9)
  FLW fs2, 184(sp)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 112(sp)
  ADDI s10, sp, 116
  FLW fs0, 232(sp)
  FLW fs1, 0(s5)
  FMUL.S fs2, fs0, fs1
  FLW fs0, 0(s4)
  FLW fs1, 0(s6)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  FLW fs1, 0(s9)
  FLW fs2, 0(s7)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 0(s10)
  ADDI s10, sp, 120
  FLW fs0, 232(sp)
  FLW fs1, 0(s8)
  FMUL.S fs2, fs0, fs1
  FLW fs0, 0(s4)
  FLW fs1, 0(s2)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  FLW fs1, 0(s9)
  FLW fs2, 0(s3)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 0(s10)
  FLW fs0, 216(sp)
  FLW fs1, 200(sp)
  FMUL.S fs2, fs0, fs1
  ADDI s4, sp, 220
  FLW fs0, 0(s4)
  FLW fs1, 72(sp)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  ADDI s9, sp, 224
  FLW fs1, 0(s9)
  FLW fs2, 184(sp)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 88(sp)
  ADDI s10, sp, 92
  FLW fs0, 216(sp)
  FLW fs1, 0(s5)
  FMUL.S fs2, fs0, fs1
  FLW fs0, 0(s4)
  FLW fs1, 0(s6)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  FLW fs1, 0(s9)
  FLW fs2, 0(s7)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 0(s10)
  ADDI s5, sp, 96
  FLW fs0, 216(sp)
  FLW fs1, 0(s8)
  FMUL.S fs2, fs0, fs1
  FLW fs0, 0(s4)
  FLW fs1, 0(s2)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  FLW fs1, 0(s9)
  FLW fs2, 0(s3)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 0(s5)
  ADD s2, zero, zero
  # implict jump to bb3
bb3:
  ADD s3, s2, zero
  LA s4, N
  LW s5, 0(s4)
  SLT s4, s3, s5
  BNE s4, zero, bb11
  # implict jump to bb4
bb4:
  ADDI a0, zero, 10
  CALL putch
  ADD s4, zero, zero
  # implict jump to bb5
bb5:
  ADD s5, s4, zero
  LA s6, N
  LW s7, 0(s6)
  SLT s6, s5, s7
  BNE s6, zero, bb10
  # implict jump to bb6
bb6:
  ADDI a0, zero, 10
  CALL putch
  ADD s6, zero, zero
  # implict jump to bb7
bb7:
  ADD s7, s6, zero
  LA s8, N
  LW s9, 0(s8)
  SLT s8, s7, s9
  BNE s8, zero, bb9
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
  LD s7, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  FLD fs2, 104(sp)
  LD s8, 128(sp)
  FLD fs0, 136(sp)
  FLD fs1, 144(sp)
  FLD fs3, 152(sp)
  LD s9, 248(sp)
  LD s10, 256(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
bb9:
  SLLIW s8, s7, 2
  ADDI t5, sp, 88
  ADD s9, t5, s8
  FLW fs0, 0(s9)
  FCVT.W.S s8, fs0, rtz
  ADD a0, s8, zero
  CALL putint
  ADDIW s8, s7, 1
  ADD s6, s8, zero
  JAL zero, bb7
bb10:
  SLLIW s6, s5, 2
  ADDI t5, sp, 112
  ADD s7, t5, s6
  FLW fs0, 0(s7)
  FCVT.W.S s6, fs0, rtz
  ADD a0, s6, zero
  CALL putint
  ADDIW s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb5
bb11:
  SLLIW s4, s3, 2
  ADDI t5, sp, 160
  ADD s5, t5, s4
  FLW fs0, 0(s5)
  FCVT.W.S s4, fs0, rtz
  ADD a0, s4, zero
  CALL putint
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb3
bb12:
  SLLIW s2, s1, 2
  ADDI t5, sp, 264
  ADD s3, t5, s2
  FCVT.S.W fs0, s1
  FSW fs0, 0(s3)
  ADDI t5, sp, 232
  ADD s3, t5, s2
  FSW fs0, 0(s3)
  ADDI t5, sp, 216
  ADD s3, t5, s2
  FSW fs0, 0(s3)
  ADDI t5, sp, 200
  ADD s3, t5, s2
  FSW fs0, 0(s3)
  ADDI t5, sp, 72
  ADD s3, t5, s2
  FSW fs0, 0(s3)
  ADDI t5, sp, 184
  ADD s3, t5, s2
  FSW fs0, 0(s3)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb1
mul:
  ADDI sp, sp, -144
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
  SD s10, 88(sp)
  SD s11, 96(sp)
  FSD fs0, 104(sp)
  FSD fs1, 112(sp)
  FSD fs2, 120(sp)
  FSD fs3, 128(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  ADD s6, a6, zero
  ADD s7, a7, zero
  ADDI t5, sp, 144
  ADD s8, t5, zero
  LD s9, 0(s8)
  FLW fs0, 0(s0)
  FLW fs1, 0(s3)
  FMUL.S fs2, fs0, fs1
  ADDI s8, s0, 4
  FLW fs0, 0(s8)
  FLW fs1, 0(s4)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  ADDI s10, s0, 8
  FLW fs1, 0(s10)
  FLW fs2, 0(s5)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 0(s6)
  ADDI s11, s6, 4
  FLW fs0, 0(s0)
  ADDI ra, s3, 4
  FLW fs1, 0(ra)
  FMUL.S fs2, fs0, fs1
  FLW fs0, 0(s8)
  ADDI t0, s4, 4
  FLW fs1, 0(t0)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  FLW fs1, 0(s10)
  ADDI t1, s5, 4
  FLW fs2, 0(t1)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 0(s11)
  ADDI s11, s6, 8
  FLW fs0, 0(s0)
  ADDI s0, s3, 8
  FLW fs1, 0(s0)
  FMUL.S fs2, fs0, fs1
  FLW fs0, 0(s8)
  ADDI s6, s4, 8
  FLW fs1, 0(s6)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  FLW fs1, 0(s10)
  ADDI s8, s5, 8
  FLW fs2, 0(s8)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 0(s11)
  FLW fs0, 0(s1)
  FLW fs1, 0(s3)
  FMUL.S fs2, fs0, fs1
  ADDI s10, s1, 4
  FLW fs0, 0(s10)
  FLW fs1, 0(s4)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  ADDI s11, s1, 8
  FLW fs1, 0(s11)
  FLW fs2, 0(s5)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 0(s7)
  ADDI t2, s7, 4
  FLW fs0, 0(s1)
  FLW fs1, 0(ra)
  FMUL.S fs2, fs0, fs1
  FLW fs0, 0(s10)
  FLW fs1, 0(t0)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  FLW fs1, 0(s11)
  FLW fs2, 0(t1)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 0(t2)
  ADDI t2, s7, 8
  FLW fs0, 0(s1)
  FLW fs1, 0(s0)
  FMUL.S fs2, fs0, fs1
  FLW fs0, 0(s10)
  FLW fs1, 0(s6)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  FLW fs1, 0(s11)
  FLW fs2, 0(s8)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 0(t2)
  FLW fs0, 0(s2)
  FLW fs1, 0(s3)
  FMUL.S fs2, fs0, fs1
  ADDI s1, s2, 4
  FLW fs0, 0(s1)
  FLW fs1, 0(s4)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  ADDI s3, s2, 8
  FLW fs1, 0(s3)
  FLW fs2, 0(s5)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 0(s9)
  ADDI s4, s9, 4
  FLW fs0, 0(s2)
  FLW fs1, 0(ra)
  FMUL.S fs2, fs0, fs1
  FLW fs0, 0(s1)
  FLW fs1, 0(t0)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  FLW fs1, 0(s3)
  FLW fs2, 0(t1)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 0(s4)
  ADDI s4, s9, 8
  FLW fs0, 0(s2)
  FLW fs1, 0(s0)
  FMUL.S fs2, fs0, fs1
  FLW fs0, 0(s1)
  FLW fs1, 0(s6)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  FLW fs1, 0(s3)
  FLW fs2, 0(s8)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 0(s4)
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
  LD s10, 88(sp)
  LD s11, 96(sp)
  FLD fs0, 104(sp)
  FLD fs1, 112(sp)
  FLD fs2, 120(sp)
  FLD fs3, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
