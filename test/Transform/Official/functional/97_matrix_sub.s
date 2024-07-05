.global main
.global sub
.section .bss



.section .data
L:
.word 0x00000000
M:
.word 0x00000000
N:
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
  SLTI s1, s0, 3
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
  CALL sub
  ADD s0, a0, zero
  ADD s1, s0, zero
  JAL zero, bb4
bb4:
  SLTI s0, s1, 3
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
  SLTI s1, s0, 3
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
  SLTI s1, s0, 3
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
sub:
  ADDI sp, sp, -128
  SD ra, 0(sp)
  SD s11, 8(sp)
  SD s10, 16(sp)
  SD s9, 24(sp)
  SD s8, 32(sp)
  FSD fs2, 40(sp)
  SD s7, 48(sp)
  SD s6, 56(sp)
  SD s0, 64(sp)
  SD s5, 72(sp)
  FSD fs0, 80(sp)
  SD s1, 88(sp)
  SD s2, 96(sp)
  SD s3, 104(sp)
  SD s4, 112(sp)
  FSD fs1, 120(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  ADD s6, a6, zero
  ADD s7, a7, zero
  ADDI t5, sp, 128
  ADD s8, t5, zero
  LD s9, 0(s8)
  ADD s8, zero, zero
  JAL zero, bb14
bb14:
  SLTI s10, s8, 3
  XOR s11, s10, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb15
  JAL zero, bb16
bb15:
  ADDI s10, zero, 4
  MULW s11, s8, s10
  ADD s10, s6, s11
  ADDI s11, zero, 4
  MULW t0, s8, s11
  ADD s11, s0, t0
  FLW fs0, 0(s11)
  ADDI s11, zero, 4
  MULW t0, s8, s11
  ADD s11, s3, t0
  FLW fs1, 0(s11)
  FSUB.S fs2, fs0, fs1
  FSW fs2, 0(s10)
  ADDI s10, zero, 4
  MULW s11, s8, s10
  ADD s10, s7, s11
  ADDI s11, zero, 4
  MULW t0, s8, s11
  ADD s11, s1, t0
  FLW fs0, 0(s11)
  ADDI s11, zero, 4
  MULW t0, s8, s11
  ADD s11, s4, t0
  FLW fs1, 0(s11)
  FSUB.S fs2, fs0, fs1
  FSW fs2, 0(s10)
  ADDI s10, zero, 4
  MULW s11, s8, s10
  ADD s10, s9, s11
  ADDI s11, zero, 4
  MULW t0, s8, s11
  ADD s11, s2, t0
  FLW fs0, 0(s11)
  ADDI s11, zero, 4
  MULW t0, s8, s11
  ADD s11, s5, t0
  FLW fs1, 0(s11)
  FSUB.S fs2, fs0, fs1
  FSW fs2, 0(s10)
  ADDIW s10, s8, 1
  ADD s8, s10, zero
  JAL zero, bb14
bb16:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s11, 8(sp)
  LD s10, 16(sp)
  LD s9, 24(sp)
  LD s8, 32(sp)
  FLD fs2, 40(sp)
  LD s7, 48(sp)
  LD s6, 56(sp)
  LD s0, 64(sp)
  LD s5, 72(sp)
  FLD fs0, 80(sp)
  LD s1, 88(sp)
  LD s2, 96(sp)
  LD s3, 104(sp)
  LD s4, 112(sp)
  FLD fs1, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
