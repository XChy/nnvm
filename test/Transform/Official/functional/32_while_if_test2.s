.global main
.global ifWhile
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  CALL ifWhile
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
ifWhile:
  ADDI sp, sp, -64
  SD s4, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD ra, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  ADDI s0, zero, 5
  XOR s1, s0, zero
  SLTIU s0, s1, 1
  BNE s0, zero, bb2
  JAL zero, bb4
bb2:
  ADDI s0, zero, 3
  JAL zero, bb5
bb3:
  ADD s0, s1, zero
  ADD a0, s0, zero
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD ra, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb4:
  ADDI s0, zero, 3
  ADD s2, zero, zero
  JAL zero, bb8
bb5:
  ADD s1, s0, zero
  XORI s2, s1, 2
  SLTIU s3, s2, 1
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb6
  JAL zero, bb7
bb6:
  ADDIW s2, s1, 2
  ADD s0, s2, zero
  JAL zero, bb5
bb7:
  ADDIW s0, s1, 25
  ADD s1, s0, zero
  JAL zero, bb3
bb8:
  ADD s3, s2, zero
  ADD s4, s0, zero
  SLTI s5, s3, 5
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb9
  JAL zero, bb10
bb9:
  ADDI s5, zero, 2
  MULW s6, s4, s5
  ADDIW s5, s3, 1
  ADD s0, s6, zero
  ADD s2, s5, zero
  JAL zero, bb8
bb10:
  ADD s1, s4, zero
  JAL zero, bb3
