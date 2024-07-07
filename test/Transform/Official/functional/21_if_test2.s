.global ifElseIf
.global main
.section .bss
.section .data
.section .text
ifElseIf:
  ADDI sp, sp, -32
  SD s2, 0(sp)
  SD s1, 8(sp)
  SD ra, 16(sp)
  SD s0, 24(sp)
  JAL zero, bb1
bb1:
  ADDI s0, zero, 0
  BNE s0, zero, bb2
  JAL zero, bb4
bb2:
  ADDI a0, zero, 5
  LD s2, 0(sp)
  LD s1, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb3:
  ADD a0, s1, zero
  LD s2, 0(sp)
  LD s1, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb4:
  JAL zero, bb5
bb5:
  ADDI s0, zero, 0
  BNE s0, zero, bb6
  JAL zero, bb8
bb6:
  ADDI s0, zero, 25
  JAL zero, bb7
bb7:
  ADD s1, s0, zero
  JAL zero, bb3
bb8:
  JAL zero, bb9
bb9:
  ADDI s1, zero, 0
  BNE s1, zero, bb10
  JAL zero, bb12
bb10:
  ADDI s1, zero, 20
  JAL zero, bb11
bb11:
  ADD s2, s1, zero
  ADD s0, s2, zero
  JAL zero, bb7
bb12:
  ADDI s1, zero, -5
  JAL zero, bb11
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  CALL ifElseIf
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
