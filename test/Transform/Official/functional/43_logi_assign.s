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
  BNE s0, zero, bb6
  # implict jump to bb1
bb1:
  ADD s0, zero, zero
  # implict jump to bb2
bb2:
  ADD s1, s0, zero
  BNE s1, zero, bb5
  # implict jump to bb3
bb3:
  ADD s1, zero, zero
  # implict jump to bb4
bb4:
  ADD s2, s1, zero
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb5:
  ADDI s1, zero, 1
  JAL zero, bb4
bb6:
  LA s0, a
  LW s1, 0(s0)
  XORI s0, s1, 3
  SLTU s1, zero, s0
  ADD s0, s1, zero
  JAL zero, bb2
