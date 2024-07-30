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
  ADDI s1, zero, 0
  BLT s1, s0, bb2
  # implict jump to bb1
bb1:
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
bb2:
  # implict jump to bb3
bb3:
  ADD s1, s0, zero
  CALL getint
  ADD s2, a0, zero
  LA s3, n
  SW s2, 0(s3)
  ADDI a0, zero, 1
  CALL f
  ADDI s2, zero, 1
  SUBW s1, s1, s2
  ADDI s2, zero, 0
  BLT s2, s1, bb4
  JAL zero, bb1
bb4:
  ADD s0, s1, zero
  JAL zero, bb3
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
  SD s8, 72(sp)
  ADD s0, a0, zero
  LA s1, n
  LW s1, 0(s1)
  SLTI s2, s1, 1
  XORI s2, s2, 1
  BNE s2, zero, bb7
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
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb7:
  ADDI s2, zero, 1
  # implict jump to bb8
bb8:
  ADD s3, s2, zero
  ADD s4, s1, zero
  SLLIW s5, s3, 2
  LA s6, row
  ADD s5, s6, s5
  LW s6, 0(s5)
  XORI s6, s6, 1
  BNE s6, zero, bb23
  # implict jump to bb9
bb9:
  ADD s6, zero, zero
  # implict jump to bb10
bb10:
  BNE s6, zero, bb22
  # implict jump to bb11
bb11:
  ADD s6, zero, zero
  # implict jump to bb12
bb12:
  BNE s6, zero, bb15
  # implict jump to bb13
bb13:
  ADDIW s3, s3, 1
  LA s4, n
  LW s4, 0(s4)
  SLT s5, s4, s3
  XORI s5, s5, 1
  BNE s5, zero, bb14
  JAL zero, bb6
bb14:
  ADD s1, s4, zero
  ADD s2, s3, zero
  JAL zero, bb8
bb15:
  SLLIW s6, s0, 2
  LA s7, ans
  ADD s6, s7, s6
  SW s3, 0(s6)
  XOR s4, s0, s4
  SLTIU s4, s4, 1
  BNE s4, zero, bb17
  # implict jump to bb16
bb16:
  ADDI s4, zero, 1
  SW s4, 0(s5)
  ADDW s4, s0, s3
  SLLIW s4, s4, 2
  LA s6, line1
  ADD s4, s6, s4
  ADDI s6, zero, 1
  SW s6, 0(s4)
  LA s6, n
  LW s6, 0(s6)
  ADDW s6, s6, s0
  SUBW s6, s6, s3
  SLLIW s6, s6, 2
  LA s7, line2
  ADD s6, s7, s6
  ADDI s7, zero, 1
  SW s7, 0(s6)
  ADDIW s6, s0, 1
  ADD a0, s6, zero
  CALL f
  SW zero, 0(s5)
  SW zero, 0(s4)
  LA s4, n
  LW s4, 0(s4)
  ADDW s4, s4, s0
  SUBW s4, s4, s3
  SLLIW s4, s4, 2
  LA s5, line2
  ADD s4, s5, s4
  SW zero, 0(s4)
  JAL zero, bb13
bb17:
  LA s4, sum
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s6, sum
  SW s4, 0(s6)
  ADDI s4, zero, 1
  # implict jump to bb18
bb18:
  ADD s6, s4, zero
  LA s7, n
  LW s7, 0(s7)
  SLT s7, s7, s6
  XORI s7, s7, 1
  BNE s7, zero, bb19
  JAL zero, bb16
bb19:
  SLLIW s7, s6, 2
  LA s8, ans
  ADD s7, s8, s7
  LW s7, 0(s7)
  ADD a0, s7, zero
  CALL putint
  LA s7, n
  LW s7, 0(s7)
  XOR s7, s6, s7
  SLTIU s7, s7, 1
  BNE s7, zero, bb21
  # implict jump to bb20
bb20:
  ADDI a0, zero, 32
  CALL putch
  ADDIW s6, s6, 1
  ADD s4, s6, zero
  JAL zero, bb18
bb21:
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb16
bb22:
  ADDW s7, s4, s0
  SUBW s7, s7, s3
  SLLIW s7, s7, 2
  LA s8, line2
  ADD s7, s8, s7
  LW s7, 0(s7)
  SLTU s7, zero, s7
  XORI s7, s7, 1
  SLTU s7, zero, s7
  ADD s6, s7, zero
  JAL zero, bb12
bb23:
  ADDW s7, s0, s3
  SLLIW s7, s7, 2
  LA s8, line1
  ADD s7, s8, s7
  LW s7, 0(s7)
  SLTIU s7, s7, 1
  ADD s6, s7, zero
  JAL zero, bb10
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
  # implict jump to bb25
bb25:
  ADD s1, s0, zero
  LA s2, n
  LW s2, 0(s2)
  SLT s2, s2, s1
  XORI s2, s2, 1
  BNE s2, zero, bb27
  # implict jump to bb26
bb26:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb27:
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
  BNE s2, zero, bb29
  # implict jump to bb28
bb28:
  ADDI a0, zero, 32
  CALL putch
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb25
bb29:
  ADDI a0, zero, 10
  CALL putch
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
