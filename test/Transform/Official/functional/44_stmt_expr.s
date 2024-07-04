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
  SD ra, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADDI s0, zero, 0
  SW s0, 0(sp)
  LA s0, k
  ADDI s1, zero, 1
  SW s1, 0(s0)
  JAL zero, bb1
bb1:
  LW s0, 0(sp)
  LA s1, n
  LW s2, 0(s1)
  ADDI s1, zero, 1
  SUBW s3, s2, s1
  SLT s1, s3, s0
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb2
  JAL zero, bb3
bb2:
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  LA s0, k
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s0, k
  LW s1, 0(s0)
  LA s0, k
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LA s1, k
  SW s0, 0(s1)
  JAL zero, bb1
bb3:
  LA s0, k
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  LA s0, k
  LW s1, 0(s0)
  ADD a0, s1, zero
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
