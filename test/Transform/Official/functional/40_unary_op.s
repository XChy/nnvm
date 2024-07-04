.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -32
  SD ra, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADDI s0, zero, 10
  SW s0, 0(sp)
  ADDI s0, zero, 0
  XORI s1, s0, 10
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  SUBW s1, zero, s0
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb1
  JAL zero, bb3
bb1:
  ADDI s0, zero, 1
  SUBW s1, zero, s0
  SUBW s0, zero, s1
  SUBW s1, zero, s0
  SW s1, 0(sp)
  JAL zero, bb2
bb2:
  LW s0, 0(sp)
  ADD a0, s0, zero
  LD ra, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb3:
  SW zero, 0(sp)
  JAL zero, bb2
