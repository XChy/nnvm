.global ififElse
.global main
.section .bss
.section .data
.section .text
ififElse:
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
  BNE s0, zero, bb1
  JAL zero, bb2
bb1:
  LW s0, 0(sp)
  XORI s1, s0, 10
  SLTIU s0, s1, 1
  BNE s0, zero, bb3
  JAL zero, bb5
bb2:
  LW s0, 8(sp)
  ADD a0, s0, zero
  LD ra, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb3:
  ADDI s0, zero, 25
  SW s0, 8(sp)
  JAL zero, bb4
bb4:
  JAL zero, bb2
bb5:
  LW s0, 8(sp)
  ADDIW s1, s0, 15
  SW s1, 8(sp)
  JAL zero, bb4
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  CALL ififElse
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
