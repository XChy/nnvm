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
  ADDI sp, sp, -176
  SD ra, 80(sp)
  SD s0, 88(sp)
  SD s1, 96(sp)
  SD s2, 104(sp)
  SD s3, 112(sp)
  SD s4, 120(sp)
  SD s5, 128(sp)
  SD s6, 136(sp)
  SD s7, 144(sp)
  SD s8, 152(sp)
  SD s9, 160(sp)
  SD s10, 168(sp)
  ADDI s0, zero, 17
  SLTI s0, s0, 1
  XORI s0, s0, 1
  SB s0, 1(sp)
  ADDI s0, zero, 1
  SW s0, 68(sp)
  ADD s0, zero, zero
  SB s0, 6(sp)
  ADD s0, zero, zero
  SB s0, 5(sp)
  ADD s10, zero, zero
  ADD s0, zero, zero
  SB s0, 9(sp)
  ADD s0, zero, zero
  SB s0, 8(sp)
  ADD s2, zero, zero
  ADD s0, zero, zero
  SW s0, 20(sp)
  ADD s0, zero, zero
  # implict jump to bb4
bb4:
  SW s0, 64(sp)
  LW s0, 20(sp)
  SW s0, 20(sp)
  LB s0, 8(sp)
  SB s0, 8(sp)
  LB s0, 9(sp)
  SB s0, 9(sp)
  LB s0, 5(sp)
  SB s0, 5(sp)
  LB s0, 6(sp)
  SB s0, 6(sp)
  LW s0, 68(sp)
  SW s0, 68(sp)
  ADDI s5, zero, 1
  LW s0, 68(sp)
  SUBW s4, s0, s5
  SW s4, 56(sp)
  LA s6, n
  ADDI s7, zero, 4
  SW s7, 0(s6)
  LB s4, 1(sp)
  BNE s4, zero, bb55
  # implict jump to bb5
bb5:
  ADD s0, zero, zero
  SB s0, 4(sp)
  LB s0, 6(sp)
  SB s0, 6(sp)
  LB s0, 5(sp)
  SB s0, 5(sp)
  ADD s0, zero, zero
  SW s0, 36(sp)
  LB s0, 9(sp)
  SB s0, 9(sp)
  LB s0, 9(sp)
  SB s0, 3(sp)
  LB s0, 8(sp)
  SB s0, 8(sp)
  SB s2, 2(sp)
  LW s0, 20(sp)
  SW s0, 20(sp)
  ADD s2, zero, zero
  LW s0, 64(sp)
  SW s0, 52(sp)
  LW s0, 52(sp)
  SW s0, 52(sp)
  # implict jump to bb6
bb6:
  LW s0, 52(sp)
  SW s0, 52(sp)
  SW s2, 60(sp)
  LW s0, 20(sp)
  SW s0, 20(sp)
  LB s0, 2(sp)
  SB s0, 7(sp)
  LB s0, 8(sp)
  SB s0, 8(sp)
  LB s0, 3(sp)
  SB s0, 9(sp)
  LB s0, 9(sp)
  SB s0, 9(sp)
  LW s0, 36(sp)
  SW s0, 36(sp)
  LB s0, 5(sp)
  SB s0, 5(sp)
  LB s0, 6(sp)
  SB s0, 6(sp)
  LB s0, 4(sp)
  SB s0, 4(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 40(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 48(sp)
  LB s0, 4(sp)
  XORI s9, s0, 1
  LW s3, 60(sp)
  ADDIW s3, s3, 1
  SW s3, 24(sp)
  BNE s9, zero, bb15
  # implict jump to bb7
bb7:
  LW s0, 52(sp)
  SW s0, 16(sp)
  LW s0, 20(sp)
  SW s0, 20(sp)
  LB s0, 7(sp)
  SB s0, 7(sp)
  LB s0, 8(sp)
  SB s0, 8(sp)
  LB s0, 9(sp)
  SB s0, 9(sp)
  LW s0, 36(sp)
  SW s0, 72(sp)
  LW s0, 72(sp)
  SW s0, 72(sp)
  LB s0, 5(sp)
  SB s0, 5(sp)
  LB s0, 6(sp)
  SB s0, 6(sp)
  # implict jump to bb8
bb8:
  LB s0, 6(sp)
  SB s0, 6(sp)
  LB s0, 5(sp)
  SB s0, 5(sp)
  LW s0, 72(sp)
  SW s0, 72(sp)
  LW s0, 72(sp)
  SW s0, 36(sp)
  LB s0, 9(sp)
  SB s0, 9(sp)
  LB s0, 8(sp)
  SB s0, 8(sp)
  LB s0, 7(sp)
  SB s0, 7(sp)
  LW s0, 20(sp)
  SW s0, 20(sp)
  LW s0, 16(sp)
  SW s0, 52(sp)
  LW s2, 24(sp)
  SLTI s0, s2, 10
  SB s0, 13(sp)
  LW s0, 36(sp)
  SLTU s0, zero, s0
  SB s0, 4(sp)
  LB s0, 13(sp)
  BNE s0, zero, bb14
  # implict jump to bb9
bb9:
  LB s0, 4(sp)
  XORI s2, s0, 1
  BNE s2, zero, bb13
  # implict jump to bb10
bb10:
  LW s2, 56(sp)
  BNE s2, zero, bb12
  # implict jump to bb11
bb11:
  ADD a0, zero, zero
  LD ra, 80(sp)
  LD s0, 88(sp)
  LD s1, 96(sp)
  LD s2, 104(sp)
  LD s3, 112(sp)
  LD s4, 120(sp)
  LD s5, 128(sp)
  LD s6, 136(sp)
  LD s7, 144(sp)
  LD s8, 152(sp)
  LD s9, 160(sp)
  LD s10, 168(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb12:
  LW s0, 56(sp)
  SW s0, 68(sp)
  LW s0, 68(sp)
  SW s0, 68(sp)
  LB s0, 6(sp)
  SB s0, 6(sp)
  LB s0, 5(sp)
  SB s0, 5(sp)
  LB s0, 9(sp)
  SB s0, 9(sp)
  LB s0, 8(sp)
  SB s0, 8(sp)
  LB s2, 7(sp)
  LW s0, 20(sp)
  SW s0, 20(sp)
  LW s0, 52(sp)
  JAL zero, bb4
bb13:
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb10
bb14:
  LB s0, 4(sp)
  SB s0, 4(sp)
  LB s0, 6(sp)
  SB s0, 6(sp)
  LB s0, 5(sp)
  SB s0, 5(sp)
  LW s0, 36(sp)
  SW s0, 36(sp)
  LB s0, 9(sp)
  SB s0, 9(sp)
  LB s0, 9(sp)
  SB s0, 3(sp)
  LB s0, 8(sp)
  SB s0, 8(sp)
  LB s0, 7(sp)
  SB s0, 2(sp)
  LW s0, 20(sp)
  SW s0, 20(sp)
  LW s2, 24(sp)
  LW s0, 52(sp)
  SW s0, 52(sp)
  JAL zero, bb6
bb15:
  LA s0, n
  LW s0, 0(s0)
  ADDI s1, zero, 1
  LW s2, 40(sp)
  SUBW s1, s2, s1
  MULW s0, s0, s1
  LW s1, 48(sp)
  ADDW s0, s0, s1
  SW s0, 20(sp)
  LW s0, 20(sp)
  SLLIW s1, s0, 2
  LA s2, array
  ADD s1, s2, s1
  LW s0, 20(sp)
  SW s0, 0(s1)
  LW s0, 40(sp)
  XORI s1, s0, 1
  SLTIU s1, s1, 1
  BNE s1, zero, bb53
  # implict jump to bb16
bb16:
  LA s1, n
  LW s1, 0(s1)
  LW s0, 40(sp)
  XOR s1, s0, s1
  SLTIU s1, s1, 1
  BNE s1, zero, bb51
  # implict jump to bb17
bb17:
  LA s1, n
  LW s1, 0(s1)
  LW s0, 20(sp)
  ADDIW s2, s0, 1
  LW s0, 48(sp)
  BLT s0, s1, bb50
  # implict jump to bb18
bb18:
  ADD s0, zero, zero
  SB s0, 8(sp)
  # implict jump to bb19
bb19:
  LB s0, 8(sp)
  SB s0, 8(sp)
  LB s0, 8(sp)
  BNE s0, zero, bb48
  # implict jump to bb20
bb20:
  ADDI s2, zero, 1
  ADDI s3, zero, 1
  LW s0, 20(sp)
  SUBW s3, s0, s3
  LW s0, 48(sp)
  BLT s2, s0, bb47
  # implict jump to bb21
bb21:
  ADD s2, zero, zero
  # implict jump to bb22
bb22:
  SB s2, 5(sp)
  LB s0, 5(sp)
  BNE s0, zero, bb45
  # implict jump to bb23
bb23:
  LA s3, n
  LW s3, 0(s3)
  LW s0, 40(sp)
  BLT s0, s3, bb44
  # implict jump to bb24
bb24:
  ADD s0, zero, zero
  SB s0, 12(sp)
  # implict jump to bb25
bb25:
  LB s0, 12(sp)
  SB s0, 12(sp)
  LB s0, 12(sp)
  BNE s0, zero, bb42
  # implict jump to bb26
bb26:
  ADDI s3, zero, 1
  LW s0, 40(sp)
  BLT s3, s0, bb41
  # implict jump to bb27
bb27:
  ADD s10, zero, zero
  # implict jump to bb28
bb28:
  BNE s10, zero, bb39
  # implict jump to bb29
bb29:
  LA s4, array
  LW s4, 0(s4)
  XORI s4, s4, -1
  BNE s4, zero, bb38
  # implict jump to bb30
bb30:
  ADD s0, zero, zero
  SB s0, 6(sp)
  # implict jump to bb31
bb31:
  LB s0, 6(sp)
  SB s0, 6(sp)
  LB s0, 6(sp)
  BNE s0, zero, bb37
  # implict jump to bb32
bb32:
  ADD s4, zero, zero
  # implict jump to bb33
bb33:
  BNE s4, zero, bb36
  # implict jump to bb34
bb34:
  LW s0, 52(sp)
  SW s0, 16(sp)
  LW s0, 36(sp)
  SW s0, 72(sp)
  LW s0, 72(sp)
  SW s0, 72(sp)
  # implict jump to bb35
bb35:
  LW s0, 72(sp)
  SW s0, 72(sp)
  LW s0, 16(sp)
  SW s0, 16(sp)
  LW s0, 16(sp)
  SW s0, 16(sp)
  LW s0, 20(sp)
  SW s0, 20(sp)
  SB s4, 7(sp)
  LB s0, 8(sp)
  SB s0, 8(sp)
  LB s0, 12(sp)
  SB s0, 9(sp)
  LB s0, 9(sp)
  SB s0, 9(sp)
  LW s0, 72(sp)
  SW s0, 72(sp)
  LB s0, 5(sp)
  SB s0, 5(sp)
  LB s0, 6(sp)
  SB s0, 6(sp)
  JAL zero, bb8
bb36:
  LW a0, 24(sp)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW s0, 24(sp)
  SW s0, 16(sp)
  LW s0, 16(sp)
  SW s0, 16(sp)
  ADDI s0, zero, 1
  SW s0, 72(sp)
  JAL zero, bb35
bb37:
  ADD a0, zero, zero
  CALL findfa
  ADD s6, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  ADD s4, a0, zero
  XOR s4, s6, s4
  SLTIU s4, s4, 1
  JAL zero, bb33
bb38:
  LA s4, array
  LW s4, 68(s4)
  XORI s4, s4, -1
  SLTU s0, zero, s4
  SB s0, 6(sp)
  LB s0, 6(sp)
  SB s0, 6(sp)
  JAL zero, bb31
bb39:
  LA a0, n
  LW a0, 0(a0)
  LW s0, 20(sp)
  SUBW s4, s0, a0
  LW a0, 20(sp)
  CALL findfa
  ADD s6, a0, zero
  ADD a0, s4, zero
  CALL findfa
  ADD s4, a0, zero
  BNE s6, s4, bb40
  JAL zero, bb29
bb40:
  SLLIW s6, s6, 2
  LA s8, array
  ADD s6, s8, s6
  SW s4, 0(s6)
  JAL zero, bb29
bb41:
  LA s3, n
  LW s3, 0(s3)
  LW s0, 20(sp)
  SUBW s3, s0, s3
  SLLIW s3, s3, 2
  LA s4, array
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, -1
  SLTU s10, zero, s3
  JAL zero, bb28
bb42:
  LA a0, n
  LW a0, 0(a0)
  LW s0, 20(sp)
  ADDW s3, s0, a0
  LW a0, 20(sp)
  CALL findfa
  ADD s4, a0, zero
  ADD a0, s3, zero
  CALL findfa
  ADD s3, a0, zero
  BNE s4, s3, bb43
  JAL zero, bb26
bb43:
  SLLIW s4, s4, 2
  LA s6, array
  ADD s4, s6, s4
  SW s3, 0(s4)
  JAL zero, bb26
bb44:
  LW s0, 20(sp)
  ADDW s3, s0, s3
  SLLIW s3, s3, 2
  LA s4, array
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, -1
  SLTU s0, zero, s3
  SB s0, 12(sp)
  LB s0, 12(sp)
  SB s0, 12(sp)
  JAL zero, bb25
bb45:
  LW a0, 20(sp)
  CALL findfa
  ADD s4, a0, zero
  ADD a0, s3, zero
  CALL findfa
  ADD s3, a0, zero
  BNE s4, s3, bb46
  JAL zero, bb23
bb46:
  SLLIW s4, s4, 2
  LA s6, array
  ADD s4, s6, s4
  SW s3, 0(s4)
  JAL zero, bb23
bb47:
  SLLIW s2, s3, 2
  LA s4, array
  ADD s2, s4, s2
  LW s2, 0(s2)
  XORI s2, s2, -1
  SLTU s2, zero, s2
  JAL zero, bb22
bb48:
  LW a0, 20(sp)
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
  SLLIW s1, s2, 2
  LA s3, array
  ADD s1, s3, s1
  LW s1, 0(s1)
  XORI s1, s1, -1
  SLTU s0, zero, s1
  SB s0, 8(sp)
  LB s0, 8(sp)
  SB s0, 8(sp)
  JAL zero, bb19
bb51:
  LA a0, array
  ADDI s1, zero, 17
  SW s1, 68(a0)
  LW a0, 20(sp)
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
  LW a0, 20(sp)
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
  ADDI s6, zero, 1
  # implict jump to bb56
bb56:
  SLLIW s7, s6, 2
  LA s8, array
  ADD s7, s8, s7
  ADDI s8, zero, -1
  SW s8, 0(s7)
  ADDIW s6, s6, 1
  ADDI s7, zero, 17
  SLT s7, s7, s6
  XORI s7, s7, 1
  BNE s7, zero, bb57
  JAL zero, bb5
bb57:
  JAL zero, bb56
