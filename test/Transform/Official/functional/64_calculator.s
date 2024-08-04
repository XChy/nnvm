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
  ADDI sp, sp, -832
  SD s8, 376(sp)
  SD ra, 400(sp)
  SD s9, 408(sp)
  SD s10, 416(sp)
  SD s0, 424(sp)
  SD s1, 432(sp)
  SD s2, 440(sp)
  SD s3, 448(sp)
  SD s4, 456(sp)
  SD s5, 464(sp)
  SD s6, 472(sp)
  SD s7, 480(sp)
  SD s11, 488(sp)
  LA s0, intt
  ADDI s1, zero, 0
  SW s1, 0(s0)
  LA s0, chat
  ADDI s1, zero, 0
  SW s1, 0(s0)
  CALL getch
  ADD s2, a0, zero
  ADD s1, zero, zero
  # implict jump to bb1
bb1:
  SW s1, 176(sp)
  XORI s0, s2, 13
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
  LW s0, 176(sp)
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
  LD s8, 376(sp)
  LD ra, 400(sp)
  LD s9, 408(sp)
  LD s10, 416(sp)
  LD s0, 424(sp)
  LD s1, 432(sp)
  LD s2, 440(sp)
  LD s3, 448(sp)
  LD s4, 456(sp)
  LD s5, 464(sp)
  LD s6, 472(sp)
  LD s7, 480(sp)
  LD s11, 488(sp)
  ADDI sp, sp, 832
  JALR zero, 0(ra)
bb8:
  ADD a0, zero, zero
  ADD s5, zero, zero
  ADD s4, zero, zero
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
  LA s3, i
  SW s1, 0(s3)
  SLLIW s1, s1, 2
  LA s3, get2
  ADD s1, s3, s1
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
  LA s6, get2
  ADD s2, s6, s2
  LW s2, 0(s2)
  ADDI s6, zero, 48
  SUBW s2, s2, s6
  LW s6, 0(s1)
  ADDI s7, zero, 10
  MULW s6, s6, s7
  SW s6, 0(s1)
  ADDW s2, s6, s2
  SW s2, 0(s1)
  LA s2, ii
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s6, ii
  SW s2, 0(s6)
  LA s6, i
  LW s6, 0(s6)
  ADDW s2, s6, s2
  SLLIW s2, s2, 2
  LA s6, get2
  ADD s2, s6, s2
  LW s2, 0(s2)
  XORI s2, s2, 32
  BNE s2, zero, bb27
  JAL zero, bb25
bb28:
  LA s0, intt
  LW s0, 0(s0)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  LA s1, intt
  SW s2, 0(s1)
  SLLIW s1, s0, 2
  LA s4, ints
  ADD s1, s4, s1
  LW s4, 0(s1)
  ADDI s5, zero, 2
  SUBW s0, s0, s5
  LA s5, intt
  SW s0, 0(s5)
  SLLIW s0, s2, 2
  LA s2, ints
  ADD s0, s2, s0
  LW s5, 0(s0)
  LA s0, i
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s6, get2
  ADD s0, s6, s0
  LW s0, 0(s0)
  XORI s0, s0, 43
  SLTIU s0, s0, 1
  BNE s0, zero, bb52
  # implict jump to bb29
bb29:
  # implict jump to bb30
bb30:
  LA s0, i
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s3, get2
  ADD s0, s3, s0
  LW s0, 0(s0)
  XORI s0, s0, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb51
  # implict jump to bb31
bb31:
  # implict jump to bb32
bb32:
  LA s0, i
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s3, get2
  ADD s0, s3, s0
  LW s0, 0(s0)
  XORI s0, s0, 42
  SLTIU s0, s0, 1
  BNE s0, zero, bb50
  # implict jump to bb33
bb33:
  # implict jump to bb34
bb34:
  LA s0, i
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s3, get2
  ADD s0, s3, s0
  LW s0, 0(s0)
  XORI s0, s0, 47
  SLTIU s0, s0, 1
  BNE s0, zero, bb49
  # implict jump to bb35
bb35:
  # implict jump to bb36
bb36:
  LA s0, i
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s3, get2
  ADD s0, s3, s0
  LW s0, 0(s0)
  XORI s0, s0, 37
  SLTIU s0, s0, 1
  BNE s0, zero, bb48
  # implict jump to bb37
bb37:
  # implict jump to bb38
bb38:
  LA s0, i
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s3, get2
  ADD s0, s3, s0
  LW s0, 0(s0)
  XORI s0, s0, 94
  SLTIU s0, s0, 1
  BNE s0, zero, bb41
  # implict jump to bb39
bb39:
  # implict jump to bb40
bb40:
  LA s0, intt
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s3, intt
  SW s0, 0(s3)
  SLLIW s0, s0, 2
  LA s3, ints
  ADD s0, s3, s0
  SW a0, 0(s0)
  JAL zero, bb22
bb41:
  BNE s4, zero, bb44
  # implict jump to bb42
bb42:
  ADDI a0, zero, 1
  # implict jump to bb43
bb43:
  JAL zero, bb40
bb44:
  ADD s3, s4, zero
  ADDI a0, zero, 1
  # implict jump to bb45
bb45:
  MULW a0, a0, s5
  ADDI s6, zero, 1
  SUBW s3, s3, s6
  BNE s3, zero, bb47
  # implict jump to bb46
bb46:
  JAL zero, bb43
bb47:
  JAL zero, bb45
bb48:
  REMW a0, s5, s4
  JAL zero, bb38
bb49:
  DIVW a0, s5, s4
  JAL zero, bb36
bb50:
  MULW a0, s4, s5
  JAL zero, bb34
bb51:
  SUBW a0, s5, s4
  JAL zero, bb32
bb52:
  ADDW a0, s4, s5
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
  SW a0, 184(sp)
  ADD a0, zero, zero
  SB a0, 113(sp)
  ADD a0, zero, zero
  SB a0, 106(sp)
  ADD a0, zero, zero
  SB a0, 105(sp)
  ADD a0, zero, zero
  SB a0, 104(sp)
  ADD a0, zero, zero
  SB a0, 13(sp)
  ADD a0, zero, zero
  SB a0, 103(sp)
  ADD s3, zero, zero
  ADD s2, zero, zero
  ADD a0, zero, zero
  SB a0, 100(sp)
  ADD a0, zero, zero
  SB a0, 11(sp)
  ADD a0, zero, zero
  SB a0, 10(sp)
  ADD a0, zero, zero
  SB a0, 0(sp)
  ADD s7, zero, zero
  ADD s6, zero, zero
  ADD a0, zero, zero
  SB a0, 8(sp)
  ADD s1, zero, zero
  ADD s4, zero, zero
  ADD s11, zero, zero
  ADD s10, zero, zero
  # implict jump to bb60
bb60:
  SB s10, 77(sp)
  SB s11, 76(sp)
  SB s4, 75(sp)
  LB a0, 8(sp)
  SB a0, 74(sp)
  SB s6, 73(sp)
  SB s7, 23(sp)
  LB a0, 0(sp)
  SB a0, 72(sp)
  LB a0, 10(sp)
  SB a0, 71(sp)
  LB a0, 11(sp)
  SB a0, 22(sp)
  LB a0, 100(sp)
  SB a0, 70(sp)
  SB s2, 110(sp)
  SB s3, 95(sp)
  LB a0, 103(sp)
  SB a0, 108(sp)
  LB a0, 13(sp)
  SB a0, 51(sp)
  LB a0, 104(sp)
  SB a0, 60(sp)
  LB s10, 105(sp)
  LB s7, 106(sp)
  LB a0, 113(sp)
  SB a0, 109(sp)
  LW a0, 184(sp)
  SLLIW a0, a0, 2
  LA s4, get
  ADD a0, s4, a0
  LW a0, 0(a0)
  SW a0, 156(sp)
  LW a0, 156(sp)
  SLTI a0, a0, 48
  XORI a0, a0, 1
  BNE a0, zero, bb174
  # implict jump to bb61
bb61:
  ADD a0, zero, zero
  # implict jump to bb62
bb62:
  BNE a0, zero, bb173
  # implict jump to bb63
bb63:
  ADD a0, zero, zero
  # implict jump to bb64
bb64:
  XORI a0, a0, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb172
  # implict jump to bb65
bb65:
  LW a0, 156(sp)
  XORI a0, a0, 40
  SLTIU a0, a0, 1
  BNE a0, zero, bb171
  # implict jump to bb66
bb66:
  LW a0, 156(sp)
  XORI a0, a0, 94
  SLTIU a0, a0, 1
  BNE a0, zero, bb170
  # implict jump to bb67
bb67:
  LW a0, 156(sp)
  XORI a0, a0, 41
  SLTIU a0, a0, 1
  BNE a0, zero, bb168
  # implict jump to bb68
bb68:
  LW a0, 156(sp)
  XORI a0, a0, 43
  SLTIU a0, a0, 1
  BNE a0, zero, bb147
  # implict jump to bb69
bb69:
  LB s6, 23(sp)
  LB s4, 22(sp)
  LB a0, 109(sp)
  # implict jump to bb70
bb70:
  SB a0, 87(sp)
  SB s7, 88(sp)
  SB s4, 89(sp)
  SB s6, 90(sp)
  SB s1, 94(sp)
  LW a0, 156(sp)
  XORI a0, a0, 45
  SLTIU a0, a0, 1
  BNE a0, zero, bb126
  # implict jump to bb71
bb71:
  LB s7, 73(sp)
  LB s6, 108(sp)
  LB s5, 51(sp)
  LB s4, 60(sp)
  # implict jump to bb72
bb72:
  SB s10, 81(sp)
  SB s4, 69(sp)
  SB s5, 83(sp)
  SB s6, 84(sp)
  LW a0, 156(sp)
  XORI a0, a0, 42
  SLTIU a0, a0, 1
  BNE a0, zero, bb111
  # implict jump to bb73
bb73:
  LB s0, 71(sp)
  LB s1, 110(sp)
  LB s2, 95(sp)
  # implict jump to bb74
bb74:
  SB s2, 112(sp)
  SB s1, 111(sp)
  SB s0, 63(sp)
  LW a0, 156(sp)
  XORI a0, a0, 47
  SLTIU a0, a0, 1
  BNE a0, zero, bb96
  # implict jump to bb75
bb75:
  LB s2, 74(sp)
  LB s1, 72(sp)
  LB a0, 70(sp)
  # implict jump to bb76
bb76:
  SB a0, 56(sp)
  SB s1, 57(sp)
  LW a0, 156(sp)
  XORI a0, a0, 37
  SLTIU a0, a0, 1
  BNE a0, zero, bb81
  # implict jump to bb77
bb77:
  LB s0, 77(sp)
  LB a0, 76(sp)
  SB a0, 31(sp)
  LB a0, 75(sp)
  SB a0, 30(sp)
  LB a0, 30(sp)
  SB a0, 30(sp)
  # implict jump to bb78
bb78:
  LB s1, 30(sp)
  LB a0, 31(sp)
  SB a0, 27(sp)
  LA a0, ii
  SD a0, 544(sp)
  LD a0, 544(sp)
  LW a0, 0(a0)
  SW a0, 324(sp)
  LW a0, 324(sp)
  SLLIW a0, a0, 2
  SW a0, 328(sp)
  LA a0, get2
  SD a0, 552(sp)
  LD a0, 552(sp)
  LW s3, 328(sp)
  ADD a0, a0, s3
  SD a0, 712(sp)
  ADDI a0, zero, 32
  SW a0, 180(sp)
  LW a0, 180(sp)
  LD s3, 712(sp)
  SW a0, 0(s3)
  LW a0, 324(sp)
  ADDIW a0, a0, 1
  SW a0, 340(sp)
  LA a0, ii
  SD a0, 560(sp)
  LD a0, 560(sp)
  LW s3, 340(sp)
  SW s3, 0(a0)
  SB s0, 99(sp)
  LB a0, 27(sp)
  SB a0, 96(sp)
  SB s1, 98(sp)
  LB a0, 94(sp)
  SB a0, 101(sp)
  SB s2, 102(sp)
  SB s7, 107(sp)
  LB a0, 90(sp)
  SB a0, 2(sp)
  LB a0, 57(sp)
  SB a0, 1(sp)
  LB a0, 63(sp)
  SB a0, 9(sp)
  LB a0, 89(sp)
  SB a0, 34(sp)
  LB a0, 56(sp)
  SB a0, 33(sp)
  LB a0, 111(sp)
  SB a0, 32(sp)
  LB a0, 112(sp)
  SB a0, 20(sp)
  LB a0, 20(sp)
  SB a0, 20(sp)
  LB s6, 84(sp)
  LB s5, 83(sp)
  LB s4, 69(sp)
  LB s10, 81(sp)
  LB s7, 88(sp)
  LB s11, 87(sp)
  # implict jump to bb79
bb79:
  SB s7, 93(sp)
  SB s10, 67(sp)
  SB s4, 92(sp)
  SB s5, 44(sp)
  SB s6, 91(sp)
  LB a0, 20(sp)
  SB a0, 20(sp)
  LB a0, 20(sp)
  SB a0, 86(sp)
  LB a0, 32(sp)
  SB a0, 36(sp)
  LB s0, 33(sp)
  LB a0, 34(sp)
  SB a0, 37(sp)
  LB a0, 9(sp)
  SB a0, 85(sp)
  LB a0, 1(sp)
  SB a0, 39(sp)
  LB s7, 2(sp)
  LB s6, 107(sp)
  LB a0, 102(sp)
  SB a0, 80(sp)
  LB a0, 101(sp)
  SB a0, 79(sp)
  LB a0, 98(sp)
  SB a0, 82(sp)
  LB a0, 96(sp)
  SB a0, 41(sp)
  LB a0, 99(sp)
  SB a0, 78(sp)
  LA a0, i
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s4, i
  SW a0, 0(s4)
  LW s1, 176(sp)
  BLT a0, s1, bb80
  JAL zero, bb5
bb80:
  SW a0, 184(sp)
  SB s11, 113(sp)
  LB a0, 93(sp)
  SB a0, 106(sp)
  LB a0, 67(sp)
  SB a0, 105(sp)
  LB a0, 92(sp)
  SB a0, 104(sp)
  LB a0, 44(sp)
  SB a0, 13(sp)
  LB a0, 91(sp)
  SB a0, 103(sp)
  LB s3, 86(sp)
  LB s2, 36(sp)
  SB s0, 100(sp)
  LB a0, 37(sp)
  SB a0, 11(sp)
  LB a0, 85(sp)
  SB a0, 10(sp)
  LB a0, 10(sp)
  SB a0, 10(sp)
  LB a0, 39(sp)
  SB a0, 0(sp)
  LB a0, 80(sp)
  SB a0, 8(sp)
  LB a0, 8(sp)
  SB a0, 8(sp)
  LB s1, 79(sp)
  LB s4, 82(sp)
  LB s11, 41(sp)
  LB s10, 78(sp)
  JAL zero, bb60
bb81:
  LA a0, chat
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LA s0, chas
  ADD a0, s0, a0
  LW a0, 0(a0)
  SW a0, 344(sp)
  LW a0, 344(sp)
  XORI a0, a0, 42
  SLTIU a0, a0, 1
  BNE a0, zero, bb95
  # implict jump to bb82
bb82:
  LW a0, 344(sp)
  XORI a0, a0, 47
  SLTIU s0, a0, 1
  # implict jump to bb83
bb83:
  BNE s0, zero, bb94
  # implict jump to bb84
bb84:
  LW a0, 344(sp)
  XORI a0, a0, 37
  SW a0, 264(sp)
  LW a0, 264(sp)
  SLTIU a0, a0, 1
  SB a0, 31(sp)
  LB a0, 31(sp)
  SB a0, 31(sp)
  # implict jump to bb85
bb85:
  LB a0, 31(sp)
  SB a0, 31(sp)
  LB a0, 31(sp)
  BNE a0, zero, bb93
  # implict jump to bb86
bb86:
  LW a0, 344(sp)
  XORI a0, a0, 94
  SW a0, 228(sp)
  LW a0, 228(sp)
  SLTIU a0, a0, 1
  SB a0, 30(sp)
  LB a0, 30(sp)
  SB a0, 30(sp)
  # implict jump to bb87
bb87:
  LB a0, 30(sp)
  SB a0, 30(sp)
  LB a0, 30(sp)
  BNE a0, zero, bb89
  # implict jump to bb88
bb88:
  LA a0, chat
  SD a0, 632(sp)
  LD a0, 632(sp)
  LW a0, 0(a0)
  SW a0, 252(sp)
  LW a0, 252(sp)
  ADDIW a0, a0, 1
  SW a0, 256(sp)
  LA a0, chat
  SD a0, 640(sp)
  LD a0, 640(sp)
  LW s1, 256(sp)
  SW s1, 0(a0)
  LW a0, 256(sp)
  SLLIW a0, a0, 2
  SW a0, 260(sp)
  LA a0, chas
  SD a0, 648(sp)
  LD a0, 648(sp)
  LW s1, 260(sp)
  ADD a0, a0, s1
  SD a0, 664(sp)
  ADDI a0, zero, 37
  SW a0, 272(sp)
  LW a0, 272(sp)
  LD s1, 664(sp)
  SW a0, 0(s1)
  LB a0, 31(sp)
  SB a0, 31(sp)
  LB a0, 30(sp)
  SB a0, 30(sp)
  JAL zero, bb78
bb89:
  LA a0, chat
  SD a0, 568(sp)
  LD a0, 568(sp)
  LW a0, 0(a0)
  SW a0, 348(sp)
  ADDI a0, zero, 1
  SW a0, 288(sp)
  LW a0, 288(sp)
  LW s1, 348(sp)
  SUBW a0, s1, a0
  SW a0, 352(sp)
  LA a0, chat
  SD a0, 576(sp)
  LD a0, 576(sp)
  LW s1, 352(sp)
  SW s1, 0(a0)
  LW a0, 348(sp)
  SLLIW a0, a0, 2
  SW a0, 356(sp)
  LA a0, chas
  SD a0, 584(sp)
  LD a0, 584(sp)
  LW s1, 356(sp)
  ADD a0, a0, s1
  SD a0, 720(sp)
  LD a0, 720(sp)
  LW a0, 0(a0)
  SW a0, 360(sp)
  LA a0, c
  SD a0, 592(sp)
  LD a0, 592(sp)
  LW s1, 360(sp)
  SW s1, 0(a0)
  LA a0, ii
  SD a0, 600(sp)
  LD a0, 600(sp)
  LW a0, 0(a0)
  SW a0, 364(sp)
  LW a0, 364(sp)
  SLLIW a0, a0, 2
  SW a0, 368(sp)
  LA a0, get2
  SD a0, 528(sp)
  LD a0, 528(sp)
  LW s1, 368(sp)
  ADD a0, a0, s1
  SD a0, 728(sp)
  ADDI a0, zero, 32
  SW a0, 300(sp)
  LW a0, 300(sp)
  LD s1, 728(sp)
  SW a0, 0(s1)
  LW a0, 364(sp)
  ADDIW a0, a0, 1
  SW a0, 232(sp)
  LW a0, 232(sp)
  SLLIW a0, a0, 2
  SW a0, 236(sp)
  LA a0, get2
  SD a0, 616(sp)
  LD a0, 616(sp)
  LW s1, 236(sp)
  ADD a0, a0, s1
  SD a0, 736(sp)
  LD a0, 736(sp)
  LW s1, 360(sp)
  SW s1, 0(a0)
  LW a0, 364(sp)
  ADDIW a0, a0, 2
  SW a0, 244(sp)
  LA a0, ii
  SD a0, 624(sp)
  LD a0, 624(sp)
  LW s1, 244(sp)
  SW s1, 0(a0)
  LW a0, 352(sp)
  SLTIU a0, a0, 1
  SB a0, 17(sp)
  LB a0, 17(sp)
  BNE a0, zero, bb92
  # implict jump to bb90
bb90:
  ADDI a0, zero, 1
  SW a0, 248(sp)
  # implict jump to bb91
bb91:
  LW a0, 248(sp)
  SW a0, 248(sp)
  LW a0, 248(sp)
  SLTIU a0, a0, 1
  SB a0, 16(sp)
  LB a0, 16(sp)
  BNE a0, zero, bb88
  JAL zero, bb81
bb92:
  ADD a0, zero, zero
  SW a0, 248(sp)
  JAL zero, bb91
bb93:
  ADDI a0, zero, 1
  SB a0, 30(sp)
  JAL zero, bb87
bb94:
  ADDI a0, zero, 1
  SB a0, 31(sp)
  JAL zero, bb85
bb95:
  ADDI s0, zero, 1
  JAL zero, bb83
bb96:
  LA a0, chat
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LA s0, chas
  ADD a0, s0, a0
  LW s1, 0(a0)
  XORI a0, s1, 42
  SLTIU a0, a0, 1
  BNE a0, zero, bb110
  # implict jump to bb97
bb97:
  XORI a0, s1, 47
  SLTIU s2, a0, 1
  # implict jump to bb98
bb98:
  BNE s2, zero, bb109
  # implict jump to bb99
bb99:
  XORI a0, s1, 37
  SLTIU a0, a0, 1
  # implict jump to bb100
bb100:
  SB a0, 53(sp)
  LB a0, 53(sp)
  BNE a0, zero, bb108
  # implict jump to bb101
bb101:
  XORI a0, s1, 94
  SLTIU s1, a0, 1
  # implict jump to bb102
bb102:
  BNE s1, zero, bb104
  # implict jump to bb103
bb103:
  LA a0, chat
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 316(sp)
  LA a0, chat
  LW s0, 316(sp)
  SW s0, 0(a0)
  LW a0, 316(sp)
  SLLIW a0, a0, 2
  SW a0, 320(sp)
  LA a0, chas
  LW s0, 320(sp)
  ADD a0, a0, s0
  SD a0, 704(sp)
  ADDI a0, zero, 47
  LD s0, 704(sp)
  SW a0, 0(s0)
  LB a0, 53(sp)
  JAL zero, bb76
bb104:
  LA a0, chat
  LW a0, 0(a0)
  SW a0, 124(sp)
  ADDI a0, zero, 1
  LW s0, 124(sp)
  SUBW a0, s0, a0
  SW a0, 132(sp)
  LA a0, chat
  LW s0, 132(sp)
  SW s0, 0(a0)
  LW a0, 124(sp)
  SLLIW a0, a0, 2
  SW a0, 128(sp)
  LA a0, chas
  LW s0, 128(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  SW a0, 116(sp)
  LA a0, c
  LW s0, 116(sp)
  SW s0, 0(a0)
  LA a0, ii
  LW a0, 0(a0)
  SW a0, 120(sp)
  LW a0, 120(sp)
  SLLIW a0, a0, 2
  SW a0, 336(sp)
  LA a0, get2
  LW s0, 336(sp)
  ADD a0, a0, s0
  SD a0, 696(sp)
  ADDI a0, zero, 32
  LD s0, 696(sp)
  SW a0, 0(s0)
  LW a0, 120(sp)
  ADDIW a0, a0, 1
  SLLIW a0, a0, 2
  SW a0, 268(sp)
  LA a0, get2
  LW s0, 268(sp)
  ADD a0, a0, s0
  LW s0, 116(sp)
  SW s0, 0(a0)
  LW a0, 120(sp)
  ADDIW a0, a0, 2
  SW a0, 312(sp)
  LA a0, ii
  LW s0, 312(sp)
  SW s0, 0(a0)
  LW a0, 132(sp)
  SLTIU a0, a0, 1
  BNE a0, zero, bb107
  # implict jump to bb105
bb105:
  ADDI a0, zero, 1
  # implict jump to bb106
bb106:
  SLTIU a0, a0, 1
  BNE a0, zero, bb103
  JAL zero, bb96
bb107:
  ADD a0, zero, zero
  JAL zero, bb106
bb108:
  ADDI s1, zero, 1
  JAL zero, bb102
bb109:
  ADDI a0, zero, 1
  JAL zero, bb100
bb110:
  ADDI s2, zero, 1
  JAL zero, bb98
bb111:
  LA a0, chat
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LA s0, chas
  ADD a0, s0, a0
  LW s1, 0(a0)
  XORI a0, s1, 42
  SLTIU a0, a0, 1
  BNE a0, zero, bb125
  # implict jump to bb112
bb112:
  XORI a0, s1, 47
  SLTIU s0, a0, 1
  # implict jump to bb113
bb113:
  BNE s0, zero, bb124
  # implict jump to bb114
bb114:
  XORI a0, s1, 37
  SLTIU s2, a0, 1
  # implict jump to bb115
bb115:
  BNE s2, zero, bb123
  # implict jump to bb116
bb116:
  XORI a0, s1, 94
  SLTIU s1, a0, 1
  # implict jump to bb117
bb117:
  BNE s1, zero, bb119
  # implict jump to bb118
bb118:
  LA a0, chat
  SD a0, 816(sp)
  LD a0, 816(sp)
  LW a0, 0(a0)
  SW a0, 144(sp)
  LW a0, 144(sp)
  ADDIW a0, a0, 1
  SW a0, 140(sp)
  LA a0, chat
  SD a0, 608(sp)
  LD a0, 608(sp)
  LW s3, 140(sp)
  SW s3, 0(a0)
  LW a0, 140(sp)
  SLLIW a0, a0, 2
  SW a0, 136(sp)
  LA a0, chas
  SD a0, 536(sp)
  LD a0, 536(sp)
  LW s3, 136(sp)
  ADD a0, a0, s3
  SD a0, 688(sp)
  ADDI a0, zero, 42
  SW a0, 276(sp)
  LW a0, 276(sp)
  LD s3, 688(sp)
  SW a0, 0(s3)
  JAL zero, bb74
bb119:
  LA a0, chat
  SD a0, 752(sp)
  LD a0, 752(sp)
  LW a0, 0(a0)
  SW a0, 188(sp)
  ADDI a0, zero, 1
  SW a0, 296(sp)
  LW a0, 296(sp)
  LW s3, 188(sp)
  SUBW a0, s3, a0
  SW a0, 192(sp)
  LA a0, chat
  SD a0, 760(sp)
  LD a0, 760(sp)
  LW s3, 192(sp)
  SW s3, 0(a0)
  LW a0, 188(sp)
  SLLIW a0, a0, 2
  SW a0, 160(sp)
  LA a0, chas
  SD a0, 768(sp)
  LD a0, 768(sp)
  LW s3, 160(sp)
  ADD a0, a0, s3
  SD a0, 744(sp)
  LD a0, 744(sp)
  LW a0, 0(a0)
  SW a0, 204(sp)
  LA a0, c
  SD a0, 776(sp)
  LD a0, 776(sp)
  LW s3, 204(sp)
  SW s3, 0(a0)
  LA a0, ii
  SD a0, 784(sp)
  LD a0, 784(sp)
  LW a0, 0(a0)
  SW a0, 208(sp)
  LW a0, 208(sp)
  SLLIW a0, a0, 2
  SW a0, 212(sp)
  LA a0, get2
  SD a0, 792(sp)
  LD a0, 792(sp)
  LW s3, 212(sp)
  ADD a0, a0, s3
  SD a0, 672(sp)
  ADDI a0, zero, 32
  SW a0, 304(sp)
  LW a0, 304(sp)
  LD s3, 672(sp)
  SW a0, 0(s3)
  LW a0, 208(sp)
  ADDIW a0, a0, 1
  SW a0, 216(sp)
  LW a0, 216(sp)
  SLLIW a0, a0, 2
  SW a0, 220(sp)
  LA a0, get2
  SD a0, 800(sp)
  LD a0, 800(sp)
  LW s3, 220(sp)
  ADD a0, a0, s3
  SD a0, 680(sp)
  LD a0, 680(sp)
  LW s3, 204(sp)
  SW s3, 0(a0)
  LW a0, 208(sp)
  ADDIW a0, a0, 2
  SW a0, 196(sp)
  LA a0, ii
  SD a0, 808(sp)
  LD a0, 808(sp)
  LW s3, 196(sp)
  SW s3, 0(a0)
  LW a0, 192(sp)
  SLTIU a0, a0, 1
  SB a0, 59(sp)
  LB a0, 59(sp)
  BNE a0, zero, bb122
  # implict jump to bb120
bb120:
  ADDI a0, zero, 1
  SW a0, 280(sp)
  # implict jump to bb121
bb121:
  LW a0, 280(sp)
  SW a0, 152(sp)
  LW a0, 152(sp)
  SLTIU a0, a0, 1
  SB a0, 58(sp)
  LB a0, 58(sp)
  BNE a0, zero, bb118
  JAL zero, bb111
bb122:
  ADD a0, zero, zero
  SW a0, 280(sp)
  JAL zero, bb121
bb123:
  ADDI s1, zero, 1
  JAL zero, bb117
bb124:
  ADDI s2, zero, 1
  JAL zero, bb115
bb125:
  ADDI s0, zero, 1
  JAL zero, bb113
bb126:
  LA a0, chat
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LA s0, chas
  ADD a0, s0, a0
  LW s6, 0(a0)
  XORI a0, s6, 43
  SLTIU a0, a0, 1
  BNE a0, zero, bb146
  # implict jump to bb127
bb127:
  XORI a0, s6, 45
  SLTIU a0, a0, 1
  # implict jump to bb128
bb128:
  SB a0, 64(sp)
  LB a0, 64(sp)
  BNE a0, zero, bb145
  # implict jump to bb129
bb129:
  XORI a0, s6, 42
  SLTIU s7, a0, 1
  # implict jump to bb130
bb130:
  BNE s7, zero, bb144
  # implict jump to bb131
bb131:
  XORI a0, s6, 47
  SLTIU s4, a0, 1
  # implict jump to bb132
bb132:
  BNE s4, zero, bb143
  # implict jump to bb133
bb133:
  XORI a0, s6, 37
  SLTIU s5, a0, 1
  # implict jump to bb134
bb134:
  BNE s5, zero, bb142
  # implict jump to bb135
bb135:
  XORI a0, s6, 94
  SLTIU s6, a0, 1
  # implict jump to bb136
bb136:
  BNE s6, zero, bb138
  # implict jump to bb137
bb137:
  LA a0, chat
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s8, chat
  SW a0, 0(s8)
  SLLIW a0, a0, 2
  LA s8, chas
  ADD a0, s8, a0
  ADDI s8, zero, 45
  SW s8, 0(a0)
  LB s10, 64(sp)
  JAL zero, bb72
bb138:
  LA a0, chat
  LW a0, 0(a0)
  ADDI s8, zero, 1
  SUBW s0, a0, s8
  SW s0, 172(sp)
  LA s8, chat
  LW s0, 172(sp)
  SW s0, 0(s8)
  SLLIW a0, a0, 2
  LA s8, chas
  ADD a0, s8, a0
  LW a0, 0(a0)
  SW a0, 168(sp)
  LA a0, c
  LW s0, 168(sp)
  SW s0, 0(a0)
  LA a0, ii
  LW a0, 0(a0)
  SW a0, 164(sp)
  LW a0, 164(sp)
  SLLIW a0, a0, 2
  LA s8, get2
  ADD a0, s8, a0
  ADDI s8, zero, 32
  SW s8, 0(a0)
  LW a0, 164(sp)
  ADDIW a0, a0, 1
  SLLIW a0, a0, 2
  LA s8, get2
  ADD a0, s8, a0
  LW s0, 168(sp)
  SW s0, 0(a0)
  LW a0, 164(sp)
  ADDIW a0, a0, 2
  LA s8, ii
  SW a0, 0(s8)
  LW a0, 172(sp)
  SLTIU a0, a0, 1
  BNE a0, zero, bb141
  # implict jump to bb139
bb139:
  ADDI a0, zero, 1
  # implict jump to bb140
bb140:
  SLTIU a0, a0, 1
  BNE a0, zero, bb137
  JAL zero, bb126
bb141:
  ADD a0, zero, zero
  JAL zero, bb140
bb142:
  ADDI s6, zero, 1
  JAL zero, bb136
bb143:
  ADDI s5, zero, 1
  JAL zero, bb134
bb144:
  ADDI s4, zero, 1
  JAL zero, bb132
bb145:
  ADDI s7, zero, 1
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
  LW s6, 0(a0)
  XORI a0, s6, 43
  SLTIU a0, a0, 1
  BNE a0, zero, bb167
  # implict jump to bb148
bb148:
  XORI a0, s6, 45
  SLTIU s4, a0, 1
  # implict jump to bb149
bb149:
  BNE s4, zero, bb166
  # implict jump to bb150
bb150:
  XORI a0, s6, 42
  SLTIU s7, a0, 1
  # implict jump to bb151
bb151:
  BNE s7, zero, bb165
  # implict jump to bb152
bb152:
  XORI a0, s6, 47
  SLTIU s1, a0, 1
  # implict jump to bb153
bb153:
  BNE s1, zero, bb164
  # implict jump to bb154
bb154:
  XORI a0, s6, 37
  SLTIU a0, a0, 1
  # implict jump to bb155
bb155:
  SB a0, 66(sp)
  LB a0, 66(sp)
  BNE a0, zero, bb163
  # implict jump to bb156
bb156:
  XORI a0, s6, 94
  SLTIU s6, a0, 1
  # implict jump to bb157
bb157:
  BNE s6, zero, bb159
  # implict jump to bb158
bb158:
  LA a0, chat
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s8, chat
  SW a0, 0(s8)
  SLLIW a0, a0, 2
  LA s8, chas
  ADD a0, s8, a0
  ADDI s8, zero, 43
  SW s8, 0(a0)
  LB a0, 66(sp)
  JAL zero, bb70
bb159:
  LA a0, chat
  LW a0, 0(a0)
  ADDI s8, zero, 1
  SUBW s8, a0, s8
  LA s9, chat
  SW s8, 0(s9)
  SLLIW a0, a0, 2
  LA s9, chas
  ADD a0, s9, a0
  LW a0, 0(a0)
  LA s9, c
  SW a0, 0(s9)
  LA s9, ii
  LW s9, 0(s9)
  SLLIW s0, s9, 2
  SW s0, 284(sp)
  LA s2, get2
  SD s2, 656(sp)
  LD s2, 656(sp)
  LW s0, 284(sp)
  ADD s0, s2, s0
  SD s0, 392(sp)
  ADDI s2, zero, 32
  SW s2, 148(sp)
  LW s2, 148(sp)
  LD s0, 392(sp)
  SW s2, 0(s0)
  ADDIW s11, s9, 1
  SLLIW s2, s11, 2
  SW s2, 200(sp)
  LA s0, get2
  SD s0, 384(sp)
  LW s2, 200(sp)
  LD s0, 384(sp)
  ADD s11, s0, s2
  SW a0, 0(s11)
  ADDIW a0, s9, 2
  LA s9, ii
  SW a0, 0(s9)
  SLTIU a0, s8, 1
  BNE a0, zero, bb162
  # implict jump to bb160
bb160:
  ADDI a0, zero, 1
  # implict jump to bb161
bb161:
  SLTIU a0, a0, 1
  BNE a0, zero, bb158
  JAL zero, bb147
bb162:
  ADD a0, zero, zero
  JAL zero, bb161
bb163:
  ADDI s6, zero, 1
  JAL zero, bb157
bb164:
  ADDI a0, zero, 1
  JAL zero, bb155
bb165:
  ADDI s1, zero, 1
  JAL zero, bb153
bb166:
  ADDI s7, zero, 1
  JAL zero, bb151
bb167:
  ADDI s4, zero, 1
  JAL zero, bb149
bb168:
  LA a0, chat
  LW a0, 0(a0)
  ADDI s4, zero, 1
  SUBW s4, a0, s4
  LA s6, chat
  SW s4, 0(s6)
  SLLIW a0, a0, 2
  LA s4, chas
  ADD a0, s4, a0
  LW a0, 0(a0)
  LA s4, c
  SW a0, 0(s4)
  XORI a0, a0, 40
  BNE a0, zero, bb169
  JAL zero, bb68
bb169:
  LA a0, ii
  LW a0, 0(a0)
  SLLIW s4, a0, 2
  LA s6, get2
  ADD s4, s6, s4
  ADDI s6, zero, 32
  SW s6, 0(s4)
  ADDIW s4, a0, 1
  SLLIW s4, s4, 2
  LA s6, get2
  ADD s4, s6, s4
  LA s6, c
  LW s6, 0(s6)
  SW s6, 0(s4)
  ADDIW a0, a0, 2
  LA s4, ii
  SW a0, 0(s4)
  LA a0, chat
  LW a0, 0(a0)
  ADDI s4, zero, 1
  SUBW s4, a0, s4
  LA s6, chat
  SW s4, 0(s6)
  SLLIW a0, a0, 2
  LA s4, chas
  ADD a0, s4, a0
  LW a0, 0(a0)
  LA s4, c
  SW a0, 0(s4)
  XORI a0, a0, 40
  BNE a0, zero, bb169
  JAL zero, bb68
bb170:
  LA a0, chat
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s4, chat
  SW a0, 0(s4)
  SLLIW a0, a0, 2
  LA s4, chas
  ADD a0, s4, a0
  ADDI s4, zero, 94
  SW s4, 0(a0)
  JAL zero, bb67
bb171:
  LA a0, chat
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s4, chat
  SW a0, 0(s4)
  SLLIW a0, a0, 2
  LA s4, chas
  ADD a0, s4, a0
  ADDI s4, zero, 40
  SW s4, 0(a0)
  JAL zero, bb66
bb172:
  LA a0, ii
  LW a0, 0(a0)
  SLLIW s4, a0, 2
  LA s6, get2
  ADD s4, s6, s4
  LW s2, 156(sp)
  SW s2, 0(s4)
  ADDIW a0, a0, 1
  LA s4, ii
  SW a0, 0(s4)
  LB a0, 77(sp)
  SB a0, 99(sp)
  LB a0, 76(sp)
  SB a0, 96(sp)
  LB a0, 75(sp)
  SB a0, 98(sp)
  SB s1, 101(sp)
  LB a0, 74(sp)
  SB a0, 102(sp)
  LB a0, 73(sp)
  SB a0, 107(sp)
  LB a0, 23(sp)
  SB a0, 2(sp)
  LB a0, 72(sp)
  SB a0, 1(sp)
  LB a0, 71(sp)
  SB a0, 9(sp)
  LB a0, 22(sp)
  SB a0, 34(sp)
  LB a0, 70(sp)
  SB a0, 33(sp)
  LB a0, 110(sp)
  SB a0, 32(sp)
  LB a0, 95(sp)
  SB a0, 20(sp)
  LB a0, 20(sp)
  SB a0, 20(sp)
  LB s6, 108(sp)
  LB s5, 51(sp)
  LB s4, 60(sp)
  LB s11, 109(sp)
  JAL zero, bb79
bb173:
  ADDI a0, zero, 1
  JAL zero, bb64
bb174:
  ADDI a0, zero, 57
  LW s2, 156(sp)
  SLT a0, a0, s2
  XORI a0, a0, 1
  JAL zero, bb62
bb175:
  LW s0, 176(sp)
  SLLIW s0, s0, 2
  LA s1, get
  ADD s0, s1, s0
  SW s2, 0(s0)
  LW s0, 176(sp)
  ADDIW s1, s0, 1
  CALL getch
  ADD s2, a0, zero
  JAL zero, bb1
bb176:
  XORI s0, s2, 10
  SLTU s0, zero, s0
  JAL zero, bb3
