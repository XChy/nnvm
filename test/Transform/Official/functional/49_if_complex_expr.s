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
  ADDI s0, zero, 1
  BNE s0, zero, bb2
  JAL zero, bb3
bb2:
  ADDI a0, zero, 2
  CALL putint
  JAL zero, bb3
bb3:
  JAL zero, bb5
bb4:
  ADDI s0, zero, 0
  BNE s0, zero, bb6
  JAL zero, bb7
bb5:
  JAL zero, bb4
bb6:
  ADDI a0, zero, 4
  CALL putint
  JAL zero, bb7
bb7:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
