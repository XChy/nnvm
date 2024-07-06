.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
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
  XOR s1, zero, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb4
  JAL zero, bb5
bb3:
  ADD s1, s0, zero
  BNE s1, zero, bb7
  JAL zero, bb8
bb4:
  ADDI s1, zero, 4
  ADDI s2, zero, 2
  REMW s3, s1, s2
  XOR s1, s3, zero
  SLTU s2, zero, s1
  ADD s1, s2, zero
  JAL zero, bb6
bb5:
  ADD s1, zero, zero
  JAL zero, bb6
bb6:
  ADD s2, s1, zero
  XOR s3, s2, zero
  SLTU s2, zero, s3
  ADD s0, s2, zero
  JAL zero, bb3
bb7:
  ADDI a0, zero, 2
  CALL putint
  JAL zero, bb8
bb8:
  ADDI s1, zero, -2
  ADDI s2, zero, 2
  REMW s3, s1, s2
  ADDIW s1, s3, 67
  SLT s2, s1, zero
  BNE s2, zero, bb9
  JAL zero, bb10
bb9:
  ADDI s1, zero, 1
  JAL zero, bb11
bb10:
  XOR s2, zero, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb12
  JAL zero, bb13
bb11:
  ADD s2, s1, zero
  BNE s2, zero, bb15
  JAL zero, bb16
bb12:
  ADDI s2, zero, 3
  ADDI s3, zero, 2
  REMW s4, s2, s3
  XOR s2, s4, zero
  SLTU s3, zero, s2
  ADD s2, s3, zero
  JAL zero, bb14
bb13:
  ADD s2, zero, zero
  JAL zero, bb14
bb14:
  ADD s3, s2, zero
  XOR s4, s3, zero
  SLTU s3, zero, s4
  ADD s1, s3, zero
  JAL zero, bb11
bb15:
  ADDI a0, zero, 4
  CALL putint
  JAL zero, bb16
bb16:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
