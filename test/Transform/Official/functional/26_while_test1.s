.global doubleWhile
.global main
.section .bss
.section .data
.section .text
doubleWhile:
  ADDI sp, sp, -64
  SD s4, 0(sp)
  SD ra, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  ADDI s0, zero, 7
  ADDI s1, zero, 5
  JAL zero, bb1
bb1:
  SLTI s2, s1, 100
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb2
  JAL zero, bb3
bb2:
  ADDIW s2, s1, 30
  ADD s3, s0, zero
  JAL zero, bb4
bb3:
  ADD a0, s0, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb4:
  SLTI s4, s3, 100
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb5
  JAL zero, bb6
bb5:
  ADDIW s4, s3, 6
  ADD s3, s4, zero
  JAL zero, bb4
bb6:
  ADDI s4, zero, 100
  SUBW s5, s3, s4
  ADD s0, s5, zero
  ADD s1, s2, zero
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
