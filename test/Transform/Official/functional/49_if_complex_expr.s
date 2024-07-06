.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
  JAL zero, bb1
bb1:
  ADDI s0, zero, 1
  JAL zero, bb2
bb2:
  ADD s1, s0, zero
  BNE s1, zero, bb3
  JAL zero, bb4
bb3:
  ADDI a0, zero, 2
  CALL putint
  JAL zero, bb4
bb4:
  JAL zero, bb5
bb5:
  JAL zero, bb7
bb6:
  ADD s1, s0, zero
  BNE s1, zero, bb9
  JAL zero, bb10
bb7:
  ADD s0, zero, zero
  JAL zero, bb8
bb8:
  ADD s1, s0, zero
  XOR s0, s1, zero
  SLTU s1, zero, s0
  ADD s0, s1, zero
  JAL zero, bb6
bb9:
  ADDI a0, zero, 4
  CALL putint
  JAL zero, bb10
bb10:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
