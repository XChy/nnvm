.global doubleWhile
.global main
.section .bss
.section .data
.section .text
doubleWhile:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  ADDI s0, zero, 7
  ADDI s1, zero, 5
  JAL zero, bb1
bb1:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s2, 100
  BNE s4, zero, bb2
  JAL zero, bb3
bb2:
  ADDIW s4, s2, 30
  ADD s2, s3, zero
  JAL zero, bb4
bb3:
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb4:
  ADD s5, s2, zero
  SLTI s6, s5, 100
  BNE s6, zero, bb5
  JAL zero, bb6
bb5:
  ADDIW s6, s5, 6
  ADD s2, s6, zero
  JAL zero, bb4
bb6:
  ADDI s2, zero, 100
  SUBW s6, s5, s2
  ADD s0, s6, zero
  ADD s1, s4, zero
  JAL zero, bb1
main:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  ADDI s0, zero, 7
  ADDI s1, zero, 5
  JAL zero, bb8
bb8:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s2, 100
  BNE s4, zero, bb9
  JAL zero, bb10
bb9:
  ADDIW s4, s2, 30
  ADD s2, s3, zero
  JAL zero, bb11
bb10:
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb11:
  ADD s5, s2, zero
  SLTI s6, s5, 100
  BNE s6, zero, bb12
  JAL zero, bb13
bb12:
  ADDIW s6, s5, 6
  ADD s2, s6, zero
  JAL zero, bb11
bb13:
  ADDI s2, zero, 100
  SUBW s6, s5, s2
  ADD s0, s6, zero
  ADD s1, s4, zero
  JAL zero, bb8
