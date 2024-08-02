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
  ADD s5, a2, zero
  ADD s4, a3, zero
  XORI a0, s5, 4
  SLTIU a0, a0, 1
  BNE a0, zero, bb7
  # implict jump to bb1
bb1:
  ADDI a0, zero, 1
  # implict jump to bb2
bb2:
  ADD s0, a0, zero
  SLT a0, s3, s0
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
  SLLIW a0, s5, 2
  ADD s1, s4, a0
  SW s0, 0(s1)
  ADDIW a2, s5, 1
  ADD a0, s2, zero
  ADD a1, s3, zero
  ADD a3, s4, zero
  CALL graphColoring
  BNE a0, zero, bb6
  # implict jump to bb5
bb5:
  SW zero, 0(s1)
  ADDIW a0, s0, 1
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
  ADD a0, zero, zero
  ADD s0, zero, zero
  # implict jump to bb8
bb8:
  SLTI s1, s0, 4
  BNE s1, zero, bb16
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
  ADD a0, zero, zero
  # implict jump to bb13
bb13:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADD a0, s4, a0
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW a0, s0, 1
  SLTI s0, a0, 4
  BNE s0, zero, bb15
  # implict jump to bb14
bb14:
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
bb15:
  JAL zero, bb13
bb16:
  ADDIW s1, s0, 1
  ADD s3, s1, zero
  # implict jump to bb17
bb17:
  SLTI s5, s3, 4
  BNE s5, zero, bb19
  # implict jump to bb18
bb18:
  ADD s0, s1, zero
  JAL zero, bb8
bb19:
  SLLIW a0, s0, 4
  ADD a0, s2, a0
  SLLIW s5, s3, 2
  ADD a0, a0, s5
  LW a0, 0(a0)
  BNE a0, zero, bb24
  # implict jump to bb20
bb20:
  ADD a0, zero, zero
  # implict jump to bb21
bb21:
  BNE a0, zero, bb23
  # implict jump to bb22
bb22:
  ADDIW s3, s3, 1
  JAL zero, bb17
bb23:
  ADD a0, zero, zero
  JAL zero, bb10
bb24:
  ADD a0, s4, s5
  LW a0, 0(a0)
  SLLIW s5, s0, 2
  ADD s5, s4, s5
  LW s5, 0(s5)
  XOR a0, a0, s5
  SLTIU a0, a0, 1
  JAL zero, bb21
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
  ADD a0, zero, zero
  # implict jump to bb26
bb26:
  SLLIW a1, a0, 2
  ADDI t5, sp, 0
  ADD a1, t5, a1
  SW zero, 0(a1)
  ADDIW a0, a0, 1
  SLTI a1, a0, 4
  BNE a1, zero, bb30
  # implict jump to bb27
bb27:
  ADDI a0, sp, 16
  ADD a0, a0, zero
  ADDI a1, zero, 3
  ADD a2, zero, zero
  ADDI a3, sp, 0
  ADD a3, a3, zero
  CALL graphColoring
  SLTU a0, zero, a0
  XORI a0, a0, 1
  BNE a0, zero, bb29
  # implict jump to bb28
bb28:
  ADD a0, zero, zero
  LD ra, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb29:
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
  JAL zero, bb28
bb30:
  JAL zero, bb26
