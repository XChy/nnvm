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
  LA s2, M
  LW s2, 0(s2)
  SLT s2, s1, s2
  BNE s2, zero, bb12
  # implict jump to bb2
bb2:
  ADDI s2, sp, 216
  ADDI s3, sp, 124
  FLW fs0, 0(s3)
  FSW fs0, 0(s2)
  ADDI s2, sp, 228
  ADDI s3, sp, 112
  FLW fs0, 0(s3)
  FSW fs0, 0(s2)
  ADDI s2, sp, 188
  FLW fs0, 104(sp)
  FSW fs0, 0(s2)
  ADDI s2, sp, 192
  FLW fs0, 120(sp)
  FSW fs0, 0(s2)
  ADDI s2, sp, 92
  FLW fs0, 0(s2)
  FSW fs0, 208(sp)
  ADDI s2, sp, 96
  FLW fs0, 0(s2)
  FSW fs0, 224(sp)
  ADDI s2, sp, 212
  ADDI s3, sp, 108
  FLW fs0, 0(s3)
  FSW fs0, 0(s2)
  ADDI s2, sp, 232
  ADDI s3, sp, 128
  FLW fs0, 0(s3)
  FSW fs0, 0(s2)
  FLW fs0, 88(sp)
  FSW fs0, 184(sp)
  ADD s2, zero, zero
  # implict jump to bb3
bb3:
  ADD s3, s2, zero
  LA s4, N
  LW s4, 0(s4)
  SLT s4, s3, s4
  BNE s4, zero, bb11
  # implict jump to bb4
bb4:
  ADDI a0, zero, 10
  CALL putch
  ADD s4, zero, zero
  # implict jump to bb5
bb5:
  ADD s5, s4, zero
  LA s6, N
  LW s6, 0(s6)
  SLT s6, s5, s6
  BNE s6, zero, bb10
  # implict jump to bb6
bb6:
  ADDI a0, zero, 10
  CALL putch
  ADD s6, zero, zero
  # implict jump to bb7
bb7:
  ADD s7, s6, zero
  LA s8, N
  LW s8, 0(s8)
  SLT s8, s7, s8
  BNE s8, zero, bb9
  # implict jump to bb8
bb8:
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
bb9:
  SLLIW s8, s7, 2
  ADDI t5, sp, 224
  ADD s8, t5, s8
  FLW fs0, 0(s8)
  FCVT.W.S s8, fs0, rtz
  ADD a0, s8, zero
  CALL putint
  ADDIW s7, s7, 1
  ADD s6, s7, zero
  JAL zero, bb7
bb10:
  SLLIW s6, s5, 2
  ADDI t5, sp, 208
  ADD s6, t5, s6
  FLW fs0, 0(s6)
  FCVT.W.S s6, fs0, rtz
  ADD a0, s6, zero
  CALL putint
  ADDIW s5, s5, 1
  ADD s4, s5, zero
  JAL zero, bb5
bb11:
  SLLIW s4, s3, 2
  ADDI t5, sp, 184
  ADD s4, t5, s4
  FLW fs0, 0(s4)
  FCVT.W.S s4, fs0, rtz
  ADD a0, s4, zero
  CALL putint
  ADDIW s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb3
bb12:
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
  ADD s0, s1, zero
  JAL zero, bb1
tran:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  FSD fs0, 40(sp)
  ADD s0, a0, zero
  ADDI t5, sp, 48
  ADD s1, t5, zero
  LD s1, 0(s1)
  ADDI s2, a7, 8
  ADDI s3, a2, 4
  FLW fs0, 0(s3)
  FSW fs0, 0(s2)
  ADDI s2, s1, 4
  ADDI s3, a1, 8
  FLW fs0, 0(s3)
  FSW fs0, 0(s2)
  ADDI s2, a6, 4
  FLW fs0, 0(a1)
  FSW fs0, 0(s2)
  ADDI s2, a6, 8
  FLW fs0, 0(a2)
  FSW fs0, 0(s2)
  ADDI s2, s0, 4
  FLW fs0, 0(s2)
  FSW fs0, 0(a7)
  ADDI s2, s0, 8
  FLW fs0, 0(s2)
  FSW fs0, 0(s1)
  ADDI s2, a7, 4
  ADDI s3, a1, 4
  FLW fs0, 0(s3)
  FSW fs0, 0(s2)
  ADDI s1, s1, 8
  ADDI s2, a2, 8
  FLW fs0, 0(s2)
  FSW fs0, 0(s1)
  FLW fs0, 0(s0)
  FSW fs0, 0(a6)
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  FLD fs0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
