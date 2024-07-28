.global mmerge
.global findfa
.global init
.global main
.section .bss

array:
.space 440
.section .data
n:
.word 0x00000000

.section .text
mmerge:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD a0, s0, zero
  CALL findfa
  ADD s0, a0, zero
  ADD a0, s1, zero
  CALL findfa
  BNE s0, a0, bb2
  # implict jump to bb1
bb1:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:
  SLLIW s0, s0, 2
  LA s1, array
  ADD s0, s1, s0
  SW a0, 0(s0)
  JAL zero, bb1
findfa:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD s0, a0, zero
  SLLIW s1, s0, 2
  LA s2, array
  ADD s1, s2, s1
  LW s2, 0(s1)
  XOR s2, s2, s0
  SLTIU s2, s2, 1
  BNE s2, zero, bb5
  # implict jump to bb4
bb4:
  LW s2, 0(s1)
  ADD a0, s2, zero
  CALL findfa
  ADD s2, a0, zero
  SW s2, 0(s1)
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb5:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
init:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  MULW s1, a0, a0
  ADDIW s1, s1, 1
  SLTI s1, s1, 1
  XORI s1, s1, 1
  BNE s1, zero, bb8
  # implict jump to bb7
bb7:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb8:
  ADDI s1, zero, 1
  # implict jump to bb9
bb9:
  # implict jump to bb10
bb10:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  LA s4, array
  ADD s3, s4, s3
  ADDI s4, zero, -1
  SW s4, 0(s3)
  ADDIW s0, s2, 1
  # implict jump to bb11
bb11:
  MULW s2, a0, a0
  ADDIW s2, s2, 1
  SLT s2, s2, s0
  XORI s2, s2, 1
  BNE s2, zero, bb12
  JAL zero, bb7
bb12:
  ADD s1, s0, zero
  JAL zero, bb10
main:
  ADDI sp, sp, -304
  SD ra, 192(sp)
  SD s0, 200(sp)
  SD s1, 208(sp)
  SD s2, 216(sp)
  SD s3, 224(sp)
  SD s4, 232(sp)
  SD s7, 240(sp)
  SD s11, 248(sp)
  SD s9, 256(sp)
  SD s10, 264(sp)
  SD s5, 272(sp)
  SD s6, 280(sp)
  SD s8, 288(sp)
  ADDI s0, zero, 0
  XORI s0, s0, 1
  BNE s0, zero, bb15
  # implict jump to bb14
bb14:
  ADD a0, zero, zero
  LD ra, 192(sp)
  LD s0, 200(sp)
  LD s1, 208(sp)
  LD s2, 216(sp)
  LD s3, 224(sp)
  LD s4, 232(sp)
  LD s7, 240(sp)
  LD s11, 248(sp)
  LD s9, 256(sp)
  LD s10, 264(sp)
  LD s5, 272(sp)
  LD s6, 280(sp)
  LD s8, 288(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
bb15:
  ADDI s0, zero, 1
  # implict jump to bb16
bb16:
  ADDI s9, zero, 17
  SLTI s9, s9, 1
  XORI t4, s9, 1
  SB t4, 40(sp)
  ADD t4, s0, zero
  SW t4, 128(sp)
  ADD t4, zero, zero
  SW t4, 96(sp)
  ADD t4, zero, zero
  SB t4, 44(sp)
  ADD t4, zero, zero
  SB t4, 1(sp)
  ADD t4, zero, zero
  SB t4, 10(sp)
  ADD t4, zero, zero
  SW t4, 76(sp)
  ADD t4, zero, zero
  SB t4, 22(sp)
  ADD t4, zero, zero
  SW t4, 160(sp)
  ADD t4, zero, zero
  SB t4, 18(sp)
  ADD t4, zero, zero
  SB t4, 16(sp)
  ADD t4, zero, zero
  SW t4, 172(sp)
  # implict jump to bb17
bb17:
  LW t3, 172(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LB t3, 16(sp)
  ADD t4, t3, zero
  SB t4, 8(sp)
  LB t3, 18(sp)
  ADD t4, t3, zero
  SB t4, 9(sp)
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  LB t3, 22(sp)
  ADD t4, t3, zero
  SB t4, 11(sp)
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 180(sp)
  LB t3, 10(sp)
  ADD t4, t3, zero
  SB t4, 12(sp)
  LB t3, 1(sp)
  ADD t4, t3, zero
  SB t4, 13(sp)
  LB t3, 44(sp)
  ADD t4, t3, zero
  SB t4, 0(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  LW t4, 128(sp)
  ADD s3, t4, zero
  ADDI s11, zero, 1
  SUBW t4, s3, s11
  SW t4, 132(sp)
  LA s3, n
  ADDI s11, zero, 4
  SW s11, 0(s3)
  LB t4, 40(sp)
  BNE t4, zero, bb73
  # implict jump to bb18
bb18:
  ADDI s3, zero, 4
  ADDI s11, zero, 4
  MULW s3, s3, s11
  ADDIW t4, s3, 1
  SW t4, 140(sp)
  SLTI s3, zero, 10
  BNE s3, zero, bb25
  # implict jump to bb19
bb19:
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LB t3, 0(sp)
  ADD t4, t3, zero
  SB t4, 38(sp)
  LB t3, 13(sp)
  ADD t4, t3, zero
  SB t4, 29(sp)
  LB t3, 12(sp)
  ADD t4, t3, zero
  SB t4, 34(sp)
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LB t3, 11(sp)
  ADD t4, t3, zero
  SB t4, 27(sp)
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LB t3, 9(sp)
  ADD t4, t3, zero
  SB t4, 39(sp)
  LB t3, 8(sp)
  ADD t4, t3, zero
  SB t4, 36(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  ADD t4, zero, zero
  SW t4, 116(sp)
  # implict jump to bb20
bb20:
  LW t4, 116(sp)
  ADD s0, t4, zero
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 164(sp)
  LB t3, 36(sp)
  ADD t4, t3, zero
  SB t4, 17(sp)
  LB t3, 39(sp)
  ADD t4, t3, zero
  SB t4, 19(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LB t3, 27(sp)
  ADD t4, t3, zero
  SB t4, 23(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LB t3, 34(sp)
  ADD t4, t3, zero
  SB t4, 7(sp)
  LB t3, 29(sp)
  ADD t4, t3, zero
  SB t4, 43(sp)
  LB t3, 38(sp)
  ADD t4, t3, zero
  SB t4, 42(sp)
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  SLTU s0, zero, s0
  XORI s0, s0, 1
  BNE s0, zero, bb24
  # implict jump to bb21
bb21:
  # implict jump to bb22
bb22:
  LW t4, 132(sp)
  BNE t4, zero, bb23
  JAL zero, bb14
bb23:
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LB t3, 42(sp)
  ADD t4, t3, zero
  SB t4, 44(sp)
  LB t3, 43(sp)
  ADD t4, t3, zero
  SB t4, 1(sp)
  LB t3, 7(sp)
  ADD t4, t3, zero
  SB t4, 10(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LB t3, 23(sp)
  ADD t4, t3, zero
  SB t4, 22(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  LB t3, 19(sp)
  ADD t4, t3, zero
  SB t4, 18(sp)
  LB t3, 17(sp)
  ADD t4, t3, zero
  SB t4, 16(sp)
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  JAL zero, bb17
bb24:
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb21
bb25:
  # implict jump to bb26
bb26:
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  LB t3, 0(sp)
  ADD t4, t3, zero
  SB t4, 25(sp)
  LB t3, 13(sp)
  ADD t4, t3, zero
  SB t4, 26(sp)
  LB t3, 12(sp)
  ADD t4, t3, zero
  SB t4, 24(sp)
  LB t3, 11(sp)
  ADD t4, t3, zero
  SB t4, 21(sp)
  LB t3, 9(sp)
  ADD t4, t3, zero
  SB t4, 20(sp)
  LB t3, 8(sp)
  ADD t4, t3, zero
  SB t4, 15(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  ADD t4, zero, zero
  SW t4, 68(sp)
  ADD t4, zero, zero
  SW t4, 72(sp)
  # implict jump to bb27
bb27:
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t4, 64(sp)
  ADD s2, t4, zero
  LB t4, 15(sp)
  ADD s1, t4, zero
  LB t3, 20(sp)
  ADD t4, t3, zero
  SB t4, 37(sp)
  LB t3, 21(sp)
  ADD t4, t3, zero
  SB t4, 35(sp)
  LB t4, 24(sp)
  ADD s10, t4, zero
  LB t3, 26(sp)
  ADD t4, t3, zero
  SB t4, 41(sp)
  LB t4, 25(sp)
  ADD s9, t4, zero
  LW t4, 156(sp)
  ADD s7, t4, zero
  CALL getint
  ADD t4, a0, zero
  SW t4, 84(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 48(sp)
  LW t4, 52(sp)
  SLTU s0, zero, t4
  XORI s0, s0, 1
  BNE s0, zero, bb33
  # implict jump to bb28
bb28:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  ADD t4, s2, zero
  SW t4, 108(sp)
  ADD t4, s1, zero
  SB t4, 28(sp)
  LB t3, 37(sp)
  ADD t4, t3, zero
  SB t4, 30(sp)
  LB t3, 35(sp)
  ADD t4, t3, zero
  SB t4, 31(sp)
  ADD t4, s10, zero
  SB t4, 32(sp)
  LB t3, 41(sp)
  ADD t4, t3, zero
  SB t4, 33(sp)
  ADD s6, s7, zero
  # implict jump to bb29
bb29:
  ADD t4, s6, zero
  SW t4, 100(sp)
  ADD t4, s9, zero
  SB t4, 6(sp)
  LB t3, 33(sp)
  ADD t4, t3, zero
  SB t4, 5(sp)
  LB t3, 32(sp)
  ADD t4, t3, zero
  SB t4, 4(sp)
  LB t3, 31(sp)
  ADD t4, t3, zero
  SB t4, 3(sp)
  LB t3, 30(sp)
  ADD t4, t3, zero
  SB t4, 14(sp)
  LB t3, 28(sp)
  ADD t4, t3, zero
  SB t4, 2(sp)
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 188(sp)
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LW t3, 56(sp)
  ADDIW t4, t3, 1
  SW t4, 148(sp)
  # implict jump to bb30
bb30:
  LW t4, 148(sp)
  SLTI s0, t4, 10
  BNE s0, zero, bb32
  # implict jump to bb31
bb31:
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LB t3, 6(sp)
  ADD t4, t3, zero
  SB t4, 38(sp)
  LB t3, 5(sp)
  ADD t4, t3, zero
  SB t4, 29(sp)
  LB t3, 4(sp)
  ADD t4, t3, zero
  SB t4, 34(sp)
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LB t3, 3(sp)
  ADD t4, t3, zero
  SB t4, 27(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LB t3, 14(sp)
  ADD t4, t3, zero
  SB t4, 39(sp)
  LB t3, 2(sp)
  ADD t4, t3, zero
  SB t4, 36(sp)
  LW t3, 188(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  JAL zero, bb20
bb32:
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  LB t3, 6(sp)
  ADD t4, t3, zero
  SB t4, 25(sp)
  LB t3, 5(sp)
  ADD t4, t3, zero
  SB t4, 26(sp)
  LB t3, 4(sp)
  ADD t4, t3, zero
  SB t4, 24(sp)
  LB t3, 3(sp)
  ADD t4, t3, zero
  SB t4, 21(sp)
  LB t3, 14(sp)
  ADD t4, t3, zero
  SB t4, 20(sp)
  LB t3, 2(sp)
  ADD t4, t3, zero
  SB t4, 15(sp)
  LW t3, 188(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  JAL zero, bb27
bb33:
  LA s4, n
  LW s4, 0(s4)
  ADDI s5, zero, 1
  LW t4, 84(sp)
  SUBW s5, t4, s5
  MULW s4, s4, s5
  LW t4, 48(sp)
  ADDW s4, s4, t4
  SLLIW s5, s4, 2
  LA s0, array
  ADD s0, s0, s5
  SW s4, 0(s0)
  LW t4, 84(sp)
  XORI s0, t4, 1
  SLTIU s0, s0, 1
  BNE s0, zero, bb71
  # implict jump to bb34
bb34:
  LA s0, n
  LW s0, 0(s0)
  LW t4, 84(sp)
  XOR s0, t4, s0
  SLTIU s0, s0, 1
  BNE s0, zero, bb69
  # implict jump to bb35
bb35:
  LA s0, n
  LW s0, 0(s0)
  LW t4, 48(sp)
  BLT t4, s0, bb68
  # implict jump to bb36
bb36:
  ADD s0, zero, zero
  # implict jump to bb37
bb37:
  BNE s0, zero, bb66
  # implict jump to bb38
bb38:
  ADDI s1, zero, 1
  LW t4, 48(sp)
  BLT s1, t4, bb65
  # implict jump to bb39
bb39:
  ADD s1, zero, zero
  # implict jump to bb40
bb40:
  BNE s1, zero, bb63
  # implict jump to bb41
bb41:
  LA s2, n
  LW s2, 0(s2)
  LW t4, 84(sp)
  BLT t4, s2, bb62
  # implict jump to bb42
bb42:
  ADD s3, zero, zero
  # implict jump to bb43
bb43:
  BNE s3, zero, bb60
  # implict jump to bb44
bb44:
  ADDI s2, zero, 1
  LW t4, 84(sp)
  BLT s2, t4, bb59
  # implict jump to bb45
bb45:
  ADD s2, zero, zero
  # implict jump to bb46
bb46:
  BNE s2, zero, bb57
  # implict jump to bb47
bb47:
  LA s5, array
  LW s5, 0(s5)
  XORI s5, s5, -1
  BNE s5, zero, bb56
  # implict jump to bb48
bb48:
  ADD s5, zero, zero
  # implict jump to bb49
bb49:
  BNE s5, zero, bb55
  # implict jump to bb50
bb50:
  ADD s10, zero, zero
  # implict jump to bb51
bb51:
  BNE s10, zero, bb54
  # implict jump to bb52
bb52:
  LW t4, 52(sp)
  ADD s8, t4, zero
  # implict jump to bb53
bb53:
  ADD t4, s8, zero
  SW t4, 112(sp)
  ADD t4, s4, zero
  SW t4, 108(sp)
  ADD t4, s0, zero
  SB t4, 28(sp)
  ADD t4, s2, zero
  SB t4, 30(sp)
  ADD t4, s3, zero
  SB t4, 31(sp)
  ADD t4, s5, zero
  SB t4, 32(sp)
  ADD t4, s1, zero
  SB t4, 33(sp)
  ADD s9, s10, zero
  ADD s6, s7, zero
  JAL zero, bb29
bb54:
  LW t4, 56(sp)
  ADDIW s11, t4, 1
  ADD a0, s11, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s8, zero, 1
  ADD s7, s11, zero
  JAL zero, bb53
bb55:
  ADD a0, zero, zero
  CALL findfa
  ADD s11, a0, zero
  LW t4, 140(sp)
  ADD a0, t4, zero
  CALL findfa
  ADD s8, a0, zero
  XOR s8, s11, s8
  SLTIU s8, s8, 1
  ADD s10, s8, zero
  JAL zero, bb51
bb56:
  LW t4, 140(sp)
  SLLIW s10, t4, 2
  LA s11, array
  ADD s10, s11, s10
  LW s10, 0(s10)
  XORI s10, s10, -1
  SLTU s10, zero, s10
  ADD s5, s10, zero
  JAL zero, bb49
bb57:
  LA s5, n
  LW s5, 0(s5)
  SUBW s5, s4, s5
  ADD a0, s4, zero
  CALL findfa
  ADD s11, a0, zero
  ADD a0, s5, zero
  CALL findfa
  ADD s5, a0, zero
  BNE s11, s5, bb58
  JAL zero, bb47
bb58:
  SLLIW s11, s11, 2
  LA s10, array
  ADD s10, s10, s11
  SW s5, 0(s10)
  JAL zero, bb47
bb59:
  LA s5, n
  LW s5, 0(s5)
  SUBW s5, s4, s5
  SLLIW s5, s5, 2
  LA s11, array
  ADD s5, s11, s5
  LW s5, 0(s5)
  XORI s5, s5, -1
  SLTU s5, zero, s5
  ADD s2, s5, zero
  JAL zero, bb46
bb60:
  LA s2, n
  LW s2, 0(s2)
  ADDW s2, s4, s2
  ADD a0, s4, zero
  CALL findfa
  ADD s5, a0, zero
  ADD a0, s2, zero
  CALL findfa
  ADD s2, a0, zero
  BNE s5, s2, bb61
  JAL zero, bb44
bb61:
  SLLIW s5, s5, 2
  LA s11, array
  ADD s5, s11, s5
  SW s2, 0(s5)
  JAL zero, bb44
bb62:
  ADDW s2, s4, s2
  SLLIW s2, s2, 2
  LA s5, array
  ADD s2, s5, s2
  LW s2, 0(s2)
  XORI s2, s2, -1
  SLTU s2, zero, s2
  ADD s3, s2, zero
  JAL zero, bb43
bb63:
  ADDI s2, zero, 1
  SUBW s2, s4, s2
  ADD a0, s4, zero
  CALL findfa
  ADD s5, a0, zero
  ADD a0, s2, zero
  CALL findfa
  ADD s2, a0, zero
  BNE s5, s2, bb64
  JAL zero, bb41
bb64:
  SLLIW s5, s5, 2
  LA s3, array
  ADD s3, s3, s5
  SW s2, 0(s3)
  JAL zero, bb41
bb65:
  ADDI s2, zero, 1
  SUBW s2, s4, s2
  SLLIW s2, s2, 2
  LA s5, array
  ADD s2, s5, s2
  LW s2, 0(s2)
  XORI s2, s2, -1
  SLTU s2, zero, s2
  ADD s1, s2, zero
  JAL zero, bb40
bb66:
  ADDIW s2, s4, 1
  ADD a0, s4, zero
  CALL findfa
  ADD s5, a0, zero
  ADD a0, s2, zero
  CALL findfa
  ADD s2, a0, zero
  BNE s5, s2, bb67
  JAL zero, bb38
bb67:
  SLLIW s5, s5, 2
  LA s1, array
  ADD s1, s1, s5
  SW s2, 0(s1)
  JAL zero, bb38
bb68:
  ADDIW s2, s4, 1
  SLLIW s2, s2, 2
  LA s5, array
  ADD s2, s5, s2
  LW s2, 0(s2)
  XORI s2, s2, -1
  SLTU s2, zero, s2
  ADD s0, s2, zero
  JAL zero, bb37
bb69:
  LW t4, 140(sp)
  SLLIW s0, t4, 2
  LA s2, array
  ADD s0, s2, s0
  LW t4, 140(sp)
  SW t4, 0(s0)
  ADD a0, s4, zero
  CALL findfa
  ADD s0, a0, zero
  LW t4, 140(sp)
  ADD a0, t4, zero
  CALL findfa
  ADD s2, a0, zero
  BNE s0, s2, bb70
  JAL zero, bb35
bb70:
  SLLIW s0, s0, 2
  LA s5, array
  ADD s0, s5, s0
  SW s2, 0(s0)
  JAL zero, bb35
bb71:
  LA s0, array
  SW zero, 0(s0)
  ADD a0, s4, zero
  CALL findfa
  ADD s0, a0, zero
  ADD a0, zero, zero
  CALL findfa
  ADD s5, a0, zero
  BNE s0, s5, bb72
  JAL zero, bb34
bb72:
  SLLIW s0, s0, 2
  LA s2, array
  ADD s0, s2, s0
  SW s5, 0(s0)
  JAL zero, bb34
bb73:
  ADDI s3, zero, 1
  # implict jump to bb74
bb74:
  ADD t4, s3, zero
  SW t4, 168(sp)
  # implict jump to bb75
bb75:
  LW t4, 168(sp)
  ADD s11, t4, zero
  SLLIW s3, s11, 2
  LA t0, array
  ADD s3, t0, s3
  ADDI t0, zero, -1
  SW t0, 0(s3)
  ADDIW t4, s11, 1
  SW t4, 136(sp)
  # implict jump to bb76
bb76:
  ADDI s3, zero, 17
  LW t4, 136(sp)
  SLT s3, s3, t4
  XORI s3, s3, 1
  BNE s3, zero, bb77
  JAL zero, bb18
bb77:
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  JAL zero, bb75
