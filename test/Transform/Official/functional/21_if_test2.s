.global ifElseIf
.global main
.section .bss
.section .data
.section .text
ifElseIf:
  ADDI sp, sp, -32
  SD s2, 0(sp)
  SD ra, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  JAL zero, bb1
bb1:
  ADD s0, zero, zero
  JAL zero, bb2
bb2:
  ADD s1, s0, zero
  BNE s1, zero, bb3
  JAL zero, bb5
bb3:
  ADDI a0, zero, 5
  LD s2, 0(sp)
  LD ra, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb4:
  ADD a0, s1, zero
  LD s2, 0(sp)
  LD ra, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb5:
  JAL zero, bb6
bb6:
  ADD s0, zero, zero
  JAL zero, bb7
bb7:
  ADD s1, s0, zero
  BNE s1, zero, bb8
  JAL zero, bb10
bb8:
  ADDI s0, zero, 25
  JAL zero, bb9
bb9:
  ADD s1, s0, zero
  JAL zero, bb4
bb10:
  JAL zero, bb11
bb11:
  ADD s1, zero, zero
  JAL zero, bb12
bb12:
  ADD s2, s1, zero
  BNE s2, zero, bb13
  JAL zero, bb15
bb13:
  ADDI s1, zero, 20
  JAL zero, bb14
bb14:
  ADD s2, s1, zero
  ADD s0, s2, zero
  JAL zero, bb9
bb15:
  ADDI s1, zero, -5
  JAL zero, bb14
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
