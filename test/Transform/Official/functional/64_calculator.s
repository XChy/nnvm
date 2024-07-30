.global main
.section .bss
get2:
.space 40000
get:
.space 40000




chas:
.space 40000

ints:
.space 40000
.section .data


c:
.word 0x00000000
i:
.word 0x00000000
ii:
.word 0x00000001
chat:
.word 0x00000000

intt:
.word 0x00000000

.section .text
main:
  ADDI sp, sp, -256
  SD ra, 136(sp)
  SD s0, 144(sp)
  SD s1, 152(sp)
  SD s2, 160(sp)
  SD s3, 168(sp)
  SD s4, 176(sp)
  SD s5, 192(sp)
  SD s6, 200(sp)
  SD s10, 208(sp)
  SD s11, 216(sp)
  SD s7, 224(sp)
  SD s8, 232(sp)
  SD s9, 240(sp)
  LA a4, intt
  ADDI a5, zero, 0
  SW a5, 0(a4)
  LA a4, chat
  ADDI a5, zero, 0
  SW a5, 0(a4)
  CALL getch
  ADD s6, a0, zero
  ADD t4, zero, zero
  SW t4, 124(sp)
  ADD t4, s6, zero
  SW t4, 120(sp)
  # implict jump to bb1
bb1:
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t4, 116(sp)
  XORI s6, t4, 13
  BNE s6, zero, bb176
  # implict jump to bb2
bb2:
  ADD s6, zero, zero
  # implict jump to bb3
bb3:
  BNE s6, zero, bb175
  # implict jump to bb4
bb4:
  LA s6, i
  LW s6, 0(s6)
  LW t4, 128(sp)
  BLT s6, t4, bb59
  # implict jump to bb5
bb5:
  LA s9, chat
  LW s9, 0(s9)
  BLT zero, s9, bb58
  # implict jump to bb6
bb6:
  LA s9, ii
  LW s9, 0(s9)
  SLLIW s9, s9, 2
  LA s7, get2
  ADD s7, s7, s9
  ADDI s9, zero, 64
  SW s9, 0(s7)
  LA s7, i
  ADDI s9, zero, 1
  SW s9, 0(s7)
  LA s7, i
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  LA s9, get2
  ADD s7, s9, s7
  LW s7, 0(s7)
  XORI s7, s7, 64
  BNE s7, zero, bb8
  # implict jump to bb7
bb7:
  LA s4, ints
  LW s4, 4(s4)
  ADD a0, s4, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 136(sp)
  LD s0, 144(sp)
  LD s1, 152(sp)
  LD s2, 160(sp)
  LD s3, 168(sp)
  LD s4, 176(sp)
  LD s5, 192(sp)
  LD s6, 200(sp)
  LD s10, 208(sp)
  LD s11, 216(sp)
  LD s7, 224(sp)
  LD s8, 232(sp)
  LD s9, 240(sp)
  ADDI sp, sp, 256
  JALR zero, 0(ra)
bb8:
  ADD s7, zero, zero
  ADD s9, zero, zero
  ADD s10, zero, zero
  # implict jump to bb9
bb9:
  ADD s11, s10, zero
  ADD s1, s9, zero
  ADD s4, s7, zero
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s6, get2
  ADD s5, s6, s5
  LW s5, 0(s5)
  XORI s5, s5, 43
  SLTIU s5, s5, 1
  BNE s5, zero, bb57
  # implict jump to bb10
bb10:
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s6, get2
  ADD s5, s6, s5
  LW s5, 0(s5)
  XORI s5, s5, 45
  SLTIU s5, s5, 1
  # implict jump to bb11
bb11:
  BNE s5, zero, bb56
  # implict jump to bb12
bb12:
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s6, get2
  ADD s5, s6, s5
  LW s5, 0(s5)
  XORI s5, s5, 42
  SLTIU s5, s5, 1
  # implict jump to bb13
bb13:
  BNE s5, zero, bb55
  # implict jump to bb14
bb14:
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s6, get2
  ADD s5, s6, s5
  LW s5, 0(s5)
  XORI s5, s5, 47
  SLTIU s5, s5, 1
  # implict jump to bb15
bb15:
  BNE s5, zero, bb54
  # implict jump to bb16
bb16:
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s6, get2
  ADD s5, s6, s5
  LW s5, 0(s5)
  XORI s5, s5, 37
  SLTIU s5, s5, 1
  # implict jump to bb17
bb17:
  BNE s5, zero, bb53
  # implict jump to bb18
bb18:
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s6, get2
  ADD s5, s6, s5
  LW s5, 0(s5)
  XORI s5, s5, 94
  SLTIU s5, s5, 1
  # implict jump to bb19
bb19:
  BNE s5, zero, bb28
  # implict jump to bb20
bb20:
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s6, get2
  ADD s5, s6, s5
  LW s5, 0(s5)
  XORI s5, s5, 32
  BNE s5, zero, bb24
  # implict jump to bb21
bb21:
  ADD s0, s11, zero
  ADD s2, s4, zero
  # implict jump to bb22
bb22:
  LA s4, i
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, i
  SW s4, 0(s5)
  LA s4, i
  LW s4, 0(s4)
  SLLIW s4, s4, 2
  LA s5, get2
  ADD s4, s5, s4
  LW s4, 0(s4)
  XORI s4, s4, 64
  BNE s4, zero, bb23
  JAL zero, bb7
bb23:
  ADD s7, s2, zero
  ADD s9, s1, zero
  ADD s10, s0, zero
  JAL zero, bb9
bb24:
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s6, get2
  ADD s5, s6, s5
  LW s5, 0(s5)
  ADDI s6, zero, 48
  SUBW s5, s5, s6
  LA s6, intt
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s2, intt
  SW s6, 0(s2)
  SLLIW s2, s6, 2
  LA s6, ints
  ADD s2, s6, s2
  SW s5, 0(s2)
  LA s5, ii
  ADDI s6, zero, 1
  SW s6, 0(s5)
  LA s5, i
  LW s5, 0(s5)
  LA s6, ii
  LW s6, 0(s6)
  ADDW s5, s5, s6
  SLLIW s5, s5, 2
  LA s6, get2
  ADD s5, s6, s5
  LW s5, 0(s5)
  XORI s5, s5, 32
  BNE s5, zero, bb26
  # implict jump to bb25
bb25:
  LA s0, i
  LW s0, 0(s0)
  LA s2, ii
  LW s2, 0(s2)
  ADDW s0, s0, s2
  ADDI s2, zero, 1
  SUBW s0, s0, s2
  LA s2, i
  SW s0, 0(s2)
  JAL zero, bb21
bb26:
  LA s5, i
  LW s5, 0(s5)
  # implict jump to bb27
bb27:
  LA s6, ii
  LW s6, 0(s6)
  ADDW s6, s5, s6
  SLLIW s6, s6, 2
  LA s0, get2
  ADD s0, s0, s6
  LW s0, 0(s0)
  ADDI s6, zero, 48
  SUBW s0, s0, s6
  LW s6, 0(s2)
  ADDI s3, zero, 10
  MULW s3, s6, s3
  SW s3, 0(s2)
  LW s3, 0(s2)
  ADDW s0, s3, s0
  SW s0, 0(s2)
  LA s0, ii
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s3, ii
  SW s0, 0(s3)
  LA s0, i
  LW s0, 0(s0)
  LA s3, ii
  LW s3, 0(s3)
  ADDW s0, s0, s3
  SLLIW s0, s0, 2
  LA s3, get2
  ADD s0, s3, s0
  LW s0, 0(s0)
  XORI s0, s0, 32
  BNE s0, zero, bb27
  JAL zero, bb25
bb28:
  LA s3, intt
  LW s3, 0(s3)
  ADDI s5, zero, 1
  SUBW s5, s3, s5
  LA s6, intt
  SW s5, 0(s6)
  SLLIW s6, s3, 2
  LA s11, ints
  ADD s6, s11, s6
  LW t4, 0(s6)
  SW t4, 108(sp)
  ADDI s11, zero, 2
  SUBW s3, s3, s11
  LA s11, intt
  SW s3, 0(s11)
  SLLIW s3, s5, 2
  LA s5, ints
  ADD s3, s5, s3
  LW t4, 0(s3)
  SW t4, 104(sp)
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s11, get2
  ADD s5, s11, s5
  LW s5, 0(s5)
  XORI s5, s5, 43
  SLTIU s5, s5, 1
  BNE s5, zero, bb52
  # implict jump to bb29
bb29:
  # implict jump to bb30
bb30:
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s11, get2
  ADD s5, s11, s5
  LW s5, 0(s5)
  XORI s5, s5, 45
  SLTIU s5, s5, 1
  BNE s5, zero, bb51
  # implict jump to bb31
bb31:
  # implict jump to bb32
bb32:
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s11, get2
  ADD s5, s11, s5
  LW s5, 0(s5)
  XORI s5, s5, 42
  SLTIU s5, s5, 1
  BNE s5, zero, bb50
  # implict jump to bb33
bb33:
  # implict jump to bb34
bb34:
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s11, get2
  ADD s5, s11, s5
  LW s5, 0(s5)
  XORI s5, s5, 47
  SLTIU s5, s5, 1
  BNE s5, zero, bb49
  # implict jump to bb35
bb35:
  # implict jump to bb36
bb36:
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s11, get2
  ADD s5, s11, s5
  LW s5, 0(s5)
  XORI s5, s5, 37
  SLTIU s5, s5, 1
  BNE s5, zero, bb48
  # implict jump to bb37
bb37:
  # implict jump to bb38
bb38:
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s11, get2
  ADD s5, s11, s5
  LW s5, 0(s5)
  XORI s5, s5, 94
  SLTIU s5, s5, 1
  BNE s5, zero, bb41
  # implict jump to bb39
bb39:
  # implict jump to bb40
bb40:
  LA s5, intt
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s8, intt
  SW s5, 0(s8)
  SLLIW s5, s5, 2
  LA s8, ints
  ADD s5, s8, s5
  SW s4, 0(s5)
  LW t4, 108(sp)
  ADD s0, t4, zero
  LW t4, 104(sp)
  ADD s1, t4, zero
  ADD s2, s4, zero
  JAL zero, bb22
bb41:
  LW t4, 108(sp)
  BNE t4, zero, bb44
  # implict jump to bb42
bb42:
  ADDI s5, zero, 1
  # implict jump to bb43
bb43:
  ADD s4, s5, zero
  JAL zero, bb40
bb44:
  LW t4, 108(sp)
  ADD s11, t4, zero
  ADDI t4, zero, 1
  SW t4, 96(sp)
  # implict jump to bb45
bb45:
  LW t4, 96(sp)
  ADD s3, t4, zero
  ADD s6, s11, zero
  LW t4, 104(sp)
  MULW s3, s3, t4
  ADDI s8, zero, 1
  SUBW s6, s6, s8
  BNE s6, zero, bb47
  # implict jump to bb46
bb46:
  ADD s5, s3, zero
  JAL zero, bb43
bb47:
  ADD s11, s6, zero
  ADD t4, s3, zero
  SW t4, 96(sp)
  JAL zero, bb45
bb48:
  LW t4, 104(sp)
  LW t3, 108(sp)
  REMW s5, t4, t3
  ADD s4, s5, zero
  JAL zero, bb38
bb49:
  LW t4, 104(sp)
  LW t3, 108(sp)
  DIVW s5, t4, t3
  ADD s4, s5, zero
  JAL zero, bb36
bb50:
  LW t4, 108(sp)
  LW t3, 104(sp)
  MULW s5, t4, t3
  ADD s4, s5, zero
  JAL zero, bb34
bb51:
  LW t4, 104(sp)
  LW t3, 108(sp)
  SUBW s5, t4, t3
  ADD s4, s5, zero
  JAL zero, bb32
bb52:
  LW t4, 108(sp)
  LW t3, 104(sp)
  ADDW s5, t4, t3
  ADD s4, s5, zero
  JAL zero, bb30
bb53:
  ADDI s5, zero, 1
  JAL zero, bb19
bb54:
  ADDI s5, zero, 1
  JAL zero, bb17
bb55:
  ADDI s5, zero, 1
  JAL zero, bb15
bb56:
  ADDI s5, zero, 1
  JAL zero, bb13
bb57:
  ADDI s5, zero, 1
  JAL zero, bb11
bb58:
  LA s0, chat
  LW s0, 0(s0)
  ADDI s1, zero, 1
  SUBW s1, s0, s1
  LA s2, chat
  SW s1, 0(s2)
  SLLIW s0, s0, 2
  LA s1, chas
  ADD s0, s1, s0
  LW s0, 0(s0)
  LA s1, ii
  LW s1, 0(s1)
  SLLIW s2, s1, 2
  LA s3, get2
  ADD s2, s3, s2
  ADDI s3, zero, 32
  SW s3, 0(s2)
  ADDIW s2, s1, 1
  SLLIW s2, s2, 2
  LA s3, get2
  ADD s2, s3, s2
  SW s0, 0(s2)
  ADDIW s0, s1, 2
  LA s1, ii
  SW s0, 0(s1)
  JAL zero, bb5
bb59:
  ADD t4, s6, zero
  SW t4, 112(sp)
  ADD t4, zero, zero
  SB t4, 88(sp)
  ADD t4, zero, zero
  SB t4, 60(sp)
  ADD t4, zero, zero
  SB t4, 59(sp)
  ADD t4, zero, zero
  SB t4, 58(sp)
  ADD t4, zero, zero
  SB t4, 57(sp)
  ADD t4, zero, zero
  SB t4, 56(sp)
  ADD t4, zero, zero
  SB t4, 55(sp)
  ADD t4, zero, zero
  SB t4, 54(sp)
  ADD t4, zero, zero
  SB t4, 53(sp)
  ADD t4, zero, zero
  SB t4, 52(sp)
  ADD t4, zero, zero
  SB t4, 51(sp)
  ADD t4, zero, zero
  SB t4, 95(sp)
  ADD t4, zero, zero
  SB t4, 74(sp)
  ADD t4, zero, zero
  SB t4, 94(sp)
  ADD t4, zero, zero
  SB t4, 93(sp)
  ADD t4, zero, zero
  SB t4, 92(sp)
  ADD t4, zero, zero
  SB t4, 91(sp)
  ADD t4, zero, zero
  SB t4, 90(sp)
  ADD t4, zero, zero
  SB t4, 89(sp)
  # implict jump to bb60
bb60:
  LB t3, 89(sp)
  ADD t4, t3, zero
  SB t4, 20(sp)
  LB t3, 90(sp)
  ADD t4, t3, zero
  SB t4, 21(sp)
  LB t3, 91(sp)
  ADD t4, t3, zero
  SB t4, 86(sp)
  LB t3, 92(sp)
  ADD t4, t3, zero
  SB t4, 85(sp)
  LB t3, 93(sp)
  ADD t4, t3, zero
  SB t4, 84(sp)
  LB t3, 94(sp)
  ADD t4, t3, zero
  SB t4, 83(sp)
  LB t3, 74(sp)
  ADD t4, t3, zero
  SB t4, 82(sp)
  LB t3, 95(sp)
  ADD t4, t3, zero
  SB t4, 81(sp)
  LB t3, 51(sp)
  ADD t4, t3, zero
  SB t4, 80(sp)
  LB t3, 52(sp)
  ADD t4, t3, zero
  SB t4, 79(sp)
  LB t3, 53(sp)
  ADD t4, t3, zero
  SB t4, 78(sp)
  LB t3, 54(sp)
  ADD t4, t3, zero
  SB t4, 77(sp)
  LB t3, 55(sp)
  ADD t4, t3, zero
  SB t4, 76(sp)
  LB t3, 56(sp)
  ADD t4, t3, zero
  SB t4, 75(sp)
  LB t3, 57(sp)
  ADD t4, t3, zero
  SB t4, 62(sp)
  LB t3, 58(sp)
  ADD t4, t3, zero
  SB t4, 38(sp)
  LB t3, 59(sp)
  ADD t4, t3, zero
  SB t4, 24(sp)
  LB t3, 60(sp)
  ADD t4, t3, zero
  SB t4, 23(sp)
  LB t3, 88(sp)
  ADD t4, t3, zero
  SB t4, 22(sp)
  LW t4, 112(sp)
  ADD s6, t4, zero
  SLLIW s6, s6, 2
  LA s9, get
  ADD t4, s9, s6
  SD t4, 184(sp)
  LD t4, 184(sp)
  LW s9, 0(t4)
  SLTI s6, s9, 48
  XORI s6, s6, 1
  BNE s6, zero, bb174
  # implict jump to bb61
bb61:
  ADD s6, zero, zero
  # implict jump to bb62
bb62:
  BNE s6, zero, bb173
  # implict jump to bb63
bb63:
  ADD s6, zero, zero
  # implict jump to bb64
bb64:
  XORI s6, s6, 1
  SLTIU s6, s6, 1
  BNE s6, zero, bb172
  # implict jump to bb65
bb65:
  LD t4, 184(sp)
  LW s6, 0(t4)
  XORI s6, s6, 40
  SLTIU s6, s6, 1
  BNE s6, zero, bb171
  # implict jump to bb66
bb66:
  LD t4, 184(sp)
  LW s6, 0(t4)
  XORI s6, s6, 94
  SLTIU s6, s6, 1
  BNE s6, zero, bb170
  # implict jump to bb67
bb67:
  LD t4, 184(sp)
  LW s6, 0(t4)
  XORI s6, s6, 41
  SLTIU s6, s6, 1
  BNE s6, zero, bb168
  # implict jump to bb68
bb68:
  LD t4, 184(sp)
  LW s6, 0(t4)
  XORI s6, s6, 43
  SLTIU s6, s6, 1
  BNE s6, zero, bb147
  # implict jump to bb69
bb69:
  LB t3, 84(sp)
  ADD t4, t3, zero
  SB t4, 0(sp)
  LB t3, 81(sp)
  ADD t4, t3, zero
  SB t4, 12(sp)
  LB t3, 75(sp)
  ADD t4, t3, zero
  SB t4, 11(sp)
  LB t4, 23(sp)
  ADD s11, t4, zero
  LB t4, 22(sp)
  ADD s4, t4, zero
  # implict jump to bb70
bb70:
  ADD t4, s4, zero
  SB t4, 10(sp)
  ADD t4, s11, zero
  SB t4, 9(sp)
  LB t3, 11(sp)
  ADD t4, t3, zero
  SB t4, 8(sp)
  LB t3, 12(sp)
  ADD t4, t3, zero
  SB t4, 49(sp)
  LB t4, 0(sp)
  ADD s2, t4, zero
  LD t4, 184(sp)
  LW s3, 0(t4)
  XORI s3, s3, 45
  SLTIU s3, s3, 1
  BNE s3, zero, bb126
  # implict jump to bb71
bb71:
  LB t4, 82(sp)
  ADD s3, t4, zero
  LB t4, 76(sp)
  ADD s5, t4, zero
  LB t4, 62(sp)
  ADD s6, t4, zero
  LB t4, 38(sp)
  ADD s7, t4, zero
  LB t4, 24(sp)
  ADD s8, t4, zero
  # implict jump to bb72
bb72:
  ADD t4, s8, zero
  SB t4, 7(sp)
  ADD t4, s7, zero
  SB t4, 6(sp)
  ADD t4, s6, zero
  SB t4, 5(sp)
  ADD t4, s5, zero
  SB t4, 4(sp)
  LD t4, 184(sp)
  LW s0, 0(t4)
  XORI s0, s0, 42
  SLTIU s0, s0, 1
  BNE s0, zero, bb111
  # implict jump to bb73
bb73:
  LB t4, 83(sp)
  ADD s0, t4, zero
  LB t4, 78(sp)
  ADD s4, t4, zero
  LB t4, 77(sp)
  ADD s9, t4, zero
  # implict jump to bb74
bb74:
  ADD t4, s9, zero
  SB t4, 3(sp)
  ADD t4, s4, zero
  SB t4, 2(sp)
  LD t4, 184(sp)
  LW s6, 0(t4)
  XORI s6, s6, 47
  SLTIU s6, s6, 1
  BNE s6, zero, bb96
  # implict jump to bb75
bb75:
  LB t4, 20(sp)
  ADD s6, t4, zero
  LB t4, 80(sp)
  ADD s7, t4, zero
  LB t4, 79(sp)
  ADD s8, t4, zero
  # implict jump to bb76
bb76:
  ADD t4, s8, zero
  SB t4, 1(sp)
  ADD t4, s7, zero
  SB t4, 13(sp)
  LD t4, 184(sp)
  LW s4, 0(t4)
  XORI s4, s4, 37
  SLTIU s4, s4, 1
  BNE s4, zero, bb81
  # implict jump to bb77
bb77:
  LB t4, 21(sp)
  ADD s4, t4, zero
  LB t4, 86(sp)
  ADD s5, t4, zero
  LB t4, 85(sp)
  ADD s9, t4, zero
  # implict jump to bb78
bb78:
  LA s1, ii
  LW s1, 0(s1)
  SLLIW s7, s1, 2
  LA s8, get2
  ADD s7, s8, s7
  ADDI s8, zero, 32
  SW s8, 0(s7)
  ADDIW s1, s1, 1
  LA s7, ii
  SW s1, 0(s7)
  ADD t4, s6, zero
  SB t4, 48(sp)
  ADD t4, s4, zero
  SB t4, 47(sp)
  ADD t4, s5, zero
  SB t4, 46(sp)
  ADD t4, s9, zero
  SB t4, 45(sp)
  ADD t4, s2, zero
  SB t4, 44(sp)
  ADD t4, s0, zero
  SB t4, 43(sp)
  ADD t4, s3, zero
  SB t4, 42(sp)
  LB t3, 49(sp)
  ADD t4, t3, zero
  SB t4, 41(sp)
  LB t3, 13(sp)
  ADD t4, t3, zero
  SB t4, 40(sp)
  LB t3, 1(sp)
  ADD t4, t3, zero
  SB t4, 39(sp)
  LB t4, 2(sp)
  ADD s10, t4, zero
  LB t4, 3(sp)
  ADD s11, t4, zero
  LB t4, 4(sp)
  ADD s1, t4, zero
  LB t4, 8(sp)
  ADD s4, t4, zero
  LB t4, 5(sp)
  ADD s5, t4, zero
  LB t4, 6(sp)
  ADD s6, t4, zero
  LB t4, 7(sp)
  ADD s2, t4, zero
  LB t4, 9(sp)
  ADD s0, t4, zero
  LB t4, 10(sp)
  ADD s3, t4, zero
  # implict jump to bb79
bb79:
  ADD t4, s3, zero
  SB t4, 65(sp)
  ADD t4, s0, zero
  SB t4, 64(sp)
  ADD t4, s2, zero
  SB t4, 63(sp)
  ADD t4, s6, zero
  SB t4, 50(sp)
  ADD t4, s5, zero
  SB t4, 87(sp)
  ADD t4, s4, zero
  SB t4, 19(sp)
  ADD t4, s1, zero
  SB t4, 26(sp)
  ADD t4, s11, zero
  SB t4, 27(sp)
  ADD t4, s10, zero
  SB t4, 28(sp)
  LB t3, 39(sp)
  ADD t4, t3, zero
  SB t4, 29(sp)
  LB t3, 40(sp)
  ADD t4, t3, zero
  SB t4, 30(sp)
  LB t3, 41(sp)
  ADD t4, t3, zero
  SB t4, 31(sp)
  LB t3, 42(sp)
  ADD t4, t3, zero
  SB t4, 25(sp)
  LB t3, 43(sp)
  ADD t4, t3, zero
  SB t4, 37(sp)
  LB t3, 44(sp)
  ADD t4, t3, zero
  SB t4, 36(sp)
  LB t3, 45(sp)
  ADD t4, t3, zero
  SB t4, 35(sp)
  LB t3, 46(sp)
  ADD t4, t3, zero
  SB t4, 34(sp)
  LB t3, 47(sp)
  ADD t4, t3, zero
  SB t4, 33(sp)
  LB t3, 48(sp)
  ADD t4, t3, zero
  SB t4, 32(sp)
  LA s9, i
  LW s9, 0(s9)
  ADDIW s9, s9, 1
  LA s8, i
  SW s9, 0(s8)
  LA s8, i
  LW t4, 0(s8)
  SW t4, 100(sp)
  LW t4, 100(sp)
  LW t3, 128(sp)
  BLT t4, t3, bb80
  JAL zero, bb5
bb80:
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LB t3, 65(sp)
  ADD t4, t3, zero
  SB t4, 88(sp)
  LB t3, 64(sp)
  ADD t4, t3, zero
  SB t4, 60(sp)
  LB t3, 63(sp)
  ADD t4, t3, zero
  SB t4, 59(sp)
  LB t3, 50(sp)
  ADD t4, t3, zero
  SB t4, 58(sp)
  LB t3, 87(sp)
  ADD t4, t3, zero
  SB t4, 57(sp)
  LB t3, 19(sp)
  ADD t4, t3, zero
  SB t4, 56(sp)
  LB t3, 26(sp)
  ADD t4, t3, zero
  SB t4, 55(sp)
  LB t3, 27(sp)
  ADD t4, t3, zero
  SB t4, 54(sp)
  LB t3, 28(sp)
  ADD t4, t3, zero
  SB t4, 53(sp)
  LB t3, 29(sp)
  ADD t4, t3, zero
  SB t4, 52(sp)
  LB t3, 30(sp)
  ADD t4, t3, zero
  SB t4, 51(sp)
  LB t3, 31(sp)
  ADD t4, t3, zero
  SB t4, 95(sp)
  LB t3, 25(sp)
  ADD t4, t3, zero
  SB t4, 74(sp)
  LB t3, 37(sp)
  ADD t4, t3, zero
  SB t4, 94(sp)
  LB t3, 36(sp)
  ADD t4, t3, zero
  SB t4, 93(sp)
  LB t3, 35(sp)
  ADD t4, t3, zero
  SB t4, 92(sp)
  LB t3, 34(sp)
  ADD t4, t3, zero
  SB t4, 91(sp)
  LB t3, 33(sp)
  ADD t4, t3, zero
  SB t4, 90(sp)
  LB t3, 32(sp)
  ADD t4, t3, zero
  SB t4, 89(sp)
  JAL zero, bb60
bb81:
  LA s10, chat
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, chas
  ADD s10, s11, s10
  LW s11, 0(s10)
  XORI s11, s11, 42
  SLTIU s11, s11, 1
  BNE s11, zero, bb95
  # implict jump to bb82
bb82:
  LW s11, 0(s10)
  XORI s11, s11, 47
  SLTIU s11, s11, 1
  # implict jump to bb83
bb83:
  ADD t4, s11, zero
  SB t4, 72(sp)
  LB t4, 72(sp)
  BNE t4, zero, bb94
  # implict jump to bb84
bb84:
  LW s11, 0(s10)
  XORI s11, s11, 37
  SLTIU s11, s11, 1
  # implict jump to bb85
bb85:
  ADD t4, s11, zero
  SB t4, 67(sp)
  LB t4, 67(sp)
  BNE t4, zero, bb93
  # implict jump to bb86
bb86:
  LW s10, 0(s10)
  XORI s10, s10, 94
  SLTIU s10, s10, 1
  # implict jump to bb87
bb87:
  ADD t4, s10, zero
  SB t4, 70(sp)
  LB t4, 70(sp)
  BNE t4, zero, bb89
  # implict jump to bb88
bb88:
  LA s1, chat
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s7, chat
  SW s1, 0(s7)
  SLLIW s1, s1, 2
  LA s7, chas
  ADD s1, s7, s1
  ADDI s7, zero, 37
  SW s7, 0(s1)
  LB t4, 72(sp)
  ADD s4, t4, zero
  LB t4, 67(sp)
  ADD s5, t4, zero
  LB t4, 70(sp)
  ADD s9, t4, zero
  JAL zero, bb78
bb89:
  LA s10, chat
  LW s10, 0(s10)
  ADDI s11, zero, 1
  SUBW s11, s10, s11
  LA s8, chat
  SW s11, 0(s8)
  SLLIW s8, s10, 2
  LA s10, chas
  ADD s8, s10, s8
  LW s8, 0(s8)
  LA s10, c
  SW s8, 0(s10)
  LA s10, ii
  LW s10, 0(s10)
  SLLIW s7, s10, 2
  LA s1, get2
  ADD s1, s1, s7
  ADDI s7, zero, 32
  SW s7, 0(s1)
  ADDIW s1, s10, 1
  SLLIW s1, s1, 2
  LA s7, get2
  ADD s1, s7, s1
  SW s8, 0(s1)
  ADDIW s1, s10, 2
  LA s7, ii
  SW s1, 0(s7)
  SLTIU s1, s11, 1
  BNE s1, zero, bb92
  # implict jump to bb90
bb90:
  ADDI s1, zero, 1
  # implict jump to bb91
bb91:
  SLTIU s1, s1, 1
  BNE s1, zero, bb88
  JAL zero, bb81
bb92:
  ADD s1, zero, zero
  JAL zero, bb91
bb93:
  ADDI s10, zero, 1
  JAL zero, bb87
bb94:
  ADDI s11, zero, 1
  JAL zero, bb85
bb95:
  ADDI s11, zero, 1
  JAL zero, bb83
bb96:
  LA s10, chat
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, chas
  ADD s10, s11, s10
  LW s11, 0(s10)
  XORI s11, s11, 42
  SLTIU s11, s11, 1
  BNE s11, zero, bb110
  # implict jump to bb97
bb97:
  LW s11, 0(s10)
  XORI s11, s11, 47
  SLTIU s11, s11, 1
  # implict jump to bb98
bb98:
  ADD t4, s11, zero
  SB t4, 68(sp)
  LB t4, 68(sp)
  BNE t4, zero, bb109
  # implict jump to bb99
bb99:
  LW s11, 0(s10)
  XORI s11, s11, 37
  SLTIU s11, s11, 1
  # implict jump to bb100
bb100:
  ADD t4, s11, zero
  SB t4, 73(sp)
  LB t4, 73(sp)
  BNE t4, zero, bb108
  # implict jump to bb101
bb101:
  LW s10, 0(s10)
  XORI s10, s10, 94
  SLTIU s10, s10, 1
  # implict jump to bb102
bb102:
  ADD t4, s10, zero
  SB t4, 71(sp)
  LB t4, 71(sp)
  BNE t4, zero, bb104
  # implict jump to bb103
bb103:
  LA s4, chat
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, chat
  SW s4, 0(s5)
  SLLIW s4, s4, 2
  LA s5, chas
  ADD s4, s5, s4
  ADDI s5, zero, 47
  SW s5, 0(s4)
  LB t4, 71(sp)
  ADD s6, t4, zero
  LB t4, 73(sp)
  ADD s7, t4, zero
  LB t4, 68(sp)
  ADD s8, t4, zero
  JAL zero, bb76
bb104:
  LA s10, chat
  LW s10, 0(s10)
  ADDI s11, zero, 1
  SUBW s11, s10, s11
  LA s5, chat
  SW s11, 0(s5)
  SLLIW s5, s10, 2
  LA s10, chas
  ADD s5, s10, s5
  LW s5, 0(s5)
  LA s10, c
  SW s5, 0(s10)
  LA s10, ii
  LW s10, 0(s10)
  SLLIW s9, s10, 2
  LA s4, get2
  ADD s4, s4, s9
  ADDI s9, zero, 32
  SW s9, 0(s4)
  ADDIW s4, s10, 1
  SLLIW s4, s4, 2
  LA s9, get2
  ADD s4, s9, s4
  SW s5, 0(s4)
  ADDIW s4, s10, 2
  LA s5, ii
  SW s4, 0(s5)
  SLTIU s4, s11, 1
  BNE s4, zero, bb107
  # implict jump to bb105
bb105:
  ADDI s4, zero, 1
  # implict jump to bb106
bb106:
  SLTIU s4, s4, 1
  BNE s4, zero, bb103
  JAL zero, bb96
bb107:
  ADD s4, zero, zero
  JAL zero, bb106
bb108:
  ADDI s10, zero, 1
  JAL zero, bb102
bb109:
  ADDI s11, zero, 1
  JAL zero, bb100
bb110:
  ADDI s11, zero, 1
  JAL zero, bb98
bb111:
  LA s10, chat
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, chas
  ADD s10, s11, s10
  LW s11, 0(s10)
  XORI s11, s11, 42
  SLTIU s11, s11, 1
  BNE s11, zero, bb125
  # implict jump to bb112
bb112:
  LW s11, 0(s10)
  XORI s11, s11, 47
  SLTIU s11, s11, 1
  # implict jump to bb113
bb113:
  ADD t4, s11, zero
  SB t4, 66(sp)
  LB t4, 66(sp)
  BNE t4, zero, bb124
  # implict jump to bb114
bb114:
  LW s11, 0(s10)
  XORI s11, s11, 37
  SLTIU s11, s11, 1
  # implict jump to bb115
bb115:
  ADD t4, s11, zero
  SB t4, 61(sp)
  LB t4, 61(sp)
  BNE t4, zero, bb123
  # implict jump to bb116
bb116:
  LW s10, 0(s10)
  XORI s10, s10, 94
  SLTIU s10, s10, 1
  # implict jump to bb117
bb117:
  ADD t4, s10, zero
  SB t4, 18(sp)
  LB t4, 18(sp)
  BNE t4, zero, bb119
  # implict jump to bb118
bb118:
  LA s6, chat
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, chat
  SW s6, 0(s7)
  SLLIW s6, s6, 2
  LA s7, chas
  ADD s6, s7, s6
  ADDI s7, zero, 42
  SW s7, 0(s6)
  LB t4, 66(sp)
  ADD s0, t4, zero
  LB t4, 18(sp)
  ADD s4, t4, zero
  LB t4, 61(sp)
  ADD s9, t4, zero
  JAL zero, bb74
bb119:
  LA s10, chat
  LW s10, 0(s10)
  ADDI s11, zero, 1
  SUBW s11, s10, s11
  LA s8, chat
  SW s11, 0(s8)
  SLLIW s8, s10, 2
  LA s10, chas
  ADD s8, s10, s8
  LW s8, 0(s8)
  LA s10, c
  SW s8, 0(s10)
  LA s10, ii
  LW s10, 0(s10)
  SLLIW s7, s10, 2
  LA s6, get2
  ADD s6, s6, s7
  ADDI s7, zero, 32
  SW s7, 0(s6)
  ADDIW s6, s10, 1
  SLLIW s6, s6, 2
  LA s7, get2
  ADD s6, s7, s6
  SW s8, 0(s6)
  ADDIW s6, s10, 2
  LA s7, ii
  SW s6, 0(s7)
  SLTIU s6, s11, 1
  BNE s6, zero, bb122
  # implict jump to bb120
bb120:
  ADDI s6, zero, 1
  # implict jump to bb121
bb121:
  SLTIU s6, s6, 1
  BNE s6, zero, bb118
  JAL zero, bb111
bb122:
  ADD s6, zero, zero
  JAL zero, bb121
bb123:
  ADDI s10, zero, 1
  JAL zero, bb117
bb124:
  ADDI s11, zero, 1
  JAL zero, bb115
bb125:
  ADDI s11, zero, 1
  JAL zero, bb113
bb126:
  LA s9, chat
  LW s9, 0(s9)
  SLLIW s9, s9, 2
  LA s10, chas
  ADD s9, s10, s9
  LW s10, 0(s9)
  XORI s10, s10, 43
  SLTIU s10, s10, 1
  BNE s10, zero, bb146
  # implict jump to bb127
bb127:
  LW s10, 0(s9)
  XORI s10, s10, 45
  SLTIU s10, s10, 1
  # implict jump to bb128
bb128:
  ADD t4, s10, zero
  SB t4, 17(sp)
  LB t4, 17(sp)
  BNE t4, zero, bb145
  # implict jump to bb129
bb129:
  LW s10, 0(s9)
  XORI s10, s10, 42
  SLTIU s10, s10, 1
  # implict jump to bb130
bb130:
  ADD t4, s10, zero
  SB t4, 69(sp)
  LB t4, 69(sp)
  BNE t4, zero, bb144
  # implict jump to bb131
bb131:
  LW s10, 0(s9)
  XORI s10, s10, 47
  SLTIU s10, s10, 1
  # implict jump to bb132
bb132:
  ADD t4, s10, zero
  SB t4, 16(sp)
  LB t4, 16(sp)
  BNE t4, zero, bb143
  # implict jump to bb133
bb133:
  LW s10, 0(s9)
  XORI s10, s10, 37
  SLTIU s10, s10, 1
  # implict jump to bb134
bb134:
  ADD t4, s10, zero
  SB t4, 15(sp)
  LB t4, 15(sp)
  BNE t4, zero, bb142
  # implict jump to bb135
bb135:
  LW s9, 0(s9)
  XORI s9, s9, 94
  SLTIU s9, s9, 1
  # implict jump to bb136
bb136:
  ADD t4, s9, zero
  SB t4, 14(sp)
  LB t4, 14(sp)
  BNE t4, zero, bb138
  # implict jump to bb137
bb137:
  LA s0, chat
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, chat
  SW s0, 0(s4)
  SLLIW s0, s0, 2
  LA s4, chas
  ADD s0, s4, s0
  ADDI s4, zero, 45
  SW s4, 0(s0)
  LB t4, 69(sp)
  ADD s3, t4, zero
  LB t4, 14(sp)
  ADD s5, t4, zero
  LB t4, 15(sp)
  ADD s6, t4, zero
  LB t4, 16(sp)
  ADD s7, t4, zero
  LB t4, 17(sp)
  ADD s8, t4, zero
  JAL zero, bb72
bb138:
  LA s9, chat
  LW s9, 0(s9)
  ADDI s10, zero, 1
  SUBW s10, s9, s10
  LA s4, chat
  SW s10, 0(s4)
  SLLIW s4, s9, 2
  LA s9, chas
  ADD s4, s9, s4
  LW s4, 0(s4)
  LA s9, c
  SW s4, 0(s9)
  LA s9, ii
  LW s9, 0(s9)
  SLLIW s11, s9, 2
  LA s0, get2
  ADD s0, s0, s11
  ADDI s11, zero, 32
  SW s11, 0(s0)
  ADDIW s0, s9, 1
  SLLIW s0, s0, 2
  LA s11, get2
  ADD s0, s11, s0
  SW s4, 0(s0)
  ADDIW s0, s9, 2
  LA s4, ii
  SW s0, 0(s4)
  SLTIU s0, s10, 1
  BNE s0, zero, bb141
  # implict jump to bb139
bb139:
  ADDI s0, zero, 1
  # implict jump to bb140
bb140:
  SLTIU s0, s0, 1
  BNE s0, zero, bb137
  JAL zero, bb126
bb141:
  ADD s0, zero, zero
  JAL zero, bb140
bb142:
  ADDI s9, zero, 1
  JAL zero, bb136
bb143:
  ADDI s10, zero, 1
  JAL zero, bb134
bb144:
  ADDI s10, zero, 1
  JAL zero, bb132
bb145:
  ADDI s10, zero, 1
  JAL zero, bb130
bb146:
  ADDI s10, zero, 1
  JAL zero, bb128
bb147:
  LA s8, chat
  LW s8, 0(s8)
  SLLIW s8, s8, 2
  LA s10, chas
  ADD s8, s10, s8
  LW s10, 0(s8)
  XORI s10, s10, 43
  SLTIU s10, s10, 1
  BNE s10, zero, bb167
  # implict jump to bb148
bb148:
  LW s10, 0(s8)
  XORI s10, s10, 45
  SLTIU s10, s10, 1
  # implict jump to bb149
bb149:
  ADD s2, s10, zero
  BNE s2, zero, bb166
  # implict jump to bb150
bb150:
  LW s10, 0(s8)
  XORI s10, s10, 42
  SLTIU s10, s10, 1
  # implict jump to bb151
bb151:
  ADD s5, s10, zero
  BNE s5, zero, bb165
  # implict jump to bb152
bb152:
  LW s10, 0(s8)
  XORI s10, s10, 47
  SLTIU s10, s10, 1
  # implict jump to bb153
bb153:
  ADD s3, s10, zero
  BNE s3, zero, bb164
  # implict jump to bb154
bb154:
  LW s10, 0(s8)
  XORI s10, s10, 37
  SLTIU s10, s10, 1
  # implict jump to bb155
bb155:
  ADD s0, s10, zero
  BNE s0, zero, bb163
  # implict jump to bb156
bb156:
  LW s8, 0(s8)
  XORI s8, s8, 94
  SLTIU s8, s8, 1
  # implict jump to bb157
bb157:
  ADD s1, s8, zero
  BNE s1, zero, bb159
  # implict jump to bb158
bb158:
  LA s6, chat
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, chat
  SW s6, 0(s7)
  SLLIW s6, s6, 2
  LA s7, chas
  ADD s6, s7, s6
  ADDI s7, zero, 43
  SW s7, 0(s6)
  ADD t4, s0, zero
  SB t4, 0(sp)
  ADD t4, s5, zero
  SB t4, 12(sp)
  ADD t4, s2, zero
  SB t4, 11(sp)
  ADD s11, s1, zero
  ADD s4, s3, zero
  JAL zero, bb70
bb159:
  LA s8, chat
  LW s8, 0(s8)
  ADDI s10, zero, 1
  SUBW s10, s8, s10
  LA s6, chat
  SW s10, 0(s6)
  SLLIW s6, s8, 2
  LA s8, chas
  ADD s6, s8, s6
  LW s6, 0(s6)
  LA s8, c
  SW s6, 0(s8)
  LA s8, ii
  LW s8, 0(s8)
  SLLIW s7, s8, 2
  LA s9, get2
  ADD s7, s9, s7
  ADDI s9, zero, 32
  SW s9, 0(s7)
  ADDIW s7, s8, 1
  SLLIW s7, s7, 2
  LA s9, get2
  ADD s7, s9, s7
  SW s6, 0(s7)
  ADDIW s6, s8, 2
  LA s7, ii
  SW s6, 0(s7)
  SLTIU s6, s10, 1
  BNE s6, zero, bb162
  # implict jump to bb160
bb160:
  ADDI s6, zero, 1
  # implict jump to bb161
bb161:
  SLTIU s6, s6, 1
  BNE s6, zero, bb158
  JAL zero, bb147
bb162:
  ADD s6, zero, zero
  JAL zero, bb161
bb163:
  ADDI s8, zero, 1
  JAL zero, bb157
bb164:
  ADDI s10, zero, 1
  JAL zero, bb155
bb165:
  ADDI s10, zero, 1
  JAL zero, bb153
bb166:
  ADDI s10, zero, 1
  JAL zero, bb151
bb167:
  ADDI s10, zero, 1
  JAL zero, bb149
bb168:
  LA s6, chat
  LW s6, 0(s6)
  ADDI s7, zero, 1
  SUBW s7, s6, s7
  LA s9, chat
  SW s7, 0(s9)
  SLLIW s6, s6, 2
  LA s7, chas
  ADD s6, s7, s6
  LW s6, 0(s6)
  LA s7, c
  SW s6, 0(s7)
  LA s6, c
  LW s6, 0(s6)
  XORI s6, s6, 40
  BNE s6, zero, bb169
  JAL zero, bb68
bb169:
  LA s6, ii
  LW s6, 0(s6)
  SLLIW s7, s6, 2
  LA s9, get2
  ADD s7, s9, s7
  ADDI s9, zero, 32
  SW s9, 0(s7)
  ADDIW s7, s6, 1
  SLLIW s7, s7, 2
  LA s9, get2
  ADD s7, s9, s7
  LA s9, c
  LW s9, 0(s9)
  SW s9, 0(s7)
  ADDIW s6, s6, 2
  LA s7, ii
  SW s6, 0(s7)
  LA s6, chat
  LW s6, 0(s6)
  ADDI s7, zero, 1
  SUBW s7, s6, s7
  LA s9, chat
  SW s7, 0(s9)
  SLLIW s6, s6, 2
  LA s7, chas
  ADD s6, s7, s6
  LW s6, 0(s6)
  LA s7, c
  SW s6, 0(s7)
  LA s6, c
  LW s6, 0(s6)
  XORI s6, s6, 40
  BNE s6, zero, bb169
  JAL zero, bb68
bb170:
  LA s6, chat
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, chat
  SW s6, 0(s7)
  SLLIW s6, s6, 2
  LA s7, chas
  ADD s6, s7, s6
  ADDI s7, zero, 94
  SW s7, 0(s6)
  JAL zero, bb67
bb171:
  LA s6, chat
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, chat
  SW s6, 0(s7)
  SLLIW s6, s6, 2
  LA s7, chas
  ADD s6, s7, s6
  ADDI s7, zero, 40
  SW s7, 0(s6)
  JAL zero, bb66
bb172:
  LA s7, ii
  LW s7, 0(s7)
  SLLIW s8, s7, 2
  LA s9, get2
  ADD s8, s9, s8
  LD t4, 184(sp)
  LW s9, 0(t4)
  SW s9, 0(s8)
  ADDIW s7, s7, 1
  LA s8, ii
  SW s7, 0(s8)
  LB t3, 20(sp)
  ADD t4, t3, zero
  SB t4, 48(sp)
  LB t3, 21(sp)
  ADD t4, t3, zero
  SB t4, 47(sp)
  LB t3, 86(sp)
  ADD t4, t3, zero
  SB t4, 46(sp)
  LB t3, 85(sp)
  ADD t4, t3, zero
  SB t4, 45(sp)
  LB t3, 84(sp)
  ADD t4, t3, zero
  SB t4, 44(sp)
  LB t3, 83(sp)
  ADD t4, t3, zero
  SB t4, 43(sp)
  LB t3, 82(sp)
  ADD t4, t3, zero
  SB t4, 42(sp)
  LB t3, 81(sp)
  ADD t4, t3, zero
  SB t4, 41(sp)
  LB t3, 80(sp)
  ADD t4, t3, zero
  SB t4, 40(sp)
  LB t3, 79(sp)
  ADD t4, t3, zero
  SB t4, 39(sp)
  LB t4, 78(sp)
  ADD s10, t4, zero
  LB t4, 77(sp)
  ADD s11, t4, zero
  LB t4, 76(sp)
  ADD s1, t4, zero
  LB t4, 75(sp)
  ADD s4, t4, zero
  LB t4, 62(sp)
  ADD s5, t4, zero
  LB t4, 38(sp)
  ADD s6, t4, zero
  LB t4, 24(sp)
  ADD s2, t4, zero
  LB t4, 23(sp)
  ADD s0, t4, zero
  LB t4, 22(sp)
  ADD s3, t4, zero
  JAL zero, bb79
bb173:
  ADDI s6, zero, 1
  JAL zero, bb64
bb174:
  ADDI s7, zero, 57
  SLT s7, s7, s9
  XORI s7, s7, 1
  ADD s6, s7, zero
  JAL zero, bb62
bb175:
  LW t4, 128(sp)
  SLLIW s0, t4, 2
  LA s1, get
  ADD s0, s1, s0
  LW t4, 116(sp)
  SW t4, 0(s0)
  LW t4, 128(sp)
  ADDIW s0, t4, 1
  CALL getch
  ADD t4, s0, zero
  SW t4, 124(sp)
  ADD t4, a0, zero
  SW t4, 120(sp)
  JAL zero, bb1
bb176:
  LW t4, 116(sp)
  XORI s9, t4, 10
  SLTU s9, zero, s9
  ADD s6, s9, zero
  JAL zero, bb3
