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
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 1
  # implict jump to bb5
bb5:
  ADD s2, s1, zero
  LA s3, n
  LW s3, 0(s3)
  SLT s4, s3, s2
  XORI s4, s4, 1
  BNE s4, zero, bb7
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
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb7:
  SLLIW s4, s2, 2
  LA s5, row
  ADD s4, s5, s4
  LW s5, 0(s4)
  XORI s5, s5, 1
  BNE s5, zero, bb21
  # implict jump to bb8
bb8:
  ADD s5, zero, zero
  # implict jump to bb9
bb9:
  BNE s5, zero, bb20
  # implict jump to bb10
bb10:
  ADD s5, zero, zero
  # implict jump to bb11
bb11:
  BNE s5, zero, bb13
  # implict jump to bb12
bb12:
  ADDIW s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb5
bb13:
  SLLIW s5, s0, 2
  LA s6, ans
  ADD s5, s6, s5
  SW s2, 0(s5)
  XOR s3, s0, s3
  SLTIU s3, s3, 1
  BNE s3, zero, bb15
  # implict jump to bb14
bb14:
  ADDI s3, zero, 1
  SW s3, 0(s4)
  ADDW s3, s0, s2
  SLLIW s3, s3, 2
  LA s5, line1
  ADD s3, s5, s3
  ADDI s5, zero, 1
  SW s5, 0(s3)
  LA s5, n
  LW s5, 0(s5)
  ADDW s5, s5, s0
  SUBW s5, s5, s2
  SLLIW s5, s5, 2
  LA s6, line2
  ADD s5, s6, s5
  ADDI s6, zero, 1
  SW s6, 0(s5)
  ADDIW s5, s0, 1
  ADD a0, s5, zero
  CALL f
  SW zero, 0(s4)
  SW zero, 0(s3)
  LA s3, n
  LW s3, 0(s3)
  ADDW s3, s3, s0
  SUBW s3, s3, s2
  SLLIW s3, s3, 2
  LA s4, line2
  ADD s3, s4, s3
  SW zero, 0(s3)
  JAL zero, bb12
bb15:
  LA s3, sum
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s5, sum
  SW s3, 0(s5)
  ADDI s3, zero, 1
  # implict jump to bb16
bb16:
  ADD s5, s3, zero
  LA s6, n
  LW s6, 0(s6)
  SLT s6, s6, s5
  XORI s6, s6, 1
  BNE s6, zero, bb17
  JAL zero, bb14
bb17:
  SLLIW s6, s5, 2
  LA s7, ans
  ADD s6, s7, s6
  LW s6, 0(s6)
  ADD a0, s6, zero
  CALL putint
  LA s6, n
  LW s6, 0(s6)
  XOR s6, s5, s6
  SLTIU s6, s6, 1
  BNE s6, zero, bb19
  # implict jump to bb18
bb18:
  ADDI a0, zero, 32
  CALL putch
  ADDIW s5, s5, 1
  ADD s3, s5, zero
  JAL zero, bb16
bb19:
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb14
bb20:
  ADDW s6, s3, s0
  SUBW s6, s6, s2
  SLLIW s6, s6, 2
  LA s7, line2
  ADD s6, s7, s6
  LW s6, 0(s6)
  SLTU s6, zero, s6
  XORI s6, s6, 1
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb11
bb21:
  ADDW s6, s0, s2
  SLLIW s6, s6, 2
  LA s7, line1
  ADD s6, s7, s6
  LW s6, 0(s6)
  SLTIU s6, s6, 1
  ADD s5, s6, zero
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
