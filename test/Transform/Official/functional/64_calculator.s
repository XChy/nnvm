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
  ADDI sp, sp, -560
  SD ra, 296(sp)
  SD s0, 304(sp)
  SD s1, 312(sp)
  SD s2, 320(sp)
  SD s3, 328(sp)
  SD s4, 336(sp)
  SD s5, 344(sp)
  SD s6, 352(sp)
  SD s7, 360(sp)
  SD s8, 368(sp)
  SD s9, 376(sp)
  SD s10, 384(sp)
  SD s11, 392(sp)
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
  SW s2, 204(sp)
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
  LW s0, 204(sp)
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
  LD ra, 296(sp)
  LD s0, 304(sp)
  LD s1, 312(sp)
  LD s2, 320(sp)
  LD s3, 328(sp)
  LD s4, 336(sp)
  LD s5, 344(sp)
  LD s6, 352(sp)
  LD s7, 360(sp)
  LD s8, 368(sp)
  LD s9, 376(sp)
  LD s10, 384(sp)
  LD s11, 392(sp)
  ADDI sp, sp, 560
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
  SW a0, 208(sp)
  ADD a0, zero, zero
  SB a0, 72(sp)
  ADD a0, zero, zero
  SB a0, 73(sp)
  ADD a0, zero, zero
  SB a0, 74(sp)
  ADD a0, zero, zero
  SB a0, 60(sp)
  ADD a0, zero, zero
  SB a0, 24(sp)
  ADD s9, zero, zero
  ADD a0, zero, zero
  SB a0, 12(sp)
  ADD a0, zero, zero
  SB a0, 76(sp)
  ADD a0, zero, zero
  SB a0, 77(sp)
  ADD a0, zero, zero
  SB a0, 21(sp)
  ADD s3, zero, zero
  ADD s1, zero, zero
  ADD a0, zero, zero
  SB a0, 4(sp)
  ADD a0, zero, zero
  SB a0, 57(sp)
  ADD s0, zero, zero
  ADD s7, zero, zero
  ADD a0, zero, zero
  SB a0, 86(sp)
  ADD a0, zero, zero
  SB a0, 44(sp)
  ADD a0, zero, zero
  SB a0, 25(sp)
  # implict jump to bb60
bb60:
  LB a0, 25(sp)
  SB a0, 25(sp)
  LB a0, 25(sp)
  SB a0, 117(sp)
  LB a0, 44(sp)
  SB a0, 44(sp)
  LB a0, 44(sp)
  SB a0, 118(sp)
  LB a0, 86(sp)
  SB a0, 86(sp)
  LB a0, 86(sp)
  SB a0, 112(sp)
  SB s0, 104(sp)
  LB a0, 57(sp)
  SB a0, 57(sp)
  LB a0, 4(sp)
  SB a0, 4(sp)
  SB s1, 103(sp)
  SB s3, 90(sp)
  LB a0, 21(sp)
  SB a0, 21(sp)
  LB a0, 77(sp)
  SB a0, 101(sp)
  LB a0, 76(sp)
  SB a0, 100(sp)
  LB a0, 12(sp)
  SB a0, 99(sp)
  SB s9, 98(sp)
  LB a0, 24(sp)
  SB a0, 24(sp)
  LB a0, 60(sp)
  SB a0, 7(sp)
  LB a0, 74(sp)
  SB a0, 97(sp)
  LB s0, 73(sp)
  LB a0, 72(sp)
  SB a0, 15(sp)
  LB a0, 15(sp)
  SB a0, 15(sp)
  LW s8, 208(sp)
  SLLIW s8, s8, 2
  LA s9, get
  ADD s8, s9, s8
  LW s1, 0(s8)
  SW s1, 132(sp)
  LW s1, 132(sp)
  SLTI s8, s1, 48
  XORI s8, s8, 1
  BNE s8, zero, bb174
  # implict jump to bb61
bb61:
  ADD s8, zero, zero
  # implict jump to bb62
bb62:
  BNE s8, zero, bb173
  # implict jump to bb63
bb63:
  ADD s8, zero, zero
  # implict jump to bb64
bb64:
  XORI s8, s8, 1
  SLTIU s8, s8, 1
  BNE s8, zero, bb172
  # implict jump to bb65
bb65:
  LW s1, 132(sp)
  XORI s8, s1, 40
  SLTIU s8, s8, 1
  BNE s8, zero, bb171
  # implict jump to bb66
bb66:
  LW s1, 132(sp)
  XORI s8, s1, 94
  SLTIU s8, s8, 1
  BNE s8, zero, bb170
  # implict jump to bb67
bb67:
  LW s1, 132(sp)
  XORI s8, s1, 41
  SLTIU s8, s8, 1
  BNE s8, zero, bb168
  # implict jump to bb68
bb68:
  LW s1, 132(sp)
  XORI s8, s1, 43
  SLTIU s8, s8, 1
  BNE s8, zero, bb147
  # implict jump to bb69
bb69:
  LB a0, 4(sp)
  SB a0, 4(sp)
  LB s1, 21(sp)
  SB s1, 21(sp)
  LB a0, 15(sp)
  SB a0, 15(sp)
  # implict jump to bb70
bb70:
  LB a0, 15(sp)
  SB a0, 15(sp)
  LB a0, 15(sp)
  SB a0, 62(sp)
  SB s0, 61(sp)
  LB a0, 21(sp)
  SB a0, 102(sp)
  LB a0, 4(sp)
  SB a0, 4(sp)
  LB a0, 4(sp)
  SB a0, 106(sp)
  SB s7, 107(sp)
  LW a0, 132(sp)
  XORI s7, a0, 45
  SLTIU s7, s7, 1
  BNE s7, zero, bb126
  # implict jump to bb71
bb71:
  LB a0, 57(sp)
  SB a0, 57(sp)
  LB a0, 98(sp)
  SB a0, 22(sp)
  LB a0, 24(sp)
  SB a0, 24(sp)
  LB s9, 7(sp)
  LB s1, 97(sp)
  # implict jump to bb72
bb72:
  SB s1, 68(sp)
  SB s9, 67(sp)
  LB a0, 24(sp)
  SB a0, 24(sp)
  LB a0, 24(sp)
  SB a0, 66(sp)
  LB a0, 22(sp)
  SB a0, 65(sp)
  LB a0, 57(sp)
  SB a0, 57(sp)
  LB a0, 57(sp)
  SB a0, 38(sp)
  LW a0, 132(sp)
  XORI s3, a0, 42
  SLTIU s3, s3, 1
  BNE s3, zero, bb111
  # implict jump to bb73
bb73:
  LB s3, 90(sp)
  LB s7, 100(sp)
  LB s6, 99(sp)
  # implict jump to bb74
bb74:
  SB s6, 69(sp)
  SB s7, 32(sp)
  LW a0, 132(sp)
  XORI s7, a0, 47
  SLTIU s7, s7, 1
  BNE s7, zero, bb96
  # implict jump to bb75
bb75:
  LB s9, 104(sp)
  LB s11, 103(sp)
  LB s7, 101(sp)
  # implict jump to bb76
bb76:
  SB s7, 36(sp)
  SB s9, 35(sp)
  LW a0, 132(sp)
  XORI s8, a0, 37
  SLTIU s8, s8, 1
  BNE s8, zero, bb81
  # implict jump to bb77
bb77:
  LB s8, 117(sp)
  LB s9, 118(sp)
  LB a0, 112(sp)
  SB a0, 23(sp)
  # implict jump to bb78
bb78:
  LB a0, 23(sp)
  SB a0, 46(sp)
  LA a0, ii
  SD a0, 496(sp)
  LD a0, 496(sp)
  LW a0, 0(a0)
  SW a0, 272(sp)
  LW a0, 272(sp)
  SLLIW a0, a0, 2
  SW a0, 276(sp)
  LA a0, get2
  SD a0, 488(sp)
  LD a0, 488(sp)
  LW s0, 276(sp)
  ADD a0, a0, s0
  SD a0, 544(sp)
  ADDI a0, zero, 32
  SW a0, 188(sp)
  LW a0, 188(sp)
  LD s0, 544(sp)
  SW a0, 0(s0)
  LW a0, 272(sp)
  ADDIW a0, a0, 1
  SW a0, 280(sp)
  LA a0, ii
  SD a0, 480(sp)
  LD a0, 480(sp)
  LW s0, 280(sp)
  SW s0, 0(a0)
  SB s8, 78(sp)
  SB s9, 79(sp)
  LB a0, 46(sp)
  SB a0, 80(sp)
  LB a0, 107(sp)
  SB a0, 81(sp)
  LB a0, 35(sp)
  SB a0, 82(sp)
  LB a0, 38(sp)
  SB a0, 83(sp)
  LB a0, 106(sp)
  SB a0, 4(sp)
  LB a0, 4(sp)
  SB a0, 4(sp)
  SB s3, 87(sp)
  LB a0, 102(sp)
  SB a0, 29(sp)
  LB a0, 36(sp)
  SB a0, 28(sp)
  LB a0, 32(sp)
  SB a0, 49(sp)
  LB a0, 49(sp)
  SB a0, 49(sp)
  LB a0, 69(sp)
  SB a0, 12(sp)
  LB a0, 65(sp)
  SB a0, 89(sp)
  LB a0, 66(sp)
  SB a0, 20(sp)
  LB s4, 67(sp)
  LB s1, 68(sp)
  LB s0, 61(sp)
  LB a0, 62(sp)
  SB a0, 15(sp)
  LB a0, 15(sp)
  SB a0, 15(sp)
  # implict jump to bb79
bb79:
  LB a0, 15(sp)
  SB a0, 15(sp)
  LB a0, 15(sp)
  SB a0, 41(sp)
  SB s0, 108(sp)
  SB s1, 42(sp)
  SB s4, 43(sp)
  LB a0, 20(sp)
  SB a0, 109(sp)
  LB a0, 89(sp)
  SB a0, 89(sp)
  LB a0, 12(sp)
  SB a0, 12(sp)
  LB a0, 49(sp)
  SB a0, 49(sp)
  LB a0, 49(sp)
  SB a0, 110(sp)
  LB s5, 28(sp)
  LB s4, 29(sp)
  LB a0, 87(sp)
  SB a0, 87(sp)
  LB a0, 87(sp)
  SB a0, 111(sp)
  SB s11, 105(sp)
  LB a0, 4(sp)
  SB a0, 4(sp)
  LB a0, 83(sp)
  SB a0, 85(sp)
  LB a0, 85(sp)
  SB a0, 85(sp)
  LB a0, 82(sp)
  SB a0, 113(sp)
  LB a0, 81(sp)
  SB a0, 48(sp)
  LB a0, 80(sp)
  SB a0, 114(sp)
  LB a0, 79(sp)
  SB a0, 115(sp)
  LB a0, 78(sp)
  SB a0, 116(sp)
  LA s8, i
  LW s8, 0(s8)
  ADDIW a0, s8, 1
  SW a0, 124(sp)
  LA s8, i
  LW a0, 124(sp)
  SW a0, 0(s8)
  LW a0, 204(sp)
  LW s0, 124(sp)
  BLT s0, a0, bb80
  JAL zero, bb5
bb80:
  LW a0, 124(sp)
  SW a0, 208(sp)
  LB a0, 41(sp)
  SB a0, 72(sp)
  LB a0, 108(sp)
  SB a0, 73(sp)
  LB a0, 42(sp)
  SB a0, 74(sp)
  LB a0, 43(sp)
  SB a0, 60(sp)
  LB a0, 109(sp)
  SB a0, 24(sp)
  LB a0, 24(sp)
  SB a0, 24(sp)
  LB s9, 89(sp)
  LB a0, 12(sp)
  SB a0, 12(sp)
  LB a0, 110(sp)
  SB a0, 76(sp)
  SB s5, 77(sp)
  SB s4, 21(sp)
  LB s3, 111(sp)
  LB s1, 105(sp)
  LB a0, 4(sp)
  SB a0, 4(sp)
  LB a0, 85(sp)
  SB a0, 57(sp)
  LB a0, 57(sp)
  SB a0, 57(sp)
  LB s0, 113(sp)
  LB s7, 48(sp)
  LB a0, 114(sp)
  SB a0, 86(sp)
  LB a0, 86(sp)
  SB a0, 86(sp)
  LB a0, 115(sp)
  SB a0, 44(sp)
  LB a0, 44(sp)
  SB a0, 44(sp)
  LB a0, 116(sp)
  SB a0, 25(sp)
  LB a0, 25(sp)
  SB a0, 25(sp)
  JAL zero, bb60
bb81:
  LA s8, chat
  LW s8, 0(s8)
  SLLIW s8, s8, 2
  LA s9, chas
  ADD s8, s9, s8
  LW a0, 0(s8)
  SW a0, 284(sp)
  LW a0, 284(sp)
  XORI s8, a0, 42
  SLTIU s8, s8, 1
  BNE s8, zero, bb95
  # implict jump to bb82
bb82:
  LW a0, 284(sp)
  XORI s8, a0, 47
  SLTIU s8, s8, 1
  # implict jump to bb83
bb83:
  BNE s8, zero, bb94
  # implict jump to bb84
bb84:
  LW a0, 284(sp)
  XORI s9, a0, 37
  SLTIU s9, s9, 1
  # implict jump to bb85
bb85:
  SB s9, 5(sp)
  LB a0, 5(sp)
  BNE a0, zero, bb93
  # implict jump to bb86
bb86:
  LW a0, 284(sp)
  XORI s9, a0, 94
  SLTIU s9, s9, 1
  # implict jump to bb87
bb87:
  SB s9, 6(sp)
  LB a0, 6(sp)
  BNE a0, zero, bb89
  # implict jump to bb88
bb88:
  LA s9, chat
  LW s9, 0(s9)
  ADDIW a0, s9, 1
  SW a0, 176(sp)
  LA s9, chat
  LW a0, 176(sp)
  SW a0, 0(s9)
  LW a0, 176(sp)
  SLLIW a0, a0, 2
  SW a0, 136(sp)
  LA s9, chas
  LW a0, 136(sp)
  ADD a0, s9, a0
  SD a0, 512(sp)
  ADDI s9, zero, 37
  LD a0, 512(sp)
  SW s9, 0(a0)
  LB s9, 5(sp)
  LB a0, 6(sp)
  SB a0, 23(sp)
  JAL zero, bb78
bb89:
  LA s9, chat
  LW a0, 0(s9)
  SW a0, 288(sp)
  ADDI s9, zero, 1
  LW a0, 288(sp)
  SUBW s9, a0, s9
  LA a0, chat
  SD a0, 472(sp)
  LD a0, 472(sp)
  SW s9, 0(a0)
  LW a0, 288(sp)
  SLLIW a0, a0, 2
  SW a0, 260(sp)
  LA a0, chas
  SD a0, 400(sp)
  LD a0, 400(sp)
  LW s0, 260(sp)
  ADD a0, a0, s0
  SD a0, 536(sp)
  LD a0, 536(sp)
  LW a0, 0(a0)
  SW a0, 152(sp)
  LA a0, c
  SD a0, 456(sp)
  LD a0, 456(sp)
  LW s0, 152(sp)
  SW s0, 0(a0)
  LA a0, ii
  SD a0, 448(sp)
  LD a0, 448(sp)
  LW a0, 0(a0)
  SW a0, 156(sp)
  LW a0, 156(sp)
  SLLIW a0, a0, 2
  SW a0, 160(sp)
  LA a0, get2
  SD a0, 416(sp)
  LD a0, 416(sp)
  LW s0, 160(sp)
  ADD a0, a0, s0
  SD a0, 528(sp)
  ADDI a0, zero, 32
  SW a0, 216(sp)
  LW a0, 216(sp)
  LD s0, 528(sp)
  SW a0, 0(s0)
  LW a0, 156(sp)
  ADDIW a0, a0, 1
  SW a0, 164(sp)
  LW a0, 164(sp)
  SLLIW a0, a0, 2
  SW a0, 168(sp)
  LA a0, get2
  SD a0, 408(sp)
  LD a0, 408(sp)
  LW s0, 168(sp)
  ADD a0, a0, s0
  SD a0, 520(sp)
  LD a0, 520(sp)
  LW s0, 152(sp)
  SW s0, 0(a0)
  LW a0, 156(sp)
  ADDIW a0, a0, 2
  SW a0, 172(sp)
  LA a0, ii
  SD a0, 424(sp)
  LD a0, 424(sp)
  LW s0, 172(sp)
  SW s0, 0(a0)
  SLTIU s9, s9, 1
  BNE s9, zero, bb92
  # implict jump to bb90
bb90:
  ADDI s9, zero, 1
  # implict jump to bb91
bb91:
  SLTIU s9, s9, 1
  BNE s9, zero, bb88
  JAL zero, bb81
bb92:
  ADD s9, zero, zero
  JAL zero, bb91
bb93:
  ADDI s9, zero, 1
  JAL zero, bb87
bb94:
  ADDI s9, zero, 1
  JAL zero, bb85
bb95:
  ADDI s8, zero, 1
  JAL zero, bb83
bb96:
  LA s7, chat
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  LA s8, chas
  ADD s7, s8, s7
  LW s10, 0(s7)
  XORI s7, s10, 42
  SLTIU s7, s7, 1
  BNE s7, zero, bb110
  # implict jump to bb97
bb97:
  XORI s7, s10, 47
  SLTIU s9, s7, 1
  # implict jump to bb98
bb98:
  BNE s9, zero, bb109
  # implict jump to bb99
bb99:
  XORI s8, s10, 37
  SLTIU s8, s8, 1
  # implict jump to bb100
bb100:
  SB s8, 30(sp)
  LB a0, 30(sp)
  BNE a0, zero, bb108
  # implict jump to bb101
bb101:
  XORI s8, s10, 94
  SLTIU s11, s8, 1
  # implict jump to bb102
bb102:
  BNE s11, zero, bb104
  # implict jump to bb103
bb103:
  LA s10, chat
  LW s10, 0(s10)
  ADDIW a0, s10, 1
  SW a0, 264(sp)
  LA s10, chat
  LW a0, 264(sp)
  SW a0, 0(s10)
  LW a0, 264(sp)
  SLLIW a0, a0, 2
  SW a0, 268(sp)
  LA s10, chas
  LW a0, 268(sp)
  ADD a0, s10, a0
  SD a0, 464(sp)
  ADDI s10, zero, 47
  LD a0, 464(sp)
  SW s10, 0(a0)
  LB s7, 30(sp)
  JAL zero, bb76
bb104:
  LA s10, chat
  LW a0, 0(s10)
  SW a0, 232(sp)
  ADDI s10, zero, 1
  LW a0, 232(sp)
  SUBW a0, a0, s10
  SW a0, 224(sp)
  LA s10, chat
  LW a0, 224(sp)
  SW a0, 0(s10)
  LW a0, 232(sp)
  SLLIW s10, a0, 2
  LA a0, chas
  SD a0, 504(sp)
  LD a0, 504(sp)
  ADD s10, a0, s10
  LW a0, 0(s10)
  SW a0, 228(sp)
  LA s10, c
  LW a0, 228(sp)
  SW a0, 0(s10)
  LA s10, ii
  LW a0, 0(s10)
  SW a0, 240(sp)
  LW a0, 240(sp)
  SLLIW a0, a0, 2
  SW a0, 220(sp)
  LA s10, get2
  LW a0, 220(sp)
  ADD s10, s10, a0
  ADDI a0, zero, 32
  SW a0, 148(sp)
  LW a0, 148(sp)
  SW a0, 0(s10)
  LW a0, 240(sp)
  ADDIW s10, a0, 1
  SLLIW a0, s10, 2
  SW a0, 252(sp)
  LA s10, get2
  LW a0, 252(sp)
  ADD s10, s10, a0
  LW a0, 228(sp)
  SW a0, 0(s10)
  LW a0, 240(sp)
  ADDIW a0, a0, 2
  SW a0, 256(sp)
  LA s10, ii
  LW a0, 256(sp)
  SW a0, 0(s10)
  LW a0, 224(sp)
  SLTIU s10, a0, 1
  BNE s10, zero, bb107
  # implict jump to bb105
bb105:
  ADDI s10, zero, 1
  # implict jump to bb106
bb106:
  SLTIU s10, s10, 1
  BNE s10, zero, bb103
  JAL zero, bb96
bb107:
  ADD s10, zero, zero
  JAL zero, bb106
bb108:
  ADDI s11, zero, 1
  JAL zero, bb102
bb109:
  ADDI s8, zero, 1
  JAL zero, bb100
bb110:
  ADDI s9, zero, 1
  JAL zero, bb98
bb111:
  LA s3, chat
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  LA s6, chas
  ADD s3, s6, s3
  LW s7, 0(s3)
  XORI s3, s7, 42
  SLTIU s3, s3, 1
  BNE s3, zero, bb125
  # implict jump to bb112
bb112:
  XORI s3, s7, 47
  SLTIU s3, s3, 1
  # implict jump to bb113
bb113:
  BNE s3, zero, bb124
  # implict jump to bb114
bb114:
  XORI s6, s7, 37
  SLTIU s6, s6, 1
  # implict jump to bb115
bb115:
  SB s6, 34(sp)
  LB a0, 34(sp)
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
  LB s6, 34(sp)
  JAL zero, bb74
bb119:
  LA s8, chat
  LW s8, 0(s8)
  ADDI s9, zero, 1
  SUBW a0, s8, s9
  SW a0, 184(sp)
  LA s9, chat
  LW a0, 184(sp)
  SW a0, 0(s9)
  SLLIW s8, s8, 2
  LA s9, chas
  ADD s8, s9, s8
  LW a0, 0(s8)
  SW a0, 244(sp)
  LA s8, c
  LW a0, 244(sp)
  SW a0, 0(s8)
  LA s8, ii
  LW a0, 0(s8)
  SW a0, 236(sp)
  LW a0, 236(sp)
  SLLIW s8, a0, 2
  LA s9, get2
  ADD s8, s9, s8
  ADDI s9, zero, 32
  SW s9, 0(s8)
  LW a0, 236(sp)
  ADDIW s8, a0, 1
  SLLIW s8, s8, 2
  LA s9, get2
  ADD s8, s9, s8
  LW a0, 244(sp)
  SW a0, 0(s8)
  LW a0, 236(sp)
  ADDIW s8, a0, 2
  LA s9, ii
  SW s8, 0(s9)
  LW a0, 184(sp)
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
  ADDI s3, zero, 1
  JAL zero, bb113
bb126:
  LA s1, chat
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  LA s2, chas
  ADD s1, s2, s1
  LW s6, 0(s1)
  XORI s1, s6, 43
  SLTIU s1, s1, 1
  BNE s1, zero, bb146
  # implict jump to bb127
bb127:
  XORI s1, s6, 45
  SLTIU s1, s1, 1
  # implict jump to bb128
bb128:
  SB s1, 31(sp)
  LB a0, 31(sp)
  BNE a0, zero, bb145
  # implict jump to bb129
bb129:
  XORI s1, s6, 42
  SLTIU a0, s1, 1
  SB a0, 57(sp)
  LB a0, 57(sp)
  SB a0, 57(sp)
  # implict jump to bb130
bb130:
  LB a0, 57(sp)
  SB a0, 57(sp)
  LB a0, 57(sp)
  BNE a0, zero, bb144
  # implict jump to bb131
bb131:
  XORI s2, s6, 47
  SLTIU s9, s2, 1
  # implict jump to bb132
bb132:
  BNE s9, zero, bb143
  # implict jump to bb133
bb133:
  XORI s3, s6, 37
  SLTIU a0, s3, 1
  SB a0, 24(sp)
  LB a0, 24(sp)
  SB a0, 24(sp)
  # implict jump to bb134
bb134:
  LB a0, 24(sp)
  SB a0, 24(sp)
  LB a0, 24(sp)
  BNE a0, zero, bb142
  # implict jump to bb135
bb135:
  XORI s6, s6, 94
  SLTIU s6, s6, 1
  # implict jump to bb136
bb136:
  SB s6, 22(sp)
  LB a0, 22(sp)
  BNE a0, zero, bb138
  # implict jump to bb137
bb137:
  LA s8, chat
  LW s8, 0(s8)
  ADDIW s8, s8, 1
  LA s10, chat
  SW s8, 0(s10)
  SLLIW s8, s8, 2
  LA s10, chas
  ADD s8, s10, s8
  ADDI s10, zero, 45
  SW s10, 0(s8)
  LB a0, 57(sp)
  SB a0, 57(sp)
  LB a0, 22(sp)
  SB a0, 22(sp)
  LB a0, 24(sp)
  SB a0, 24(sp)
  LB s1, 31(sp)
  JAL zero, bb72
bb138:
  LA s8, chat
  LW s8, 0(s8)
  ADDI s10, zero, 1
  SUBW a0, s8, s10
  SW a0, 140(sp)
  LA s10, chat
  LW a0, 140(sp)
  SW a0, 0(s10)
  SLLIW s8, s8, 2
  LA s10, chas
  ADD s8, s10, s8
  LW a0, 0(s8)
  SW a0, 144(sp)
  LA s8, c
  LW a0, 144(sp)
  SW a0, 0(s8)
  LA s8, ii
  LW a0, 0(s8)
  SW a0, 248(sp)
  LW a0, 248(sp)
  SLLIW s8, a0, 2
  LA s10, get2
  ADD s8, s10, s8
  ADDI s10, zero, 32
  SW s10, 0(s8)
  LW a0, 248(sp)
  ADDIW s8, a0, 1
  SLLIW s8, s8, 2
  LA s10, get2
  ADD s8, s10, s8
  LW a0, 144(sp)
  SW a0, 0(s8)
  LW a0, 248(sp)
  ADDIW s8, a0, 2
  LA s10, ii
  SW s8, 0(s10)
  LW a0, 140(sp)
  SLTIU s8, a0, 1
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
  ADDI a0, zero, 1
  SB a0, 24(sp)
  JAL zero, bb134
bb144:
  ADDI s9, zero, 1
  JAL zero, bb132
bb145:
  ADDI a0, zero, 1
  SB a0, 57(sp)
  JAL zero, bb130
bb146:
  ADDI s1, zero, 1
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
  SLTIU a0, a0, 1
  # implict jump to bb149
bb149:
  SB a0, 21(sp)
  LB a0, 21(sp)
  BNE a0, zero, bb166
  # implict jump to bb150
bb150:
  XORI s0, s5, 42
  SLTIU s0, s0, 1
  # implict jump to bb151
bb151:
  SB s0, 40(sp)
  LB a0, 40(sp)
  BNE a0, zero, bb165
  # implict jump to bb152
bb152:
  XORI s0, s5, 47
  SLTIU s7, s0, 1
  # implict jump to bb153
bb153:
  BNE s7, zero, bb164
  # implict jump to bb154
bb154:
  XORI s4, s5, 37
  SLTIU s4, s4, 1
  # implict jump to bb155
bb155:
  SB s4, 39(sp)
  LB a0, 39(sp)
  BNE a0, zero, bb163
  # implict jump to bb156
bb156:
  XORI s4, s5, 94
  SLTIU a0, s4, 1
  SB a0, 4(sp)
  LB a0, 4(sp)
  SB a0, 4(sp)
  # implict jump to bb157
bb157:
  LB a0, 4(sp)
  SB a0, 4(sp)
  LB a0, 4(sp)
  BNE a0, zero, bb159
  # implict jump to bb158
bb158:
  LA s5, chat
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s8, chat
  SW s5, 0(s8)
  SLLIW s5, s5, 2
  LA s8, chas
  ADD s5, s8, s5
  ADDI s8, zero, 43
  SW s8, 0(s5)
  LB a0, 4(sp)
  SB a0, 4(sp)
  LB a0, 21(sp)
  SB a0, 21(sp)
  LB s0, 40(sp)
  LB a0, 39(sp)
  SB a0, 15(sp)
  LB a0, 15(sp)
  SB a0, 15(sp)
  JAL zero, bb70
bb159:
  LA s5, chat
  LW s5, 0(s5)
  ADDI s8, zero, 1
  SUBW s8, s5, s8
  LA s9, chat
  SW s8, 0(s9)
  SLLIW s5, s5, 2
  LA s9, chas
  ADD s5, s9, s5
  LW s5, 0(s5)
  LA s9, c
  SW s5, 0(s9)
  LA s9, ii
  LW a0, 0(s9)
  SW a0, 120(sp)
  LW a0, 120(sp)
  SLLIW a0, a0, 2
  SW a0, 196(sp)
  LA s9, get2
  LW a0, 196(sp)
  ADD s9, s9, a0
  ADDI a0, zero, 32
  SW a0, 212(sp)
  LW a0, 212(sp)
  SW a0, 0(s9)
  LW a0, 120(sp)
  ADDIW s9, a0, 1
  SLLIW a0, s9, 2
  SW a0, 200(sp)
  LA s9, get2
  LW a0, 200(sp)
  ADD s9, s9, a0
  SW s5, 0(s9)
  LW a0, 120(sp)
  ADDIW s5, a0, 2
  LA s9, ii
  SW s5, 0(s9)
  SLTIU s5, s8, 1
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
  SB a0, 4(sp)
  JAL zero, bb157
bb164:
  ADDI s4, zero, 1
  JAL zero, bb155
bb165:
  ADDI s7, zero, 1
  JAL zero, bb153
bb166:
  ADDI s0, zero, 1
  JAL zero, bb151
bb167:
  ADDI a0, zero, 1
  JAL zero, bb149
bb168:
  LA s8, chat
  LW s8, 0(s8)
  ADDI s9, zero, 1
  SUBW s9, s8, s9
  LA s11, chat
  SW s9, 0(s11)
  SLLIW s8, s8, 2
  LA s9, chas
  ADD s8, s9, s8
  LW s8, 0(s8)
  LA s9, c
  SW s8, 0(s9)
  XORI s8, s8, 40
  BNE s8, zero, bb169
  JAL zero, bb68
bb169:
  LA s8, ii
  LW s8, 0(s8)
  SLLIW s9, s8, 2
  LA s11, get2
  ADD s9, s11, s9
  ADDI s11, zero, 32
  SW s11, 0(s9)
  ADDIW s9, s8, 1
  SLLIW s9, s9, 2
  LA s11, get2
  ADD s9, s11, s9
  LA s11, c
  LW s11, 0(s11)
  SW s11, 0(s9)
  ADDIW s8, s8, 2
  LA s9, ii
  SW s8, 0(s9)
  LA s8, chat
  LW s8, 0(s8)
  ADDI s9, zero, 1
  SUBW s9, s8, s9
  LA s11, chat
  SW s9, 0(s11)
  SLLIW s8, s8, 2
  LA s9, chas
  ADD s8, s9, s8
  LW s8, 0(s8)
  LA s9, c
  SW s8, 0(s9)
  XORI s8, s8, 40
  BNE s8, zero, bb169
  JAL zero, bb68
bb170:
  LA s8, chat
  LW s8, 0(s8)
  ADDIW s8, s8, 1
  LA s9, chat
  SW s8, 0(s9)
  SLLIW s8, s8, 2
  LA s9, chas
  ADD s8, s9, s8
  ADDI s9, zero, 94
  SW s9, 0(s8)
  JAL zero, bb67
bb171:
  LA s8, chat
  LW s8, 0(s8)
  ADDIW s8, s8, 1
  LA s9, chat
  SW s8, 0(s9)
  SLLIW s8, s8, 2
  LA s9, chas
  ADD s8, s9, s8
  ADDI s9, zero, 40
  SW s9, 0(s8)
  JAL zero, bb66
bb172:
  LA s8, ii
  LW s8, 0(s8)
  SLLIW s9, s8, 2
  LA s11, get2
  ADD s9, s11, s9
  LW s1, 132(sp)
  SW s1, 0(s9)
  ADDIW s8, s8, 1
  LA s9, ii
  SW s8, 0(s9)
  LB s1, 117(sp)
  SB s1, 78(sp)
  LB s1, 118(sp)
  SB s1, 79(sp)
  LB s1, 112(sp)
  SB s1, 80(sp)
  SB s7, 81(sp)
  LB s1, 104(sp)
  SB s1, 82(sp)
  LB a0, 57(sp)
  SB a0, 57(sp)
  LB a0, 57(sp)
  SB a0, 83(sp)
  LB a0, 4(sp)
  SB a0, 4(sp)
  LB s11, 103(sp)
  LB a0, 90(sp)
  SB a0, 87(sp)
  LB a0, 87(sp)
  SB a0, 87(sp)
  LB s1, 21(sp)
  SB s1, 29(sp)
  LB s1, 101(sp)
  SB s1, 28(sp)
  LB a0, 100(sp)
  SB a0, 49(sp)
  LB a0, 49(sp)
  SB a0, 49(sp)
  LB s1, 99(sp)
  SB s1, 12(sp)
  LB s1, 98(sp)
  SB s1, 89(sp)
  LB a0, 24(sp)
  SB a0, 24(sp)
  LB a0, 24(sp)
  SB a0, 20(sp)
  LB s4, 7(sp)
  LB s1, 97(sp)
  LB a0, 15(sp)
  SB a0, 15(sp)
  JAL zero, bb79
bb173:
  ADDI s8, zero, 1
  JAL zero, bb64
bb174:
  ADDI s8, zero, 57
  LW s1, 132(sp)
  SLT s8, s8, s1
  XORI s8, s8, 1
  JAL zero, bb62
bb175:
  LW s0, 204(sp)
  SLLIW s0, s0, 2
  LA s2, get
  ADD s0, s2, s0
  SW s1, 0(s0)
  LW s0, 204(sp)
  ADDIW s2, s0, 1
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb1
bb176:
  XORI s0, s1, 10
  SLTU s0, zero, s0
  JAL zero, bb3
