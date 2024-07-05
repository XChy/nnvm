.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  ADDI s0, zero, 0
  ADDI s1, zero, 2
  SUBW s2, s0, s1
  ADDI s0, zero, 1
  MULW s1, s2, s0
  ADDI s0, zero, 2
  DIVW s3, s1, s0
  SLT s0, s3, zero
  BNE s0, zero, bb1
  JAL zero, bb2
bb1:
  ADDI s0, zero, 1
  JAL zero, bb3
bb2:
  ADDI s1, zero, 5
  ADDI s3, zero, 5
  SUBW s4, s1, s3
  XOR s1, s4, zero
  SLTU s3, zero, s1
  BNE s3, zero, bb4
  JAL zero, bb5
bb3:
  BNE s0, zero, bb7
  JAL zero, bb8
bb4:
  ADDI s1, zero, 3
  ADDIW s3, s1, 1
  ADDI s1, zero, 2
  REMW s4, s3, s1
  XOR s1, s4, zero
  SLTU s3, zero, s1
  ADD s1, s3, zero
  JAL zero, bb6
bb5:
  ADD s1, zero, zero
  JAL zero, bb6
bb6:
  XOR s3, s1, zero
  SLTU s4, zero, s3
  ADD s0, s4, zero
  JAL zero, bb3
bb7:
  ADDI a0, zero, 2
  CALL putint
  JAL zero, bb8
bb8:
  ADDI s1, zero, 2
  REMW s3, s2, s1
  ADDIW s1, s3, 67
  SLT s3, s1, zero
  BNE s3, zero, bb9
  JAL zero, bb10
bb9:
  ADDI s1, zero, 1
  JAL zero, bb11
bb10:
  ADDI s3, zero, 5
  ADDI s4, zero, 5
  SUBW s5, s3, s4
  XOR s3, s5, zero
  SLTU s4, zero, s3
  BNE s4, zero, bb12
  JAL zero, bb13
bb11:
  BNE s1, zero, bb15
  JAL zero, bb16
bb12:
  ADDI s3, zero, 2
  ADDIW s4, s3, 1
  ADDI s3, zero, 2
  REMW s5, s4, s3
  XOR s3, s5, zero
  SLTU s4, zero, s3
  ADD s3, s4, zero
  JAL zero, bb14
bb13:
  ADD s3, zero, zero
  JAL zero, bb14
bb14:
  XOR s4, s3, zero
  SLTU s5, zero, s4
  ADD s1, s5, zero
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
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
