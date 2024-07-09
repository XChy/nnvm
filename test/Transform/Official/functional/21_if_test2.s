.global ifElseIf
.global main
.section .bss
.section .data
.section .text
ifElseIf:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  JAL zero, bb4
bb1:
  ADDI a0, zero, -5
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb2:
  JAL zero, bb1
bb3:
  JAL zero, bb2
bb4:
  JAL zero, bb3
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  JAL zero, bb10
bb6:
  ADDI a0, zero, -5
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb7:
  JAL zero, bb6
bb8:
  JAL zero, bb7
bb9:
  JAL zero, bb8
bb10:
  JAL zero, bb9
