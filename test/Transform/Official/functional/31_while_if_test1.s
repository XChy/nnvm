.global main
.global whileIf
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  CALL whileIf
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
whileIf:
  ADDI sp, sp, -48
  SD s2, 16(sp)
  SD ra, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADDI s0, zero, 0
  SW s0, 8(sp)
  ADDI s0, zero, 0
  SW s0, 0(sp)
  JAL zero, bb2
bb2:
  LW s0, 8(sp)
  SLTI s1, s0, 100
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb3
  JAL zero, bb4
bb3:
  LW s0, 8(sp)
  XORI s1, s0, 5
  SLTIU s0, s1, 1
  BNE s0, zero, bb5
  JAL zero, bb7
bb4:
  LW s0, 0(sp)
  ADD a0, s0, zero
  LD s2, 16(sp)
  LD ra, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb5:
  ADDI s0, zero, 25
  SW s0, 0(sp)
  JAL zero, bb6
bb6:
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb2
bb7:
  LW s0, 8(sp)
  XORI s1, s0, 10
  SLTIU s0, s1, 1
  BNE s0, zero, bb8
  JAL zero, bb10
bb8:
  ADDI s0, zero, 42
  SW s0, 0(sp)
  JAL zero, bb9
bb9:
  JAL zero, bb6
bb10:
  LW s0, 8(sp)
  ADDI s1, zero, 2
  MULW s2, s0, s1
  SW s2, 0(sp)
  JAL zero, bb9
