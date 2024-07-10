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
  ADDI sp, sp, -272
  SD ra, 152(sp)
  SD s0, 160(sp)
  SD s5, 168(sp)
  SD s1, 176(sp)
  SD s6, 184(sp)
  SD s2, 192(sp)
  SD s3, 200(sp)
  FSD fs0, 208(sp)
  FSD fs1, 216(sp)
  SD s8, 224(sp)
  FSD fs3, 232(sp)
  SD s4, 240(sp)
  FSD fs2, 248(sp)
  SD s7, 256(sp)
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
  FLW fs0, 136(sp)
  FLW fs1, 88(sp)
  FMUL.S fs2, fs0, fs1
  ADDI s0, sp, 140
  FLW fs0, 0(s0)
  FLW fs1, 72(sp)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  ADDI s1, sp, 144
  FLW fs1, 0(s1)
  FLW fs2, 56(sp)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 32(sp)
  ADDI s2, sp, 36
  FLW fs0, 136(sp)
  ADDI s3, sp, 92
  FLW fs1, 0(s3)
  FMUL.S fs2, fs0, fs1
  FLW fs0, 0(s0)
  ADDI s4, sp, 76
  FLW fs1, 0(s4)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  FLW fs1, 0(s1)
  ADDI s5, sp, 60
  FLW fs2, 0(s5)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 0(s2)
  ADDI s2, sp, 40
  FLW fs0, 136(sp)
  ADDI s6, sp, 96
  FLW fs1, 0(s6)
  FMUL.S fs2, fs0, fs1
  FLW fs0, 0(s0)
  ADDI s0, sp, 80
  FLW fs1, 0(s0)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  FLW fs1, 0(s1)
  ADDI s1, sp, 64
  FLW fs2, 0(s1)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 0(s2)
  FLW fs0, 120(sp)
  FLW fs1, 88(sp)
  FMUL.S fs2, fs0, fs1
  ADDI s2, sp, 124
  FLW fs0, 0(s2)
  FLW fs1, 72(sp)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  ADDI s7, sp, 128
  FLW fs1, 0(s7)
  FLW fs2, 56(sp)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 16(sp)
  ADDI s8, sp, 20
  FLW fs0, 120(sp)
  FLW fs1, 0(s3)
  FMUL.S fs2, fs0, fs1
  FLW fs0, 0(s2)
  FLW fs1, 0(s4)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  FLW fs1, 0(s7)
  FLW fs2, 0(s5)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 0(s8)
  ADDI s8, sp, 24
  FLW fs0, 120(sp)
  FLW fs1, 0(s6)
  FMUL.S fs2, fs0, fs1
  FLW fs0, 0(s2)
  FLW fs1, 0(s0)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  FLW fs1, 0(s7)
  FLW fs2, 0(s1)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 0(s8)
  FLW fs0, 104(sp)
  FLW fs1, 88(sp)
  FMUL.S fs2, fs0, fs1
  ADDI s2, sp, 108
  FLW fs0, 0(s2)
  FLW fs1, 72(sp)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  ADDI s7, sp, 112
  FLW fs1, 0(s7)
  FLW fs2, 56(sp)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 0(sp)
  ADDI s8, sp, 4
  FLW fs0, 104(sp)
  FLW fs1, 0(s3)
  FMUL.S fs2, fs0, fs1
  FLW fs0, 0(s2)
  FLW fs1, 0(s4)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  FLW fs1, 0(s7)
  FLW fs2, 0(s5)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 0(s8)
  ADDI s3, sp, 8
  FLW fs0, 104(sp)
  FLW fs1, 0(s6)
  FMUL.S fs2, fs0, fs1
  FLW fs0, 0(s2)
  FLW fs1, 0(s0)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  FLW fs1, 0(s7)
  FLW fs2, 0(s1)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 0(s3)
  ADD s0, zero, zero
  # implict jump to bb3
bb3:
  ADD s1, s0, zero
  LA s2, N
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb11
  # implict jump to bb4
bb4:
  ADDI a0, zero, 10
  CALL putch
  ADD s0, zero, zero
  # implict jump to bb5
bb5:
  ADD s1, s0, zero
  LA s2, N
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb10
  # implict jump to bb6
bb6:
  ADDI a0, zero, 10
  CALL putch
  ADD s0, zero, zero
  # implict jump to bb7
bb7:
  ADD s1, s0, zero
  LA s2, N
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb9
  # implict jump to bb8
bb8:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 152(sp)
  LD s0, 160(sp)
  LD s5, 168(sp)
  LD s1, 176(sp)
  LD s6, 184(sp)
  LD s2, 192(sp)
  LD s3, 200(sp)
  FLD fs0, 208(sp)
  FLD fs1, 216(sp)
  LD s8, 224(sp)
  FLD fs3, 232(sp)
  LD s4, 240(sp)
  FLD fs2, 248(sp)
  LD s7, 256(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb9:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 0
  ADD s2, t5, s3
  FLW fs0, 0(s2)
  FCVT.W.S s2, fs0, rtz
  ADD a0, s2, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb7
bb10:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 16
  ADD s2, t5, s3
  FLW fs0, 0(s2)
  FCVT.W.S s2, fs0, rtz
  ADD a0, s2, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb5
bb11:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 32
  ADD s2, t5, s3
  FLW fs0, 0(s2)
  FCVT.W.S s2, fs0, rtz
  ADD a0, s2, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb3
bb12:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 136
  ADD s2, t5, s3
  FCVT.S.W fs0, s1
  FSW fs0, 0(s2)
  ADDI t5, sp, 120
  ADD s2, t5, s3
  FSW fs0, 0(s2)
  ADDI t5, sp, 104
  ADD s2, t5, s3
  FSW fs0, 0(s2)
  ADDI t5, sp, 88
  ADD s2, t5, s3
  FSW fs0, 0(s2)
  ADDI t5, sp, 72
  ADD s2, t5, s3
  FSW fs0, 0(s2)
  ADDI t5, sp, 56
  ADD s2, t5, s3
  FSW fs0, 0(s2)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb1
mul:
  ADDI sp, sp, -144
  SD ra, 0(sp)
  SD s11, 8(sp)
  SD s10, 16(sp)
  SD s9, 24(sp)
  FSD fs3, 32(sp)
  SD s8, 40(sp)
  FSD fs2, 48(sp)
  SD s7, 56(sp)
  SD s6, 64(sp)
  SD s0, 72(sp)
  SD s5, 80(sp)
  FSD fs0, 88(sp)
  SD s1, 96(sp)
  SD s2, 104(sp)
  SD s3, 112(sp)
  SD s4, 120(sp)
  FSD fs1, 128(sp)
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
  LD s11, 8(sp)
  LD s10, 16(sp)
  LD s9, 24(sp)
  FLD fs3, 32(sp)
  LD s8, 40(sp)
  FLD fs2, 48(sp)
  LD s7, 56(sp)
  LD s6, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  FLD fs0, 88(sp)
  LD s1, 96(sp)
  LD s2, 104(sp)
  LD s3, 112(sp)
  LD s4, 120(sp)
  FLD fs1, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
