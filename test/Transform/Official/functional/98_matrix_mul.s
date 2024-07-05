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
  ADDI sp, sp, -208
  SD ra, 168(sp)
  SD s0, 176(sp)
  SD s1, 184(sp)
  SD s2, 192(sp)
  FSD fs0, 200(sp)
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
  JAL zero, bb1
bb1:
  LA s1, M
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 152
  ADD s1, t5, s2
  FCVT.S.W fs0, s0
  FSW fs0, 0(s1)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t6, sp, 136
  ADD s1, t6, s2
  FCVT.S.W fs0, s0
  FSW fs0, 0(s1)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 120
  ADD s1, t5, s2
  FCVT.S.W fs0, s0
  FSW fs0, 0(s1)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t6, sp, 104
  ADD s1, t6, s2
  FCVT.S.W fs0, s0
  FSW fs0, 0(s1)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 88
  ADD s1, t5, s2
  FCVT.S.W fs0, s0
  FSW fs0, 0(s1)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t6, sp, 72
  ADD s1, t6, s2
  FCVT.S.W fs0, s0
  FSW fs0, 0(s1)
  ADDIW s1, s0, 1
  ADD s0, s1, zero
  JAL zero, bb1
bb3:
  ADDI a0, sp, 152
  ADD a0, a0, zero
  ADDI a1, sp, 136
  ADD a1, a1, zero
  ADDI a2, sp, 120
  ADD a2, a2, zero
  ADDI a3, sp, 104
  ADD a3, a3, zero
  ADDI a4, sp, 88
  ADD a4, a4, zero
  ADDI a5, sp, 72
  ADD a5, a5, zero
  ADDI a6, sp, 48
  ADD a6, a6, zero
  ADDI a7, sp, 32
  ADD a7, a7, zero
  ADDI t5, sp, 0
  ADD s0, t5, zero
  ADDI t6, sp, 16
  SD t6, 0(s0)
  ADDI t5, sp, 16
  CALL mul
  ADD s0, a0, zero
  ADD s1, s0, zero
  JAL zero, bb4
bb4:
  LA s0, N
  LW s2, 0(s0)
  SLT s0, s1, s2
  XOR s2, s0, zero
  SLTU s0, zero, s2
  BNE s0, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s0, zero, 4
  MULW s2, s1, s0
  ADDI t6, sp, 48
  ADD s0, t6, s2
  FLW fs0, 0(s0)
  FCVT.W.S s0, fs0, rtz
  ADD a0, s0, zero
  CALL putint
  ADDIW s0, s1, 1
  ADD s1, s0, zero
  JAL zero, bb4
bb6:
  ADDI a0, zero, 10
  CALL putch
  ADD s0, zero, zero
  JAL zero, bb7
bb7:
  LA s1, N
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 32
  ADD s1, t5, s2
  FLW fs0, 0(s1)
  FCVT.W.S s1, fs0, rtz
  ADD a0, s1, zero
  CALL putint
  ADDIW s1, s0, 1
  ADD s0, s1, zero
  JAL zero, bb7
bb9:
  ADDI a0, zero, 10
  CALL putch
  ADD s0, zero, zero
  JAL zero, bb10
bb10:
  LA s1, N
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb11
  JAL zero, bb12
bb11:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t6, sp, 16
  ADD s1, t6, s2
  FLW fs0, 0(s1)
  FCVT.W.S s1, fs0, rtz
  ADD a0, s1, zero
  CALL putint
  ADDIW s1, s0, 1
  ADD s0, s1, zero
  JAL zero, bb10
bb12:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 168(sp)
  LD s0, 176(sp)
  LD s1, 184(sp)
  LD s2, 192(sp)
  FLD fs0, 200(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
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
