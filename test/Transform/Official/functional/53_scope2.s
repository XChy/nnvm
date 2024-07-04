.global main
.section .bss

.section .data
k:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -64
  SD ra, 32(sp)
  SD s2, 40(sp)
  SD s1, 48(sp)
  SD s0, 56(sp)
  LA s0, k
  LUI s1, 1
  ADDI s1, s1, -707
  SW s1, 0(s0)
  LUI s0, 1
  ADDI s0, s0, -707
  LUI s1, 2
  ADDI s1, s1, 1808
  SLT s2, s0, s1
  BNE s2, zero, bb1
  JAL zero, bb2
bb1:
  LA s0, k
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, k
  SW s0, 0(s1)
  ADDI s0, zero, 112
  SW s0, 24(sp)
  JAL zero, bb3
bb2:
  LA s0, k
  LW s1, 0(s0)
  ADD a0, s1, zero
  LD ra, 32(sp)
  LD s2, 40(sp)
  LD s1, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb3:
  LW s0, 24(sp)
  ADDI s1, zero, 10
  SLT s2, s1, s0
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb4
  JAL zero, bb5
bb4:
  LW s0, 24(sp)
  ADDI s1, zero, 88
  SUBW s2, s0, s1
  SW s2, 24(sp)
  SLTI s0, s2, 1000
  BNE s0, zero, bb6
  JAL zero, bb7
bb5:
  LW s0, 24(sp)
  ADD a0, s0, zero
  CALL putint
  JAL zero, bb2
bb6:
  ADDI s0, zero, 9
  SW s0, 16(sp)
  ADDI s0, zero, 11
  SW s0, 8(sp)
  ADDI s0, zero, 10
  SW s0, 16(sp)
  LW s0, 24(sp)
  ADDI s1, zero, 10
  SUBW s2, s0, s1
  SW s2, 24(sp)
  ADDI s0, zero, 11
  SW s0, 0(sp)
  ADDIW s0, s2, 11
  ADDIW s1, s0, 11
  SW s1, 24(sp)
  JAL zero, bb7
bb7:
  JAL zero, bb3
