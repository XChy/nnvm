.global ifElseIf
.global main
.section .bss
.section .data
.section .text
ifElseIf:
  ADDI sp, sp, -64
  SD s4, 0(sp)
  SD s3, 8(sp)
  SD ra, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  ADDI s0, zero, 6
  XORI s1, s0, 5
  SLTIU s0, s1, 1
  BNE s0, zero, bb1
  JAL zero, bb2
bb1:
  ADDI s0, zero, 1
  JAL zero, bb3
bb2:
  ADDI s1, zero, 11
  XORI s2, s1, 10
  SLTIU s1, s2, 1
  XOR s2, s1, zero
  SLTU s1, zero, s2
  ADD s0, s1, zero
  JAL zero, bb3
bb3:
  BNE s0, zero, bb4
  JAL zero, bb6
bb4:
  ADDI a0, zero, 5
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD ra, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb5:
  ADD a0, s1, zero
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD ra, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb6:
  ADDI s1, zero, 10
  XORI s2, s1, 10
  SLTIU s1, s2, 1
  BNE s1, zero, bb7
  JAL zero, bb8
bb7:
  ADDI s1, zero, 1
  XORI s2, s1, 5
  SLTIU s1, s2, 1
  ADD s2, s1, zero
  JAL zero, bb9
bb8:
  ADD s2, zero, zero
  JAL zero, bb9
bb9:
  BNE s2, zero, bb10
  JAL zero, bb12
bb10:
  ADDI s1, zero, 25
  JAL zero, bb11
bb11:
  JAL zero, bb5
bb12:
  ADDI s3, zero, 10
  XORI s4, s3, 10
  SLTIU s3, s4, 1
  BNE s3, zero, bb13
  JAL zero, bb14
bb13:
  ADDI s3, zero, 0
  ADDI s4, zero, 5
  SUBW s5, s3, s4
  XORI s3, s5, 5
  SLTIU s4, s3, 1
  ADD s3, s4, zero
  JAL zero, bb15
bb14:
  ADD s3, zero, zero
  JAL zero, bb15
bb15:
  BNE s3, zero, bb16
  JAL zero, bb18
bb16:
  ADDI s4, zero, 15
  ADDIW s5, s4, 5
  ADD s4, s5, zero
  JAL zero, bb17
bb17:
  ADD s1, s4, zero
  JAL zero, bb11
bb18:
  ADDI s1, zero, 0
  ADDI s5, zero, 5
  SUBW s6, s1, s5
  ADD s4, s6, zero
  JAL zero, bb17
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  CALL ifElseIf
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
