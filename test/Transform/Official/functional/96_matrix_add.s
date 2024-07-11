.global main
.global add
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
  FSD fs0, 96(sp)
  FSD fs1, 104(sp)
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
  BLT s1, s2, bb15
  # implict jump to bb2
bb2:
  ADD s2, zero, zero
  # implict jump to bb3
bb3:
  ADD s3, s2, zero
  LA s4, M
  LW s4, 0(s4)
  BLT s3, s4, bb14
  # implict jump to bb4
bb4:
  ADD s4, zero, zero
  # implict jump to bb5
bb5:
  ADD s5, s4, zero
  LA s6, N
  LW s6, 0(s6)
  BLT s5, s6, bb13
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
  BLT s7, s8, bb12
  # implict jump to bb8
bb8:
  ADDI a0, zero, 10
  CALL putch
  ADD s8, zero, zero
  # implict jump to bb9
bb9:
  ADD s9, s8, zero
  LA s10, N
  LW s10, 0(s10)
  BLT s9, s10, bb11
  # implict jump to bb10
bb10:
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
  FLD fs0, 96(sp)
  FLD fs1, 104(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb11:
  SLLIW s10, s9, 2
  ADDI t5, sp, 248
  ADD s10, t5, s10
  FLW fs0, 0(s10)
  FCVT.W.S s10, fs0, rtz
  ADD a0, s10, zero
  CALL putint
  ADDIW s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb9
bb12:
  SLLIW s8, s7, 2
  ADDI t5, sp, 232
  ADD s8, t5, s8
  FLW fs0, 0(s8)
  FCVT.W.S s8, fs0, rtz
  ADD a0, s8, zero
  CALL putint
  ADDIW s7, s7, 1
  ADD s6, s7, zero
  JAL zero, bb7
bb13:
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
bb14:
  SLLIW s4, s3, 2
  ADDI t5, sp, 208
  ADD s5, t5, s4
  ADDI t5, sp, 112
  ADD s6, t5, s4
  FLW fs0, 0(s6)
  ADDI t5, sp, 160
  ADD s6, t5, s4
  FLW fs1, 0(s6)
  FADD.S fs0, fs0, fs1
  FSW fs0, 0(s5)
  ADDI t5, sp, 232
  ADD s5, t5, s4
  ADDI t5, sp, 128
  ADD s6, t5, s4
  FLW fs0, 0(s6)
  ADDI t5, sp, 176
  ADD s6, t5, s4
  FLW fs1, 0(s6)
  FADD.S fs0, fs0, fs1
  FSW fs0, 0(s5)
  ADDI t5, sp, 248
  ADD s5, t5, s4
  ADDI t5, sp, 144
  ADD s6, t5, s4
  FLW fs0, 0(s6)
  ADDI t5, sp, 192
  ADD s4, t5, s4
  FLW fs1, 0(s4)
  FADD.S fs0, fs0, fs1
  FSW fs0, 0(s5)
  ADDIW s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb3
bb15:
  SLLIW s2, s1, 2
  ADDI t5, sp, 112
  ADD s3, t5, s2
  FCVT.S.W fs0, s1
  FSW fs0, 0(s3)
  ADDI t5, sp, 128
  ADD s3, t5, s2
  FSW fs0, 0(s3)
  ADDI t5, sp, 144
  ADD s3, t5, s2
  FSW fs0, 0(s3)
  ADDI t5, sp, 160
  ADD s3, t5, s2
  FSW fs0, 0(s3)
  ADDI t5, sp, 176
  ADD s3, t5, s2
  FSW fs0, 0(s3)
  ADDI t5, sp, 192
  ADD s2, t5, s2
  FSW fs0, 0(s2)
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb1
add:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  FSD fs0, 64(sp)
  FSD fs1, 72(sp)
  ADD s0, a0, zero
  ADDI t5, sp, 80
  ADD s1, t5, zero
  LD s1, 0(s1)
  ADD s2, zero, zero
  # implict jump to bb17
bb17:
  ADD s3, s2, zero
  LA s4, M
  LW s4, 0(s4)
  BLT s3, s4, bb19
  # implict jump to bb18
bb18:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  FLD fs0, 64(sp)
  FLD fs1, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb19:
  SLLIW s4, s3, 2
  ADD s5, a6, s4
  ADD s6, s0, s4
  FLW fs0, 0(s6)
  ADD s6, a3, s4
  FLW fs1, 0(s6)
  FADD.S fs0, fs0, fs1
  FSW fs0, 0(s5)
  ADD s5, a7, s4
  ADD s6, a1, s4
  FLW fs0, 0(s6)
  ADD s6, a4, s4
  FLW fs1, 0(s6)
  FADD.S fs0, fs0, fs1
  FSW fs0, 0(s5)
  ADD s5, s1, s4
  ADD s6, a2, s4
  FLW fs0, 0(s6)
  ADD s4, a5, s4
  FLW fs1, 0(s4)
  FADD.S fs0, fs0, fs1
  FSW fs0, 0(s5)
  ADDIW s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb17
