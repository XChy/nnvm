.global main
.section .bss





.section .data
e:
.word 0x00000000
c:
.word 0x00000000
b:
.word 0x00000000
d:
.word 0x00000000
a:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, a
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, b
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, c
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, d
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, e
  SW s0, 0(s1)
  LA s1, a
  LW s1, 0(s1)
  LA s2, b
  LW s2, 0(s2)
  LA s3, c
  LW s3, 0(s3)
  MULW s2, s2, s3
  SUBW s2, s1, s2
  LA s4, d
  LW s4, 0(s4)
  DIVW s1, s1, s3
  SUBW s1, s4, s1
  BNE s2, s1, bb9
  # implict jump to bb1
bb1:
  LA s1, a
  LW s1, 0(s1)
  LA s2, b
  LW s2, 0(s2)
  MULW s1, s1, s2
  LA s2, c
  LW s2, 0(s2)
  DIVW s1, s1, s2
  LA s2, d
  LW s2, 0(s2)
  ADDW s2, s0, s2
  XOR s1, s1, s2
  SLTIU s1, s1, 1
  # implict jump to bb2
bb2:
  BNE s1, zero, bb8
  # implict jump to bb3
bb3:
  LA s1, a
  LW s1, 0(s1)
  LA s2, b
  LW s2, 0(s2)
  ADDW s1, s1, s2
  LA s2, c
  LW s2, 0(s2)
  ADDW s1, s1, s2
  LA s2, d
  LW s2, 0(s2)
  ADDW s0, s2, s0
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
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb7:
  ADDI s0, zero, 1
  JAL zero, bb6
bb8:
  ADDI s0, zero, 1
  JAL zero, bb4
bb9:
  ADDI s1, zero, 1
  JAL zero, bb2
