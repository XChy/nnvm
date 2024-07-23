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
  ADDI s1, zero, 1
  # implict jump to bb7
bb7:
  ADD s2, s1, zero
  SLT s3, s0, s2
  XORI s3, s3, 1
  BNE s3, zero, bb9
  # implict jump to bb8
bb8:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb9:
  SLLIW s3, s2, 2
  LA s4, array
  ADD s3, s4, s3
  ADDI s4, zero, -1
  SW s4, 0(s3)
  ADDIW s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb7
main:
  ADDI sp, sp, -256
  SD ra, 128(sp)
  SD s0, 136(sp)
  SD s1, 144(sp)
  SD s2, 152(sp)
  SD s3, 160(sp)
  SD s4, 168(sp)
  SD s5, 176(sp)
  SD s6, 184(sp)
  SD s7, 192(sp)
  SD s8, 200(sp)
  SD s9, 208(sp)
  SD s11, 216(sp)
  SD s10, 224(sp)
  ADDI s0, zero, 4
  ADDI s1, zero, 4
  MULW s0, s0, s1
  ADDIW t4, s0, 1
  SW t4, 80(sp)
  LW t4, 80(sp)
  SLLIW s1, t4, 2
  LA s2, array
  ADD t4, s2, s1
  SD t4, 232(sp)
  LW t4, 80(sp)
  SLLIW s2, t4, 2
  LA s3, array
  ADD t4, s3, s2
  SD t4, 240(sp)
  ADD s3, zero, zero
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADD s6, zero, zero
  ADD s7, zero, zero
  ADD s8, zero, zero
  ADD s9, zero, zero
  ADD s10, zero, zero
  ADD s11, zero, zero
  ADD t4, zero, zero
  SW t4, 68(sp)
  ADDI t4, zero, 1
  SW t4, 116(sp)
  # implict jump to bb11
bb11:
  LW t4, 116(sp)
  ADD t2, t4, zero
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  ADD t4, s11, zero
  SB t4, 1(sp)
  ADD t4, s10, zero
  SB t4, 4(sp)
  ADD t4, s9, zero
  SB t4, 7(sp)
  ADD t4, s8, zero
  SW t4, 108(sp)
  ADD t4, s7, zero
  SB t4, 13(sp)
  ADD t4, s6, zero
  SW t4, 44(sp)
  ADD t4, s5, zero
  SB t4, 15(sp)
  ADD t4, s4, zero
  SB t4, 16(sp)
  ADD t4, s3, zero
  SW t4, 100(sp)
  BNE t2, zero, bb13
  # implict jump to bb12
bb12:
  ADD a0, zero, zero
  LD ra, 128(sp)
  LD s0, 136(sp)
  LD s1, 144(sp)
  LD s2, 152(sp)
  LD s3, 160(sp)
  LD s4, 168(sp)
  LD s5, 176(sp)
  LD s6, 184(sp)
  LD s7, 192(sp)
  LD s8, 200(sp)
  LD s9, 208(sp)
  LD s11, 216(sp)
  LD s10, 224(sp)
  ADDI sp, sp, 256
  JALR zero, 0(ra)
bb13:
  ADDI a1, zero, 1
  SUBW t4, t2, a1
  SW t4, 104(sp)
  LA a1, n
  ADDI t2, zero, 4
  SW t2, 0(a1)
  ADDI t4, zero, 1
  SW t4, 120(sp)
  # implict jump to bb14
bb14:
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  ADDI a2, zero, 17
  LW t4, 32(sp)
  SLT a2, a2, t4
  XORI a2, a2, 1
  BNE a2, zero, bb63
  # implict jump to bb15
bb15:
  ADD t4, zero, zero
  SW t4, 52(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LB t3, 16(sp)
  ADD t4, t3, zero
  SB t4, 6(sp)
  LB t3, 15(sp)
  ADD t4, t3, zero
  SB t4, 5(sp)
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LB t3, 13(sp)
  ADD t4, t3, zero
  SB t4, 3(sp)
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LB t3, 7(sp)
  ADD t4, t3, zero
  SB t4, 2(sp)
  LB t3, 4(sp)
  ADD t4, t3, zero
  SB t4, 12(sp)
  LB t3, 1(sp)
  ADD t4, t3, zero
  SB t4, 14(sp)
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  # implict jump to bb16
bb16:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LB t3, 14(sp)
  ADD t4, t3, zero
  SB t4, 17(sp)
  LB t4, 12(sp)
  ADD s0, t4, zero
  LB t4, 2(sp)
  ADD s1, t4, zero
  LW t4, 36(sp)
  ADD s2, t4, zero
  LB t3, 3(sp)
  ADD t4, t3, zero
  SB t4, 18(sp)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LB t3, 5(sp)
  ADD t4, t3, zero
  SB t4, 20(sp)
  LB t3, 6(sp)
  ADD t4, t3, zero
  SB t4, 19(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t4, 56(sp)
  SLTI a3, t4, 10
  BNE a3, zero, bb20
  # implict jump to bb17
bb17:
  LW t4, 72(sp)
  SLTU a3, zero, t4
  XORI a3, a3, 1
  BNE a3, zero, bb19
  # implict jump to bb18
bb18:
  LW t4, 60(sp)
  ADD s3, t4, zero
  LB t4, 19(sp)
  ADD s4, t4, zero
  LB t4, 20(sp)
  ADD s5, t4, zero
  LW t4, 76(sp)
  ADD s6, t4, zero
  LB t4, 18(sp)
  ADD s7, t4, zero
  ADD s8, s2, zero
  ADD s9, s1, zero
  ADD s10, s0, zero
  LB t4, 17(sp)
  ADD s11, t4, zero
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  JAL zero, bb11
bb19:
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb18
bb20:
  CALL getint
  ADD t4, a0, zero
  SW t4, 96(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 92(sp)
  LW t4, 72(sp)
  SLTU s4, zero, t4
  XORI s4, s4, 1
  BNE s4, zero, bb23
  # implict jump to bb21
bb21:
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  LB t3, 19(sp)
  ADD t4, t3, zero
  SB t4, 8(sp)
  LB t3, 20(sp)
  ADD t4, t3, zero
  SB t4, 9(sp)
  LB t3, 18(sp)
  ADD t4, t3, zero
  SB t4, 10(sp)
  ADD t4, s1, zero
  SB t4, 11(sp)
  ADD t4, s0, zero
  SB t4, 0(sp)
  LB t4, 17(sp)
  ADD s9, t4, zero
  LW t4, 64(sp)
  ADD s10, t4, zero
  # implict jump to bb22
bb22:
  LB t4, 0(sp)
  ADD s0, t4, zero
  LB t4, 11(sp)
  ADD s1, t4, zero
  LB t4, 10(sp)
  ADD s2, t4, zero
  LB t4, 9(sp)
  ADD s3, t4, zero
  LB t4, 8(sp)
  ADD s4, t4, zero
  LW t4, 84(sp)
  ADD s5, t4, zero
  LW t4, 88(sp)
  ADD s6, t4, zero
  LW t4, 56(sp)
  ADDIW s7, t4, 1
  ADD t4, s6, zero
  SW t4, 52(sp)
  ADD t4, s7, zero
  SW t4, 48(sp)
  ADD t4, s5, zero
  SW t4, 24(sp)
  ADD t4, s4, zero
  SB t4, 6(sp)
  ADD t4, s3, zero
  SB t4, 5(sp)
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  ADD t4, s2, zero
  SB t4, 3(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  ADD t4, s1, zero
  SB t4, 2(sp)
  ADD t4, s0, zero
  SB t4, 12(sp)
  ADD t4, s9, zero
  SB t4, 14(sp)
  ADD t4, s10, zero
  SW t4, 28(sp)
  JAL zero, bb16
bb23:
  LA s11, n
  LW s11, 0(s11)
  ADDI s2, zero, 1
  LW t4, 96(sp)
  SUBW s2, t4, s2
  MULW s2, s11, s2
  LW t4, 92(sp)
  ADDW s2, s2, t4
  SLLIW s11, s2, 2
  LA s3, array
  ADD s3, s3, s11
  SW s2, 0(s3)
  LW t4, 96(sp)
  XORI s3, t4, 1
  SLTIU s3, s3, 1
  BNE s3, zero, bb61
  # implict jump to bb24
bb24:
  LA s3, n
  LW s3, 0(s3)
  LW t4, 96(sp)
  XOR s3, t4, s3
  SLTIU s3, s3, 1
  BNE s3, zero, bb59
  # implict jump to bb25
bb25:
  LA s3, n
  LW s3, 0(s3)
  LW t4, 92(sp)
  BLT t4, s3, bb58
  # implict jump to bb26
bb26:
  ADD s3, zero, zero
  # implict jump to bb27
bb27:
  BNE s3, zero, bb56
  # implict jump to bb28
bb28:
  ADDI s4, zero, 1
  LW t4, 92(sp)
  BLT s4, t4, bb55
  # implict jump to bb29
bb29:
  ADD s4, zero, zero
  # implict jump to bb30
bb30:
  BNE s4, zero, bb53
  # implict jump to bb31
bb31:
  LA s5, n
  LW s5, 0(s5)
  LW t4, 96(sp)
  BLT t4, s5, bb52
  # implict jump to bb32
bb32:
  ADD s6, zero, zero
  # implict jump to bb33
bb33:
  BNE s6, zero, bb50
  # implict jump to bb34
bb34:
  ADDI s5, zero, 1
  LW t4, 96(sp)
  BLT s5, t4, bb49
  # implict jump to bb35
bb35:
  ADD s5, zero, zero
  # implict jump to bb36
bb36:
  BNE s5, zero, bb47
  # implict jump to bb37
bb37:
  LA s7, array
  LW s7, 0(s7)
  XORI s7, s7, -1
  BNE s7, zero, bb46
  # implict jump to bb38
bb38:
  ADD s7, zero, zero
  # implict jump to bb39
bb39:
  BNE s7, zero, bb45
  # implict jump to bb40
bb40:
  ADD s8, zero, zero
  # implict jump to bb41
bb41:
  BNE s8, zero, bb44
  # implict jump to bb42
bb42:
  LW t4, 72(sp)
  ADD s1, t4, zero
  LW t4, 64(sp)
  ADD s11, t4, zero
  # implict jump to bb43
bb43:
  ADD t4, s1, zero
  SW t4, 88(sp)
  ADD t4, s2, zero
  SW t4, 84(sp)
  ADD t4, s3, zero
  SB t4, 8(sp)
  ADD t4, s5, zero
  SB t4, 9(sp)
  ADD t4, s6, zero
  SB t4, 10(sp)
  ADD t4, s7, zero
  SB t4, 11(sp)
  ADD t4, s4, zero
  SB t4, 0(sp)
  ADD s9, s8, zero
  ADD s10, s11, zero
  JAL zero, bb22
bb44:
  LW t4, 56(sp)
  ADDIW s0, t4, 1
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s1, zero, 1
  ADD s11, s0, zero
  JAL zero, bb43
bb45:
  ADD a0, zero, zero
  CALL findfa
  ADD s11, a0, zero
  LW t4, 80(sp)
  ADD a0, t4, zero
  CALL findfa
  ADD s1, a0, zero
  XOR s1, s11, s1
  SLTIU s1, s1, 1
  ADD s8, s1, zero
  JAL zero, bb41
bb46:
  LD t4, 240(sp)
  LW s8, 0(t4)
  XORI s8, s8, -1
  SLTU s8, zero, s8
  ADD s7, s8, zero
  JAL zero, bb39
bb47:
  LA s7, n
  LW s7, 0(s7)
  SUBW s7, s2, s7
  ADD a0, s2, zero
  CALL findfa
  ADD s11, a0, zero
  ADD a0, s7, zero
  CALL findfa
  ADD s7, a0, zero
  BNE s11, s7, bb48
  JAL zero, bb37
bb48:
  SLLIW s11, s11, 2
  LA s8, array
  ADD s8, s8, s11
  SW s7, 0(s8)
  JAL zero, bb37
bb49:
  LA s7, n
  LW s7, 0(s7)
  SUBW s7, s2, s7
  SLLIW s7, s7, 2
  LA s11, array
  ADD s7, s11, s7
  LW s7, 0(s7)
  XORI s7, s7, -1
  SLTU s7, zero, s7
  ADD s5, s7, zero
  JAL zero, bb36
bb50:
  LA s5, n
  LW s5, 0(s5)
  ADDW s5, s2, s5
  ADD a0, s2, zero
  CALL findfa
  ADD s11, a0, zero
  ADD a0, s5, zero
  CALL findfa
  ADD s5, a0, zero
  BNE s11, s5, bb51
  JAL zero, bb34
bb51:
  SLLIW s11, s11, 2
  LA s7, array
  ADD s7, s7, s11
  SW s5, 0(s7)
  JAL zero, bb34
bb52:
  ADDW s5, s2, s5
  SLLIW s5, s5, 2
  LA s11, array
  ADD s5, s11, s5
  LW s5, 0(s5)
  XORI s5, s5, -1
  SLTU s5, zero, s5
  ADD s6, s5, zero
  JAL zero, bb33
bb53:
  ADDI s5, zero, 1
  SUBW s5, s2, s5
  ADD a0, s2, zero
  CALL findfa
  ADD s11, a0, zero
  ADD a0, s5, zero
  CALL findfa
  ADD s5, a0, zero
  BNE s11, s5, bb54
  JAL zero, bb31
bb54:
  SLLIW s11, s11, 2
  LA s6, array
  ADD s6, s6, s11
  SW s5, 0(s6)
  JAL zero, bb31
bb55:
  ADDI s5, zero, 1
  SUBW s5, s2, s5
  SLLIW s5, s5, 2
  LA s11, array
  ADD s5, s11, s5
  LW s5, 0(s5)
  XORI s5, s5, -1
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb30
bb56:
  ADDIW s4, s2, 1
  ADD a0, s2, zero
  CALL findfa
  ADD s11, a0, zero
  ADD a0, s4, zero
  CALL findfa
  ADD s4, a0, zero
  BNE s11, s4, bb57
  JAL zero, bb28
bb57:
  SLLIW s11, s11, 2
  LA s5, array
  ADD s5, s5, s11
  SW s4, 0(s5)
  JAL zero, bb28
bb58:
  ADDIW s4, s2, 1
  SLLIW s4, s4, 2
  LA s11, array
  ADD s4, s11, s4
  LW s4, 0(s4)
  XORI s4, s4, -1
  SLTU s4, zero, s4
  ADD s3, s4, zero
  JAL zero, bb27
bb59:
  LW t4, 80(sp)
  LD t3, 232(sp)
  SW t4, 0(t3)
  ADD a0, s2, zero
  CALL findfa
  ADD s3, a0, zero
  LW t4, 80(sp)
  ADD a0, t4, zero
  CALL findfa
  ADD s4, a0, zero
  BNE s3, s4, bb60
  JAL zero, bb25
bb60:
  SLLIW s3, s3, 2
  LA s11, array
  ADD s3, s11, s3
  SW s4, 0(s3)
  JAL zero, bb25
bb61:
  LA s3, array
  SW zero, 0(s3)
  ADD a0, s2, zero
  CALL findfa
  ADD s3, a0, zero
  ADD a0, zero, zero
  CALL findfa
  ADD s11, a0, zero
  BNE s3, s11, bb62
  JAL zero, bb24
bb62:
  SLLIW s3, s3, 2
  LA s4, array
  ADD s3, s4, s3
  SW s11, 0(s3)
  JAL zero, bb24
bb63:
  LW t4, 32(sp)
  SLLIW s0, t4, 2
  LA s1, array
  ADD s0, s1, s0
  ADDI s1, zero, -1
  SW s1, 0(s0)
  LW t4, 32(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 120(sp)
  JAL zero, bb14
