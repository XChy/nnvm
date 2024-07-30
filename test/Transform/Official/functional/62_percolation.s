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
  MULW s0, a0, a0
  ADDIW s0, s0, 1
  SLTI s1, s0, 1
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
  ADDIW s2, s2, 1
  SLT s3, s0, s2
  XORI s3, s3, 1
  BNE s3, zero, bb10
  JAL zero, bb7
bb10:
  ADD s1, s2, zero
  JAL zero, bb9
main:
  ADDI sp, sp, -208
  SD ra, 104(sp)
  SD s0, 112(sp)
  SD s1, 120(sp)
  SD s2, 128(sp)
  SD s3, 136(sp)
  SD s5, 144(sp)
  SD s4, 152(sp)
  SD s6, 160(sp)
  SD s7, 168(sp)
  SD s8, 176(sp)
  SD s9, 184(sp)
  SD s10, 192(sp)
  SD s11, 200(sp)
  ADDI s8, zero, 17
  SLTI s8, s8, 1
  XORI t4, s8, 1
  SB t4, 5(sp)
  ADDI t4, zero, 1
  SW t4, 72(sp)
  ADD t4, zero, zero
  SW t4, 76(sp)
  ADD t4, zero, zero
  SB t4, 32(sp)
  ADD t4, zero, zero
  SB t4, 20(sp)
  ADD t4, zero, zero
  SB t4, 17(sp)
  ADD t4, zero, zero
  SW t4, 52(sp)
  ADD t4, zero, zero
  SB t4, 16(sp)
  ADD t4, zero, zero
  SB t4, 19(sp)
  ADD t4, zero, zero
  SB t4, 15(sp)
  # implict jump to bb12
bb12:
  LB t3, 15(sp)
  ADD t4, t3, zero
  SB t4, 22(sp)
  LB t3, 19(sp)
  ADD t4, t3, zero
  SB t4, 1(sp)
  LB t3, 16(sp)
  ADD t4, t3, zero
  SB t4, 2(sp)
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LB t3, 17(sp)
  ADD t4, t3, zero
  SB t4, 3(sp)
  LB t3, 20(sp)
  ADD t4, t3, zero
  SB t4, 11(sp)
  LB t3, 32(sp)
  ADD t4, t3, zero
  SB t4, 4(sp)
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t4, 72(sp)
  ADD a2, t4, zero
  ADDI a3, zero, 1
  SUBW t4, a2, a3
  SW t4, 100(sp)
  LA a3, n
  ADDI a2, zero, 4
  SW a2, 0(a3)
  LB t4, 5(sp)
  BNE t4, zero, bb64
  # implict jump to bb13
bb13:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LB t3, 4(sp)
  ADD t4, t3, zero
  SB t4, 21(sp)
  LB t3, 11(sp)
  ADD t4, t3, zero
  SB t4, 18(sp)
  LB t3, 3(sp)
  ADD t4, t3, zero
  SB t4, 12(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  ADD t4, zero, zero
  SW t4, 68(sp)
  LB t3, 2(sp)
  ADD t4, t3, zero
  SB t4, 10(sp)
  LB t3, 1(sp)
  ADD t4, t3, zero
  SB t4, 8(sp)
  ADD t4, zero, zero
  SW t4, 80(sp)
  LB t3, 22(sp)
  ADD t4, t3, zero
  SB t4, 7(sp)
  # implict jump to bb14
bb14:
  LB t4, 7(sp)
  ADD s4, t4, zero
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LB t4, 8(sp)
  ADD s0, t4, zero
  LB t3, 10(sp)
  ADD t4, t3, zero
  SB t4, 25(sp)
  LW t4, 68(sp)
  ADD s1, t4, zero
  LW t4, 64(sp)
  ADD s8, t4, zero
  LB t3, 12(sp)
  ADD t4, t3, zero
  SB t4, 23(sp)
  LB t4, 18(sp)
  ADD s3, t4, zero
  LB t3, 21(sp)
  ADD t4, t3, zero
  SB t4, 14(sp)
  LW t4, 60(sp)
  ADD s2, t4, zero
  CALL getint
  ADD s5, a0, zero
  CALL getint
  ADD s6, a0, zero
  SLTU s7, zero, s1
  XORI s7, s7, 1
  BNE s7, zero, bb24
  # implict jump to bb15
bb15:
  ADD t4, s4, zero
  SB t4, 29(sp)
  ADD t4, s0, zero
  SB t4, 26(sp)
  LB t3, 25(sp)
  ADD t4, t3, zero
  SB t4, 33(sp)
  ADD t4, s1, zero
  SW t4, 44(sp)
  ADD t4, s8, zero
  SW t4, 48(sp)
  LB t3, 23(sp)
  ADD t4, t3, zero
  SB t4, 31(sp)
  ADD t4, s3, zero
  SB t4, 30(sp)
  LB t3, 14(sp)
  ADD t4, t3, zero
  SB t4, 24(sp)
  ADD s4, s2, zero
  # implict jump to bb16
bb16:
  ADD t4, s4, zero
  SW t4, 84(sp)
  LB t3, 24(sp)
  ADD t4, t3, zero
  SB t4, 28(sp)
  LB t3, 30(sp)
  ADD t4, t3, zero
  SB t4, 27(sp)
  LB t3, 31(sp)
  ADD t4, t3, zero
  SB t4, 13(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t4, 44(sp)
  ADD s0, t4, zero
  LB t3, 33(sp)
  ADD t4, t3, zero
  SB t4, 0(sp)
  LB t3, 26(sp)
  ADD t4, t3, zero
  SB t4, 9(sp)
  LB t3, 29(sp)
  ADD t4, t3, zero
  SB t4, 6(sp)
  LW t4, 56(sp)
  ADDIW s1, t4, 1
  SLTI s2, s1, 10
  BNE s2, zero, bb23
  # implict jump to bb17
bb17:
  # implict jump to bb18
bb18:
  SLTU s2, zero, s0
  XORI s2, s2, 1
  BNE s2, zero, bb22
  # implict jump to bb19
bb19:
  LW t4, 100(sp)
  BNE t4, zero, bb21
  # implict jump to bb20
bb20:
  ADD a0, zero, zero
  LD ra, 104(sp)
  LD s0, 112(sp)
  LD s1, 120(sp)
  LD s2, 128(sp)
  LD s3, 136(sp)
  LD s5, 144(sp)
  LD s4, 152(sp)
  LD s6, 160(sp)
  LD s7, 168(sp)
  LD s8, 176(sp)
  LD s9, 184(sp)
  LD s10, 192(sp)
  LD s11, 200(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
bb21:
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LB t3, 28(sp)
  ADD t4, t3, zero
  SB t4, 32(sp)
  LB t3, 27(sp)
  ADD t4, t3, zero
  SB t4, 20(sp)
  LB t3, 13(sp)
  ADD t4, t3, zero
  SB t4, 17(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LB t3, 0(sp)
  ADD t4, t3, zero
  SB t4, 16(sp)
  LB t3, 9(sp)
  ADD t4, t3, zero
  SB t4, 19(sp)
  LB t3, 6(sp)
  ADD t4, t3, zero
  SB t4, 15(sp)
  JAL zero, bb12
bb22:
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb19
bb23:
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LB t3, 28(sp)
  ADD t4, t3, zero
  SB t4, 21(sp)
  LB t3, 27(sp)
  ADD t4, t3, zero
  SB t4, 18(sp)
  LB t3, 13(sp)
  ADD t4, t3, zero
  SB t4, 12(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  ADD t4, s0, zero
  SW t4, 68(sp)
  LB t3, 0(sp)
  ADD t4, t3, zero
  SB t4, 10(sp)
  LB t3, 9(sp)
  ADD t4, t3, zero
  SB t4, 8(sp)
  ADD t4, s1, zero
  SW t4, 80(sp)
  LB t3, 6(sp)
  ADD t4, t3, zero
  SB t4, 7(sp)
  JAL zero, bb14
bb24:
  LA s0, n
  LW s0, 0(s0)
  ADDI s7, zero, 1
  SUBW s7, s5, s7
  MULW s0, s0, s7
  ADDW s0, s0, s6
  SLLIW s7, s0, 2
  LA s11, array
  ADD s7, s11, s7
  SW s0, 0(s7)
  XORI s7, s5, 1
  SLTIU s7, s7, 1
  BNE s7, zero, bb62
  # implict jump to bb25
bb25:
  LA s7, n
  LW s7, 0(s7)
  XOR s7, s5, s7
  SLTIU s7, s7, 1
  BNE s7, zero, bb60
  # implict jump to bb26
bb26:
  LA s7, n
  LW s7, 0(s7)
  BLT s6, s7, bb59
  # implict jump to bb27
bb27:
  ADD s7, zero, zero
  # implict jump to bb28
bb28:
  BNE s7, zero, bb57
  # implict jump to bb29
bb29:
  ADDI s8, zero, 1
  BLT s8, s6, bb56
  # implict jump to bb30
bb30:
  ADD s6, zero, zero
  # implict jump to bb31
bb31:
  BNE s6, zero, bb54
  # implict jump to bb32
bb32:
  LA s8, n
  LW s8, 0(s8)
  BLT s5, s8, bb53
  # implict jump to bb33
bb33:
  ADD s10, zero, zero
  # implict jump to bb34
bb34:
  BNE s10, zero, bb51
  # implict jump to bb35
bb35:
  ADDI s3, zero, 1
  BLT s3, s5, bb50
  # implict jump to bb36
bb36:
  ADD s3, zero, zero
  # implict jump to bb37
bb37:
  BNE s3, zero, bb48
  # implict jump to bb38
bb38:
  LA s5, array
  LW s5, 0(s5)
  XORI s5, s5, -1
  BNE s5, zero, bb47
  # implict jump to bb39
bb39:
  ADD s5, zero, zero
  # implict jump to bb40
bb40:
  BNE s5, zero, bb46
  # implict jump to bb41
bb41:
  ADD s8, zero, zero
  # implict jump to bb42
bb42:
  BNE s8, zero, bb45
  # implict jump to bb43
bb43:
  # implict jump to bb44
bb44:
  ADD t4, s10, zero
  SB t4, 29(sp)
  ADD t4, s7, zero
  SB t4, 26(sp)
  ADD t4, s3, zero
  SB t4, 33(sp)
  ADD t4, s1, zero
  SW t4, 44(sp)
  ADD t4, s0, zero
  SW t4, 48(sp)
  ADD t4, s6, zero
  SB t4, 31(sp)
  ADD t4, s8, zero
  SB t4, 30(sp)
  ADD t4, s5, zero
  SB t4, 24(sp)
  ADD s4, s2, zero
  JAL zero, bb16
bb45:
  LW t4, 56(sp)
  ADDIW s9, t4, 1
  ADD a0, s9, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s1, zero, 1
  ADD s2, s9, zero
  JAL zero, bb44
bb46:
  ADD a0, zero, zero
  CALL findfa
  ADD s11, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  ADD s9, a0, zero
  XOR s9, s11, s9
  SLTIU s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb42
bb47:
  LA s8, array
  LW s8, 68(s8)
  XORI s8, s8, -1
  SLTU s8, zero, s8
  ADD s5, s8, zero
  JAL zero, bb40
bb48:
  LA s5, n
  LW s5, 0(s5)
  SUBW s5, s0, s5
  ADD a0, s0, zero
  CALL findfa
  ADD s8, a0, zero
  ADD a0, s5, zero
  CALL findfa
  ADD s5, a0, zero
  BNE s8, s5, bb49
  JAL zero, bb38
bb49:
  SLLIW s8, s8, 2
  LA s11, array
  ADD s8, s11, s8
  SW s5, 0(s8)
  JAL zero, bb38
bb50:
  LA s5, n
  LW s5, 0(s5)
  SUBW s5, s0, s5
  SLLIW s5, s5, 2
  LA s8, array
  ADD s5, s8, s5
  LW s5, 0(s5)
  XORI s5, s5, -1
  SLTU s5, zero, s5
  ADD s3, s5, zero
  JAL zero, bb37
bb51:
  LA s8, n
  LW s8, 0(s8)
  ADDW s8, s0, s8
  ADD a0, s0, zero
  CALL findfa
  ADD s11, a0, zero
  ADD a0, s8, zero
  CALL findfa
  ADD s8, a0, zero
  BNE s11, s8, bb52
  JAL zero, bb35
bb52:
  SLLIW s11, s11, 2
  LA s3, array
  ADD s3, s3, s11
  SW s8, 0(s3)
  JAL zero, bb35
bb53:
  ADDW s8, s0, s8
  SLLIW s8, s8, 2
  LA s11, array
  ADD s8, s11, s8
  LW s8, 0(s8)
  XORI s8, s8, -1
  SLTU s8, zero, s8
  ADD s10, s8, zero
  JAL zero, bb34
bb54:
  ADDI s8, zero, 1
  SUBW s8, s0, s8
  ADD a0, s0, zero
  CALL findfa
  ADD s10, a0, zero
  ADD a0, s8, zero
  CALL findfa
  ADD s8, a0, zero
  BNE s10, s8, bb55
  JAL zero, bb32
bb55:
  SLLIW s10, s10, 2
  LA s11, array
  ADD s10, s11, s10
  SW s8, 0(s10)
  JAL zero, bb32
bb56:
  ADDI s8, zero, 1
  SUBW s8, s0, s8
  SLLIW s8, s8, 2
  LA s10, array
  ADD s8, s10, s8
  LW s8, 0(s8)
  XORI s8, s8, -1
  SLTU s8, zero, s8
  ADD s6, s8, zero
  JAL zero, bb31
bb57:
  ADDIW s8, s0, 1
  ADD a0, s0, zero
  CALL findfa
  ADD s11, a0, zero
  ADD a0, s8, zero
  CALL findfa
  ADD s8, a0, zero
  BNE s11, s8, bb58
  JAL zero, bb29
bb58:
  SLLIW s11, s11, 2
  LA s10, array
  ADD s10, s10, s11
  SW s8, 0(s10)
  JAL zero, bb29
bb59:
  ADDIW s8, s0, 1
  SLLIW s8, s8, 2
  LA s11, array
  ADD s8, s11, s8
  LW s8, 0(s8)
  XORI s8, s8, -1
  SLTU s8, zero, s8
  ADD s7, s8, zero
  JAL zero, bb28
bb60:
  LA s7, array
  ADDI s8, zero, 17
  SW s8, 68(s7)
  ADD a0, s0, zero
  CALL findfa
  ADD s7, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  ADD s8, a0, zero
  BNE s7, s8, bb61
  JAL zero, bb26
bb61:
  SLLIW s7, s7, 2
  LA s11, array
  ADD s7, s11, s7
  SW s8, 0(s7)
  JAL zero, bb26
bb62:
  LA s7, array
  SW zero, 0(s7)
  ADD a0, s0, zero
  CALL findfa
  ADD s7, a0, zero
  ADD a0, zero, zero
  CALL findfa
  ADD s11, a0, zero
  BNE s7, s11, bb63
  JAL zero, bb25
bb63:
  SLLIW s7, s7, 2
  LA s8, array
  ADD s7, s8, s7
  SW s11, 0(s7)
  JAL zero, bb25
bb64:
  ADDI t4, zero, 1
  SW t4, 92(sp)
  # implict jump to bb65
bb65:
  LW t4, 92(sp)
  ADD a3, t4, zero
  SLLIW a4, a3, 2
  LA a5, array
  ADD a4, a5, a4
  ADDI a5, zero, -1
  SW a5, 0(a4)
  ADDIW t4, a3, 1
  SW t4, 88(sp)
  ADDI a4, zero, 17
  LW t4, 88(sp)
  SLT a4, a4, t4
  XORI a4, a4, 1
  BNE a4, zero, bb66
  JAL zero, bb13
bb66:
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  JAL zero, bb65
