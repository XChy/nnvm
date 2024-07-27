.global main
.section .bss


.section .data
n:
.word 0x0000000a
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
  LA s1, k
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDI s1, zero, 9
  SLT s1, s1, zero
  XORI s1, s1, 1
  BNE s1, zero, bb2
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
  # implict jump to bb3
bb3:
  ADD s1, zero, zero
  # implict jump to bb4
bb4:
  ADD s2, s1, zero
  ADDIW s0, s2, 1
  LA s2, k
  LW s2, 0(s2)
  SLLIW s2, s2, 1
  LA s3, k
  SW s2, 0(s3)
  # implict jump to bb5
bb5:
  ADDI s2, zero, 9
  SLT s2, s2, s0
  XORI s2, s2, 1
  BNE s2, zero, bb6
  JAL zero, bb1
bb6:
  ADD s1, s0, zero
  JAL zero, bb4
