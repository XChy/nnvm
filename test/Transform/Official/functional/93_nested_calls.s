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
  ADDI sp, sp, -400
  SD ra, 288(sp)
  SD s8, 296(sp)
  SD s3, 304(sp)
  SD s2, 312(sp)
  SD s7, 320(sp)
  SD s10, 328(sp)
  SD s4, 336(sp)
  SD s5, 344(sp)
  SD s0, 352(sp)
  SD s6, 360(sp)
  SD s1, 368(sp)
  SD s11, 376(sp)
  SD s9, 384(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 64(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 56(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 48(sp)
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
  LW t4, 64(sp)
  XOR s4, t4, zero
  SLTU s5, zero, s4
  XORI s4, s5, 1
  ADD s5, s4, zero
  XOR s4, s5, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb43
  JAL zero, bb44
bb23:
  LW t4, 72(sp)
  ADD s5, t4, zero
  LW t4, 56(sp)
  SUB s6, zero, t4
  XOR s7, s5, zero
  SLTU s5, zero, s7
  BNE s5, zero, bb33
  JAL zero, bb34
bb24:
  LW t4, 88(sp)
  ADD s7, t4, zero
  ADD a0, s7, zero
  LW t4, 48(sp)
  ADD a1, t4, zero
  CALL func2
  ADD s7, a0, zero
  ADD a0, s7, zero
  LW t4, 40(sp)
  ADD a1, t4, zero
  CALL func3
  ADD s7, a0, zero
  SUB t4, zero, s7
  SW t4, 144(sp)
  LW t4, 0(sp)
  SW t4, 136(sp)
  ADDI t4, sp, 4
  SD t4, 128(sp)
  LD t4, 128(sp)
  LW s10, 0(t4)
  SUB t4, zero, s10
  SW t4, 120(sp)
  ADDI t4, sp, 8
  SD t4, 112(sp)
  LD t3, 112(sp)
  LW t4, 0(t3)
  SW t4, 104(sp)
  ADDI t4, sp, 12
  SD t4, 96(sp)
  LD t4, 96(sp)
  LW s1, 0(t4)
  XOR s0, s1, zero
  SLTU s1, zero, s0
  XORI s0, s1, 1
  ADD s1, s0, zero
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb45
  JAL zero, bb46
bb25:
  LW t4, 152(sp)
  ADD s1, t4, zero
  LW t4, 104(sp)
  XOR s4, t4, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb38
  JAL zero, bb39
bb26:
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 200(sp)
  ADDI t4, sp, 16
  SD t4, 192(sp)
  LD t3, 192(sp)
  LW t4, 0(t3)
  SW t4, 184(sp)
  ADDI t4, sp, 20
  SD t4, 176(sp)
  LD t4, 176(sp)
  LW s10, 0(t4)
  XOR s11, s10, zero
  SLTU s10, zero, s11
  XORI s11, s10, 1
  ADD s10, s11, zero
  XOR s11, s10, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb47
  JAL zero, bb48
bb27:
  LW t4, 208(sp)
  ADD s11, t4, zero
  LW t4, 184(sp)
  ADD a0, t4, zero
  ADD a1, s11, zero
  CALL func2
  ADD t4, a0, zero
  SW t4, 224(sp)
  LW t4, 120(sp)
  XOR s9, t4, zero
  SLTU s7, zero, s9
  BNE s7, zero, bb55
  JAL zero, bb56
bb28:
  LW t4, 216(sp)
  ADD s9, t4, zero
  ADDI t4, sp, 24
  SD t4, 272(sp)
  LD t4, 272(sp)
  LW s0, 0(t4)
  ADD a0, s9, zero
  ADD a1, s0, zero
  CALL func3
  ADD s0, a0, zero
  ADDI t4, sp, 28
  SD t4, 264(sp)
  LD t4, 264(sp)
  LW s4, 0(t4)
  ADD a0, s0, zero
  ADD a1, s4, zero
  CALL func2
  ADD t4, a0, zero
  SW t4, 256(sp)
  ADDI t4, sp, 32
  SD t4, 248(sp)
  LD t3, 248(sp)
  LW t4, 0(t3)
  SW t4, 240(sp)
  ADDI t4, sp, 36
  SD t4, 232(sp)
  LD t4, 232(sp)
  LW s2, 0(t4)
  XOR s6, s2, zero
  SLTU s2, zero, s6
  XORI s6, s2, 1
  ADD s2, s6, zero
  XOR s6, s2, zero
  SLTU s2, zero, s6
  BNE s2, zero, bb49
  JAL zero, bb50
bb29:
  LW t4, 280(sp)
  ADD s6, t4, zero
  LW t4, 240(sp)
  ADD a0, t4, zero
  ADD a1, s6, zero
  CALL func3
  ADD s6, a0, zero
  LW t4, 256(sp)
  ADD a0, t4, zero
  ADD a1, s6, zero
  LW t4, 64(sp)
  ADD a2, t4, zero
  CALL func1
  ADD s6, a0, zero
  LW t4, 144(sp)
  XOR s5, t4, zero
  SLTU s10, zero, s5
  BNE s10, zero, bb57
  JAL zero, bb58
bb30:
  ADD s10, s5, zero
  LW t4, 48(sp)
  XOR s7, t4, zero
  SLTU s11, zero, s7
  XORI s7, s11, 1
  ADD s11, s7, zero
  XOR s7, s11, zero
  SLTU s11, zero, s7
  BNE s11, zero, bb51
  JAL zero, bb52
bb31:
  ADD s11, s7, zero
  ADD a0, s11, zero
  LW t4, 40(sp)
  ADD a1, t4, zero
  CALL func3
  ADD s11, a0, zero
  LW t4, 56(sp)
  ADD a0, t4, zero
  ADD a1, s11, zero
  CALL func2
  ADD s11, a0, zero
  ADD a0, s10, zero
  ADD a1, s11, zero
  CALL func3
  ADD s11, a0, zero
  LW s3, 0(sp)
  LD t4, 128(sp)
  LW s1, 0(t4)
  ADD a0, s11, zero
  ADD a1, s3, zero
  ADD a2, s1, zero
  CALL func1
  ADD s1, a0, zero
  LD t4, 112(sp)
  LW s3, 0(t4)
  ADD a0, s1, zero
  ADD a1, s3, zero
  CALL func2
  ADD s1, a0, zero
  LD t4, 96(sp)
  LW s3, 0(t4)
  LD t4, 192(sp)
  LW s11, 0(t4)
  LD t4, 176(sp)
  LW s4, 0(t4)
  SUB s0, zero, s4
  ADD a0, s11, zero
  ADD a1, s0, zero
  CALL func3
  ADD s0, a0, zero
  LD t4, 272(sp)
  LW s4, 0(t4)
  SUB s11, zero, s4
  ADD a0, s0, zero
  ADD a1, s11, zero
  CALL func2
  ADD s0, a0, zero
  LD t4, 264(sp)
  LW s4, 0(t4)
  LD t4, 248(sp)
  LW s11, 0(t4)
  XOR s9, s11, zero
  SLTU s11, zero, s9
  XORI s9, s11, 1
  ADD s11, s9, zero
  XOR s9, s11, zero
  SLTU s11, zero, s9
  BNE s11, zero, bb53
  JAL zero, bb54
bb32:
  ADD s11, s9, zero
  ADD a0, s0, zero
  ADD a1, s4, zero
  ADD a2, s11, zero
  CALL func1
  ADD s11, a0, zero
  LD t4, 232(sp)
  LW s8, 0(t4)
  SUB s2, zero, s8
  ADD a0, s11, zero
  ADD a1, s2, zero
  CALL func2
  ADD s2, a0, zero
  ADD a0, s2, zero
  LW t4, 64(sp)
  ADD a1, t4, zero
  CALL func3
  ADD s2, a0, zero
  ADD a0, s1, zero
  ADD a1, s3, zero
  ADD a2, s2, zero
  CALL func1
  ADD s2, a0, zero
  ADD a0, s2, zero
  LD ra, 288(sp)
  LD s8, 296(sp)
  LD s3, 304(sp)
  LD s2, 312(sp)
  LD s7, 320(sp)
  LD s10, 328(sp)
  LD s4, 336(sp)
  LD s5, 344(sp)
  LD s0, 352(sp)
  LD s6, 360(sp)
  LD s1, 368(sp)
  LD s11, 376(sp)
  LD s9, 384(sp)
  ADDI sp, sp, 400
  JALR zero, 0(ra)
bb33:
  XOR s5, s6, zero
  SLTU s6, zero, s5
  ADD t4, s6, zero
  SB t4, 80(sp)
  JAL zero, bb35
bb34:
  ADD t4, zero, zero
  SB t4, 80(sp)
  JAL zero, bb35
bb35:
  LB t4, 80(sp)
  ADD s6, t4, zero
  BNE s6, zero, bb36
  JAL zero, bb37
bb36:
  ADDI t4, zero, 1
  SW t4, 88(sp)
  JAL zero, bb24
bb37:
  ADD t4, zero, zero
  SW t4, 88(sp)
  JAL zero, bb24
bb38:
  XOR s4, s1, zero
  SLTU s1, zero, s4
  ADD t4, s1, zero
  SB t4, 160(sp)
  JAL zero, bb40
bb39:
  ADD t4, zero, zero
  SB t4, 160(sp)
  JAL zero, bb40
bb40:
  LB t4, 160(sp)
  ADD s1, t4, zero
  BNE s1, zero, bb41
  JAL zero, bb42
bb41:
  ADDI t4, zero, 1
  SW t4, 168(sp)
  JAL zero, bb26
bb42:
  ADD t4, zero, zero
  SW t4, 168(sp)
  JAL zero, bb26
bb43:
  ADDI t4, zero, 1
  SW t4, 72(sp)
  JAL zero, bb23
bb44:
  ADD t4, zero, zero
  SW t4, 72(sp)
  JAL zero, bb23
bb45:
  ADDI t4, zero, 1
  SW t4, 152(sp)
  JAL zero, bb25
bb46:
  ADD t4, zero, zero
  SW t4, 152(sp)
  JAL zero, bb25
bb47:
  ADDI t4, zero, 1
  SW t4, 208(sp)
  JAL zero, bb27
bb48:
  ADD t4, zero, zero
  SW t4, 208(sp)
  JAL zero, bb27
bb49:
  ADDI t4, zero, 1
  SW t4, 280(sp)
  JAL zero, bb29
bb50:
  ADD t4, zero, zero
  SW t4, 280(sp)
  JAL zero, bb29
bb51:
  ADDI s7, zero, 1
  JAL zero, bb31
bb52:
  ADD s7, zero, zero
  JAL zero, bb31
bb53:
  ADDI s9, zero, 1
  JAL zero, bb32
bb54:
  ADD s9, zero, zero
  JAL zero, bb32
bb55:
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 216(sp)
  JAL zero, bb28
bb56:
  LW t3, 224(sp)
  ADD t4, t3, zero
  SW t4, 216(sp)
  JAL zero, bb28
bb57:
  LW t4, 136(sp)
  ADD s5, t4, zero
  JAL zero, bb30
bb58:
  ADD s5, s6, zero
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
