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
  ADDI sp, sp, -544
  SD s7, 280(sp)
  SD s8, 288(sp)
  SD s9, 296(sp)
  SD s10, 304(sp)
  SD ra, 312(sp)
  SD s0, 320(sp)
  SD s1, 328(sp)
  SD s2, 336(sp)
  SD s3, 344(sp)
  SD s4, 352(sp)
  SD s5, 360(sp)
  SD s6, 368(sp)
  SD s11, 376(sp)
  LA s0, intt
  ADDI s1, zero, 0
  SW s1, 0(s0)
  LA s0, chat
  ADDI s1, zero, 0
  SW s1, 0(s0)
  CALL getch
  ADD s1, a0, zero
  ADD s2, zero, zero
  # implict jump to bb1
bb1:
  SW s2, 152(sp)
  XORI s0, s1, 13
  BNE s0, zero, bb176
  # implict jump to bb2
bb2:
  ADD s0, zero, zero
  # implict jump to bb3
bb3:
  BNE s0, zero, bb175
  # implict jump to bb4
bb4:
  LA a0, i
  LW a0, 0(a0)
  LW s0, 152(sp)
  BLT a0, s0, bb59
  # implict jump to bb5
bb5:
  LA a0, chat
  LW a0, 0(a0)
  BLT zero, a0, bb58
  # implict jump to bb6
bb6:
  LA a0, ii
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LA s0, get2
  ADD a0, s0, a0
  ADDI s0, zero, 64
  SW s0, 0(a0)
  LA a0, i
  ADDI s0, zero, 1
  SW s0, 0(a0)
  LA a0, get2
  LW a0, 4(a0)
  XORI a0, a0, 64
  BNE a0, zero, bb8
  # implict jump to bb7
bb7:
  LA a0, ints
  LW a0, 4(a0)
  CALL putint
  ADD a0, zero, zero
  LD s7, 280(sp)
  LD s8, 288(sp)
  LD s9, 296(sp)
  LD s10, 304(sp)
  LD ra, 312(sp)
  LD s0, 320(sp)
  LD s1, 328(sp)
  LD s2, 336(sp)
  LD s3, 344(sp)
  LD s4, 352(sp)
  LD s5, 360(sp)
  LD s6, 368(sp)
  LD s11, 376(sp)
  ADDI sp, sp, 544
  JALR zero, 0(ra)
bb8:
  ADD a0, zero, zero
  ADD s4, zero, zero
  ADD s3, zero, zero
  # implict jump to bb9
bb9:
  LA s0, i
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s1, get2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 43
  SLTIU s0, s0, 1
  BNE s0, zero, bb57
  # implict jump to bb10
bb10:
  LA s0, i
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s1, get2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 45
  SLTIU s0, s0, 1
  # implict jump to bb11
bb11:
  BNE s0, zero, bb56
  # implict jump to bb12
bb12:
  LA s0, i
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s1, get2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 42
  SLTIU s0, s0, 1
  # implict jump to bb13
bb13:
  BNE s0, zero, bb55
  # implict jump to bb14
bb14:
  LA s0, i
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s1, get2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 47
  SLTIU s0, s0, 1
  # implict jump to bb15
bb15:
  BNE s0, zero, bb54
  # implict jump to bb16
bb16:
  LA s0, i
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s1, get2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 37
  SLTIU s0, s0, 1
  # implict jump to bb17
bb17:
  BNE s0, zero, bb53
  # implict jump to bb18
bb18:
  LA s0, i
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s1, get2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 94
  SLTIU s0, s0, 1
  # implict jump to bb19
bb19:
  BNE s0, zero, bb28
  # implict jump to bb20
bb20:
  LA s0, i
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s1, get2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 32
  BNE s0, zero, bb24
  # implict jump to bb21
bb21:
  # implict jump to bb22
bb22:
  LA s1, i
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s5, i
  SW s1, 0(s5)
  SLLIW s1, s1, 2
  LA s5, get2
  ADD s1, s5, s1
  LW s1, 0(s1)
  XORI s1, s1, 64
  BNE s1, zero, bb23
  JAL zero, bb7
bb23:
  JAL zero, bb9
bb24:
  LA s0, i
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s1, get2
  ADD s0, s1, s0
  LW s0, 0(s0)
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  LA s1, intt
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, intt
  SW s1, 0(s2)
  SLLIW s1, s1, 2
  LA s2, ints
  ADD s1, s2, s1
  SW s0, 0(s1)
  LA s0, ii
  ADDI s2, zero, 1
  SW s2, 0(s0)
  LA s0, i
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  SLLIW s0, s0, 2
  LA s2, get2
  ADD s0, s2, s0
  LW s0, 0(s0)
  XORI s0, s0, 32
  BNE s0, zero, bb26
  # implict jump to bb25
bb25:
  LA s0, i
  LW s0, 0(s0)
  LA s1, ii
  LW s1, 0(s1)
  ADDW s0, s0, s1
  ADDI s1, zero, 1
  SUBW s0, s0, s1
  LA s1, i
  SW s0, 0(s1)
  JAL zero, bb21
bb26:
  LA s0, i
  LW s0, 0(s0)
  # implict jump to bb27
bb27:
  LA s2, ii
  LW s2, 0(s2)
  ADDW s2, s0, s2
  SLLIW s2, s2, 2
  LA s5, get2
  ADD s2, s5, s2
  LW s2, 0(s2)
  ADDI s5, zero, 48
  SUBW s2, s2, s5
  LW s5, 0(s1)
  ADDI s6, zero, 10
  MULW s5, s5, s6
  SW s5, 0(s1)
  ADDW s2, s5, s2
  SW s2, 0(s1)
  LA s2, ii
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s5, ii
  SW s2, 0(s5)
  LA s5, i
  LW s5, 0(s5)
  ADDW s2, s5, s2
  SLLIW s2, s2, 2
  LA s5, get2
  ADD s2, s5, s2
  LW s2, 0(s2)
  XORI s2, s2, 32
  BNE s2, zero, bb27
  JAL zero, bb25
bb28:
  LA s0, intt
  LW s1, 0(s0)
  ADDI s0, zero, 1
  SUBW s2, s1, s0
  LA s0, intt
  SW s2, 0(s0)
  SLLIW s0, s1, 2
  LA s3, ints
  ADD s0, s3, s0
  LW s3, 0(s0)
  ADDI s4, zero, 2
  SUBW s1, s1, s4
  LA s4, intt
  SW s1, 0(s4)
  SLLIW s1, s2, 2
  LA s2, ints
  ADD s1, s2, s1
  LW s4, 0(s1)
  LA s2, i
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LA s5, get2
  ADD s2, s5, s2
  LW s2, 0(s2)
  XORI s2, s2, 43
  SLTIU s2, s2, 1
  BNE s2, zero, bb52
  # implict jump to bb29
bb29:
  # implict jump to bb30
bb30:
  LA s2, i
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LA s5, get2
  ADD s2, s5, s2
  LW s2, 0(s2)
  XORI s2, s2, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb51
  # implict jump to bb31
bb31:
  # implict jump to bb32
bb32:
  LA s2, i
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LA s5, get2
  ADD s2, s5, s2
  LW s2, 0(s2)
  XORI s2, s2, 42
  SLTIU s2, s2, 1
  BNE s2, zero, bb50
  # implict jump to bb33
bb33:
  # implict jump to bb34
bb34:
  LA s2, i
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LA s5, get2
  ADD s2, s5, s2
  LW s2, 0(s2)
  XORI s2, s2, 47
  SLTIU s2, s2, 1
  BNE s2, zero, bb49
  # implict jump to bb35
bb35:
  # implict jump to bb36
bb36:
  LA s2, i
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LA s5, get2
  ADD s2, s5, s2
  LW s2, 0(s2)
  XORI s2, s2, 37
  SLTIU s2, s2, 1
  BNE s2, zero, bb48
  # implict jump to bb37
bb37:
  # implict jump to bb38
bb38:
  LA s2, i
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LA s5, get2
  ADD s2, s5, s2
  LW s2, 0(s2)
  XORI s2, s2, 94
  SLTIU s2, s2, 1
  BNE s2, zero, bb41
  # implict jump to bb39
bb39:
  # implict jump to bb40
bb40:
  LA s2, intt
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s5, intt
  SW s2, 0(s5)
  SLLIW s2, s2, 2
  LA s5, ints
  ADD s2, s5, s2
  SW a0, 0(s2)
  JAL zero, bb22
bb41:
  BNE s3, zero, bb44
  # implict jump to bb42
bb42:
  ADDI a0, zero, 1
  # implict jump to bb43
bb43:
  JAL zero, bb40
bb44:
  ADD s2, s3, zero
  ADDI a0, zero, 1
  # implict jump to bb45
bb45:
  MULW a0, a0, s4
  ADDI s5, zero, 1
  SUBW s2, s2, s5
  BNE s2, zero, bb47
  # implict jump to bb46
bb46:
  JAL zero, bb43
bb47:
  JAL zero, bb45
bb48:
  REMW a0, s4, s3
  JAL zero, bb38
bb49:
  DIVW a0, s4, s3
  JAL zero, bb36
bb50:
  MULW a0, s3, s4
  JAL zero, bb34
bb51:
  SUBW a0, s4, s3
  JAL zero, bb32
bb52:
  ADDW a0, s3, s4
  JAL zero, bb30
bb53:
  ADDI s0, zero, 1
  JAL zero, bb19
bb54:
  ADDI s0, zero, 1
  JAL zero, bb17
bb55:
  ADDI s0, zero, 1
  JAL zero, bb15
bb56:
  ADDI s0, zero, 1
  JAL zero, bb13
bb57:
  ADDI s0, zero, 1
  JAL zero, bb11
bb58:
  LA a0, chat
  LW a0, 0(a0)
  ADDI s0, zero, 1
  SUBW s0, a0, s0
  LA s1, chat
  SW s0, 0(s1)
  SLLIW a0, a0, 2
  LA s0, chas
  ADD a0, s0, a0
  LW a0, 0(a0)
  LA s0, ii
  LW s0, 0(s0)
  SLLIW s1, s0, 2
  LA s2, get2
  ADD s1, s2, s1
  ADDI s2, zero, 32
  SW s2, 0(s1)
  ADDIW s1, s0, 1
  SLLIW s1, s1, 2
  LA s2, get2
  ADD s1, s2, s1
  SW a0, 0(s1)
  ADDIW a0, s0, 2
  LA s0, ii
  SW a0, 0(s0)
  JAL zero, bb5
bb59:
  SW a0, 156(sp)
  ADD a0, zero, zero
  SB a0, 65(sp)
  ADD a0, zero, zero
  SB a0, 105(sp)
  ADD a0, zero, zero
  SB a0, 103(sp)
  ADD a0, zero, zero
  SB a0, 93(sp)
  ADD a0, zero, zero
  SB a0, 92(sp)
  ADD a0, zero, zero
  SB a0, 9(sp)
  ADD a0, zero, zero
  SB a0, 20(sp)
  ADD a0, zero, zero
  SB a0, 91(sp)
  ADD a0, zero, zero
  SB a0, 76(sp)
  ADD a0, zero, zero
  SB a0, 6(sp)
  ADD s6, zero, zero
  ADD a0, zero, zero
  SB a0, 21(sp)
  ADD a0, zero, zero
  ADD s8, zero, zero
  ADD s4, zero, zero
  ADD s9, zero, zero
  ADD s2, zero, zero
  ADD s1, zero, zero
  ADD s5, zero, zero
  # implict jump to bb60
bb60:
  SB s5, 68(sp)
  SB s1, 66(sp)
  SB s2, 107(sp)
  SB s4, 87(sp)
  LB s0, 21(sp)
  SB s0, 106(sp)
  SB s6, 104(sp)
  LB s2, 6(sp)
  LB s0, 76(sp)
  SB s0, 76(sp)
  LB s0, 76(sp)
  SB s0, 102(sp)
  LB s0, 91(sp)
  SB s0, 101(sp)
  LB s0, 20(sp)
  SB s0, 100(sp)
  LB s0, 9(sp)
  SB s0, 97(sp)
  LB s0, 97(sp)
  SB s0, 97(sp)
  LB s0, 92(sp)
  SB s0, 99(sp)
  LB s0, 93(sp)
  SB s0, 41(sp)
  LB s0, 103(sp)
  SB s0, 96(sp)
  LB s0, 105(sp)
  LB s1, 65(sp)
  LW s6, 156(sp)
  SLLIW s7, s6, 2
  LA s6, get
  ADD s6, s6, s7
  LW s3, 0(s6)
  SW s3, 160(sp)
  LW s3, 160(sp)
  SLTI s6, s3, 48
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
  LW s3, 160(sp)
  XORI s6, s3, 40
  SLTIU s6, s6, 1
  BNE s6, zero, bb171
  # implict jump to bb66
bb66:
  LW s3, 160(sp)
  XORI s6, s3, 94
  SLTIU s6, s6, 1
  BNE s6, zero, bb170
  # implict jump to bb67
bb67:
  LW s3, 160(sp)
  XORI s6, s3, 41
  SLTIU s6, s6, 1
  BNE s6, zero, bb168
  # implict jump to bb68
bb68:
  LW s3, 160(sp)
  XORI s6, s3, 43
  SLTIU s6, s6, 1
  BNE s6, zero, bb147
  # implict jump to bb69
bb69:
  # implict jump to bb70
bb70:
  SB s1, 78(sp)
  SB s0, 79(sp)
  SB s2, 80(sp)
  SB a0, 81(sp)
  ADD a0, s9, zero
  SB a0, 82(sp)
  LW a0, 160(sp)
  XORI a0, a0, 45
  SLTIU a0, a0, 1
  BNE a0, zero, bb126
  # implict jump to bb71
bb71:
  ADD a0, s8, zero
  LB s6, 97(sp)
  LB s7, 99(sp)
  LB s8, 41(sp)
  LB s3, 96(sp)
  # implict jump to bb72
bb72:
  SB s3, 69(sp)
  SB s8, 70(sp)
  SB s7, 71(sp)
  SB s6, 73(sp)
  SB a0, 61(sp)
  LW a0, 160(sp)
  XORI a0, a0, 42
  SLTIU a0, a0, 1
  BNE a0, zero, bb111
  # implict jump to bb73
bb73:
  LB s11, 104(sp)
  LB s7, 101(sp)
  LB a0, 100(sp)
  # implict jump to bb74
bb74:
  SB a0, 67(sp)
  SB s7, 2(sp)
  LW a0, 160(sp)
  XORI a0, a0, 47
  SLTIU a0, a0, 1
  BNE a0, zero, bb96
  # implict jump to bb75
bb75:
  LB s7, 87(sp)
  LB a0, 106(sp)
  LB s8, 102(sp)
  # implict jump to bb76
bb76:
  SB s8, 5(sp)
  SB s7, 4(sp)
  LW s0, 160(sp)
  XORI s7, s0, 37
  SLTIU s7, s7, 1
  BNE s7, zero, bb81
  # implict jump to bb77
bb77:
  LB s7, 68(sp)
  LB s8, 66(sp)
  LB s0, 107(sp)
  SB s0, 30(sp)
  # implict jump to bb78
bb78:
  LB s0, 30(sp)
  SB s0, 8(sp)
  LA s0, ii
  SD s0, 488(sp)
  LD s0, 488(sp)
  LW s0, 0(s0)
  SW s0, 264(sp)
  LW s0, 264(sp)
  SLLIW s0, s0, 2
  SW s0, 272(sp)
  LA s0, get2
  SD s0, 480(sp)
  LD s0, 480(sp)
  LW s1, 272(sp)
  ADD s0, s0, s1
  SD s0, 536(sp)
  ADDI s0, zero, 32
  SW s0, 116(sp)
  LW s0, 116(sp)
  LD s1, 536(sp)
  SW s0, 0(s1)
  LW s0, 264(sp)
  ADDIW s0, s0, 1
  SW s0, 224(sp)
  LA s0, ii
  SD s0, 472(sp)
  LD s0, 472(sp)
  LW s1, 224(sp)
  SW s1, 0(s0)
  SB s7, 90(sp)
  SB s8, 89(sp)
  LB s0, 8(sp)
  SB s0, 88(sp)
  LB s0, 82(sp)
  SB s0, 94(sp)
  LB s0, 4(sp)
  SB s0, 95(sp)
  LB s0, 61(sp)
  SB s0, 98(sp)
  LB s0, 81(sp)
  SB s0, 28(sp)
  LB s0, 80(sp)
  SB s0, 38(sp)
  LB s0, 5(sp)
  SB s0, 39(sp)
  LB s0, 2(sp)
  SB s0, 40(sp)
  LB s8, 67(sp)
  LB s0, 73(sp)
  SB s0, 29(sp)
  LB s6, 71(sp)
  LB s7, 70(sp)
  LB s3, 69(sp)
  LB s0, 79(sp)
  LB s1, 78(sp)
  # implict jump to bb79
bb79:
  SB s1, 58(sp)
  SB s0, 57(sp)
  SB s3, 56(sp)
  SB s7, 55(sp)
  SB s6, 83(sp)
  LB s0, 29(sp)
  SB s8, 86(sp)
  LB s1, 40(sp)
  SB s1, 54(sp)
  LB s1, 39(sp)
  SB s1, 76(sp)
  LB s1, 38(sp)
  SB s1, 6(sp)
  ADD s6, s11, zero
  SB a0, 85(sp)
  LB a0, 28(sp)
  SB a0, 84(sp)
  LB a0, 98(sp)
  SB a0, 77(sp)
  LB s4, 95(sp)
  LB a0, 94(sp)
  SB a0, 64(sp)
  LB a0, 88(sp)
  SB a0, 75(sp)
  LB a0, 89(sp)
  SB a0, 74(sp)
  LB a0, 90(sp)
  SB a0, 72(sp)
  LA s10, i
  LW s10, 0(s10)
  ADDIW a0, s10, 1
  SW a0, 144(sp)
  LA s10, i
  LW a0, 144(sp)
  SW a0, 0(s10)
  LW a0, 152(sp)
  LW s1, 144(sp)
  BLT s1, a0, bb80
  JAL zero, bb5
bb80:
  LW a0, 144(sp)
  SW a0, 156(sp)
  LB a0, 58(sp)
  SB a0, 65(sp)
  LB a0, 57(sp)
  SB a0, 105(sp)
  LB a0, 56(sp)
  SB a0, 103(sp)
  LB a0, 55(sp)
  SB a0, 93(sp)
  LB a0, 83(sp)
  SB a0, 92(sp)
  SB s0, 9(sp)
  LB a0, 86(sp)
  SB a0, 20(sp)
  LB a0, 54(sp)
  SB a0, 91(sp)
  LB a0, 76(sp)
  SB a0, 76(sp)
  LB a0, 6(sp)
  SB a0, 6(sp)
  LB a0, 85(sp)
  SB a0, 21(sp)
  LB a0, 84(sp)
  LB s8, 77(sp)
  LB s0, 64(sp)
  ADD s9, s0, zero
  LB s2, 75(sp)
  LB s1, 74(sp)
  LB s5, 72(sp)
  JAL zero, bb60
bb81:
  LA s7, chat
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  LA s8, chas
  ADD s7, s8, s7
  LW s0, 0(s7)
  SW s0, 268(sp)
  LW s0, 268(sp)
  XORI s7, s0, 42
  SLTIU s7, s7, 1
  BNE s7, zero, bb95
  # implict jump to bb82
bb82:
  LW s0, 268(sp)
  XORI s7, s0, 47
  SLTIU s7, s7, 1
  # implict jump to bb83
bb83:
  BNE s7, zero, bb94
  # implict jump to bb84
bb84:
  LW s0, 268(sp)
  XORI s8, s0, 37
  SLTIU s8, s8, 1
  # implict jump to bb85
bb85:
  SB s8, 14(sp)
  LB s0, 14(sp)
  BNE s0, zero, bb93
  # implict jump to bb86
bb86:
  LW s0, 268(sp)
  XORI s8, s0, 94
  SLTIU s8, s8, 1
  # implict jump to bb87
bb87:
  SB s8, 15(sp)
  LB s0, 15(sp)
  BNE s0, zero, bb89
  # implict jump to bb88
bb88:
  LA s8, chat
  LW s8, 0(s8)
  ADDIW s0, s8, 1
  SW s0, 188(sp)
  LA s8, chat
  LW s0, 188(sp)
  SW s0, 0(s8)
  LW s0, 188(sp)
  SLLIW s0, s0, 2
  SW s0, 184(sp)
  LA s8, chas
  LW s0, 184(sp)
  ADD s0, s8, s0
  SD s0, 504(sp)
  ADDI s8, zero, 37
  LD s0, 504(sp)
  SW s8, 0(s0)
  LB s8, 14(sp)
  LB s0, 15(sp)
  SB s0, 30(sp)
  JAL zero, bb78
bb89:
  LA s8, chat
  LW s0, 0(s8)
  SW s0, 220(sp)
  ADDI s8, zero, 1
  LW s0, 220(sp)
  SUBW s8, s0, s8
  LA s0, chat
  SD s0, 464(sp)
  LD s0, 464(sp)
  SW s8, 0(s0)
  LW s0, 220(sp)
  SLLIW s0, s0, 2
  SW s0, 216(sp)
  LA s0, chas
  SD s0, 384(sp)
  LD s0, 384(sp)
  LW s1, 216(sp)
  ADD s0, s0, s1
  SD s0, 528(sp)
  LD s0, 528(sp)
  LW s0, 0(s0)
  SW s0, 212(sp)
  LA s0, c
  SD s0, 448(sp)
  LD s0, 448(sp)
  LW s1, 212(sp)
  SW s1, 0(s0)
  LA s0, ii
  SD s0, 440(sp)
  LD s0, 440(sp)
  LW s0, 0(s0)
  SW s0, 208(sp)
  LW s0, 208(sp)
  SLLIW s0, s0, 2
  SW s0, 204(sp)
  LA s0, get2
  SD s0, 400(sp)
  LD s0, 400(sp)
  LW s1, 204(sp)
  ADD s0, s0, s1
  SD s0, 520(sp)
  ADDI s0, zero, 32
  SW s0, 112(sp)
  LW s0, 112(sp)
  LD s1, 520(sp)
  SW s0, 0(s1)
  LW s0, 208(sp)
  ADDIW s0, s0, 1
  SW s0, 200(sp)
  LW s0, 200(sp)
  SLLIW s0, s0, 2
  SW s0, 196(sp)
  LA s0, get2
  SD s0, 392(sp)
  LD s0, 392(sp)
  LW s1, 196(sp)
  ADD s0, s0, s1
  SD s0, 512(sp)
  LD s0, 512(sp)
  LW s1, 212(sp)
  SW s1, 0(s0)
  LW s0, 208(sp)
  ADDIW s0, s0, 2
  SW s0, 192(sp)
  LA s0, ii
  SD s0, 416(sp)
  LD s0, 416(sp)
  LW s1, 192(sp)
  SW s1, 0(s0)
  SLTIU s8, s8, 1
  BNE s8, zero, bb92
  # implict jump to bb90
bb90:
  ADDI s8, zero, 1
  # implict jump to bb91
bb91:
  SLTIU s8, s8, 1
  BNE s8, zero, bb88
  JAL zero, bb81
bb92:
  ADD s8, zero, zero
  JAL zero, bb91
bb93:
  ADDI s8, zero, 1
  JAL zero, bb87
bb94:
  ADDI s8, zero, 1
  JAL zero, bb85
bb95:
  ADDI s7, zero, 1
  JAL zero, bb83
bb96:
  LA a0, chat
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LA s7, chas
  ADD a0, s7, a0
  LW s8, 0(a0)
  XORI a0, s8, 42
  SLTIU a0, a0, 1
  BNE a0, zero, bb110
  # implict jump to bb97
bb97:
  XORI a0, s8, 47
  SLTIU s7, a0, 1
  # implict jump to bb98
bb98:
  BNE s7, zero, bb109
  # implict jump to bb99
bb99:
  XORI a0, s8, 37
  SLTIU a0, a0, 1
  # implict jump to bb100
bb100:
  SB a0, 7(sp)
  LB a0, 7(sp)
  BNE a0, zero, bb108
  # implict jump to bb101
bb101:
  XORI a0, s8, 94
  SLTIU a0, a0, 1
  # implict jump to bb102
bb102:
  BNE a0, zero, bb104
  # implict jump to bb103
bb103:
  LA s8, chat
  LW s8, 0(s8)
  ADDIW s0, s8, 1
  SW s0, 256(sp)
  LA s8, chat
  LW s0, 256(sp)
  SW s0, 0(s8)
  LW s0, 256(sp)
  SLLIW s0, s0, 2
  SW s0, 260(sp)
  LA s8, chas
  LW s0, 260(sp)
  ADD s0, s8, s0
  SD s0, 456(sp)
  ADDI s8, zero, 47
  LD s0, 456(sp)
  SW s8, 0(s0)
  LB s8, 7(sp)
  JAL zero, bb76
bb104:
  LA s8, chat
  LW s0, 0(s8)
  SW s0, 164(sp)
  ADDI s8, zero, 1
  LW s0, 164(sp)
  SUBW s0, s0, s8
  SW s0, 228(sp)
  LA s8, chat
  LW s0, 228(sp)
  SW s0, 0(s8)
  LW s0, 164(sp)
  SLLIW s0, s0, 2
  SW s0, 236(sp)
  LA s8, chas
  LW s0, 236(sp)
  ADD s8, s8, s0
  LW s0, 0(s8)
  SW s0, 240(sp)
  LA s8, c
  LW s0, 240(sp)
  SW s0, 0(s8)
  LA s8, ii
  LW s0, 0(s8)
  SW s0, 244(sp)
  LW s0, 244(sp)
  SLLIW s8, s0, 2
  LA s0, get2
  SD s0, 496(sp)
  LD s0, 496(sp)
  ADD s8, s0, s8
  ADDI s0, zero, 32
  SW s0, 168(sp)
  LW s0, 168(sp)
  SW s0, 0(s8)
  LW s0, 244(sp)
  ADDIW s8, s0, 1
  SLLIW s0, s8, 2
  SW s0, 248(sp)
  LA s8, get2
  LW s0, 248(sp)
  ADD s8, s8, s0
  LW s0, 240(sp)
  SW s0, 0(s8)
  LW s0, 244(sp)
  ADDIW s0, s0, 2
  SW s0, 252(sp)
  LA s8, ii
  LW s0, 252(sp)
  SW s0, 0(s8)
  LW s0, 228(sp)
  SLTIU s8, s0, 1
  BNE s8, zero, bb107
  # implict jump to bb105
bb105:
  ADDI s8, zero, 1
  # implict jump to bb106
bb106:
  SLTIU s8, s8, 1
  BNE s8, zero, bb103
  JAL zero, bb96
bb107:
  ADD s8, zero, zero
  JAL zero, bb106
bb108:
  ADDI a0, zero, 1
  JAL zero, bb102
bb109:
  ADDI a0, zero, 1
  JAL zero, bb100
bb110:
  ADDI s7, zero, 1
  JAL zero, bb98
bb111:
  LA a0, chat
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LA s6, chas
  ADD a0, s6, a0
  LW s7, 0(a0)
  XORI a0, s7, 42
  SLTIU a0, a0, 1
  BNE a0, zero, bb125
  # implict jump to bb112
bb112:
  XORI a0, s7, 47
  SLTIU s11, a0, 1
  # implict jump to bb113
bb113:
  BNE s11, zero, bb124
  # implict jump to bb114
bb114:
  XORI s6, s7, 37
  SLTIU s6, s6, 1
  # implict jump to bb115
bb115:
  SB s6, 3(sp)
  LB a0, 3(sp)
  BNE a0, zero, bb123
  # implict jump to bb116
bb116:
  XORI s6, s7, 94
  SLTIU s7, s6, 1
  # implict jump to bb117
bb117:
  BNE s7, zero, bb119
  # implict jump to bb118
bb118:
  LA s8, chat
  LW s8, 0(s8)
  ADDIW s8, s8, 1
  LA s9, chat
  SW s8, 0(s9)
  SLLIW s8, s8, 2
  LA s9, chas
  ADD s8, s9, s8
  ADDI s9, zero, 42
  SW s9, 0(s8)
  LB a0, 3(sp)
  JAL zero, bb74
bb119:
  LA s8, chat
  LW s8, 0(s8)
  ADDI s9, zero, 1
  SUBW a0, s8, s9
  SW a0, 108(sp)
  LA s9, chat
  LW a0, 108(sp)
  SW a0, 0(s9)
  SLLIW s8, s8, 2
  LA s9, chas
  ADD s8, s9, s8
  LW a0, 0(s8)
  SW a0, 120(sp)
  LA s8, c
  LW a0, 120(sp)
  SW a0, 0(s8)
  LA s8, ii
  LW a0, 0(s8)
  SW a0, 232(sp)
  LW a0, 232(sp)
  SLLIW s8, a0, 2
  LA s9, get2
  ADD s8, s9, s8
  ADDI s9, zero, 32
  SW s9, 0(s8)
  LW a0, 232(sp)
  ADDIW s8, a0, 1
  SLLIW s8, s8, 2
  LA s9, get2
  ADD s8, s9, s8
  LW a0, 120(sp)
  SW a0, 0(s8)
  LW a0, 232(sp)
  ADDIW s8, a0, 2
  LA s9, ii
  SW s8, 0(s9)
  LW a0, 108(sp)
  SLTIU s8, a0, 1
  BNE s8, zero, bb122
  # implict jump to bb120
bb120:
  ADDI s8, zero, 1
  # implict jump to bb121
bb121:
  SLTIU s8, s8, 1
  BNE s8, zero, bb118
  JAL zero, bb111
bb122:
  ADD s8, zero, zero
  JAL zero, bb121
bb123:
  ADDI s7, zero, 1
  JAL zero, bb117
bb124:
  ADDI s6, zero, 1
  JAL zero, bb115
bb125:
  ADDI s11, zero, 1
  JAL zero, bb113
bb126:
  LA a0, chat
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LA s3, chas
  ADD a0, s3, a0
  LW s4, 0(a0)
  XORI a0, s4, 43
  SLTIU a0, a0, 1
  BNE a0, zero, bb146
  # implict jump to bb127
bb127:
  XORI a0, s4, 45
  SLTIU a0, a0, 1
  # implict jump to bb128
bb128:
  SB a0, 16(sp)
  LB a0, 16(sp)
  BNE a0, zero, bb145
  # implict jump to bb129
bb129:
  XORI a0, s4, 42
  SLTIU a0, a0, 1
  # implict jump to bb130
bb130:
  BNE a0, zero, bb144
  # implict jump to bb131
bb131:
  XORI s3, s4, 47
  SLTIU s3, s3, 1
  # implict jump to bb132
bb132:
  SB s3, 1(sp)
  LB s0, 1(sp)
  BNE s0, zero, bb143
  # implict jump to bb133
bb133:
  XORI s3, s4, 37
  SLTIU s7, s3, 1
  # implict jump to bb134
bb134:
  BNE s7, zero, bb142
  # implict jump to bb135
bb135:
  XORI s4, s4, 94
  SLTIU s6, s4, 1
  # implict jump to bb136
bb136:
  BNE s6, zero, bb138
  # implict jump to bb137
bb137:
  LA s8, chat
  LW s8, 0(s8)
  ADDIW s8, s8, 1
  LA s9, chat
  SW s8, 0(s9)
  SLLIW s8, s8, 2
  LA s9, chas
  ADD s8, s9, s8
  ADDI s9, zero, 45
  SW s9, 0(s8)
  LB s8, 1(sp)
  LB s3, 16(sp)
  JAL zero, bb72
bb138:
  LA s8, chat
  LW s8, 0(s8)
  ADDI s9, zero, 1
  SUBW s9, s8, s9
  LA s10, chat
  SW s9, 0(s10)
  SLLIW s8, s8, 2
  LA s10, chas
  ADD s8, s10, s8
  LW s0, 0(s8)
  SW s0, 128(sp)
  LA s8, c
  LW s0, 128(sp)
  SW s0, 0(s8)
  LA s8, ii
  LW s0, 0(s8)
  SW s0, 124(sp)
  LW s0, 124(sp)
  SLLIW s8, s0, 2
  LA s10, get2
  ADD s8, s10, s8
  ADDI s10, zero, 32
  SW s10, 0(s8)
  LW s0, 124(sp)
  ADDIW s8, s0, 1
  SLLIW s8, s8, 2
  LA s10, get2
  ADD s8, s10, s8
  LW s0, 128(sp)
  SW s0, 0(s8)
  LW s0, 124(sp)
  ADDIW s8, s0, 2
  LA s10, ii
  SW s8, 0(s10)
  SLTIU s8, s9, 1
  BNE s8, zero, bb141
  # implict jump to bb139
bb139:
  ADDI s8, zero, 1
  # implict jump to bb140
bb140:
  SLTIU s8, s8, 1
  BNE s8, zero, bb137
  JAL zero, bb126
bb141:
  ADD s8, zero, zero
  JAL zero, bb140
bb142:
  ADDI s6, zero, 1
  JAL zero, bb136
bb143:
  ADDI s7, zero, 1
  JAL zero, bb134
bb144:
  ADDI s3, zero, 1
  JAL zero, bb132
bb145:
  ADDI a0, zero, 1
  JAL zero, bb130
bb146:
  ADDI a0, zero, 1
  JAL zero, bb128
bb147:
  LA a0, chat
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LA s0, chas
  ADD a0, s0, a0
  LW s5, 0(a0)
  XORI a0, s5, 43
  SLTIU a0, a0, 1
  BNE a0, zero, bb167
  # implict jump to bb148
bb148:
  XORI a0, s5, 45
  SLTIU s2, a0, 1
  # implict jump to bb149
bb149:
  BNE s2, zero, bb166
  # implict jump to bb150
bb150:
  XORI a0, s5, 42
  SLTIU a0, a0, 1
  # implict jump to bb151
bb151:
  SB a0, 59(sp)
  LB a0, 59(sp)
  BNE a0, zero, bb165
  # implict jump to bb152
bb152:
  XORI a0, s5, 47
  SLTIU a0, a0, 1
  # implict jump to bb153
bb153:
  ADD s9, a0, zero
  BNE s9, zero, bb164
  # implict jump to bb154
bb154:
  XORI a0, s5, 37
  SLTIU a0, a0, 1
  # implict jump to bb155
bb155:
  SB a0, 60(sp)
  LB a0, 60(sp)
  BNE a0, zero, bb163
  # implict jump to bb156
bb156:
  XORI a0, s5, 94
  SLTIU a0, a0, 1
  # implict jump to bb157
bb157:
  BNE a0, zero, bb159
  # implict jump to bb158
bb158:
  LA s5, chat
  LW s5, 0(s5)
  ADDIW s6, s5, 1
  LA s5, chat
  SW s6, 0(s5)
  SLLIW s6, s6, 2
  LA s5, chas
  ADD s6, s5, s6
  ADDI s5, zero, 43
  SW s5, 0(s6)
  LB s0, 59(sp)
  LB s1, 60(sp)
  JAL zero, bb70
bb159:
  LA s5, chat
  LW s6, 0(s5)
  ADDI s5, zero, 1
  SUBW s0, s6, s5
  SW s0, 140(sp)
  LA s5, chat
  LW s0, 140(sp)
  SW s0, 0(s5)
  SLLIW s6, s6, 2
  LA s5, chas
  ADD s5, s5, s6
  LW s6, 0(s5)
  LA s5, c
  SW s6, 0(s5)
  LA s5, ii
  LW s0, 0(s5)
  SW s0, 136(sp)
  LW s0, 136(sp)
  SLLIW s0, s0, 2
  SW s0, 132(sp)
  LA s5, get2
  LW s0, 132(sp)
  ADD s0, s5, s0
  SD s0, 408(sp)
  ADDI s5, zero, 32
  LD s0, 408(sp)
  SW s5, 0(s0)
  LW s0, 136(sp)
  ADDIW s5, s0, 1
  SLLIW s0, s5, 2
  SW s0, 148(sp)
  LA s5, get2
  LW s0, 148(sp)
  ADD s5, s5, s0
  SW s6, 0(s5)
  LW s0, 136(sp)
  ADDIW s6, s0, 2
  LA s5, ii
  SW s6, 0(s5)
  LW s0, 140(sp)
  SLTIU s5, s0, 1
  BNE s5, zero, bb162
  # implict jump to bb160
bb160:
  ADDI s5, zero, 1
  # implict jump to bb161
bb161:
  SLTIU s5, s5, 1
  BNE s5, zero, bb158
  JAL zero, bb147
bb162:
  ADD s5, zero, zero
  JAL zero, bb161
bb163:
  ADDI a0, zero, 1
  JAL zero, bb157
bb164:
  ADDI a0, zero, 1
  JAL zero, bb155
bb165:
  ADDI a0, zero, 1
  JAL zero, bb153
bb166:
  ADDI a0, zero, 1
  JAL zero, bb151
bb167:
  ADDI s2, zero, 1
  JAL zero, bb149
bb168:
  LA s6, chat
  LW s7, 0(s6)
  ADDI s6, zero, 1
  SUBW s10, s7, s6
  LA s6, chat
  SW s10, 0(s6)
  SLLIW s7, s7, 2
  LA s6, chas
  ADD s6, s6, s7
  LW s7, 0(s6)
  LA s6, c
  SW s7, 0(s6)
  XORI s6, s7, 40
  BNE s6, zero, bb169
  JAL zero, bb68
bb169:
  LA s6, ii
  LW s7, 0(s6)
  SLLIW s10, s7, 2
  LA s6, get2
  ADD s10, s6, s10
  ADDI s6, zero, 32
  SW s6, 0(s10)
  ADDIW s6, s7, 1
  SLLIW s10, s6, 2
  LA s6, get2
  ADD s10, s6, s10
  LA s6, c
  LW s6, 0(s6)
  SW s6, 0(s10)
  ADDIW s7, s7, 2
  LA s6, ii
  SW s7, 0(s6)
  LA s6, chat
  LW s7, 0(s6)
  ADDI s6, zero, 1
  SUBW s10, s7, s6
  LA s6, chat
  SW s10, 0(s6)
  SLLIW s7, s7, 2
  LA s6, chas
  ADD s6, s6, s7
  LW s7, 0(s6)
  LA s6, c
  SW s7, 0(s6)
  XORI s6, s7, 40
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
  ADD s7, s7, s6
  ADDI s6, zero, 94
  SW s6, 0(s7)
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
  LA s6, ii
  LW s10, 0(s6)
  SLLIW s7, s10, 2
  LA s6, get2
  ADD s6, s6, s7
  LW s3, 160(sp)
  SW s3, 0(s6)
  ADDIW s6, s10, 1
  LA s7, ii
  SW s6, 0(s7)
  LB s3, 68(sp)
  SB s3, 90(sp)
  LB s3, 66(sp)
  SB s3, 89(sp)
  LB s3, 107(sp)
  SB s3, 88(sp)
  ADD s3, s9, zero
  SB s3, 94(sp)
  LB s3, 87(sp)
  SB s3, 95(sp)
  ADD s3, s8, zero
  SB s3, 98(sp)
  SB a0, 28(sp)
  LB a0, 106(sp)
  LB s11, 104(sp)
  SB s2, 38(sp)
  LB s2, 102(sp)
  SB s2, 39(sp)
  LB s2, 101(sp)
  SB s2, 40(sp)
  LB s8, 100(sp)
  LB s2, 97(sp)
  SB s2, 29(sp)
  LB s6, 99(sp)
  LB s7, 41(sp)
  LB s3, 96(sp)
  JAL zero, bb79
bb173:
  ADDI s6, zero, 1
  JAL zero, bb64
bb174:
  ADDI s6, zero, 57
  LW s3, 160(sp)
  SLT s6, s6, s3
  XORI s6, s6, 1
  JAL zero, bb62
bb175:
  LW s0, 152(sp)
  SLLIW s0, s0, 2
  LA s2, get
  ADD s0, s2, s0
  SW s1, 0(s0)
  LW s0, 152(sp)
  ADDIW s2, s0, 1
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb1
bb176:
  XORI s0, s1, 10
  SLTU s0, zero, s0
  JAL zero, bb3
