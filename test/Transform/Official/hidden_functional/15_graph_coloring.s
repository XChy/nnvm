.global graphColoring
.global main
.section .bss
.section .data
.section .text
graphColoring:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  ADD s2, a0, zero
  ADD s3, a1, zero
  ADD s0, a2, zero
  ADD s1, a3, zero
  XORI a0, s0, 4
  SLTIU a0, a0, 1
  BNE a0, zero, bb7
  # implict jump to bb1
bb1:
  ADDI a0, zero, 1
  # implict jump to bb2
bb2:
  ADD s4, a0, zero
  SLT a0, s3, s4
  XORI a0, a0, 1
  BNE a0, zero, bb4
  # implict jump to bb3
bb3:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb4:
  SLLIW a0, s0, 2
  ADD s5, s1, a0
  SW s4, 0(s5)
  ADDIW a2, s0, 1
  ADD a0, s2, zero
  ADD a1, s3, zero
  ADD a3, s1, zero
  CALL graphColoring
  BNE a0, zero, bb6
  # implict jump to bb5
bb5:
  SW zero, 0(s5)
  ADDIW a0, s4, 1
  JAL zero, bb2
bb6:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb7:
  ADD s0, zero, zero
  ADD a0, zero, zero
  # implict jump to bb8
bb8:
  ADD s4, a0, zero
  SLTI a0, s4, 4
  BNE a0, zero, bb13
  # implict jump to bb9
bb9:
  ADDI a0, zero, 1
  # implict jump to bb10
bb10:
  BNE a0, zero, bb12
  # implict jump to bb11
bb11:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb12:
  LW a0, 0(s1)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW a0, 4(s1)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW a0, 8(s1)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW a0, 12(s1)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb13:
  ADDIW s3, s4, 1
  ADD a0, s3, zero
  # implict jump to bb14
bb14:
  ADD s5, a0, zero
  SLTI a0, s5, 4
  BNE a0, zero, bb16
  # implict jump to bb15
bb15:
  ADD a0, s3, zero
  JAL zero, bb8
bb16:
  SLLIW a0, s4, 4
  ADD a0, s2, a0
  SLLIW s0, s5, 2
  ADD a0, a0, s0
  LW a0, 0(a0)
  BNE a0, zero, bb21
  # implict jump to bb17
bb17:
  ADD a0, zero, zero
  # implict jump to bb18
bb18:
  ADD s0, a0, zero
  BNE s0, zero, bb20
  # implict jump to bb19
bb19:
  ADDIW a0, s5, 1
  JAL zero, bb14
bb20:
  ADD a0, zero, zero
  JAL zero, bb10
bb21:
  ADD a0, s1, s0
  LW s0, 0(a0)
  SLLIW a0, s4, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  XOR a0, s0, a0
  SLTIU a0, a0, 1
  JAL zero, bb18
main:
  ADDI sp, sp, -96
  SD ra, 80(sp)
  SW zero, 16(sp)
  ADDI a0, zero, 1
  SW a0, 20(sp)
  ADDI a0, zero, 1
  SW a0, 24(sp)
  ADDI a0, zero, 1
  SW a0, 28(sp)
  ADDI a0, zero, 1
  SW a0, 32(sp)
  SW zero, 36(sp)
  ADDI a0, zero, 1
  SW a0, 40(sp)
  SW zero, 44(sp)
  ADDI a0, zero, 1
  SW a0, 48(sp)
  ADDI a0, zero, 1
  SW a0, 52(sp)
  SW zero, 56(sp)
  ADDI a0, zero, 1
  SW a0, 60(sp)
  ADDI a0, zero, 1
  SW a0, 64(sp)
  SW zero, 68(sp)
  ADDI a0, zero, 1
  SW a0, 72(sp)
  SW zero, 76(sp)
  SW zero, 0(sp)
  SW zero, 4(sp)
  SW zero, 8(sp)
  SW zero, 12(sp)
  ADDI a0, sp, 16
  ADD a0, a0, zero
  ADDI a1, zero, 3
  ADD a2, zero, zero
  ADDI a3, sp, 0
  ADD a3, a3, zero
  CALL graphColoring
  SLTU a0, zero, a0
  XORI a0, a0, 1
  BNE a0, zero, bb24
  # implict jump to bb23
bb23:
  ADD a0, zero, zero
  LD ra, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb24:
  ADDI a0, zero, 78
  CALL putch
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 116
  CALL putch
  ADDI a0, zero, 32
  CALL putch
  ADDI a0, zero, 101
  CALL putch
  ADDI a0, zero, 120
  CALL putch
  ADDI a0, zero, 105
  CALL putch
  ADDI a0, zero, 115
  CALL putch
  ADDI a0, zero, 116
  CALL putch
  JAL zero, bb23
