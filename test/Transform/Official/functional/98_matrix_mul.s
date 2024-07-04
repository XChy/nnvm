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
  ADDI sp, sp, -224
  SD ra, 184(sp)
  SD s0, 192(sp)
  SD s1, 200(sp)
  SD s2, 208(sp)
  FSD fs0, 216(sp)
  LA s0, N
  ADDI s1, zero, 3
  SW s1, 0(s0)
  LA s0, M
  ADDI s1, zero, 3
  SW s1, 0(s0)
  LA s0, L
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, zero, 0
  SW s0, 24(sp)
  JAL zero, bb1
bb1:
  LW s0, 24(sp)
  LA s1, M
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  LW s0, 24(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 168
  ADD s0, t5, s2
  LW s1, 24(sp)
  FCVT.S.W fs0, s1
  FSW fs0, 0(s0)
  LW s0, 24(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t6, sp, 152
  ADD s0, t6, s2
  LW s1, 24(sp)
  FCVT.S.W fs0, s1
  FSW fs0, 0(s0)
  LW s0, 24(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 136
  ADD s0, t5, s2
  LW s1, 24(sp)
  FCVT.S.W fs0, s1
  FSW fs0, 0(s0)
  LW s0, 24(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t6, sp, 120
  ADD s0, t6, s2
  LW s1, 24(sp)
  FCVT.S.W fs0, s1
  FSW fs0, 0(s0)
  LW s0, 24(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 104
  ADD s0, t5, s2
  LW s1, 24(sp)
  FCVT.S.W fs0, s1
  FSW fs0, 0(s0)
  LW s0, 24(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t6, sp, 88
  ADD s0, t6, s2
  LW s1, 24(sp)
  FCVT.S.W fs0, s1
  FSW fs0, 0(s0)
  LW s0, 24(sp)
  ADDIW s1, s0, 1
  SW s1, 24(sp)
  JAL zero, bb1
bb3:
  ADDI a0, sp, 168
  ADD a0, a0, zero
  ADDI a1, sp, 152
  ADD a1, a1, zero
  ADDI a2, sp, 136
  ADD a2, a2, zero
  ADDI a3, sp, 120
  ADD a3, a3, zero
  ADDI a4, sp, 104
  ADD a4, a4, zero
  ADDI a5, sp, 88
  ADD a5, a5, zero
  ADDI a6, sp, 64
  ADD a6, a6, zero
  ADDI a7, sp, 48
  ADD a7, a7, zero
  ADDI t5, sp, 0
  ADD s0, t5, zero
  ADDI t6, sp, 32
  SD t6, 0(s0)
  ADDI t5, sp, 32
  CALL mul
  ADD s0, a0, zero
  SW s0, 24(sp)
  JAL zero, bb4
bb4:
  LW s0, 24(sp)
  LA s1, N
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb5
  JAL zero, bb6
bb5:
  LW s0, 24(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t6, sp, 64
  ADD s0, t6, s2
  FLW fs0, 0(s0)
  FCVT.W.S s0, fs0, rtz
  SW s0, 16(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 24(sp)
  ADDIW s1, s0, 1
  SW s1, 24(sp)
  JAL zero, bb4
bb6:
  ADDI s0, zero, 10
  SW s0, 16(sp)
  ADDI s0, zero, 0
  SW s0, 24(sp)
  LW s0, 16(sp)
  ADD a0, s0, zero
  CALL putch
  JAL zero, bb7
bb7:
  LW s0, 24(sp)
  LA s1, N
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb8
  JAL zero, bb9
bb8:
  LW s0, 24(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 48
  ADD s0, t5, s2
  FLW fs0, 0(s0)
  FCVT.W.S s0, fs0, rtz
  SW s0, 16(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 24(sp)
  ADDIW s1, s0, 1
  SW s1, 24(sp)
  JAL zero, bb7
bb9:
  ADDI s0, zero, 10
  SW s0, 16(sp)
  ADDI s0, zero, 0
  SW s0, 24(sp)
  LW s0, 16(sp)
  ADD a0, s0, zero
  CALL putch
  JAL zero, bb10
bb10:
  LW s0, 24(sp)
  LA s1, N
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb11
  JAL zero, bb12
bb11:
  LW s0, 24(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t6, sp, 32
  ADD s0, t6, s2
  FLW fs0, 0(s0)
  FCVT.W.S s0, fs0, rtz
  SW s0, 16(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 24(sp)
  ADDIW s1, s0, 1
  SW s1, 24(sp)
  JAL zero, bb10
bb12:
  ADDI s0, zero, 10
  SW s0, 16(sp)
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 184(sp)
  LD s0, 192(sp)
  LD s1, 200(sp)
  LD s2, 208(sp)
  FLD fs0, 216(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
mul:
  ADDI sp, sp, -144
  SD ra, 8(sp)
  SD s11, 16(sp)
  SD s10, 24(sp)
  SD s9, 32(sp)
  FSD fs3, 40(sp)
  SD s8, 48(sp)
  FSD fs2, 56(sp)
  SD s7, 64(sp)
  SD s6, 72(sp)
  SD s0, 80(sp)
  SD s5, 88(sp)
  FSD fs0, 96(sp)
  SD s1, 104(sp)
  SD s2, 112(sp)
  SD s3, 120(sp)
  SD s4, 128(sp)
  FSD fs1, 136(sp)
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
  SW zero, 0(sp)
  ADDI s8, zero, 4
  MUL s10, zero, s8
  ADD s8, s6, s10
  ADDI s10, zero, 4
  MUL s11, zero, s10
  ADD s10, s0, s11
  FLW fs0, 0(s10)
  ADDI s10, zero, 4
  MUL s11, zero, s10
  ADD s10, s3, s11
  FLW fs1, 0(s10)
  FMUL.S fs2, fs0, fs1
  ADDI s10, zero, 4
  ADDI s11, zero, 1
  MULW ra, s10, s11
  ADD s10, s0, ra
  FLW fs0, 0(s10)
  ADDI s10, zero, 4
  MUL s11, zero, s10
  ADD s10, s4, s11
  FLW fs1, 0(s10)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  ADDI s10, zero, 4
  ADDI s11, zero, 2
  MULW ra, s10, s11
  ADD s10, s0, ra
  FLW fs1, 0(s10)
  ADDI s10, zero, 4
  MUL s11, zero, s10
  ADD s10, s5, s11
  FLW fs2, 0(s10)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 0(s8)
  ADDI s8, zero, 4
  ADDI s10, zero, 1
  MULW s11, s8, s10
  ADD s8, s6, s11
  ADDI s10, zero, 4
  MUL s11, zero, s10
  ADD s10, s0, s11
  FLW fs0, 0(s10)
  ADDI s10, zero, 4
  ADDI s11, zero, 1
  MULW ra, s10, s11
  ADD s10, s3, ra
  FLW fs1, 0(s10)
  FMUL.S fs2, fs0, fs1
  ADDI s10, zero, 4
  ADDI s11, zero, 1
  MULW ra, s10, s11
  ADD s10, s0, ra
  FLW fs0, 0(s10)
  ADDI s10, zero, 4
  ADDI s11, zero, 1
  MULW ra, s10, s11
  ADD s10, s4, ra
  FLW fs1, 0(s10)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  ADDI s10, zero, 4
  ADDI s11, zero, 2
  MULW ra, s10, s11
  ADD s10, s0, ra
  FLW fs1, 0(s10)
  ADDI s10, zero, 4
  ADDI s11, zero, 1
  MULW ra, s10, s11
  ADD s10, s5, ra
  FLW fs2, 0(s10)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 0(s8)
  ADDI s8, zero, 4
  ADDI s10, zero, 2
  MULW s11, s8, s10
  ADD s8, s6, s11
  ADDI s6, zero, 4
  MUL s10, zero, s6
  ADD s6, s0, s10
  FLW fs0, 0(s6)
  ADDI s6, zero, 4
  ADDI s10, zero, 2
  MULW s11, s6, s10
  ADD s6, s3, s11
  FLW fs1, 0(s6)
  FMUL.S fs2, fs0, fs1
  ADDI s6, zero, 4
  ADDI s10, zero, 1
  MULW s11, s6, s10
  ADD s6, s0, s11
  FLW fs0, 0(s6)
  ADDI s6, zero, 4
  ADDI s10, zero, 2
  MULW s11, s6, s10
  ADD s6, s4, s11
  FLW fs1, 0(s6)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  ADDI s6, zero, 4
  ADDI s10, zero, 2
  MULW s11, s6, s10
  ADD s6, s0, s11
  FLW fs1, 0(s6)
  ADDI s0, zero, 4
  ADDI s6, zero, 2
  MULW s10, s0, s6
  ADD s0, s5, s10
  FLW fs2, 0(s0)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 0(s8)
  ADDI s0, zero, 4
  MUL s6, zero, s0
  ADD s0, s7, s6
  ADDI s6, zero, 4
  MUL s8, zero, s6
  ADD s6, s1, s8
  FLW fs0, 0(s6)
  ADDI s6, zero, 4
  MUL s8, zero, s6
  ADD s6, s3, s8
  FLW fs1, 0(s6)
  FMUL.S fs2, fs0, fs1
  ADDI s6, zero, 4
  ADDI s8, zero, 1
  MULW s10, s6, s8
  ADD s6, s1, s10
  FLW fs0, 0(s6)
  ADDI s6, zero, 4
  MUL s8, zero, s6
  ADD s6, s4, s8
  FLW fs1, 0(s6)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  ADDI s6, zero, 4
  ADDI s8, zero, 2
  MULW s10, s6, s8
  ADD s6, s1, s10
  FLW fs1, 0(s6)
  ADDI s6, zero, 4
  MUL s8, zero, s6
  ADD s6, s5, s8
  FLW fs2, 0(s6)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 0(s0)
  ADDI s0, zero, 4
  ADDI s6, zero, 1
  MULW s8, s0, s6
  ADD s0, s7, s8
  ADDI s6, zero, 4
  MUL s8, zero, s6
  ADD s6, s1, s8
  FLW fs0, 0(s6)
  ADDI s6, zero, 4
  ADDI s8, zero, 1
  MULW s10, s6, s8
  ADD s6, s3, s10
  FLW fs1, 0(s6)
  FMUL.S fs2, fs0, fs1
  ADDI s6, zero, 4
  ADDI s8, zero, 1
  MULW s10, s6, s8
  ADD s6, s1, s10
  FLW fs0, 0(s6)
  ADDI s6, zero, 4
  ADDI s8, zero, 1
  MULW s10, s6, s8
  ADD s6, s4, s10
  FLW fs1, 0(s6)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  ADDI s6, zero, 4
  ADDI s8, zero, 2
  MULW s10, s6, s8
  ADD s6, s1, s10
  FLW fs1, 0(s6)
  ADDI s6, zero, 4
  ADDI s8, zero, 1
  MULW s10, s6, s8
  ADD s6, s5, s10
  FLW fs2, 0(s6)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 0(s0)
  ADDI s0, zero, 4
  ADDI s6, zero, 2
  MULW s8, s0, s6
  ADD s0, s7, s8
  ADDI s6, zero, 4
  MUL s7, zero, s6
  ADD s6, s1, s7
  FLW fs0, 0(s6)
  ADDI s6, zero, 4
  ADDI s7, zero, 2
  MULW s8, s6, s7
  ADD s6, s3, s8
  FLW fs1, 0(s6)
  FMUL.S fs2, fs0, fs1
  ADDI s6, zero, 4
  ADDI s7, zero, 1
  MULW s8, s6, s7
  ADD s6, s1, s8
  FLW fs0, 0(s6)
  ADDI s6, zero, 4
  ADDI s7, zero, 2
  MULW s8, s6, s7
  ADD s6, s4, s8
  FLW fs1, 0(s6)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  ADDI s6, zero, 4
  ADDI s7, zero, 2
  MULW s8, s6, s7
  ADD s6, s1, s8
  FLW fs1, 0(s6)
  ADDI s1, zero, 4
  ADDI s6, zero, 2
  MULW s7, s1, s6
  ADD s1, s5, s7
  FLW fs2, 0(s1)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 0(s0)
  ADDI s0, zero, 4
  MUL s1, zero, s0
  ADD s0, s9, s1
  ADDI s1, zero, 4
  MUL s6, zero, s1
  ADD s1, s2, s6
  FLW fs0, 0(s1)
  ADDI s1, zero, 4
  MUL s6, zero, s1
  ADD s1, s3, s6
  FLW fs1, 0(s1)
  FMUL.S fs2, fs0, fs1
  ADDI s1, zero, 4
  ADDI s6, zero, 1
  MULW s7, s1, s6
  ADD s1, s2, s7
  FLW fs0, 0(s1)
  ADDI s1, zero, 4
  MUL s6, zero, s1
  ADD s1, s4, s6
  FLW fs1, 0(s1)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  ADDI s1, zero, 4
  ADDI s6, zero, 2
  MULW s7, s1, s6
  ADD s1, s2, s7
  FLW fs1, 0(s1)
  ADDI s1, zero, 4
  MUL s6, zero, s1
  ADD s1, s5, s6
  FLW fs2, 0(s1)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 1
  MULW s6, s0, s1
  ADD s0, s9, s6
  ADDI s1, zero, 4
  MUL s6, zero, s1
  ADD s1, s2, s6
  FLW fs0, 0(s1)
  ADDI s1, zero, 4
  ADDI s6, zero, 1
  MULW s7, s1, s6
  ADD s1, s3, s7
  FLW fs1, 0(s1)
  FMUL.S fs2, fs0, fs1
  ADDI s1, zero, 4
  ADDI s6, zero, 1
  MULW s7, s1, s6
  ADD s1, s2, s7
  FLW fs0, 0(s1)
  ADDI s1, zero, 4
  ADDI s6, zero, 1
  MULW s7, s1, s6
  ADD s1, s4, s7
  FLW fs1, 0(s1)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  ADDI s1, zero, 4
  ADDI s6, zero, 2
  MULW s7, s1, s6
  ADD s1, s2, s7
  FLW fs1, 0(s1)
  ADDI s1, zero, 4
  ADDI s6, zero, 1
  MULW s7, s1, s6
  ADD s1, s5, s7
  FLW fs2, 0(s1)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 2
  MULW s6, s0, s1
  ADD s0, s9, s6
  ADDI s1, zero, 4
  MUL s6, zero, s1
  ADD s1, s2, s6
  FLW fs0, 0(s1)
  ADDI s1, zero, 4
  ADDI s6, zero, 2
  MULW s7, s1, s6
  ADD s1, s3, s7
  FLW fs1, 0(s1)
  FMUL.S fs2, fs0, fs1
  ADDI s1, zero, 4
  ADDI s3, zero, 1
  MULW s6, s1, s3
  ADD s1, s2, s6
  FLW fs0, 0(s1)
  ADDI s1, zero, 4
  ADDI s3, zero, 2
  MULW s6, s1, s3
  ADD s1, s4, s6
  FLW fs1, 0(s1)
  FMUL.S fs3, fs0, fs1
  FADD.S fs0, fs2, fs3
  ADDI s1, zero, 4
  ADDI s3, zero, 2
  MULW s4, s1, s3
  ADD s1, s2, s4
  FLW fs1, 0(s1)
  ADDI s1, zero, 4
  ADDI s2, zero, 2
  MULW s3, s1, s2
  ADD s1, s5, s3
  FLW fs2, 0(s1)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSW fs1, 0(s0)
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s11, 16(sp)
  LD s10, 24(sp)
  LD s9, 32(sp)
  FLD fs3, 40(sp)
  LD s8, 48(sp)
  FLD fs2, 56(sp)
  LD s7, 64(sp)
  LD s6, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  FLD fs0, 96(sp)
  LD s1, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  FLD fs1, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
