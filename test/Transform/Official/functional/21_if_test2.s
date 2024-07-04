.global ifElseIf
.global main
.section .bss
.section .data
.section .text
ifElseIf:
  ADDI sp, sp, -80
  SD s3, 40(sp)
  SD s2, 48(sp)
  SD ra, 56(sp)
  SD s1, 64(sp)
  SD s0, 72(sp)
  ADDI s0, zero, 5
  SW s0, 32(sp)
  ADDI s0, zero, 10
  SW s0, 24(sp)
  ADDI s0, zero, 6
  XORI s1, s0, 5
  SLTIU s0, s1, 1
  BNE s0, zero, bb1
  JAL zero, bb2
bb1:
  ADDI s0, zero, 1
  SB s0, 16(sp)
  JAL zero, bb3
bb2:
  LW s0, 24(sp)
  XORI s1, s0, 11
  SLTIU s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 16(sp)
  JAL zero, bb3
bb3:
  LB s0, 16(sp)
  BNE s0, zero, bb4
  JAL zero, bb6
bb4:
  LW s0, 32(sp)
  ADD a0, s0, zero
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD ra, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb5:
  LW s0, 32(sp)
  ADD a0, s0, zero
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD ra, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb6:
  LW s0, 24(sp)
  XORI s1, s0, 10
  SLTIU s0, s1, 1
  BNE s0, zero, bb7
  JAL zero, bb8
bb7:
  LW s0, 32(sp)
  XORI s1, s0, 1
  SLTIU s0, s1, 1
  SB s0, 8(sp)
  JAL zero, bb9
bb8:
  SB zero, 8(sp)
  JAL zero, bb9
bb9:
  LB s0, 8(sp)
  BNE s0, zero, bb10
  JAL zero, bb12
bb10:
  ADDI s0, zero, 25
  SW s0, 32(sp)
  JAL zero, bb11
bb11:
  JAL zero, bb5
bb12:
  LW s0, 24(sp)
  XORI s1, s0, 10
  SLTIU s0, s1, 1
  BNE s0, zero, bb13
  JAL zero, bb14
bb13:
  LW s0, 32(sp)
  ADDI s1, zero, 0
  ADDI s2, zero, 5
  SUBW s3, s1, s2
  XOR s1, s0, s3
  SLTIU s0, s1, 1
  SB s0, 0(sp)
  JAL zero, bb15
bb14:
  SB zero, 0(sp)
  JAL zero, bb15
bb15:
  LB s0, 0(sp)
  BNE s0, zero, bb16
  JAL zero, bb18
bb16:
  LW s0, 32(sp)
  ADDIW s1, s0, 15
  SW s1, 32(sp)
  JAL zero, bb17
bb17:
  JAL zero, bb11
bb18:
  LW s0, 32(sp)
  ADDI s1, zero, 0
  SUBW s2, s1, s0
  SW s2, 32(sp)
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
