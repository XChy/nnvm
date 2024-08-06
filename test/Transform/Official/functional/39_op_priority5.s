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
main:   # loop depth 0
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  LA a0, a
  LW s0, 0(a0)
  LA a0, b
  LW s1, 0(a0)
  MULW a0, s0, s1
  LA s2, c
  LW s2, 0(s2)
  DIVW a0, a0, s2
  LA s3, e
  LW s3, 0(s3)
  LA s4, d
  LW s4, 0(s4)
  ADDW s5, s3, s4
  XOR a0, a0, s5
  SLTIU a0, a0, 1
  BNE a0, zero, bb9
  # implict jump to bb1
bb1:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb2
bb2:   # loop depth 0
  BNE a0, zero, bb8
  # implict jump to bb3
bb3:   # loop depth 0
  MULW a0, s1, s2
  SUBW a0, s0, a0
  DIVW s0, s0, s2
  SUBW s0, s4, s0
  XOR a0, a0, s0
  SLTIU a0, a0, 1
  # implict jump to bb4
bb4:   # loop depth 0
  BNE a0, zero, bb7
  # implict jump to bb5
bb5:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb6
bb6:   # loop depth 0
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
bb7:   # loop depth 0
  ADDI s0, zero, 1
  JAL zero, bb6
bb8:   # loop depth 0
  ADDI a0, zero, 1
  JAL zero, bb4
bb9:   # loop depth 0
  ADDW a0, s0, s1
  MULW a0, s0, a0
  ADDW a0, a0, s2
  ADDW s3, s4, s3
  SLT a0, s3, a0
  XORI a0, a0, 1
  JAL zero, bb2
