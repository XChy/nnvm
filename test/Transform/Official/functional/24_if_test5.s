.global main
.global if_if_Else
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  CALL if_if_Else
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
if_if_Else:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
  ADDI s0, zero, 5
  ADDI s0, zero, 25
  JAL zero, bb3
bb2:
  ADD s1, s0, zero
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb3:
  ADD s1, s0, zero
  ADD s0, s1, zero
  JAL zero, bb2
