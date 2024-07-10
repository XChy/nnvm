.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  XOR s0, zero, zero
  SLTU s0, zero, s0
  XORI s0, s0, 1
  XOR s0, s0, zero
  SLTU s0, zero, s0
  XORI s0, s0, 1
  SUBW s0, zero, s0
  XOR s0, s0, zero
  SLTU s0, zero, s0
  BNE s0, zero, bb3
  # implict jump to bb1
bb1:
  ADDI s0, zero, 4
  # implict jump to bb2
bb2:
  ADD s0, s0, zero
  ADD a0, s0, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb3:
  ADDI s0, zero, -1
  JAL zero, bb2
