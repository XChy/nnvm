.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -112
  SD ra, 72(sp)
  SD s2, 80(sp)
  SD s1, 88(sp)
  SD s0, 96(sp)
  ADDI s0, zero, 5
  SW s0, 64(sp)
  ADDI s0, zero, 5
  SW s0, 56(sp)
  ADDI s0, zero, 1
  SW s0, 48(sp)
  ADDI s0, zero, 0
  ADDI s1, zero, 2
  SUBW s2, s0, s1
  SW s2, 40(sp)
  ADDI s0, zero, 2
  SW s0, 32(sp)
  LW s0, 40(sp)
  ADDI s1, zero, 1
  MULW s2, s0, s1
  ADDI s0, zero, 2
  DIVW s1, s2, s0
  SLT s0, s1, zero
  BNE s0, zero, bb1
  JAL zero, bb2
bb1:
  ADDI s0, zero, 1
  SB s0, 24(sp)
  JAL zero, bb3
bb2:
  LW s0, 64(sp)
  LW s1, 56(sp)
  SUBW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb4
  JAL zero, bb5
bb3:
  LB s0, 24(sp)
  BNE s0, zero, bb7
  JAL zero, bb8
bb4:
  LW s0, 48(sp)
  ADDIW s1, s0, 3
  ADDI s0, zero, 2
  REMW s2, s1, s0
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 16(sp)
  JAL zero, bb6
bb5:
  ADDI s0, zero, 0
  SB s0, 16(sp)
  JAL zero, bb6
bb6:
  LB s0, 16(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 24(sp)
  JAL zero, bb3
bb7:
  LW s0, 32(sp)
  ADD a0, s0, zero
  CALL putint
  JAL zero, bb8
bb8:
  LW s0, 40(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  ADDIW s0, s2, 67
  SLT s1, s0, zero
  BNE s1, zero, bb9
  JAL zero, bb10
bb9:
  ADDI s0, zero, 1
  SB s0, 8(sp)
  JAL zero, bb11
bb10:
  LW s0, 64(sp)
  LW s1, 56(sp)
  SUBW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb12
  JAL zero, bb13
bb11:
  LB s0, 8(sp)
  BNE s0, zero, bb15
  JAL zero, bb16
bb12:
  LW s0, 48(sp)
  ADDIW s1, s0, 2
  ADDI s0, zero, 2
  REMW s2, s1, s0
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 0(sp)
  JAL zero, bb14
bb13:
  SB zero, 0(sp)
  JAL zero, bb14
bb14:
  LB s0, 0(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 8(sp)
  JAL zero, bb11
bb15:
  ADDI s0, zero, 4
  SW s0, 32(sp)
  ADDI a0, zero, 4
  CALL putint
  JAL zero, bb16
bb16:
  ADD a0, zero, zero
  LD ra, 72(sp)
  LD s2, 80(sp)
  LD s1, 88(sp)
  LD s0, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
