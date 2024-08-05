.global findfa
.global main
.section .bss

array:
.space 440
.section .data
n:
.word 0x00000000

.section .text
findfa:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SLLIW s0, a0, 2
  LA s1, array
  ADD s0, s1, s0
  LW s1, 0(s0)
  XOR s1, s1, a0
  SLTIU s1, s1, 1
  BNE s1, zero, bb2
  # implict jump to bb1
bb1:
  LW a0, 0(s0)
  CALL findfa
  SW a0, 0(s0)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -160
  SD ra, 56(sp)
  SD s0, 64(sp)
  SD s1, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
  SD s5, 104(sp)
  SD s6, 112(sp)
  SD s7, 120(sp)
  SD s8, 128(sp)
  SD s9, 136(sp)
  SD s10, 144(sp)
  SD s11, 152(sp)
  ADDI s0, zero, 17
  SLTI s0, s0, 1
  XORI s0, s0, 1
  SB s0, 12(sp)
  ADDI s6, zero, 1
  ADD s0, zero, zero
  SB s0, 2(sp)
  ADD s0, zero, zero
  ADD s1, zero, zero
  ADD s9, zero, zero
  ADD s2, zero, zero
  ADD s10, zero, zero
  ADD s3, zero, zero
  SW s3, 24(sp)
  ADD s3, zero, zero
  SW s3, 20(sp)
  # implict jump to bb4
bb4:
  LW s3, 20(sp)
  SW s3, 20(sp)
  LW s3, 24(sp)
  SW s3, 24(sp)
  LB s3, 2(sp)
  SB s3, 2(sp)
  ADDI s7, zero, 1
  SUBW s6, s6, s7
  SW s6, 40(sp)
  LA s7, n
  ADDI s8, zero, 4
  SW s8, 0(s7)
  LB s6, 12(sp)
  BNE s6, zero, bb55
  # implict jump to bb5
bb5:
  ADD s3, zero, zero
  SB s3, 15(sp)
  LB s3, 2(sp)
  SB s3, 2(sp)
  LB s3, 2(sp)
  SB s3, 9(sp)
  SB s0, 10(sp)
  SB s1, 11(sp)
  ADD s11, zero, zero
  LW s0, 24(sp)
  SW s0, 24(sp)
  ADD s3, zero, zero
  LW s0, 20(sp)
  SW s0, 20(sp)
  # implict jump to bb6
bb6:
  LW s0, 20(sp)
  SW s0, 20(sp)
  SW s3, 36(sp)
  LW s0, 24(sp)
  SW s0, 24(sp)
  SB s2, 16(sp)
  LB s0, 11(sp)
  SB s0, 3(sp)
  LB s0, 10(sp)
  LB s1, 9(sp)
  SB s1, 2(sp)
  LB s1, 15(sp)
  SB s1, 15(sp)
  CALL getint
  ADD s2, a0, zero
  SW s2, 48(sp)
  CALL getint
  ADD s2, a0, zero
  SW s2, 44(sp)
  LB s1, 15(sp)
  XORI s3, s1, 1
  SW s3, 32(sp)
  LW s3, 36(sp)
  ADDIW s3, s3, 1
  LW s6, 32(sp)
  BNE s6, zero, bb15
  # implict jump to bb7
bb7:
  LW s1, 20(sp)
  SW s1, 28(sp)
  LW s1, 24(sp)
  SW s1, 24(sp)
  LB s1, 16(sp)
  SB s1, 14(sp)
  LB s1, 3(sp)
  SB s1, 6(sp)
  LB s1, 2(sp)
  SB s1, 2(sp)
  # implict jump to bb8
bb8:
  LB s1, 2(sp)
  SB s1, 2(sp)
  LB s1, 6(sp)
  LB s2, 14(sp)
  SB s2, 14(sp)
  LW s2, 24(sp)
  SW s2, 24(sp)
  LW s2, 28(sp)
  SW s2, 20(sp)
  SLTI s2, s3, 10
  SB s2, 0(sp)
  SLTU s4, zero, s11
  SB s4, 8(sp)
  LB s2, 0(sp)
  BNE s2, zero, bb14
  # implict jump to bb9
bb9:
  LB s3, 8(sp)
  XORI s3, s3, 1
  BNE s3, zero, bb13
  # implict jump to bb10
bb10:
  LW s3, 40(sp)
  BNE s3, zero, bb12
  # implict jump to bb11
bb11:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  LD s5, 104(sp)
  LD s6, 112(sp)
  LD s7, 120(sp)
  LD s8, 128(sp)
  LD s9, 136(sp)
  LD s10, 144(sp)
  LD s11, 152(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb12:
  LW s6, 40(sp)
  LB s2, 2(sp)
  SB s2, 2(sp)
  LB s2, 14(sp)
  LW s3, 24(sp)
  SW s3, 24(sp)
  LW s3, 20(sp)
  SW s3, 20(sp)
  JAL zero, bb4
bb13:
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb10
bb14:
  LB s2, 8(sp)
  SB s2, 15(sp)
  LB s2, 15(sp)
  SB s2, 15(sp)
  LB s4, 2(sp)
  SB s4, 9(sp)
  SB s0, 10(sp)
  SB s1, 11(sp)
  LB s2, 14(sp)
  LW s0, 24(sp)
  SW s0, 24(sp)
  LW s0, 20(sp)
  SW s0, 20(sp)
  JAL zero, bb6
bb15:
  LA s0, n
  LW s0, 0(s0)
  ADDI s1, zero, 1
  LW s2, 48(sp)
  SUBW s1, s2, s1
  MULW s0, s0, s1
  LW s1, 44(sp)
  ADDW s0, s0, s1
  SW s0, 24(sp)
  LW s0, 24(sp)
  SLLIW s1, s0, 2
  LA s4, array
  ADD s1, s4, s1
  LW s0, 24(sp)
  SW s0, 0(s1)
  LW s0, 48(sp)
  XORI s1, s0, 1
  SLTIU s1, s1, 1
  BNE s1, zero, bb53
  # implict jump to bb16
bb16:
  LA s1, n
  LW s1, 0(s1)
  LW s0, 48(sp)
  XOR s1, s0, s1
  SLTIU s1, s1, 1
  BNE s1, zero, bb51
  # implict jump to bb17
bb17:
  LA s1, n
  LW s1, 0(s1)
  LW s0, 24(sp)
  ADDIW s5, s0, 1
  LW s0, 44(sp)
  BLT s0, s1, bb50
  # implict jump to bb18
bb18:
  ADD s0, zero, zero
  SB s0, 13(sp)
  # implict jump to bb19
bb19:
  LB s0, 13(sp)
  SB s0, 13(sp)
  LB s0, 13(sp)
  BNE s0, zero, bb48
  # implict jump to bb20
bb20:
  ADDI s1, zero, 1
  ADDI s4, zero, 1
  LW s0, 24(sp)
  SUBW s4, s0, s4
  LW s0, 44(sp)
  BLT s1, s0, bb47
  # implict jump to bb21
bb21:
  ADD s1, zero, zero
  # implict jump to bb22
bb22:
  SB s1, 4(sp)
  LB s0, 4(sp)
  BNE s0, zero, bb45
  # implict jump to bb23
bb23:
  LA s1, n
  LW s1, 0(s1)
  LW s0, 48(sp)
  BLT s0, s1, bb44
  # implict jump to bb24
bb24:
  ADD s9, zero, zero
  # implict jump to bb25
bb25:
  BNE s9, zero, bb42
  # implict jump to bb26
bb26:
  ADDI s1, zero, 1
  LW s0, 48(sp)
  BLT s1, s0, bb41
  # implict jump to bb27
bb27:
  ADD s0, zero, zero
  SB s0, 5(sp)
  # implict jump to bb28
bb28:
  LB s0, 5(sp)
  SB s0, 5(sp)
  LB s0, 5(sp)
  BNE s0, zero, bb39
  # implict jump to bb29
bb29:
  LA s1, array
  LW s1, 0(s1)
  XORI s1, s1, -1
  BNE s1, zero, bb38
  # implict jump to bb30
bb30:
  ADD s0, zero, zero
  SB s0, 2(sp)
  # implict jump to bb31
bb31:
  LB s0, 2(sp)
  SB s0, 2(sp)
  LB s0, 2(sp)
  BNE s0, zero, bb37
  # implict jump to bb32
bb32:
  ADD s10, zero, zero
  # implict jump to bb33
bb33:
  BNE s10, zero, bb36
  # implict jump to bb34
bb34:
  LW s0, 20(sp)
  SW s0, 28(sp)
  # implict jump to bb35
bb35:
  LW s0, 28(sp)
  SW s0, 28(sp)
  LW s0, 28(sp)
  SW s0, 28(sp)
  LW s0, 24(sp)
  SW s0, 24(sp)
  LB s0, 13(sp)
  SB s0, 14(sp)
  LB s0, 5(sp)
  SB s0, 6(sp)
  LB s0, 4(sp)
  LB s1, 2(sp)
  SB s1, 2(sp)
  JAL zero, bb8
bb36:
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD s0, s3, zero
  SW s0, 28(sp)
  ADDI s11, zero, 1
  JAL zero, bb35
bb37:
  ADD a0, zero, zero
  CALL findfa
  ADD s7, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  ADD s5, a0, zero
  XOR s5, s7, s5
  SLTIU s10, s5, 1
  JAL zero, bb33
bb38:
  LA s1, array
  LW s1, 68(s1)
  XORI s1, s1, -1
  SLTU s0, zero, s1
  SB s0, 2(sp)
  LB s0, 2(sp)
  SB s0, 2(sp)
  JAL zero, bb31
bb39:
  LA a0, n
  LW a0, 0(a0)
  LW s0, 24(sp)
  SUBW s1, s0, a0
  LW a0, 24(sp)
  CALL findfa
  ADD s5, a0, zero
  ADD a0, s1, zero
  CALL findfa
  ADD s1, a0, zero
  BNE s5, s1, bb40
  JAL zero, bb29
bb40:
  SLLIW s5, s5, 2
  LA s7, array
  ADD s5, s7, s5
  SW s1, 0(s5)
  JAL zero, bb29
bb41:
  LA s1, n
  LW s1, 0(s1)
  LW s0, 24(sp)
  SUBW s1, s0, s1
  SLLIW s1, s1, 2
  LA s5, array
  ADD s1, s5, s1
  LW s1, 0(s1)
  XORI s1, s1, -1
  SLTU s0, zero, s1
  SB s0, 5(sp)
  LB s0, 5(sp)
  SB s0, 5(sp)
  JAL zero, bb28
bb42:
  LA a0, n
  LW a0, 0(a0)
  LW s0, 24(sp)
  ADDW s1, s0, a0
  LW a0, 24(sp)
  CALL findfa
  ADD s5, a0, zero
  ADD a0, s1, zero
  CALL findfa
  ADD s1, a0, zero
  BNE s5, s1, bb43
  JAL zero, bb26
bb43:
  SLLIW s5, s5, 2
  LA s7, array
  ADD s5, s7, s5
  SW s1, 0(s5)
  JAL zero, bb26
bb44:
  LW s0, 24(sp)
  ADDW s1, s0, s1
  SLLIW s1, s1, 2
  LA s4, array
  ADD s1, s4, s1
  LW s1, 0(s1)
  XORI s1, s1, -1
  SLTU s9, zero, s1
  JAL zero, bb25
bb45:
  LW a0, 24(sp)
  CALL findfa
  ADD s5, a0, zero
  ADD a0, s4, zero
  CALL findfa
  ADD s1, a0, zero
  BNE s5, s1, bb46
  JAL zero, bb23
bb46:
  SLLIW s4, s5, 2
  LA s5, array
  ADD s4, s5, s4
  SW s1, 0(s4)
  JAL zero, bb23
bb47:
  SLLIW s1, s4, 2
  LA s5, array
  ADD s1, s5, s1
  LW s1, 0(s1)
  XORI s1, s1, -1
  SLTU s1, zero, s1
  JAL zero, bb22
bb48:
  LW a0, 24(sp)
  CALL findfa
  ADD s4, a0, zero
  ADD a0, s5, zero
  CALL findfa
  ADD s1, a0, zero
  BNE s4, s1, bb49
  JAL zero, bb20
bb49:
  SLLIW s4, s4, 2
  LA s5, array
  ADD s4, s5, s4
  SW s1, 0(s4)
  JAL zero, bb20
bb50:
  SLLIW s1, s5, 2
  LA s4, array
  ADD s1, s4, s1
  LW s1, 0(s1)
  XORI s1, s1, -1
  SLTU s0, zero, s1
  SB s0, 13(sp)
  LB s0, 13(sp)
  SB s0, 13(sp)
  JAL zero, bb19
bb51:
  LA a0, array
  ADDI s1, zero, 17
  SW s1, 68(a0)
  LW a0, 24(sp)
  CALL findfa
  ADD s4, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  ADD s1, a0, zero
  BNE s4, s1, bb52
  JAL zero, bb17
bb52:
  SLLIW s4, s4, 2
  LA s5, array
  ADD s4, s5, s4
  SW s1, 0(s4)
  JAL zero, bb17
bb53:
  LA a0, array
  SW zero, 0(a0)
  LW a0, 24(sp)
  CALL findfa
  ADD s4, a0, zero
  ADD a0, zero, zero
  CALL findfa
  ADD s1, a0, zero
  BNE s4, s1, bb54
  JAL zero, bb16
bb54:
  SLLIW s4, s4, 2
  LA s5, array
  ADD s4, s5, s4
  SW s1, 0(s4)
  JAL zero, bb16
bb55:
  ADDI s7, zero, 1
  # implict jump to bb56
bb56:
  SLLIW s8, s7, 2
  LA s11, array
  ADD s8, s11, s8
  ADDI s11, zero, -1
  SW s11, 0(s8)
  ADDIW s7, s7, 1
  ADDI s8, zero, 17
  SLT s8, s8, s7
  XORI s8, s8, 1
  BNE s8, zero, bb57
  JAL zero, bb5
bb57:
  JAL zero, bb56
