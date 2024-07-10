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
  BNE s0, zero, bb5
  # implict jump to bb1
bb1:
  ADD s0, zero, zero
  # implict jump to bb2
bb2:
  ADD s1, s0, zero
  BNE s1, zero, bb4
  # implict jump to bb3
bb3:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb4:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb5:
  XOR s2, s1, zero
  SLTU s1, zero, s2
  ADD s0, s1, zero
  JAL zero, bb2
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
  # implict jump to bb8
bb8:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb9:
  REMW s2, s0, s1
  ADD a0, s2, zero
  ADD a1, zero, zero
  CALL func2
  ADD s0, a0, zero
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
  BNE s3, zero, bb12
  # implict jump to bb11
bb11:
  ADDW s2, s0, s1
  ADD a0, s2, zero
  ADD a1, zero, zero
  CALL func3
  ADD s1, a0, zero
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb12:
  ADDIW s1, s0, 1
  ADD a0, s1, zero
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
  BNE s1, zero, bb15
  # implict jump to bb14
bb14:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb15:
  ADDI a0, zero, 1
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
  BNE s0, zero, bb18
  # implict jump to bb17
bb17:
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb18:
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -176
  SD ra, 72(sp)
  SD s3, 80(sp)
  SD s5, 88(sp)
  SD s4, 96(sp)
  SD s7, 104(sp)
  SD s10, 112(sp)
  SD s6, 120(sp)
  SD s1, 128(sp)
  SD s0, 136(sp)
  SD s8, 144(sp)
  SD s9, 152(sp)
  SD s11, 160(sp)
  SD s2, 168(sp)
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
  ADD t4, zero, zero
  SW t4, 56(sp)
  # implict jump to bb20
bb20:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t4, 60(sp)
  SLTI s6, t4, 10
  BNE s6, zero, bb58
  # implict jump to bb21
bb21:
  LW t4, 52(sp)
  XOR s6, t4, zero
  SLTU s7, zero, s6
  XORI s6, s7, 1
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb57
  # implict jump to bb22
bb22:
  ADD s6, zero, zero
  # implict jump to bb23
bb23:
  ADD s7, s6, zero
  LW t4, 48(sp)
  SUB s6, zero, t4
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb56
  # implict jump to bb24
bb24:
  ADD s7, zero, zero
  # implict jump to bb25
bb25:
  ADD s6, s7, zero
  BNE s6, zero, bb55
  # implict jump to bb26
bb26:
  ADD s6, zero, zero
  # implict jump to bb27
bb27:
  ADD s7, s6, zero
  ADD a0, s7, zero
  LW t4, 44(sp)
  ADD a1, t4, zero
  CALL func2
  ADD s6, a0, zero
  ADD a0, s6, zero
  LW t4, 40(sp)
  ADD a1, t4, zero
  CALL func3
  ADD s6, a0, zero
  SUB s7, zero, s6
  LW s6, 0(sp)
  ADDI s8, sp, 4
  LW s9, 0(s8)
  SUB s8, zero, s9
  ADDI s10, sp, 8
  LW s11, 0(s10)
  ADDI s10, sp, 12
  LW t4, 0(s10)
  SW t4, 64(sp)
  LW t4, 64(sp)
  XOR s10, t4, zero
  SLTU s2, zero, s10
  XORI s10, s2, 1
  XOR s2, s10, zero
  SLTU s10, zero, s2
  BNE s10, zero, bb54
  # implict jump to bb28
bb28:
  ADD s2, zero, zero
  # implict jump to bb29
bb29:
  ADD s10, s2, zero
  XOR s2, s11, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb53
  # implict jump to bb30
bb30:
  ADD s1, zero, zero
  # implict jump to bb31
bb31:
  ADD s2, s1, zero
  BNE s2, zero, bb52
  # implict jump to bb32
bb32:
  ADD s1, zero, zero
  # implict jump to bb33
bb33:
  ADD s2, s1, zero
  ADDI s1, sp, 16
  LW s10, 0(s1)
  ADDI s1, sp, 20
  LW s0, 0(s1)
  XOR s1, s0, zero
  SLTU s4, zero, s1
  XORI s1, s4, 1
  XOR s4, s1, zero
  SLTU s1, zero, s4
  BNE s1, zero, bb51
  # implict jump to bb34
bb34:
  ADD s1, zero, zero
  # implict jump to bb35
bb35:
  ADD s4, s1, zero
  ADD a0, s10, zero
  ADD a1, s4, zero
  CALL func2
  ADD s1, a0, zero
  XOR s4, s8, zero
  SLTU s8, zero, s4
  BNE s8, zero, bb50
  # implict jump to bb36
bb36:
  ADD s4, s1, zero
  # implict jump to bb37
bb37:
  ADD s1, s4, zero
  ADDI s2, sp, 24
  LW s4, 0(s2)
  ADD a0, s1, zero
  ADD a1, s4, zero
  CALL func3
  ADD s1, a0, zero
  ADDI s2, sp, 28
  LW s8, 0(s2)
  ADD a0, s1, zero
  ADD a1, s8, zero
  CALL func2
  ADD s1, a0, zero
  ADDI s2, sp, 32
  LW s5, 0(s2)
  ADDI s2, sp, 36
  LW t4, 0(s2)
  SW t4, 68(sp)
  LW t4, 68(sp)
  XOR s2, t4, zero
  SLTU s3, zero, s2
  XORI s2, s3, 1
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb49
  # implict jump to bb38
bb38:
  ADD s2, zero, zero
  # implict jump to bb39
bb39:
  ADD s3, s2, zero
  ADD a0, s5, zero
  ADD a1, s3, zero
  CALL func3
  ADD s2, a0, zero
  ADD a0, s1, zero
  ADD a1, s2, zero
  LW t4, 52(sp)
  ADD a2, t4, zero
  CALL func1
  ADD s1, a0, zero
  XOR s2, s7, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb48
  # implict jump to bb40
bb40:
  ADD s2, s1, zero
  # implict jump to bb41
bb41:
  ADD s1, s2, zero
  LW t4, 44(sp)
  XOR s2, t4, zero
  SLTU s3, zero, s2
  XORI s2, s3, 1
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb47
  # implict jump to bb42
bb42:
  ADD s2, zero, zero
  # implict jump to bb43
bb43:
  ADD s3, s2, zero
  ADD a0, s3, zero
  LW t4, 40(sp)
  ADD a1, t4, zero
  CALL func3
  ADD s2, a0, zero
  LW t4, 48(sp)
  ADD a0, t4, zero
  ADD a1, s2, zero
  CALL func2
  ADD s2, a0, zero
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL func3
  ADD s1, a0, zero
  ADD a0, s1, zero
  ADD a1, s6, zero
  ADD a2, s9, zero
  CALL func1
  ADD s1, a0, zero
  ADD a0, s1, zero
  ADD a1, s11, zero
  CALL func2
  ADD s1, a0, zero
  SUB s2, zero, s0
  ADD a0, s10, zero
  ADD a1, s2, zero
  CALL func3
  ADD s0, a0, zero
  SUB s2, zero, s4
  ADD a0, s0, zero
  ADD a1, s2, zero
  CALL func2
  ADD s0, a0, zero
  XOR s2, s5, zero
  SLTU s3, zero, s2
  XORI s2, s3, 1
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb46
  # implict jump to bb44
bb44:
  ADD s2, zero, zero
  # implict jump to bb45
bb45:
  ADD s3, s2, zero
  ADD a0, s0, zero
  ADD a1, s8, zero
  ADD a2, s3, zero
  CALL func1
  ADD s0, a0, zero
  LW t4, 68(sp)
  SUB s2, zero, t4
  ADD a0, s0, zero
  ADD a1, s2, zero
  CALL func2
  ADD s0, a0, zero
  ADD a0, s0, zero
  LW t4, 52(sp)
  ADD a1, t4, zero
  CALL func3
  ADD s0, a0, zero
  ADD a0, s1, zero
  LW t4, 64(sp)
  ADD a1, t4, zero
  ADD a2, s0, zero
  CALL func1
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 72(sp)
  LD s3, 80(sp)
  LD s5, 88(sp)
  LD s4, 96(sp)
  LD s7, 104(sp)
  LD s10, 112(sp)
  LD s6, 120(sp)
  LD s1, 128(sp)
  LD s0, 136(sp)
  LD s8, 144(sp)
  LD s9, 152(sp)
  LD s11, 160(sp)
  LD s2, 168(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb46:
  ADDI s2, zero, 1
  JAL zero, bb45
bb47:
  ADDI s2, zero, 1
  JAL zero, bb43
bb48:
  ADD s2, s6, zero
  JAL zero, bb41
bb49:
  ADDI s2, zero, 1
  JAL zero, bb39
bb50:
  ADD s4, s2, zero
  JAL zero, bb37
bb51:
  ADDI s1, zero, 1
  JAL zero, bb35
bb52:
  ADDI s1, zero, 1
  JAL zero, bb33
bb53:
  XOR s2, s10, zero
  SLTU s10, zero, s2
  ADD s1, s10, zero
  JAL zero, bb31
bb54:
  ADDI s2, zero, 1
  JAL zero, bb29
bb55:
  ADDI s6, zero, 1
  JAL zero, bb27
bb56:
  XOR s8, s6, zero
  SLTU s6, zero, s8
  ADD s7, s6, zero
  JAL zero, bb25
bb57:
  ADDI s6, zero, 1
  JAL zero, bb23
bb58:
  LW t4, 60(sp)
  SLLIW s0, t4, 2
  ADDI t5, sp, 0
  ADD s1, t5, s0
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(s1)
  LW t4, 60(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 56(sp)
  JAL zero, bb20
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
  BNE s4, zero, bb61
  # implict jump to bb60
bb60:
  SUBW s3, s1, s2
  ADD a0, s0, zero
  ADD a1, s3, zero
  ADD a2, zero, zero
  CALL func1
  ADD s2, a0, zero
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb61:
  MULW s2, s0, s1
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
