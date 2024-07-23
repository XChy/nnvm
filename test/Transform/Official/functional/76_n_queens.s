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
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  CALL getint
  ADD s0, a0, zero
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  ADDI s2, zero, 0
  BLT s2, s1, bb3
  # implict jump to bb2
bb2:
  LA s2, sum
  LW s2, 0(s2)
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb3:
  CALL getint
  ADD s2, a0, zero
  LA s3, n
  SW s2, 0(s3)
  ADDI a0, zero, 1
  CALL f
  ADDI s2, zero, 1
  SUBW s1, s1, s2
  ADD s0, s1, zero
  JAL zero, bb1
f:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  ADD s0, a0, zero
  SLLIW s1, s0, 2
  LA s2, ans
  ADD s1, s2, s1
  ADDIW s2, s0, 1
  ADDI s3, zero, 1
  # implict jump to bb5
bb5:
  ADD s4, s3, zero
  LA s5, n
  LW s5, 0(s5)
  SLT s6, s5, s4
  XORI s6, s6, 1
  BNE s6, zero, bb7
  # implict jump to bb6
bb6:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb7:
  SLLIW s6, s4, 2
  LA s7, row
  ADD s6, s7, s6
  LW s7, 0(s6)
  XORI s7, s7, 1
  BNE s7, zero, bb21
  # implict jump to bb8
bb8:
  ADD s7, zero, zero
  # implict jump to bb9
bb9:
  BNE s7, zero, bb20
  # implict jump to bb10
bb10:
  ADD s7, zero, zero
  # implict jump to bb11
bb11:
  BNE s7, zero, bb13
  # implict jump to bb12
bb12:
  ADDIW s4, s4, 1
  ADD s3, s4, zero
  JAL zero, bb5
bb13:
  SW s4, 0(s1)
  XOR s5, s0, s5
  SLTIU s5, s5, 1
  BNE s5, zero, bb15
  # implict jump to bb14
bb14:
  ADDI s5, zero, 1
  SW s5, 0(s6)
  ADDW s5, s0, s4
  SLLIW s5, s5, 2
  LA s7, line1
  ADD s5, s7, s5
  ADDI s7, zero, 1
  SW s7, 0(s5)
  LA s7, n
  LW s7, 0(s7)
  ADDW s7, s7, s0
  SUBW s7, s7, s4
  SLLIW s7, s7, 2
  LA s8, line2
  ADD s7, s8, s7
  ADDI s8, zero, 1
  SW s8, 0(s7)
  ADD a0, s2, zero
  CALL f
  SW zero, 0(s6)
  SW zero, 0(s5)
  LA s5, n
  LW s5, 0(s5)
  ADDW s5, s5, s0
  SUBW s5, s5, s4
  SLLIW s5, s5, 2
  LA s6, line2
  ADD s5, s6, s5
  SW zero, 0(s5)
  JAL zero, bb12
bb15:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s7, sum
  SW s5, 0(s7)
  ADDI s5, zero, 1
  # implict jump to bb16
bb16:
  ADD s7, s5, zero
  LA s8, n
  LW s8, 0(s8)
  SLT s8, s8, s7
  XORI s8, s8, 1
  BNE s8, zero, bb17
  JAL zero, bb14
bb17:
  SLLIW s8, s7, 2
  LA s9, ans
  ADD s8, s9, s8
  LW s8, 0(s8)
  ADD a0, s8, zero
  CALL putint
  LA s8, n
  LW s8, 0(s8)
  XOR s8, s7, s8
  SLTIU s8, s8, 1
  BNE s8, zero, bb19
  # implict jump to bb18
bb18:
  ADDI a0, zero, 32
  CALL putch
  ADDIW s7, s7, 1
  ADD s5, s7, zero
  JAL zero, bb16
bb19:
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb14
bb20:
  ADDW s8, s5, s0
  SUBW s8, s8, s4
  SLLIW s8, s8, 2
  LA s9, line2
  ADD s8, s9, s8
  LW s8, 0(s8)
  SLTU s8, zero, s8
  XORI s8, s8, 1
  SLTU s8, zero, s8
  ADD s7, s8, zero
  JAL zero, bb11
bb21:
  ADDW s8, s0, s4
  SLLIW s8, s8, 2
  LA s9, line1
  ADD s8, s9, s8
  LW s8, 0(s8)
  SLTIU s8, s8, 1
  ADD s7, s8, zero
  JAL zero, bb9
printans:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  LA s0, sum
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s1, sum
  SW s0, 0(s1)
  ADDI s0, zero, 1
  # implict jump to bb23
bb23:
  ADD s1, s0, zero
  LA s2, n
  LW s2, 0(s2)
  SLT s2, s2, s1
  XORI s2, s2, 1
  BNE s2, zero, bb25
  # implict jump to bb24
bb24:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb25:
  SLLIW s2, s1, 2
  LA s3, ans
  ADD s2, s3, s2
  LW s2, 0(s2)
  ADD a0, s2, zero
  CALL putint
  LA s2, n
  LW s2, 0(s2)
  XOR s2, s1, s2
  SLTIU s2, s2, 1
  BNE s2, zero, bb27
  # implict jump to bb26
bb26:
  ADDI a0, zero, 32
  CALL putch
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb23
bb27:
  ADDI a0, zero, 10
  CALL putch
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
