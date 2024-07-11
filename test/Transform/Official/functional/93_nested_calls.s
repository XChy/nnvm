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
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  BNE s0, zero, bb5
  # implict jump to bb1
bb1:
  ADD s0, zero, zero
  # implict jump to bb2
bb2:
  BNE s0, zero, bb4
  # implict jump to bb3
bb3:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb4:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb5:
  SLTU s1, zero, a1
  ADD s0, s1, zero
  JAL zero, bb2
func5:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  ADD s0, a0, zero
  SUB s0, zero, s0
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
func2:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  BNE s1, zero, bb9
  # implict jump to bb8
bb8:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb9:
  REMW s0, s0, s1
  ADD a0, s0, zero
  ADD a1, zero, zero
  CALL func2
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
func3:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SLTIU s2, s1, 1
  BNE s2, zero, bb12
  # implict jump to bb11
bb11:
  ADDW s1, s0, s1
  ADD a0, s1, zero
  ADD a1, zero, zero
  CALL func3
  ADD s1, a0, zero
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb12:
  ADDIW s0, s0, 1
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
func7:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  ADD s0, a0, zero
  SLTU s0, zero, s0
  XORI s0, s0, 1
  BNE s0, zero, bb15
  # implict jump to bb14
bb14:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb15:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
func4:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  ADD s0, a0, zero
  BNE s0, zero, bb18
  # implict jump to bb17
bb17:
  ADD a0, a2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb18:
  ADD a0, a1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -176
  SD s2, 32(sp)
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s5, 80(sp)
  SD s6, 88(sp)
  SD s7, 96(sp)
  SD s8, 104(sp)
  SD s9, 112(sp)
  SD s10, 120(sp)
  SD s11, 128(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 12(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 8(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 4(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  # implict jump to bb20
bb20:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t4, 20(sp)
  SLTI s6, t4, 10
  BNE s6, zero, bb58
  # implict jump to bb21
bb21:
  LW t4, 12(sp)
  SLTU s6, zero, t4
  XORI s6, s6, 1
  BNE s6, zero, bb57
  # implict jump to bb22
bb22:
  ADD s6, zero, zero
  # implict jump to bb23
bb23:
  LW t4, 8(sp)
  SUB s7, zero, t4
  BNE s6, zero, bb56
  # implict jump to bb24
bb24:
  ADD s6, zero, zero
  # implict jump to bb25
bb25:
  BNE s6, zero, bb55
  # implict jump to bb26
bb26:
  ADD s6, zero, zero
  # implict jump to bb27
bb27:
  ADD a0, s6, zero
  LW t4, 4(sp)
  ADD a1, t4, zero
  CALL func2
  ADD s6, a0, zero
  ADD a0, s6, zero
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL func3
  ADD s6, a0, zero
  SUB s6, zero, s6
  LW s7, 136(sp)
  ADDI s8, sp, 140
  LW s8, 0(s8)
  SUB s9, zero, s8
  ADDI s10, sp, 144
  LW s10, 0(s10)
  ADDI s11, sp, 148
  LW t4, 0(s11)
  SW t4, 24(sp)
  LW t4, 24(sp)
  SLTU s3, zero, t4
  XORI s3, s3, 1
  BNE s3, zero, bb54
  # implict jump to bb28
bb28:
  ADD s3, zero, zero
  # implict jump to bb29
bb29:
  BNE s10, zero, bb53
  # implict jump to bb30
bb30:
  ADD s2, zero, zero
  # implict jump to bb31
bb31:
  BNE s2, zero, bb52
  # implict jump to bb32
bb32:
  ADD s2, zero, zero
  # implict jump to bb33
bb33:
  ADDI s3, sp, 152
  LW s3, 0(s3)
  ADDI s1, sp, 156
  LW s1, 0(s1)
  SLTU s0, zero, s1
  XORI s0, s0, 1
  BNE s0, zero, bb51
  # implict jump to bb34
bb34:
  ADD s0, zero, zero
  # implict jump to bb35
bb35:
  ADD a0, s3, zero
  ADD a1, s0, zero
  CALL func2
  ADD s0, a0, zero
  BNE s9, zero, bb50
  # implict jump to bb36
bb36:
  # implict jump to bb37
bb37:
  ADDI s2, sp, 160
  LW s2, 0(s2)
  ADD a0, s0, zero
  ADD a1, s2, zero
  CALL func3
  ADD s0, a0, zero
  ADDI s9, sp, 164
  LW s9, 0(s9)
  ADD a0, s0, zero
  ADD a1, s9, zero
  CALL func2
  ADD s0, a0, zero
  ADDI s4, sp, 168
  LW s4, 0(s4)
  ADDI s5, sp, 172
  LW s5, 0(s5)
  SLTU s11, zero, s5
  XORI s11, s11, 1
  BNE s11, zero, bb49
  # implict jump to bb38
bb38:
  ADD s11, zero, zero
  # implict jump to bb39
bb39:
  ADD a0, s4, zero
  ADD a1, s11, zero
  CALL func3
  ADD s11, a0, zero
  ADD a0, s0, zero
  ADD a1, s11, zero
  LW t4, 12(sp)
  ADD a2, t4, zero
  CALL func1
  ADD s0, a0, zero
  BNE s6, zero, bb48
  # implict jump to bb40
bb40:
  # implict jump to bb41
bb41:
  LW t4, 4(sp)
  SLTU s6, zero, t4
  XORI s6, s6, 1
  BNE s6, zero, bb47
  # implict jump to bb42
bb42:
  ADD s6, zero, zero
  # implict jump to bb43
bb43:
  ADD a0, s6, zero
  LW t4, 0(sp)
  ADD a1, t4, zero
  CALL func3
  ADD s6, a0, zero
  LW t4, 8(sp)
  ADD a0, t4, zero
  ADD a1, s6, zero
  CALL func2
  ADD s6, a0, zero
  ADD a0, s0, zero
  ADD a1, s6, zero
  CALL func3
  ADD s0, a0, zero
  ADD a0, s0, zero
  ADD a1, s7, zero
  ADD a2, s8, zero
  CALL func1
  ADD s0, a0, zero
  ADD a0, s0, zero
  ADD a1, s10, zero
  CALL func2
  ADD s0, a0, zero
  SUB s1, zero, s1
  ADD a0, s3, zero
  ADD a1, s1, zero
  CALL func3
  ADD s1, a0, zero
  SUB s2, zero, s2
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL func2
  ADD s1, a0, zero
  SLTU s2, zero, s4
  XORI s2, s2, 1
  BNE s2, zero, bb46
  # implict jump to bb44
bb44:
  ADD s2, zero, zero
  # implict jump to bb45
bb45:
  ADD a0, s1, zero
  ADD a1, s9, zero
  ADD a2, s2, zero
  CALL func1
  ADD s1, a0, zero
  SUB s2, zero, s5
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL func2
  ADD s1, a0, zero
  ADD a0, s1, zero
  LW t4, 12(sp)
  ADD a1, t4, zero
  CALL func3
  ADD s1, a0, zero
  ADD a0, s0, zero
  LW t4, 24(sp)
  ADD a1, t4, zero
  ADD a2, s1, zero
  CALL func1
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD s2, 32(sp)
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s5, 80(sp)
  LD s6, 88(sp)
  LD s7, 96(sp)
  LD s8, 104(sp)
  LD s9, 112(sp)
  LD s10, 120(sp)
  LD s11, 128(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb46:
  ADDI s2, zero, 1
  JAL zero, bb45
bb47:
  ADDI s6, zero, 1
  JAL zero, bb43
bb48:
  ADD s0, s7, zero
  JAL zero, bb41
bb49:
  ADDI s11, zero, 1
  JAL zero, bb39
bb50:
  ADD s0, s2, zero
  JAL zero, bb37
bb51:
  ADDI s0, zero, 1
  JAL zero, bb35
bb52:
  ADDI s2, zero, 1
  JAL zero, bb33
bb53:
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb31
bb54:
  ADDI s3, zero, 1
  JAL zero, bb29
bb55:
  ADDI s6, zero, 1
  JAL zero, bb27
bb56:
  SLTU s7, zero, s7
  ADD s6, s7, zero
  JAL zero, bb25
bb57:
  ADDI s6, zero, 1
  JAL zero, bb23
bb58:
  LW t4, 20(sp)
  SLLIW s0, t4, 2
  ADDI t4, sp, 136
  ADD s0, t4, s0
  CALL getint
  SW a0, 0(s0)
  LW t4, 20(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 16(sp)
  JAL zero, bb20
func1:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  SLTIU s3, s2, 1
  BNE s3, zero, bb61
  # implict jump to bb60
bb60:
  SUBW s2, s1, s2
  ADD a0, s0, zero
  ADD a1, s2, zero
  ADD a2, zero, zero
  CALL func1
  ADD s2, a0, zero
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb61:
  MULW s0, s0, s1
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
