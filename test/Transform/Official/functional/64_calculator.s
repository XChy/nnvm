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
  ADDI sp, sp, -1584
  SD s8, 616(sp)
  SD s0, 632(sp)
  SD s9, 640(sp)
  SD ra, 760(sp)
  SD s1, 776(sp)
  SD s2, 784(sp)
  SD s3, 792(sp)
  SD s4, 800(sp)
  SD s5, 808(sp)
  SD s6, 816(sp)
  SD s7, 824(sp)
  SD s11, 864(sp)
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
  SW s2, 312(sp)
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
  LW s0, 312(sp)
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
  LD s8, 616(sp)
  LD s0, 632(sp)
  LD s9, 640(sp)
  LD ra, 760(sp)
  LD s1, 776(sp)
  LD s2, 784(sp)
  LD s3, 792(sp)
  LD s4, 800(sp)
  LD s5, 808(sp)
  LD s6, 816(sp)
  LD s7, 824(sp)
  LD s11, 864(sp)
  ADDI sp, sp, 1584
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
bb23:   # loop depth 1
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
  ADDW s2, s0, s2
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
bb29:   # loop depth 1
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
bb31:   # loop depth 1
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
bb33:   # loop depth 1
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
bb35:   # loop depth 1
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
bb37:   # loop depth 1
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
bb39:   # loop depth 1
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
bb42:   # loop depth 1
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
bb46:   # loop depth 2
  JAL zero, bb43
bb47:   # loop depth 2
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
  SW a0, 208(sp)
  ADD a0, zero, zero
  SB a0, 117(sp)
  ADD a0, zero, zero
  SB a0, 105(sp)
  ADD a0, zero, zero
  SB a0, 116(sp)
  ADD a0, zero, zero
  SB a0, 15(sp)
  ADD a0, zero, zero
  SB a0, 108(sp)
  ADD a0, zero, zero
  SB a0, 110(sp)
  ADD a0, zero, zero
  SB a0, 113(sp)
  ADD a0, zero, zero
  SB a0, 75(sp)
  ADD a0, zero, zero
  SB a0, 101(sp)
  ADD s1, zero, zero
  ADD s7, zero, zero
  ADD s0, zero, zero
  ADD s9, zero, zero
  ADD a0, zero, zero
  SB a0, 14(sp)
  ADD a0, zero, zero
  SB a0, 13(sp)
  ADD a0, zero, zero
  SB a0, 21(sp)
  ADD a0, zero, zero
  SB a0, 80(sp)
  ADD a0, zero, zero
  SB a0, 81(sp)
  ADD a0, zero, zero
  SB a0, 23(sp)
  # implict jump to bb60
bb60:   # loop depth 1
  LB a0, 23(sp)
  SB a0, 23(sp)
  LB a0, 23(sp)
  SB a0, 78(sp)
  LB a0, 81(sp)
  SB a0, 81(sp)
  LB a0, 81(sp)
  SB a0, 79(sp)
  LB a0, 80(sp)
  SB a0, 80(sp)
  LB a0, 80(sp)
  SB a0, 82(sp)
  LB a0, 21(sp)
  SB a0, 21(sp)
  LB a0, 13(sp)
  SB a0, 87(sp)
  LB a0, 14(sp)
  SB a0, 2(sp)
  LB a0, 2(sp)
  SB a0, 2(sp)
  SB s0, 88(sp)
  SB s7, 74(sp)
  SB s1, 56(sp)
  LB a0, 101(sp)
  SB a0, 91(sp)
  LB a0, 75(sp)
  SB a0, 64(sp)
  LB a0, 113(sp)
  SB a0, 93(sp)
  LB a0, 110(sp)
  SB a0, 95(sp)
  LB a0, 108(sp)
  SB a0, 96(sp)
  LB a0, 15(sp)
  SB a0, 98(sp)
  LB a0, 116(sp)
  SB a0, 99(sp)
  LB s1, 105(sp)
  LB s0, 117(sp)
  LW a0, 208(sp)
  SW a0, 160(sp)
  LW a0, 160(sp)
  SLLIW a0, a0, 2
  SW a0, 316(sp)
  LA a0, get
  SD a0, 1248(sp)
  LD a0, 1248(sp)
  LW s2, 316(sp)
  ADD a0, a0, s2
  SD a0, 768(sp)
  LD a0, 768(sp)
  LW a0, 0(a0)
  SW a0, 212(sp)
  LW a0, 212(sp)
  SLTI a0, a0, 48
  SB a0, 57(sp)
  LB a0, 57(sp)
  XORI a0, a0, 1
  SB a0, 42(sp)
  LB a0, 42(sp)
  BNE a0, zero, bb174
  # implict jump to bb61
bb61:   # loop depth 1
  ADD a0, zero, zero
  SB a0, 58(sp)
  # implict jump to bb62
bb62:   # loop depth 1
  LB a0, 58(sp)
  SB a0, 58(sp)
  LB a0, 58(sp)
  BNE a0, zero, bb173
  # implict jump to bb63
bb63:   # loop depth 1
  ADD a0, zero, zero
  SW a0, 240(sp)
  # implict jump to bb64
bb64:   # loop depth 1
  LW a0, 240(sp)
  SW a0, 240(sp)
  LW a0, 240(sp)
  XORI a0, a0, 1
  SW a0, 532(sp)
  LW a0, 532(sp)
  SLTIU a0, a0, 1
  SB a0, 45(sp)
  LB a0, 45(sp)
  BNE a0, zero, bb172
  # implict jump to bb65
bb65:   # loop depth 1
  LW a0, 212(sp)
  XORI a0, a0, 40
  SW a0, 528(sp)
  LW a0, 528(sp)
  SLTIU a0, a0, 1
  SB a0, 49(sp)
  LB a0, 49(sp)
  BNE a0, zero, bb171
  # implict jump to bb66
bb66:   # loop depth 1
  LW a0, 212(sp)
  XORI a0, a0, 94
  SW a0, 524(sp)
  LW a0, 524(sp)
  SLTIU a0, a0, 1
  SB a0, 48(sp)
  LB a0, 48(sp)
  BNE a0, zero, bb170
  # implict jump to bb67
bb67:   # loop depth 1
  LW a0, 212(sp)
  XORI a0, a0, 41
  SW a0, 520(sp)
  LW a0, 520(sp)
  SLTIU a0, a0, 1
  SB a0, 37(sp)
  LB a0, 37(sp)
  BNE a0, zero, bb168
  # implict jump to bb68
bb68:   # loop depth 1
  LW a0, 212(sp)
  XORI a0, a0, 43
  SW a0, 512(sp)
  LW a0, 512(sp)
  SLTIU a0, a0, 1
  SB a0, 46(sp)
  LB a0, 46(sp)
  BNE a0, zero, bb147
  # implict jump to bb69
bb69:   # loop depth 1
  LB a0, 21(sp)
  SB a0, 21(sp)
  SB s9, 65(sp)
  LB s9, 56(sp)
  # implict jump to bb70
bb70:   # loop depth 1
  SB s0, 102(sp)
  SB s1, 103(sp)
  SB s9, 104(sp)
  LB a0, 65(sp)
  SB a0, 122(sp)
  LB a0, 21(sp)
  SB a0, 21(sp)
  LB a0, 21(sp)
  SB a0, 115(sp)
  LW a0, 212(sp)
  XORI a0, a0, 45
  SW a0, 508(sp)
  LW a0, 508(sp)
  SLTIU a0, a0, 1
  SB a0, 43(sp)
  LB a0, 43(sp)
  BNE a0, zero, bb126
  # implict jump to bb71
bb71:   # loop depth 1
  LB a0, 2(sp)
  SB a0, 2(sp)
  LB s5, 95(sp)
  LB s4, 96(sp)
  LB s1, 98(sp)
  LB s2, 99(sp)
  # implict jump to bb72
bb72:   # loop depth 1
  SB s2, 89(sp)
  SB s1, 92(sp)
  SB s4, 97(sp)
  SB s5, 100(sp)
  LB a0, 2(sp)
  SB a0, 30(sp)
  LW a0, 212(sp)
  XORI s2, a0, 42
  SLTIU s2, s2, 1
  BNE s2, zero, bb111
  # implict jump to bb73
bb73:   # loop depth 1
  LB s8, 74(sp)
  LB s2, 64(sp)
  LB s3, 93(sp)
  # implict jump to bb74
bb74:   # loop depth 1
  SB s3, 84(sp)
  SB s2, 85(sp)
  SB s8, 72(sp)
  LW a0, 212(sp)
  XORI s4, a0, 47
  SLTIU s4, s4, 1
  BNE s4, zero, bb96
  # implict jump to bb75
bb75:   # loop depth 1
  LB s4, 87(sp)
  LB a0, 88(sp)
  SB a0, 24(sp)
  LB a0, 24(sp)
  SB a0, 24(sp)
  LB s5, 91(sp)
  # implict jump to bb76
bb76:   # loop depth 1
  LB a0, 24(sp)
  SB a0, 24(sp)
  LW a0, 212(sp)
  XORI s7, a0, 37
  SLTIU s7, s7, 1
  BNE s7, zero, bb81
  # implict jump to bb77
bb77:   # loop depth 1
  LB s7, 78(sp)
  LB a0, 79(sp)
  SB a0, 67(sp)
  LB a0, 67(sp)
  SB a0, 67(sp)
  LB a0, 82(sp)
  SB a0, 66(sp)
  LB a0, 66(sp)
  SB a0, 66(sp)
  # implict jump to bb78
bb78:   # loop depth 1
  LB a0, 66(sp)
  SB a0, 66(sp)
  LB a0, 67(sp)
  SB a0, 67(sp)
  LA a0, ii
  SD a0, 1192(sp)
  LD a0, 1192(sp)
  LW a0, 0(a0)
  SW a0, 268(sp)
  LW a0, 268(sp)
  SLLIW a0, a0, 2
  SW a0, 304(sp)
  LA a0, get2
  SD a0, 1184(sp)
  LD a0, 1184(sp)
  LW s0, 304(sp)
  ADD a0, a0, s0
  SD a0, 1288(sp)
  ADDI a0, zero, 32
  SW a0, 388(sp)
  LW a0, 388(sp)
  LD s0, 1288(sp)
  SW a0, 0(s0)
  LW a0, 268(sp)
  ADDIW a0, a0, 1
  SW a0, 136(sp)
  LA a0, ii
  SD a0, 1176(sp)
  LD a0, 1176(sp)
  LW s0, 136(sp)
  SW s0, 0(a0)
  SB s7, 12(sp)
  LB a0, 67(sp)
  SB a0, 11(sp)
  LB a0, 66(sp)
  SB a0, 0(sp)
  LB a0, 115(sp)
  SB a0, 36(sp)
  LB a0, 36(sp)
  SB a0, 36(sp)
  SB s4, 9(sp)
  LB a0, 30(sp)
  SB a0, 10(sp)
  LB a0, 122(sp)
  SB a0, 8(sp)
  LB a0, 24(sp)
  SB a0, 24(sp)
  LB a0, 24(sp)
  SB a0, 7(sp)
  LB a0, 72(sp)
  SB a0, 94(sp)
  LB s11, 104(sp)
  SB s5, 5(sp)
  LB a0, 85(sp)
  SB a0, 22(sp)
  LB a0, 22(sp)
  SB a0, 22(sp)
  LB s0, 84(sp)
  SB s0, 76(sp)
  LB s0, 100(sp)
  SB s0, 120(sp)
  LB s0, 97(sp)
  SB s0, 112(sp)
  LB s0, 92(sp)
  SB s0, 111(sp)
  LB s0, 89(sp)
  SB s0, 109(sp)
  LB s1, 103(sp)
  LB s0, 102(sp)
  # implict jump to bb79
bb79:   # loop depth 1
  SB s0, 121(sp)
  SB s1, 119(sp)
  LB s0, 109(sp)
  SB s0, 118(sp)
  LB s0, 111(sp)
  SB s0, 114(sp)
  LB s0, 112(sp)
  SB s0, 107(sp)
  LB s0, 120(sp)
  SB s0, 106(sp)
  LB s0, 76(sp)
  SB s0, 123(sp)
  LB a0, 22(sp)
  SB a0, 22(sp)
  LB a0, 22(sp)
  SB a0, 90(sp)
  LB s0, 5(sp)
  SB s0, 77(sp)
  SB s11, 50(sp)
  LB a0, 94(sp)
  SB a0, 51(sp)
  LB a0, 7(sp)
  SB a0, 52(sp)
  LB a0, 8(sp)
  SB a0, 53(sp)
  LB a0, 10(sp)
  SB a0, 54(sp)
  LB a0, 9(sp)
  SB a0, 55(sp)
  LB a0, 36(sp)
  SB a0, 21(sp)
  LB a0, 0(sp)
  SB a0, 80(sp)
  LB a0, 80(sp)
  SB a0, 80(sp)
  LB a0, 11(sp)
  SB a0, 81(sp)
  LB a0, 81(sp)
  SB a0, 81(sp)
  LB a0, 12(sp)
  SB a0, 23(sp)
  LB a0, 23(sp)
  SB a0, 23(sp)
  LA s3, i
  SD s3, 1568(sp)
  LD s3, 1568(sp)
  LW s3, 0(s3)
  SW s3, 468(sp)
  LW s3, 468(sp)
  ADDIW s3, s3, 1
  SW s3, 472(sp)
  LA s3, i
  SD s3, 1560(sp)
  LD s3, 1560(sp)
  LW s4, 472(sp)
  SW s4, 0(s3)
  LW s3, 312(sp)
  LW s4, 472(sp)
  BLT s4, s3, bb80
  JAL zero, bb5
bb80:   # loop depth 1
  LW s3, 472(sp)
  SW s3, 208(sp)
  LB s3, 121(sp)
  SB s3, 117(sp)
  LB s3, 119(sp)
  SB s3, 105(sp)
  LB s3, 118(sp)
  SB s3, 116(sp)
  LB s3, 114(sp)
  SB s3, 15(sp)
  LB s3, 107(sp)
  SB s3, 108(sp)
  LB s3, 106(sp)
  SB s3, 110(sp)
  LB s3, 123(sp)
  SB s3, 113(sp)
  LB s3, 90(sp)
  SB s3, 75(sp)
  LB s3, 77(sp)
  SB s3, 101(sp)
  LB s1, 50(sp)
  LB s7, 51(sp)
  LB s0, 52(sp)
  LB s9, 53(sp)
  LB s3, 54(sp)
  SB s3, 14(sp)
  LB s3, 55(sp)
  SB s3, 13(sp)
  LB a0, 21(sp)
  SB a0, 21(sp)
  LB a0, 80(sp)
  SB a0, 80(sp)
  LB a0, 81(sp)
  SB a0, 81(sp)
  LB a0, 23(sp)
  SB a0, 23(sp)
  JAL zero, bb60
bb81:   # loop depth 2
  LA s7, chat
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  LA a0, chas
  SD a0, 1168(sp)
  LD a0, 1168(sp)
  ADD s7, a0, s7
  LW a0, 0(s7)
  SW a0, 132(sp)
  LW a0, 132(sp)
  XORI s7, a0, 42
  SLTIU s7, s7, 1
  BNE s7, zero, bb95
  # implict jump to bb82
bb82:   # loop depth 2
  LW a0, 132(sp)
  XORI s7, a0, 47
  SLTIU s7, s7, 1
  # implict jump to bb83
bb83:   # loop depth 2
  BNE s7, zero, bb94
  # implict jump to bb84
bb84:   # loop depth 2
  LW a0, 132(sp)
  XORI a0, a0, 37
  SW a0, 504(sp)
  LW a0, 504(sp)
  SLTIU a0, a0, 1
  SB a0, 67(sp)
  LB a0, 67(sp)
  SB a0, 67(sp)
  # implict jump to bb85
bb85:   # loop depth 2
  LB a0, 67(sp)
  SB a0, 67(sp)
  LB a0, 67(sp)
  BNE a0, zero, bb93
  # implict jump to bb86
bb86:   # loop depth 2
  LW a0, 132(sp)
  XORI a0, a0, 94
  SW a0, 500(sp)
  LW a0, 500(sp)
  SLTIU a0, a0, 1
  SB a0, 66(sp)
  LB a0, 66(sp)
  SB a0, 66(sp)
  # implict jump to bb87
bb87:   # loop depth 2
  LB a0, 66(sp)
  SB a0, 66(sp)
  LB a0, 66(sp)
  BNE a0, zero, bb89
  # implict jump to bb88
bb88:   # loop depth 1
  LA a0, chat
  SD a0, 1096(sp)
  LD a0, 1096(sp)
  LW a0, 0(a0)
  SW a0, 124(sp)
  LW a0, 124(sp)
  ADDIW a0, a0, 1
  SW a0, 408(sp)
  LA a0, chat
  SD a0, 1088(sp)
  LD a0, 1088(sp)
  LW s0, 408(sp)
  SW s0, 0(a0)
  LW a0, 408(sp)
  SLLIW a0, a0, 2
  SW a0, 544(sp)
  LA a0, chas
  SD a0, 1080(sp)
  LD a0, 1080(sp)
  LW s0, 544(sp)
  ADD a0, a0, s0
  SD a0, 1256(sp)
  ADDI a0, zero, 37
  SW a0, 608(sp)
  LW a0, 608(sp)
  LD s0, 1256(sp)
  SW a0, 0(s0)
  LB a0, 67(sp)
  SB a0, 67(sp)
  LB a0, 66(sp)
  SB a0, 66(sp)
  JAL zero, bb78
bb89:   # loop depth 2
  LA a0, chat
  SD a0, 1160(sp)
  LD a0, 1160(sp)
  LW a0, 0(a0)
  SW a0, 148(sp)
  ADDI a0, zero, 1
  SW a0, 404(sp)
  LW a0, 404(sp)
  LW s0, 148(sp)
  SUBW a0, s0, a0
  SW a0, 184(sp)
  LA a0, chat
  SD a0, 1152(sp)
  LD a0, 1152(sp)
  LW s0, 184(sp)
  SW s0, 0(a0)
  LW a0, 148(sp)
  SLLIW a0, a0, 2
  SW a0, 176(sp)
  LA a0, chas
  SD a0, 1144(sp)
  LD a0, 1144(sp)
  LW s0, 176(sp)
  ADD a0, a0, s0
  SD a0, 1280(sp)
  LD a0, 1280(sp)
  LW a0, 0(a0)
  SW a0, 172(sp)
  LA a0, c
  SD a0, 1072(sp)
  LD a0, 1072(sp)
  LW s0, 172(sp)
  SW s0, 0(a0)
  LA a0, ii
  SD a0, 1128(sp)
  LD a0, 1128(sp)
  LW a0, 0(a0)
  SW a0, 168(sp)
  LW a0, 168(sp)
  SLLIW a0, a0, 2
  SW a0, 164(sp)
  LA a0, get2
  SD a0, 1120(sp)
  LD a0, 1120(sp)
  LW s0, 164(sp)
  ADD a0, a0, s0
  SD a0, 1272(sp)
  ADDI a0, zero, 32
  SW a0, 568(sp)
  LW a0, 568(sp)
  LD s0, 1272(sp)
  SW a0, 0(s0)
  LW a0, 168(sp)
  ADDIW a0, a0, 1
  SW a0, 156(sp)
  LW a0, 156(sp)
  SLLIW a0, a0, 2
  SW a0, 152(sp)
  LA a0, get2
  SD a0, 1112(sp)
  LD a0, 1112(sp)
  LW s0, 152(sp)
  ADD a0, a0, s0
  SD a0, 1264(sp)
  LD a0, 1264(sp)
  LW s0, 172(sp)
  SW s0, 0(a0)
  LW a0, 168(sp)
  ADDIW a0, a0, 2
  SW a0, 140(sp)
  LA a0, ii
  SD a0, 1104(sp)
  LD a0, 1104(sp)
  LW s0, 140(sp)
  SW s0, 0(a0)
  LW a0, 184(sp)
  SLTIU a0, a0, 1
  SB a0, 63(sp)
  LB a0, 63(sp)
  BNE a0, zero, bb92
  # implict jump to bb90
bb90:   # loop depth 2
  ADDI a0, zero, 1
  SW a0, 128(sp)
  # implict jump to bb91
bb91:   # loop depth 2
  LW a0, 128(sp)
  SW a0, 128(sp)
  LW a0, 128(sp)
  SLTIU a0, a0, 1
  SB a0, 62(sp)
  LB a0, 62(sp)
  BNE a0, zero, bb88
  JAL zero, bb81
bb92:   # loop depth 2
  ADD a0, zero, zero
  SW a0, 128(sp)
  JAL zero, bb91
bb93:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 66(sp)
  JAL zero, bb87
bb94:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 67(sp)
  JAL zero, bb85
bb95:   # loop depth 2
  ADDI s7, zero, 1
  JAL zero, bb83
bb96:   # loop depth 2
  LA s4, chat
  LW s4, 0(s4)
  SLLIW s4, s4, 2
  LA s5, chas
  ADD s4, s5, s4
  LW s6, 0(s4)
  XORI s4, s6, 42
  SLTIU s4, s4, 1
  BNE s4, zero, bb110
  # implict jump to bb97
bb97:   # loop depth 2
  XORI s4, s6, 47
  SLTIU s4, s4, 1
  # implict jump to bb98
bb98:   # loop depth 2
  BNE s4, zero, bb109
  # implict jump to bb99
bb99:   # loop depth 2
  XORI s5, s6, 37
  SLTIU s5, s5, 1
  # implict jump to bb100
bb100:   # loop depth 2
  BNE s5, zero, bb108
  # implict jump to bb101
bb101:   # loop depth 2
  XORI s6, s6, 94
  SLTIU a0, s6, 1
  SB a0, 24(sp)
  LB a0, 24(sp)
  SB a0, 24(sp)
  # implict jump to bb102
bb102:   # loop depth 2
  LB a0, 24(sp)
  SB a0, 24(sp)
  LB a0, 24(sp)
  BNE a0, zero, bb104
  # implict jump to bb103
bb103:   # loop depth 1
  LA s7, chat
  LW s7, 0(s7)
  ADDIW s7, s7, 1
  LA a0, chat
  SD a0, 1208(sp)
  LD a0, 1208(sp)
  SW s7, 0(a0)
  SLLIW s7, s7, 2
  LA a0, chas
  SD a0, 1200(sp)
  LD a0, 1200(sp)
  ADD s7, a0, s7
  ADDI a0, zero, 47
  SW a0, 340(sp)
  LW a0, 340(sp)
  SW a0, 0(s7)
  LB a0, 24(sp)
  SB a0, 24(sp)
  JAL zero, bb76
bb104:   # loop depth 2
  LA s7, chat
  LW s7, 0(s7)
  ADDI a0, zero, 1
  SW a0, 444(sp)
  LW a0, 444(sp)
  SUBW a0, s7, a0
  SW a0, 180(sp)
  LA a0, chat
  SD a0, 928(sp)
  LD a0, 928(sp)
  LW s0, 180(sp)
  SW s0, 0(a0)
  SLLIW s7, s7, 2
  LA a0, chas
  SD a0, 920(sp)
  LD a0, 920(sp)
  ADD s7, a0, s7
  LW s7, 0(s7)
  LA a0, c
  SD a0, 912(sp)
  LD a0, 912(sp)
  SW s7, 0(a0)
  LA a0, ii
  SD a0, 904(sp)
  LD a0, 904(sp)
  LW a0, 0(a0)
  SW a0, 284(sp)
  LW a0, 284(sp)
  SLLIW a0, a0, 2
  SW a0, 280(sp)
  LA a0, get2
  SD a0, 896(sp)
  LD a0, 896(sp)
  LW s0, 280(sp)
  ADD a0, a0, s0
  SD a0, 1304(sp)
  ADDI a0, zero, 32
  SW a0, 424(sp)
  LW a0, 424(sp)
  LD s0, 1304(sp)
  SW a0, 0(s0)
  LW a0, 284(sp)
  ADDIW a0, a0, 1
  SW a0, 276(sp)
  LW a0, 276(sp)
  SLLIW a0, a0, 2
  SW a0, 272(sp)
  LA a0, get2
  SD a0, 984(sp)
  LD a0, 984(sp)
  LW s0, 272(sp)
  ADD a0, a0, s0
  SD a0, 1296(sp)
  LD a0, 1296(sp)
  SW s7, 0(a0)
  LW a0, 284(sp)
  ADDIW s7, a0, 2
  LA a0, ii
  SD a0, 1216(sp)
  LD a0, 1216(sp)
  SW s7, 0(a0)
  LW a0, 180(sp)
  SLTIU s7, a0, 1
  BNE s7, zero, bb107
  # implict jump to bb105
bb105:   # loop depth 2
  ADDI s7, zero, 1
  # implict jump to bb106
bb106:   # loop depth 2
  SLTIU s7, s7, 1
  BNE s7, zero, bb103
  JAL zero, bb96
bb107:   # loop depth 2
  ADD s7, zero, zero
  JAL zero, bb106
bb108:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 24(sp)
  JAL zero, bb102
bb109:   # loop depth 2
  ADDI s5, zero, 1
  JAL zero, bb100
bb110:   # loop depth 2
  ADDI s4, zero, 1
  JAL zero, bb98
bb111:   # loop depth 2
  LA s2, chat
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LA s3, chas
  ADD s2, s3, s2
  LW s4, 0(s2)
  XORI s2, s4, 42
  SLTIU s2, s2, 1
  BNE s2, zero, bb125
  # implict jump to bb112
bb112:   # loop depth 2
  XORI s2, s4, 47
  SLTIU s8, s2, 1
  # implict jump to bb113
bb113:   # loop depth 2
  BNE s8, zero, bb124
  # implict jump to bb114
bb114:   # loop depth 2
  XORI s3, s4, 37
  SLTIU s3, s3, 1
  # implict jump to bb115
bb115:   # loop depth 2
  BNE s3, zero, bb123
  # implict jump to bb116
bb116:   # loop depth 2
  XORI s4, s4, 94
  SLTIU s2, s4, 1
  # implict jump to bb117
bb117:   # loop depth 2
  BNE s2, zero, bb119
  # implict jump to bb118
bb118:   # loop depth 1
  LA s5, chat
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA a0, chat
  SD a0, 944(sp)
  LD a0, 944(sp)
  SW s5, 0(a0)
  SLLIW s5, s5, 2
  LA a0, chas
  SD a0, 936(sp)
  LD a0, 936(sp)
  ADD s5, a0, s5
  ADDI a0, zero, 42
  SW a0, 412(sp)
  LW a0, 412(sp)
  SW a0, 0(s5)
  JAL zero, bb74
bb119:   # loop depth 2
  LA s5, chat
  LW s5, 0(s5)
  ADDI a0, zero, 1
  SW a0, 476(sp)
  LW a0, 476(sp)
  SUBW a0, s5, a0
  SW a0, 308(sp)
  LA a0, chat
  SD a0, 1000(sp)
  LD a0, 1000(sp)
  LW s0, 308(sp)
  SW s0, 0(a0)
  SLLIW s5, s5, 2
  LA a0, chas
  SD a0, 992(sp)
  LD a0, 992(sp)
  ADD s5, a0, s5
  LW s5, 0(s5)
  LA a0, c
  SD a0, 888(sp)
  LD a0, 888(sp)
  SW s5, 0(a0)
  LA a0, ii
  SD a0, 976(sp)
  LD a0, 976(sp)
  LW a0, 0(a0)
  SW a0, 264(sp)
  LW a0, 264(sp)
  SLLIW a0, a0, 2
  SW a0, 300(sp)
  LA a0, get2
  SD a0, 968(sp)
  LD a0, 968(sp)
  LW s0, 300(sp)
  ADD a0, a0, s0
  SD a0, 1320(sp)
  ADDI a0, zero, 32
  SW a0, 460(sp)
  LW a0, 460(sp)
  LD s0, 1320(sp)
  SW a0, 0(s0)
  LW a0, 264(sp)
  ADDIW a0, a0, 1
  SW a0, 296(sp)
  LW a0, 296(sp)
  SLLIW a0, a0, 2
  SW a0, 292(sp)
  LA a0, get2
  SD a0, 960(sp)
  LD a0, 960(sp)
  LW s0, 292(sp)
  ADD a0, a0, s0
  SD a0, 1224(sp)
  LD a0, 1224(sp)
  SW s5, 0(a0)
  LW a0, 264(sp)
  ADDIW s5, a0, 2
  LA a0, ii
  SD a0, 952(sp)
  LD a0, 952(sp)
  SW s5, 0(a0)
  LW a0, 308(sp)
  SLTIU s5, a0, 1
  BNE s5, zero, bb122
  # implict jump to bb120
bb120:   # loop depth 2
  ADDI s5, zero, 1
  # implict jump to bb121
bb121:   # loop depth 2
  SLTIU s5, s5, 1
  BNE s5, zero, bb118
  JAL zero, bb111
bb122:   # loop depth 2
  ADD s5, zero, zero
  JAL zero, bb121
bb123:   # loop depth 2
  ADDI s2, zero, 1
  JAL zero, bb117
bb124:   # loop depth 2
  ADDI s3, zero, 1
  JAL zero, bb115
bb125:   # loop depth 2
  ADDI s8, zero, 1
  JAL zero, bb113
bb126:   # loop depth 2
  LA s0, chat
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s1, chas
  ADD s0, s1, s0
  LW s2, 0(s0)
  XORI s0, s2, 43
  SLTIU s0, s0, 1
  BNE s0, zero, bb146
  # implict jump to bb127
bb127:   # loop depth 2
  XORI s0, s2, 45
  SLTIU s0, s0, 1
  # implict jump to bb128
bb128:   # loop depth 2
  SB s0, 47(sp)
  LB a0, 47(sp)
  BNE a0, zero, bb145
  # implict jump to bb129
bb129:   # loop depth 2
  XORI s0, s2, 42
  SLTIU s0, s0, 1
  # implict jump to bb130
bb130:   # loop depth 2
  SB s0, 2(sp)
  LB a0, 2(sp)
  BNE a0, zero, bb144
  # implict jump to bb131
bb131:   # loop depth 2
  XORI s1, s2, 47
  SLTIU s1, s1, 1
  # implict jump to bb132
bb132:   # loop depth 2
  SB s1, 73(sp)
  LB a0, 73(sp)
  BNE a0, zero, bb143
  # implict jump to bb133
bb133:   # loop depth 2
  XORI s1, s2, 37
  SLTIU s4, s1, 1
  # implict jump to bb134
bb134:   # loop depth 2
  BNE s4, zero, bb142
  # implict jump to bb135
bb135:   # loop depth 2
  XORI s2, s2, 94
  SLTIU s5, s2, 1
  # implict jump to bb136
bb136:   # loop depth 2
  BNE s5, zero, bb138
  # implict jump to bb137
bb137:   # loop depth 1
  LA s3, chat
  LW s3, 0(s3)
  ADDIW a0, s3, 1
  SW a0, 324(sp)
  LA s3, chat
  LW a0, 324(sp)
  SW a0, 0(s3)
  LW a0, 324(sp)
  SLLIW a0, a0, 2
  SW a0, 320(sp)
  LA s3, chas
  LW a0, 320(sp)
  ADD a0, s3, a0
  SD a0, 1328(sp)
  ADDI s3, zero, 45
  LD a0, 1328(sp)
  SW s3, 0(a0)
  LB a0, 2(sp)
  SB a0, 2(sp)
  LB s1, 73(sp)
  LB s2, 47(sp)
  JAL zero, bb72
bb138:   # loop depth 2
  LA s3, chat
  LW a0, 0(s3)
  SW a0, 204(sp)
  ADDI s3, zero, 1
  LW a0, 204(sp)
  SUBW a0, a0, s3
  SW a0, 200(sp)
  LA s3, chat
  LW a0, 200(sp)
  SW a0, 0(s3)
  LW a0, 204(sp)
  SLLIW a0, a0, 2
  SW a0, 196(sp)
  LA s3, chas
  LW a0, 196(sp)
  ADD s3, s3, a0
  LW a0, 0(s3)
  SW a0, 192(sp)
  LA s3, c
  LW a0, 192(sp)
  SW a0, 0(s3)
  LA s3, ii
  LW a0, 0(s3)
  SW a0, 228(sp)
  LW a0, 228(sp)
  SLLIW a0, a0, 2
  SW a0, 336(sp)
  LA s3, get2
  LW a0, 336(sp)
  ADD a0, s3, a0
  SD a0, 1336(sp)
  ADDI s3, zero, 32
  LD a0, 1336(sp)
  SW s3, 0(a0)
  LW a0, 228(sp)
  ADDIW s3, a0, 1
  SLLIW a0, s3, 2
  SW a0, 332(sp)
  LA s3, get2
  LW a0, 332(sp)
  ADD s3, s3, a0
  LW a0, 192(sp)
  SW a0, 0(s3)
  LW a0, 228(sp)
  ADDIW a0, a0, 2
  SW a0, 328(sp)
  LA s3, ii
  LW a0, 328(sp)
  SW a0, 0(s3)
  LW a0, 200(sp)
  SLTIU s3, a0, 1
  BNE s3, zero, bb141
  # implict jump to bb139
bb139:   # loop depth 2
  ADDI s3, zero, 1
  # implict jump to bb140
bb140:   # loop depth 2
  SLTIU s3, s3, 1
  BNE s3, zero, bb137
  JAL zero, bb126
bb141:   # loop depth 2
  ADD s3, zero, zero
  JAL zero, bb140
bb142:   # loop depth 2
  ADDI s5, zero, 1
  JAL zero, bb136
bb143:   # loop depth 2
  ADDI s4, zero, 1
  JAL zero, bb134
bb144:   # loop depth 2
  ADDI s1, zero, 1
  JAL zero, bb132
bb145:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb130
bb146:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb128
bb147:   # loop depth 2
  LA a0, chat
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LA s0, chas
  ADD a0, s0, a0
  LW s11, 0(a0)
  XORI a0, s11, 43
  SLTIU a0, a0, 1
  BNE a0, zero, bb167
  # implict jump to bb148
bb148:   # loop depth 2
  XORI a0, s11, 45
  SLTIU s9, a0, 1
  # implict jump to bb149
bb149:   # loop depth 2
  BNE s9, zero, bb166
  # implict jump to bb150
bb150:   # loop depth 2
  XORI s0, s11, 42
  SLTIU s0, s0, 1
  # implict jump to bb151
bb151:   # loop depth 2
  SB s0, 41(sp)
  LB s0, 41(sp)
  BNE s0, zero, bb165
  # implict jump to bb152
bb152:   # loop depth 2
  XORI s0, s11, 47
  SLTIU s0, s0, 1
  # implict jump to bb153
bb153:   # loop depth 2
  SB s0, 21(sp)
  LB a0, 21(sp)
  BNE a0, zero, bb164
  # implict jump to bb154
bb154:   # loop depth 2
  XORI s1, s11, 37
  SLTIU s1, s1, 1
  # implict jump to bb155
bb155:   # loop depth 2
  SB s1, 40(sp)
  LB s1, 40(sp)
  BNE s1, zero, bb163
  # implict jump to bb156
bb156:   # loop depth 2
  XORI s1, s11, 94
  SLTIU s1, s1, 1
  # implict jump to bb157
bb157:   # loop depth 2
  BNE s1, zero, bb159
  # implict jump to bb158
bb158:   # loop depth 1
  LA s11, chat
  LW s11, 0(s11)
  ADDIW s11, s11, 1
  LA s2, chat
  SD s2, 1016(sp)
  LD s2, 1016(sp)
  SW s11, 0(s2)
  SLLIW s11, s11, 2
  LA s2, chas
  SD s2, 1008(sp)
  LD s2, 1008(sp)
  ADD s11, s2, s11
  ADDI s2, zero, 43
  SW s2, 376(sp)
  LW s2, 376(sp)
  SW s2, 0(s11)
  LB a0, 21(sp)
  SB a0, 21(sp)
  SB s1, 65(sp)
  LB s1, 41(sp)
  LB s0, 40(sp)
  JAL zero, bb70
bb159:   # loop depth 2
  LA s11, chat
  LW s11, 0(s11)
  ADDI s2, zero, 1
  SW s2, 380(sp)
  LW s2, 380(sp)
  SUBW s2, s11, s2
  SW s2, 232(sp)
  LA s2, chat
  SD s2, 1136(sp)
  LD s2, 1136(sp)
  LW s3, 232(sp)
  SW s3, 0(s2)
  SLLIW s11, s11, 2
  LA s2, chas
  SD s2, 1064(sp)
  LD s2, 1064(sp)
  ADD s11, s2, s11
  LW s11, 0(s11)
  LA s2, c
  SD s2, 1056(sp)
  LD s2, 1056(sp)
  SW s11, 0(s2)
  LA s2, ii
  SD s2, 1048(sp)
  LD s2, 1048(sp)
  LW s2, 0(s2)
  SW s2, 188(sp)
  LW s2, 188(sp)
  SLLIW s2, s2, 2
  SW s2, 224(sp)
  LA s2, get2
  SD s2, 1040(sp)
  LD s2, 1040(sp)
  LW s3, 224(sp)
  ADD s2, s2, s3
  SD s2, 1352(sp)
  ADDI s2, zero, 32
  SW s2, 356(sp)
  LW s2, 356(sp)
  LD s3, 1352(sp)
  SW s2, 0(s3)
  LW s2, 188(sp)
  ADDIW s2, s2, 1
  SW s2, 220(sp)
  LW s2, 220(sp)
  SLLIW s2, s2, 2
  SW s2, 216(sp)
  LA s2, get2
  SD s2, 1032(sp)
  LD s2, 1032(sp)
  LW s3, 216(sp)
  ADD s2, s2, s3
  SD s2, 1344(sp)
  LD s2, 1344(sp)
  SW s11, 0(s2)
  LW s2, 188(sp)
  ADDIW s11, s2, 2
  LA s2, ii
  SD s2, 1024(sp)
  LD s2, 1024(sp)
  SW s11, 0(s2)
  LW s2, 232(sp)
  SLTIU s11, s2, 1
  BNE s11, zero, bb162
  # implict jump to bb160
bb160:   # loop depth 2
  ADDI a0, zero, 1
  SW a0, 436(sp)
  # implict jump to bb161
bb161:   # loop depth 2
  LW a0, 436(sp)
  SW a0, 436(sp)
  LW a0, 436(sp)
  SLTIU s11, a0, 1
  BNE s11, zero, bb158
  JAL zero, bb147
bb162:   # loop depth 2
  ADD a0, zero, zero
  SW a0, 436(sp)
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
  ADDI s9, zero, 1
  JAL zero, bb149
bb168:   # loop depth 1
  LA a0, chat
  SD a0, 1504(sp)
  LD a0, 1504(sp)
  LW a0, 0(a0)
  SW a0, 576(sp)
  ADDI a0, zero, 1
  SW a0, 556(sp)
  LW a0, 556(sp)
  LW s2, 576(sp)
  SUBW a0, s2, a0
  SW a0, 548(sp)
  LA a0, chat
  SD a0, 1496(sp)
  LD a0, 1496(sp)
  LW s2, 548(sp)
  SW s2, 0(a0)
  LW a0, 576(sp)
  SLLIW a0, a0, 2
  SW a0, 584(sp)
  LA a0, chas
  SD a0, 1400(sp)
  LD a0, 1400(sp)
  LW s2, 584(sp)
  ADD a0, a0, s2
  SD a0, 1384(sp)
  LD a0, 1384(sp)
  LW a0, 0(a0)
  SW a0, 592(sp)
  LA a0, c
  SD a0, 1480(sp)
  LD a0, 1480(sp)
  LW s2, 592(sp)
  SW s2, 0(a0)
  LW a0, 592(sp)
  XORI a0, a0, 40
  SW a0, 480(sp)
  LW a0, 480(sp)
  BNE a0, zero, bb169
  JAL zero, bb68
bb169:   # loop depth 2
  LA a0, ii
  SD a0, 1472(sp)
  LD a0, 1472(sp)
  LW a0, 0(a0)
  SW a0, 596(sp)
  LW a0, 596(sp)
  SLLIW a0, a0, 2
  SW a0, 604(sp)
  LA a0, get2
  SD a0, 1464(sp)
  LD a0, 1464(sp)
  LW s2, 604(sp)
  ADD a0, a0, s2
  SD a0, 1376(sp)
  ADDI a0, zero, 32
  SW a0, 400(sp)
  LW a0, 400(sp)
  LD s2, 1376(sp)
  SW a0, 0(s2)
  LW a0, 596(sp)
  ADDIW a0, a0, 1
  SW a0, 540(sp)
  LW a0, 540(sp)
  SLLIW a0, a0, 2
  SW a0, 144(sp)
  LA a0, get2
  SD a0, 1456(sp)
  LD a0, 1456(sp)
  LW s2, 144(sp)
  ADD a0, a0, s2
  SD a0, 1368(sp)
  LA a0, c
  SD a0, 1448(sp)
  LD a0, 1448(sp)
  LW a0, 0(a0)
  SW a0, 260(sp)
  LW a0, 260(sp)
  LD s2, 1368(sp)
  SW a0, 0(s2)
  LW a0, 596(sp)
  ADDIW a0, a0, 2
  SW a0, 256(sp)
  LA a0, ii
  SD a0, 1440(sp)
  LD a0, 1440(sp)
  LW s2, 256(sp)
  SW s2, 0(a0)
  LA a0, chat
  SD a0, 1432(sp)
  LD a0, 1432(sp)
  LW a0, 0(a0)
  SW a0, 252(sp)
  ADDI a0, zero, 1
  SW a0, 392(sp)
  LW a0, 392(sp)
  LW s2, 252(sp)
  SUBW a0, s2, a0
  SW a0, 248(sp)
  LA a0, chat
  SD a0, 1424(sp)
  LD a0, 1424(sp)
  LW s2, 248(sp)
  SW s2, 0(a0)
  LW a0, 252(sp)
  SLLIW a0, a0, 2
  SW a0, 244(sp)
  LA a0, chas
  SD a0, 1416(sp)
  LD a0, 1416(sp)
  LW s2, 244(sp)
  ADD a0, a0, s2
  SD a0, 1360(sp)
  LD a0, 1360(sp)
  LW a0, 0(a0)
  SW a0, 236(sp)
  LA a0, c
  SD a0, 1408(sp)
  LD a0, 1408(sp)
  LW s2, 236(sp)
  SW s2, 0(a0)
  LW a0, 236(sp)
  XORI a0, a0, 40
  SW a0, 288(sp)
  LW a0, 288(sp)
  BNE a0, zero, bb169
  JAL zero, bb68
bb170:   # loop depth 1
  LA a0, chat
  SD a0, 1528(sp)
  LD a0, 1528(sp)
  LW a0, 0(a0)
  SW a0, 448(sp)
  LW a0, 448(sp)
  ADDIW a0, a0, 1
  SW a0, 552(sp)
  LA a0, chat
  SD a0, 1520(sp)
  LD a0, 1520(sp)
  LW s2, 552(sp)
  SW s2, 0(a0)
  LW a0, 552(sp)
  SLLIW a0, a0, 2
  SW a0, 560(sp)
  LA a0, chas
  SD a0, 1512(sp)
  LD a0, 1512(sp)
  LW s2, 560(sp)
  ADD a0, a0, s2
  SD a0, 1392(sp)
  ADDI a0, zero, 94
  SW a0, 564(sp)
  LW a0, 564(sp)
  LD s2, 1392(sp)
  SW a0, 0(s2)
  JAL zero, bb67
bb171:   # loop depth 1
  LA a0, chat
  SD a0, 1552(sp)
  LD a0, 1552(sp)
  LW a0, 0(a0)
  SW a0, 352(sp)
  LW a0, 352(sp)
  ADDIW a0, a0, 1
  SW a0, 360(sp)
  LA a0, chat
  SD a0, 1544(sp)
  LD a0, 1544(sp)
  LW s2, 360(sp)
  SW s2, 0(a0)
  LW a0, 360(sp)
  SLLIW a0, a0, 2
  SW a0, 368(sp)
  LA a0, chas
  SD a0, 1536(sp)
  LD a0, 1536(sp)
  LW s2, 368(sp)
  ADD a0, a0, s2
  SD a0, 1488(sp)
  ADDI a0, zero, 40
  SW a0, 572(sp)
  LW a0, 572(sp)
  LD s2, 1488(sp)
  SW a0, 0(s2)
  JAL zero, bb66
bb172:   # loop depth 1
  LA a0, ii
  SD a0, 1240(sp)
  LD a0, 1240(sp)
  LW a0, 0(a0)
  SW a0, 516(sp)
  LW a0, 516(sp)
  SLLIW a0, a0, 2
  SW a0, 588(sp)
  LA a0, get2
  SD a0, 1232(sp)
  LD a0, 1232(sp)
  LW s2, 588(sp)
  ADD a0, a0, s2
  SD a0, 624(sp)
  LD a0, 624(sp)
  LW s2, 212(sp)
  SW s2, 0(a0)
  LW a0, 516(sp)
  ADDIW a0, a0, 1
  SW a0, 372(sp)
  LA a0, ii
  SD a0, 1312(sp)
  LD a0, 1312(sp)
  LW s2, 372(sp)
  SW s2, 0(a0)
  LB a0, 78(sp)
  SB a0, 12(sp)
  LB a0, 79(sp)
  SB a0, 11(sp)
  LB a0, 82(sp)
  SB a0, 0(sp)
  LB a0, 21(sp)
  SB a0, 36(sp)
  LB a0, 87(sp)
  SB a0, 9(sp)
  LB a0, 2(sp)
  SB a0, 10(sp)
  SB s9, 8(sp)
  LB a0, 88(sp)
  SB a0, 7(sp)
  LB a0, 74(sp)
  SB a0, 94(sp)
  LB s11, 56(sp)
  LB s2, 91(sp)
  SB s2, 5(sp)
  LB s2, 5(sp)
  SB s2, 5(sp)
  LB a0, 64(sp)
  SB a0, 22(sp)
  LB a0, 22(sp)
  SB a0, 22(sp)
  LB s2, 93(sp)
  SB s2, 76(sp)
  LB s2, 95(sp)
  SB s2, 120(sp)
  LB s2, 96(sp)
  SB s2, 112(sp)
  LB s2, 98(sp)
  SB s2, 111(sp)
  LB s2, 99(sp)
  SB s2, 109(sp)
  JAL zero, bb79
bb173:   # loop depth 1
  ADDI a0, zero, 1
  SW a0, 240(sp)
  JAL zero, bb64
bb174:   # loop depth 1
  ADDI a0, zero, 57
  SW a0, 488(sp)
  LW a0, 488(sp)
  LW s2, 212(sp)
  SLT a0, a0, s2
  SB a0, 28(sp)
  LB a0, 28(sp)
  XORI a0, a0, 1
  SB a0, 58(sp)
  LB a0, 58(sp)
  SB a0, 58(sp)
  JAL zero, bb62
bb175:   # loop depth 1
  LW s0, 312(sp)
  SLLIW s0, s0, 2
  LA s2, get
  ADD s0, s2, s0
  SW s1, 0(s0)
  LW s0, 312(sp)
  ADDIW s2, s0, 1
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb1
bb176:   # loop depth 1
  XORI s0, s1, 10
  SLTU s0, zero, s0
  JAL zero, bb3
