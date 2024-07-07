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
  SD ra, 168(sp)
  SD s0, 176(sp)
  SD s1, 184(sp)
  SD s2, 192(sp)
  SD s3, 200(sp)
  FSD fs0, 208(sp)
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
  ADD s1, s0, zero
  LA s2, M
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 152
  ADD s2, t5, s3
  FCVT.S.W fs0, s1
  FSW fs0, 0(s2)
  ADDI t6, sp, 136
  ADD s2, t6, s3
  FSW fs0, 0(s2)
  ADDI t5, sp, 120
  ADD s2, t5, s3
  FSW fs0, 0(s2)
  ADDI t6, sp, 104
  ADD s2, t6, s3
  FSW fs0, 0(s2)
  ADDI t5, sp, 88
  ADD s2, t5, s3
  FSW fs0, 0(s2)
  ADDI t6, sp, 72
  ADD s2, t6, s3
  FSW fs0, 0(s2)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
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
  ADD s0, s1, zero
  LA s2, N
  LW s3, 0(s2)
  SLT s2, s0, s3
  BNE s2, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADDI t6, sp, 48
  ADD s2, t6, s3
  FLW fs0, 0(s2)
  FCVT.W.S s2, fs0, rtz
  ADD a0, s2, zero
  CALL putint
  ADDIW s2, s0, 1
  ADD s1, s2, zero
  JAL zero, bb4
bb6:
  ADDI a0, zero, 10
  CALL putch
  ADD s0, zero, zero
  JAL zero, bb7
bb7:
  ADD s1, s0, zero
  LA s2, N
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb8
  JAL zero, bb9
bb8:
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
  JAL zero, bb7
bb9:
  ADDI a0, zero, 10
  CALL putch
  ADD s0, zero, zero
  JAL zero, bb10
bb10:
  ADD s1, s0, zero
  LA s2, N
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb11
  JAL zero, bb12
bb11:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t6, sp, 16
  ADD s2, t6, s3
  FLW fs0, 0(s2)
  FCVT.W.S s2, fs0, rtz
  ADD a0, s2, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb10
bb12:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 168(sp)
  LD s0, 176(sp)
  LD s1, 184(sp)
  LD s2, 192(sp)
  LD s3, 200(sp)
  FLD fs0, 208(sp)
  ADDI sp, sp, 224
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
