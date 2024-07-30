.global main
.section .bss

.section .data
k:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  LA s0, k
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, zero, 9
  SLT s0, s0, zero
  XORI s0, s0, 1
  BNE s0, zero, bb2
  # implict jump to bb1
bb1:
  LA s2, k
  LW s2, 0(s2)
  ADD a0, s2, zero
  CALL putint
  LA s2, k
  LW s2, 0(s2)
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb2:
  ADD s0, zero, zero
  # implict jump to bb3
bb3:
  ADD s1, s0, zero
  ADDIW s1, s1, 1
  LA s2, k
  LW s2, 0(s2)
  SLLIW s2, s2, 1
  LA s3, k
  SW s2, 0(s3)
  ADDI s2, zero, 9
  SLT s2, s2, s1
  XORI s2, s2, 1
  BNE s2, zero, bb4
  JAL zero, bb1
bb4:
  ADD s0, s1, zero
  JAL zero, bb3
