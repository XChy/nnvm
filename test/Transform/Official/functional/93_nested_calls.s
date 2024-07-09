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
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb14
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
  ADDI sp, sp, -256
  SD ra, 144(sp)
  SD s2, 152(sp)
  SD s8, 160(sp)
  SD s10, 168(sp)
  SD s7, 176(sp)
  SD s4, 184(sp)
  SD s5, 192(sp)
  SD s0, 200(sp)
  SD s6, 208(sp)
  SD s1, 216(sp)
  SD s9, 224(sp)
  SD s11, 232(sp)
  SD s3, 240(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 52(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 48(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 44(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 40(sp)
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
  LW t4, 52(sp)
  XOR s4, t4, zero
  SLTU s5, zero, s4
  XORI s4, s5, 1
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb43
  JAL zero, bb44
bb23:
  LW t4, 56(sp)
  ADD s5, t4, zero
  LW t4, 48(sp)
  SUB s6, zero, t4
  XOR s7, s5, zero
  SLTU s5, zero, s7
  BNE s5, zero, bb33
  JAL zero, bb34
bb24:
  LW t4, 64(sp)
  ADD s7, t4, zero
  ADD a0, s7, zero
  LW t4, 44(sp)
  ADD a1, t4, zero
  CALL func2
  ADD s7, a0, zero
  ADD a0, s7, zero
  LW t4, 40(sp)
  ADD a1, t4, zero
  CALL func3
  ADD s7, a0, zero
  SUB t4, zero, s7
  SW t4, 88(sp)
  LW t4, 0(sp)
  SW t4, 84(sp)
  ADDI s9, sp, 4
  LW t4, 0(s9)
  SW t4, 80(sp)
  LW t3, 80(sp)
  SUB t4, zero, t3
  SW t4, 76(sp)
  ADDI s11, sp, 8
  LW t4, 0(s11)
  SW t4, 72(sp)
  ADDI s11, sp, 12
  LW t4, 0(s11)
  SW t4, 68(sp)
  LW t4, 68(sp)
  XOR s11, t4, zero
  SLTU s1, zero, s11
  XORI s11, s1, 1
  XOR s1, s11, zero
  SLTU s11, zero, s1
  BNE s11, zero, bb45
  JAL zero, bb46
bb25:
  LW t4, 92(sp)
  ADD s11, t4, zero
  LW t4, 72(sp)
  XOR s0, t4, zero
  SLTU s4, zero, s0
  BNE s4, zero, bb38
  JAL zero, bb39
bb26:
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  ADDI s5, sp, 16
  LW t4, 0(s5)
  SW t4, 108(sp)
  ADDI s5, sp, 20
  LW t4, 0(s5)
  SW t4, 104(sp)
  LW t4, 104(sp)
  XOR s5, t4, zero
  SLTU s3, zero, s5
  XORI s5, s3, 1
  XOR s3, s5, zero
  SLTU s5, zero, s3
  BNE s5, zero, bb47
  JAL zero, bb48
bb27:
  LW t4, 116(sp)
  ADD s5, t4, zero
  LW t4, 108(sp)
  ADD a0, t4, zero
  ADD a1, s5, zero
  CALL func2
  ADD t4, a0, zero
  SW t4, 124(sp)
  LW t4, 76(sp)
  XOR s9, t4, zero
  SLTU s10, zero, s9
  BNE s10, zero, bb55
  JAL zero, bb56
bb28:
  LW t4, 120(sp)
  ADD s10, t4, zero
  ADDI s7, sp, 24
  LW s8, 0(s7)
  ADD a0, s10, zero
  ADD a1, s8, zero
  CALL func3
  ADD s7, a0, zero
  ADDI s10, sp, 28
  LW s1, 0(s10)
  ADD a0, s7, zero
  ADD a1, s1, zero
  CALL func2
  ADD t4, a0, zero
  SW t4, 136(sp)
  ADDI s10, sp, 32
  LW t4, 0(s10)
  SW t4, 132(sp)
  ADDI s10, sp, 36
  LW t4, 0(s10)
  SW t4, 128(sp)
  LW t4, 128(sp)
  XOR s10, t4, zero
  SLTU s2, zero, s10
  XORI s10, s2, 1
  XOR s2, s10, zero
  SLTU s10, zero, s2
  BNE s10, zero, bb49
  JAL zero, bb50
bb29:
  ADD s10, s2, zero
  LW t4, 132(sp)
  ADD a0, t4, zero
  ADD a1, s10, zero
  CALL func3
  ADD s10, a0, zero
  LW t4, 136(sp)
  ADD a0, t4, zero
  ADD a1, s10, zero
  LW t4, 52(sp)
  ADD a2, t4, zero
  CALL func1
  ADD s10, a0, zero
  LW t4, 88(sp)
  XOR s6, t4, zero
  SLTU s11, zero, s6
  BNE s11, zero, bb57
  JAL zero, bb58
bb30:
  ADD s11, s6, zero
  LW t4, 44(sp)
  XOR s3, t4, zero
  SLTU s9, zero, s3
  XORI s3, s9, 1
  XOR s9, s3, zero
  SLTU s3, zero, s9
  BNE s3, zero, bb51
  JAL zero, bb52
bb31:
  ADD s9, s3, zero
  ADD a0, s9, zero
  LW t4, 40(sp)
  ADD a1, t4, zero
  CALL func3
  ADD s9, a0, zero
  LW t4, 48(sp)
  ADD a0, t4, zero
  ADD a1, s9, zero
  CALL func2
  ADD s9, a0, zero
  ADD a0, s11, zero
  ADD a1, s9, zero
  CALL func3
  ADD s9, a0, zero
  ADD a0, s9, zero
  LW t4, 84(sp)
  ADD a1, t4, zero
  LW t4, 80(sp)
  ADD a2, t4, zero
  CALL func1
  ADD s9, a0, zero
  ADD a0, s9, zero
  LW t4, 72(sp)
  ADD a1, t4, zero
  CALL func2
  ADD s9, a0, zero
  LW t4, 104(sp)
  SUB s5, zero, t4
  LW t4, 108(sp)
  ADD a0, t4, zero
  ADD a1, s5, zero
  CALL func3
  ADD s5, a0, zero
  SUB s4, zero, s8
  ADD a0, s5, zero
  ADD a1, s4, zero
  CALL func2
  ADD s4, a0, zero
  LW t4, 132(sp)
  XOR s5, t4, zero
  SLTU s0, zero, s5
  XORI s5, s0, 1
  XOR s0, s5, zero
  SLTU s5, zero, s0
  BNE s5, zero, bb53
  JAL zero, bb54
bb32:
  ADD s5, s0, zero
  ADD a0, s4, zero
  ADD a1, s1, zero
  ADD a2, s5, zero
  CALL func1
  ADD s5, a0, zero
  LW t4, 128(sp)
  SUB s7, zero, t4
  ADD a0, s5, zero
  ADD a1, s7, zero
  CALL func2
  ADD s5, a0, zero
  ADD a0, s5, zero
  LW t4, 52(sp)
  ADD a1, t4, zero
  CALL func3
  ADD s5, a0, zero
  ADD a0, s9, zero
  LW t4, 68(sp)
  ADD a1, t4, zero
  ADD a2, s5, zero
  CALL func1
  ADD s5, a0, zero
  ADD a0, s5, zero
  LD ra, 144(sp)
  LD s2, 152(sp)
  LD s8, 160(sp)
  LD s10, 168(sp)
  LD s7, 176(sp)
  LD s4, 184(sp)
  LD s5, 192(sp)
  LD s0, 200(sp)
  LD s6, 208(sp)
  LD s1, 216(sp)
  LD s9, 224(sp)
  LD s11, 232(sp)
  LD s3, 240(sp)
  ADDI sp, sp, 256
  JALR zero, 0(ra)
bb33:
  XOR s5, s6, zero
  SLTU s6, zero, s5
  ADD t4, s6, zero
  SB t4, 60(sp)
  JAL zero, bb35
bb34:
  ADD t4, zero, zero
  SB t4, 60(sp)
  JAL zero, bb35
bb35:
  LB t4, 60(sp)
  ADD s6, t4, zero
  BNE s6, zero, bb36
  JAL zero, bb37
bb36:
  ADDI t4, zero, 1
  SW t4, 64(sp)
  JAL zero, bb24
bb37:
  ADD t4, zero, zero
  SW t4, 64(sp)
  JAL zero, bb24
bb38:
  XOR s0, s11, zero
  SLTU s4, zero, s0
  ADD t4, s4, zero
  SB t4, 96(sp)
  JAL zero, bb40
bb39:
  ADD t4, zero, zero
  SB t4, 96(sp)
  JAL zero, bb40
bb40:
  LB t4, 96(sp)
  ADD s4, t4, zero
  BNE s4, zero, bb41
  JAL zero, bb42
bb41:
  ADDI t4, zero, 1
  SW t4, 100(sp)
  JAL zero, bb26
bb42:
  ADD t4, zero, zero
  SW t4, 100(sp)
  JAL zero, bb26
bb43:
  ADDI t4, zero, 1
  SW t4, 56(sp)
  JAL zero, bb23
bb44:
  ADD t4, zero, zero
  SW t4, 56(sp)
  JAL zero, bb23
bb45:
  ADDI t4, zero, 1
  SW t4, 92(sp)
  JAL zero, bb25
bb46:
  ADD t4, zero, zero
  SW t4, 92(sp)
  JAL zero, bb25
bb47:
  ADDI t4, zero, 1
  SW t4, 116(sp)
  JAL zero, bb27
bb48:
  ADD t4, zero, zero
  SW t4, 116(sp)
  JAL zero, bb27
bb49:
  ADDI s2, zero, 1
  JAL zero, bb29
bb50:
  ADD s2, zero, zero
  JAL zero, bb29
bb51:
  ADDI s3, zero, 1
  JAL zero, bb31
bb52:
  ADD s3, zero, zero
  JAL zero, bb31
bb53:
  ADDI s0, zero, 1
  JAL zero, bb32
bb54:
  ADD s0, zero, zero
  JAL zero, bb32
bb55:
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  JAL zero, bb28
bb56:
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  JAL zero, bb28
bb57:
  LW t4, 84(sp)
  ADD s6, t4, zero
  JAL zero, bb30
bb58:
  ADD s6, s10, zero
  JAL zero, bb30
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
  BNE s4, zero, bb60
  JAL zero, bb61
bb60:
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
bb61:
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
