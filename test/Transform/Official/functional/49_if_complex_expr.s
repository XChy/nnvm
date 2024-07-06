.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADDI s0, zero, -2
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SLT s0, s2, zero
  BNE s0, zero, bb1
  JAL zero, bb2
bb1:
  ADDI s0, zero, 1
  JAL zero, bb3
bb2:
  JAL zero, bb4
bb3:
  ADD s1, s0, zero
  BNE s1, zero, bb6
  JAL zero, bb7
bb4:
  ADD s1, zero, zero
  JAL zero, bb5
bb5:
  ADD s2, s1, zero
  XOR s1, s2, zero
  SLTU s2, zero, s1
  ADD s0, s2, zero
  JAL zero, bb3
bb6:
  ADDI a0, zero, 2
  CALL putint
  JAL zero, bb7
bb7:
  ADDI s1, zero, -2
  ADDI s2, zero, 2
  REMW s3, s1, s2
  ADDIW s1, s3, 67
  SLT s2, s1, zero
  BNE s2, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s1, zero, 1
  JAL zero, bb10
bb9:
  JAL zero, bb11
bb10:
  ADD s2, s1, zero
  BNE s2, zero, bb13
  JAL zero, bb14
bb11:
  ADD s2, zero, zero
  JAL zero, bb12
bb12:
  ADD s3, s2, zero
  XOR s2, s3, zero
  SLTU s3, zero, s2
  ADD s1, s3, zero
  JAL zero, bb10
bb13:
  ADDI a0, zero, 4
  CALL putint
  JAL zero, bb14
bb14:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
