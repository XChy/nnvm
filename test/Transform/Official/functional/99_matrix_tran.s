.global main
.global tran
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
  CALL tran
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
  ADDI a0, zero, 10
  CALL putch
  ADDI s0, zero, 0
  SW s0, 24(sp)
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
  ADDI a0, zero, 10
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
tran:
  ADDI sp, sp, -112
  SD ra, 8(sp)
  SD s9, 16(sp)
  SD s8, 24(sp)
  SD s7, 32(sp)
  SD s6, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  FSD fs0, 64(sp)
  SD s1, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s3, a4, zero
  ADD s3, a5, zero
  ADD s3, a6, zero
  ADD s4, a7, zero
  ADDI t5, sp, 112
  ADD s5, t5, zero
  LD s6, 0(s5)
  SW zero, 0(sp)
  ADDI s5, zero, 4
  ADDI s7, zero, 2
  MULW s8, s5, s7
  ADD s5, s4, s8
  ADDI s7, zero, 4
  ADDI s8, zero, 1
  MULW s9, s7, s8
  ADD s7, s2, s9
  FLW fs0, 0(s7)
  FSW fs0, 0(s5)
  ADDI s5, zero, 4
  ADDI s7, zero, 1
  MULW s8, s5, s7
  ADD s5, s6, s8
  ADDI s7, zero, 4
  ADDI s8, zero, 2
  MULW s9, s7, s8
  ADD s7, s1, s9
  FLW fs0, 0(s7)
  FSW fs0, 0(s5)
  ADDI s5, zero, 4
  ADDI s7, zero, 1
  MULW s8, s5, s7
  ADD s5, s3, s8
  ADDI s7, zero, 4
  MUL s8, zero, s7
  ADD s7, s1, s8
  FLW fs0, 0(s7)
  FSW fs0, 0(s5)
  ADDI s5, zero, 4
  ADDI s7, zero, 2
  MULW s8, s5, s7
  ADD s5, s3, s8
  ADDI s7, zero, 4
  MUL s8, zero, s7
  ADD s7, s2, s8
  FLW fs0, 0(s7)
  FSW fs0, 0(s5)
  ADDI s5, zero, 4
  MUL s7, zero, s5
  ADD s5, s4, s7
  ADDI s7, zero, 4
  ADDI s8, zero, 1
  MULW s9, s7, s8
  ADD s7, s0, s9
  FLW fs0, 0(s7)
  FSW fs0, 0(s5)
  ADDI s5, zero, 4
  MUL s7, zero, s5
  ADD s5, s6, s7
  ADDI s7, zero, 4
  ADDI s8, zero, 2
  MULW s9, s7, s8
  ADD s7, s0, s9
  FLW fs0, 0(s7)
  FSW fs0, 0(s5)
  ADDI s5, zero, 4
  ADDI s7, zero, 1
  MULW s8, s5, s7
  ADD s5, s4, s8
  ADDI s4, zero, 4
  ADDI s7, zero, 1
  MULW s8, s4, s7
  ADD s4, s1, s8
  FLW fs0, 0(s4)
  FSW fs0, 0(s5)
  ADDI s1, zero, 4
  ADDI s4, zero, 2
  MULW s5, s1, s4
  ADD s1, s6, s5
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADD s4, s2, s6
  FLW fs0, 0(s4)
  FSW fs0, 0(s1)
  ADDI s1, zero, 4
  MUL s2, zero, s1
  ADD s1, s3, s2
  ADDI s2, zero, 4
  MUL s3, zero, s2
  ADD s2, s0, s3
  FLW fs0, 0(s2)
  FSW fs0, 0(s1)
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s9, 16(sp)
  LD s8, 24(sp)
  LD s7, 32(sp)
  LD s6, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  FLD fs0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
