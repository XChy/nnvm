.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  JAL zero, bb1
bb1:
  JAL zero, bb2
bb2:
  ADDI s0, zero, 1
  BNE s0, zero, bb3
  JAL zero, bb4
bb3:
  ADDI a0, zero, 2
  CALL putint
  JAL zero, bb4
bb4:
  JAL zero, bb6
bb5:
  ADDI s0, zero, 0
  BNE s0, zero, bb8
  JAL zero, bb9
bb6:
  JAL zero, bb7
bb7:
  JAL zero, bb5
bb8:
  ADDI a0, zero, 4
  CALL putint
  JAL zero, bb9
bb9:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
