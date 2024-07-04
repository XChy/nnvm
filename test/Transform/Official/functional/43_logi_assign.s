.global main
.section .bss


.section .data
b:
.word 0x00000000
a:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -48
  SD ra, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, a
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, b
  SW s0, 0(s1)
  LA s1, a
  LW s2, 0(s1)
  XOR s1, s2, s0
  SLTIU s0, s1, 1
  BNE s0, zero, bb1
  JAL zero, bb2
bb1:
  LA s0, a
  LW s1, 0(s0)
  XORI s0, s1, 3
  SLTU s1, zero, s0
  SB s1, 0(sp)
  JAL zero, bb3
bb2:
  ADDI s0, zero, 0
  SB s0, 0(sp)
  JAL zero, bb3
bb3:
  LB s0, 0(sp)
  BNE s0, zero, bb4
  JAL zero, bb6
bb4:
  ADDI s0, zero, 1
  SW s0, 8(sp)
  JAL zero, bb5
bb5:
  LW s0, 8(sp)
  ADD a0, s0, zero
  LD ra, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb6:
  ADDI s0, zero, 0
  SW s0, 8(sp)
  JAL zero, bb5
