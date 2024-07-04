.global main
.global f
.global printans
.section .bss
line2:
.space 400
line1:
.space 200
row:
.space 200


ans:
.space 200
.section .data



n:
.word 0x00000000
sum:
.word 0x00000000

.section .text
main:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(sp)
  JAL zero, bb1
bb1:
  LW s0, 0(sp)
  ADDI s1, zero, 0
  SLT s2, s1, s0
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  CALL getint
  ADD s0, a0, zero
  LA s1, n
  SW s0, 0(s1)
  ADDI a0, zero, 1
  CALL f
  LW s0, 0(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 0(sp)
  JAL zero, bb1
bb3:
  LA s0, sum
  LW s1, 0(s0)
  ADD a0, s1, zero
  LD ra, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
f:
  ADDI sp, sp, -64
  SD ra, 32(sp)
  SD s2, 40(sp)
  SD s1, 48(sp)
  SD s0, 56(sp)
  ADD s0, a0, zero
  SW s0, 24(sp)
  ADDI s0, zero, 1
  SW s0, 16(sp)
  JAL zero, bb5
bb5:
  LW s0, 16(sp)
  LA s1, n
  LW s2, 0(s1)
  SLT s1, s2, s0
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb6
  JAL zero, bb7
bb6:
  LW s0, 16(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, row
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 1
  SLTU s0, zero, s1
  BNE s0, zero, bb8
  JAL zero, bb9
bb7:
  LD ra, 32(sp)
  LD s2, 40(sp)
  LD s1, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb8:
  LW s0, 24(sp)
  LW s1, 16(sp)
  ADDW s2, s0, s1
  ADDI s0, zero, 4
  MULW s1, s2, s0
  LA s0, line1
  ADD s2, s0, s1
  LW s0, 0(s2)
  XOR s1, s0, zero
  SLTIU s0, s1, 1
  SB s0, 8(sp)
  JAL zero, bb10
bb9:
  SB zero, 8(sp)
  JAL zero, bb10
bb10:
  LB s0, 8(sp)
  BNE s0, zero, bb11
  JAL zero, bb12
bb11:
  LA s0, n
  LW s1, 0(s0)
  LW s0, 24(sp)
  ADDW s2, s1, s0
  LW s0, 16(sp)
  SUBW s1, s2, s0
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, line2
  ADD s1, s0, s2
  LW s0, 0(s1)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 0(sp)
  JAL zero, bb13
bb12:
  SB zero, 0(sp)
  JAL zero, bb13
bb13:
  LB s0, 0(sp)
  BNE s0, zero, bb14
  JAL zero, bb15
bb14:
  LW s0, 24(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, ans
  ADD s1, s0, s2
  LW s0, 16(sp)
  SW s0, 0(s1)
  LW s0, 24(sp)
  LA s1, n
  LW s2, 0(s1)
  XOR s1, s0, s2
  SLTIU s0, s1, 1
  BNE s0, zero, bb16
  JAL zero, bb17
bb15:
  LW s0, 16(sp)
  ADDIW s1, s0, 1
  SW s1, 16(sp)
  JAL zero, bb5
bb16:
  CALL printans
  JAL zero, bb17
bb17:
  LW s0, 16(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, row
  ADD s1, s0, s2
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LW s0, 24(sp)
  LW s1, 16(sp)
  ADDW s2, s0, s1
  ADDI s0, zero, 4
  MULW s1, s2, s0
  LA s0, line1
  ADD s2, s0, s1
  ADDI s0, zero, 1
  SW s0, 0(s2)
  LA s0, n
  LW s1, 0(s0)
  LW s0, 24(sp)
  ADDW s2, s1, s0
  LW s0, 16(sp)
  SUBW s1, s2, s0
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, line2
  ADD s1, s0, s2
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LW s0, 24(sp)
  ADDIW s1, s0, 1
  ADD a0, s1, zero
  CALL f
  LW s0, 16(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, row
  ADD s1, s0, s2
  SW zero, 0(s1)
  LW s0, 24(sp)
  LW s1, 16(sp)
  ADDW s2, s0, s1
  ADDI s0, zero, 4
  MULW s1, s2, s0
  LA s0, line1
  ADD s2, s0, s1
  SW zero, 0(s2)
  LA s0, n
  LW s1, 0(s0)
  LW s0, 24(sp)
  ADDW s2, s1, s0
  LW s0, 16(sp)
  SUBW s1, s2, s0
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, line2
  ADD s1, s0, s2
  SW zero, 0(s1)
  JAL zero, bb15
printans:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 1
  SW s0, 0(sp)
  JAL zero, bb19
bb19:
  LW s0, 0(sp)
  LA s1, n
  LW s2, 0(s1)
  SLT s1, s2, s0
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb20
  JAL zero, bb21
bb20:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, ans
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  LW s0, 0(sp)
  LA s1, n
  LW s2, 0(s1)
  XOR s1, s0, s2
  SLTIU s0, s1, 1
  BNE s0, zero, bb22
  JAL zero, bb24
bb21:
  LD ra, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb22:
  ADDI a0, zero, 10
  CALL putch
  LD ra, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb23:
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb19
bb24:
  ADDI a0, zero, 32
  CALL putch
  JAL zero, bb23
