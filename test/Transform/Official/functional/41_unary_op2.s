.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
  ADDI s0, zero, 1
  XORI s1, s0, 1
  XOR s0, s1, zero
  SLTU s1, zero, s0
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  SUBW s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb3
  # implict jump to bb1
bb1:
  ADDI s0, zero, 4
  # implict jump to bb2
bb2:
  ADD s1, s0, zero
  ADD a0, s1, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb3:
  ADDI s0, zero, -1
  JAL zero, bb2
