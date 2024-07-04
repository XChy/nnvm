.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -64
  SD ra, 16(sp)
  SD s3, 24(sp)
  SD s2, 32(sp)
  SD s1, 40(sp)
  SD s0, 48(sp)
  ADDI s0, zero, 56
  SW s0, 8(sp)
  ADDI s0, zero, 4
  SW s0, 0(sp)
  LW s0, 8(sp)
  ADDI s1, zero, 0
  ADDI s2, zero, 4
  SUBW s3, s1, s2
  SUBW s1, s0, s3
  ADDIW s0, s1, 4
  SW s0, 8(sp)
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
  SW s1, 8(sp)
  JAL zero, bb2
bb2:
  LW s0, 8(sp)
  ADD a0, s0, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb3:
  LW s0, 0(sp)
  ADDW s1, zero, s0
  SW s1, 8(sp)
  JAL zero, bb2
