.global main
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
  ADDI sp, sp, -240
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
  FSD fs0, 80(sp)
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
  SLLIW s2, s1, 2
  ADDI t5, sp, 88
  ADD s3, t5, s2
  FCVT.S.W fs0, s1
  FSW fs0, 0(s3)
  ADDI t5, sp, 104
  ADD s3, t5, s2
  FSW fs0, 0(s3)
  ADDI t5, sp, 120
  ADD s3, t5, s2
  FSW fs0, 0(s3)
  ADDI t5, sp, 136
  ADD s3, t5, s2
  FSW fs0, 0(s3)
  ADDI t5, sp, 152
  ADD s3, t5, s2
  FSW fs0, 0(s3)
  ADDI t5, sp, 168
  ADD s2, t5, s2
  FSW fs0, 0(s2)
  ADDIW s1, s1, 1
  SLTI s2, s1, 3
  BNE s2, zero, bb15
  # implict jump to bb2
bb2:
  FLW fs0, 124(sp)
  FSW fs0, 216(sp)
  FLW fs0, 112(sp)
  FSW fs0, 228(sp)
  FLW fs0, 104(sp)
  FSW fs0, 188(sp)
  FLW fs0, 120(sp)
  FSW fs0, 192(sp)
  FLW fs0, 92(sp)
  FSW fs0, 208(sp)
  FLW fs0, 96(sp)
  FSW fs0, 224(sp)
  FLW fs0, 108(sp)
  FSW fs0, 212(sp)
  FLW fs0, 128(sp)
  FSW fs0, 232(sp)
  FLW fs0, 88(sp)
  FSW fs0, 184(sp)
  LA s2, N
  LW s2, 0(s2)
  BLT zero, s2, bb12
  # implict jump to bb3
bb3:
  ADDI a0, zero, 10
  CALL putch
  LA s4, N
  LW s4, 0(s4)
  BLT zero, s4, bb9
  # implict jump to bb4
bb4:
  ADDI a0, zero, 10
  CALL putch
  LA s6, N
  LW s6, 0(s6)
  BLT zero, s6, bb6
  # implict jump to bb5
bb5:
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
  FLD fs0, 80(sp)
  ADDI sp, sp, 240
  JALR zero, 0(ra)
bb6:
  ADD s6, zero, zero
  # implict jump to bb7
bb7:
  ADD s7, s6, zero
  SLLIW s8, s7, 2
  ADDI t5, sp, 224
  ADD s8, t5, s8
  FLW fs0, 0(s8)
  FCVT.W.S s8, fs0, rtz
  ADD a0, s8, zero
  CALL putint
  ADDIW s7, s7, 1
  LA s8, N
  LW s8, 0(s8)
  BLT s7, s8, bb8
  JAL zero, bb5
bb8:
  ADD s6, s7, zero
  JAL zero, bb7
bb9:
  ADD s4, zero, zero
  # implict jump to bb10
bb10:
  ADD s5, s4, zero
  SLLIW s6, s5, 2
  ADDI t5, sp, 208
  ADD s6, t5, s6
  FLW fs0, 0(s6)
  FCVT.W.S s6, fs0, rtz
  ADD a0, s6, zero
  CALL putint
  ADDIW s5, s5, 1
  LA s6, N
  LW s6, 0(s6)
  BLT s5, s6, bb11
  JAL zero, bb4
bb11:
  ADD s4, s5, zero
  JAL zero, bb10
bb12:
  ADD s2, zero, zero
  # implict jump to bb13
bb13:
  ADD s3, s2, zero
  SLLIW s4, s3, 2
  ADDI t5, sp, 184
  ADD s4, t5, s4
  FLW fs0, 0(s4)
  FCVT.W.S s4, fs0, rtz
  ADD a0, s4, zero
  CALL putint
  ADDIW s3, s3, 1
  LA s4, N
  LW s4, 0(s4)
  BLT s3, s4, bb14
  JAL zero, bb3
bb14:
  ADD s2, s3, zero
  JAL zero, bb13
bb15:
  ADD s0, s1, zero
  JAL zero, bb1
