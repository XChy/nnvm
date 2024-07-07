.global ififElse
.global main
.section .bss
.section .data
.section .text
ififElse:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
  ADDI s0, zero, 5
  JAL zero, bb2
bb1:
  ADD s1, s0, zero
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:
  ADDI s0, zero, 25
  JAL zero, bb1
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
