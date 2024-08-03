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
  ADDI sp, sp, -176
  SD ra, 16(sp)
  SD s0, 24(sp)
  FSD fs0, 32(sp)
  LA s0, N
  ADDI a0, zero, 3
  SW a0, 0(s0)
  LA s0, M
  ADDI a0, zero, 3
  SW a0, 0(s0)
  LA a0, L
  ADDI s0, zero, 3
  SW s0, 0(a0)
  ADDI a0, zero, 0
  FCVT.S.W fs0, a0
  FSW fs0, 0(sp)
  FSW fs0, 40(sp)
  FSW fs0, 56(sp)
  FSW fs0, 72(sp)
  FSW fs0, 88(sp)
  FSW fs0, 104(sp)
  ADDI a0, zero, 1
  FCVT.S.W fs0, a0
  FSW fs0, 4(sp)
  FSW fs0, 44(sp)
  FSW fs0, 60(sp)
  FSW fs0, 76(sp)
  FSW fs0, 92(sp)
  FSW fs0, 108(sp)
  ADDI a0, zero, 2
  FCVT.S.W fs0, a0
  FSW fs0, 8(sp)
  FSW fs0, 48(sp)
  FSW fs0, 64(sp)
  FSW fs0, 80(sp)
  FSW fs0, 96(sp)
  FSW fs0, 112(sp)
  FLW fs0, 60(sp)
  FSW fs0, 152(sp)
  FLW fs0, 48(sp)
  FSW fs0, 164(sp)
  FLW fs0, 40(sp)
  FSW fs0, 124(sp)
  FLW fs0, 56(sp)
  FSW fs0, 128(sp)
  FLW fs0, 4(sp)
  FSW fs0, 144(sp)
  FLW fs0, 8(sp)
  FSW fs0, 160(sp)
  FLW fs0, 44(sp)
  FSW fs0, 148(sp)
  FLW fs0, 64(sp)
  FSW fs0, 168(sp)
  FLW fs0, 0(sp)
  FSW fs0, 120(sp)
  LA a0, N
  LW s0, 0(a0)
  ADDI a0, zero, 0
  BLT a0, s0, bb10
  # implict jump to bb1
bb1:
  ADDI a0, zero, 10
  CALL putch
  LA a0, N
  LW a0, 0(a0)
  BLT zero, a0, bb7
  # implict jump to bb2
bb2:
  ADDI a0, zero, 10
  CALL putch
  LA a0, N
  LW a0, 0(a0)
  BLT zero, a0, bb4
  # implict jump to bb3
bb3:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 16(sp)
  LD s0, 24(sp)
  FLD fs0, 32(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb4:
  ADD a0, zero, zero
  # implict jump to bb5
bb5:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 160
  ADD a0, t5, a0
  FLW fs0, 0(a0)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  ADDIW s0, s0, 1
  LA a0, N
  LW a0, 0(a0)
  BLT s0, a0, bb6
  JAL zero, bb3
bb6:
  ADD a0, s0, zero
  JAL zero, bb5
bb7:
  ADD a0, zero, zero
  # implict jump to bb8
bb8:
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
  BLT s0, a0, bb9
  JAL zero, bb2
bb9:
  ADD a0, s0, zero
  JAL zero, bb8
bb10:
  ADD a0, zero, zero
  # implict jump to bb11
bb11:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 120
  ADD a0, t5, a0
  FLW fs0, 0(a0)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  ADDIW s0, s0, 1
  LA a0, N
  LW a0, 0(a0)
  BLT s0, a0, bb12
  JAL zero, bb1
bb12:
  ADD a0, s0, zero
  JAL zero, bb11
