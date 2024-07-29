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
  ADDI sp, sp, -256
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
  FSD fs0, 88(sp)
  LA s4, N
  ADDI s5, zero, 3
  SW s5, 0(s4)
  LA s4, M
  ADDI s5, zero, 3
  SW s5, 0(s4)
  LA s4, L
  ADDI s5, zero, 3
  SW s5, 0(s4)
  ADDI s4, zero, 0
  SLTI s4, s4, 3
  BNE s4, zero, bb20
  # implict jump to bb1
bb1:
  FLW fs0, 132(sp)
  FSW fs0, 224(sp)
  FLW fs0, 120(sp)
  FSW fs0, 236(sp)
  FLW fs0, 112(sp)
  FSW fs0, 196(sp)
  FLW fs0, 128(sp)
  FSW fs0, 200(sp)
  FLW fs0, 100(sp)
  FSW fs0, 216(sp)
  FLW fs0, 104(sp)
  FSW fs0, 232(sp)
  FLW fs0, 116(sp)
  FSW fs0, 220(sp)
  FLW fs0, 136(sp)
  FSW fs0, 240(sp)
  FLW fs0, 96(sp)
  FSW fs0, 192(sp)
  LA s5, N
  LW s5, 0(s5)
  ADDI s6, zero, 0
  BLT s6, s5, bb15
  # implict jump to bb2
bb2:
  ADDI a0, zero, 10
  CALL putch
  LA s6, N
  LW s6, 0(s6)
  ADDI s7, zero, 0
  BLT s7, s6, bb10
  # implict jump to bb3
bb3:
  ADDI a0, zero, 10
  CALL putch
  LA s7, N
  LW s7, 0(s7)
  ADDI s8, zero, 0
  BLT s8, s7, bb5
  # implict jump to bb4
bb4:
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
  LD s9, 80(sp)
  FLD fs0, 88(sp)
  ADDI sp, sp, 256
  JALR zero, 0(ra)
bb5:
  # implict jump to bb6
bb6:
  ADD s7, zero, zero
  # implict jump to bb7
bb7:
  ADD s8, s7, zero
  SLLIW s9, s8, 2
  ADDI t5, sp, 232
  ADD s9, t5, s9
  FLW fs0, 0(s9)
  FCVT.W.S s9, fs0, rtz
  ADD a0, s9, zero
  CALL putint
  ADDIW s1, s8, 1
  # implict jump to bb8
bb8:
  LA s8, N
  LW s8, 0(s8)
  BLT s1, s8, bb9
  JAL zero, bb4
bb9:
  ADD s7, s1, zero
  JAL zero, bb7
bb10:
  # implict jump to bb11
bb11:
  ADD s6, zero, zero
  # implict jump to bb12
bb12:
  ADD s7, s6, zero
  SLLIW s8, s7, 2
  ADDI t5, sp, 216
  ADD s8, t5, s8
  FLW fs0, 0(s8)
  FCVT.W.S s8, fs0, rtz
  ADD a0, s8, zero
  CALL putint
  ADDIW s3, s7, 1
  # implict jump to bb13
bb13:
  LA s7, N
  LW s7, 0(s7)
  BLT s3, s7, bb14
  JAL zero, bb3
bb14:
  ADD s6, s3, zero
  JAL zero, bb12
bb15:
  # implict jump to bb16
bb16:
  ADD s5, zero, zero
  # implict jump to bb17
bb17:
  ADD s6, s5, zero
  SLLIW s7, s6, 2
  ADDI t5, sp, 192
  ADD s7, t5, s7
  FLW fs0, 0(s7)
  FCVT.W.S s7, fs0, rtz
  ADD a0, s7, zero
  CALL putint
  ADDIW s0, s6, 1
  # implict jump to bb18
bb18:
  LA s6, N
  LW s6, 0(s6)
  BLT s0, s6, bb19
  JAL zero, bb2
bb19:
  ADD s5, s0, zero
  JAL zero, bb17
bb20:
  # implict jump to bb21
bb21:
  ADD s4, zero, zero
  # implict jump to bb22
bb22:
  ADD s5, s4, zero
  SLLIW s6, s5, 2
  ADDI t5, sp, 96
  ADD s7, t5, s6
  FCVT.S.W fs0, s5
  FSW fs0, 0(s7)
  ADDI t5, sp, 112
  ADD s7, t5, s6
  FSW fs0, 0(s7)
  ADDI t5, sp, 128
  ADD s7, t5, s6
  FSW fs0, 0(s7)
  ADDI t5, sp, 144
  ADD s7, t5, s6
  FSW fs0, 0(s7)
  ADDI t5, sp, 160
  ADD s7, t5, s6
  FSW fs0, 0(s7)
  ADDI t5, sp, 176
  ADD s6, t5, s6
  FSW fs0, 0(s6)
  ADDIW s2, s5, 1
  # implict jump to bb23
bb23:
  SLTI s5, s2, 3
  BNE s5, zero, bb24
  JAL zero, bb1
bb24:
  ADD s4, s2, zero
  JAL zero, bb22
tran:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  FSD fs0, 24(sp)
  ADD s0, a0, zero
  ADDI t5, sp, 32
  ADD s1, t5, zero
  LD s1, 0(s1)
  FLW fs0, 4(a2)
  FSW fs0, 8(a7)
  FLW fs0, 8(a1)
  FSW fs0, 4(s1)
  FLW fs0, 0(a1)
  FSW fs0, 4(a6)
  FLW fs0, 0(a2)
  FSW fs0, 8(a6)
  FLW fs0, 4(s0)
  FSW fs0, 0(a7)
  FLW fs0, 8(s0)
  FSW fs0, 0(s1)
  FLW fs0, 4(a1)
  FSW fs0, 4(a7)
  FLW fs0, 8(a2)
  FSW fs0, 8(s1)
  FLW fs0, 0(s0)
  FSW fs0, 0(a6)
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
