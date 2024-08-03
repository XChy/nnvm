.global main
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
  LA s0, M
  ADDI a0, zero, 3
  SW a0, 0(s0)
  LA s0, L
  ADDI a0, zero, 3
  SW a0, 0(s0)
  ADD a0, zero, zero
  # implict jump to bb1
bb1:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 48
  ADD s1, t5, a0
  FCVT.S.W fs0, s0
  FSW fs0, 0(s1)
  ADDI t5, sp, 64
  ADD s1, t5, a0
  FSW fs0, 0(s1)
  ADDI t5, sp, 80
  ADD s1, t5, a0
  FSW fs0, 0(s1)
  ADDI t5, sp, 96
  ADD s1, t5, a0
  FSW fs0, 0(s1)
  ADDI t5, sp, 112
  ADD s1, t5, a0
  FSW fs0, 0(s1)
  ADDI t5, sp, 128
  ADD a0, t5, a0
  FSW fs0, 0(a0)
  ADDIW a0, s0, 1
  SLTI s0, a0, 3
  BNE s0, zero, bb15
  # implict jump to bb2
bb2:
  ADD a0, zero, zero
  # implict jump to bb3
bb3:
  ADD s1, a0, zero
  SLLIW s2, s1, 2
  ADDI a0, sp, 144
  ADD a0, a0, s2
  ADDI t5, sp, 48
  ADD s0, t5, s2
  FLW fs1, 0(s0)
  ADDI t5, sp, 96
  ADD s0, t5, s2
  FLW fs0, 0(s0)
  FSUB.S fs0, fs1, fs0
  FSW fs0, 0(a0)
  ADDI t5, sp, 168
  ADD s0, t5, s2
  ADDI a0, sp, 64
  ADD a0, a0, s2
  FLW fs1, 0(a0)
  ADDI a0, sp, 112
  ADD a0, a0, s2
  FLW fs0, 0(a0)
  FSUB.S fs0, fs1, fs0
  FSW fs0, 0(s0)
  ADDI t5, sp, 184
  ADD s0, t5, s2
  ADDI a0, sp, 80
  ADD a0, a0, s2
  FLW fs1, 0(a0)
  ADDI a0, sp, 128
  ADD a0, a0, s2
  FLW fs0, 0(a0)
  FSUB.S fs0, fs1, fs0
  FSW fs0, 0(s0)
  ADDIW a0, s1, 1
  SLTI s0, a0, 3
  BNE s0, zero, bb14
  # implict jump to bb4
bb4:
  ADD a0, zero, zero
  # implict jump to bb5
bb5:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 144
  ADD a0, t5, a0
  FLW fs0, 0(a0)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  ADDIW s0, s0, 1
  SLTI a0, s0, 3
  BNE a0, zero, bb13
  # implict jump to bb6
bb6:
  ADDI a0, zero, 10
  CALL putch
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
  SLTI a0, s0, 3
  BNE a0, zero, bb12
  # implict jump to bb8
bb8:
  ADDI a0, zero, 10
  CALL putch
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
  SLTI s0, a0, 3
  BNE s0, zero, bb11
  # implict jump to bb10
bb10:
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
bb11:
  JAL zero, bb9
bb12:
  ADD a0, s0, zero
  JAL zero, bb7
bb13:
  ADD a0, s0, zero
  JAL zero, bb5
bb14:
  JAL zero, bb3
bb15:
  JAL zero, bb1
