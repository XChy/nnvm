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
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
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
  BNE s0, zero, bb9
  # implict jump to bb1
bb1:
  ADD s1, zero, zero
  # implict jump to bb2
bb2:
  ADD s0, s1, zero
  BNE s0, zero, bb8
  # implict jump to bb3
bb3:
  LA s2, a
  LW s3, 0(s2)
  LA s2, b
  LW s4, 0(s2)
  LA s2, c
  LW s5, 0(s2)
  MULW s2, s4, s5
  SUBW s4, s3, s2
  LA s2, d
  LW s6, 0(s2)
  DIVW s2, s3, s5
  SUBW s3, s6, s2
  XOR s2, s4, s3
  SLTIU s3, s2, 1
  ADD s0, s3, zero
  # implict jump to bb4
bb4:
  ADD s2, s0, zero
  BNE s2, zero, bb7
  # implict jump to bb5
bb5:
  ADD s2, zero, zero
  # implict jump to bb6
bb6:
  ADD s3, s2, zero
  ADD a0, s3, zero
  CALL putint
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb7:
  ADDI s2, zero, 1
  JAL zero, bb6
bb8:
  ADDI s0, zero, 1
  JAL zero, bb4
bb9:
  LA s0, a
  LW s1, 0(s0)
  LA s0, b
  LW s2, 0(s0)
  ADDW s0, s1, s2
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
  ADD s1, s0, zero
  JAL zero, bb2
