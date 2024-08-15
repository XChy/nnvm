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
  ADDI sp, sp, -80
  SD ra, 56(sp)
  SD s0, 64(sp)
  SD s1, 72(sp)
  ADDI t0, zero, 0
  LA s1, N
  FCVT.S.W ft0, t0
  LA t1, M
  ADDI t0, zero, 3
  LA a0, L
  FADD.S ft1, ft0, ft0
  ADDI t2, zero, 3
  SW t0, 0(s1)
  ADDI t0, zero, 3
  SW t2, 0(t1)
  ADDI t1, zero, 1
  SW t0, 0(a0)
  FCVT.S.W ft0, t1
  ADDI t0, zero, 2
  ADDI t1, zero, 1
  FSW ft1, 32(sp)
  FADD.S ft2, ft0, ft0
  FCVT.S.W ft0, t0
  FADD.S ft0, ft0, ft0
  FSW ft1, 16(sp)
  FSW ft1, 0(sp)
  FSW ft2, 36(sp)
  FSW ft2, 20(sp)
  FSW ft2, 4(sp)
  FSW ft0, 40(sp)
  FSW ft0, 24(sp)
  FSW ft0, 8(sp)
  BNE t1, zero, bb10
  # implict jump to bb1
bb1:   # loop depth 0
  ADDI a0, zero, 10
  CALL putch
  LW t0, 0(s1)
  BLT zero, t0, bb7
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI a0, zero, 10
  CALL putch
  LW t0, 0(s1)
  BLT zero, t0, bb4
  # implict jump to bb3
bb3:   # loop depth 0
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb4:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  SLLIW t0, s0, 2
  ADDIW s0, s0, 1
  ADDI t6, sp, 0
  ADD t0, t6, t0
  FLW ft0, 0(t0)
  FCVT.W.S a0, ft0, rtz
  CALL putint
  LW t0, 0(s1)
  BLT s0, t0, bb6
  JAL zero, bb3
bb6:   # loop depth 1
  JAL zero, bb5
bb7:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb8
bb8:   # loop depth 1
  SLLIW t0, s0, 2
  ADDIW s0, s0, 1
  ADDI t6, sp, 16
  ADD t0, t6, t0
  FLW ft0, 0(t0)
  FCVT.W.S a0, ft0, rtz
  CALL putint
  LW t0, 0(s1)
  BLT s0, t0, bb9
  JAL zero, bb2
bb9:   # loop depth 1
  JAL zero, bb8
bb10:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb11
bb11:   # loop depth 1
  SLLIW t0, s0, 2
  ADDIW s0, s0, 1
  ADDI t6, sp, 32
  ADD t0, t6, t0
  FLW ft0, 0(t0)
  FCVT.W.S a0, ft0, rtz
  CALL putint
  LW t0, 0(s1)
  BLT s0, t0, bb12
  JAL zero, bb1
bb12:   # loop depth 1
  JAL zero, bb11
