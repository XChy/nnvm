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
  SD s2, 24(sp)
  ADD s0, a0, zero
  SLLIW s1, s0, 2
  LA s2, array
  ADD s1, s2, s1
  LW s2, 0(s1)
  XOR s2, s2, s0
  SLTIU s2, s2, 1
  BNE s2, zero, bb2
  # implict jump to bb1
bb1:
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
bb2:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -208
  SD ra, 104(sp)
  SD s0, 112(sp)
  SD s1, 120(sp)
  SD s2, 128(sp)
  SD s5, 136(sp)
  SD s6, 144(sp)
  SD s3, 152(sp)
  SD s4, 160(sp)
  SD s7, 168(sp)
  SD s8, 176(sp)
  SD s9, 184(sp)
  SD s10, 192(sp)
  SD s11, 200(sp)
  ADDI s8, zero, 17
  SLTI s8, s8, 1
  XORI t4, s8, 1
  SB t4, 11(sp)
  ADDI t4, zero, 1
  SW t4, 92(sp)
  ADD t4, zero, zero
  SW t4, 88(sp)
  ADD t4, zero, zero
  SB t4, 31(sp)
  ADD t4, zero, zero
  SB t4, 19(sp)
  ADD t4, zero, zero
  SB t4, 30(sp)
  ADD t4, zero, zero
  SW t4, 36(sp)
  ADD t4, zero, zero
  SB t4, 32(sp)
  ADD t4, zero, zero
  SB t4, 1(sp)
  ADD t4, zero, zero
  SB t4, 25(sp)
  # implict jump to bb4
bb4:
  LB t3, 25(sp)
  ADD t4, t3, zero
  SB t4, 3(sp)
  LB t3, 1(sp)
  ADD t4, t3, zero
  SB t4, 4(sp)
  LB t3, 32(sp)
  ADD t4, t3, zero
  SB t4, 6(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LB t3, 30(sp)
  ADD t4, t3, zero
  SB t4, 8(sp)
  LB t3, 19(sp)
  ADD t4, t3, zero
  SB t4, 0(sp)
  LB t3, 31(sp)
  ADD t4, t3, zero
  SB t4, 10(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t4, 92(sp)
  ADD a2, t4, zero
  ADDI a3, zero, 1
  SUBW t4, a2, a3
  SW t4, 76(sp)
  LA a3, n
  ADDI a2, zero, 4
  SW a2, 0(a3)
  LB t4, 11(sp)
  BNE t4, zero, bb56
  # implict jump to bb5
bb5:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LB t3, 10(sp)
  ADD t4, t3, zero
  SB t4, 2(sp)
  LB t3, 0(sp)
  ADD t4, t3, zero
  SB t4, 20(sp)
  LB t3, 8(sp)
  ADD t4, t3, zero
  SB t4, 7(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  LB t3, 6(sp)
  ADD t4, t3, zero
  SB t4, 16(sp)
  LB t3, 4(sp)
  ADD t4, t3, zero
  SB t4, 14(sp)
  ADD t4, zero, zero
  SW t4, 60(sp)
  LB t3, 3(sp)
  ADD t4, t3, zero
  SB t4, 13(sp)
  # implict jump to bb6
bb6:
  LB t4, 13(sp)
  ADD s7, t4, zero
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LB t4, 14(sp)
  ADD s0, t4, zero
  LB t3, 16(sp)
  ADD t4, t3, zero
  SB t4, 29(sp)
  LW t4, 48(sp)
  ADD s5, t4, zero
  LW t4, 44(sp)
  ADD s8, t4, zero
  LB t3, 7(sp)
  ADD t4, t3, zero
  SB t4, 21(sp)
  LB t4, 20(sp)
  ADD s6, t4, zero
  LB t3, 2(sp)
  ADD t4, t3, zero
  SB t4, 9(sp)
  LW t4, 56(sp)
  ADD s2, t4, zero
  CALL getint
  ADD s1, a0, zero
  CALL getint
  ADD s3, a0, zero
  SLTU s4, zero, s5
  XORI s4, s4, 1
  BNE s4, zero, bb16
  # implict jump to bb7
bb7:
  ADD t4, s7, zero
  SB t4, 28(sp)
  ADD t4, s0, zero
  SB t4, 27(sp)
  LB t3, 29(sp)
  ADD t4, t3, zero
  SB t4, 26(sp)
  ADD t4, s5, zero
  SW t4, 96(sp)
  ADD t4, s8, zero
  SW t4, 100(sp)
  LB t3, 21(sp)
  ADD t4, t3, zero
  SB t4, 24(sp)
  ADD t4, s6, zero
  SB t4, 23(sp)
  LB t3, 9(sp)
  ADD t4, t3, zero
  SB t4, 22(sp)
  ADD s4, s2, zero
  # implict jump to bb8
bb8:
  ADD t4, s4, zero
  SW t4, 84(sp)
  LB t3, 22(sp)
  ADD t4, t3, zero
  SB t4, 18(sp)
  LB t3, 23(sp)
  ADD t4, t3, zero
  SB t4, 33(sp)
  LB t3, 24(sp)
  ADD t4, t3, zero
  SB t4, 5(sp)
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t4, 96(sp)
  ADD s0, t4, zero
  LB t3, 26(sp)
  ADD t4, t3, zero
  SB t4, 17(sp)
  LB t3, 27(sp)
  ADD t4, t3, zero
  SB t4, 15(sp)
  LB t3, 28(sp)
  ADD t4, t3, zero
  SB t4, 12(sp)
  LW t4, 52(sp)
  ADDIW s1, t4, 1
  SLTI s2, s1, 10
  BNE s2, zero, bb15
  # implict jump to bb9
bb9:
  # implict jump to bb10
bb10:
  SLTU s2, zero, s0
  XORI s2, s2, 1
  BNE s2, zero, bb14
  # implict jump to bb11
bb11:
  LW t4, 76(sp)
  BNE t4, zero, bb13
  # implict jump to bb12
bb12:
  ADD a0, zero, zero
  LD ra, 104(sp)
  LD s0, 112(sp)
  LD s1, 120(sp)
  LD s2, 128(sp)
  LD s5, 136(sp)
  LD s6, 144(sp)
  LD s3, 152(sp)
  LD s4, 160(sp)
  LD s7, 168(sp)
  LD s8, 176(sp)
  LD s9, 184(sp)
  LD s10, 192(sp)
  LD s11, 200(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
bb13:
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LB t3, 18(sp)
  ADD t4, t3, zero
  SB t4, 31(sp)
  LB t3, 33(sp)
  ADD t4, t3, zero
  SB t4, 19(sp)
  LB t3, 5(sp)
  ADD t4, t3, zero
  SB t4, 30(sp)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LB t3, 17(sp)
  ADD t4, t3, zero
  SB t4, 32(sp)
  LB t3, 15(sp)
  ADD t4, t3, zero
  SB t4, 1(sp)
  LB t3, 12(sp)
  ADD t4, t3, zero
  SB t4, 25(sp)
  JAL zero, bb4
bb14:
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb11
bb15:
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LB t3, 18(sp)
  ADD t4, t3, zero
  SB t4, 2(sp)
  LB t3, 33(sp)
  ADD t4, t3, zero
  SB t4, 20(sp)
  LB t3, 5(sp)
  ADD t4, t3, zero
  SB t4, 7(sp)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  ADD t4, s0, zero
  SW t4, 48(sp)
  LB t3, 17(sp)
  ADD t4, t3, zero
  SB t4, 16(sp)
  LB t3, 15(sp)
  ADD t4, t3, zero
  SB t4, 14(sp)
  ADD t4, s1, zero
  SW t4, 60(sp)
  LB t3, 12(sp)
  ADD t4, t3, zero
  SB t4, 13(sp)
  JAL zero, bb6
bb16:
  LA s0, n
  LW s0, 0(s0)
  ADDI s7, zero, 1
  SUBW s7, s1, s7
  MULW s0, s0, s7
  ADDW s0, s0, s3
  SLLIW s7, s0, 2
  LA s11, array
  ADD s7, s11, s7
  SW s0, 0(s7)
  XORI s7, s1, 1
  SLTIU s7, s7, 1
  BNE s7, zero, bb54
  # implict jump to bb17
bb17:
  LA s7, n
  LW s7, 0(s7)
  XOR s7, s1, s7
  SLTIU s7, s7, 1
  BNE s7, zero, bb52
  # implict jump to bb18
bb18:
  LA s7, n
  LW s7, 0(s7)
  BLT s3, s7, bb51
  # implict jump to bb19
bb19:
  ADD s7, zero, zero
  # implict jump to bb20
bb20:
  BNE s7, zero, bb49
  # implict jump to bb21
bb21:
  ADDI s8, zero, 1
  BLT s8, s3, bb48
  # implict jump to bb22
bb22:
  ADD s3, zero, zero
  # implict jump to bb23
bb23:
  BNE s3, zero, bb46
  # implict jump to bb24
bb24:
  LA s8, n
  LW s8, 0(s8)
  BLT s1, s8, bb45
  # implict jump to bb25
bb25:
  ADD s10, zero, zero
  # implict jump to bb26
bb26:
  BNE s10, zero, bb43
  # implict jump to bb27
bb27:
  ADDI s6, zero, 1
  BLT s6, s1, bb42
  # implict jump to bb28
bb28:
  ADD s1, zero, zero
  # implict jump to bb29
bb29:
  BNE s1, zero, bb40
  # implict jump to bb30
bb30:
  LA s6, array
  LW s6, 0(s6)
  XORI s6, s6, -1
  BNE s6, zero, bb39
  # implict jump to bb31
bb31:
  ADD s6, zero, zero
  # implict jump to bb32
bb32:
  BNE s6, zero, bb38
  # implict jump to bb33
bb33:
  ADD s8, zero, zero
  # implict jump to bb34
bb34:
  BNE s8, zero, bb37
  # implict jump to bb35
bb35:
  # implict jump to bb36
bb36:
  ADD t4, s10, zero
  SB t4, 28(sp)
  ADD t4, s7, zero
  SB t4, 27(sp)
  ADD t4, s1, zero
  SB t4, 26(sp)
  ADD t4, s5, zero
  SW t4, 96(sp)
  ADD t4, s0, zero
  SW t4, 100(sp)
  ADD t4, s3, zero
  SB t4, 24(sp)
  ADD t4, s8, zero
  SB t4, 23(sp)
  ADD t4, s6, zero
  SB t4, 22(sp)
  ADD s4, s2, zero
  JAL zero, bb8
bb37:
  LW t4, 52(sp)
  ADDIW s9, t4, 1
  ADD a0, s9, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s5, zero, 1
  ADD s2, s9, zero
  JAL zero, bb36
bb38:
  ADD a0, zero, zero
  CALL findfa
  ADD s11, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  ADD s9, a0, zero
  XOR s9, s11, s9
  SLTIU s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb34
bb39:
  LA s8, array
  LW s8, 68(s8)
  XORI s8, s8, -1
  SLTU s8, zero, s8
  ADD s6, s8, zero
  JAL zero, bb32
bb40:
  LA s6, n
  LW s6, 0(s6)
  SUBW s6, s0, s6
  ADD a0, s0, zero
  CALL findfa
  ADD s8, a0, zero
  ADD a0, s6, zero
  CALL findfa
  ADD s6, a0, zero
  BNE s8, s6, bb41
  JAL zero, bb30
bb41:
  SLLIW s8, s8, 2
  LA s11, array
  ADD s8, s11, s8
  SW s6, 0(s8)
  JAL zero, bb30
bb42:
  LA s6, n
  LW s6, 0(s6)
  SUBW s6, s0, s6
  SLLIW s6, s6, 2
  LA s8, array
  ADD s6, s8, s6
  LW s6, 0(s6)
  XORI s6, s6, -1
  SLTU s6, zero, s6
  ADD s1, s6, zero
  JAL zero, bb29
bb43:
  LA s8, n
  LW s8, 0(s8)
  ADDW s8, s0, s8
  ADD a0, s0, zero
  CALL findfa
  ADD s11, a0, zero
  ADD a0, s8, zero
  CALL findfa
  ADD s8, a0, zero
  BNE s11, s8, bb44
  JAL zero, bb27
bb44:
  SLLIW s11, s11, 2
  LA s6, array
  ADD s6, s6, s11
  SW s8, 0(s6)
  JAL zero, bb27
bb45:
  ADDW s8, s0, s8
  SLLIW s8, s8, 2
  LA s11, array
  ADD s8, s11, s8
  LW s8, 0(s8)
  XORI s8, s8, -1
  SLTU s8, zero, s8
  ADD s10, s8, zero
  JAL zero, bb26
bb46:
  ADDI s8, zero, 1
  SUBW s8, s0, s8
  ADD a0, s0, zero
  CALL findfa
  ADD s10, a0, zero
  ADD a0, s8, zero
  CALL findfa
  ADD s8, a0, zero
  BNE s10, s8, bb47
  JAL zero, bb24
bb47:
  SLLIW s10, s10, 2
  LA s11, array
  ADD s10, s11, s10
  SW s8, 0(s10)
  JAL zero, bb24
bb48:
  ADDI s8, zero, 1
  SUBW s8, s0, s8
  SLLIW s8, s8, 2
  LA s10, array
  ADD s8, s10, s8
  LW s8, 0(s8)
  XORI s8, s8, -1
  SLTU s8, zero, s8
  ADD s3, s8, zero
  JAL zero, bb23
bb49:
  ADDIW s8, s0, 1
  ADD a0, s0, zero
  CALL findfa
  ADD s11, a0, zero
  ADD a0, s8, zero
  CALL findfa
  ADD s8, a0, zero
  BNE s11, s8, bb50
  JAL zero, bb21
bb50:
  SLLIW s11, s11, 2
  LA s10, array
  ADD s10, s10, s11
  SW s8, 0(s10)
  JAL zero, bb21
bb51:
  ADDIW s8, s0, 1
  SLLIW s8, s8, 2
  LA s11, array
  ADD s8, s11, s8
  LW s8, 0(s8)
  XORI s8, s8, -1
  SLTU s8, zero, s8
  ADD s7, s8, zero
  JAL zero, bb20
bb52:
  LA s7, array
  ADDI s8, zero, 17
  SW s8, 68(s7)
  ADD a0, s0, zero
  CALL findfa
  ADD s7, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  ADD s8, a0, zero
  BNE s7, s8, bb53
  JAL zero, bb18
bb53:
  SLLIW s7, s7, 2
  LA s11, array
  ADD s7, s11, s7
  SW s8, 0(s7)
  JAL zero, bb18
bb54:
  LA s7, array
  SW zero, 0(s7)
  ADD a0, s0, zero
  CALL findfa
  ADD s7, a0, zero
  ADD a0, zero, zero
  CALL findfa
  ADD s11, a0, zero
  BNE s7, s11, bb55
  JAL zero, bb17
bb55:
  SLLIW s7, s7, 2
  LA s8, array
  ADD s7, s8, s7
  SW s11, 0(s7)
  JAL zero, bb17
bb56:
  ADDI t4, zero, 1
  SW t4, 68(sp)
  # implict jump to bb57
bb57:
  LW t4, 68(sp)
  ADD a3, t4, zero
  SLLIW a4, a3, 2
  LA a5, array
  ADD a4, a5, a4
  ADDI a5, zero, -1
  SW a5, 0(a4)
  ADDIW t4, a3, 1
  SW t4, 64(sp)
  ADDI a4, zero, 17
  LW t4, 64(sp)
  SLT a4, a4, t4
  XORI a4, a4, 1
  BNE a4, zero, bb58
  JAL zero, bb5
bb58:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  JAL zero, bb57
