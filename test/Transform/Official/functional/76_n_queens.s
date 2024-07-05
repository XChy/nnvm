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
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  CALL getint
  ADD s0, a0, zero
  ADD s1, s0, zero
  JAL zero, bb1
bb1:
  ADDI s0, zero, 0
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb2
  JAL zero, bb3
bb2:
  CALL getint
  ADD s0, a0, zero
  LA s2, n
  SW s0, 0(s2)
  ADDI a0, zero, 1
  CALL f
  ADDI s0, zero, 1
  SUBW s2, s1, s0
  ADD s1, s2, zero
  JAL zero, bb1
bb3:
  LA s0, sum
  LW s1, 0(s0)
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
f:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 1
  JAL zero, bb5
bb5:
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb6
  JAL zero, bb7
bb6:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, row
  ADD s4, s2, s3
  LW s2, 0(s4)
  XORI s3, s2, 1
  SLTU s2, zero, s3
  BNE s2, zero, bb8
  JAL zero, bb9
bb7:
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb8:
  ADDW s2, s0, s1
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s2, line1
  ADD s3, s2, s4
  LW s2, 0(s3)
  XOR s3, s2, zero
  SLTIU s2, s3, 1
  ADD s3, s2, zero
  JAL zero, bb10
bb9:
  ADD s3, zero, zero
  JAL zero, bb10
bb10:
  BNE s3, zero, bb11
  JAL zero, bb12
bb11:
  LA s2, n
  LW s4, 0(s2)
  ADDW s2, s4, s0
  SUBW s4, s2, s1
  ADDI s2, zero, 4
  MULW s5, s4, s2
  LA s2, line2
  ADD s4, s2, s5
  LW s2, 0(s4)
  XOR s4, s2, zero
  SLTU s2, zero, s4
  XORI s4, s2, 1
  ADD s2, s4, zero
  XOR s4, s2, zero
  SLTU s2, zero, s4
  ADD s4, s2, zero
  JAL zero, bb13
bb12:
  ADD s4, zero, zero
  JAL zero, bb13
bb13:
  BNE s4, zero, bb14
  JAL zero, bb15
bb14:
  ADDI s2, zero, 4
  MULW s5, s0, s2
  LA s2, ans
  ADD s6, s2, s5
  SW s1, 0(s6)
  LA s2, n
  LW s5, 0(s2)
  XOR s2, s0, s5
  SLTIU s5, s2, 1
  BNE s5, zero, bb16
  JAL zero, bb17
bb15:
  ADDIW s2, s1, 1
  ADD s1, s2, zero
  JAL zero, bb5
bb16:
  CALL printans
  JAL zero, bb17
bb17:
  ADDI s2, zero, 4
  MULW s5, s1, s2
  LA s2, row
  ADD s6, s2, s5
  ADDI s2, zero, 1
  SW s2, 0(s6)
  ADDW s2, s0, s1
  ADDI s5, zero, 4
  MULW s6, s2, s5
  LA s2, line1
  ADD s5, s2, s6
  ADDI s2, zero, 1
  SW s2, 0(s5)
  LA s2, n
  LW s5, 0(s2)
  ADDW s2, s5, s0
  SUBW s5, s2, s1
  ADDI s2, zero, 4
  MULW s6, s5, s2
  LA s2, line2
  ADD s5, s2, s6
  ADDI s2, zero, 1
  SW s2, 0(s5)
  ADDIW s2, s0, 1
  ADD a0, s2, zero
  CALL f
  ADDI s2, zero, 4
  MULW s5, s1, s2
  LA s2, row
  ADD s6, s2, s5
  SW zero, 0(s6)
  ADDW s2, s0, s1
  ADDI s5, zero, 4
  MULW s6, s2, s5
  LA s2, line1
  ADD s5, s2, s6
  SW zero, 0(s5)
  LA s2, n
  LW s5, 0(s2)
  ADDW s2, s5, s0
  SUBW s5, s2, s1
  ADDI s2, zero, 4
  MULW s6, s5, s2
  LA s2, line2
  ADD s5, s2, s6
  SW zero, 0(s5)
  JAL zero, bb15
printans:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 1
  JAL zero, bb19
bb19:
  LA s1, n
  LW s2, 0(s1)
  SLT s1, s2, s0
  XORI s2, s1, 1
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb20
  JAL zero, bb21
bb20:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, ans
  ADD s3, s1, s2
  LW s1, 0(s3)
  ADD a0, s1, zero
  CALL putint
  LA s1, n
  LW s2, 0(s1)
  XOR s1, s0, s2
  SLTIU s2, s1, 1
  BNE s2, zero, bb22
  JAL zero, bb24
bb21:
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb22:
  ADDI a0, zero, 10
  CALL putch
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb23:
  ADDIW s1, s0, 1
  ADD s0, s1, zero
  JAL zero, bb19
bb24:
  ADDI a0, zero, 32
  CALL putch
  JAL zero, bb23
