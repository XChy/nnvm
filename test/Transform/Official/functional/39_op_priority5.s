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
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  LA s0, a
  LW s0, 0(s0)
  LA s1, b
  LW s1, 0(s1)
  MULW s2, s0, s1
  LA s3, c
  LW s3, 0(s3)
  DIVW s2, s2, s3
  LA s4, e
  LW s4, 0(s4)
  LA s5, d
  LW s5, 0(s5)
  ADDW s6, s4, s5
  XOR s2, s2, s6
  SLTIU s2, s2, 1
  BNE s2, zero, bb9
  # implict jump to bb1
bb1:
  ADD s2, zero, zero
  # implict jump to bb2
bb2:
  BNE s2, zero, bb8
  # implict jump to bb3
bb3:
  MULW s1, s1, s3
  SUBW s1, s0, s1
  DIVW s0, s0, s3
  SUBW s0, s5, s0
  XOR s0, s1, s0
  SLTIU s0, s0, 1
  # implict jump to bb4
bb4:
  BNE s0, zero, bb7
  # implict jump to bb5
bb5:
  ADD s0, zero, zero
  # implict jump to bb6
bb6:
  ADD a0, s0, zero
  CALL putint
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb7:
  ADDI s0, zero, 1
  JAL zero, bb6
bb8:
  ADDI s0, zero, 1
  JAL zero, bb4
bb9:
  ADDW s6, s0, s1
  MULW s6, s0, s6
  ADDW s6, s6, s3
  ADDW s4, s5, s4
  SLT s4, s4, s6
  XORI s4, s4, 1
  ADD s2, s4, zero
  JAL zero, bb2
