.global main
.global if_ifElse_
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  CALL if_ifElse_
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
if_ifElse_:
  ADDI sp, sp, -48
  SD ra, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADDI s0, zero, 5
  SW s0, 8(sp)
  ADDI s0, zero, 10
  SW s0, 0(sp)
  LW s0, 8(sp)
  XORI s1, s0, 5
  SLTIU s0, s1, 1
  BNE s0, zero, bb2
  JAL zero, bb3
bb2:
  LW s0, 0(sp)
  XORI s1, s0, 10
  SLTIU s0, s1, 1
  BNE s0, zero, bb4
  JAL zero, bb6
bb3:
  LW s0, 8(sp)
  ADD a0, s0, zero
  LD ra, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb4:
  ADDI s0, zero, 25
  SW s0, 8(sp)
  JAL zero, bb5
bb5:
  JAL zero, bb3
bb6:
  LW s0, 8(sp)
  ADDIW s1, s0, 15
  SW s1, 8(sp)
  JAL zero, bb5
