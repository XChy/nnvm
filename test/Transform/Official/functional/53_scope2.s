.global main
.section .bss

.section .data
k:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  LA a0, k
  LUI s0, 1
  ADDIW s0, s0, -707
  SW s0, 0(a0)
  LA a0, k
  LUI s0, 1
  ADDIW s0, s0, -706
  SW s0, 0(a0)
  ADDI a0, zero, 112
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  # implict jump to bb1
bb1:   # loop depth 1
  ADDIW s0, a0, -88
  SLTI s4, s0, 1000
  BNE s4, zero, bb6
  # implict jump to bb2
bb2:   # loop depth 1
  ADD a0, s0, zero
  # implict jump to bb3
bb3:   # loop depth 1
  ADDI s0, zero, 10
  BLT s0, a0, bb5
  # implict jump to bb4
bb4:   # loop depth 0
  CALL putint
  LA t0, k
  LW a0, 0(t0)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb5:   # loop depth 1
  JAL zero, bb1
bb6:   # loop depth 1
  ADDIW a0, a0, -76
  ADDI s3, zero, 11
  ADDI s2, zero, 11
  ADDI s1, zero, 10
  JAL zero, bb3
