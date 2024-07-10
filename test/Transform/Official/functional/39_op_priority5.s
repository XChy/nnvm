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
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  LA s0, a
  LW s0, 0(s0)
  LA s1, b
  LW s1, 0(s1)
  MULW s0, s0, s1
  LA s1, c
  LW s1, 0(s1)
  DIVW s0, s0, s1
  LA s1, e
  LW s1, 0(s1)
  LA s2, d
  LW s2, 0(s2)
  ADDW s1, s1, s2
  XOR s0, s0, s1
  SLTIU s0, s0, 1
  BNE s0, zero, bb9
  # implict jump to bb1
bb1:
  ADD s0, zero, zero
  # implict jump to bb2
bb2:
  ADD s0, s0, zero
  BNE s0, zero, bb8
  # implict jump to bb3
bb3:
  LA s0, a
  LW s0, 0(s0)
  LA s1, b
  LW s1, 0(s1)
  LA s2, c
  LW s2, 0(s2)
  MULW s1, s1, s2
  SUBW s1, s0, s1
  LA s3, d
  LW s3, 0(s3)
  DIVW s0, s0, s2
  SUBW s0, s3, s0
  XOR s0, s1, s0
  SLTIU s0, s0, 1
  ADD s0, s0, zero
  # implict jump to bb4
bb4:
  ADD s0, s0, zero
  BNE s0, zero, bb7
  # implict jump to bb5
bb5:
  ADD s0, zero, zero
  # implict jump to bb6
bb6:
  ADD s0, s0, zero
  ADD a0, s0, zero
  CALL putint
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb7:
  ADDI s0, zero, 1
  JAL zero, bb6
bb8:
  ADDI s0, zero, 1
  JAL zero, bb4
bb9:
  LA s1, a
  LW s1, 0(s1)
  LA s2, b
  LW s2, 0(s2)
  ADDW s2, s1, s2
  MULW s1, s1, s2
  LA s2, c
  LW s2, 0(s2)
  ADDW s1, s1, s2
  LA s2, d
  LW s2, 0(s2)
  LA s3, e
  LW s3, 0(s3)
  ADDW s2, s2, s3
  SLT s1, s2, s1
  XORI s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb2
