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
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  XOR s2, s0, zero
  SLTU s0, zero, s2
  BNE s0, zero, bb1
  JAL zero, bb2
bb1:
  XOR s0, s1, zero
  SLTU s1, zero, s0
  ADD s0, s1, zero
  JAL zero, bb3
bb2:
  ADD s0, zero, zero
  JAL zero, bb3
bb3:
  ADD s1, s0, zero
  BNE s1, zero, bb4
  JAL zero, bb6
bb4:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb5:
bb6:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
func5:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
  ADD s0, a0, zero
  SUB s1, zero, s0
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
func2:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  XOR s2, s1, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb9
  JAL zero, bb11
bb9:
  REMW s2, s0, s1
  ADD a0, s2, zero
  ADD a1, zero, zero
  CALL func2
  ADD s1, a0, zero
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb10:
bb11:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
func3:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  XOR s2, s1, zero
  SLTIU s3, s2, 1
  BNE s3, zero, bb13
  JAL zero, bb15
bb13:
  ADDIW s2, s0, 1
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb14:
bb15:
  ADDW s2, s0, s1
  ADD a0, s2, zero
  ADD a1, zero, zero
  CALL func3
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
func7:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
  ADD s0, a0, zero
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
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb18:
bb19:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
func4:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  XOR s3, s0, zero
  SLTU s0, zero, s3
  BNE s0, zero, bb21
  JAL zero, bb23
bb21:
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb22:
bb23:
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -144
  SD ra, 40(sp)
  SD s11, 48(sp)
  SD s10, 56(sp)
  SD s0, 64(sp)
  SD s5, 72(sp)
  SD s7, 80(sp)
  SD s1, 88(sp)
  SD s6, 96(sp)
  SD s2, 104(sp)
  SD s3, 112(sp)
  SD s4, 120(sp)
  SD s8, 128(sp)
  SD s9, 136(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s1, a0, zero
  CALL getint
  ADD s2, a0, zero
  CALL getint
  ADD s3, a0, zero
  ADD s4, zero, zero
  JAL zero, bb25
bb25:
  ADD s5, s4, zero
  SLTI s6, s5, 10
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb26
  JAL zero, bb27
bb26:
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADDI t5, sp, 0
  ADD s6, t5, s7
  CALL getint
  ADD s7, a0, zero
  SW s7, 0(s6)
  ADDIW s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb25
bb27:
  ADD a0, s0, zero
  CALL func7
  ADD s4, a0, zero
  ADD a0, s1, zero
  CALL func5
  ADD s5, a0, zero
  ADD a0, s4, zero
  ADD a1, s5, zero
  CALL func6
  ADD s4, a0, zero
  ADD a0, s4, zero
  ADD a1, s2, zero
  CALL func2
  ADD s4, a0, zero
  ADD a0, s4, zero
  ADD a1, s3, zero
  CALL func3
  ADD s4, a0, zero
  ADD a0, s4, zero
  CALL func5
  ADD s4, a0, zero
  ADDI s5, zero, 4
  MUL s6, zero, s5
  ADDI t6, sp, 0
  ADD s5, t6, s6
  LW s6, 0(s5)
  ADDI s5, zero, 4
  ADDI s7, zero, 1
  MULW s8, s5, s7
  ADDI t5, sp, 0
  ADD s5, t5, s8
  LW s7, 0(s5)
  ADD a0, s7, zero
  CALL func5
  ADD s5, a0, zero
  ADDI s7, zero, 4
  ADDI s8, zero, 2
  MULW s9, s7, s8
  ADDI t6, sp, 0
  ADD s7, t6, s9
  LW s8, 0(s7)
  ADDI s7, zero, 4
  ADDI s9, zero, 3
  MULW s10, s7, s9
  ADDI t5, sp, 0
  ADD s7, t5, s10
  LW s9, 0(s7)
  ADD a0, s9, zero
  CALL func7
  ADD s7, a0, zero
  ADD a0, s8, zero
  ADD a1, s7, zero
  CALL func6
  ADD s7, a0, zero
  ADDI s8, zero, 4
  ADDI s9, zero, 4
  MULW s10, s8, s9
  ADDI t6, sp, 0
  ADD s8, t6, s10
  LW s9, 0(s8)
  ADDI s8, zero, 4
  ADDI s10, zero, 5
  MULW s11, s8, s10
  ADDI t5, sp, 0
  ADD s8, t5, s11
  LW s10, 0(s8)
  ADD a0, s10, zero
  CALL func7
  ADD s8, a0, zero
  ADD a0, s9, zero
  ADD a1, s8, zero
  CALL func2
  ADD s8, a0, zero
  ADD a0, s5, zero
  ADD a1, s7, zero
  ADD a2, s8, zero
  CALL func4
  ADD s5, a0, zero
  ADDI s7, zero, 4
  ADDI s8, zero, 6
  MULW s9, s7, s8
  ADDI t6, sp, 0
  ADD s7, t6, s9
  LW s8, 0(s7)
  ADD a0, s5, zero
  ADD a1, s8, zero
  CALL func3
  ADD s5, a0, zero
  ADDI s7, zero, 4
  ADDI s8, zero, 7
  MULW s9, s7, s8
  ADDI t5, sp, 0
  ADD s7, t5, s9
  LW s8, 0(s7)
  ADD a0, s5, zero
  ADD a1, s8, zero
  CALL func2
  ADD s5, a0, zero
  ADDI s7, zero, 4
  ADDI s8, zero, 8
  MULW s9, s7, s8
  ADDI t6, sp, 0
  ADD s7, t6, s9
  LW s8, 0(s7)
  ADDI s7, zero, 4
  ADDI s9, zero, 9
  MULW s10, s7, s9
  ADDI t5, sp, 0
  ADD s7, t5, s10
  LW s9, 0(s7)
  ADD a0, s9, zero
  CALL func7
  ADD s7, a0, zero
  ADD a0, s8, zero
  ADD a1, s7, zero
  CALL func3
  ADD s7, a0, zero
  ADD a0, s5, zero
  ADD a1, s7, zero
  ADD a2, s0, zero
  CALL func1
  ADD s5, a0, zero
  ADD a0, s4, zero
  ADD a1, s6, zero
  ADD a2, s5, zero
  CALL func4
  ADD s4, a0, zero
  ADD a0, s2, zero
  CALL func7
  ADD s2, a0, zero
  ADD a0, s2, zero
  ADD a1, s3, zero
  CALL func3
  ADD s2, a0, zero
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL func2
  ADD s1, a0, zero
  ADD a0, s4, zero
  ADD a1, s1, zero
  CALL func3
  ADD s1, a0, zero
  ADDI s2, zero, 4
  MUL s3, zero, s2
  ADDI t6, sp, 0
  ADD s2, t6, s3
  LW s3, 0(s2)
  ADDI s2, zero, 4
  ADDI s4, zero, 1
  MULW s5, s2, s4
  ADDI t5, sp, 0
  ADD s2, t5, s5
  LW s4, 0(s2)
  ADD a0, s1, zero
  ADD a1, s3, zero
  ADD a2, s4, zero
  CALL func1
  ADD s1, a0, zero
  ADDI s2, zero, 4
  ADDI s3, zero, 2
  MULW s4, s2, s3
  ADDI t6, sp, 0
  ADD s2, t6, s4
  LW s3, 0(s2)
  ADD a0, s1, zero
  ADD a1, s3, zero
  CALL func2
  ADD s1, a0, zero
  ADDI s2, zero, 4
  ADDI s3, zero, 3
  MULW s4, s2, s3
  ADDI t5, sp, 0
  ADD s2, t5, s4
  LW s3, 0(s2)
  ADDI s2, zero, 4
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADDI t6, sp, 0
  ADD s2, t6, s5
  LW s4, 0(s2)
  ADDI s2, zero, 4
  ADDI s5, zero, 5
  MULW s6, s2, s5
  ADDI t5, sp, 0
  ADD s2, t5, s6
  LW s5, 0(s2)
  ADD a0, s5, zero
  CALL func5
  ADD s2, a0, zero
  ADD a0, s4, zero
  ADD a1, s2, zero
  CALL func3
  ADD s2, a0, zero
  ADDI s4, zero, 4
  ADDI s5, zero, 6
  MULW s6, s4, s5
  ADDI t6, sp, 0
  ADD s4, t6, s6
  LW s5, 0(s4)
  ADD a0, s5, zero
  CALL func5
  ADD s4, a0, zero
  ADD a0, s2, zero
  ADD a1, s4, zero
  CALL func2
  ADD s2, a0, zero
  ADDI s4, zero, 4
  ADDI s5, zero, 7
  MULW s6, s4, s5
  ADDI t5, sp, 0
  ADD s4, t5, s6
  LW s5, 0(s4)
  ADDI s4, zero, 4
  ADDI s6, zero, 8
  MULW s7, s4, s6
  ADDI t6, sp, 0
  ADD s4, t6, s7
  LW s6, 0(s4)
  ADD a0, s6, zero
  CALL func7
  ADD s4, a0, zero
  ADD a0, s2, zero
  ADD a1, s5, zero
  ADD a2, s4, zero
  CALL func1
  ADD s2, a0, zero
  ADDI s4, zero, 4
  ADDI s5, zero, 9
  MULW s6, s4, s5
  ADDI t5, sp, 0
  ADD s4, t5, s6
  LW s5, 0(s4)
  ADD a0, s5, zero
  CALL func5
  ADD s4, a0, zero
  ADD a0, s2, zero
  ADD a1, s4, zero
  CALL func2
  ADD s2, a0, zero
  ADD a0, s2, zero
  ADD a1, s0, zero
  CALL func3
  ADD s0, a0, zero
  ADD a0, s1, zero
  ADD a1, s3, zero
  ADD a2, s0, zero
  CALL func1
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 40(sp)
  LD s11, 48(sp)
  LD s10, 56(sp)
  LD s0, 64(sp)
  LD s5, 72(sp)
  LD s7, 80(sp)
  LD s1, 88(sp)
  LD s6, 96(sp)
  LD s2, 104(sp)
  LD s3, 112(sp)
  LD s4, 120(sp)
  LD s8, 128(sp)
  LD s9, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
func1:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  XOR s3, s2, zero
  SLTIU s4, s3, 1
  BNE s4, zero, bb29
  JAL zero, bb31
bb29:
  MULW s3, s0, s1
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb30:
bb31:
  SUBW s3, s1, s2
  ADD a0, s0, zero
  ADD a1, s3, zero
  ADD a2, zero, zero
  CALL func1
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
