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
  LA s0, k
  ADDI a0, zero, 1
  SW a0, 0(s0)
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
  ADDIW s1, a0, 1
  LA a0, k
  LW a0, 0(a0)
  SLLIW s0, a0, 1
  LA a0, k
  SW s0, 0(a0)
  ADDI a0, zero, 9
  SLT a0, a0, s1
  XORI a0, a0, 1
  BNE a0, zero, bb4
  JAL zero, bb1
bb4:
  ADD a0, s1, zero
  JAL zero, bb3
