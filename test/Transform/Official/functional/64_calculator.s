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
main:   # loop depth 0
  ADDI sp, sp, -1184
  SD ra, 496(sp)
  SD s0, 504(sp)
  SD s1, 512(sp)
  SD s2, 520(sp)
  SD s3, 528(sp)
  SD s4, 536(sp)
  SD s5, 544(sp)
  SD s6, 560(sp)
  SD s7, 568(sp)
  SD s8, 576(sp)
  SD s9, 584(sp)
  SD s10, 592(sp)
  SD s11, 600(sp)
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
bb1:   # loop depth 1
  SW s2, 316(sp)
  XORI s0, s1, 13
  BNE s0, zero, bb176
  # implict jump to bb2
bb2:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb3
bb3:   # loop depth 1
  BNE s0, zero, bb175
  # implict jump to bb4
bb4:   # loop depth 0
  LA a0, i
  LW a0, 0(a0)
  LW s0, 316(sp)
  BLT a0, s0, bb59
  # implict jump to bb5
bb5:   # loop depth 1
  LA a0, chat
  LW a0, 0(a0)
  BLT zero, a0, bb58
  # implict jump to bb6
bb6:   # loop depth 0
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
bb7:   # loop depth 0
  LA a0, ints
  LW a0, 4(a0)
  CALL putint
  ADD a0, zero, zero
  LD ra, 496(sp)
  LD s0, 504(sp)
  LD s1, 512(sp)
  LD s2, 520(sp)
  LD s3, 528(sp)
  LD s4, 536(sp)
  LD s5, 544(sp)
  LD s6, 560(sp)
  LD s7, 568(sp)
  LD s8, 576(sp)
  LD s9, 584(sp)
  LD s10, 592(sp)
  LD s11, 600(sp)
  ADDI sp, sp, 1184
  JALR zero, 0(ra)
bb8:   # loop depth 0
  ADD a0, zero, zero
  ADD s4, zero, zero
  ADD s3, zero, zero
  # implict jump to bb9
bb9:   # loop depth 1
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
bb10:   # loop depth 1
  LA s0, i
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s1, get2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 45
  SLTIU s0, s0, 1
  # implict jump to bb11
bb11:   # loop depth 1
  BNE s0, zero, bb56
  # implict jump to bb12
bb12:   # loop depth 1
  LA s0, i
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s1, get2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 42
  SLTIU s0, s0, 1
  # implict jump to bb13
bb13:   # loop depth 1
  BNE s0, zero, bb55
  # implict jump to bb14
bb14:   # loop depth 1
  LA s0, i
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s1, get2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 47
  SLTIU s0, s0, 1
  # implict jump to bb15
bb15:   # loop depth 1
  BNE s0, zero, bb54
  # implict jump to bb16
bb16:   # loop depth 1
  LA s0, i
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s1, get2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 37
  SLTIU s0, s0, 1
  # implict jump to bb17
bb17:   # loop depth 1
  BNE s0, zero, bb53
  # implict jump to bb18
bb18:   # loop depth 1
  LA s0, i
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s1, get2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 94
  SLTIU s0, s0, 1
  # implict jump to bb19
bb19:   # loop depth 1
  BNE s0, zero, bb28
  # implict jump to bb20
bb20:   # loop depth 1
  LA s0, i
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s1, get2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 32
  BNE s0, zero, bb24
  # implict jump to bb21
bb21:   # loop depth 1
  # implict jump to bb22
bb22:   # loop depth 1
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
bb23:   # loop depth 1434453424
  JAL zero, bb9
bb24:   # loop depth 1
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
bb25:   # loop depth 1
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
bb26:   # loop depth 1
  LA s0, i
  LW s0, 0(s0)
  # implict jump to bb27
bb27:   # loop depth 2
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
bb28:   # loop depth 1
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
bb29:   # loop depth 1434478544
  # implict jump to bb30
bb30:   # loop depth 1
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
bb31:   # loop depth 1434482448
  # implict jump to bb32
bb32:   # loop depth 1
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
bb33:   # loop depth 1434484528
  # implict jump to bb34
bb34:   # loop depth 1
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
bb35:   # loop depth 1434486608
  # implict jump to bb36
bb36:   # loop depth 1
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
bb37:   # loop depth 1434488688
  # implict jump to bb38
bb38:   # loop depth 1
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
bb39:   # loop depth 1434490768
  # implict jump to bb40
bb40:   # loop depth 1
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
bb41:   # loop depth 1
  BNE s3, zero, bb44
  # implict jump to bb42
bb42:   # loop depth 0
  ADDI a0, zero, 1
  # implict jump to bb43
bb43:   # loop depth 1
  JAL zero, bb40
bb44:   # loop depth 1
  ADD s2, s3, zero
  ADDI a0, zero, 1
  # implict jump to bb45
bb45:   # loop depth 2
  MULW a0, a0, s4
  ADDI s5, zero, 1
  SUBW s2, s2, s5
  BNE s2, zero, bb47
  # implict jump to bb46
bb46:   # loop depth 1434505344
  JAL zero, bb43
bb47:   # loop depth 1434493104
  JAL zero, bb45
bb48:   # loop depth 1
  REMW a0, s4, s3
  JAL zero, bb38
bb49:   # loop depth 1
  DIVW a0, s4, s3
  JAL zero, bb36
bb50:   # loop depth 1
  MULW a0, s3, s4
  JAL zero, bb34
bb51:   # loop depth 1
  SUBW a0, s4, s3
  JAL zero, bb32
bb52:   # loop depth 1
  ADDW a0, s3, s4
  JAL zero, bb30
bb53:   # loop depth 1
  ADDI s0, zero, 1
  JAL zero, bb19
bb54:   # loop depth 1
  ADDI s0, zero, 1
  JAL zero, bb17
bb55:   # loop depth 1
  ADDI s0, zero, 1
  JAL zero, bb15
bb56:   # loop depth 1
  ADDI s0, zero, 1
  JAL zero, bb13
bb57:   # loop depth 1
  ADDI s0, zero, 1
  JAL zero, bb11
bb58:   # loop depth 1
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
bb59:   # loop depth 0
  SW a0, 348(sp)
  ADD a0, zero, zero
  SB a0, 136(sp)
  ADD a0, zero, zero
  SB a0, 135(sp)
  ADD a0, zero, zero
  SB a0, 134(sp)
  ADD a0, zero, zero
  SB a0, 133(sp)
  ADD a0, zero, zero
  SB a0, 123(sp)
  ADD a0, zero, zero
  SB a0, 131(sp)
  ADD a0, zero, zero
  SB a0, 130(sp)
  ADD a0, zero, zero
  SB a0, 78(sp)
  ADD a0, zero, zero
  SB a0, 4(sp)
  ADD a0, zero, zero
  SB a0, 77(sp)
  ADD a0, zero, zero
  SB a0, 6(sp)
  ADD a0, zero, zero
  SB a0, 8(sp)
  ADD a0, zero, zero
  SB a0, 105(sp)
  ADD a0, zero, zero
  SB a0, 0(sp)
  ADD a0, zero, zero
  SB a0, 10(sp)
  ADD a0, zero, zero
  SB a0, 13(sp)
  ADD a0, zero, zero
  SB a0, 14(sp)
  ADD s0, zero, zero
  ADD a0, zero, zero
  # implict jump to bb60
bb60:   # loop depth 1
  SB a0, 39(sp)
  SB s0, 40(sp)
  LB a0, 14(sp)
  SB a0, 41(sp)
  LB a0, 13(sp)
  SB a0, 75(sp)
  LB a0, 75(sp)
  SB a0, 75(sp)
  LB a0, 10(sp)
  SB a0, 42(sp)
  LB a0, 0(sp)
  SB a0, 43(sp)
  LB a0, 105(sp)
  SB a0, 105(sp)
  LB a0, 8(sp)
  SB a0, 44(sp)
  LB a0, 6(sp)
  SB a0, 9(sp)
  LB a0, 77(sp)
  SB a0, 77(sp)
  LB a0, 4(sp)
  SB a0, 1(sp)
  LB a0, 78(sp)
  SB a0, 78(sp)
  LB s10, 130(sp)
  LB a0, 131(sp)
  SB a0, 104(sp)
  LB a0, 104(sp)
  SB a0, 104(sp)
  LB a0, 123(sp)
  SB a0, 3(sp)
  LB s3, 133(sp)
  LB s2, 134(sp)
  LB s1, 135(sp)
  LB s0, 136(sp)
  LW a0, 348(sp)
  SW a0, 432(sp)
  LW a0, 432(sp)
  SLLIW a0, a0, 2
  SW a0, 436(sp)
  LA a0, get
  SD a0, 672(sp)
  LD a0, 672(sp)
  LW s8, 436(sp)
  ADD a0, a0, s8
  SD a0, 736(sp)
  LD a0, 736(sp)
  LW a0, 0(a0)
  SW a0, 492(sp)
  LW a0, 492(sp)
  SLTI a0, a0, 48
  SB a0, 115(sp)
  LB a0, 115(sp)
  XORI a0, a0, 1
  SB a0, 71(sp)
  LB a0, 71(sp)
  BNE a0, zero, bb174
  # implict jump to bb61
bb61:   # loop depth 1
  ADD a0, zero, zero
  SB a0, 85(sp)
  # implict jump to bb62
bb62:   # loop depth 1
  LB a0, 85(sp)
  SB a0, 114(sp)
  LB a0, 114(sp)
  BNE a0, zero, bb173
  # implict jump to bb63
bb63:   # loop depth 1
  ADD a0, zero, zero
  SW a0, 352(sp)
  # implict jump to bb64
bb64:   # loop depth 1
  LW a0, 352(sp)
  SW a0, 440(sp)
  LW a0, 440(sp)
  XORI a0, a0, 1
  SW a0, 320(sp)
  LW a0, 320(sp)
  SLTIU a0, a0, 1
  SB a0, 69(sp)
  LB a0, 69(sp)
  BNE a0, zero, bb172
  # implict jump to bb65
bb65:   # loop depth 1
  LW a0, 492(sp)
  XORI a0, a0, 40
  SW a0, 324(sp)
  LW a0, 324(sp)
  SLTIU a0, a0, 1
  SB a0, 57(sp)
  LB a0, 57(sp)
  BNE a0, zero, bb171
  # implict jump to bb66
bb66:   # loop depth 1
  LW a0, 492(sp)
  XORI a0, a0, 94
  SW a0, 272(sp)
  LW a0, 272(sp)
  SLTIU a0, a0, 1
  SB a0, 16(sp)
  LB a0, 16(sp)
  BNE a0, zero, bb170
  # implict jump to bb67
bb67:   # loop depth 1
  LW a0, 492(sp)
  XORI a0, a0, 41
  SW a0, 332(sp)
  LW a0, 332(sp)
  SLTIU a0, a0, 1
  SB a0, 11(sp)
  LB a0, 11(sp)
  BNE a0, zero, bb168
  # implict jump to bb68
bb68:   # loop depth 1
  LW a0, 492(sp)
  XORI a0, a0, 43
  SW a0, 340(sp)
  LW a0, 340(sp)
  SLTIU a0, a0, 1
  SB a0, 5(sp)
  LB a0, 5(sp)
  BNE a0, zero, bb147
  # implict jump to bb69
bb69:   # loop depth 1434164560
  LB a0, 75(sp)
  SB a0, 75(sp)
  LB a0, 105(sp)
  SB a0, 105(sp)
  LB a0, 77(sp)
  SB a0, 77(sp)
  LB a0, 77(sp)
  SB a0, 38(sp)
  # implict jump to bb70
bb70:   # loop depth 1
  SB s0, 24(sp)
  SB s1, 25(sp)
  LB a0, 38(sp)
  SB a0, 26(sp)
  LB a0, 105(sp)
  SB a0, 105(sp)
  LB a0, 105(sp)
  SB a0, 18(sp)
  LB a0, 75(sp)
  SB a0, 75(sp)
  LB a0, 75(sp)
  SB a0, 28(sp)
  LW a0, 492(sp)
  XORI s9, a0, 45
  SLTIU s9, s9, 1
  BNE s9, zero, bb126
  # implict jump to bb71
bb71:   # loop depth 1434238400
  LB a0, 43(sp)
  SB a0, 36(sp)
  LB a0, 104(sp)
  SB a0, 104(sp)
  LB s9, 3(sp)
  # implict jump to bb72
bb72:   # loop depth 1
  SB s2, 108(sp)
  SB s3, 113(sp)
  SB s9, 119(sp)
  LB a0, 104(sp)
  SB a0, 104(sp)
  LB a0, 104(sp)
  SB a0, 99(sp)
  LB a0, 36(sp)
  SB a0, 63(sp)
  LW a0, 492(sp)
  XORI s7, a0, 42
  SLTIU s7, s7, 1
  BNE s7, zero, bb111
  # implict jump to bb73
bb73:   # loop depth 1434413216
  LB a0, 9(sp)
  SB a0, 46(sp)
  LB a0, 78(sp)
  SB a0, 78(sp)
  # implict jump to bb74
bb74:   # loop depth 1
  SB s10, 110(sp)
  LB a0, 78(sp)
  SB a0, 78(sp)
  LB a0, 46(sp)
  SB a0, 122(sp)
  LW a0, 492(sp)
  XORI s7, a0, 47
  SLTIU s7, s7, 1
  BNE s7, zero, bb96
  # implict jump to bb75
bb75:   # loop depth 1434426368
  LB a0, 42(sp)
  SB a0, 51(sp)
  LB s8, 44(sp)
  LB s7, 1(sp)
  # implict jump to bb76
bb76:   # loop depth 1
  SB s8, 93(sp)
  LB a0, 51(sp)
  SB a0, 92(sp)
  LW a0, 492(sp)
  XORI s8, a0, 37
  SLTIU s8, s8, 1
  BNE s8, zero, bb81
  # implict jump to bb77
bb77:   # loop depth 1434439520
  LB a0, 39(sp)
  SB a0, 120(sp)
  LB a0, 40(sp)
  SB a0, 31(sp)
  LB a0, 41(sp)
  SB a0, 116(sp)
  # implict jump to bb78
bb78:   # loop depth 1
  LB a0, 116(sp)
  SB a0, 117(sp)
  LB a0, 31(sp)
  SB a0, 118(sp)
  LB a0, 120(sp)
  SB a0, 120(sp)
  LA s8, ii
  LW s8, 0(s8)
  SLLIW a0, s8, 2
  SW a0, 240(sp)
  LA a0, get2
  SD a0, 1040(sp)
  LD a0, 1040(sp)
  LW s0, 240(sp)
  ADD a0, a0, s0
  SD a0, 1000(sp)
  ADDI a0, zero, 32
  SW a0, 416(sp)
  LW a0, 416(sp)
  LD s0, 1000(sp)
  SW a0, 0(s0)
  ADDIW s8, s8, 1
  LA a0, ii
  SD a0, 1104(sp)
  LD a0, 1104(sp)
  SW s8, 0(a0)
  LB a0, 120(sp)
  SB a0, 128(sp)
  LB a0, 118(sp)
  SB a0, 127(sp)
  LB a0, 117(sp)
  SB a0, 126(sp)
  LB a0, 28(sp)
  SB a0, 125(sp)
  LB a0, 92(sp)
  SB a0, 124(sp)
  LB a0, 63(sp)
  SB a0, 107(sp)
  LB a0, 18(sp)
  SB a0, 89(sp)
  LB a0, 93(sp)
  SB a0, 88(sp)
  LB a0, 122(sp)
  SB a0, 87(sp)
  LB a0, 26(sp)
  SB a0, 86(sp)
  SB s7, 70(sp)
  LB a0, 78(sp)
  SB a0, 78(sp)
  LB a0, 78(sp)
  SB a0, 45(sp)
  LB s10, 110(sp)
  LB a0, 99(sp)
  SB a0, 104(sp)
  LB a0, 104(sp)
  SB a0, 104(sp)
  LB a0, 119(sp)
  SB a0, 3(sp)
  LB a0, 3(sp)
  SB a0, 3(sp)
  LB s3, 113(sp)
  LB s2, 108(sp)
  LB s1, 25(sp)
  LB s0, 24(sp)
  # implict jump to bb79
bb79:   # loop depth 1
  SB s0, 58(sp)
  SB s1, 59(sp)
  SB s2, 60(sp)
  SB s3, 61(sp)
  LB s4, 3(sp)
  LB a0, 104(sp)
  SB a0, 104(sp)
  LB a0, 45(sp)
  SB a0, 2(sp)
  LB a0, 2(sp)
  SB a0, 2(sp)
  LB a0, 70(sp)
  SB a0, 95(sp)
  LB a0, 86(sp)
  SB a0, 62(sp)
  LB a0, 87(sp)
  SB a0, 98(sp)
  LB a0, 88(sp)
  SB a0, 90(sp)
  LB a0, 89(sp)
  SB a0, 54(sp)
  LB a0, 107(sp)
  SB a0, 100(sp)
  LB a0, 124(sp)
  SB a0, 101(sp)
  LB a0, 125(sp)
  SB a0, 102(sp)
  LB a0, 126(sp)
  SB a0, 103(sp)
  LB s0, 127(sp)
  LB a0, 128(sp)
  SB a0, 64(sp)
  LA s9, i
  LW s9, 0(s9)
  ADDIW s9, s9, 1
  LA a0, i
  SD a0, 640(sp)
  LD a0, 640(sp)
  SW s9, 0(a0)
  LW a0, 316(sp)
  BLT s9, a0, bb80
  JAL zero, bb5
bb80:   # loop depth 1434513664
  SW s9, 348(sp)
  LB a0, 58(sp)
  SB a0, 136(sp)
  LB a0, 59(sp)
  SB a0, 135(sp)
  LB a0, 60(sp)
  SB a0, 134(sp)
  LB a0, 61(sp)
  SB a0, 133(sp)
  SB s4, 123(sp)
  LB a0, 104(sp)
  SB a0, 104(sp)
  LB a0, 104(sp)
  SB a0, 131(sp)
  SB s10, 130(sp)
  LB a0, 2(sp)
  SB a0, 78(sp)
  LB a0, 78(sp)
  SB a0, 78(sp)
  LB a0, 95(sp)
  SB a0, 4(sp)
  LB a0, 62(sp)
  SB a0, 77(sp)
  LB a0, 77(sp)
  SB a0, 77(sp)
  LB a0, 98(sp)
  SB a0, 6(sp)
  LB a0, 90(sp)
  SB a0, 8(sp)
  LB a0, 54(sp)
  SB a0, 105(sp)
  LB a0, 105(sp)
  SB a0, 105(sp)
  LB a0, 100(sp)
  SB a0, 0(sp)
  LB a0, 101(sp)
  SB a0, 10(sp)
  LB a0, 102(sp)
  SB a0, 13(sp)
  LB a0, 103(sp)
  SB a0, 14(sp)
  LB a0, 64(sp)
  JAL zero, bb60
bb81:   # loop depth 2
  LA s8, chat
  LW s8, 0(s8)
  SLLIW s8, s8, 2
  LA a0, chas
  SD a0, 1096(sp)
  LD a0, 1096(sp)
  ADD s8, a0, s8
  LW a0, 0(s8)
  SW a0, 244(sp)
  LW a0, 244(sp)
  XORI s8, a0, 42
  SLTIU s8, s8, 1
  BNE s8, zero, bb95
  # implict jump to bb82
bb82:   # loop depth 2
  LW a0, 244(sp)
  XORI s8, a0, 47
  SLTIU a0, s8, 1
  SB a0, 120(sp)
  LB a0, 120(sp)
  SB a0, 120(sp)
  # implict jump to bb83
bb83:   # loop depth 2
  LB a0, 120(sp)
  SB a0, 120(sp)
  LB a0, 120(sp)
  BNE a0, zero, bb94
  # implict jump to bb84
bb84:   # loop depth 2
  LW a0, 244(sp)
  XORI s9, a0, 37
  SLTIU s9, s9, 1
  # implict jump to bb85
bb85:   # loop depth 2
  SB s9, 31(sp)
  LB a0, 31(sp)
  BNE a0, zero, bb93
  # implict jump to bb86
bb86:   # loop depth 2
  LW a0, 244(sp)
  XORI s10, a0, 94
  SLTIU s10, s10, 1
  # implict jump to bb87
bb87:   # loop depth 2
  SB s10, 116(sp)
  LB a0, 116(sp)
  BNE a0, zero, bb89
  # implict jump to bb88
bb88:   # loop depth 1
  LA s11, chat
  LW s11, 0(s11)
  ADDIW s11, s11, 1
  LA a0, chat
  SD a0, 752(sp)
  LD a0, 752(sp)
  SW s11, 0(a0)
  SLLIW s11, s11, 2
  LA a0, chas
  SD a0, 744(sp)
  LD a0, 744(sp)
  ADD s11, a0, s11
  ADDI a0, zero, 37
  SW a0, 428(sp)
  LW a0, 428(sp)
  SW a0, 0(s11)
  LB a0, 120(sp)
  SB a0, 120(sp)
  LB a0, 31(sp)
  SB a0, 31(sp)
  LB a0, 116(sp)
  SB a0, 116(sp)
  JAL zero, bb78
bb89:   # loop depth 2
  LA s11, chat
  LW s11, 0(s11)
  ADDI a0, zero, 1
  SW a0, 420(sp)
  LW a0, 420(sp)
  SUBW a0, s11, a0
  SW a0, 248(sp)
  LA a0, chat
  SD a0, 1088(sp)
  LD a0, 1088(sp)
  LW s0, 248(sp)
  SW s0, 0(a0)
  SLLIW s11, s11, 2
  LA a0, chas
  SD a0, 1080(sp)
  LD a0, 1080(sp)
  ADD s11, a0, s11
  LW s11, 0(s11)
  LA a0, c
  SD a0, 1072(sp)
  LD a0, 1072(sp)
  SW s11, 0(a0)
  LA a0, ii
  SD a0, 1064(sp)
  LD a0, 1064(sp)
  LW a0, 0(a0)
  SW a0, 140(sp)
  LW a0, 140(sp)
  SLLIW a0, a0, 2
  SW a0, 256(sp)
  LA a0, get2
  SD a0, 1056(sp)
  LD a0, 1056(sp)
  LW s0, 256(sp)
  ADD a0, a0, s0
  SD a0, 992(sp)
  ADDI a0, zero, 32
  SW a0, 424(sp)
  LW a0, 424(sp)
  LD s0, 992(sp)
  SW a0, 0(s0)
  LW a0, 140(sp)
  ADDIW a0, a0, 1
  SW a0, 260(sp)
  LW a0, 260(sp)
  SLLIW a0, a0, 2
  SW a0, 264(sp)
  LA a0, get2
  SD a0, 1048(sp)
  LD a0, 1048(sp)
  LW s0, 264(sp)
  ADD a0, a0, s0
  SD a0, 984(sp)
  LD a0, 984(sp)
  SW s11, 0(a0)
  LW a0, 140(sp)
  ADDIW s11, a0, 2
  LA a0, ii
  SD a0, 816(sp)
  LD a0, 816(sp)
  SW s11, 0(a0)
  LW a0, 248(sp)
  SLTIU s11, a0, 1
  BNE s11, zero, bb92
  # implict jump to bb90
bb90:   # loop depth 2
  ADDI s11, zero, 1
  # implict jump to bb91
bb91:   # loop depth 2
  SLTIU s11, s11, 1
  BNE s11, zero, bb88
  JAL zero, bb81
bb92:   # loop depth 2
  ADD s11, zero, zero
  JAL zero, bb91
bb93:   # loop depth 2
  ADDI s10, zero, 1
  JAL zero, bb87
bb94:   # loop depth 2
  ADDI s9, zero, 1
  JAL zero, bb85
bb95:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 120(sp)
  JAL zero, bb83
bb96:   # loop depth 2
  LA s7, chat
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  LA s8, chas
  ADD s7, s8, s7
  LW a0, 0(s7)
  SW a0, 172(sp)
  LW a0, 172(sp)
  XORI s7, a0, 42
  SLTIU s7, s7, 1
  BNE s7, zero, bb110
  # implict jump to bb97
bb97:   # loop depth 2
  LW a0, 172(sp)
  XORI s7, a0, 47
  SLTIU s10, s7, 1
  # implict jump to bb98
bb98:   # loop depth 2
  BNE s10, zero, bb109
  # implict jump to bb99
bb99:   # loop depth 2
  LW a0, 172(sp)
  XORI s7, a0, 37
  SLTIU s7, s7, 1
  # implict jump to bb100
bb100:   # loop depth 2
  SB s7, 121(sp)
  LB a0, 121(sp)
  BNE a0, zero, bb108
  # implict jump to bb101
bb101:   # loop depth 2
  LW a0, 172(sp)
  XORI s7, a0, 94
  SLTIU s8, s7, 1
  # implict jump to bb102
bb102:   # loop depth 2
  BNE s8, zero, bb104
  # implict jump to bb103
bb103:   # loop depth 1
  LA a0, chat
  SD a0, 1136(sp)
  LD a0, 1136(sp)
  LW a0, 0(a0)
  SW a0, 228(sp)
  LW a0, 228(sp)
  ADDIW a0, a0, 1
  SW a0, 232(sp)
  LA a0, chat
  SD a0, 1128(sp)
  LD a0, 1128(sp)
  LW s0, 232(sp)
  SW s0, 0(a0)
  LW a0, 232(sp)
  SLLIW a0, a0, 2
  SW a0, 236(sp)
  LA a0, chas
  SD a0, 1120(sp)
  LD a0, 1120(sp)
  LW s0, 236(sp)
  ADD a0, a0, s0
  SD a0, 1008(sp)
  ADDI a0, zero, 47
  SW a0, 412(sp)
  LW a0, 412(sp)
  LD s0, 1008(sp)
  SW a0, 0(s0)
  SB s10, 51(sp)
  LB s7, 121(sp)
  JAL zero, bb76
bb104:   # loop depth 2
  LA a0, chat
  SD a0, 904(sp)
  LD a0, 904(sp)
  LW a0, 0(a0)
  SW a0, 176(sp)
  ADDI a0, zero, 1
  SW a0, 400(sp)
  LW a0, 400(sp)
  LW s0, 176(sp)
  SUBW a0, s0, a0
  SW a0, 180(sp)
  LA a0, chat
  SD a0, 896(sp)
  LD a0, 896(sp)
  LW s0, 180(sp)
  SW s0, 0(a0)
  LW a0, 176(sp)
  SLLIW a0, a0, 2
  SW a0, 184(sp)
  LA a0, chas
  SD a0, 968(sp)
  LD a0, 968(sp)
  LW s0, 184(sp)
  ADD a0, a0, s0
  SD a0, 1032(sp)
  LD a0, 1032(sp)
  LW a0, 0(a0)
  SW a0, 192(sp)
  LA a0, c
  SD a0, 1176(sp)
  LD a0, 1176(sp)
  LW s0, 192(sp)
  SW s0, 0(a0)
  LA a0, ii
  SD a0, 1168(sp)
  LD a0, 1168(sp)
  LW a0, 0(a0)
  SW a0, 196(sp)
  LW a0, 196(sp)
  SLLIW a0, a0, 2
  SW a0, 200(sp)
  LA a0, get2
  SD a0, 1160(sp)
  LD a0, 1160(sp)
  LW s0, 200(sp)
  ADD a0, a0, s0
  SD a0, 1024(sp)
  ADDI a0, zero, 32
  SW a0, 404(sp)
  LW a0, 404(sp)
  LD s0, 1024(sp)
  SW a0, 0(s0)
  LW a0, 196(sp)
  ADDIW a0, a0, 1
  SW a0, 208(sp)
  LW a0, 208(sp)
  SLLIW a0, a0, 2
  SW a0, 212(sp)
  LA a0, get2
  SD a0, 1152(sp)
  LD a0, 1152(sp)
  LW s0, 212(sp)
  ADD a0, a0, s0
  SD a0, 1016(sp)
  LD a0, 1016(sp)
  LW s0, 192(sp)
  SW s0, 0(a0)
  LW a0, 196(sp)
  ADDIW a0, a0, 2
  SW a0, 164(sp)
  LA a0, ii
  SD a0, 1144(sp)
  LD a0, 1144(sp)
  LW s0, 164(sp)
  SW s0, 0(a0)
  LW a0, 180(sp)
  SLTIU a0, a0, 1
  SB a0, 81(sp)
  LB a0, 81(sp)
  BNE a0, zero, bb107
  # implict jump to bb105
bb105:   # loop depth 2
  ADDI a0, zero, 1
  SW a0, 224(sp)
  # implict jump to bb106
bb106:   # loop depth 2
  LW a0, 224(sp)
  SW a0, 224(sp)
  LW a0, 224(sp)
  SLTIU a0, a0, 1
  SB a0, 82(sp)
  LB a0, 82(sp)
  BNE a0, zero, bb103
  JAL zero, bb96
bb107:   # loop depth 2
  ADD a0, zero, zero
  SW a0, 224(sp)
  JAL zero, bb106
bb108:   # loop depth 2
  ADDI s8, zero, 1
  JAL zero, bb102
bb109:   # loop depth 2
  ADDI s7, zero, 1
  JAL zero, bb100
bb110:   # loop depth 2
  ADDI s10, zero, 1
  JAL zero, bb98
bb111:   # loop depth 2
  LA s5, chat
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s6, chas
  ADD s5, s6, s5
  LW s7, 0(s5)
  XORI s5, s7, 42
  SLTIU s5, s5, 1
  BNE s5, zero, bb125
  # implict jump to bb112
bb112:   # loop depth 2
  XORI s5, s7, 47
  SLTIU s5, s5, 1
  # implict jump to bb113
bb113:   # loop depth 2
  BNE s5, zero, bb124
  # implict jump to bb114
bb114:   # loop depth 2
  XORI s6, s7, 37
  SLTIU s6, s6, 1
  # implict jump to bb115
bb115:   # loop depth 2
  SB s6, 91(sp)
  LB a0, 91(sp)
  BNE a0, zero, bb123
  # implict jump to bb116
bb116:   # loop depth 2
  XORI s6, s7, 94
  SLTIU a0, s6, 1
  SB a0, 78(sp)
  LB a0, 78(sp)
  SB a0, 78(sp)
  # implict jump to bb117
bb117:   # loop depth 2
  LB a0, 78(sp)
  SB a0, 78(sp)
  LB a0, 78(sp)
  BNE a0, zero, bb119
  # implict jump to bb118
bb118:   # loop depth 1
  LA s7, chat
  LW s7, 0(s7)
  ADDIW s7, s7, 1
  LA a0, chat
  SD a0, 920(sp)
  LD a0, 920(sp)
  SW s7, 0(a0)
  SLLIW s7, s7, 2
  LA a0, chas
  SD a0, 912(sp)
  LD a0, 912(sp)
  ADD s7, a0, s7
  ADDI a0, zero, 42
  SW a0, 396(sp)
  LW a0, 396(sp)
  SW a0, 0(s7)
  SB s5, 46(sp)
  LB a0, 78(sp)
  SB a0, 78(sp)
  LB s10, 91(sp)
  JAL zero, bb74
bb119:   # loop depth 2
  LA s7, chat
  LW s7, 0(s7)
  ADDI a0, zero, 1
  SW a0, 156(sp)
  LW a0, 156(sp)
  SUBW a0, s7, a0
  SW a0, 216(sp)
  LA a0, chat
  SD a0, 976(sp)
  LD a0, 976(sp)
  LW s0, 216(sp)
  SW s0, 0(a0)
  SLLIW s7, s7, 2
  LA a0, chas
  SD a0, 888(sp)
  LD a0, 888(sp)
  ADD s7, a0, s7
  LW s7, 0(s7)
  LA a0, c
  SD a0, 960(sp)
  LD a0, 960(sp)
  SW s7, 0(a0)
  LA a0, ii
  SD a0, 952(sp)
  LD a0, 952(sp)
  LW a0, 0(a0)
  SW a0, 204(sp)
  LW a0, 204(sp)
  SLLIW a0, a0, 2
  SW a0, 188(sp)
  LA a0, get2
  SD a0, 944(sp)
  LD a0, 944(sp)
  LW s0, 188(sp)
  ADD a0, a0, s0
  SD a0, 552(sp)
  ADDI a0, zero, 32
  SW a0, 388(sp)
  LW a0, 388(sp)
  LD s0, 552(sp)
  SW a0, 0(s0)
  LW a0, 204(sp)
  ADDIW a0, a0, 1
  SW a0, 252(sp)
  LW a0, 252(sp)
  SLLIW a0, a0, 2
  SW a0, 168(sp)
  LA a0, get2
  SD a0, 936(sp)
  LD a0, 936(sp)
  LW s0, 168(sp)
  ADD a0, a0, s0
  SD a0, 1112(sp)
  LD a0, 1112(sp)
  SW s7, 0(a0)
  LW a0, 204(sp)
  ADDIW s7, a0, 2
  LA a0, ii
  SD a0, 928(sp)
  LD a0, 928(sp)
  SW s7, 0(a0)
  LW a0, 216(sp)
  SLTIU s7, a0, 1
  BNE s7, zero, bb122
  # implict jump to bb120
bb120:   # loop depth 2
  ADDI s7, zero, 1
  # implict jump to bb121
bb121:   # loop depth 2
  SLTIU s7, s7, 1
  BNE s7, zero, bb118
  JAL zero, bb111
bb122:   # loop depth 2
  ADD s7, zero, zero
  JAL zero, bb121
bb123:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 78(sp)
  JAL zero, bb117
bb124:   # loop depth 2
  ADDI s6, zero, 1
  JAL zero, bb115
bb125:   # loop depth 2
  ADDI s5, zero, 1
  JAL zero, bb113
bb126:   # loop depth 2
  LA s2, chat
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LA s3, chas
  ADD s2, s3, s2
  LW s11, 0(s2)
  XORI s2, s11, 43
  SLTIU s2, s2, 1
  BNE s2, zero, bb146
  # implict jump to bb127
bb127:   # loop depth 2
  XORI s2, s11, 45
  SLTIU s2, s2, 1
  # implict jump to bb128
bb128:   # loop depth 2
  SB s2, 109(sp)
  LB a0, 109(sp)
  BNE a0, zero, bb145
  # implict jump to bb129
bb129:   # loop depth 2
  XORI s3, s11, 42
  SLTIU s9, s3, 1
  # implict jump to bb130
bb130:   # loop depth 2
  BNE s9, zero, bb144
  # implict jump to bb131
bb131:   # loop depth 2
  XORI s4, s11, 47
  SLTIU s3, s4, 1
  # implict jump to bb132
bb132:   # loop depth 2
  BNE s3, zero, bb143
  # implict jump to bb133
bb133:   # loop depth 2
  XORI s7, s11, 37
  SLTIU s7, s7, 1
  # implict jump to bb134
bb134:   # loop depth 2
  SB s7, 34(sp)
  LB a0, 34(sp)
  BNE a0, zero, bb142
  # implict jump to bb135
bb135:   # loop depth 2
  XORI s7, s11, 94
  SLTIU s7, s7, 1
  # implict jump to bb136
bb136:   # loop depth 2
  SB s7, 111(sp)
  LB a0, 111(sp)
  BNE a0, zero, bb138
  # implict jump to bb137
bb137:   # loop depth 1
  LA s7, chat
  LW s7, 0(s7)
  ADDIW s7, s7, 1
  LA s11, chat
  SW s7, 0(s11)
  SLLIW s7, s7, 2
  LA s11, chas
  ADD s7, s11, s7
  ADDI s11, zero, 45
  SW s11, 0(s7)
  SB s9, 36(sp)
  LB a0, 111(sp)
  SB a0, 104(sp)
  LB a0, 104(sp)
  SB a0, 104(sp)
  LB s9, 34(sp)
  LB s2, 109(sp)
  JAL zero, bb72
bb138:   # loop depth 2
  LA s7, chat
  LW s7, 0(s7)
  ADDI s11, zero, 1
  SUBW a0, s7, s11
  SW a0, 148(sp)
  LA s11, chat
  LW a0, 148(sp)
  SW a0, 0(s11)
  SLLIW s7, s7, 2
  LA s11, chas
  ADD s7, s11, s7
  LW a0, 0(s7)
  SW a0, 152(sp)
  LA s7, c
  LW a0, 152(sp)
  SW a0, 0(s7)
  LA s7, ii
  LW a0, 0(s7)
  SW a0, 268(sp)
  LW a0, 268(sp)
  SLLIW s7, a0, 2
  LA s11, get2
  ADD s7, s11, s7
  ADDI s11, zero, 32
  SW s11, 0(s7)
  LW a0, 268(sp)
  ADDIW s7, a0, 1
  SLLIW s7, s7, 2
  LA s11, get2
  ADD s7, s11, s7
  LW a0, 152(sp)
  SW a0, 0(s7)
  LW a0, 268(sp)
  ADDIW s7, a0, 2
  LA s11, ii
  SW s7, 0(s11)
  LW a0, 148(sp)
  SLTIU s7, a0, 1
  BNE s7, zero, bb141
  # implict jump to bb139
bb139:   # loop depth 2
  ADDI s7, zero, 1
  # implict jump to bb140
bb140:   # loop depth 2
  SLTIU s7, s7, 1
  BNE s7, zero, bb137
  JAL zero, bb126
bb141:   # loop depth 2
  ADD s7, zero, zero
  JAL zero, bb140
bb142:   # loop depth 2
  ADDI s7, zero, 1
  JAL zero, bb136
bb143:   # loop depth 2
  ADDI s7, zero, 1
  JAL zero, bb134
bb144:   # loop depth 2
  ADDI s3, zero, 1
  JAL zero, bb132
bb145:   # loop depth 2
  ADDI s9, zero, 1
  JAL zero, bb130
bb146:   # loop depth 2
  ADDI s2, zero, 1
  JAL zero, bb128
bb147:   # loop depth 2
  LA a0, chat
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LA s0, chas
  ADD a0, s0, a0
  LW s9, 0(a0)
  XORI a0, s9, 43
  SLTIU a0, a0, 1
  BNE a0, zero, bb167
  # implict jump to bb148
bb148:   # loop depth 2
  XORI a0, s9, 45
  SLTIU a0, a0, 1
  # implict jump to bb149
bb149:   # loop depth 2
  SB a0, 23(sp)
  LB a0, 23(sp)
  BNE a0, zero, bb166
  # implict jump to bb150
bb150:   # loop depth 2
  XORI s0, s9, 42
  SLTIU s0, s0, 1
  # implict jump to bb151
bb151:   # loop depth 2
  SB s0, 22(sp)
  LB a0, 22(sp)
  BNE a0, zero, bb165
  # implict jump to bb152
bb152:   # loop depth 2
  XORI s0, s9, 47
  SLTIU s0, s0, 1
  # implict jump to bb153
bb153:   # loop depth 2
  SB s0, 21(sp)
  LB a0, 21(sp)
  BNE a0, zero, bb164
  # implict jump to bb154
bb154:   # loop depth 2
  XORI s1, s9, 37
  SLTIU s1, s1, 1
  # implict jump to bb155
bb155:   # loop depth 2
  SB s1, 20(sp)
  LB a0, 20(sp)
  BNE a0, zero, bb163
  # implict jump to bb156
bb156:   # loop depth 2
  XORI s1, s9, 94
  SLTIU s1, s1, 1
  # implict jump to bb157
bb157:   # loop depth 2
  SB s1, 19(sp)
  LB a0, 19(sp)
  BNE a0, zero, bb159
  # implict jump to bb158
bb158:   # loop depth 1
  LA s1, chat
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s9, chat
  SW s1, 0(s9)
  SLLIW s1, s1, 2
  LA s9, chas
  ADD s1, s9, s1
  ADDI s9, zero, 43
  SW s9, 0(s1)
  LB a0, 21(sp)
  SB a0, 75(sp)
  LB a0, 75(sp)
  SB a0, 75(sp)
  LB a0, 19(sp)
  SB a0, 105(sp)
  LB a0, 105(sp)
  SB a0, 105(sp)
  LB a0, 23(sp)
  SB a0, 38(sp)
  LB s1, 22(sp)
  LB s0, 20(sp)
  JAL zero, bb70
bb159:   # loop depth 2
  LA s1, chat
  LW s1, 0(s1)
  ADDI s9, zero, 1
  SUBW a0, s1, s9
  SW a0, 392(sp)
  LA s9, chat
  LW a0, 392(sp)
  SW a0, 0(s9)
  SLLIW s1, s1, 2
  LA s9, chas
  ADD s1, s9, s1
  LW a0, 0(s1)
  SW a0, 328(sp)
  LA s1, c
  LW a0, 328(sp)
  SW a0, 0(s1)
  LA s1, ii
  LW a0, 0(s1)
  SW a0, 144(sp)
  LW a0, 144(sp)
  SLLIW s1, a0, 2
  LA s9, get2
  ADD s1, s9, s1
  ADDI s9, zero, 32
  SW s9, 0(s1)
  LW a0, 144(sp)
  ADDIW s1, a0, 1
  SLLIW s1, s1, 2
  LA s9, get2
  ADD s1, s9, s1
  LW a0, 328(sp)
  SW a0, 0(s1)
  LW a0, 144(sp)
  ADDIW s1, a0, 2
  LA s9, ii
  SW s1, 0(s9)
  LW a0, 392(sp)
  SLTIU s1, a0, 1
  BNE s1, zero, bb162
  # implict jump to bb160
bb160:   # loop depth 2
  ADDI s1, zero, 1
  # implict jump to bb161
bb161:   # loop depth 2
  SLTIU s1, s1, 1
  BNE s1, zero, bb158
  JAL zero, bb147
bb162:   # loop depth 2
  ADD s1, zero, zero
  JAL zero, bb161
bb163:   # loop depth 2
  ADDI s1, zero, 1
  JAL zero, bb157
bb164:   # loop depth 2
  ADDI s1, zero, 1
  JAL zero, bb155
bb165:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb153
bb166:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb151
bb167:   # loop depth 2
  ADDI a0, zero, 1
  JAL zero, bb149
bb168:   # loop depth 1
  LA a0, chat
  SD a0, 864(sp)
  LD a0, 864(sp)
  LW a0, 0(a0)
  SW a0, 452(sp)
  ADDI a0, zero, 1
  SW a0, 368(sp)
  LW a0, 368(sp)
  LW s8, 452(sp)
  SUBW a0, s8, a0
  SW a0, 448(sp)
  LA a0, chat
  SD a0, 856(sp)
  LD a0, 856(sp)
  LW s8, 448(sp)
  SW s8, 0(a0)
  LW a0, 452(sp)
  SLLIW a0, a0, 2
  SW a0, 384(sp)
  LA a0, chas
  SD a0, 848(sp)
  LD a0, 848(sp)
  LW s8, 384(sp)
  ADD a0, a0, s8
  SD a0, 704(sp)
  LD a0, 704(sp)
  LW a0, 0(a0)
  SW a0, 444(sp)
  LA a0, c
  SD a0, 840(sp)
  LD a0, 840(sp)
  LW s8, 444(sp)
  SW s8, 0(a0)
  LW a0, 444(sp)
  XORI a0, a0, 40
  SW a0, 336(sp)
  LW a0, 336(sp)
  BNE a0, zero, bb169
  JAL zero, bb68
bb169:   # loop depth 2
  LA a0, ii
  SD a0, 832(sp)
  LD a0, 832(sp)
  LW a0, 0(a0)
  SW a0, 276(sp)
  LW a0, 276(sp)
  SLLIW a0, a0, 2
  SW a0, 280(sp)
  LA a0, get2
  SD a0, 824(sp)
  LD a0, 824(sp)
  LW s8, 280(sp)
  ADD a0, a0, s8
  SD a0, 696(sp)
  ADDI a0, zero, 32
  SW a0, 372(sp)
  LW a0, 372(sp)
  LD s8, 696(sp)
  SW a0, 0(s8)
  LW a0, 276(sp)
  ADDIW a0, a0, 1
  SW a0, 284(sp)
  LW a0, 284(sp)
  SLLIW a0, a0, 2
  SW a0, 288(sp)
  LA a0, get2
  SD a0, 760(sp)
  LD a0, 760(sp)
  LW s8, 288(sp)
  ADD a0, a0, s8
  SD a0, 608(sp)
  LA a0, c
  SD a0, 808(sp)
  LD a0, 808(sp)
  LW a0, 0(a0)
  SW a0, 292(sp)
  LW a0, 292(sp)
  LD s8, 608(sp)
  SW a0, 0(s8)
  LW a0, 276(sp)
  ADDIW a0, a0, 2
  SW a0, 296(sp)
  LA a0, ii
  SD a0, 800(sp)
  LD a0, 800(sp)
  LW s8, 296(sp)
  SW s8, 0(a0)
  LA a0, chat
  SD a0, 792(sp)
  LD a0, 792(sp)
  LW a0, 0(a0)
  SW a0, 300(sp)
  ADDI a0, zero, 1
  SW a0, 376(sp)
  LW a0, 376(sp)
  LW s8, 300(sp)
  SUBW a0, s8, a0
  SW a0, 304(sp)
  LA a0, chat
  SD a0, 784(sp)
  LD a0, 784(sp)
  LW s8, 304(sp)
  SW s8, 0(a0)
  LW a0, 300(sp)
  SLLIW a0, a0, 2
  SW a0, 308(sp)
  LA a0, chas
  SD a0, 776(sp)
  LD a0, 776(sp)
  LW s8, 308(sp)
  ADD a0, a0, s8
  SD a0, 680(sp)
  LD a0, 680(sp)
  LW a0, 0(a0)
  SW a0, 312(sp)
  LA a0, c
  SD a0, 768(sp)
  LD a0, 768(sp)
  LW s8, 312(sp)
  SW s8, 0(a0)
  LW a0, 312(sp)
  XORI a0, a0, 40
  SW a0, 344(sp)
  LW a0, 344(sp)
  BNE a0, zero, bb169
  JAL zero, bb68
bb170:   # loop depth 1
  LA a0, chat
  SD a0, 688(sp)
  LD a0, 688(sp)
  LW a0, 0(a0)
  SW a0, 464(sp)
  LW a0, 464(sp)
  ADDIW a0, a0, 1
  SW a0, 460(sp)
  LA a0, chat
  SD a0, 880(sp)
  LD a0, 880(sp)
  LW s8, 460(sp)
  SW s8, 0(a0)
  LW a0, 460(sp)
  SLLIW a0, a0, 2
  SW a0, 456(sp)
  LA a0, chas
  SD a0, 872(sp)
  LD a0, 872(sp)
  LW s8, 456(sp)
  ADD a0, a0, s8
  SD a0, 712(sp)
  ADDI a0, zero, 94
  SW a0, 364(sp)
  LW a0, 364(sp)
  LD s8, 712(sp)
  SW a0, 0(s8)
  JAL zero, bb67
bb171:   # loop depth 1
  LA a0, chat
  SD a0, 632(sp)
  LD a0, 632(sp)
  LW a0, 0(a0)
  SW a0, 472(sp)
  LW a0, 472(sp)
  ADDIW a0, a0, 1
  SW a0, 468(sp)
  LA a0, chat
  SD a0, 624(sp)
  LD a0, 624(sp)
  LW s8, 468(sp)
  SW s8, 0(a0)
  LW a0, 468(sp)
  SLLIW a0, a0, 2
  SW a0, 484(sp)
  LA a0, chas
  SD a0, 616(sp)
  LD a0, 616(sp)
  LW s8, 484(sp)
  ADD a0, a0, s8
  SD a0, 720(sp)
  ADDI a0, zero, 40
  SW a0, 360(sp)
  LW a0, 360(sp)
  LD s8, 720(sp)
  SW a0, 0(s8)
  JAL zero, bb66
bb172:   # loop depth 1
  LA a0, ii
  SD a0, 664(sp)
  LD a0, 664(sp)
  LW a0, 0(a0)
  SW a0, 488(sp)
  LW a0, 488(sp)
  SLLIW a0, a0, 2
  SW a0, 480(sp)
  LA a0, get2
  SD a0, 656(sp)
  LD a0, 656(sp)
  LW s8, 480(sp)
  ADD a0, a0, s8
  SD a0, 728(sp)
  LD a0, 728(sp)
  LW s8, 492(sp)
  SW s8, 0(a0)
  LW a0, 488(sp)
  ADDIW a0, a0, 1
  SW a0, 476(sp)
  LA a0, ii
  SD a0, 648(sp)
  LD a0, 648(sp)
  LW s8, 476(sp)
  SW s8, 0(a0)
  LB a0, 39(sp)
  SB a0, 128(sp)
  LB a0, 40(sp)
  SB a0, 127(sp)
  LB a0, 41(sp)
  SB a0, 126(sp)
  LB a0, 75(sp)
  SB a0, 75(sp)
  LB a0, 75(sp)
  SB a0, 125(sp)
  LB a0, 42(sp)
  SB a0, 124(sp)
  LB a0, 43(sp)
  SB a0, 107(sp)
  LB a0, 105(sp)
  SB a0, 105(sp)
  LB a0, 105(sp)
  SB a0, 89(sp)
  LB a0, 44(sp)
  SB a0, 88(sp)
  LB a0, 9(sp)
  SB a0, 87(sp)
  LB a0, 77(sp)
  SB a0, 77(sp)
  LB a0, 77(sp)
  SB a0, 86(sp)
  LB a0, 1(sp)
  SB a0, 70(sp)
  LB a0, 78(sp)
  SB a0, 78(sp)
  LB a0, 78(sp)
  SB a0, 45(sp)
  LB a0, 104(sp)
  SB a0, 104(sp)
  LB a0, 3(sp)
  SB a0, 3(sp)
  JAL zero, bb79
bb173:   # loop depth 1
  ADDI a0, zero, 1
  SW a0, 352(sp)
  JAL zero, bb64
bb174:   # loop depth 1
  ADDI a0, zero, 57
  SW a0, 380(sp)
  LW a0, 380(sp)
  LW s8, 492(sp)
  SLT a0, a0, s8
  SB a0, 138(sp)
  LB a0, 138(sp)
  XORI a0, a0, 1
  SB a0, 112(sp)
  LB a0, 112(sp)
  SB a0, 85(sp)
  JAL zero, bb62
bb175:   # loop depth 1
  LW s0, 316(sp)
  SLLIW s0, s0, 2
  LA s2, get
  ADD s0, s2, s0
  SW s1, 0(s0)
  LW s0, 316(sp)
  ADDIW s2, s0, 1
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb1
bb176:   # loop depth 1
  XORI s0, s1, 10
  SLTU s0, zero, s0
  JAL zero, bb3
