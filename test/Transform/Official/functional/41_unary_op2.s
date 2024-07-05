.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADDI s0, zero, 0
  ADDI s1, zero, 4
  SUBW s2, s0, s1
  ADDI s0, zero, 56
  SUBW s1, s0, s2
  ADDIW s0, s1, 4
  XOR s1, s0, zero
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
  ADD s0, s1, zero
  JAL zero, bb2
bb2:
  ADD a0, s0, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb3:
  ADDIW s1, zero, 4
  ADD s0, s1, zero
  JAL zero, bb2
