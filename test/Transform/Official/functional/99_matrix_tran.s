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
  CALL tran
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
tran:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s9, 8(sp)
  SD s8, 16(sp)
  SD s7, 24(sp)
  SD s6, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  FSD fs0, 56(sp)
  SD s1, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s3, a4, zero
  ADD s3, a5, zero
  ADD s3, a6, zero
  ADD s4, a7, zero
  ADDI t5, sp, 96
  ADD s5, t5, zero
  LD s6, 0(s5)
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
  LD ra, 0(sp)
  LD s9, 8(sp)
  LD s8, 16(sp)
  LD s7, 24(sp)
  LD s6, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  FLD fs0, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
