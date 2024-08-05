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
  ADDI sp, sp, -144
  SD ra, 48(sp)
  SD s0, 56(sp)
  SD s1, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD s5, 96(sp)
  SD s6, 104(sp)
  SD s7, 112(sp)
  SD s8, 120(sp)
  SD s9, 128(sp)
  SD s11, 136(sp)
  ADDI s0, zero, 17
  SLTI s0, s0, 1
  XORI s0, s0, 1
  SB s0, 8(sp)
  ADDI s11, zero, 1
  ADD s0, zero, zero
  SB s0, 11(sp)
  ADD s9, zero, zero
  ADD s0, zero, zero
  SB s0, 9(sp)
  ADD s0, zero, zero
  SB s0, 13(sp)
  ADD s0, zero, zero
  SB s0, 10(sp)
  ADD s3, zero, zero
  ADD s4, zero, zero
  ADD s0, zero, zero
  SW s0, 20(sp)
  # implict jump to bb4
bb4:
  LW s0, 20(sp)
  SW s0, 20(sp)
  LB s0, 10(sp)
  SB s0, 10(sp)
  LB s0, 13(sp)
  SB s0, 13(sp)
  LB s0, 9(sp)
  SB s0, 9(sp)
  SB s9, 0(sp)
  LB s0, 11(sp)
  SB s0, 11(sp)
  ADDI s6, zero, 1
  SUBW s6, s11, s6
  SW s6, 32(sp)
  LA s8, n
  ADDI s7, zero, 4
  SW s7, 0(s8)
  LB s6, 8(sp)
  BNE s6, zero, bb55
  # implict jump to bb5
bb5:
  LB s0, 11(sp)
  SB s0, 11(sp)
  LB s0, 0(sp)
  SB s0, 0(sp)
  LB s0, 9(sp)
  SB s0, 9(sp)
  ADD s11, zero, zero
  LB s0, 13(sp)
  SB s0, 13(sp)
  LB s0, 13(sp)
  SB s0, 7(sp)
  LB s0, 10(sp)
  SB s0, 10(sp)
  SW s4, 16(sp)
  ADD s0, zero, zero
  SW s0, 40(sp)
  LW s0, 20(sp)
  SW s0, 20(sp)
  # implict jump to bb6
bb6:
  LW s0, 20(sp)
  SW s0, 20(sp)
  LW s0, 40(sp)
  SW s0, 40(sp)
  LW s0, 16(sp)
  SW s0, 16(sp)
  LB s0, 10(sp)
  SB s0, 10(sp)
  LB s0, 7(sp)
  SB s0, 13(sp)
  LB s0, 13(sp)
  SB s0, 13(sp)
  LB s0, 9(sp)
  SB s0, 9(sp)
  LB s0, 0(sp)
  SB s0, 0(sp)
  LB s0, 11(sp)
  SB s0, 11(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 36(sp)
  CALL getint
  ADD s5, a0, zero
  SW s5, 28(sp)
  SLTU s9, zero, s11
  XORI s9, s9, 1
  BNE s9, zero, bb15
  # implict jump to bb7
bb7:
  LW s9, 20(sp)
  LW s0, 16(sp)
  SW s0, 16(sp)
  SB s3, 4(sp)
  LB s0, 10(sp)
  SB s0, 10(sp)
  LB s0, 13(sp)
  SB s0, 13(sp)
  LB s0, 9(sp)
  SB s0, 9(sp)
  LB s0, 0(sp)
  SB s0, 0(sp)
  LB s0, 11(sp)
  SB s0, 11(sp)
  # implict jump to bb8
bb8:
  LB s0, 11(sp)
  SB s0, 11(sp)
  LB s0, 0(sp)
  SB s0, 0(sp)
  LB s0, 9(sp)
  SB s0, 9(sp)
  LB s0, 13(sp)
  SB s0, 13(sp)
  LB s0, 10(sp)
  SB s0, 10(sp)
  LB s0, 4(sp)
  SB s0, 2(sp)
  LW s0, 16(sp)
  SW s0, 16(sp)
  SW s9, 20(sp)
  LW s0, 40(sp)
  ADDIW s0, s0, 1
  SW s0, 40(sp)
  LW s0, 40(sp)
  SLTI s8, s0, 10
  BNE s8, zero, bb14
  # implict jump to bb9
bb9:
  SLTU s4, zero, s11
  XORI s4, s4, 1
  BNE s4, zero, bb13
  # implict jump to bb10
bb10:
  LW s4, 32(sp)
  BNE s4, zero, bb12
  # implict jump to bb11
bb11:
  ADD a0, zero, zero
  LD ra, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s5, 96(sp)
  LD s6, 104(sp)
  LD s7, 112(sp)
  LD s8, 120(sp)
  LD s9, 128(sp)
  LD s11, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb12:
  LW s11, 32(sp)
  LB s0, 11(sp)
  SB s0, 11(sp)
  LB s9, 0(sp)
  LB s0, 9(sp)
  SB s0, 9(sp)
  LB s0, 13(sp)
  SB s0, 13(sp)
  LB s0, 10(sp)
  SB s0, 10(sp)
  LB s3, 2(sp)
  LW s4, 16(sp)
  LW s0, 20(sp)
  SW s0, 20(sp)
  JAL zero, bb4
bb13:
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb10
bb14:
  LB s0, 11(sp)
  SB s0, 11(sp)
  LB s0, 0(sp)
  SB s0, 0(sp)
  LB s0, 9(sp)
  SB s0, 9(sp)
  LB s0, 13(sp)
  SB s0, 13(sp)
  LB s0, 13(sp)
  SB s0, 7(sp)
  LB s0, 10(sp)
  SB s0, 10(sp)
  LB s3, 2(sp)
  LW s0, 16(sp)
  SW s0, 16(sp)
  LW s0, 40(sp)
  SW s0, 40(sp)
  LW s0, 20(sp)
  SW s0, 20(sp)
  JAL zero, bb6
bb15:
  LA s0, n
  LW s0, 0(s0)
  ADDI s1, zero, 1
  LW s2, 36(sp)
  SUBW s1, s2, s1
  MULW s0, s0, s1
  LW s1, 28(sp)
  ADDW s0, s0, s1
  SW s0, 16(sp)
  LW s0, 16(sp)
  SLLIW s1, s0, 2
  LA s2, array
  ADD s1, s2, s1
  LW s0, 16(sp)
  SW s0, 0(s1)
  LW s0, 36(sp)
  XORI s1, s0, 1
  SLTIU s1, s1, 1
  BNE s1, zero, bb53
  # implict jump to bb16
bb16:
  LA s1, n
  LW s1, 0(s1)
  LW s0, 36(sp)
  XOR s1, s0, s1
  SLTIU s1, s1, 1
  BNE s1, zero, bb51
  # implict jump to bb17
bb17:
  LA s1, n
  LW s1, 0(s1)
  LW s2, 28(sp)
  BLT s2, s1, bb50
  # implict jump to bb18
bb18:
  ADD s0, zero, zero
  SB s0, 10(sp)
  # implict jump to bb19
bb19:
  LB s0, 10(sp)
  SB s0, 10(sp)
  LB s0, 10(sp)
  BNE s0, zero, bb48
  # implict jump to bb20
bb20:
  ADDI s2, zero, 1
  LW s3, 28(sp)
  BLT s2, s3, bb47
  # implict jump to bb21
bb21:
  ADD s0, zero, zero
  SB s0, 0(sp)
  # implict jump to bb22
bb22:
  LB s0, 0(sp)
  SB s0, 0(sp)
  LB s0, 0(sp)
  BNE s0, zero, bb45
  # implict jump to bb23
bb23:
  LA s3, n
  LW s3, 0(s3)
  LW s0, 36(sp)
  BLT s0, s3, bb44
  # implict jump to bb24
bb24:
  ADD s0, zero, zero
  SB s0, 3(sp)
  # implict jump to bb25
bb25:
  LB s0, 3(sp)
  SB s0, 3(sp)
  LB s0, 3(sp)
  BNE s0, zero, bb42
  # implict jump to bb26
bb26:
  ADDI s3, zero, 1
  LW s0, 36(sp)
  BLT s3, s0, bb41
  # implict jump to bb27
bb27:
  ADD s0, zero, zero
  SB s0, 9(sp)
  # implict jump to bb28
bb28:
  LB s0, 9(sp)
  SB s0, 9(sp)
  LB s0, 9(sp)
  BNE s0, zero, bb39
  # implict jump to bb29
bb29:
  LA s3, array
  LW s3, 0(s3)
  XORI s3, s3, -1
  BNE s3, zero, bb38
  # implict jump to bb30
bb30:
  ADD s0, zero, zero
  SB s0, 11(sp)
  # implict jump to bb31
bb31:
  LB s0, 11(sp)
  SB s0, 11(sp)
  LB s0, 11(sp)
  BNE s0, zero, bb37
  # implict jump to bb32
bb32:
  ADD s0, zero, zero
  SB s0, 4(sp)
  # implict jump to bb33
bb33:
  LB s0, 4(sp)
  SB s0, 4(sp)
  LB s0, 4(sp)
  BNE s0, zero, bb36
  # implict jump to bb34
bb34:
  LW s9, 20(sp)
  # implict jump to bb35
bb35:
  LW s0, 16(sp)
  SW s0, 16(sp)
  LB s0, 4(sp)
  SB s0, 4(sp)
  LB s0, 10(sp)
  SB s0, 10(sp)
  LB s0, 3(sp)
  SB s0, 13(sp)
  LB s0, 13(sp)
  SB s0, 13(sp)
  LB s0, 9(sp)
  SB s0, 9(sp)
  LB s0, 0(sp)
  SB s0, 0(sp)
  LB s0, 11(sp)
  SB s0, 11(sp)
  JAL zero, bb8
bb36:
  LW a0, 40(sp)
  ADDIW s9, a0, 1
  ADD a0, s9, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s11, zero, 1
  JAL zero, bb35
bb37:
  ADD a0, zero, zero
  CALL findfa
  ADD s4, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  ADD s3, a0, zero
  XOR s3, s4, s3
  SLTIU s0, s3, 1
  SB s0, 4(sp)
  LB s0, 4(sp)
  SB s0, 4(sp)
  JAL zero, bb33
bb38:
  LA s3, array
  LW s3, 68(s3)
  XORI s3, s3, -1
  SLTU s0, zero, s3
  SB s0, 11(sp)
  LB s0, 11(sp)
  SB s0, 11(sp)
  JAL zero, bb31
bb39:
  LA a0, n
  LW a0, 0(a0)
  LW s0, 16(sp)
  SUBW s3, s0, a0
  LW a0, 16(sp)
  CALL findfa
  ADD s4, a0, zero
  ADD a0, s3, zero
  CALL findfa
  ADD s3, a0, zero
  BNE s4, s3, bb40
  JAL zero, bb29
bb40:
  SLLIW s4, s4, 2
  LA s7, array
  ADD s4, s7, s4
  SW s3, 0(s4)
  JAL zero, bb29
bb41:
  LA s3, n
  LW s3, 0(s3)
  LW s0, 16(sp)
  SUBW s3, s0, s3
  SLLIW s3, s3, 2
  LA s4, array
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, -1
  SLTU s0, zero, s3
  SB s0, 9(sp)
  LB s0, 9(sp)
  SB s0, 9(sp)
  JAL zero, bb28
bb42:
  LA a0, n
  LW a0, 0(a0)
  LW s0, 16(sp)
  ADDW s3, s0, a0
  LW a0, 16(sp)
  CALL findfa
  ADD s4, a0, zero
  ADD a0, s3, zero
  CALL findfa
  ADD s3, a0, zero
  BNE s4, s3, bb43
  JAL zero, bb26
bb43:
  SLLIW s4, s4, 2
  LA s5, array
  ADD s4, s5, s4
  SW s3, 0(s4)
  JAL zero, bb26
bb44:
  LW s0, 16(sp)
  ADDW s3, s0, s3
  SLLIW s3, s3, 2
  LA s4, array
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, -1
  SLTU s0, zero, s3
  SB s0, 3(sp)
  LB s0, 3(sp)
  SB s0, 3(sp)
  JAL zero, bb25
bb45:
  ADDI a0, zero, 1
  LW s0, 16(sp)
  SUBW s3, s0, a0
  LW a0, 16(sp)
  CALL findfa
  ADD s4, a0, zero
  ADD a0, s3, zero
  CALL findfa
  ADD s3, a0, zero
  BNE s4, s3, bb46
  JAL zero, bb23
bb46:
  SLLIW s4, s4, 2
  LA s5, array
  ADD s4, s5, s4
  SW s3, 0(s4)
  JAL zero, bb23
bb47:
  ADDI s2, zero, 1
  LW s0, 16(sp)
  SUBW s2, s0, s2
  SLLIW s2, s2, 2
  LA s3, array
  ADD s2, s3, s2
  LW s2, 0(s2)
  XORI s2, s2, -1
  SLTU s0, zero, s2
  SB s0, 0(sp)
  LB s0, 0(sp)
  SB s0, 0(sp)
  JAL zero, bb22
bb48:
  LW a0, 16(sp)
  ADDIW s2, a0, 1
  LW a0, 16(sp)
  CALL findfa
  ADD s3, a0, zero
  ADD a0, s2, zero
  CALL findfa
  ADD s2, a0, zero
  BNE s3, s2, bb49
  JAL zero, bb20
bb49:
  SLLIW s3, s3, 2
  LA s4, array
  ADD s3, s4, s3
  SW s2, 0(s3)
  JAL zero, bb20
bb50:
  LW s0, 16(sp)
  ADDIW s1, s0, 1
  SLLIW s1, s1, 2
  LA s2, array
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, -1
  SLTU s0, zero, s1
  SB s0, 10(sp)
  LB s0, 10(sp)
  SB s0, 10(sp)
  JAL zero, bb19
bb51:
  LA a0, array
  ADDI s1, zero, 17
  SW s1, 68(a0)
  LW a0, 16(sp)
  CALL findfa
  ADD s2, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  ADD s1, a0, zero
  BNE s2, s1, bb52
  JAL zero, bb17
bb52:
  SLLIW s2, s2, 2
  LA s3, array
  ADD s2, s3, s2
  SW s1, 0(s2)
  JAL zero, bb17
bb53:
  LA a0, array
  SW zero, 0(a0)
  LW a0, 16(sp)
  CALL findfa
  ADD s2, a0, zero
  ADD a0, zero, zero
  CALL findfa
  ADD s1, a0, zero
  BNE s2, s1, bb54
  JAL zero, bb16
bb54:
  SLLIW s2, s2, 2
  LA s3, array
  ADD s2, s3, s2
  SW s1, 0(s2)
  JAL zero, bb16
bb55:
  ADDI s7, zero, 1
  # implict jump to bb56
bb56:
  SLLIW s9, s7, 2
  LA s8, array
  ADD s9, s8, s9
  ADDI s8, zero, -1
  SW s8, 0(s9)
  ADDIW s7, s7, 1
  ADDI s8, zero, 17
  SLT s8, s8, s7
  XORI s8, s8, 1
  BNE s8, zero, bb57
  JAL zero, bb5
bb57:
  JAL zero, bb56
