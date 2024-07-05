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
  ADDI sp, sp, -48
  SD s4, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD ra, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADDI s0, zero, 5
  XOR s1, s0, zero
  SLTIU s0, s1, 1
  BNE s0, zero, bb2
  JAL zero, bb4
bb2:
  ADDI s0, zero, 3
  JAL zero, bb5
bb3:
  ADD a0, s0, zero
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD ra, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb4:
  ADDI s1, zero, 3
  ADD s2, zero, zero
  JAL zero, bb8
bb5:
  XORI s1, s0, 2
  SLTIU s2, s1, 1
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb6
  JAL zero, bb7
bb6:
  ADDIW s1, s0, 2
  ADD s0, s1, zero
  JAL zero, bb5
bb7:
  ADDIW s1, s0, 25
  ADD s0, s1, zero
  JAL zero, bb3
bb8:
  SLTI s3, s2, 5
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb9
  JAL zero, bb10
bb9:
  ADDI s3, zero, 2
  MULW s4, s1, s3
  ADDIW s3, s2, 1
  ADD s1, s4, zero
  ADD s2, s3, zero
  JAL zero, bb8
bb10:
  ADD s0, s1, zero
  JAL zero, bb3
