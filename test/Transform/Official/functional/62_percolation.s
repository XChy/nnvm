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
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  LA s4, array
  ADD s3, s4, s3
  ADDI s4, zero, -1
  SW s4, 0(s3)
  ADDIW s0, s2, 1
  # implict jump to bb10
bb10:
  MULW s2, a0, a0
  ADDIW s2, s2, 1
  SLT s2, s2, s0
  XORI s2, s2, 1
  BNE s2, zero, bb11
  JAL zero, bb7
bb11:
  ADD s1, s0, zero
  JAL zero, bb9
main:
  ADDI sp, sp, -304
  SD ra, 192(sp)
  SD s0, 200(sp)
  SD s1, 208(sp)
  SD s2, 216(sp)
  SD s3, 224(sp)
  SD s4, 232(sp)
  SD s6, 240(sp)
  SD s11, 248(sp)
  SD s5, 256(sp)
  SD s10, 264(sp)
  SD s7, 272(sp)
  SD s8, 280(sp)
  SD s9, 288(sp)
  ADDI s0, zero, 0
  XORI s0, s0, 1
  BNE s0, zero, bb14
  # implict jump to bb13
bb13:
  ADD a0, zero, zero
  LD ra, 192(sp)
  LD s0, 200(sp)
  LD s1, 208(sp)
  LD s2, 216(sp)
  LD s3, 224(sp)
  LD s4, 232(sp)
  LD s6, 240(sp)
  LD s11, 248(sp)
  LD s5, 256(sp)
  LD s10, 264(sp)
  LD s7, 272(sp)
  LD s8, 280(sp)
  LD s9, 288(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
bb14:
  ADDI t4, zero, 1
  SW t4, 124(sp)
  ADD t4, zero, zero
  SW t4, 68(sp)
  ADD t4, zero, zero
  SB t4, 42(sp)
  ADD t4, zero, zero
  SB t4, 25(sp)
  ADD t4, zero, zero
  SB t4, 1(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  ADD t4, zero, zero
  SB t4, 22(sp)
  ADD t4, zero, zero
  SW t4, 152(sp)
  ADD t4, zero, zero
  SB t4, 18(sp)
  ADD t4, zero, zero
  SB t4, 16(sp)
  ADD t4, zero, zero
  SW t4, 164(sp)
  # implict jump to bb15
bb15:
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 180(sp)
  LB t3, 16(sp)
  ADD t4, t3, zero
  SB t4, 7(sp)
  LB t3, 18(sp)
  ADD t4, t3, zero
  SB t4, 8(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  LB t3, 22(sp)
  ADD t4, t3, zero
  SB t4, 9(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  LB t3, 1(sp)
  ADD t4, t3, zero
  SB t4, 10(sp)
  LB t3, 25(sp)
  ADD t4, t3, zero
  SB t4, 11(sp)
  LB t3, 42(sp)
  ADD t4, t3, zero
  SB t4, 12(sp)
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LW t4, 124(sp)
  ADD t1, t4, zero
  ADDI s11, zero, 1
  SUBW t4, t1, s11
  SW t4, 128(sp)
  LA s11, n
  ADDI t1, zero, 4
  SW t1, 0(s11)
  ADDI s11, zero, 17
  SLTI s11, s11, 1
  XORI s11, s11, 1
  BNE s11, zero, bb70
  # implict jump to bb16
bb16:
  ADDI s7, zero, 4
  ADDI s11, zero, 4
  MULW s7, s7, s11
  ADDIW t4, s7, 1
  SW t4, 136(sp)
  SLTI s7, zero, 10
  BNE s7, zero, bb23
  # implict jump to bb17
bb17:
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LB t3, 12(sp)
  ADD t4, t3, zero
  SB t4, 37(sp)
  LB t3, 11(sp)
  ADD t4, t3, zero
  SB t4, 34(sp)
  LB t3, 10(sp)
  ADD t4, t3, zero
  SB t4, 36(sp)
  LW t3, 172(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  LB t3, 9(sp)
  ADD t4, t3, zero
  SB t4, 33(sp)
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LB t3, 8(sp)
  ADD t4, t3, zero
  SB t4, 35(sp)
  LB t3, 7(sp)
  ADD t4, t3, zero
  SB t4, 27(sp)
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  ADD t4, zero, zero
  SW t4, 84(sp)
  # implict jump to bb18
bb18:
  LW t4, 84(sp)
  ADD s0, t4, zero
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  LB t3, 27(sp)
  ADD t4, t3, zero
  SB t4, 17(sp)
  LB t3, 35(sp)
  ADD t4, t3, zero
  SB t4, 19(sp)
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LB t3, 33(sp)
  ADD t4, t3, zero
  SB t4, 23(sp)
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LB t3, 36(sp)
  ADD t4, t3, zero
  SB t4, 38(sp)
  LB t3, 34(sp)
  ADD t4, t3, zero
  SB t4, 39(sp)
  LB t3, 37(sp)
  ADD t4, t3, zero
  SB t4, 41(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  SLTU s0, zero, s0
  XORI s0, s0, 1
  BNE s0, zero, bb22
  # implict jump to bb19
bb19:
  # implict jump to bb20
bb20:
  LW t4, 128(sp)
  BNE t4, zero, bb21
  JAL zero, bb13
bb21:
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LB t3, 41(sp)
  ADD t4, t3, zero
  SB t4, 42(sp)
  LB t3, 39(sp)
  ADD t4, t3, zero
  SB t4, 25(sp)
  LB t3, 38(sp)
  ADD t4, t3, zero
  SB t4, 1(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LB t3, 23(sp)
  ADD t4, t3, zero
  SB t4, 22(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LB t3, 19(sp)
  ADD t4, t3, zero
  SB t4, 18(sp)
  LB t3, 17(sp)
  ADD t4, t3, zero
  SB t4, 16(sp)
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 164(sp)
  JAL zero, bb15
bb22:
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb19
bb23:
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 148(sp)
  LB t3, 12(sp)
  ADD t4, t3, zero
  SB t4, 24(sp)
  LB t3, 11(sp)
  ADD t4, t3, zero
  SB t4, 21(sp)
  LB t3, 10(sp)
  ADD t4, t3, zero
  SB t4, 20(sp)
  LB t3, 9(sp)
  ADD t4, t3, zero
  SB t4, 15(sp)
  LB t3, 8(sp)
  ADD t4, t3, zero
  SB t4, 14(sp)
  LB t3, 7(sp)
  ADD t4, t3, zero
  SB t4, 0(sp)
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  ADD t4, zero, zero
  SW t4, 80(sp)
  ADD t4, zero, zero
  SW t4, 92(sp)
  # implict jump to bb24
bb24:
  LW t4, 92(sp)
  ADD s3, t4, zero
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t4, 76(sp)
  ADD s6, t4, zero
  LB t3, 0(sp)
  ADD t4, t3, zero
  SB t4, 26(sp)
  LB t4, 14(sp)
  ADD s4, t4, zero
  LB t3, 15(sp)
  ADD t4, t3, zero
  SB t4, 40(sp)
  LB t4, 20(sp)
  ADD s5, t4, zero
  LB t4, 21(sp)
  ADD s10, t4, zero
  LB t4, 24(sp)
  ADD s1, t4, zero
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 60(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 56(sp)
  SLTU s0, zero, s3
  XORI s0, s0, 1
  BNE s0, zero, bb30
  # implict jump to bb25
bb25:
  ADD t4, s3, zero
  SW t4, 104(sp)
  ADD t4, s6, zero
  SW t4, 100(sp)
  LB t3, 26(sp)
  ADD t4, t3, zero
  SB t4, 32(sp)
  ADD t4, s4, zero
  SB t4, 31(sp)
  LB t3, 40(sp)
  ADD t4, t3, zero
  SB t4, 30(sp)
  ADD t4, s5, zero
  SB t4, 29(sp)
  ADD t4, s10, zero
  SB t4, 28(sp)
  LW t4, 52(sp)
  ADD s8, t4, zero
  # implict jump to bb26
bb26:
  ADD t4, s8, zero
  SW t4, 64(sp)
  ADD t4, s1, zero
  SB t4, 6(sp)
  LB t3, 28(sp)
  ADD t4, t3, zero
  SB t4, 5(sp)
  LB t3, 29(sp)
  ADD t4, t3, zero
  SB t4, 4(sp)
  LB t3, 30(sp)
  ADD t4, t3, zero
  SB t4, 3(sp)
  LB t3, 31(sp)
  ADD t4, t3, zero
  SB t4, 13(sp)
  LB t3, 32(sp)
  ADD t4, t3, zero
  SB t4, 2(sp)
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  LW t3, 44(sp)
  ADDIW t4, t3, 1
  SW t4, 184(sp)
  # implict jump to bb27
bb27:
  LW t4, 184(sp)
  SLTI s0, t4, 10
  BNE s0, zero, bb29
  # implict jump to bb28
bb28:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LB t3, 6(sp)
  ADD t4, t3, zero
  SB t4, 37(sp)
  LB t3, 5(sp)
  ADD t4, t3, zero
  SB t4, 34(sp)
  LB t3, 4(sp)
  ADD t4, t3, zero
  SB t4, 36(sp)
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  LB t3, 3(sp)
  ADD t4, t3, zero
  SB t4, 33(sp)
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LB t3, 13(sp)
  ADD t4, t3, zero
  SB t4, 35(sp)
  LB t3, 2(sp)
  ADD t4, t3, zero
  SB t4, 27(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  JAL zero, bb18
bb29:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 148(sp)
  LB t3, 6(sp)
  ADD t4, t3, zero
  SB t4, 24(sp)
  LB t3, 5(sp)
  ADD t4, t3, zero
  SB t4, 21(sp)
  LB t3, 4(sp)
  ADD t4, t3, zero
  SB t4, 20(sp)
  LB t3, 3(sp)
  ADD t4, t3, zero
  SB t4, 15(sp)
  LB t3, 13(sp)
  ADD t4, t3, zero
  SB t4, 14(sp)
  LB t3, 2(sp)
  ADD t4, t3, zero
  SB t4, 0(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  JAL zero, bb24
bb30:
  LA s2, n
  LW s2, 0(s2)
  ADDI s9, zero, 1
  LW t4, 60(sp)
  SUBW s9, t4, s9
  MULW s2, s2, s9
  LW t4, 56(sp)
  ADDW s2, s2, t4
  SLLIW s9, s2, 2
  LA s0, array
  ADD s0, s0, s9
  SW s2, 0(s0)
  LW t4, 60(sp)
  XORI s0, t4, 1
  SLTIU s0, s0, 1
  BNE s0, zero, bb68
  # implict jump to bb31
bb31:
  LA s0, n
  LW s0, 0(s0)
  LW t4, 60(sp)
  XOR s0, t4, s0
  SLTIU s0, s0, 1
  BNE s0, zero, bb66
  # implict jump to bb32
bb32:
  LA s0, n
  LW s0, 0(s0)
  LW t4, 56(sp)
  BLT t4, s0, bb65
  # implict jump to bb33
bb33:
  ADD s0, zero, zero
  # implict jump to bb34
bb34:
  BNE s0, zero, bb63
  # implict jump to bb35
bb35:
  ADDI s6, zero, 1
  LW t4, 56(sp)
  BLT s6, t4, bb62
  # implict jump to bb36
bb36:
  ADD s6, zero, zero
  # implict jump to bb37
bb37:
  BNE s6, zero, bb60
  # implict jump to bb38
bb38:
  LA s4, n
  LW s4, 0(s4)
  LW t4, 60(sp)
  BLT t4, s4, bb59
  # implict jump to bb39
bb39:
  ADD s7, zero, zero
  # implict jump to bb40
bb40:
  BNE s7, zero, bb57
  # implict jump to bb41
bb41:
  ADDI s4, zero, 1
  LW t4, 60(sp)
  BLT s4, t4, bb56
  # implict jump to bb42
bb42:
  ADD s4, zero, zero
  # implict jump to bb43
bb43:
  BNE s4, zero, bb54
  # implict jump to bb44
bb44:
  LA s5, array
  LW s5, 0(s5)
  XORI s5, s5, -1
  BNE s5, zero, bb53
  # implict jump to bb45
bb45:
  ADD s5, zero, zero
  # implict jump to bb46
bb46:
  BNE s5, zero, bb52
  # implict jump to bb47
bb47:
  ADD s9, zero, zero
  # implict jump to bb48
bb48:
  BNE s9, zero, bb51
  # implict jump to bb49
bb49:
  LW t4, 52(sp)
  ADD s10, t4, zero
  # implict jump to bb50
bb50:
  ADD t4, s3, zero
  SW t4, 104(sp)
  ADD t4, s2, zero
  SW t4, 100(sp)
  ADD t4, s0, zero
  SB t4, 32(sp)
  ADD t4, s4, zero
  SB t4, 31(sp)
  ADD t4, s7, zero
  SB t4, 30(sp)
  ADD t4, s5, zero
  SB t4, 29(sp)
  ADD t4, s6, zero
  SB t4, 28(sp)
  ADD s1, s9, zero
  ADD s8, s10, zero
  JAL zero, bb26
bb51:
  LW t4, 44(sp)
  ADDIW s11, t4, 1
  ADD a0, s11, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s3, zero, 1
  ADD s10, s11, zero
  JAL zero, bb50
bb52:
  ADD a0, zero, zero
  CALL findfa
  ADD s11, a0, zero
  LW t4, 136(sp)
  ADD a0, t4, zero
  CALL findfa
  ADD s10, a0, zero
  XOR s10, s11, s10
  SLTIU s10, s10, 1
  ADD s9, s10, zero
  JAL zero, bb48
bb53:
  LW t4, 136(sp)
  SLLIW s9, t4, 2
  LA s11, array
  ADD s9, s11, s9
  LW s9, 0(s9)
  XORI s9, s9, -1
  SLTU s9, zero, s9
  ADD s5, s9, zero
  JAL zero, bb46
bb54:
  LA s9, n
  LW s9, 0(s9)
  SUBW s9, s2, s9
  ADD a0, s2, zero
  CALL findfa
  ADD s11, a0, zero
  ADD a0, s9, zero
  CALL findfa
  ADD s9, a0, zero
  BNE s11, s9, bb55
  JAL zero, bb44
bb55:
  SLLIW s11, s11, 2
  LA s5, array
  ADD s5, s5, s11
  SW s9, 0(s5)
  JAL zero, bb44
bb56:
  LA s9, n
  LW s9, 0(s9)
  SUBW s9, s2, s9
  SLLIW s9, s9, 2
  LA s11, array
  ADD s9, s11, s9
  LW s9, 0(s9)
  XORI s9, s9, -1
  SLTU s9, zero, s9
  ADD s4, s9, zero
  JAL zero, bb43
bb57:
  LA s4, n
  LW s4, 0(s4)
  ADDW s4, s2, s4
  ADD a0, s2, zero
  CALL findfa
  ADD s9, a0, zero
  ADD a0, s4, zero
  CALL findfa
  ADD s4, a0, zero
  BNE s9, s4, bb58
  JAL zero, bb41
bb58:
  SLLIW s9, s9, 2
  LA s11, array
  ADD s9, s11, s9
  SW s4, 0(s9)
  JAL zero, bb41
bb59:
  ADDW s4, s2, s4
  SLLIW s4, s4, 2
  LA s9, array
  ADD s4, s9, s4
  LW s4, 0(s4)
  XORI s4, s4, -1
  SLTU s4, zero, s4
  ADD s7, s4, zero
  JAL zero, bb40
bb60:
  ADDI s7, zero, 1
  SUBW s7, s2, s7
  ADD a0, s2, zero
  CALL findfa
  ADD s9, a0, zero
  ADD a0, s7, zero
  CALL findfa
  ADD s7, a0, zero
  BNE s9, s7, bb61
  JAL zero, bb38
bb61:
  SLLIW s9, s9, 2
  LA s4, array
  ADD s4, s4, s9
  SW s7, 0(s4)
  JAL zero, bb38
bb62:
  ADDI s7, zero, 1
  SUBW s7, s2, s7
  SLLIW s7, s7, 2
  LA s9, array
  ADD s7, s9, s7
  LW s7, 0(s7)
  XORI s7, s7, -1
  SLTU s7, zero, s7
  ADD s6, s7, zero
  JAL zero, bb37
bb63:
  ADDIW s6, s2, 1
  ADD a0, s2, zero
  CALL findfa
  ADD s9, a0, zero
  ADD a0, s6, zero
  CALL findfa
  ADD s6, a0, zero
  BNE s9, s6, bb64
  JAL zero, bb35
bb64:
  SLLIW s9, s9, 2
  LA s7, array
  ADD s7, s7, s9
  SW s6, 0(s7)
  JAL zero, bb35
bb65:
  ADDIW s6, s2, 1
  SLLIW s6, s6, 2
  LA s9, array
  ADD s6, s9, s6
  LW s6, 0(s6)
  XORI s6, s6, -1
  SLTU s6, zero, s6
  ADD s0, s6, zero
  JAL zero, bb34
bb66:
  LW t4, 136(sp)
  SLLIW s0, t4, 2
  LA s6, array
  ADD s0, s6, s0
  LW t4, 136(sp)
  SW t4, 0(s0)
  ADD a0, s2, zero
  CALL findfa
  ADD s0, a0, zero
  LW t4, 136(sp)
  ADD a0, t4, zero
  CALL findfa
  ADD s6, a0, zero
  BNE s0, s6, bb67
  JAL zero, bb32
bb67:
  SLLIW s0, s0, 2
  LA s9, array
  ADD s0, s9, s0
  SW s6, 0(s0)
  JAL zero, bb32
bb68:
  LA s0, array
  SW zero, 0(s0)
  ADD a0, s2, zero
  CALL findfa
  ADD s0, a0, zero
  ADD a0, zero, zero
  CALL findfa
  ADD s9, a0, zero
  BNE s0, s9, bb69
  JAL zero, bb31
bb69:
  SLLIW s0, s0, 2
  LA s6, array
  ADD s0, s6, s0
  SW s9, 0(s0)
  JAL zero, bb31
bb70:
  ADDI t4, zero, 1
  SW t4, 160(sp)
  # implict jump to bb71
bb71:
  LW t4, 160(sp)
  ADD t1, t4, zero
  SLLIW s11, t1, 2
  LA s7, array
  ADD s7, s7, s11
  ADDI s11, zero, -1
  SW s11, 0(s7)
  ADDIW t4, t1, 1
  SW t4, 132(sp)
  # implict jump to bb72
bb72:
  ADDI s7, zero, 17
  LW t4, 132(sp)
  SLT s7, s7, t4
  XORI s7, s7, 1
  BNE s7, zero, bb73
  JAL zero, bb16
bb73:
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  JAL zero, bb71
