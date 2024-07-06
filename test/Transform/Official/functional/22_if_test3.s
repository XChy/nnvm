.global ififElse
.global main
.section .bss
.section .data
.section .text
ififElse:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADDI s0, zero, 5
  XORI s1, s0, 5
  SLTIU s0, s1, 1
  BNE s0, zero, bb1
  JAL zero, bb6
bb1:
  ADDI s0, zero, 10
  XORI s1, s0, 10
  SLTIU s0, s1, 1
  BNE s0, zero, bb3
  JAL zero, bb5
bb2:
  ADD s1, s2, zero
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb3:
  ADDI s0, zero, 25
  JAL zero, bb4
bb4:
  ADD s1, s0, zero
  ADD s2, s1, zero
  JAL zero, bb2
bb5:
  ADDI s0, zero, 20
  JAL zero, bb4
bb6:
  ADDI s2, zero, 5
  JAL zero, bb2
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
