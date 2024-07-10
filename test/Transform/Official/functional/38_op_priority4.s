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
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
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
  LA s0, a
  LW s1, 0(s0)
  LA s0, b
  LW s2, 0(s0)
  LA s0, c
  LW s3, 0(s0)
  MULW s0, s2, s3
  SUBW s2, s1, s0
  LA s0, d
  LW s4, 0(s0)
  DIVW s0, s1, s3
  SUBW s1, s4, s0
  XOR s0, s2, s1
  SLTU s1, zero, s0
  BNE s1, zero, bb9
  # implict jump to bb1
bb1:
  LA s1, a
  LW s2, 0(s1)
  LA s1, b
  LW s3, 0(s1)
  MULW s1, s2, s3
  LA s2, c
  LW s3, 0(s2)
  DIVW s2, s1, s3
  LA s1, e
  LW s3, 0(s1)
  LA s1, d
  LW s4, 0(s1)
  ADDW s1, s3, s4
  XOR s3, s2, s1
  SLTIU s1, s3, 1
  ADD s0, s1, zero
  # implict jump to bb2
bb2:
  ADD s1, s0, zero
  BNE s1, zero, bb8
  # implict jump to bb3
bb3:
  LA s2, a
  LW s3, 0(s2)
  LA s2, b
  LW s4, 0(s2)
  ADDW s2, s3, s4
  LA s3, c
  LW s4, 0(s3)
  ADDW s3, s2, s4
  LA s2, d
  LW s4, 0(s2)
  LA s2, e
  LW s5, 0(s2)
  ADDW s2, s4, s5
  XOR s4, s3, s2
  SLTIU s2, s4, 1
  ADD s1, s2, zero
  # implict jump to bb4
bb4:
  ADD s2, s1, zero
  BNE s2, zero, bb7
  # implict jump to bb5
bb5:
  ADD s2, zero, zero
  # implict jump to bb6
bb6:
  ADD s3, s2, zero
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb7:
  ADDI s2, zero, 1
  JAL zero, bb6
bb8:
  ADDI s1, zero, 1
  JAL zero, bb4
bb9:
  ADDI s0, zero, 1
  JAL zero, bb2
