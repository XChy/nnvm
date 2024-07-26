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
  ADDI sp, sp, -272
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
  SD s10, 88(sp)
  SD s11, 96(sp)
  FSD fs0, 104(sp)
  FSD fs1, 112(sp)
  LA s5, N
  ADDI s6, zero, 3
  SW s6, 0(s5)
  LA s5, M
  ADDI s6, zero, 3
  SW s6, 0(s5)
  LA s5, L
  ADDI s6, zero, 3
  SW s6, 0(s5)
  ADDI s5, zero, 0
  SLTI s5, s5, 3
  BNE s5, zero, bb22
  # implict jump to bb1
bb1:
  ADDI s6, zero, 0
  SLTI s6, s6, 3
  BNE s6, zero, bb18
  # implict jump to bb2
bb2:
  SLTI s7, zero, 3
  BNE s7, zero, bb14
  # implict jump to bb3
bb3:
  ADDI a0, zero, 10
  CALL putch
  ADDI s8, zero, 0
  SLTI s8, s8, 3
  BNE s8, zero, bb10
  # implict jump to bb4
bb4:
  ADDI a0, zero, 10
  CALL putch
  ADDI s9, zero, 0
  SLTI s9, s9, 3
  BNE s9, zero, bb6
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
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  FLD fs0, 104(sp)
  FLD fs1, 112(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb6:
  ADD s9, zero, zero
  # implict jump to bb7
bb7:
  ADD s10, s9, zero
  SLLIW s11, s10, 2
  ADDI t5, sp, 256
  ADD s11, t5, s11
  FLW fs0, 0(s11)
  FCVT.W.S s11, fs0, rtz
  ADD a0, s11, zero
  CALL putint
  ADDIW s1, s10, 1
  # implict jump to bb8
bb8:
  SLTI s10, s1, 3
  BNE s10, zero, bb9
  JAL zero, bb5
bb9:
  ADD s9, s1, zero
  JAL zero, bb7
bb10:
  ADD s8, zero, zero
  # implict jump to bb11
bb11:
  ADD s9, s8, zero
  SLLIW s10, s9, 2
  ADDI t5, sp, 240
  ADD s10, t5, s10
  FLW fs0, 0(s10)
  FCVT.W.S s10, fs0, rtz
  ADD a0, s10, zero
  CALL putint
  ADDIW s2, s9, 1
  # implict jump to bb12
bb12:
  SLTI s9, s2, 3
  BNE s9, zero, bb13
  JAL zero, bb4
bb13:
  ADD s8, s2, zero
  JAL zero, bb11
bb14:
  ADD s7, zero, zero
  # implict jump to bb15
bb15:
  ADD s8, s7, zero
  SLLIW s9, s8, 2
  ADDI t5, sp, 216
  ADD s9, t5, s9
  FLW fs0, 0(s9)
  FCVT.W.S s9, fs0, rtz
  ADD a0, s9, zero
  CALL putint
  ADDIW s3, s8, 1
  # implict jump to bb16
bb16:
  SLTI s8, s3, 3
  BNE s8, zero, bb17
  JAL zero, bb3
bb17:
  ADD s7, s3, zero
  JAL zero, bb15
bb18:
  ADD s6, zero, zero
  # implict jump to bb19
bb19:
  ADD s7, s6, zero
  SLLIW s8, s7, 2
  ADDI t5, sp, 216
  ADD s9, t5, s8
  ADDI t5, sp, 120
  ADD s10, t5, s8
  FLW fs0, 0(s10)
  ADDI t5, sp, 168
  ADD s10, t5, s8
  FLW fs1, 0(s10)
  FSUB.S fs0, fs0, fs1
  FSW fs0, 0(s9)
  ADDI t5, sp, 240
  ADD s9, t5, s8
  ADDI t5, sp, 136
  ADD s10, t5, s8
  FLW fs0, 0(s10)
  ADDI t5, sp, 184
  ADD s10, t5, s8
  FLW fs1, 0(s10)
  FSUB.S fs0, fs0, fs1
  FSW fs0, 0(s9)
  ADDI t5, sp, 256
  ADD s9, t5, s8
  ADDI t5, sp, 152
  ADD s10, t5, s8
  FLW fs0, 0(s10)
  ADDI t5, sp, 200
  ADD s8, t5, s8
  FLW fs1, 0(s8)
  FSUB.S fs0, fs0, fs1
  FSW fs0, 0(s9)
  ADDIW s0, s7, 1
  # implict jump to bb20
bb20:
  SLTI s7, s0, 3
  BNE s7, zero, bb21
  JAL zero, bb2
bb21:
  ADD s6, s0, zero
  JAL zero, bb19
bb22:
  ADD s5, zero, zero
  # implict jump to bb23
bb23:
  ADD s6, s5, zero
  SLLIW s7, s6, 2
  ADDI t5, sp, 120
  ADD s8, t5, s7
  FCVT.S.W fs0, s6
  FSW fs0, 0(s8)
  ADDI t5, sp, 136
  ADD s8, t5, s7
  FSW fs0, 0(s8)
  ADDI t5, sp, 152
  ADD s8, t5, s7
  FSW fs0, 0(s8)
  ADDI t5, sp, 168
  ADD s8, t5, s7
  FSW fs0, 0(s8)
  ADDI t5, sp, 184
  ADD s8, t5, s7
  FSW fs0, 0(s8)
  ADDI t5, sp, 200
  ADD s7, t5, s7
  FSW fs0, 0(s7)
  ADDIW s4, s6, 1
  # implict jump to bb24
bb24:
  SLTI s6, s4, 3
  BNE s6, zero, bb25
  JAL zero, bb1
bb25:
  ADD s5, s4, zero
  JAL zero, bb23
sub:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  FSD fs0, 72(sp)
  FSD fs1, 80(sp)
  ADD s1, a0, zero
  ADDI t5, sp, 96
  ADD s2, t5, zero
  LD s2, 0(s2)
  SLTI s3, zero, 3
  BNE s3, zero, bb28
  # implict jump to bb27
bb27:
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
  FLD fs0, 72(sp)
  FLD fs1, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb28:
  ADD s3, zero, zero
  # implict jump to bb29
bb29:
  ADD s4, s3, zero
  SLLIW s5, s4, 2
  ADD s6, a6, s5
  ADD s7, s1, s5
  FLW fs0, 0(s7)
  ADD s7, a3, s5
  FLW fs1, 0(s7)
  FSUB.S fs0, fs0, fs1
  FSW fs0, 0(s6)
  ADD s6, a7, s5
  ADD s7, a1, s5
  FLW fs0, 0(s7)
  ADD s7, a4, s5
  FLW fs1, 0(s7)
  FSUB.S fs0, fs0, fs1
  FSW fs0, 0(s6)
  ADD s6, s2, s5
  ADD s7, a2, s5
  FLW fs0, 0(s7)
  ADD s5, a5, s5
  FLW fs1, 0(s5)
  FSUB.S fs0, fs0, fs1
  FSW fs0, 0(s6)
  ADDIW s0, s4, 1
  # implict jump to bb30
bb30:
  SLTI s4, s0, 3
  BNE s4, zero, bb31
  JAL zero, bb27
bb31:
  ADD s3, s0, zero
  JAL zero, bb29
