.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss

.section .data
k:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADDI a0, zero, 9
  LA s0, k
  SLT a0, a0, zero
  ADDI s1, zero, 1
  XORI a0, a0, 1
  SW s1, 0(s0)
  BNE a0, zero, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  LA a0, k
  LA s0, k
  LW a0, 0(a0)
  CALL putint
  LW a0, 0(s0)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:   # loop depth 0
  ADD a0, zero, zero
  ADDI s0, zero, 1
  # implict jump to bb3
bb3:   # loop depth 1
  ADDI s1, zero, 9
  ADDIW a0, a0, 1
  SLT s1, s1, a0
  SLLIW s0, s0, 1
  XORI s1, s1, 1
  BNE s1, zero, bb5
  # implict jump to bb4
bb4:   # loop depth 0
  LA a0, k
  SW s0, 0(a0)
  JAL zero, bb1
bb5:   # loop depth 1
  JAL zero, bb3
