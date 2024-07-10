.global ifElseIf
.global main
.section .bss
.section .data
.section .text
ifElseIf:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  # implict jump to bb1
bb1:
  # implict jump to bb2
bb2:
  ADDI a0, zero, -5
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  # implict jump to bb4
bb4:
  # implict jump to bb5
bb5:
  # implict jump to bb6
bb6:
  ADDI a0, zero, -5
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
