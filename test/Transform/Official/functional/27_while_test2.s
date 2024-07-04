.global FourWhile
.global main
.section .bss
.section .data
.section .text
FourWhile:
  ADDI sp, sp, -80
  SD ra, 32(sp)
  SD s3, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  SD s0, 64(sp)
  ADDI s0, zero, 5
  SW s0, 24(sp)
  ADDI s0, zero, 6
  SW s0, 16(sp)
  ADDI s0, zero, 7
  SW s0, 8(sp)
  ADDI s0, zero, 10
  SW s0, 0(sp)
  JAL zero, bb1
bb1:
  LW s0, 24(sp)
  SLTI s1, s0, 20
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  LW s0, 24(sp)
  ADDIW s1, s0, 3
  SW s1, 24(sp)
  JAL zero, bb4
bb3:
  LW s0, 24(sp)
  LW s1, 16(sp)
  LW s2, 0(sp)
  ADDW s3, s1, s2
  ADDW s1, s0, s3
  LW s0, 8(sp)
  ADDW s2, s1, s0
  ADD a0, s2, zero
  LD ra, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb4:
  LW s0, 16(sp)
  SLTI s1, s0, 10
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb5
  JAL zero, bb6
bb5:
  LW s0, 16(sp)
  ADDIW s1, s0, 1
  SW s1, 16(sp)
  JAL zero, bb7
bb6:
  LW s0, 16(sp)
  ADDI s1, zero, 2
  SUBW s2, s0, s1
  SW s2, 16(sp)
  JAL zero, bb1
bb7:
  LW s0, 8(sp)
  XORI s1, s0, 7
  SLTIU s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb8
  JAL zero, bb9
bb8:
  LW s0, 8(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 8(sp)
  JAL zero, bb10
bb9:
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb4
bb10:
  LW s0, 0(sp)
  SLTI s1, s0, 20
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb11
  JAL zero, bb12
bb11:
  LW s0, 0(sp)
  ADDIW s1, s0, 3
  SW s1, 0(sp)
  JAL zero, bb10
bb12:
  LW s0, 0(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 0(sp)
  JAL zero, bb7
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  CALL FourWhile
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
