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
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  LA s0, k
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADD s0, zero, zero
  JAL zero, bb1
bb1:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  ADDI s2, zero, 1
  SUBW s4, s3, s2
  SLT s2, s4, s1
  XORI s3, s2, 1
  BNE s3, zero, bb2
  JAL zero, bb3
bb2:
  ADDIW s2, s1, 1
  LA s1, k
  LW s3, 0(s1)
  LA s1, k
  LW s4, 0(s1)
  ADDW s1, s3, s4
  LA s3, k
  SW s1, 0(s3)
  ADD s0, s2, zero
  JAL zero, bb1
bb3:
  LA s0, k
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  LA s0, k
  LW s1, 0(s0)
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
