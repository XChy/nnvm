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
  LA a0, N
  ADDI s0, zero, 3
  SW s0, 0(a0)
  LA a0, M
  ADDI s0, zero, 3
  SW s0, 0(a0)
  LA a0, L
  ADDI s0, zero, 3
  SW s0, 0(a0)
  ADD a0, zero, zero
  # implict jump to bb1
bb1:
  SLLIW s0, a0, 2
  ADDI t5, sp, 48
  ADD s1, t5, s0
  FCVT.S.W fs0, a0
  FSW fs0, 0(s1)
  ADDI t5, sp, 64
  ADD s1, t5, s0
  FSW fs0, 0(s1)
  ADDI t5, sp, 80
  ADD s1, t5, s0
  FSW fs0, 0(s1)
  ADDI t5, sp, 96
  ADD s1, t5, s0
  FSW fs0, 0(s1)
  ADDI t5, sp, 112
  ADD s1, t5, s0
  FSW fs0, 0(s1)
  ADDI t5, sp, 128
  ADD s0, t5, s0
  FSW fs0, 0(s0)
  ADDIW a0, a0, 1
  SLTI s0, a0, 3
  BNE s0, zero, bb18
  # implict jump to bb2
bb2:
  ADD a0, zero, zero
  # implict jump to bb3
bb3:
  SLLIW s0, a0, 2
  ADDI t5, sp, 144
  ADD s1, t5, s0
  ADDI t5, sp, 48
  ADD s2, t5, s0
  FLW fs0, 0(s2)
  ADDI t5, sp, 96
  ADD s2, t5, s0
  FLW fs1, 0(s2)
  FADD.S fs0, fs0, fs1
  FSW fs0, 0(s1)
  ADDI t5, sp, 168
  ADD s1, t5, s0
  ADDI t5, sp, 64
  ADD s2, t5, s0
  FLW fs0, 0(s2)
  ADDI t5, sp, 112
  ADD s2, t5, s0
  FLW fs1, 0(s2)
  FADD.S fs0, fs0, fs1
  FSW fs0, 0(s1)
  ADDI t5, sp, 184
  ADD s1, t5, s0
  ADDI t5, sp, 80
  ADD s2, t5, s0
  FLW fs0, 0(s2)
  ADDI t5, sp, 128
  ADD s0, t5, s0
  FLW fs1, 0(s0)
  FADD.S fs0, fs0, fs1
  FSW fs0, 0(s1)
  ADDIW a0, a0, 1
  SLTI s0, a0, 3
  BNE s0, zero, bb17
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
  ADDIW a0, s0, 1
  LA s0, N
  LW s0, 0(s0)
  BLT a0, s0, bb10
  JAL zero, bb7
bb10:
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
  ADDIW a0, s0, 1
  LA s0, N
  LW s0, 0(s0)
  BLT a0, s0, bb13
  JAL zero, bb6
bb13:
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
  ADDIW a0, s0, 1
  LA s0, N
  LW s0, 0(s0)
  BLT a0, s0, bb16
  JAL zero, bb5
bb16:
  JAL zero, bb15
bb17:
  JAL zero, bb3
bb18:
  JAL zero, bb1
