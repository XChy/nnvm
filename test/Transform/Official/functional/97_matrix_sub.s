.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
main:   # loop depth 0
  ADDI sp, sp, -176
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  LA t0, N
  LA t2, M
  ADDI t1, zero, 3
  ADDI a2, zero, 0
  LA a1, L
  ADDI a0, zero, 3
  SW t1, 0(t0)
  FCVT.S.W ft0, a2
  ADDI t0, zero, 3
  SW a0, 0(t2)
  SW t0, 0(a1)
  ADDI t0, zero, 1
  FSW ft0, 24(sp)
  FCVT.S.W ft1, t0
  ADDI t1, zero, 2
  ADD t0, zero, zero
  FCVT.S.W ft2, t1
  FSW ft0, 40(sp)
  FSW ft0, 56(sp)
  FSW ft0, 72(sp)
  FSW ft0, 88(sp)
  FSW ft0, 104(sp)
  FSW ft1, 28(sp)
  FSW ft1, 44(sp)
  FSW ft1, 60(sp)
  FSW ft1, 76(sp)
  FSW ft1, 92(sp)
  FSW ft1, 108(sp)
  FSW ft2, 32(sp)
  FSW ft2, 48(sp)
  FSW ft2, 64(sp)
  FSW ft2, 80(sp)
  FSW ft2, 96(sp)
  FSW ft2, 112(sp)
  # implict jump to bb1
bb1:   # loop depth 1
  SLLIW t1, t0, 2
  ADDIW t0, t0, 1
  ADDI t2, sp, 24
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
  FSUB.S ft0, ft0, ft1
  ADDI a5, sp, 160
  ADD t1, a5, t1
  SLTI a5, t0, 3
  FSW ft0, 0(t2)
  FLW ft0, 0(a1)
  FLW ft1, 0(a2)
  FSUB.S ft0, ft0, ft1
  FSW ft0, 0(a0)
  FLW ft0, 0(a3)
  FLW ft1, 0(a4)
  FSUB.S ft0, ft0, ft1
  FSW ft0, 0(t1)
  BNE a5, zero, bb6
  # implict jump to bb2
bb2:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb3
bb3:   # loop depth 1
  SLLIW t0, s0, 2
  ADDIW s0, s0, 1
  ADDI t6, sp, 120
  ADD t0, t6, t0
  SLTI s1, s0, 3
  FLW ft0, 0(t0)
  FCVT.W.S a0, ft0, rtz
  CALL putint
  BNE s1, zero, bb5
  # implict jump to bb4
bb4:   # loop depth 0
  ADDI a0, zero, 10
  CALL putch
  FLW ft0, 144(sp)
  FCVT.W.S a0, ft0, rtz
  CALL putint
  FLW ft0, 148(sp)
  FCVT.W.S a0, ft0, rtz
  CALL putint
  FLW ft0, 152(sp)
  FCVT.W.S a0, ft0, rtz
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  FLW ft0, 160(sp)
  FCVT.W.S a0, ft0, rtz
  CALL putint
  FLW ft0, 164(sp)
  FCVT.W.S a0, ft0, rtz
  CALL putint
  FLW ft0, 168(sp)
  FCVT.W.S a0, ft0, rtz
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb5:   # loop depth 1
  JAL zero, bb3
bb6:   # loop depth 1
  JAL zero, bb1
