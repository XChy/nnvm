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
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD s0, 16(sp)
  SD s5, 24(sp)
  SD s7, 32(sp)
  SD s1, 40(sp)
  SD s6, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD ra, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
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
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s0, 16(sp)
  LD s5, 24(sp)
  LD s7, 32(sp)
  LD s1, 40(sp)
  LD s6, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  ADDI sp, sp, 112
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
  JAL zero, bb18
bb15:
  ADDIW s8, s2, 1
  ADD s1, s8, zero
  JAL zero, bb5
bb16:
  LA s3, sum
  LW s7, 0(s3)
  ADDIW s3, s7, 1
  LA s7, sum
  SW s3, 0(s7)
  ADDI s3, zero, 1
  JAL zero, bb19
bb17:
  JAL zero, bb18
bb18:
  ADDI s8, zero, 1
  SW s8, 0(s5)
  ADDW s8, s0, s2
  ADDI s9, zero, 4
  MULW s10, s8, s9
  LA s8, line1
  ADD s9, s8, s10
  ADDI s8, zero, 1
  SW s8, 0(s9)
  LA s8, n
  LW s10, 0(s8)
  ADDW s8, s10, s0
  SUBW s10, s8, s2
  ADDI s8, zero, 4
  MULW s11, s10, s8
  LA s8, line2
  ADD s10, s8, s11
  ADDI s8, zero, 1
  SW s8, 0(s10)
  ADDIW s8, s0, 1
  ADD a0, s8, zero
  CALL f
  SW zero, 0(s5)
  SW zero, 0(s9)
  LA s8, n
  LW s9, 0(s8)
  ADDW s8, s9, s0
  SUBW s9, s8, s2
  ADDI s8, zero, 4
  MULW s10, s9, s8
  LA s8, line2
  ADD s9, s8, s10
  SW zero, 0(s9)
  JAL zero, bb15
bb19:
  ADD s7, s3, zero
  LA s8, n
  LW s9, 0(s8)
  SLT s8, s9, s7
  XORI s9, s8, 1
  BNE s9, zero, bb20
  JAL zero, bb21
bb20:
  ADDI s8, zero, 4
  MULW s9, s7, s8
  LA s8, ans
  ADD s10, s8, s9
  LW s8, 0(s10)
  ADD a0, s8, zero
  CALL putint
  LA s8, n
  LW s9, 0(s8)
  XOR s8, s7, s9
  SLTIU s9, s8, 1
  BNE s9, zero, bb22
  JAL zero, bb23
bb21:
  JAL zero, bb17
bb22:
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb17
bb23:
  ADDI a0, zero, 32
  CALL putch
  ADDIW s1, s7, 1
  ADD s3, s1, zero
  JAL zero, bb19
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
  JAL zero, bb25
bb25:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  BNE s3, zero, bb26
  JAL zero, bb27
bb26:
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
  BNE s3, zero, bb28
  JAL zero, bb29
bb27:
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb28:
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
bb29:
  ADDI a0, zero, 32
  CALL putch
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb25
