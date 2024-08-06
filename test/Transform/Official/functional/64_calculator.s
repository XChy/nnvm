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
  ADDI sp, sp, -1424
  SD s3, 544(sp)
  SD s4, 552(sp)
  SD s5, 560(sp)
  SD s6, 568(sp)
  SD s7, 576(sp)
  SD s8, 584(sp)
  SD s9, 592(sp)
  SD ra, 616(sp)
  SD s0, 624(sp)
  SD s1, 632(sp)
  SD s2, 640(sp)
  SD s11, 728(sp)
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
  SW s2, 440(sp)
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
  LW s0, 440(sp)
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
  LD s3, 544(sp)
  LD s4, 552(sp)
  LD s5, 560(sp)
  LD s6, 568(sp)
  LD s7, 576(sp)
  LD s8, 584(sp)
  LD s9, 592(sp)
  LD ra, 616(sp)
  LD s0, 624(sp)
  LD s1, 632(sp)
  LD s2, 640(sp)
  LD s11, 728(sp)
  ADDI sp, sp, 1424
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
  ADDIW s0, s0, -48
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
  ADDIW s0, s0, -1
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
  ADDIW s2, s2, -48
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
  ADDIW s2, s1, -1
  LA s0, intt
  SW s2, 0(s0)
  SLLIW s0, s1, 2
  LA s3, ints
  ADD s0, s3, s0
  LW s3, 0(s0)
  ADDIW s1, s1, -2
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
  ADDIW s2, s2, -1
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
  ADDIW s0, a0, -1
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
  SW a0, 444(sp)
  ADD a0, zero, zero
  SB a0, 107(sp)
  ADD a0, zero, zero
  SB a0, 106(sp)
  ADD a0, zero, zero
  SB a0, 105(sp)
  ADD a0, zero, zero
  SB a0, 71(sp)
  ADD a0, zero, zero
  SB a0, 104(sp)
  ADD a0, zero, zero
  SB a0, 93(sp)
  ADD a0, zero, zero
  SB a0, 102(sp)
  ADD a0, zero, zero
  SB a0, 101(sp)
  ADD a0, zero, zero
  SB a0, 100(sp)
  ADD s7, zero, zero
  ADD s8, zero, zero
  ADD a0, zero, zero
  SB a0, 31(sp)
  ADD a0, zero, zero
  SB a0, 32(sp)
  ADD a0, zero, zero
  SB a0, 69(sp)
  ADD s3, zero, zero
  ADD a0, zero, zero
  SB a0, 35(sp)
  ADD s1, zero, zero
  ADD s0, zero, zero
  ADD a0, zero, zero
  SB a0, 115(sp)
  # implict jump to bb60
bb60:   # loop depth 1
  LB a0, 115(sp)
  SB a0, 115(sp)
  LB a0, 115(sp)
  SB a0, 88(sp)
  SB s0, 89(sp)
  SB s1, 90(sp)
  LB a0, 35(sp)
  SB a0, 35(sp)
  SB s3, 91(sp)
  LB a0, 69(sp)
  SB a0, 7(sp)
  LB a0, 32(sp)
  SB a0, 32(sp)
  LB a0, 31(sp)
  SB a0, 31(sp)
  LB a0, 31(sp)
  SB a0, 92(sp)
  SB s8, 126(sp)
  SB s7, 12(sp)
  LB a0, 100(sp)
  SB a0, 125(sp)
  LB a0, 101(sp)
  SB a0, 11(sp)
  LB a0, 102(sp)
  SB a0, 123(sp)
  LB a0, 93(sp)
  SB a0, 122(sp)
  LB a0, 104(sp)
  SB a0, 121(sp)
  LB a0, 71(sp)
  SB a0, 120(sp)
  LB a0, 105(sp)
  SB a0, 119(sp)
  LB s1, 106(sp)
  LB s11, 107(sp)
  LW a0, 444(sp)
  SW a0, 372(sp)
  LW a0, 372(sp)
  SLLIW a0, a0, 2
  SW a0, 364(sp)
  LA a0, get
  SD a0, 1104(sp)
  LD a0, 1104(sp)
  LW s2, 364(sp)
  ADD a0, a0, s2
  SD a0, 712(sp)
  LD a0, 712(sp)
  LW a0, 0(a0)
  SW a0, 356(sp)
  LW a0, 356(sp)
  SLTI a0, a0, 48
  SB a0, 43(sp)
  LB a0, 43(sp)
  XORI a0, a0, 1
  SB a0, 28(sp)
  LB a0, 28(sp)
  BNE a0, zero, bb174
  # implict jump to bb61
bb61:   # loop depth 1
  ADD a0, zero, zero
  SB a0, 44(sp)
  # implict jump to bb62
bb62:   # loop depth 1
  LB a0, 44(sp)
  SB a0, 44(sp)
  LB a0, 44(sp)
  BNE a0, zero, bb173
  # implict jump to bb63
bb63:   # loop depth 1
  ADD a0, zero, zero
  SW a0, 352(sp)
  # implict jump to bb64
bb64:   # loop depth 1
  LW a0, 352(sp)
  SW a0, 352(sp)
  LW a0, 352(sp)
  XORI a0, a0, 1
  SW a0, 472(sp)
  LW a0, 472(sp)
  SLTIU a0, a0, 1
  SB a0, 57(sp)
  LB a0, 57(sp)
  BNE a0, zero, bb172
  # implict jump to bb65
bb65:   # loop depth 1
  LW a0, 356(sp)
  XORI a0, a0, 40
  SW a0, 480(sp)
  LW a0, 480(sp)
  SLTIU a0, a0, 1
  SB a0, 39(sp)
  LB a0, 39(sp)
  BNE a0, zero, bb171
  # implict jump to bb66
bb66:   # loop depth 1
  LW a0, 356(sp)
  XORI a0, a0, 94
  SW a0, 492(sp)
  LW a0, 492(sp)
  SLTIU a0, a0, 1
  SB a0, 26(sp)
  LB a0, 26(sp)
  BNE a0, zero, bb170
  # implict jump to bb67
bb67:   # loop depth 1
  LW a0, 356(sp)
  XORI a0, a0, 41
  SW a0, 448(sp)
  LW a0, 448(sp)
  SLTIU a0, a0, 1
  SB a0, 64(sp)
  LB a0, 64(sp)
  BNE a0, zero, bb168
  # implict jump to bb68
bb68:   # loop depth 1
  LW a0, 356(sp)
  XORI a0, a0, 43
  SW a0, 508(sp)
  LW a0, 508(sp)
  SLTIU a0, a0, 1
  SB a0, 118(sp)
  LB a0, 118(sp)
  BNE a0, zero, bb147
  # implict jump to bb69
bb69:   # loop depth 1
  LB a0, 35(sp)
  SB a0, 113(sp)
  LB a0, 113(sp)
  SB a0, 113(sp)
  LB a0, 32(sp)
  SB a0, 32(sp)
  LB a0, 32(sp)
  SB a0, 60(sp)
  LB a0, 12(sp)
  # implict jump to bb70
bb70:   # loop depth 1
  SB s11, 74(sp)
  SB s1, 75(sp)
  SB a0, 76(sp)
  LB a0, 60(sp)
  SB a0, 77(sp)
  LB a0, 113(sp)
  SB a0, 113(sp)
  LB a0, 113(sp)
  SB a0, 78(sp)
  LW a0, 356(sp)
  XORI a0, a0, 45
  SW a0, 516(sp)
  LW a0, 516(sp)
  SLTIU a0, a0, 1
  SB a0, 117(sp)
  LB a0, 117(sp)
  BNE a0, zero, bb126
  # implict jump to bb71
bb71:   # loop depth 1
  LB a0, 7(sp)
  SB a0, 0(sp)
  LB s9, 122(sp)
  LB s5, 121(sp)
  LB s3, 120(sp)
  LB s2, 119(sp)
  # implict jump to bb72
bb72:   # loop depth 1
  SB s2, 110(sp)
  SB s3, 111(sp)
  SB s5, 112(sp)
  SB s9, 83(sp)
  LB a0, 0(sp)
  SB a0, 1(sp)
  LW a0, 356(sp)
  XORI s3, a0, 42
  SLTIU s3, s3, 1
  BNE s3, zero, bb111
  # implict jump to bb73
bb73:   # loop depth 1
  LB s8, 126(sp)
  LB s3, 11(sp)
  LB s4, 123(sp)
  # implict jump to bb74
bb74:   # loop depth 1
  SB s4, 108(sp)
  SB s3, 109(sp)
  SB s8, 56(sp)
  LW a0, 356(sp)
  XORI s5, a0, 47
  SLTIU s5, s5, 1
  BNE s5, zero, bb96
  # implict jump to bb75
bb75:   # loop depth 1
  LB s5, 91(sp)
  LB s11, 92(sp)
  LB s6, 125(sp)
  # implict jump to bb76
bb76:   # loop depth 1
  LW a0, 356(sp)
  XORI s8, a0, 37
  SLTIU s8, s8, 1
  BNE s8, zero, bb81
  # implict jump to bb77
bb77:   # loop depth 1
  LB s8, 88(sp)
  LB a0, 89(sp)
  SB a0, 41(sp)
  LB a0, 41(sp)
  SB a0, 41(sp)
  LB a0, 90(sp)
  SB a0, 42(sp)
  LB a0, 42(sp)
  SB a0, 42(sp)
  # implict jump to bb78
bb78:   # loop depth 1
  LB a0, 42(sp)
  SB a0, 42(sp)
  LB a0, 41(sp)
  SB a0, 41(sp)
  LA a0, ii
  SD a0, 1032(sp)
  LD a0, 1032(sp)
  LW a0, 0(a0)
  SW a0, 140(sp)
  LW a0, 140(sp)
  SLLIW a0, a0, 2
  SW a0, 180(sp)
  LA a0, get2
  SD a0, 1024(sp)
  LD a0, 1024(sp)
  LW s0, 180(sp)
  ADD a0, a0, s0
  SD a0, 1144(sp)
  ADDI a0, zero, 32
  SW a0, 424(sp)
  LW a0, 424(sp)
  LD s0, 1144(sp)
  SW a0, 0(s0)
  LW a0, 140(sp)
  ADDIW a0, a0, 1
  SW a0, 192(sp)
  LA a0, ii
  SD a0, 1016(sp)
  LD a0, 1016(sp)
  LW s0, 192(sp)
  SW s0, 0(a0)
  SB s8, 68(sp)
  LB a0, 41(sp)
  SB a0, 67(sp)
  LB a0, 42(sp)
  SB a0, 66(sp)
  LB a0, 78(sp)
  SB a0, 116(sp)
  LB a0, 116(sp)
  SB a0, 116(sp)
  SB s5, 65(sp)
  LB s0, 1(sp)
  SB s0, 7(sp)
  LB s0, 77(sp)
  SB s0, 55(sp)
  SB s11, 63(sp)
  LB s0, 56(sp)
  SB s0, 99(sp)
  LB a0, 76(sp)
  SB a0, 33(sp)
  LB a0, 33(sp)
  SB a0, 33(sp)
  SB s6, 61(sp)
  LB a0, 109(sp)
  SB a0, 114(sp)
  LB a0, 114(sp)
  SB a0, 114(sp)
  LB s0, 108(sp)
  SB s0, 98(sp)
  LB s0, 83(sp)
  SB s0, 97(sp)
  LB s0, 112(sp)
  SB s0, 96(sp)
  LB s0, 111(sp)
  SB s0, 95(sp)
  LB s0, 110(sp)
  SB s0, 94(sp)
  LB s1, 75(sp)
  LB s11, 74(sp)
  # implict jump to bb79
bb79:   # loop depth 1
  SB s11, 79(sp)
  SB s1, 80(sp)
  LB s0, 94(sp)
  SB s0, 81(sp)
  LB s0, 95(sp)
  SB s0, 82(sp)
  LB s0, 96(sp)
  SB s0, 73(sp)
  LB s0, 97(sp)
  SB s0, 84(sp)
  LB s0, 98(sp)
  SB s0, 85(sp)
  LB a0, 114(sp)
  SB a0, 114(sp)
  LB a0, 114(sp)
  SB a0, 86(sp)
  LB s0, 61(sp)
  SB s0, 87(sp)
  LB a0, 33(sp)
  SB a0, 33(sp)
  LB a0, 33(sp)
  SB a0, 53(sp)
  LB s0, 99(sp)
  SB s0, 54(sp)
  LB s0, 63(sp)
  SB s0, 52(sp)
  LB s0, 55(sp)
  SB s0, 48(sp)
  LB s0, 7(sp)
  SB s0, 58(sp)
  LB s3, 65(sp)
  LB a0, 116(sp)
  SB a0, 116(sp)
  LB a0, 116(sp)
  SB a0, 35(sp)
  LB s1, 66(sp)
  LB s0, 67(sp)
  LB a0, 68(sp)
  SB a0, 115(sp)
  LB a0, 115(sp)
  SB a0, 115(sp)
  LA s4, i
  SD s4, 1072(sp)
  LD s4, 1072(sp)
  LW s4, 0(s4)
  SW s4, 152(sp)
  LW s4, 152(sp)
  ADDIW s4, s4, 1
  SW s4, 164(sp)
  LA s4, i
  SD s4, 1152(sp)
  LD s4, 1152(sp)
  LW s5, 164(sp)
  SW s5, 0(s4)
  LW s4, 440(sp)
  LW s5, 164(sp)
  BLT s5, s4, bb80
  JAL zero, bb5
bb80:   # loop depth 1
  LW s4, 164(sp)
  SW s4, 444(sp)
  LB s4, 79(sp)
  SB s4, 107(sp)
  LB s4, 80(sp)
  SB s4, 106(sp)
  LB s4, 81(sp)
  SB s4, 105(sp)
  LB s4, 82(sp)
  SB s4, 71(sp)
  LB s4, 73(sp)
  SB s4, 104(sp)
  LB s4, 84(sp)
  SB s4, 93(sp)
  LB s4, 85(sp)
  SB s4, 102(sp)
  LB s4, 86(sp)
  SB s4, 101(sp)
  LB s4, 87(sp)
  SB s4, 100(sp)
  LB s7, 53(sp)
  LB s8, 54(sp)
  LB a0, 52(sp)
  SB a0, 31(sp)
  LB a0, 31(sp)
  SB a0, 31(sp)
  LB a0, 48(sp)
  SB a0, 32(sp)
  LB a0, 32(sp)
  SB a0, 32(sp)
  LB s4, 58(sp)
  SB s4, 69(sp)
  LB a0, 35(sp)
  SB a0, 35(sp)
  LB a0, 115(sp)
  SB a0, 115(sp)
  JAL zero, bb60
bb81:   # loop depth 2
  LA s8, chat
  LW s8, 0(s8)
  SLLIW s8, s8, 2
  LA a0, chas
  SD a0, 1008(sp)
  LD a0, 1008(sp)
  ADD s8, a0, s8
  LW a0, 0(s8)
  SW a0, 196(sp)
  LW a0, 196(sp)
  XORI s8, a0, 42
  SLTIU s8, s8, 1
  BNE s8, zero, bb95
  # implict jump to bb82
bb82:   # loop depth 2
  LW a0, 196(sp)
  XORI s8, a0, 47
  SLTIU s8, s8, 1
  # implict jump to bb83
bb83:   # loop depth 2
  BNE s8, zero, bb94
  # implict jump to bb84
bb84:   # loop depth 2
  LW a0, 196(sp)
  XORI a0, a0, 37
  SW a0, 520(sp)
  LW a0, 520(sp)
  SLTIU a0, a0, 1
  SB a0, 41(sp)
  LB a0, 41(sp)
  SB a0, 41(sp)
  # implict jump to bb85
bb85:   # loop depth 2
  LB a0, 41(sp)
  SB a0, 41(sp)
  LB a0, 41(sp)
  BNE a0, zero, bb93
  # implict jump to bb86
bb86:   # loop depth 2
  LW a0, 196(sp)
  XORI a0, a0, 94
  SW a0, 524(sp)
  LW a0, 524(sp)
  SLTIU a0, a0, 1
  SB a0, 42(sp)
  LB a0, 42(sp)
  SB a0, 42(sp)
  # implict jump to bb87
bb87:   # loop depth 2
  LB a0, 42(sp)
  SB a0, 42(sp)
  LB a0, 42(sp)
  BNE a0, zero, bb89
  # implict jump to bb88
bb88:   # loop depth 1
  LA a0, chat
  SD a0, 936(sp)
  LD a0, 936(sp)
  LW a0, 0(a0)
  SW a0, 456(sp)
  LW a0, 456(sp)
  ADDIW a0, a0, 1
  SW a0, 460(sp)
  LA a0, chat
  SD a0, 928(sp)
  LD a0, 928(sp)
  LW s0, 460(sp)
  SW s0, 0(a0)
  LW a0, 460(sp)
  SLLIW a0, a0, 2
  SW a0, 464(sp)
  LA a0, chas
  SD a0, 920(sp)
  LD a0, 920(sp)
  LW s0, 464(sp)
  ADD a0, a0, s0
  SD a0, 1112(sp)
  ADDI a0, zero, 37
  SW a0, 432(sp)
  LW a0, 432(sp)
  LD s0, 1112(sp)
  SW a0, 0(s0)
  LB a0, 41(sp)
  SB a0, 41(sp)
  LB a0, 42(sp)
  SB a0, 42(sp)
  JAL zero, bb78
bb89:   # loop depth 2
  LA a0, chat
  SD a0, 1000(sp)
  LD a0, 1000(sp)
  LW a0, 0(a0)
  SW a0, 204(sp)
  LW a0, 204(sp)
  ADDIW a0, a0, -1
  SW a0, 208(sp)
  LA a0, chat
  SD a0, 992(sp)
  LD a0, 992(sp)
  LW s0, 208(sp)
  SW s0, 0(a0)
  LW a0, 204(sp)
  SLLIW a0, a0, 2
  SW a0, 216(sp)
  LA a0, chas
  SD a0, 984(sp)
  LD a0, 984(sp)
  LW s0, 216(sp)
  ADD a0, a0, s0
  SD a0, 1136(sp)
  LD a0, 1136(sp)
  LW a0, 0(a0)
  SW a0, 228(sp)
  LA a0, c
  SD a0, 912(sp)
  LD a0, 912(sp)
  LW s0, 228(sp)
  SW s0, 0(a0)
  LA a0, ii
  SD a0, 968(sp)
  LD a0, 968(sp)
  LW a0, 0(a0)
  SW a0, 500(sp)
  LW a0, 500(sp)
  SLLIW a0, a0, 2
  SW a0, 400(sp)
  LA a0, get2
  SD a0, 960(sp)
  LD a0, 960(sp)
  LW s0, 400(sp)
  ADD a0, a0, s0
  SD a0, 1128(sp)
  ADDI a0, zero, 32
  SW a0, 428(sp)
  LW a0, 428(sp)
  LD s0, 1128(sp)
  SW a0, 0(s0)
  LW a0, 500(sp)
  ADDIW a0, a0, 1
  SW a0, 496(sp)
  LW a0, 496(sp)
  SLLIW a0, a0, 2
  SW a0, 488(sp)
  LA a0, get2
  SD a0, 952(sp)
  LD a0, 952(sp)
  LW s0, 488(sp)
  ADD a0, a0, s0
  SD a0, 1120(sp)
  LD a0, 1120(sp)
  LW s0, 228(sp)
  SW s0, 0(a0)
  LW a0, 500(sp)
  ADDIW a0, a0, 2
  SW a0, 484(sp)
  LA a0, ii
  SD a0, 944(sp)
  LD a0, 944(sp)
  LW s0, 484(sp)
  SW s0, 0(a0)
  LW a0, 208(sp)
  SLTIU a0, a0, 1
  SB a0, 51(sp)
  LB a0, 51(sp)
  BNE a0, zero, bb92
  # implict jump to bb90
bb90:   # loop depth 2
  ADDI a0, zero, 1
  SW a0, 452(sp)
  # implict jump to bb91
bb91:   # loop depth 2
  LW a0, 452(sp)
  SW a0, 452(sp)
  LW a0, 452(sp)
  SLTIU a0, a0, 1
  SB a0, 50(sp)
  LB a0, 50(sp)
  BNE a0, zero, bb88
  JAL zero, bb81
bb92:   # loop depth 2
  ADD a0, zero, zero
  SW a0, 452(sp)
  JAL zero, bb91
bb93:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 42(sp)
  JAL zero, bb87
bb94:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 41(sp)
  JAL zero, bb85
bb95:   # loop depth 2
  ADDI s8, zero, 1
  JAL zero, bb83
bb96:   # loop depth 2
  LA s5, chat
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s6, chas
  ADD s5, s6, s5
  LW s7, 0(s5)
  XORI s5, s7, 42
  SLTIU s5, s5, 1
  BNE s5, zero, bb110
  # implict jump to bb97
bb97:   # loop depth 2
  XORI s5, s7, 47
  SLTIU s5, s5, 1
  # implict jump to bb98
bb98:   # loop depth 2
  BNE s5, zero, bb109
  # implict jump to bb99
bb99:   # loop depth 2
  XORI s6, s7, 37
  SLTIU s6, s6, 1
  # implict jump to bb100
bb100:   # loop depth 2
  BNE s6, zero, bb108
  # implict jump to bb101
bb101:   # loop depth 2
  XORI s7, s7, 94
  SLTIU s11, s7, 1
  # implict jump to bb102
bb102:   # loop depth 2
  BNE s11, zero, bb104
  # implict jump to bb103
bb103:   # loop depth 1
  LA s8, chat
  LW s8, 0(s8)
  ADDIW s8, s8, 1
  LA a0, chat
  SD a0, 1048(sp)
  LD a0, 1048(sp)
  SW s8, 0(a0)
  SLLIW s8, s8, 2
  LA a0, chas
  SD a0, 1040(sp)
  LD a0, 1040(sp)
  ADD s8, a0, s8
  ADDI a0, zero, 47
  SW a0, 416(sp)
  LW a0, 416(sp)
  SW a0, 0(s8)
  JAL zero, bb76
bb104:   # loop depth 2
  LA s8, chat
  LW s8, 0(s8)
  ADDIW a0, s8, -1
  SW a0, 168(sp)
  LA a0, chat
  SD a0, 776(sp)
  LD a0, 776(sp)
  LW s0, 168(sp)
  SW s0, 0(a0)
  SLLIW s8, s8, 2
  LA a0, chas
  SD a0, 768(sp)
  LD a0, 768(sp)
  ADD s8, a0, s8
  LW s8, 0(s8)
  LA a0, c
  SD a0, 760(sp)
  LD a0, 760(sp)
  SW s8, 0(a0)
  LA a0, ii
  SD a0, 752(sp)
  LD a0, 752(sp)
  LW a0, 0(a0)
  SW a0, 172(sp)
  LW a0, 172(sp)
  SLLIW a0, a0, 2
  SW a0, 156(sp)
  LA a0, get2
  SD a0, 744(sp)
  LD a0, 744(sp)
  LW s0, 156(sp)
  ADD a0, a0, s0
  SD a0, 1160(sp)
  ADDI a0, zero, 32
  SW a0, 408(sp)
  LW a0, 408(sp)
  LD s0, 1160(sp)
  SW a0, 0(s0)
  LW a0, 172(sp)
  ADDIW a0, a0, 1
  SW a0, 160(sp)
  LW a0, 160(sp)
  SLLIW a0, a0, 2
  SW a0, 128(sp)
  LA a0, get2
  SD a0, 824(sp)
  LD a0, 824(sp)
  LW s0, 128(sp)
  ADD a0, a0, s0
  SD a0, 1064(sp)
  LD a0, 1064(sp)
  SW s8, 0(a0)
  LW a0, 172(sp)
  ADDIW s8, a0, 2
  LA a0, ii
  SD a0, 1056(sp)
  LD a0, 1056(sp)
  SW s8, 0(a0)
  LW a0, 168(sp)
  SLTIU s8, a0, 1
  BNE s8, zero, bb107
  # implict jump to bb105
bb105:   # loop depth 2
  ADDI s8, zero, 1
  # implict jump to bb106
bb106:   # loop depth 2
  SLTIU s8, s8, 1
  BNE s8, zero, bb103
  JAL zero, bb96
bb107:   # loop depth 2
  ADD s8, zero, zero
  JAL zero, bb106
bb108:   # loop depth 2
  ADDI s11, zero, 1
  JAL zero, bb102
bb109:   # loop depth 2
  ADDI s6, zero, 1
  JAL zero, bb100
bb110:   # loop depth 2
  ADDI s5, zero, 1
  JAL zero, bb98
bb111:   # loop depth 2
  LA s3, chat
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  LA s4, chas
  ADD s3, s4, s3
  LW s5, 0(s3)
  XORI s3, s5, 42
  SLTIU s3, s3, 1
  BNE s3, zero, bb125
  # implict jump to bb112
bb112:   # loop depth 2
  XORI s3, s5, 47
  SLTIU s8, s3, 1
  # implict jump to bb113
bb113:   # loop depth 2
  BNE s8, zero, bb124
  # implict jump to bb114
bb114:   # loop depth 2
  XORI s4, s5, 37
  SLTIU s4, s4, 1
  # implict jump to bb115
bb115:   # loop depth 2
  BNE s4, zero, bb123
  # implict jump to bb116
bb116:   # loop depth 2
  XORI s5, s5, 94
  SLTIU s3, s5, 1
  # implict jump to bb117
bb117:   # loop depth 2
  BNE s3, zero, bb119
  # implict jump to bb118
bb118:   # loop depth 1
  LA s6, chat
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA a0, chat
  SD a0, 792(sp)
  LD a0, 792(sp)
  SW s6, 0(a0)
  SLLIW s6, s6, 2
  LA a0, chas
  SD a0, 784(sp)
  LD a0, 784(sp)
  ADD s6, a0, s6
  ADDI a0, zero, 42
  SW a0, 404(sp)
  LW a0, 404(sp)
  SW a0, 0(s6)
  JAL zero, bb74
bb119:   # loop depth 2
  LA s6, chat
  LW s6, 0(s6)
  ADDIW a0, s6, -1
  SW a0, 260(sp)
  LA a0, chat
  SD a0, 848(sp)
  LD a0, 848(sp)
  LW s0, 260(sp)
  SW s0, 0(a0)
  SLLIW s6, s6, 2
  LA a0, chas
  SD a0, 840(sp)
  LD a0, 840(sp)
  ADD s6, a0, s6
  LW s6, 0(s6)
  LA a0, c
  SD a0, 832(sp)
  LD a0, 832(sp)
  SW s6, 0(a0)
  LA a0, ii
  SD a0, 736(sp)
  LD a0, 736(sp)
  LW a0, 0(a0)
  SW a0, 264(sp)
  LW a0, 264(sp)
  SLLIW a0, a0, 2
  SW a0, 268(sp)
  LA a0, get2
  SD a0, 816(sp)
  LD a0, 816(sp)
  LW s0, 268(sp)
  ADD a0, a0, s0
  SD a0, 1176(sp)
  ADDI a0, zero, 32
  SW a0, 396(sp)
  LW a0, 396(sp)
  LD s0, 1176(sp)
  SW a0, 0(s0)
  LW a0, 264(sp)
  ADDIW a0, a0, 1
  SW a0, 284(sp)
  LW a0, 284(sp)
  SLLIW a0, a0, 2
  SW a0, 324(sp)
  LA a0, get2
  SD a0, 808(sp)
  LD a0, 808(sp)
  LW s0, 324(sp)
  ADD a0, a0, s0
  SD a0, 1168(sp)
  LD a0, 1168(sp)
  SW s6, 0(a0)
  LW a0, 264(sp)
  ADDIW s6, a0, 2
  LA a0, ii
  SD a0, 800(sp)
  LD a0, 800(sp)
  SW s6, 0(a0)
  LW a0, 260(sp)
  SLTIU s6, a0, 1
  BNE s6, zero, bb122
  # implict jump to bb120
bb120:   # loop depth 2
  ADDI s6, zero, 1
  # implict jump to bb121
bb121:   # loop depth 2
  SLTIU s6, s6, 1
  BNE s6, zero, bb118
  JAL zero, bb111
bb122:   # loop depth 2
  ADD s6, zero, zero
  JAL zero, bb121
bb123:   # loop depth 2
  ADDI s3, zero, 1
  JAL zero, bb117
bb124:   # loop depth 2
  ADDI s4, zero, 1
  JAL zero, bb115
bb125:   # loop depth 2
  ADDI s8, zero, 1
  JAL zero, bb113
bb126:   # loop depth 2
  LA s1, chat
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  LA s2, chas
  ADD s1, s2, s1
  LW s3, 0(s1)
  XORI s1, s3, 43
  SLTIU s1, s1, 1
  BNE s1, zero, bb146
  # implict jump to bb127
bb127:   # loop depth 2
  XORI s1, s3, 45
  SLTIU s1, s1, 1
  # implict jump to bb128
bb128:   # loop depth 2
  SB s1, 17(sp)
  LB a0, 17(sp)
  BNE a0, zero, bb145
  # implict jump to bb129
bb129:   # loop depth 2
  XORI s1, s3, 42
  SLTIU a0, s1, 1
  SB a0, 0(sp)
  LB a0, 0(sp)
  SB a0, 0(sp)
  # implict jump to bb130
bb130:   # loop depth 2
  LB a0, 0(sp)
  SB a0, 0(sp)
  LB a0, 0(sp)
  BNE a0, zero, bb144
  # implict jump to bb131
bb131:   # loop depth 2
  XORI s2, s3, 47
  SLTIU s2, s2, 1
  # implict jump to bb132
bb132:   # loop depth 2
  SB s2, 18(sp)
  LB a0, 18(sp)
  BNE a0, zero, bb143
  # implict jump to bb133
bb133:   # loop depth 2
  XORI s2, s3, 37
  SLTIU s5, s2, 1
  # implict jump to bb134
bb134:   # loop depth 2
  BNE s5, zero, bb142
  # implict jump to bb135
bb135:   # loop depth 2
  XORI s3, s3, 94
  SLTIU s9, s3, 1
  # implict jump to bb136
bb136:   # loop depth 2
  BNE s9, zero, bb138
  # implict jump to bb137
bb137:   # loop depth 1
  LA s4, chat
  LW s4, 0(s4)
  ADDIW a0, s4, 1
  SW a0, 244(sp)
  LA s4, chat
  LW a0, 244(sp)
  SW a0, 0(s4)
  LW a0, 244(sp)
  SLLIW a0, a0, 2
  SW a0, 248(sp)
  LA s4, chas
  LW a0, 248(sp)
  ADD a0, s4, a0
  SD a0, 1184(sp)
  ADDI s4, zero, 45
  LD a0, 1184(sp)
  SW s4, 0(a0)
  LB a0, 0(sp)
  SB a0, 0(sp)
  LB s3, 18(sp)
  LB s2, 17(sp)
  JAL zero, bb72
bb138:   # loop depth 2
  LA s4, chat
  LW s4, 0(s4)
  ADDIW a0, s4, -1
  SW a0, 332(sp)
  LA a0, chat
  SD a0, 856(sp)
  LD a0, 856(sp)
  LW s0, 332(sp)
  SW s0, 0(a0)
  SLLIW a0, s4, 2
  SW a0, 328(sp)
  LA s4, chas
  LW a0, 328(sp)
  ADD s4, s4, a0
  LW a0, 0(s4)
  SW a0, 308(sp)
  LA s4, c
  LW a0, 308(sp)
  SW a0, 0(s4)
  LA s4, ii
  LW a0, 0(s4)
  SW a0, 288(sp)
  LW a0, 288(sp)
  SLLIW a0, a0, 2
  SW a0, 276(sp)
  LA s4, get2
  LW a0, 276(sp)
  ADD a0, s4, a0
  SD a0, 1192(sp)
  ADDI s4, zero, 32
  LD a0, 1192(sp)
  SW s4, 0(a0)
  LW a0, 288(sp)
  ADDIW s4, a0, 1
  SLLIW a0, s4, 2
  SW a0, 236(sp)
  LA s4, get2
  LW a0, 236(sp)
  ADD s4, s4, a0
  LW a0, 308(sp)
  SW a0, 0(s4)
  LW a0, 288(sp)
  ADDIW a0, a0, 2
  SW a0, 336(sp)
  LA s4, ii
  LW a0, 336(sp)
  SW a0, 0(s4)
  LW a0, 332(sp)
  SLTIU s4, a0, 1
  BNE s4, zero, bb141
  # implict jump to bb139
bb139:   # loop depth 2
  ADDI s4, zero, 1
  # implict jump to bb140
bb140:   # loop depth 2
  SLTIU s4, s4, 1
  BNE s4, zero, bb137
  JAL zero, bb126
bb141:   # loop depth 2
  ADD s4, zero, zero
  JAL zero, bb140
bb142:   # loop depth 2
  ADDI s9, zero, 1
  JAL zero, bb136
bb143:   # loop depth 2
  ADDI s5, zero, 1
  JAL zero, bb134
bb144:   # loop depth 2
  ADDI s2, zero, 1
  JAL zero, bb132
bb145:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 0(sp)
  JAL zero, bb130
bb146:   # loop depth 2
  ADDI s1, zero, 1
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
  BNE a0, zero, bb166
  # implict jump to bb150
bb150:   # loop depth 2
  XORI s0, s9, 42
  SLTIU s0, s0, 1
  # implict jump to bb151
bb151:   # loop depth 2
  SB s0, 27(sp)
  LB s0, 27(sp)
  BNE s0, zero, bb165
  # implict jump to bb152
bb152:   # loop depth 2
  XORI s0, s9, 47
  SLTIU s0, s0, 1
  SB s0, 113(sp)
  LB s0, 113(sp)
  SB s0, 113(sp)
  # implict jump to bb153
bb153:   # loop depth 2
  LB s0, 113(sp)
  SB s0, 113(sp)
  LB s0, 113(sp)
  BNE s0, zero, bb164
  # implict jump to bb154
bb154:   # loop depth 2
  XORI s1, s9, 37
  SLTIU s1, s1, 1
  # implict jump to bb155
bb155:   # loop depth 2
  SB s1, 19(sp)
  LB s1, 19(sp)
  BNE s1, zero, bb163
  # implict jump to bb156
bb156:   # loop depth 2
  XORI s1, s9, 94
  SLTIU s0, s1, 1
  # implict jump to bb157
bb157:   # loop depth 2
  BNE s0, zero, bb159
  # implict jump to bb158
bb158:   # loop depth 1
  LA s9, chat
  LW s9, 0(s9)
  ADDIW s9, s9, 1
  LA s2, chat
  SD s2, 872(sp)
  LD s2, 872(sp)
  SW s9, 0(s2)
  SLLIW s9, s9, 2
  LA s2, chas
  SD s2, 864(sp)
  LD s2, 864(sp)
  ADD s9, s2, s9
  ADDI s2, zero, 43
  SW s2, 392(sp)
  LW s2, 392(sp)
  SW s2, 0(s9)
  LB s1, 113(sp)
  SB s1, 113(sp)
  SB s0, 60(sp)
  LB s1, 27(sp)
  LB s11, 19(sp)
  JAL zero, bb70
bb159:   # loop depth 2
  LA s9, chat
  LW s9, 0(s9)
  ADDIW s2, s9, -1
  SW s2, 136(sp)
  LA s2, chat
  SD s2, 1256(sp)
  LD s2, 1256(sp)
  LW s3, 136(sp)
  SW s3, 0(s2)
  SLLIW s9, s9, 2
  LA s2, chas
  SD s2, 1248(sp)
  LD s2, 1248(sp)
  ADD s9, s2, s9
  LW s9, 0(s9)
  LA s2, c
  SD s2, 976(sp)
  LD s2, 976(sp)
  SW s9, 0(s2)
  LA s2, ii
  SD s2, 904(sp)
  LD s2, 904(sp)
  LW s2, 0(s2)
  SW s2, 176(sp)
  LW s2, 176(sp)
  SLLIW s2, s2, 2
  SW s2, 132(sp)
  LA s2, get2
  SD s2, 896(sp)
  LD s2, 896(sp)
  LW s3, 132(sp)
  ADD s2, s2, s3
  SD s2, 1208(sp)
  ADDI s2, zero, 32
  SW s2, 388(sp)
  LW s2, 388(sp)
  LD s3, 1208(sp)
  SW s2, 0(s3)
  LW s2, 176(sp)
  ADDIW s2, s2, 1
  SW s2, 144(sp)
  LW s2, 144(sp)
  SLLIW s2, s2, 2
  SW s2, 148(sp)
  LA s2, get2
  SD s2, 888(sp)
  LD s2, 888(sp)
  LW s3, 148(sp)
  ADD s2, s2, s3
  SD s2, 1200(sp)
  LD s2, 1200(sp)
  SW s9, 0(s2)
  LW s2, 176(sp)
  ADDIW s9, s2, 2
  LA s2, ii
  SD s2, 880(sp)
  LD s2, 880(sp)
  SW s9, 0(s2)
  LW s2, 136(sp)
  SLTIU s9, s2, 1
  BNE s9, zero, bb162
  # implict jump to bb160
bb160:   # loop depth 2
  ADDI s9, zero, 1
  # implict jump to bb161
bb161:   # loop depth 2
  SLTIU s9, s9, 1
  BNE s9, zero, bb158
  JAL zero, bb147
bb162:   # loop depth 2
  ADD s9, zero, zero
  JAL zero, bb161
bb163:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb157
bb164:   # loop depth 2
  ADDI s1, zero, 1
  JAL zero, bb155
bb165:   # loop depth 2
  ADDI s0, zero, 1
  SB s0, 113(sp)
  JAL zero, bb153
bb166:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb151
bb167:   # loop depth 2
  ADDI a0, zero, 1
  JAL zero, bb149
bb168:   # loop depth 1
  LA a0, chat
  SD a0, 1360(sp)
  LD a0, 1360(sp)
  LW a0, 0(a0)
  SW a0, 220(sp)
  LW a0, 220(sp)
  ADDIW a0, a0, -1
  SW a0, 212(sp)
  LA a0, chat
  SD a0, 1352(sp)
  LD a0, 1352(sp)
  LW s2, 212(sp)
  SW s2, 0(a0)
  LW a0, 220(sp)
  SLLIW a0, a0, 2
  SW a0, 344(sp)
  LA a0, chas
  SD a0, 1344(sp)
  LD a0, 1344(sp)
  LW s2, 344(sp)
  ADD a0, a0, s2
  SD a0, 1328(sp)
  LD a0, 1328(sp)
  LW a0, 0(a0)
  SW a0, 340(sp)
  LA a0, c
  SD a0, 1336(sp)
  LD a0, 1336(sp)
  LW s2, 340(sp)
  SW s2, 0(a0)
  LW a0, 340(sp)
  XORI a0, a0, 40
  SW a0, 504(sp)
  LW a0, 504(sp)
  BNE a0, zero, bb169
  JAL zero, bb68
bb169:   # loop depth 2
  LA a0, ii
  SD a0, 1240(sp)
  LD a0, 1240(sp)
  LW a0, 0(a0)
  SW a0, 256(sp)
  LW a0, 256(sp)
  SLLIW a0, a0, 2
  SW a0, 280(sp)
  LA a0, get2
  SD a0, 1320(sp)
  LD a0, 1320(sp)
  LW s2, 280(sp)
  ADD a0, a0, s2
  SD a0, 1232(sp)
  ADDI a0, zero, 32
  SW a0, 376(sp)
  LW a0, 376(sp)
  LD s2, 1232(sp)
  SW a0, 0(s2)
  LW a0, 256(sp)
  ADDIW a0, a0, 1
  SW a0, 296(sp)
  LW a0, 296(sp)
  SLLIW a0, a0, 2
  SW a0, 300(sp)
  LA a0, get2
  SD a0, 1312(sp)
  LD a0, 1312(sp)
  LW s2, 300(sp)
  ADD a0, a0, s2
  SD a0, 1224(sp)
  LA a0, c
  SD a0, 1304(sp)
  LD a0, 1304(sp)
  LW a0, 0(a0)
  SW a0, 312(sp)
  LW a0, 312(sp)
  LD s2, 1224(sp)
  SW a0, 0(s2)
  LW a0, 256(sp)
  ADDIW a0, a0, 2
  SW a0, 316(sp)
  LA a0, ii
  SD a0, 1296(sp)
  LD a0, 1296(sp)
  LW s2, 316(sp)
  SW s2, 0(a0)
  LA a0, chat
  SD a0, 1288(sp)
  LD a0, 1288(sp)
  LW a0, 0(a0)
  SW a0, 320(sp)
  LW a0, 320(sp)
  ADDIW a0, a0, -1
  SW a0, 188(sp)
  LA a0, chat
  SD a0, 1280(sp)
  LD a0, 1280(sp)
  LW s2, 188(sp)
  SW s2, 0(a0)
  LW a0, 320(sp)
  SLLIW a0, a0, 2
  SW a0, 292(sp)
  LA a0, chas
  SD a0, 1272(sp)
  LD a0, 1272(sp)
  LW s2, 292(sp)
  ADD a0, a0, s2
  SD a0, 1216(sp)
  LD a0, 1216(sp)
  LW a0, 0(a0)
  SW a0, 200(sp)
  LA a0, c
  SD a0, 1264(sp)
  LD a0, 1264(sp)
  LW s2, 200(sp)
  SW s2, 0(a0)
  LW a0, 200(sp)
  XORI a0, a0, 40
  SW a0, 512(sp)
  LW a0, 512(sp)
  BNE a0, zero, bb169
  JAL zero, bb68
bb170:   # loop depth 1
  LA a0, chat
  SD a0, 1384(sp)
  LD a0, 1384(sp)
  LW a0, 0(a0)
  SW a0, 184(sp)
  LW a0, 184(sp)
  ADDIW a0, a0, 1
  SW a0, 304(sp)
  LA a0, chat
  SD a0, 1376(sp)
  LD a0, 1376(sp)
  LW s2, 304(sp)
  SW s2, 0(a0)
  LW a0, 304(sp)
  SLLIW a0, a0, 2
  SW a0, 232(sp)
  LA a0, chas
  SD a0, 1368(sp)
  LD a0, 1368(sp)
  LW s2, 232(sp)
  ADD a0, a0, s2
  SD a0, 608(sp)
  ADDI a0, zero, 94
  SW a0, 368(sp)
  LW a0, 368(sp)
  LD s2, 608(sp)
  SW a0, 0(s2)
  JAL zero, bb67
bb171:   # loop depth 1
  LA a0, chat
  SD a0, 1408(sp)
  LD a0, 1408(sp)
  LW a0, 0(a0)
  SW a0, 272(sp)
  LW a0, 272(sp)
  ADDIW a0, a0, 1
  SW a0, 252(sp)
  LA a0, chat
  SD a0, 1400(sp)
  LD a0, 1400(sp)
  LW s2, 252(sp)
  SW s2, 0(a0)
  LW a0, 252(sp)
  SLLIW a0, a0, 2
  SW a0, 240(sp)
  LA a0, chas
  SD a0, 1392(sp)
  LD a0, 1392(sp)
  LW s2, 240(sp)
  ADD a0, a0, s2
  SD a0, 672(sp)
  ADDI a0, zero, 40
  SW a0, 360(sp)
  LW a0, 360(sp)
  LD s2, 672(sp)
  SW a0, 0(s2)
  JAL zero, bb66
bb172:   # loop depth 1
  LA a0, ii
  SD a0, 1096(sp)
  LD a0, 1096(sp)
  LW a0, 0(a0)
  SW a0, 224(sp)
  LW a0, 224(sp)
  SLLIW a0, a0, 2
  SW a0, 476(sp)
  LA a0, get2
  SD a0, 1088(sp)
  LD a0, 1088(sp)
  LW s2, 476(sp)
  ADD a0, a0, s2
  SD a0, 720(sp)
  LD a0, 720(sp)
  LW s2, 356(sp)
  SW s2, 0(a0)
  LW a0, 224(sp)
  ADDIW a0, a0, 1
  SW a0, 532(sp)
  LA a0, ii
  SD a0, 1080(sp)
  LD a0, 1080(sp)
  LW s2, 532(sp)
  SW s2, 0(a0)
  LB a0, 88(sp)
  SB a0, 68(sp)
  LB a0, 89(sp)
  SB a0, 67(sp)
  LB a0, 90(sp)
  SB a0, 66(sp)
  LB a0, 35(sp)
  SB a0, 116(sp)
  LB a0, 116(sp)
  SB a0, 116(sp)
  LB s2, 91(sp)
  SB s2, 65(sp)
  LB s0, 7(sp)
  SB s0, 7(sp)
  LB a0, 32(sp)
  SB a0, 32(sp)
  LB a0, 32(sp)
  SB a0, 55(sp)
  LB s2, 92(sp)
  SB s2, 63(sp)
  LB s2, 126(sp)
  SB s2, 99(sp)
  LB a0, 12(sp)
  SB a0, 33(sp)
  LB a0, 33(sp)
  SB a0, 33(sp)
  LB s2, 125(sp)
  SB s2, 61(sp)
  LB s2, 61(sp)
  SB s2, 61(sp)
  LB a0, 11(sp)
  SB a0, 114(sp)
  LB a0, 114(sp)
  SB a0, 114(sp)
  LB s2, 123(sp)
  SB s2, 98(sp)
  LB s2, 122(sp)
  SB s2, 97(sp)
  LB s2, 121(sp)
  SB s2, 96(sp)
  LB s2, 120(sp)
  SB s2, 95(sp)
  LB s2, 119(sp)
  SB s2, 94(sp)
  JAL zero, bb79
bb173:   # loop depth 1
  ADDI a0, zero, 1
  SW a0, 352(sp)
  JAL zero, bb64
bb174:   # loop depth 1
  ADDI a0, zero, 57
  SW a0, 436(sp)
  LW a0, 436(sp)
  LW s2, 356(sp)
  SLT a0, a0, s2
  SB a0, 40(sp)
  LB a0, 40(sp)
  XORI a0, a0, 1
  SB a0, 44(sp)
  LB a0, 44(sp)
  SB a0, 44(sp)
  JAL zero, bb62
bb175:   # loop depth 1
  LW s0, 440(sp)
  SLLIW s0, s0, 2
  LA s2, get
  ADD s0, s2, s0
  SW s1, 0(s0)
  LW s0, 440(sp)
  ADDIW s2, s0, 1
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb1
bb176:   # loop depth 1
  XORI s0, s1, 10
  SLTU s0, zero, s0
  JAL zero, bb3
