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
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  CALL getint
  ADD s0, a0, zero
  ADD s1, s0, zero
  JAL zero, bb1
bb1:
  ADD s0, s1, zero
  ADDI s2, zero, 0
  SLT s3, s2, s0
  BNE s3, zero, bb2
  JAL zero, bb3
bb2:
  CALL getint
  ADD s2, a0, zero
  LA s3, n
  SW s2, 0(s3)
  ADDI a0, zero, 1
  CALL f
  ADDI s2, zero, 1
  SUBW s3, s0, s2
  ADD s1, s3, zero
  JAL zero, bb1
bb3:
  LA s0, sum
  LW s1, 0(s0)
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
f:
  ADDI sp, sp, -96
  SD s9, 0(sp)
  SD s8, 8(sp)
  SD ra, 16(sp)
  SD s4, 24(sp)
  SD s3, 32(sp)
  SD s2, 40(sp)
  SD s6, 48(sp)
  SD s1, 56(sp)
  SD s7, 64(sp)
  SD s5, 72(sp)
  SD s0, 80(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 1
  JAL zero, bb5
bb5:
  ADD s2, s1, zero
  LA s3, n
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb6
  JAL zero, bb7
bb6:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s3, row
  ADD s5, s3, s4
  LW s3, 0(s5)
  XORI s4, s3, 1
  SLTU s3, zero, s4
  BNE s3, zero, bb8
  JAL zero, bb9
bb7:
  LD s9, 0(sp)
  LD s8, 8(sp)
  LD ra, 16(sp)
  LD s4, 24(sp)
  LD s3, 32(sp)
  LD s2, 40(sp)
  LD s6, 48(sp)
  LD s1, 56(sp)
  LD s7, 64(sp)
  LD s5, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb8:
  ADDW s3, s0, s2
  ADDI s4, zero, 4
  MULW s6, s3, s4
  LA s3, line1
  ADD s4, s3, s6
  LW s3, 0(s4)
  XOR s4, s3, zero
  SLTIU s3, s4, 1
  ADD s4, s3, zero
  JAL zero, bb10
bb9:
  ADD s4, zero, zero
  JAL zero, bb10
bb10:
  ADD s3, s4, zero
  BNE s3, zero, bb11
  JAL zero, bb12
bb11:
  LA s3, n
  LW s6, 0(s3)
  ADDW s3, s6, s0
  SUBW s6, s3, s2
  ADDI s3, zero, 4
  MULW s7, s6, s3
  LA s3, line2
  ADD s6, s3, s7
  LW s3, 0(s6)
  XOR s6, s3, zero
  SLTU s3, zero, s6
  XORI s6, s3, 1
  ADD s3, s6, zero
  XOR s6, s3, zero
  SLTU s3, zero, s6
  ADD s6, s3, zero
  JAL zero, bb13
bb12:
  ADD s6, zero, zero
  JAL zero, bb13
bb13:
  ADD s3, s6, zero
  BNE s3, zero, bb14
  JAL zero, bb15
bb14:
  ADDI s3, zero, 4
  MULW s7, s0, s3
  LA s3, ans
  ADD s8, s3, s7
  SW s2, 0(s8)
  LA s3, n
  LW s7, 0(s3)
  XOR s3, s0, s7
  SLTIU s7, s3, 1
  BNE s7, zero, bb16
  JAL zero, bb17
bb15:
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb5
bb16:
  CALL printans
  JAL zero, bb17
bb17:
  ADDI s3, zero, 1
  SW s3, 0(s5)
  ADDW s3, s0, s2
  ADDI s7, zero, 4
  MULW s8, s3, s7
  LA s3, line1
  ADD s7, s3, s8
  ADDI s3, zero, 1
  SW s3, 0(s7)
  LA s3, n
  LW s8, 0(s3)
  ADDW s3, s8, s0
  SUBW s8, s3, s2
  ADDI s3, zero, 4
  MULW s9, s8, s3
  LA s3, line2
  ADD s8, s3, s9
  ADDI s3, zero, 1
  SW s3, 0(s8)
  ADDIW s3, s0, 1
  ADD a0, s3, zero
  CALL f
  SW zero, 0(s5)
  SW zero, 0(s7)
  LA s3, n
  LW s7, 0(s3)
  ADDW s3, s7, s0
  SUBW s7, s3, s2
  ADDI s3, zero, 4
  MULW s8, s7, s3
  LA s3, line2
  ADD s7, s3, s8
  SW zero, 0(s7)
  JAL zero, bb15
printans:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 1
  JAL zero, bb19
bb19:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  BNE s3, zero, bb20
  JAL zero, bb21
bb20:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, ans
  ADD s4, s2, s3
  LW s2, 0(s4)
  ADD a0, s2, zero
  CALL putint
  LA s2, n
  LW s3, 0(s2)
  XOR s2, s1, s3
  SLTIU s3, s2, 1
  BNE s3, zero, bb22
  JAL zero, bb23
bb21:
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb22:
  ADDI a0, zero, 10
  CALL putch
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb23:
  ADDI a0, zero, 32
  CALL putch
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb19
