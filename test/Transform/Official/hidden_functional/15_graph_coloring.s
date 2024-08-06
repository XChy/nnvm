.global graphColoring
.global main
.section .bss
.section .data
.section .text
graphColoring:   # loop depth 0
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  ADD s3, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s4, a3, zero
  XORI a0, s2, 4
  SLTIU a0, a0, 1
  BNE a0, zero, bb7
  # implict jump to bb1
bb1:   # loop depth 0
  ADDI s0, zero, 1
  # implict jump to bb2
bb2:   # loop depth 1
  SLT a0, s1, s0
  XORI a0, a0, 1
  BNE a0, zero, bb4
  # implict jump to bb3
bb3:   # loop depth 0
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
bb4:   # loop depth 1
  SLLIW a0, s2, 2
  ADD s5, s4, a0
  SW s0, 0(s5)
  ADDIW a2, s2, 1
  ADD a0, s3, zero
  ADD a1, s1, zero
  ADD a3, s4, zero
  CALL graphColoring
  BNE a0, zero, bb6
  # implict jump to bb5
bb5:   # loop depth 1
  SW zero, 0(s5)
  ADDIW s0, s0, 1
  JAL zero, bb2
bb6:   # loop depth 0
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
bb7:   # loop depth 0
  ADD a0, zero, zero
  ADD s2, zero, zero
  # implict jump to bb8
bb8:   # loop depth 1
  SLTI s0, s2, 4
  BNE s0, zero, bb13
  # implict jump to bb9
bb9:   # loop depth 0
  ADDI a0, zero, 1
  # implict jump to bb10
bb10:   # loop depth 0
  BNE a0, zero, bb12
  # implict jump to bb11
bb11:   # loop depth 0
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
bb12:   # loop depth 0
  LW a0, 0(s4)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW a0, 4(s4)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW a0, 8(s4)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW a0, 12(s4)
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
bb13:   # loop depth 1
  ADDIW s1, s2, 1
  ADD s0, s1, zero
  # implict jump to bb14
bb14:   # loop depth 2
  SLTI s5, s0, 4
  BNE s5, zero, bb16
  # implict jump to bb15
bb15:   # loop depth 1
  ADD s2, s1, zero
  JAL zero, bb8
bb16:   # loop depth 2
  SLLIW a0, s2, 4
  ADD a0, s3, a0
  SLLIW s5, s0, 2
  ADD a0, a0, s5
  LW a0, 0(a0)
  BNE a0, zero, bb21
  # implict jump to bb17
bb17:   # loop depth 2
  ADD a0, zero, zero
  # implict jump to bb18
bb18:   # loop depth 2
  BNE a0, zero, bb20
  # implict jump to bb19
bb19:   # loop depth 2
  ADDIW s0, s0, 1
  JAL zero, bb14
bb20:   # loop depth 0
  ADD a0, zero, zero
  JAL zero, bb10
bb21:   # loop depth 2
  ADD a0, s4, s5
  LW a0, 0(a0)
  SLLIW s5, s2, 2
  ADD s5, s4, s5
  LW s5, 0(s5)
  XOR a0, a0, s5
  SLTIU a0, a0, 1
  JAL zero, bb18
main:   # loop depth 0
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
bb23:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb24:   # loop depth 0
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
