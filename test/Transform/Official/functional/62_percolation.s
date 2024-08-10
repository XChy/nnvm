.global findfa
.global main
.section .bss

array:
.space 440
.section .data
n:
.word 0x00000000

.section .text
findfa:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  LA s1, array
  SLLIW s0, a0, 2
  ADD s0, s1, s0
  LW s1, 0(s0)
  XOR s1, s1, a0
  SLTIU s1, s1, 1
  BNE s1, zero, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  LW a0, 0(s0)
  CALL findfa
  ADD t0, a0, zero
  ADD a0, t0, zero
  SW t0, 0(s0)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:   # loop depth 0
  ADDI sp, sp, -224
  SD ra, 104(sp)
  SD s0, 112(sp)
  SD s1, 120(sp)
  SD s2, 128(sp)
  SD s3, 136(sp)
  SD s4, 144(sp)
  SD s5, 152(sp)
  SD s6, 160(sp)
  SD s7, 168(sp)
  SD s8, 176(sp)
  SD s9, 184(sp)
  SD s10, 192(sp)
  ADDI s0, zero, 17
  ADD s1, zero, zero
  SW s1, 68(sp)
  SLTI s8, s0, 1
  ADD s0, zero, zero
  SB s0, 16(sp)
  ADD s5, zero, zero
  ADD s0, zero, zero
  SB s0, 18(sp)
  ADDI s7, zero, 1
  ADD s0, zero, zero
  SB s0, 17(sp)
  ADD s2, zero, zero
  ADD s0, zero, zero
  SB s0, 1(sp)
  ADD s10, zero, zero
  XORI s8, s8, 1
  SB s8, 3(sp)
  # implict jump to bb4
bb4:   # loop depth 1
  LA s8, n
  ADDI s9, zero, 4
  SW s10, 80(sp)
  SW s9, 0(s8)
  ADDIW s0, s7, -1
  SW s0, 88(sp)
  LB s0, 1(sp)
  SB s0, 1(sp)
  LB s0, 1(sp)
  SB s0, 9(sp)
  LB s0, 17(sp)
  SB s0, 17(sp)
  LB s0, 18(sp)
  SB s0, 18(sp)
  LB s0, 16(sp)
  SB s0, 16(sp)
  LW s0, 68(sp)
  SW s0, 68(sp)
  LB s0, 3(sp)
  BNE s0, zero, bb55
  # implict jump to bb5
bb5:   # loop depth 1
  ADD s7, zero, zero
  LW s0, 68(sp)
  SW s0, 68(sp)
  LW s0, 68(sp)
  SW s0, 72(sp)
  LB s0, 16(sp)
  SB s0, 16(sp)
  SB s5, 7(sp)
  LB s0, 18(sp)
  SB s0, 18(sp)
  LB s0, 18(sp)
  SB s0, 8(sp)
  ADD s0, zero, zero
  SW s0, 64(sp)
  LB s0, 17(sp)
  SB s0, 17(sp)
  LB s0, 17(sp)
  SB s0, 0(sp)
  LB s0, 9(sp)
  SB s0, 1(sp)
  LB s0, 1(sp)
  SB s0, 1(sp)
  LW s10, 80(sp)
  ADD s4, zero, zero
  # implict jump to bb6
bb6:   # loop depth 2
  ADDIW s7, s7, 1
  XORI s0, s4, 1
  SW s0, 52(sp)
  LB s0, 1(sp)
  SB s0, 1(sp)
  LB s0, 0(sp)
  SB s0, 5(sp)
  LB s0, 5(sp)
  SB s0, 5(sp)
  LW s3, 64(sp)
  SW s3, 92(sp)
  LB s0, 8(sp)
  SB s0, 18(sp)
  LB s0, 18(sp)
  SB s0, 18(sp)
  LB s0, 7(sp)
  SB s0, 15(sp)
  LB s0, 16(sp)
  SB s0, 16(sp)
  LW s3, 72(sp)
  SW s3, 96(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 44(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 48(sp)
  LW s0, 52(sp)
  BNE s0, zero, bb15
  # implict jump to bb7
bb7:   # loop depth 2
  LB s0, 1(sp)
  SB s0, 1(sp)
  LB s0, 1(sp)
  SB s0, 6(sp)
  SB s2, 12(sp)
  LB s0, 5(sp)
  SB s0, 17(sp)
  LB s0, 17(sp)
  SB s0, 17(sp)
  LW s0, 92(sp)
  SW s0, 24(sp)
  LW s0, 24(sp)
  SW s0, 24(sp)
  LB s0, 18(sp)
  SB s0, 18(sp)
  LB s0, 15(sp)
  SB s0, 15(sp)
  LB s0, 16(sp)
  SB s0, 16(sp)
  LW s0, 96(sp)
  SW s0, 68(sp)
  # implict jump to bb8
bb8:   # loop depth 2
  LW s0, 24(sp)
  SW s0, 24(sp)
  LW s0, 24(sp)
  SW s0, 56(sp)
  SLTI s1, s7, 10
  SB s1, 2(sp)
  LW s0, 56(sp)
  SLTU s4, zero, s0
  LW s0, 68(sp)
  SW s0, 68(sp)
  LB s0, 16(sp)
  SB s0, 16(sp)
  LB s0, 15(sp)
  SB s0, 15(sp)
  LB s0, 18(sp)
  SB s0, 18(sp)
  LB s0, 17(sp)
  SB s0, 17(sp)
  LB s2, 12(sp)
  LB s0, 6(sp)
  SB s0, 1(sp)
  LB s0, 1(sp)
  SB s0, 1(sp)
  LB s5, 2(sp)
  BNE s5, zero, bb14
  # implict jump to bb9
bb9:   # loop depth 1
  XORI s4, s4, 1
  BNE s4, zero, bb13
  # implict jump to bb10
bb10:   # loop depth 1
  LW s4, 88(sp)
  BNE s4, zero, bb12
  # implict jump to bb11
bb11:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 104(sp)
  LD s0, 112(sp)
  LD s1, 120(sp)
  LD s2, 128(sp)
  LD s3, 136(sp)
  LD s4, 144(sp)
  LD s5, 152(sp)
  LD s6, 160(sp)
  LD s7, 168(sp)
  LD s8, 176(sp)
  LD s9, 184(sp)
  LD s10, 192(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb12:   # loop depth 1
  LW s0, 68(sp)
  SW s0, 68(sp)
  LB s0, 16(sp)
  SB s0, 16(sp)
  LB s5, 15(sp)
  LB s0, 18(sp)
  SB s0, 18(sp)
  LW s7, 88(sp)
  LB s0, 17(sp)
  SB s0, 17(sp)
  LB s0, 1(sp)
  SB s0, 1(sp)
  JAL zero, bb4
bb13:   # loop depth 1
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb10
bb14:   # loop depth 2
  LW s0, 68(sp)
  SW s0, 68(sp)
  LW s0, 68(sp)
  SW s0, 72(sp)
  LB s0, 16(sp)
  SB s0, 16(sp)
  LB s0, 15(sp)
  SB s0, 7(sp)
  LB s0, 18(sp)
  SB s0, 18(sp)
  LB s0, 18(sp)
  SB s0, 8(sp)
  LW s0, 56(sp)
  SW s0, 64(sp)
  LB s0, 17(sp)
  SB s0, 17(sp)
  LB s0, 17(sp)
  SB s0, 0(sp)
  LB s0, 1(sp)
  SB s0, 1(sp)
  JAL zero, bb6
bb15:   # loop depth 2
  LA s1, n
  LW s0, 44(sp)
  ADDIW s2, s0, -1
  LA s5, array
  LW s0, 44(sp)
  XORI s4, s0, 1
  LW s1, 0(s1)
  SLTIU s4, s4, 1
  MULW s1, s1, s2
  LW s0, 48(sp)
  ADDW s0, s1, s0
  SW s0, 68(sp)
  LW s0, 68(sp)
  SLLIW s2, s0, 2
  ADD s6, s5, s2
  LW s0, 68(sp)
  SW s0, 0(s6)
  BNE s4, zero, bb53
  # implict jump to bb16
bb16:   # loop depth 2
  LA s2, n
  LW s2, 0(s2)
  LW s0, 44(sp)
  XOR s2, s0, s2
  SLTIU s2, s2, 1
  BNE s2, zero, bb51
  # implict jump to bb17
bb17:   # loop depth 2
  LA s2, n
  LW s2, 0(s2)
  LW s0, 48(sp)
  BLT s0, s2, bb50
  # implict jump to bb18
bb18:   # loop depth 2
  ADD s2, zero, zero
  # implict jump to bb19
bb19:   # loop depth 2
  SB s2, 15(sp)
  LB s0, 15(sp)
  BNE s0, zero, bb48
  # implict jump to bb20
bb20:   # loop depth 2
  ADDI s4, zero, 1
  LW s0, 48(sp)
  BLT s4, s0, bb47
  # implict jump to bb21
bb21:   # loop depth 2
  ADD s4, zero, zero
  # implict jump to bb22
bb22:   # loop depth 2
  BNE s4, zero, bb45
  # implict jump to bb23
bb23:   # loop depth 2
  LA s5, n
  LW s5, 0(s5)
  LW s0, 44(sp)
  BLT s0, s5, bb44
  # implict jump to bb24
bb24:   # loop depth 2
  ADD s5, zero, zero
  # implict jump to bb25
bb25:   # loop depth 2
  BNE s5, zero, bb42
  # implict jump to bb26
bb26:   # loop depth 2
  ADDI s6, zero, 1
  LW s0, 44(sp)
  BLT s6, s0, bb41
  # implict jump to bb27
bb27:   # loop depth 2
  ADD s0, zero, zero
  SB s0, 14(sp)
  # implict jump to bb28
bb28:   # loop depth 2
  LB s0, 14(sp)
  SB s0, 14(sp)
  LB s0, 14(sp)
  BNE s0, zero, bb39
  # implict jump to bb29
bb29:   # loop depth 2
  LA s6, array
  LW s6, 0(s6)
  XORI s6, s6, -1
  BNE s6, zero, bb38
  # implict jump to bb30
bb30:   # loop depth 2
  ADD s0, zero, zero
  SB s0, 11(sp)
  # implict jump to bb31
bb31:   # loop depth 2
  LB s0, 11(sp)
  SB s0, 11(sp)
  LB s0, 11(sp)
  BNE s0, zero, bb37
  # implict jump to bb32
bb32:   # loop depth 2
  ADD s6, zero, zero
  # implict jump to bb33
bb33:   # loop depth 2
  SB s6, 16(sp)
  LB s0, 16(sp)
  BNE s0, zero, bb36
  # implict jump to bb34
bb34:   # loop depth 2
  LW s0, 92(sp)
  SW s0, 24(sp)
  LW s0, 24(sp)
  SW s0, 24(sp)
  # implict jump to bb35
bb35:   # loop depth 2
  LW s0, 24(sp)
  SW s0, 24(sp)
  LB s1, 11(sp)
  SB s1, 6(sp)
  SB s4, 12(sp)
  LB s0, 14(sp)
  SB s0, 17(sp)
  LB s0, 17(sp)
  SB s0, 17(sp)
  LW s0, 24(sp)
  SW s0, 24(sp)
  SB s5, 18(sp)
  LB s0, 15(sp)
  SB s0, 15(sp)
  LB s0, 16(sp)
  SB s0, 16(sp)
  LW s0, 68(sp)
  SW s0, 68(sp)
  JAL zero, bb8
bb36:   # loop depth 2
  ADD a0, s7, zero
  ADD s10, s7, zero
  ADDI s0, zero, 1
  SW s0, 24(sp)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb35
bb37:   # loop depth 2
  ADD a0, zero, zero
  CALL findfa
  ADD s8, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  ADD s6, a0, zero
  XOR s6, s8, s6
  SLTIU s6, s6, 1
  JAL zero, bb33
bb38:   # loop depth 2
  LA s6, array
  LW s6, 68(s6)
  XORI s6, s6, -1
  SLTU s0, zero, s6
  SB s0, 11(sp)
  LB s0, 11(sp)
  SB s0, 11(sp)
  JAL zero, bb31
bb39:   # loop depth 2
  LA s6, n
  LW a0, 68(sp)
  LW s6, 0(s6)
  LW s0, 68(sp)
  SUBW s6, s0, s6
  CALL findfa
  SW a0, 60(sp)
  ADD a0, s6, zero
  CALL findfa
  ADD s6, a0, zero
  LW s0, 60(sp)
  BNE s0, s6, bb40
  JAL zero, bb29
bb40:   # loop depth 2
  LA s0, array
  SD s0, 200(sp)
  LW s0, 60(sp)
  SLLIW s8, s0, 2
  LD s0, 200(sp)
  ADD s8, s0, s8
  SW s6, 0(s8)
  JAL zero, bb29
bb41:   # loop depth 2
  LA s6, n
  LA s8, array
  LW s6, 0(s6)
  LW s0, 68(sp)
  SUBW s6, s0, s6
  SLLIW s6, s6, 2
  ADD s6, s8, s6
  LW s6, 0(s6)
  XORI s6, s6, -1
  SLTU s0, zero, s6
  SB s0, 14(sp)
  LB s0, 14(sp)
  SB s0, 14(sp)
  JAL zero, bb28
bb42:   # loop depth 2
  LA s6, n
  LW a0, 68(sp)
  LW s6, 0(s6)
  LW s0, 68(sp)
  ADDW s6, s0, s6
  CALL findfa
  SW a0, 28(sp)
  ADD a0, s6, zero
  CALL findfa
  ADD s6, a0, zero
  LW s0, 28(sp)
  BNE s0, s6, bb43
  JAL zero, bb26
bb43:   # loop depth 2
  LA s9, array
  LW s0, 28(sp)
  SLLIW s8, s0, 2
  ADD s8, s9, s8
  SW s6, 0(s8)
  JAL zero, bb26
bb44:   # loop depth 2
  LA s6, array
  LW s0, 68(sp)
  ADDW s5, s0, s5
  SLLIW s5, s5, 2
  ADD s5, s6, s5
  LW s5, 0(s5)
  XORI s5, s5, -1
  SLTU s5, zero, s5
  JAL zero, bb25
bb45:   # loop depth 2
  LW a0, 68(sp)
  LW s0, 68(sp)
  ADDIW s5, s0, -1
  CALL findfa
  ADD s6, a0, zero
  ADD a0, s5, zero
  CALL findfa
  ADD s5, a0, zero
  BNE s6, s5, bb46
  JAL zero, bb23
bb46:   # loop depth 2
  LA s8, array
  SLLIW s6, s6, 2
  ADD s6, s8, s6
  SW s5, 0(s6)
  JAL zero, bb23
bb47:   # loop depth 2
  LW s4, -4(s6)
  XORI s4, s4, -1
  SLTU s4, zero, s4
  JAL zero, bb22
bb48:   # loop depth 2
  LW a0, 68(sp)
  LW s0, 68(sp)
  ADDIW s4, s0, 1
  CALL findfa
  ADD s5, a0, zero
  ADD a0, s4, zero
  CALL findfa
  ADD s4, a0, zero
  BNE s5, s4, bb49
  JAL zero, bb20
bb49:   # loop depth 2
  LA s8, array
  SLLIW s5, s5, 2
  ADD s5, s8, s5
  SW s4, 0(s5)
  JAL zero, bb20
bb50:   # loop depth 2
  LW s2, 4(s6)
  XORI s2, s2, -1
  SLTU s2, zero, s2
  JAL zero, bb19
bb51:   # loop depth 2
  LA s2, array
  ADDI s4, zero, 17
  LW a0, 68(sp)
  SW s4, 68(s2)
  CALL findfa
  ADD s4, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  ADD s2, a0, zero
  BNE s4, s2, bb52
  JAL zero, bb17
bb52:   # loop depth 2
  LA s5, array
  SLLIW s4, s4, 2
  ADD s4, s5, s4
  SW s2, 0(s4)
  JAL zero, bb17
bb53:   # loop depth 2
  LA s2, array
  LW a0, 68(sp)
  SW zero, 0(s2)
  CALL findfa
  ADD s4, a0, zero
  ADD a0, zero, zero
  CALL findfa
  ADD s2, a0, zero
  BNE s4, s2, bb54
  JAL zero, bb16
bb54:   # loop depth 2
  LA s5, array
  SLLIW s4, s4, 2
  ADD s4, s5, s4
  SW s2, 0(s4)
  JAL zero, bb16
bb55:   # loop depth 1
  ADDI s8, zero, 1
  # implict jump to bb56
bb56:   # loop depth 2
  LA s0, array
  SD s0, 208(sp)
  ADDI s10, zero, 17
  ADDIW s9, s8, 1
  SLLIW s8, s8, 2
  SLT s0, s10, s9
  SB s0, 13(sp)
  ADDI s0, zero, -1
  SW s0, 76(sp)
  LD s0, 208(sp)
  ADD s8, s0, s8
  LB s0, 13(sp)
  XORI s10, s0, 1
  LW s0, 76(sp)
  SW s0, 0(s8)
  BNE s10, zero, bb57
  JAL zero, bb5
bb57:   # loop depth 2
  ADD s8, s9, zero
  JAL zero, bb56
