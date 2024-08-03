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
  ADDI sp, sp, -192
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  FSD fs0, 24(sp)
  LA s0, N
  ADDI a0, zero, 3
  SW a0, 0(s0)
  LA s0, M
  ADDI a0, zero, 3
  SW a0, 0(s0)
  LA a0, L
  ADDI s0, zero, 3
  SW s0, 0(a0)
  ADD a0, zero, zero
  # implict jump to bb1
bb1:
  SLLIW s1, a0, 2
  ADDI t5, sp, 32
  ADD s0, t5, s1
  FCVT.S.W fs0, a0
  FSW fs0, 0(s0)
  ADDI t5, sp, 48
  ADD s0, t5, s1
  FSW fs0, 0(s0)
  ADDI t5, sp, 64
  ADD s0, t5, s1
  FSW fs0, 0(s0)
  ADDI t5, sp, 80
  ADD s0, t5, s1
  FSW fs0, 0(s0)
  ADDI t5, sp, 96
  ADD s0, t5, s1
  FSW fs0, 0(s0)
  ADDI t5, sp, 112
  ADD s0, t5, s1
  FSW fs0, 0(s0)
  ADDIW s0, a0, 1
  SLTI a0, s0, 3
  BNE a0, zero, bb15
  # implict jump to bb2
bb2:
  FLW fs0, 68(sp)
  FSW fs0, 160(sp)
  FLW fs0, 56(sp)
  FSW fs0, 172(sp)
  FLW fs0, 48(sp)
  FSW fs0, 132(sp)
  FLW fs0, 64(sp)
  FSW fs0, 136(sp)
  FLW fs0, 36(sp)
  FSW fs0, 152(sp)
  FLW fs0, 40(sp)
  FSW fs0, 168(sp)
  FLW fs0, 52(sp)
  FSW fs0, 156(sp)
  FLW fs0, 72(sp)
  FSW fs0, 176(sp)
  FLW fs0, 32(sp)
  FSW fs0, 128(sp)
  LA a0, N
  LW a0, 0(a0)
  BLT zero, a0, bb12
  # implict jump to bb3
bb3:
  ADDI a0, zero, 10
  CALL putch
  LA a0, N
  LW a0, 0(a0)
  BLT zero, a0, bb9
  # implict jump to bb4
bb4:
  ADDI a0, zero, 10
  CALL putch
  LA a0, N
  LW a0, 0(a0)
  BLT zero, a0, bb6
  # implict jump to bb5
bb5:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb6:
  ADD a0, zero, zero
  # implict jump to bb7
bb7:
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
  BLT s0, a0, bb8
  JAL zero, bb5
bb8:
  ADD a0, s0, zero
  JAL zero, bb7
bb9:
  ADD a0, zero, zero
  # implict jump to bb10
bb10:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 152
  ADD a0, t5, a0
  FLW fs0, 0(a0)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  ADDIW s0, s0, 1
  LA a0, N
  LW a0, 0(a0)
  BLT s0, a0, bb11
  JAL zero, bb4
bb11:
  ADD a0, s0, zero
  JAL zero, bb10
bb12:
  ADD a0, zero, zero
  # implict jump to bb13
bb13:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 128
  ADD a0, t5, a0
  FLW fs0, 0(a0)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  ADDIW s0, s0, 1
  LA a0, N
  LW a0, 0(a0)
  BLT s0, a0, bb14
  JAL zero, bb3
bb14:
  ADD a0, s0, zero
  JAL zero, bb13
bb15:
  ADD a0, s0, zero
  JAL zero, bb1
