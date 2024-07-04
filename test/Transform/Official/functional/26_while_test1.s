.global doubleWhile
.global main
.section .bss
.section .data
.section .text
doubleWhile:
  ADDI sp, sp, -48
  SD s2, 16(sp)
  SD ra, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADDI s0, zero, 5
  SW s0, 8(sp)
  ADDI s0, zero, 7
  SW s0, 0(sp)
  JAL zero, bb1
bb1:
  LW s0, 8(sp)
  SLTI s1, s0, 100
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  LW s0, 8(sp)
  ADDIW s1, s0, 30
  SW s1, 8(sp)
  JAL zero, bb4
bb3:
  LW s0, 0(sp)
  ADD a0, s0, zero
  LD s2, 16(sp)
  LD ra, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb4:
  LW s0, 0(sp)
  SLTI s1, s0, 100
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb5
  JAL zero, bb6
bb5:
  LW s0, 0(sp)
  ADDIW s1, s0, 6
  SW s1, 0(sp)
  JAL zero, bb4
bb6:
  LW s0, 0(sp)
  ADDI s1, zero, 100
  SUBW s2, s0, s1
  SW s2, 0(sp)
  JAL zero, bb1
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  CALL doubleWhile
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
