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
  LW s1, 0(a0)
  LA a0, b
  LW s0, 0(a0)
  MULW s3, s1, s0
  LA a0, c
  LW s2, 0(a0)
  DIVW s3, s3, s2
  LA a0, e
  LW s5, 0(a0)
  LA a0, d
  LW s4, 0(a0)
  ADDW a0, s5, s4
  XOR a0, s3, a0
  SLTIU a0, a0, 1
  BNE a0, zero, bb9
  # implict jump to bb1
bb1:
  ADD a0, zero, zero
  # implict jump to bb2
bb2:
  BNE a0, zero, bb8
  # implict jump to bb3
bb3:
  MULW a0, s0, s2
  SUBW s0, s1, a0
  DIVW a0, s1, s2
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
  ADDW a0, s1, s0
  MULW a0, s1, a0
  ADDW s3, a0, s2
  ADDW a0, s4, s5
  SLT a0, a0, s3
  XORI a0, a0, 1
  JAL zero, bb2
