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
  SD s3, 0(sp)
  SD s2, 8(sp)
  SD s4, 16(sp)
  SD ra, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  JAL zero, bb3
bb2:
  ADD s0, s6, zero
  ADD a0, s0, zero
  LD s3, 0(sp)
  LD s2, 8(sp)
  LD s4, 16(sp)
  LD ra, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb3:
  ADDI s4, zero, 3
  ADD s0, zero, zero
  JAL zero, bb7
bb4:
  ADD s1, s2, zero
  XORI s5, s1, 2
  SLTIU s1, s5, 1
  XOR s2, s1, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb5
  JAL zero, bb6
bb5:
  ADDIW s3, s1, 2
  ADD s2, s3, zero
  JAL zero, bb4
bb6:
  ADDIW s0, s1, 25
  ADD s6, s0, zero
  JAL zero, bb2
bb7:
  ADD s1, s0, zero
  ADD s2, s4, zero
  SLTI s3, s1, 5
  XOR s5, s3, zero
  SLTU s3, zero, s5
  BNE s3, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s3, zero, 2
  MULW s5, s2, s3
  ADDIW s3, s1, 1
  ADD s4, s5, zero
  ADD s0, s3, zero
  JAL zero, bb7
bb9:
  ADD s6, s2, zero
  JAL zero, bb2
