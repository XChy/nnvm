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
  LA a0, k
  ADDI s0, zero, 1
  SW s0, 0(a0)
  ADDI a0, zero, 9
  SLT a0, a0, zero
  XORI a0, a0, 1
  BNE a0, zero, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  LA a0, k
  LW a0, 0(a0)
  CALL putint
  LA t0, k
  LW a0, 0(t0)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:   # loop depth 0
  ADDI s0, zero, 1
  ADD a0, zero, zero
  # implict jump to bb3
bb3:   # loop depth 1
  ADDIW a0, a0, 1
  SLLIW s0, s0, 1
  ADDI s1, zero, 9
  SLT s1, s1, a0
  XORI s1, s1, 1
  BNE s1, zero, bb5
  # implict jump to bb4
bb4:   # loop depth 0
  LA a0, k
  SW s0, 0(a0)
  JAL zero, bb1
bb5:   # loop depth 1
  JAL zero, bb3
