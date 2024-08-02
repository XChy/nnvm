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
  LA a0, a
  LW a0, 0(a0)
  LA s0, b
  LW s0, 0(s0)
  MULW s1, a0, s0
  LA s2, c
  LW s2, 0(s2)
  DIVW s1, s1, s2
  LA s3, e
  LW s3, 0(s3)
  LA s4, d
  LW s4, 0(s4)
  ADDW s5, s3, s4
  XOR s1, s1, s5
  SLTIU s1, s1, 1
  BNE s1, zero, bb9
  # implict jump to bb1
bb1:
  ADD s1, zero, zero
  # implict jump to bb2
bb2:
  BNE s1, zero, bb8
  # implict jump to bb3
bb3:
  MULW s0, s0, s2
  SUBW s0, a0, s0
  DIVW a0, a0, s2
  SUBW a0, s4, a0
  XOR a0, s0, a0
  SLTIU a0, a0, 1
  # implict jump to bb4
bb4:
  BNE a0, zero, bb7
  # implict jump to bb5
bb5:
  ADD a0, zero, zero
  # implict jump to bb6
bb6:
  ADD s0, a0, zero
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
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb7:
  ADDI a0, zero, 1
  JAL zero, bb6
bb8:
  ADDI a0, zero, 1
  JAL zero, bb4
bb9:
  ADDW s1, a0, s0
  MULW s1, a0, s1
  ADDW s1, s1, s2
  ADDW s3, s4, s3
  SLT s1, s3, s1
  XORI s1, s1, 1
  JAL zero, bb2
