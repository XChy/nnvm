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
  JAL zero, bb5
bb4:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb5:
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
  BNE s3, zero, bb8
  JAL zero, bb9
bb8:
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
bb9:
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
  BNE s3, zero, bb11
  JAL zero, bb12
bb11:
  ADDIW s2, s0, 1
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb12:
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
  BNE s0, zero, bb14
  JAL zero, bb15
bb14:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb15:
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
  BNE s0, zero, bb17
  JAL zero, bb18
bb17:
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb18:
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -192
  SD ra, 88(sp)
  SD s0, 96(sp)
  SD s11, 104(sp)
  SD s10, 112(sp)
  SD s7, 120(sp)
  SD s1, 128(sp)
  SD s6, 136(sp)
  SD s2, 144(sp)
  SD s3, 152(sp)
  SD s4, 160(sp)
  SD s5, 168(sp)
  SD s8, 176(sp)
  SD s9, 184(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 40(sp)
  CALL getint
  ADD s1, a0, zero
  CALL getint
  ADD s2, a0, zero
  CALL getint
  ADD s3, a0, zero
  ADD s4, zero, zero
  JAL zero, bb20
bb20:
  ADD s5, s4, zero
  SLTI s6, s5, 10
  BNE s6, zero, bb21
  JAL zero, bb22
bb21:
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADDI t5, sp, 0
  ADD s6, t5, s7
  CALL getint
  ADD s7, a0, zero
  SW s7, 0(s6)
  ADDIW s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb20
bb22:
  LW t4, 40(sp)
  ADD a0, t4, zero
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
  LW s5, 0(sp)
  ADDI s6, sp, 4
  LW s7, 0(s6)
  ADD a0, s7, zero
  CALL func5
  ADD s7, a0, zero
  ADDI s8, sp, 8
  LW s9, 0(s8)
  ADDI s10, sp, 12
  LW s11, 0(s10)
  ADD a0, s11, zero
  CALL func7
  ADD s11, a0, zero
  ADD a0, s9, zero
  ADD a1, s11, zero
  CALL func6
  ADD s9, a0, zero
  ADDI t4, sp, 16
  SD t4, 56(sp)
  LD t4, 56(sp)
  LW s0, 0(t4)
  ADDI t4, sp, 20
  SD t4, 48(sp)
  LD t4, 48(sp)
  LW s11, 0(t4)
  ADD a0, s11, zero
  CALL func7
  ADD s11, a0, zero
  ADD a0, s0, zero
  ADD a1, s11, zero
  CALL func2
  ADD s0, a0, zero
  ADD a0, s7, zero
  ADD a1, s9, zero
  ADD a2, s0, zero
  CALL func4
  ADD s0, a0, zero
  ADDI s7, sp, 24
  LW s9, 0(s7)
  ADD a0, s0, zero
  ADD a1, s9, zero
  CALL func3
  ADD s0, a0, zero
  ADDI t4, sp, 28
  SD t4, 80(sp)
  LD t4, 80(sp)
  LW s11, 0(t4)
  ADD a0, s0, zero
  ADD a1, s11, zero
  CALL func2
  ADD s0, a0, zero
  ADDI t4, sp, 32
  SD t4, 64(sp)
  LD t4, 64(sp)
  LW s11, 0(t4)
  ADDI t4, sp, 36
  SD t4, 72(sp)
  LD t4, 72(sp)
  LW s9, 0(t4)
  ADD a0, s9, zero
  CALL func7
  ADD s9, a0, zero
  ADD a0, s11, zero
  ADD a1, s9, zero
  CALL func3
  ADD s9, a0, zero
  ADD a0, s0, zero
  ADD a1, s9, zero
  LW t4, 40(sp)
  ADD a2, t4, zero
  CALL func1
  ADD s0, a0, zero
  ADD a0, s4, zero
  ADD a1, s5, zero
  ADD a2, s0, zero
  CALL func4
  ADD s0, a0, zero
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
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL func3
  ADD s0, a0, zero
  LW s1, 0(sp)
  LW s2, 0(s6)
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL func1
  ADD s0, a0, zero
  LW s1, 0(s8)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL func2
  ADD s0, a0, zero
  LW s1, 0(s10)
  LD t4, 56(sp)
  LW s2, 0(t4)
  LD t4, 48(sp)
  LW s3, 0(t4)
  ADD a0, s3, zero
  CALL func5
  ADD s3, a0, zero
  ADD a0, s2, zero
  ADD a1, s3, zero
  CALL func3
  ADD s2, a0, zero
  LW s3, 0(s7)
  ADD a0, s3, zero
  CALL func5
  ADD s3, a0, zero
  ADD a0, s2, zero
  ADD a1, s3, zero
  CALL func2
  ADD s2, a0, zero
  LD t4, 80(sp)
  LW s3, 0(t4)
  LD t4, 64(sp)
  LW s4, 0(t4)
  ADD a0, s4, zero
  CALL func7
  ADD s4, a0, zero
  ADD a0, s2, zero
  ADD a1, s3, zero
  ADD a2, s4, zero
  CALL func1
  ADD s2, a0, zero
  LD t4, 72(sp)
  LW s3, 0(t4)
  ADD a0, s3, zero
  CALL func5
  ADD s3, a0, zero
  ADD a0, s2, zero
  ADD a1, s3, zero
  CALL func2
  ADD s2, a0, zero
  ADD a0, s2, zero
  LW t4, 40(sp)
  ADD a1, t4, zero
  CALL func3
  ADD s2, a0, zero
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL func1
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 88(sp)
  LD s0, 96(sp)
  LD s11, 104(sp)
  LD s10, 112(sp)
  LD s7, 120(sp)
  LD s1, 128(sp)
  LD s6, 136(sp)
  LD s2, 144(sp)
  LD s3, 152(sp)
  LD s4, 160(sp)
  LD s5, 168(sp)
  LD s8, 176(sp)
  LD s9, 184(sp)
  ADDI sp, sp, 192
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
  BNE s4, zero, bb24
  JAL zero, bb25
bb24:
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
bb25:
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
