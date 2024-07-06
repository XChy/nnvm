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
  SLTI s2, s1, 3
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 152
  ADD s2, t5, s3
  FCVT.S.W fs0, s1
  FSW fs0, 0(s2)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t6, sp, 136
  ADD s2, t6, s3
  FCVT.S.W fs0, s1
  FSW fs0, 0(s2)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 120
  ADD s2, t5, s3
  FCVT.S.W fs0, s1
  FSW fs0, 0(s2)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t6, sp, 104
  ADD s2, t6, s3
  FCVT.S.W fs0, s1
  FSW fs0, 0(s2)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 88
  ADD s2, t5, s3
  FCVT.S.W fs0, s1
  FSW fs0, 0(s2)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t6, sp, 72
  ADD s2, t6, s3
  FCVT.S.W fs0, s1
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
  CALL sub
  ADD s0, a0, zero
  ADD s1, s0, zero
  JAL zero, bb4
bb4:
  ADD s0, s1, zero
  SLTI s2, s0, 3
  XOR s3, s2, zero
  SLTU s2, zero, s3
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
  SLTI s2, s1, 3
  XOR s3, s2, zero
  SLTU s2, zero, s3
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
  SLTI s2, s1, 3
  XOR s3, s2, zero
  SLTU s2, zero, s3
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
  ADD s10, s8, zero
  SLTI s11, s10, 3
  XOR t0, s11, zero
  SLTU s11, zero, t0
  BNE s11, zero, bb15
  JAL zero, bb16
bb15:
  ADDI s11, zero, 4
  MULW t0, s10, s11
  ADD s11, s6, t0
  ADDI t0, zero, 4
  MULW t1, s10, t0
  ADD t0, s0, t1
  FLW fs0, 0(t0)
  ADDI t0, zero, 4
  MULW t1, s10, t0
  ADD t0, s3, t1
  FLW fs1, 0(t0)
  FSUB.S fs2, fs0, fs1
  FSW fs2, 0(s11)
  ADDI s11, zero, 4
  MULW t0, s10, s11
  ADD s11, s7, t0
  ADDI t0, zero, 4
  MULW t1, s10, t0
  ADD t0, s1, t1
  FLW fs0, 0(t0)
  ADDI t0, zero, 4
  MULW t1, s10, t0
  ADD t0, s4, t1
  FLW fs1, 0(t0)
  FSUB.S fs2, fs0, fs1
  FSW fs2, 0(s11)
  ADDI s11, zero, 4
  MULW t0, s10, s11
  ADD s11, s9, t0
  ADDI t0, zero, 4
  MULW t1, s10, t0
  ADD t0, s2, t1
  FLW fs0, 0(t0)
  ADDI t0, zero, 4
  MULW t1, s10, t0
  ADD t0, s5, t1
  FLW fs1, 0(t0)
  FSUB.S fs2, fs0, fs1
  FSW fs2, 0(s11)
  ADDIW s11, s10, 1
  ADD s8, s11, zero
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
