.global main
.section .bss


.section .data
b:
.word 0x00000000
a:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
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
  ADD s0, s1, zero
  JAL zero, bb3
bb2:
  ADD s0, zero, zero
  JAL zero, bb3
bb3:
  BNE s0, zero, bb4
  JAL zero, bb6
bb4:
  ADDI s1, zero, 1
  JAL zero, bb5
bb5:
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb6:
  ADD s1, zero, zero
  JAL zero, bb5
