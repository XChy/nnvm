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
  ADDI sp, sp, -208
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  FSD fs0, 32(sp)
  FSD fs1, 40(sp)
  LA s0, N
  ADDI a0, zero, 3
  SW a0, 0(s0)
  LA a0, M
  ADDI s0, zero, 3
  SW s0, 0(a0)
  LA s0, L
  ADDI a0, zero, 3
  SW a0, 0(s0)
  ADD a0, zero, zero
  # implict jump to bb1
bb1:
  ADD s1, a0, zero
  SLLIW s0, s1, 2
  ADDI a0, sp, 48
  ADD a0, a0, s0
  FCVT.S.W fs0, s1
  FSW fs0, 0(a0)
  ADDI a0, sp, 64
  ADD a0, a0, s0
  FSW fs0, 0(a0)
  ADDI a0, sp, 80
  ADD a0, a0, s0
  FSW fs0, 0(a0)
  ADDI a0, sp, 96
  ADD a0, a0, s0
  FSW fs0, 0(a0)
  ADDI a0, sp, 112
  ADD a0, a0, s0
  FSW fs0, 0(a0)
  ADDI a0, sp, 128
  ADD a0, a0, s0
  FSW fs0, 0(a0)
  ADDIW s0, s1, 1
  SLTI a0, s0, 3
  BNE a0, zero, bb18
  # implict jump to bb2
bb2:
  ADD a0, zero, zero
  # implict jump to bb3
bb3:
  ADD s2, a0, zero
  SLLIW s1, s2, 2
  ADDI t5, sp, 144
  ADD s0, t5, s1
  ADDI a0, sp, 48
  ADD a0, a0, s1
  FLW fs0, 0(a0)
  ADDI a0, sp, 96
  ADD a0, a0, s1
  FLW fs1, 0(a0)
  FADD.S fs0, fs0, fs1
  FSW fs0, 0(s0)
  ADDI t5, sp, 168
  ADD s0, t5, s1
  ADDI a0, sp, 64
  ADD a0, a0, s1
  FLW fs1, 0(a0)
  ADDI a0, sp, 112
  ADD a0, a0, s1
  FLW fs0, 0(a0)
  FADD.S fs0, fs1, fs0
  FSW fs0, 0(s0)
  ADDI t5, sp, 184
  ADD s0, t5, s1
  ADDI a0, sp, 80
  ADD a0, a0, s1
  FLW fs1, 0(a0)
  ADDI a0, sp, 128
  ADD a0, a0, s1
  FLW fs0, 0(a0)
  FADD.S fs0, fs1, fs0
  FSW fs0, 0(s0)
  ADDIW s0, s2, 1
  SLTI a0, s0, 3
  BNE a0, zero, bb17
  # implict jump to bb4
bb4:
  LA a0, N
  LW a0, 0(a0)
  BLT zero, a0, bb14
  # implict jump to bb5
bb5:
  ADDI a0, zero, 10
  CALL putch
  LA a0, N
  LW a0, 0(a0)
  BLT zero, a0, bb11
  # implict jump to bb6
bb6:
  ADDI a0, zero, 10
  CALL putch
  LA a0, N
  LW a0, 0(a0)
  BLT zero, a0, bb8
  # implict jump to bb7
bb7:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  FLD fs0, 32(sp)
  FLD fs1, 40(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
bb8:
  ADD a0, zero, zero
  # implict jump to bb9
bb9:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 184
  ADD a0, t5, a0
  FLW fs0, 0(a0)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  ADDIW s0, s0, 1
  LA a0, N
  LW a0, 0(a0)
  BLT s0, a0, bb10
  JAL zero, bb7
bb10:
  ADD a0, s0, zero
  JAL zero, bb9
bb11:
  ADD a0, zero, zero
  # implict jump to bb12
bb12:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 168
  ADD a0, t5, a0
  FLW fs0, 0(a0)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  ADDIW s0, s0, 1
  LA a0, N
  LW a0, 0(a0)
  BLT s0, a0, bb13
  JAL zero, bb6
bb13:
  ADD a0, s0, zero
  JAL zero, bb12
bb14:
  ADD a0, zero, zero
  # implict jump to bb15
bb15:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 144
  ADD a0, t5, a0
  FLW fs0, 0(a0)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  ADDIW s0, s0, 1
  LA a0, N
  LW a0, 0(a0)
  BLT s0, a0, bb16
  JAL zero, bb5
bb16:
  ADD a0, s0, zero
  JAL zero, bb15
bb17:
  ADD a0, s0, zero
  JAL zero, bb3
bb18:
  ADD a0, s0, zero
  JAL zero, bb1
