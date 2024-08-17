.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
main:   # loop depth 0
  ADDI sp, sp, -176
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  LA s1, N
  LA t1, M
  ADDI t0, zero, 3
  ADDI a1, zero, 0
  LA a0, L
  ADDI t2, zero, 3
  SW t0, 0(s1)
  FCVT.S.W ft0, a1
  ADDI t0, zero, 3
  SW t2, 0(t1)
  SW t0, 0(a0)
  ADDI t0, zero, 1
  FSW ft0, 0(sp)
  FCVT.S.W ft1, t0
  ADDI t1, zero, 2
  ADD t0, zero, zero
  FCVT.S.W ft2, t1
  FSW ft0, 40(sp)
  FSW ft0, 56(sp)
  FSW ft0, 72(sp)
  FSW ft0, 88(sp)
  FSW ft0, 104(sp)
  FSW ft1, 4(sp)
  FSW ft1, 44(sp)
  FSW ft1, 60(sp)
  FSW ft1, 76(sp)
  FSW ft1, 92(sp)
  FSW ft1, 108(sp)
  FSW ft2, 8(sp)
  FSW ft2, 48(sp)
  FSW ft2, 64(sp)
  FSW ft2, 80(sp)
  FSW ft2, 96(sp)
  FSW ft2, 112(sp)
  # implict jump to bb1
bb1:   # loop depth 1
  SLLIW t1, t0, 2
  ADDIW t0, t0, 1
  ADDI t2, sp, 0
  ADD t2, t2, t1
  ADDI a0, sp, 72
  ADD a0, a0, t1
  FLW ft0, 0(t2)
  ADDI t2, sp, 120
  ADD t2, t2, t1
  ADDI a1, sp, 40
  ADD a1, a1, t1
  ADDI a2, sp, 88
  ADD a2, a2, t1
  FLW ft1, 0(a0)
  ADDI a0, sp, 144
  ADD a0, a0, t1
  ADDI a3, sp, 56
  ADD a3, a3, t1
  ADDI a4, sp, 104
  ADD a4, a4, t1
  FADD.S ft0, ft0, ft1
  ADDI a5, sp, 160
  ADD t1, a5, t1
  SLTI a5, t0, 3
  FSW ft0, 0(t2)
  FLW ft0, 0(a1)
  FLW ft1, 0(a2)
  FADD.S ft0, ft0, ft1
  FSW ft0, 0(a0)
  FLW ft0, 0(a3)
  FLW ft1, 0(a4)
  FADD.S ft0, ft0, ft1
  FSW ft0, 0(t1)
  BNE a5, zero, bb15
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI t0, zero, 1
  BNE t0, zero, bb12
  # implict jump to bb3
bb3:   # loop depth 0
  ADDI a0, zero, 10
  CALL putch
  LW t0, 0(s1)
  BLT zero, t0, bb9
  # implict jump to bb4
bb4:   # loop depth 0
  ADDI a0, zero, 10
  CALL putch
  LW t0, 0(s1)
  BLT zero, t0, bb6
  # implict jump to bb5
bb5:   # loop depth 0
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb6:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb7
bb7:   # loop depth 1
  SLLIW t0, s0, 2
  ADDIW s0, s0, 1
  ADDI t6, sp, 160
  ADD t0, t6, t0
  FLW ft0, 0(t0)
  FCVT.W.S a0, ft0, rtz
  CALL putint
  LW t0, 0(s1)
  BLT s0, t0, bb8
  JAL zero, bb5
bb8:   # loop depth 1
  JAL zero, bb7
bb9:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb10
bb10:   # loop depth 1
  SLLIW t0, s0, 2
  ADDIW s0, s0, 1
  ADDI t6, sp, 144
  ADD t0, t6, t0
  FLW ft0, 0(t0)
  FCVT.W.S a0, ft0, rtz
  CALL putint
  LW t0, 0(s1)
  BLT s0, t0, bb11
  JAL zero, bb4
bb11:   # loop depth 1
  JAL zero, bb10
bb12:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb13
bb13:   # loop depth 1
  SLLIW t0, s0, 2
  ADDIW s0, s0, 1
  ADDI t6, sp, 120
  ADD t0, t6, t0
  FLW ft0, 0(t0)
  FCVT.W.S a0, ft0, rtz
  CALL putint
  LW t0, 0(s1)
  BLT s0, t0, bb14
  JAL zero, bb3
bb14:   # loop depth 1
  JAL zero, bb13
bb15:   # loop depth 1
  JAL zero, bb1
