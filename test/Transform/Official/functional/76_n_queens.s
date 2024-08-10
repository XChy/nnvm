.global main
.global f
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
main:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  CALL getint
  ADDI s1, zero, 0
  ADD s0, a0, zero
  BLT s1, s0, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  LA t0, sum
  LW a0, 0(t0)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb2:   # loop depth 0
  # implict jump to bb3
bb3:   # loop depth 1
  LA s2, n
  CALL getint
  ADDI s3, zero, 0
  ADD s1, a0, zero
  ADDIW s0, s0, -1
  ADDI a0, zero, 1
  SW s1, 0(s2)
  CALL f
  BLT s3, s0, bb4
  JAL zero, bb1
bb4:   # loop depth 1
  JAL zero, bb3
f:   # loop depth 0
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
  LA s0, n
  ADD s3, a0, zero
  LW s0, 0(s0)
  SLTI a0, s0, 1
  XORI a0, a0, 1
  BNE a0, zero, bb7
  # implict jump to bb6
bb6:   # loop depth 0
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
bb7:   # loop depth 0
  ADDI s1, zero, 1
  # implict jump to bb8
bb8:   # loop depth 1
  LA s2, row
  SLLIW a0, s1, 2
  ADDW s4, s3, s1
  ADD s2, s2, a0
  LW a0, 0(s2)
  XORI a0, a0, 1
  BNE a0, zero, bb23
  # implict jump to bb9
bb9:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb10
bb10:   # loop depth 1
  BNE a0, zero, bb22
  # implict jump to bb11
bb11:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb12
bb12:   # loop depth 1
  BNE a0, zero, bb15
  # implict jump to bb13
bb13:   # loop depth 1
  LA a0, n
  ADDIW s1, s1, 1
  LW s0, 0(a0)
  SLT a0, s0, s1
  XORI a0, a0, 1
  BNE a0, zero, bb14
  JAL zero, bb6
bb14:   # loop depth 1
  JAL zero, bb8
bb15:   # loop depth 1
  LA s5, ans
  SLLIW a0, s3, 2
  XOR s0, s3, s0
  ADD a0, s5, a0
  SLTIU s0, s0, 1
  SW s1, 0(a0)
  BNE s0, zero, bb17
  # implict jump to bb16
bb16:   # loop depth 1
  LA s0, line1
  SLLIW a0, s4, 2
  ADDI s4, zero, 1
  LA s7, n
  ADDI s6, zero, 1
  ADD s0, s0, a0
  SW s4, 0(s2)
  LA s5, line2
  SW s6, 0(s0)
  ADDIW a0, s3, 1
  LW s4, 0(s7)
  ADDI s6, zero, 1
  LA s7, n
  LA s8, line2
  ADDW s4, s4, s3
  SUBW s4, s4, s1
  SLLIW s4, s4, 2
  ADD s4, s5, s4
  SW s6, 0(s4)
  CALL f
  SW zero, 0(s2)
  SW zero, 0(s0)
  LW a0, 0(s7)
  ADDW a0, a0, s3
  SUBW a0, a0, s1
  SLLIW a0, a0, 2
  ADD a0, s8, a0
  SW zero, 0(a0)
  JAL zero, bb13
bb17:   # loop depth 1
  LA a0, sum
  LA s5, sum
  ADDI s0, zero, 1
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(s5)
  # implict jump to bb18
bb18:   # loop depth 2
  LA a0, n
  LW a0, 0(a0)
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb19
  JAL zero, bb16
bb19:   # loop depth 2
  LA s5, ans
  SLLIW a0, s0, 2
  LA s6, n
  ADD a0, s5, a0
  LW a0, 0(a0)
  CALL putint
  LW a0, 0(s6)
  XOR a0, s0, a0
  SLTIU a0, a0, 1
  BNE a0, zero, bb21
  # implict jump to bb20
bb20:   # loop depth 2
  ADDIW s0, s0, 1
  ADDI a0, zero, 32
  CALL putch
  JAL zero, bb18
bb21:   # loop depth 1
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb16
bb22:   # loop depth 1
  ADDW a0, s0, s3
  LA s5, line2
  SUBW a0, a0, s1
  SLLIW a0, a0, 2
  ADD a0, s5, a0
  LW a0, 0(a0)
  SLTU a0, zero, a0
  XORI a0, a0, 1
  SLTU a0, zero, a0
  JAL zero, bb12
bb23:   # loop depth 1
  LA s5, line1
  SLLIW a0, s4, 2
  ADD a0, s5, a0
  LW a0, 0(a0)
  SLTIU a0, a0, 1
  JAL zero, bb10
