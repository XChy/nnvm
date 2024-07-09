.global ifElseIf
.global main
.section .bss
.section .data
.section .text
ifElseIf:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  JAL zero, bb2
bb1:
  ADDI a0, zero, -5
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb2:
  JAL zero, bb1
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  JAL zero, bb6
bb4:
  ADDI a0, zero, -5
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb5:
  JAL zero, bb4
bb6:
  JAL zero, bb5
