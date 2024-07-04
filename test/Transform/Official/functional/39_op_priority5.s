.global main
.section .bss





.section .data
e:
.word 0x00000004
c:
.word 0x00000001
b:
.word 0x00000000
d:
.word 0x00000002
a:
.word 0x00000001
.section .text
main:
  ADDI sp, sp, -80
  SD ra, 24(sp)
  SD s4, 32(sp)
  SD s3, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  SD s0, 64(sp)
  ADDI s0, zero, 0
  SW s0, 16(sp)
  LA s0, a
  LW s1, 0(s0)
  LA s0, b
  LW s2, 0(s0)
  MULW s0, s1, s2
  LA s1, c
  LW s2, 0(s1)
  DIVW s1, s0, s2
  LA s0, e
  LW s2, 0(s0)
  LA s0, d
  LW s3, 0(s0)
  ADDW s0, s2, s3
  XOR s2, s1, s0
  SLTIU s0, s2, 1
  BNE s0, zero, bb1
  JAL zero, bb2
bb1:
  LA s0, a
  LW s1, 0(s0)
  LA s0, a
  LW s2, 0(s0)
  LA s0, b
  LW s3, 0(s0)
  ADDW s0, s2, s3
  MULW s2, s1, s0
  LA s0, c
  LW s1, 0(s0)
  ADDW s0, s2, s1
  LA s1, d
  LW s2, 0(s1)
  LA s1, e
  LW s3, 0(s1)
  ADDW s1, s2, s3
  SLT s2, s1, s0
  XORI s0, s2, 1
  SB s0, 8(sp)
  JAL zero, bb3
bb2:
  ADDI s0, zero, 0
  SB s0, 8(sp)
  JAL zero, bb3
bb3:
  LB s0, 8(sp)
  BNE s0, zero, bb4
  JAL zero, bb5
bb4:
  ADDI s0, zero, 1
  SB s0, 0(sp)
  JAL zero, bb6
bb5:
  LA s0, a
  LW s1, 0(s0)
  LA s0, b
  LW s2, 0(s0)
  LA s0, c
  LW s3, 0(s0)
  MULW s0, s2, s3
  SUBW s2, s1, s0
  LA s0, d
  LW s1, 0(s0)
  LA s0, a
  LW s3, 0(s0)
  LA s0, c
  LW s4, 0(s0)
  DIVW s0, s3, s4
  SUBW s3, s1, s0
  XOR s0, s2, s3
  SLTIU s1, s0, 1
  XOR s0, s1, zero
  SLTU s1, zero, s0
  SB s1, 0(sp)
  JAL zero, bb6
bb6:
  LB s0, 0(sp)
  BNE s0, zero, bb7
  JAL zero, bb8
bb7:
  ADDI s0, zero, 1
  SW s0, 16(sp)
  JAL zero, bb8
bb8:
  LW s0, 16(sp)
  ADD a0, s0, zero
  CALL putint
  LW s0, 16(sp)
  ADD a0, s0, zero
  LD ra, 24(sp)
  LD s4, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
