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
main:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  CALL getint
  ADD s1, a0, zero
  ADDI s0, zero, 0
  BLT s0, s1, bb2
  # implict jump to bb1
bb1:
  LA t0, sum
  LW t0, 0(t0)
  ADD a0, t0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:
  ADD s0, s1, zero
  # implict jump to bb3
bb3:
  ADD s1, s0, zero
  CALL getint
  ADD s0, a0, zero
  LA a0, n
  SW s0, 0(a0)
  ADDI a0, zero, 1
  CALL f
  ADDI s0, zero, 1
  SUBW s1, s1, s0
  ADDI s0, zero, 0
  BLT s0, s1, bb4
  JAL zero, bb1
bb4:
  ADD s0, s1, zero
  JAL zero, bb3
f:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  ADD s0, a0, zero
  LA a0, n
  LW s1, 0(a0)
  SLTI a0, s1, 1
  XORI a0, a0, 1
  BNE a0, zero, bb7
  # implict jump to bb6
bb6:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb7:
  ADD a0, s1, zero
  ADDI s1, zero, 1
  # implict jump to bb8
bb8:
  ADD s3, a0, zero
  SLLIW s2, s1, 2
  LA a0, row
  ADD s2, a0, s2
  LW a0, 0(s2)
  XORI a0, a0, 1
  BNE a0, zero, bb23
  # implict jump to bb9
bb9:
  ADD a0, zero, zero
  # implict jump to bb10
bb10:
  BNE a0, zero, bb22
  # implict jump to bb11
bb11:
  ADD a0, zero, zero
  # implict jump to bb12
bb12:
  BNE a0, zero, bb15
  # implict jump to bb13
bb13:
  ADDIW s2, s1, 1
  LA a0, n
  LW s1, 0(a0)
  SLT a0, s1, s2
  XORI a0, a0, 1
  BNE a0, zero, bb14
  JAL zero, bb6
bb14:
  ADD a0, s1, zero
  ADD s1, s2, zero
  JAL zero, bb8
bb15:
  SLLIW s4, s0, 2
  LA a0, ans
  ADD a0, a0, s4
  SW s1, 0(a0)
  XOR a0, s0, s3
  SLTIU a0, a0, 1
  BNE a0, zero, bb17
  # implict jump to bb16
bb16:
  ADDI a0, zero, 1
  SW a0, 0(s2)
  ADDW a0, s0, s1
  SLLIW s3, a0, 2
  LA a0, line1
  ADD s4, a0, s3
  ADDI a0, zero, 1
  SW a0, 0(s4)
  LA a0, n
  LW a0, 0(a0)
  ADDW a0, a0, s0
  SUBW a0, a0, s1
  SLLIW s3, a0, 2
  LA a0, line2
  ADD s3, a0, s3
  ADDI a0, zero, 1
  SW a0, 0(s3)
  ADDIW a0, s0, 1
  CALL f
  SW zero, 0(s2)
  SW zero, 0(s4)
  LA a0, n
  LW a0, 0(a0)
  ADDW a0, a0, s0
  SUBW a0, a0, s1
  SLLIW s2, a0, 2
  LA a0, line2
  ADD a0, a0, s2
  SW zero, 0(a0)
  JAL zero, bb13
bb17:
  LA a0, sum
  LW a0, 0(a0)
  ADDIW s3, a0, 1
  LA a0, sum
  SW s3, 0(a0)
  ADDI a0, zero, 1
  # implict jump to bb18
bb18:
  ADD s3, a0, zero
  LA a0, n
  LW a0, 0(a0)
  SLT a0, a0, s3
  XORI a0, a0, 1
  BNE a0, zero, bb19
  JAL zero, bb16
bb19:
  SLLIW s4, s3, 2
  LA a0, ans
  ADD a0, a0, s4
  LW a0, 0(a0)
  CALL putint
  LA a0, n
  LW a0, 0(a0)
  XOR a0, s3, a0
  SLTIU a0, a0, 1
  BNE a0, zero, bb21
  # implict jump to bb20
bb20:
  ADDI a0, zero, 32
  CALL putch
  ADDIW a0, s3, 1
  JAL zero, bb18
bb21:
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb16
bb22:
  ADDW a0, s3, s0
  SUBW a0, a0, s1
  SLLIW s4, a0, 2
  LA a0, line2
  ADD a0, a0, s4
  LW a0, 0(a0)
  SLTU a0, zero, a0
  XORI a0, a0, 1
  SLTU a0, zero, a0
  JAL zero, bb12
bb23:
  ADDW a0, s0, s1
  SLLIW s4, a0, 2
  LA a0, line1
  ADD a0, a0, s4
  LW a0, 0(a0)
  SLTIU a0, a0, 1
  JAL zero, bb10
