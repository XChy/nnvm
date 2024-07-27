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
  SD s4, 40(sp)
  CALL getint
  ADD s1, a0, zero
  ADDI s2, zero, 0
  BLT s2, s1, bb2
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
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb2:
  # implict jump to bb3
bb3:
  # implict jump to bb4
bb4:
  ADD s2, s1, zero
  CALL getint
  ADD s3, a0, zero
  LA s4, n
  SW s3, 0(s4)
  ADDI a0, zero, 1
  CALL f
  ADDI s3, zero, 1
  SUBW s0, s2, s3
  # implict jump to bb5
bb5:
  ADDI s2, zero, 0
  BLT s2, s0, bb6
  JAL zero, bb1
bb6:
  ADD s1, s0, zero
  JAL zero, bb4
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
  ADD s1, a0, zero
  LA s2, n
  LW s2, 0(s2)
  SLTI s3, s2, 1
  XORI s3, s3, 1
  BNE s3, zero, bb9
  # implict jump to bb8
bb8:
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
bb9:
  ADDI s3, zero, 1
  # implict jump to bb10
bb10:
  # implict jump to bb11
bb11:
  ADD s4, s3, zero
  ADD s5, s2, zero
  SLLIW s6, s4, 2
  LA s7, row
  ADD s6, s7, s6
  LW s7, 0(s6)
  XORI s7, s7, 1
  BNE s7, zero, bb27
  # implict jump to bb12
bb12:
  ADD s7, zero, zero
  # implict jump to bb13
bb13:
  BNE s7, zero, bb26
  # implict jump to bb14
bb14:
  ADD s7, zero, zero
  # implict jump to bb15
bb15:
  BNE s7, zero, bb19
  # implict jump to bb16
bb16:
  ADDIW s0, s4, 1
  # implict jump to bb17
bb17:
  LA s4, n
  LW s4, 0(s4)
  SLT s5, s4, s0
  XORI s5, s5, 1
  BNE s5, zero, bb18
  JAL zero, bb8
bb18:
  ADD s2, s4, zero
  ADD s3, s0, zero
  JAL zero, bb11
bb19:
  SLLIW s7, s1, 2
  LA s8, ans
  ADD s7, s8, s7
  SW s4, 0(s7)
  XOR s5, s1, s5
  SLTIU s5, s5, 1
  BNE s5, zero, bb21
  # implict jump to bb20
bb20:
  ADDI s5, zero, 1
  SW s5, 0(s6)
  ADDW s5, s1, s4
  SLLIW s5, s5, 2
  LA s7, line1
  ADD s5, s7, s5
  ADDI s7, zero, 1
  SW s7, 0(s5)
  LA s7, n
  LW s7, 0(s7)
  ADDW s7, s7, s1
  SUBW s7, s7, s4
  SLLIW s7, s7, 2
  LA s8, line2
  ADD s7, s8, s7
  ADDI s8, zero, 1
  SW s8, 0(s7)
  ADDIW s7, s1, 1
  ADD a0, s7, zero
  CALL f
  SW zero, 0(s6)
  SW zero, 0(s5)
  LA s5, n
  LW s5, 0(s5)
  ADDW s5, s5, s1
  SUBW s5, s5, s4
  SLLIW s5, s5, 2
  LA s6, line2
  ADD s5, s6, s5
  SW zero, 0(s5)
  JAL zero, bb16
bb21:
  LA s5, sum
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s7, sum
  SW s5, 0(s7)
  ADDI s5, zero, 1
  # implict jump to bb22
bb22:
  ADD s7, s5, zero
  LA s8, n
  LW s8, 0(s8)
  SLT s8, s8, s7
  XORI s8, s8, 1
  BNE s8, zero, bb23
  JAL zero, bb20
bb23:
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
  BNE s8, zero, bb25
  # implict jump to bb24
bb24:
  ADDI a0, zero, 32
  CALL putch
  ADDIW s7, s7, 1
  ADD s5, s7, zero
  JAL zero, bb22
bb25:
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb20
bb26:
  ADDW s8, s5, s1
  SUBW s8, s8, s4
  SLLIW s8, s8, 2
  LA s9, line2
  ADD s8, s9, s8
  LW s8, 0(s8)
  SLTU s8, zero, s8
  XORI s8, s8, 1
  SLTU s8, zero, s8
  ADD s7, s8, zero
  JAL zero, bb15
bb27:
  ADDW s8, s1, s4
  SLLIW s8, s8, 2
  LA s9, line1
  ADD s8, s9, s8
  LW s8, 0(s8)
  SLTIU s8, s8, 1
  ADD s7, s8, zero
  JAL zero, bb13
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
  # implict jump to bb29
bb29:
  ADD s1, s0, zero
  LA s2, n
  LW s2, 0(s2)
  SLT s2, s2, s1
  XORI s2, s2, 1
  BNE s2, zero, bb31
  # implict jump to bb30
bb30:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb31:
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
  BNE s2, zero, bb33
  # implict jump to bb32
bb32:
  ADDI a0, zero, 32
  CALL putch
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb29
bb33:
  ADDI a0, zero, 10
  CALL putch
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
