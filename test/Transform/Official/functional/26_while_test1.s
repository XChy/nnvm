.global doubleWhile
.global main
.section .bss
.section .data
.section .text
doubleWhile:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s7, 8(sp)
  SD s4, 16(sp)
  SD s3, 24(sp)
  SD s2, 32(sp)
  SD s6, 40(sp)
  SD s1, 48(sp)
  SD s5, 56(sp)
  SD s0, 64(sp)
  ADDI s0, zero, 7
  ADDI s1, zero, 5
  JAL zero, bb1
bb1:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s2, 100
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb2
  JAL zero, bb3
bb2:
  ADDIW s4, s2, 30
  ADD s2, s3, zero
  JAL zero, bb4
bb3:
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s7, 8(sp)
  LD s4, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD s6, 40(sp)
  LD s1, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb4:
  ADD s5, s2, zero
  SLTI s6, s5, 100
  XOR s7, s6, zero
  SLTU s6, zero, s7
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
