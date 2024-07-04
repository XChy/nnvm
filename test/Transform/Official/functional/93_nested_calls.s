.global func6
.global func5
.global func2
.global func3
.global func7
.global func4
.global main
.global func1
.section .bss
.section .data
.section .text
func6:
  ADDI sp, sp, -48
  SD ra, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 16(sp)
  SW s1, 8(sp)
  LW s0, 16(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb1
  JAL zero, bb2
bb1:
  LW s0, 8(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 0(sp)
  JAL zero, bb3
bb2:
  ADDI s0, zero, 0
  SB s0, 0(sp)
  JAL zero, bb3
bb3:
  LB s0, 0(sp)
  BNE s0, zero, bb4
  JAL zero, bb6
bb4:
  ADDI a0, zero, 1
  LD ra, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb5:
bb6:
  ADD a0, zero, zero
  LD ra, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
func5:
  ADDI sp, sp, -32
  SD ra, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  SW s0, 0(sp)
  SUB s1, zero, s0
  ADD a0, s1, zero
  LD ra, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
func2:
  ADDI sp, sp, -48
  SD ra, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 8(sp)
  SW s1, 0(sp)
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb9
  JAL zero, bb11
bb9:
  LW s0, 8(sp)
  LW s1, 0(sp)
  REMW s2, s0, s1
  ADD a0, s2, zero
  ADD a1, zero, zero
  CALL func2
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb10:
bb11:
  LW s0, 8(sp)
  ADD a0, s0, zero
  LD ra, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
func3:
  ADDI sp, sp, -48
  SD s2, 16(sp)
  SD ra, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 8(sp)
  SW s1, 0(sp)
  XOR s0, s1, zero
  SLTIU s1, s0, 1
  BNE s1, zero, bb13
  JAL zero, bb15
bb13:
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  ADD a0, s1, zero
  LD s2, 16(sp)
  LD ra, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb14:
bb15:
  LW s0, 8(sp)
  LW s1, 0(sp)
  ADDW s2, s0, s1
  ADD a0, s2, zero
  ADD a1, zero, zero
  CALL func3
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD s2, 16(sp)
  LD ra, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
func7:
  ADDI sp, sp, -32
  SD ra, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  SW s0, 0(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb17
  JAL zero, bb19
bb17:
  ADDI a0, zero, 1
  LD ra, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb18:
bb19:
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
func4:
  ADDI sp, sp, -64
  SD ra, 24(sp)
  SD s2, 32(sp)
  SD s1, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  SW s0, 16(sp)
  SW s1, 8(sp)
  SW s2, 0(sp)
  LW s0, 16(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb21
  JAL zero, bb23
bb21:
  LW s0, 8(sp)
  ADD a0, s0, zero
  LD ra, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb22:
bb23:
  LW s0, 0(sp)
  ADD a0, s0, zero
  LD ra, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -160
  SD ra, 88(sp)
  SD s4, 96(sp)
  SD s3, 104(sp)
  SD s2, 112(sp)
  SD s6, 120(sp)
  SD s1, 128(sp)
  SD s7, 136(sp)
  SD s5, 144(sp)
  SD s0, 152(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 80(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 72(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 64(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 56(sp)
  SW zero, 8(sp)
  JAL zero, bb25
bb25:
  LW s0, 8(sp)
  SLTI s1, s0, 10
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb26
  JAL zero, bb27
bb26:
  LW s0, 8(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 16
  ADD s0, t5, s2
  CALL getint
  ADD s1, a0, zero
  SW s1, 0(s0)
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb25
bb27:
  LW s0, 80(sp)
  ADD a0, s0, zero
  CALL func7
  ADD s0, a0, zero
  LW s1, 72(sp)
  ADD a0, s1, zero
  CALL func5
  ADD s1, a0, zero
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL func6
  ADD s0, a0, zero
  LW s1, 64(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL func2
  ADD s0, a0, zero
  LW s1, 56(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL func3
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL func5
  ADD s0, a0, zero
  ADDI s1, zero, 4
  MUL s2, zero, s1
  ADDI t6, sp, 16
  ADD s1, t6, s2
  LW s2, 0(s1)
  ADDI s1, zero, 4
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADDI t5, sp, 16
  ADD s1, t5, s4
  LW s3, 0(s1)
  ADD a0, s3, zero
  CALL func5
  ADD s1, a0, zero
  ADDI s3, zero, 4
  ADDI s4, zero, 2
  MULW s5, s3, s4
  ADDI t6, sp, 16
  ADD s3, t6, s5
  LW s4, 0(s3)
  ADDI s3, zero, 4
  ADDI s5, zero, 3
  MULW s6, s3, s5
  ADDI t5, sp, 16
  ADD s3, t5, s6
  LW s5, 0(s3)
  ADD a0, s5, zero
  CALL func7
  ADD s3, a0, zero
  ADD a0, s4, zero
  ADD a1, s3, zero
  CALL func6
  ADD s3, a0, zero
  ADDI s4, zero, 4
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADDI t6, sp, 16
  ADD s4, t6, s6
  LW s5, 0(s4)
  ADDI s4, zero, 4
  ADDI s6, zero, 5
  MULW s7, s4, s6
  ADDI t5, sp, 16
  ADD s4, t5, s7
  LW s6, 0(s4)
  ADD a0, s6, zero
  CALL func7
  ADD s4, a0, zero
  ADD a0, s5, zero
  ADD a1, s4, zero
  CALL func2
  ADD s4, a0, zero
  ADD a0, s1, zero
  ADD a1, s3, zero
  ADD a2, s4, zero
  CALL func4
  ADD s1, a0, zero
  ADDI s3, zero, 4
  ADDI s4, zero, 6
  MULW s5, s3, s4
  ADDI t6, sp, 16
  ADD s3, t6, s5
  LW s4, 0(s3)
  ADD a0, s1, zero
  ADD a1, s4, zero
  CALL func3
  ADD s1, a0, zero
  ADDI s3, zero, 4
  ADDI s4, zero, 7
  MULW s5, s3, s4
  ADDI t5, sp, 16
  ADD s3, t5, s5
  LW s4, 0(s3)
  ADD a0, s1, zero
  ADD a1, s4, zero
  CALL func2
  ADD s1, a0, zero
  ADDI s3, zero, 4
  ADDI s4, zero, 8
  MULW s5, s3, s4
  ADDI t6, sp, 16
  ADD s3, t6, s5
  LW s4, 0(s3)
  ADDI s3, zero, 4
  ADDI s5, zero, 9
  MULW s6, s3, s5
  ADDI t5, sp, 16
  ADD s3, t5, s6
  LW s5, 0(s3)
  ADD a0, s5, zero
  CALL func7
  ADD s3, a0, zero
  ADD a0, s4, zero
  ADD a1, s3, zero
  CALL func3
  ADD s3, a0, zero
  LW s4, 80(sp)
  ADD a0, s1, zero
  ADD a1, s3, zero
  ADD a2, s4, zero
  CALL func1
  ADD s1, a0, zero
  ADD a0, s0, zero
  ADD a1, s2, zero
  ADD a2, s1, zero
  CALL func4
  ADD s0, a0, zero
  LW s1, 72(sp)
  LW s2, 64(sp)
  ADD a0, s2, zero
  CALL func7
  ADD s2, a0, zero
  LW s3, 56(sp)
  ADD a0, s2, zero
  ADD a1, s3, zero
  CALL func3
  ADD s2, a0, zero
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL func2
  ADD s1, a0, zero
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL func3
  ADD s0, a0, zero
  ADDI s1, zero, 4
  MUL s2, zero, s1
  ADDI t6, sp, 16
  ADD s1, t6, s2
  LW s2, 0(s1)
  ADDI s1, zero, 4
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADDI t5, sp, 16
  ADD s1, t5, s4
  LW s3, 0(s1)
  ADD a0, s0, zero
  ADD a1, s2, zero
  ADD a2, s3, zero
  CALL func1
  ADD s0, a0, zero
  ADDI s1, zero, 4
  ADDI s2, zero, 2
  MULW s3, s1, s2
  ADDI t6, sp, 16
  ADD s1, t6, s3
  LW s2, 0(s1)
  ADD a0, s0, zero
  ADD a1, s2, zero
  CALL func2
  ADD s0, a0, zero
  ADDI s1, zero, 4
  ADDI s2, zero, 3
  MULW s3, s1, s2
  ADDI t5, sp, 16
  ADD s1, t5, s3
  LW s2, 0(s1)
  ADDI s1, zero, 4
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADDI t6, sp, 16
  ADD s1, t6, s4
  LW s3, 0(s1)
  ADDI s1, zero, 4
  ADDI s4, zero, 5
  MULW s5, s1, s4
  ADDI t5, sp, 16
  ADD s1, t5, s5
  LW s4, 0(s1)
  ADD a0, s4, zero
  CALL func5
  ADD s1, a0, zero
  ADD a0, s3, zero
  ADD a1, s1, zero
  CALL func3
  ADD s1, a0, zero
  ADDI s3, zero, 4
  ADDI s4, zero, 6
  MULW s5, s3, s4
  ADDI t6, sp, 16
  ADD s3, t6, s5
  LW s4, 0(s3)
  ADD a0, s4, zero
  CALL func5
  ADD s3, a0, zero
  ADD a0, s1, zero
  ADD a1, s3, zero
  CALL func2
  ADD s1, a0, zero
  ADDI s3, zero, 4
  ADDI s4, zero, 7
  MULW s5, s3, s4
  ADDI t5, sp, 16
  ADD s3, t5, s5
  LW s4, 0(s3)
  ADDI s3, zero, 4
  ADDI s5, zero, 8
  MULW s6, s3, s5
  ADDI t6, sp, 16
  ADD s3, t6, s6
  LW s5, 0(s3)
  ADD a0, s5, zero
  CALL func7
  ADD s3, a0, zero
  ADD a0, s1, zero
  ADD a1, s4, zero
  ADD a2, s3, zero
  CALL func1
  ADD s1, a0, zero
  ADDI s3, zero, 4
  ADDI s4, zero, 9
  MULW s5, s3, s4
  ADDI t5, sp, 16
  ADD s3, t5, s5
  LW s4, 0(s3)
  ADD a0, s4, zero
  CALL func5
  ADD s3, a0, zero
  ADD a0, s1, zero
  ADD a1, s3, zero
  CALL func2
  ADD s1, a0, zero
  LW s3, 80(sp)
  ADD a0, s1, zero
  ADD a1, s3, zero
  CALL func3
  ADD s1, a0, zero
  ADD a0, s0, zero
  ADD a1, s2, zero
  ADD a2, s1, zero
  CALL func1
  ADD s0, a0, zero
  SW s0, 0(sp)
  ADD a0, s0, zero
  LD ra, 88(sp)
  LD s4, 96(sp)
  LD s3, 104(sp)
  LD s2, 112(sp)
  LD s6, 120(sp)
  LD s1, 128(sp)
  LD s7, 136(sp)
  LD s5, 144(sp)
  LD s0, 152(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
func1:
  ADDI sp, sp, -64
  SD s3, 24(sp)
  SD ra, 32(sp)
  SD s2, 40(sp)
  SD s1, 48(sp)
  SD s0, 56(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  SW s0, 16(sp)
  SW s1, 8(sp)
  SW s2, 0(sp)
  XOR s0, s2, zero
  SLTIU s1, s0, 1
  BNE s1, zero, bb29
  JAL zero, bb31
bb29:
  LW s0, 16(sp)
  LW s1, 8(sp)
  MULW s2, s0, s1
  ADD a0, s2, zero
  LD s3, 24(sp)
  LD ra, 32(sp)
  LD s2, 40(sp)
  LD s1, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb30:
bb31:
  LW s0, 16(sp)
  LW s1, 8(sp)
  LW s2, 0(sp)
  SUBW s3, s1, s2
  ADD a0, s0, zero
  ADD a1, s3, zero
  ADD a2, zero, zero
  CALL func1
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD s3, 24(sp)
  LD ra, 32(sp)
  LD s2, 40(sp)
  LD s1, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
