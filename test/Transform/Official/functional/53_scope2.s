.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss

.section .data
k:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  LUI t1, 1
  LA t0, k
  LUI a3, 1
  LA a2, k
  ADDIW t1, t1, -707
  ADDIW a3, a3, -706
  SW t1, 0(t0)
  ADD a1, zero, zero
  ADD t2, zero, zero
  ADD t1, zero, zero
  ADDI a0, zero, 112
  SW a3, 0(a2)
  # implict jump to bb1
bb1:   # loop depth 1
  ADDIW t0, a0, -88
  SLTI a2, t0, 1000
  BNE a2, zero, bb6
  # implict jump to bb2
bb2:   # loop depth 1
  ADD a0, t0, zero
  # implict jump to bb3
bb3:   # loop depth 1
  ADDI t0, zero, 10
  BLT t0, a0, bb5
  # implict jump to bb4
bb4:   # loop depth 0
  LA s0, k
  CALL putint
  LW a0, 0(s0)
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb5:   # loop depth 1
  JAL zero, bb1
bb6:   # loop depth 1
  ADDIW a0, a0, -76
  ADDI t1, zero, 10
  ADDI t2, zero, 11
  ADDI a1, zero, 11
  JAL zero, bb3
