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
  SD s0, 8(sp)
  SD s1, 16(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, a
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, b
  SW s0, 0(s1)
  LA s1, a
  LW s1, 0(s1)
  XOR s0, s1, s0
  SLTIU s0, s0, 1
  BNE s0, zero, bb6
  # implict jump to bb1
bb1:
  ADD s0, zero, zero
  # implict jump to bb2
bb2:
  BNE s0, zero, bb5
  # implict jump to bb3
bb3:
  ADD s0, zero, zero
  # implict jump to bb4
bb4:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb5:
  ADDI s0, zero, 1
  JAL zero, bb4
bb6:
  LA s1, a
  LW s1, 0(s1)
  XORI s1, s1, 3
  SLTU s1, zero, s1
  ADD s0, s1, zero
  JAL zero, bb2
