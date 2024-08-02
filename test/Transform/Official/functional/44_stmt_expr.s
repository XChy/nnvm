.global main
.section .bss

.section .data
k:
.word 0x00000000
.section .text
main:
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
bb1:
  LA a0, k
  LW a0, 0(a0)
  CALL putint
  LA t0, k
  LW t0, 0(t0)
  ADD a0, t0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:
  ADD a0, zero, zero
  # implict jump to bb3
bb3:
  ADDIW a0, a0, 1
  LA s0, k
  LW s0, 0(s0)
  SLLIW s0, s0, 1
  LA s1, k
  SW s0, 0(s1)
  ADDI s0, zero, 9
  SLT s0, s0, a0
  XORI s0, s0, 1
  BNE s0, zero, bb4
  JAL zero, bb1
bb4:
  JAL zero, bb3
