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
  ADDI sp, sp, -960
  SD s1, 408(sp)
  SD ra, 424(sp)
  SD s0, 432(sp)
  SD s2, 440(sp)
  SD s3, 448(sp)
  SD s4, 464(sp)
  SD s5, 472(sp)
  SD s6, 480(sp)
  SD s7, 488(sp)
  SD s8, 496(sp)
  SD s11, 512(sp)
  SD s9, 528(sp)
  SD s10, 536(sp)
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
  SW s2, 308(sp)
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
  LW s0, 308(sp)
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
  LD s1, 408(sp)
  LD ra, 424(sp)
  LD s0, 432(sp)
  LD s2, 440(sp)
  LD s3, 448(sp)
  LD s4, 464(sp)
  LD s5, 472(sp)
  LD s6, 480(sp)
  LD s7, 488(sp)
  LD s8, 496(sp)
  LD s11, 512(sp)
  LD s9, 528(sp)
  LD s10, 536(sp)
  ADDI sp, sp, 960
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
  SW a0, 312(sp)
  ADD a0, zero, zero
  SB a0, 84(sp)
  ADD a0, zero, zero
  SB a0, 85(sp)
  ADD a0, zero, zero
  SB a0, 86(sp)
  ADD a0, zero, zero
  SB a0, 87(sp)
  ADD a0, zero, zero
  SB a0, 88(sp)
  ADD s10, zero, zero
  ADD s9, zero, zero
  ADD s8, zero, zero
  ADD a0, zero, zero
  SB a0, 89(sp)
  ADD a0, zero, zero
  SB a0, 30(sp)
  ADD s11, zero, zero
  ADD a0, zero, zero
  SB a0, 14(sp)
  ADD a0, zero, zero
  SB a0, 31(sp)
  ADD s3, zero, zero
  ADD a0, zero, zero
  SB a0, 13(sp)
  ADD a0, zero, zero
  SB a0, 4(sp)
  ADD s1, zero, zero
  ADD s0, zero, zero
  ADD a0, zero, zero
  # implict jump to bb60
bb60:
  SB a0, 122(sp)
  SB s0, 121(sp)
  SB s1, 119(sp)
  LB a0, 4(sp)
  SB a0, 4(sp)
  LB a0, 13(sp)
  SB a0, 118(sp)
  SB s3, 117(sp)
  LB a0, 31(sp)
  SB a0, 31(sp)
  LB a0, 14(sp)
  SB a0, 116(sp)
  SB s11, 115(sp)
  LB a0, 30(sp)
  SB a0, 30(sp)
  LB a0, 89(sp)
  SB a0, 114(sp)
  SB s8, 113(sp)
  SB s9, 112(sp)
  SB s10, 111(sp)
  LB a0, 88(sp)
  SB a0, 29(sp)
  LB a0, 29(sp)
  SB a0, 29(sp)
  LB s11, 87(sp)
  LB a0, 86(sp)
  SB a0, 110(sp)
  LB s9, 85(sp)
  LB s0, 84(sp)
  SB s0, 23(sp)
  LW s6, 312(sp)
  SLLIW s6, s6, 2
  LA s7, get
  ADD s6, s7, s6
  LW s0, 0(s6)
  SW s0, 180(sp)
  LW s0, 180(sp)
  SLTI s6, s0, 48
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
  LW s0, 180(sp)
  XORI s6, s0, 40
  SLTIU s6, s6, 1
  BNE s6, zero, bb171
  # implict jump to bb66
bb66:
  LW s0, 180(sp)
  XORI s6, s0, 94
  SLTIU s6, s6, 1
  BNE s6, zero, bb170
  # implict jump to bb67
bb67:
  LW s0, 180(sp)
  XORI s6, s0, 41
  SLTIU s6, s6, 1
  BNE s6, zero, bb168
  # implict jump to bb68
bb68:
  LW s0, 180(sp)
  XORI s6, s0, 43
  SLTIU s6, s6, 1
  BNE s6, zero, bb147
  # implict jump to bb69
bb69:
  LB s0, 4(sp)
  SB s0, 4(sp)
  LB a0, 31(sp)
  SB a0, 31(sp)
  LB a0, 30(sp)
  SB a0, 30(sp)
  LB s3, 23(sp)
  # implict jump to bb70
bb70:
  SB s3, 72(sp)
  SB s9, 73(sp)
  LB a0, 30(sp)
  SB a0, 30(sp)
  LB a0, 30(sp)
  SB a0, 65(sp)
  LB a0, 31(sp)
  SB a0, 31(sp)
  LB a0, 31(sp)
  SB a0, 75(sp)
  LB a0, 4(sp)
  SB a0, 76(sp)
  LW a0, 180(sp)
  XORI s6, a0, 45
  SLTIU s6, s6, 1
  BNE s6, zero, bb126
  # implict jump to bb71
bb71:
  LB s8, 117(sp)
  LB a0, 111(sp)
  SB a0, 3(sp)
  LB s2, 29(sp)
  LB s0, 110(sp)
  # implict jump to bb72
bb72:
  SB s0, 68(sp)
  SB s11, 69(sp)
  SB s2, 70(sp)
  LB a0, 3(sp)
  SB a0, 71(sp)
  SB s8, 39(sp)
  LW a0, 180(sp)
  XORI s2, a0, 42
  SLTIU s2, s2, 1
  BNE s2, zero, bb111
  # implict jump to bb73
bb73:
  LB s9, 115(sp)
  LB s10, 113(sp)
  LB s6, 112(sp)
  # implict jump to bb74
bb74:
  SB s6, 66(sp)
  SB s10, 67(sp)
  SB s9, 43(sp)
  LW a0, 180(sp)
  XORI s6, a0, 47
  SLTIU s6, s6, 1
  BNE s6, zero, bb96
  # implict jump to bb75
bb75:
  LB s9, 118(sp)
  LB s10, 116(sp)
  LB s6, 114(sp)
  # implict jump to bb76
bb76:
  SB s6, 25(sp)
  SB s10, 101(sp)
  SB s9, 100(sp)
  LW a0, 180(sp)
  XORI s9, a0, 37
  SLTIU s9, s9, 1
  BNE s9, zero, bb81
  # implict jump to bb77
bb77:
  LB a0, 122(sp)
  SB a0, 22(sp)
  LB a0, 22(sp)
  SB a0, 22(sp)
  LB a0, 121(sp)
  SB a0, 1(sp)
  LB s11, 119(sp)
  # implict jump to bb78
bb78:
  SB s11, 36(sp)
  LB s10, 1(sp)
  LB a0, 22(sp)
  SB a0, 22(sp)
  LA a0, ii
  SD a0, 632(sp)
  LD a0, 632(sp)
  LW a0, 0(a0)
  SW a0, 368(sp)
  LW a0, 368(sp)
  SLLIW a0, a0, 2
  SW a0, 372(sp)
  LA a0, get2
  SD a0, 640(sp)
  LD a0, 640(sp)
  LW s0, 372(sp)
  ADD a0, a0, s0
  SD a0, 912(sp)
  ADDI a0, zero, 32
  SW a0, 292(sp)
  LW a0, 292(sp)
  LD s0, 912(sp)
  SW a0, 0(s0)
  LW a0, 368(sp)
  ADDIW a0, a0, 1
  SW a0, 388(sp)
  LA a0, ii
  SD a0, 648(sp)
  LD a0, 648(sp)
  LW s0, 388(sp)
  SW s0, 0(a0)
  LB a0, 22(sp)
  SB a0, 22(sp)
  LB a0, 22(sp)
  SB a0, 90(sp)
  SB s10, 91(sp)
  LB a0, 36(sp)
  SB a0, 92(sp)
  LB a0, 76(sp)
  SB a0, 93(sp)
  LB a0, 100(sp)
  SB a0, 94(sp)
  LB a0, 39(sp)
  SB a0, 95(sp)
  LB a0, 75(sp)
  SB a0, 6(sp)
  LB s10, 101(sp)
  LB a0, 43(sp)
  SB a0, 28(sp)
  LB a0, 28(sp)
  SB a0, 28(sp)
  LB a0, 65(sp)
  SB a0, 30(sp)
  LB a0, 25(sp)
  SB a0, 25(sp)
  LB a0, 67(sp)
  SB a0, 49(sp)
  LB a0, 66(sp)
  SB a0, 97(sp)
  LB a0, 97(sp)
  SB a0, 97(sp)
  LB a0, 71(sp)
  SB a0, 27(sp)
  LB a0, 27(sp)
  SB a0, 27(sp)
  LB a0, 70(sp)
  SB a0, 5(sp)
  LB s11, 69(sp)
  LB s0, 68(sp)
  LB s9, 73(sp)
  LB s1, 72(sp)
  # implict jump to bb79
bb79:
  SB s1, 45(sp)
  SB s9, 46(sp)
  SB s0, 47(sp)
  SB s11, 48(sp)
  LB a0, 5(sp)
  SB a0, 33(sp)
  LB a0, 27(sp)
  SB a0, 27(sp)
  LB s9, 97(sp)
  LB s8, 49(sp)
  LB a0, 25(sp)
  SB a0, 25(sp)
  LB a0, 25(sp)
  SB a0, 77(sp)
  LB a0, 30(sp)
  SB a0, 30(sp)
  LB a0, 28(sp)
  SB a0, 28(sp)
  SB s10, 78(sp)
  LB a0, 6(sp)
  SB a0, 79(sp)
  LB a0, 95(sp)
  SB a0, 80(sp)
  LB a0, 94(sp)
  SB a0, 81(sp)
  LB a0, 93(sp)
  SB a0, 120(sp)
  LB a0, 92(sp)
  SB a0, 98(sp)
  LB a0, 91(sp)
  SB a0, 123(sp)
  LB a0, 90(sp)
  SB a0, 124(sp)
  LA a0, i
  SD a0, 856(sp)
  LD a0, 856(sp)
  LW a0, 0(a0)
  SW a0, 272(sp)
  LW a0, 272(sp)
  ADDIW a0, a0, 1
  SW a0, 176(sp)
  LA a0, i
  SD a0, 752(sp)
  LW a0, 176(sp)
  LD s0, 752(sp)
  SW a0, 0(s0)
  LW a0, 308(sp)
  LW s0, 176(sp)
  BLT s0, a0, bb80
  JAL zero, bb5
bb80:
  LW a0, 176(sp)
  SW a0, 312(sp)
  LB a0, 45(sp)
  SB a0, 84(sp)
  LB a0, 46(sp)
  SB a0, 85(sp)
  LB a0, 47(sp)
  SB a0, 86(sp)
  LB a0, 48(sp)
  SB a0, 87(sp)
  LB a0, 33(sp)
  SB a0, 88(sp)
  LB s10, 27(sp)
  LB a0, 77(sp)
  SB a0, 89(sp)
  LB a0, 30(sp)
  SB a0, 30(sp)
  LB s11, 28(sp)
  LB a0, 78(sp)
  SB a0, 14(sp)
  LB a0, 79(sp)
  SB a0, 31(sp)
  LB a0, 31(sp)
  SB a0, 31(sp)
  LB s3, 80(sp)
  LB a0, 81(sp)
  SB a0, 13(sp)
  LB a0, 120(sp)
  SB a0, 4(sp)
  LB s1, 98(sp)
  LB s0, 123(sp)
  LB a0, 124(sp)
  JAL zero, bb60
bb81:
  LA s9, chat
  LW s9, 0(s9)
  SLLIW s9, s9, 2
  LA s10, chas
  ADD s9, s10, s9
  LW a0, 0(s9)
  SW a0, 392(sp)
  LW a0, 392(sp)
  XORI s9, a0, 42
  SLTIU s9, s9, 1
  BNE s9, zero, bb95
  # implict jump to bb82
bb82:
  LW a0, 392(sp)
  XORI s9, a0, 47
  SLTIU a0, s9, 1
  SB a0, 22(sp)
  LB a0, 22(sp)
  SB a0, 22(sp)
  # implict jump to bb83
bb83:
  LB a0, 22(sp)
  SB a0, 22(sp)
  LB a0, 22(sp)
  BNE a0, zero, bb94
  # implict jump to bb84
bb84:
  LW a0, 392(sp)
  XORI s9, a0, 37
  SLTIU s9, s9, 1
  # implict jump to bb85
bb85:
  SB s9, 60(sp)
  LB a0, 60(sp)
  BNE a0, zero, bb93
  # implict jump to bb86
bb86:
  LW a0, 392(sp)
  XORI s9, a0, 94
  SLTIU s11, s9, 1
  # implict jump to bb87
bb87:
  BNE s11, zero, bb89
  # implict jump to bb88
bb88:
  LA a0, chat
  SD a0, 720(sp)
  LD a0, 720(sp)
  LW a0, 0(a0)
  SW a0, 248(sp)
  LW a0, 248(sp)
  ADDIW a0, a0, 1
  SW a0, 156(sp)
  LA a0, chat
  SD a0, 728(sp)
  LD a0, 728(sp)
  LW s0, 156(sp)
  SW s0, 0(a0)
  LW a0, 156(sp)
  SLLIW a0, a0, 2
  SW a0, 252(sp)
  LA a0, chas
  SD a0, 736(sp)
  LD a0, 736(sp)
  LW s0, 252(sp)
  ADD a0, a0, s0
  SD a0, 944(sp)
  ADDI a0, zero, 37
  SW a0, 304(sp)
  LW a0, 304(sp)
  LD s0, 944(sp)
  SW a0, 0(s0)
  LB a0, 22(sp)
  SB a0, 22(sp)
  LB a0, 60(sp)
  SB a0, 1(sp)
  JAL zero, bb78
bb89:
  LA a0, chat
  SD a0, 656(sp)
  LD a0, 656(sp)
  LW a0, 0(a0)
  SW a0, 396(sp)
  ADDI a0, zero, 1
  SW a0, 296(sp)
  LW a0, 296(sp)
  LW s0, 396(sp)
  SUBW a0, s0, a0
  SW a0, 400(sp)
  LA a0, chat
  SD a0, 552(sp)
  LD a0, 552(sp)
  LW s0, 400(sp)
  SW s0, 0(a0)
  LW a0, 396(sp)
  SLLIW a0, a0, 2
  SW a0, 384(sp)
  LA a0, chas
  SD a0, 672(sp)
  LD a0, 672(sp)
  LW s0, 384(sp)
  ADD a0, a0, s0
  SD a0, 920(sp)
  LD a0, 920(sp)
  LW a0, 0(a0)
  SW a0, 376(sp)
  LA a0, c
  SD a0, 680(sp)
  LD a0, 680(sp)
  LW s0, 376(sp)
  SW s0, 0(a0)
  LA a0, ii
  SD a0, 688(sp)
  LD a0, 688(sp)
  LW a0, 0(a0)
  SW a0, 220(sp)
  LW a0, 220(sp)
  SLLIW a0, a0, 2
  SW a0, 224(sp)
  LA a0, get2
  SD a0, 696(sp)
  LD a0, 696(sp)
  LW s0, 224(sp)
  ADD a0, a0, s0
  SD a0, 928(sp)
  ADDI a0, zero, 32
  SW a0, 300(sp)
  LW a0, 300(sp)
  LD s0, 928(sp)
  SW a0, 0(s0)
  LW a0, 220(sp)
  ADDIW a0, a0, 1
  SW a0, 228(sp)
  LW a0, 228(sp)
  SLLIW a0, a0, 2
  SW a0, 232(sp)
  LA a0, get2
  SD a0, 704(sp)
  LD a0, 704(sp)
  LW s0, 232(sp)
  ADD a0, a0, s0
  SD a0, 936(sp)
  LD a0, 936(sp)
  LW s0, 376(sp)
  SW s0, 0(a0)
  LW a0, 220(sp)
  ADDIW a0, a0, 2
  SW a0, 240(sp)
  LA a0, ii
  SD a0, 712(sp)
  LD a0, 712(sp)
  LW s0, 240(sp)
  SW s0, 0(a0)
  LW a0, 400(sp)
  SLTIU a0, a0, 1
  SB a0, 53(sp)
  LB a0, 53(sp)
  BNE a0, zero, bb92
  # implict jump to bb90
bb90:
  ADDI a0, zero, 1
  SW a0, 244(sp)
  # implict jump to bb91
bb91:
  LW a0, 244(sp)
  SW a0, 244(sp)
  LW a0, 244(sp)
  SLTIU a0, a0, 1
  SB a0, 55(sp)
  LB a0, 55(sp)
  BNE a0, zero, bb88
  JAL zero, bb81
bb92:
  ADD a0, zero, zero
  SW a0, 244(sp)
  JAL zero, bb91
bb93:
  ADDI s11, zero, 1
  JAL zero, bb87
bb94:
  ADDI s9, zero, 1
  JAL zero, bb85
bb95:
  ADDI a0, zero, 1
  SB a0, 22(sp)
  JAL zero, bb83
bb96:
  LA s6, chat
  LW s6, 0(s6)
  SLLIW s6, s6, 2
  LA s9, chas
  ADD s6, s9, s6
  LW a0, 0(s6)
  SW a0, 144(sp)
  LW a0, 144(sp)
  XORI s6, a0, 42
  SLTIU s6, s6, 1
  BNE s6, zero, bb110
  # implict jump to bb97
bb97:
  LW a0, 144(sp)
  XORI s6, a0, 47
  SLTIU s9, s6, 1
  # implict jump to bb98
bb98:
  BNE s9, zero, bb109
  # implict jump to bb99
bb99:
  LW a0, 144(sp)
  XORI s6, a0, 37
  SLTIU s6, s6, 1
  # implict jump to bb100
bb100:
  SB s6, 35(sp)
  LB a0, 35(sp)
  BNE a0, zero, bb108
  # implict jump to bb101
bb101:
  LW a0, 144(sp)
  XORI s6, a0, 94
  SLTIU s10, s6, 1
  # implict jump to bb102
bb102:
  BNE s10, zero, bb104
  # implict jump to bb103
bb103:
  LA a0, chat
  SD a0, 608(sp)
  LD a0, 608(sp)
  LW a0, 0(a0)
  SW a0, 360(sp)
  LW a0, 360(sp)
  ADDIW a0, a0, 1
  SW a0, 364(sp)
  LA a0, chat
  SD a0, 616(sp)
  LD a0, 616(sp)
  LW s0, 364(sp)
  SW s0, 0(a0)
  LW a0, 364(sp)
  SLLIW a0, a0, 2
  SW a0, 404(sp)
  LA a0, chas
  SD a0, 624(sp)
  LD a0, 624(sp)
  LW s0, 404(sp)
  ADD a0, a0, s0
  SD a0, 904(sp)
  ADDI a0, zero, 47
  SW a0, 288(sp)
  LW a0, 288(sp)
  LD s0, 904(sp)
  SW a0, 0(s0)
  LB s6, 35(sp)
  JAL zero, bb76
bb104:
  LA a0, chat
  SD a0, 952(sp)
  LD a0, 952(sp)
  LW a0, 0(a0)
  SW a0, 152(sp)
  ADDI a0, zero, 1
  SW a0, 276(sp)
  LW a0, 276(sp)
  LW s0, 152(sp)
  SUBW a0, s0, a0
  SW a0, 136(sp)
  LA a0, chat
  SD a0, 664(sp)
  LD a0, 664(sp)
  LW s0, 136(sp)
  SW s0, 0(a0)
  LW a0, 152(sp)
  SLLIW a0, a0, 2
  SW a0, 320(sp)
  LA a0, chas
  SD a0, 560(sp)
  LD a0, 560(sp)
  LW s0, 320(sp)
  ADD a0, a0, s0
  SD a0, 880(sp)
  LD a0, 880(sp)
  LW a0, 0(a0)
  SW a0, 324(sp)
  LA a0, c
  SD a0, 568(sp)
  LD a0, 568(sp)
  LW s0, 324(sp)
  SW s0, 0(a0)
  LA a0, ii
  SD a0, 576(sp)
  LD a0, 576(sp)
  LW a0, 0(a0)
  SW a0, 328(sp)
  LW a0, 328(sp)
  SLLIW a0, a0, 2
  SW a0, 332(sp)
  LA a0, get2
  SD a0, 584(sp)
  LD a0, 584(sp)
  LW s0, 332(sp)
  ADD a0, a0, s0
  SD a0, 888(sp)
  ADDI a0, zero, 32
  SW a0, 280(sp)
  LW a0, 280(sp)
  LD s0, 888(sp)
  SW a0, 0(s0)
  LW a0, 328(sp)
  ADDIW a0, a0, 1
  SW a0, 340(sp)
  LW a0, 340(sp)
  SLLIW a0, a0, 2
  SW a0, 344(sp)
  LA a0, get2
  SD a0, 592(sp)
  LD a0, 592(sp)
  LW s0, 344(sp)
  ADD a0, a0, s0
  SD a0, 896(sp)
  LD a0, 896(sp)
  LW s0, 324(sp)
  SW s0, 0(a0)
  LW a0, 328(sp)
  ADDIW a0, a0, 2
  SW a0, 352(sp)
  LA a0, ii
  SD a0, 600(sp)
  LD a0, 600(sp)
  LW s0, 352(sp)
  SW s0, 0(a0)
  LW a0, 136(sp)
  SLTIU a0, a0, 1
  SB a0, 44(sp)
  LB a0, 44(sp)
  BNE a0, zero, bb107
  # implict jump to bb105
bb105:
  ADDI a0, zero, 1
  SW a0, 264(sp)
  # implict jump to bb106
bb106:
  LW a0, 264(sp)
  SW a0, 356(sp)
  LW a0, 356(sp)
  SLTIU a0, a0, 1
  SB a0, 42(sp)
  LB a0, 42(sp)
  BNE a0, zero, bb103
  JAL zero, bb96
bb107:
  ADD a0, zero, zero
  SW a0, 264(sp)
  JAL zero, bb106
bb108:
  ADDI s10, zero, 1
  JAL zero, bb102
bb109:
  ADDI s6, zero, 1
  JAL zero, bb100
bb110:
  ADDI s9, zero, 1
  JAL zero, bb98
bb111:
  LA s2, chat
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LA s6, chas
  ADD s2, s6, s2
  LW s8, 0(s2)
  XORI s2, s8, 42
  SLTIU s2, s2, 1
  BNE s2, zero, bb125
  # implict jump to bb112
bb112:
  XORI s2, s8, 47
  SLTIU s9, s2, 1
  # implict jump to bb113
bb113:
  BNE s9, zero, bb124
  # implict jump to bb114
bb114:
  XORI s6, s8, 37
  SLTIU s6, s6, 1
  # implict jump to bb115
bb115:
  SB s6, 32(sp)
  LB a0, 32(sp)
  BNE a0, zero, bb123
  # implict jump to bb116
bb116:
  XORI s6, s8, 94
  SLTIU s10, s6, 1
  # implict jump to bb117
bb117:
  BNE s10, zero, bb119
  # implict jump to bb118
bb118:
  LA s8, chat
  LW s8, 0(s8)
  ADDIW s8, s8, 1
  LA s11, chat
  SW s8, 0(s11)
  SLLIW s8, s8, 2
  LA s11, chas
  ADD s8, s11, s8
  ADDI s11, zero, 42
  SW s11, 0(s8)
  LB s6, 32(sp)
  JAL zero, bb74
bb119:
  LA s8, chat
  LW s8, 0(s8)
  ADDI s11, zero, 1
  SUBW a0, s8, s11
  SW a0, 132(sp)
  LA s11, chat
  LW a0, 132(sp)
  SW a0, 0(s11)
  SLLIW s8, s8, 2
  LA s11, chas
  ADD s8, s11, s8
  LW a0, 0(s8)
  SW a0, 148(sp)
  LA s8, c
  LW a0, 148(sp)
  SW a0, 0(s8)
  LA s8, ii
  LW a0, 0(s8)
  SW a0, 140(sp)
  LW a0, 140(sp)
  SLLIW s8, a0, 2
  LA s11, get2
  ADD s8, s11, s8
  ADDI s11, zero, 32
  SW s11, 0(s8)
  LW a0, 140(sp)
  ADDIW s8, a0, 1
  SLLIW s8, s8, 2
  LA s11, get2
  ADD s8, s11, s8
  LW a0, 148(sp)
  SW a0, 0(s8)
  LW a0, 140(sp)
  ADDIW s8, a0, 2
  LA s11, ii
  SW s8, 0(s11)
  LW a0, 132(sp)
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
  ADDI s10, zero, 1
  JAL zero, bb117
bb124:
  ADDI s6, zero, 1
  JAL zero, bb115
bb125:
  ADDI s9, zero, 1
  JAL zero, bb113
bb126:
  LA s0, chat
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s1, chas
  ADD s0, s1, s0
  LW s6, 0(s0)
  XORI s0, s6, 43
  SLTIU s0, s0, 1
  BNE s0, zero, bb146
  # implict jump to bb127
bb127:
  XORI s0, s6, 45
  SLTIU s0, s0, 1
  # implict jump to bb128
bb128:
  SB s0, 34(sp)
  LB a0, 34(sp)
  BNE a0, zero, bb145
  # implict jump to bb129
bb129:
  XORI s0, s6, 42
  SLTIU s8, s0, 1
  # implict jump to bb130
bb130:
  BNE s8, zero, bb144
  # implict jump to bb131
bb131:
  XORI s1, s6, 47
  SLTIU s11, s1, 1
  # implict jump to bb132
bb132:
  BNE s11, zero, bb143
  # implict jump to bb133
bb133:
  XORI s2, s6, 37
  SLTIU s2, s2, 1
  # implict jump to bb134
bb134:
  BNE s2, zero, bb142
  # implict jump to bb135
bb135:
  XORI s6, s6, 94
  SLTIU s6, s6, 1
  # implict jump to bb136
bb136:
  SB s6, 3(sp)
  LB a0, 3(sp)
  BNE a0, zero, bb138
  # implict jump to bb137
bb137:
  LA s9, chat
  LW s9, 0(s9)
  ADDIW s9, s9, 1
  LA s10, chat
  SW s9, 0(s10)
  SLLIW s9, s9, 2
  LA s10, chas
  ADD s9, s10, s9
  ADDI s10, zero, 45
  SW s10, 0(s9)
  LB a0, 3(sp)
  SB a0, 3(sp)
  LB s0, 34(sp)
  JAL zero, bb72
bb138:
  LA s9, chat
  LW s9, 0(s9)
  ADDI s10, zero, 1
  SUBW a0, s9, s10
  SW a0, 164(sp)
  LA s10, chat
  LW a0, 164(sp)
  SW a0, 0(s10)
  SLLIW s9, s9, 2
  LA s10, chas
  ADD s9, s10, s9
  LW a0, 0(s9)
  SW a0, 160(sp)
  LA s9, c
  LW a0, 160(sp)
  SW a0, 0(s9)
  LA s9, ii
  LW a0, 0(s9)
  SW a0, 128(sp)
  LW a0, 128(sp)
  SLLIW s9, a0, 2
  LA s10, get2
  ADD s9, s10, s9
  ADDI s10, zero, 32
  SW s10, 0(s9)
  LW a0, 128(sp)
  ADDIW s9, a0, 1
  SLLIW s9, s9, 2
  LA s10, get2
  ADD s9, s10, s9
  LW a0, 160(sp)
  SW a0, 0(s9)
  LW a0, 128(sp)
  ADDIW s9, a0, 2
  LA s10, ii
  SW s9, 0(s10)
  LW a0, 164(sp)
  SLTIU s9, a0, 1
  BNE s9, zero, bb141
  # implict jump to bb139
bb139:
  ADDI s9, zero, 1
  # implict jump to bb140
bb140:
  SLTIU s9, s9, 1
  BNE s9, zero, bb137
  JAL zero, bb126
bb141:
  ADD s9, zero, zero
  JAL zero, bb140
bb142:
  ADDI s6, zero, 1
  JAL zero, bb136
bb143:
  ADDI s2, zero, 1
  JAL zero, bb134
bb144:
  ADDI s11, zero, 1
  JAL zero, bb132
bb145:
  ADDI s8, zero, 1
  JAL zero, bb130
bb146:
  ADDI s0, zero, 1
  JAL zero, bb128
bb147:
  LA a0, chat
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LA s3, chas
  ADD a0, s3, a0
  LW s6, 0(a0)
  XORI a0, s6, 43
  SLTIU a0, a0, 1
  BNE a0, zero, bb167
  # implict jump to bb148
bb148:
  XORI a0, s6, 45
  SLTIU a0, a0, 1
  SB a0, 30(sp)
  LB a0, 30(sp)
  SB a0, 30(sp)
  # implict jump to bb149
bb149:
  LB a0, 30(sp)
  SB a0, 30(sp)
  LB a0, 30(sp)
  BNE a0, zero, bb166
  # implict jump to bb150
bb150:
  XORI s3, s6, 42
  SLTIU s3, s3, 1
  # implict jump to bb151
bb151:
  SB s3, 41(sp)
  LB a0, 41(sp)
  BNE a0, zero, bb165
  # implict jump to bb152
bb152:
  XORI s3, s6, 47
  SLTIU s3, s3, 1
  # implict jump to bb153
bb153:
  SB s3, 4(sp)
  LB a0, 4(sp)
  BNE a0, zero, bb164
  # implict jump to bb154
bb154:
  XORI s5, s6, 37
  SLTIU s5, s5, 1
  # implict jump to bb155
bb155:
  SB s5, 40(sp)
  LB a0, 40(sp)
  BNE a0, zero, bb163
  # implict jump to bb156
bb156:
  XORI s5, s6, 94
  SLTIU a0, s5, 1
  SB a0, 31(sp)
  LB a0, 31(sp)
  SB a0, 31(sp)
  # implict jump to bb157
bb157:
  LB a0, 31(sp)
  SB a0, 31(sp)
  LB a0, 31(sp)
  BNE a0, zero, bb159
  # implict jump to bb158
bb158:
  LA s5, chat
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, chat
  SW s5, 0(s6)
  SLLIW s5, s5, 2
  LA s6, chas
  ADD s5, s6, s5
  ADDI s6, zero, 43
  SW s6, 0(s5)
  LB a0, 4(sp)
  SB a0, 4(sp)
  LB a0, 31(sp)
  SB a0, 31(sp)
  LB a0, 30(sp)
  SB a0, 30(sp)
  LB s9, 41(sp)
  LB s3, 40(sp)
  JAL zero, bb70
bb159:
  LA s5, chat
  LW s5, 0(s5)
  ADDI s6, zero, 1
  SUBW s6, s5, s6
  LA s7, chat
  SW s6, 0(s7)
  SLLIW s5, s5, 2
  LA s7, chas
  ADD s5, s7, s5
  LW a0, 0(s5)
  SW a0, 172(sp)
  LA s5, c
  LW a0, 172(sp)
  SW a0, 0(s5)
  LA s5, ii
  LW a0, 0(s5)
  SW a0, 168(sp)
  LW a0, 168(sp)
  SLLIW s5, a0, 2
  LA s7, get2
  ADD s5, s7, s5
  ADDI s7, zero, 32
  SW s7, 0(s5)
  LW a0, 168(sp)
  ADDIW s5, a0, 1
  SLLIW s5, s5, 2
  LA s7, get2
  ADD s5, s7, s5
  LW a0, 172(sp)
  SW a0, 0(s5)
  LW a0, 168(sp)
  ADDIW s5, a0, 2
  LA s7, ii
  SW s5, 0(s7)
  SLTIU s5, s6, 1
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
  SB a0, 31(sp)
  JAL zero, bb157
bb164:
  ADDI s5, zero, 1
  JAL zero, bb155
bb165:
  ADDI s3, zero, 1
  JAL zero, bb153
bb166:
  ADDI s3, zero, 1
  JAL zero, bb151
bb167:
  ADDI a0, zero, 1
  SB a0, 30(sp)
  JAL zero, bb149
bb168:
  LA s6, chat
  LW s6, 0(s6)
  ADDI s7, zero, 1
  SUBW s7, s6, s7
  LA s8, chat
  SW s7, 0(s8)
  SLLIW s6, s6, 2
  LA s7, chas
  ADD s6, s7, s6
  LW s6, 0(s6)
  LA s7, c
  SW s6, 0(s7)
  XORI s6, s6, 40
  BNE s6, zero, bb169
  JAL zero, bb68
bb169:
  LA s6, ii
  LW s6, 0(s6)
  SLLIW s7, s6, 2
  LA s8, get2
  ADD s7, s8, s7
  ADDI s8, zero, 32
  SW s8, 0(s7)
  ADDIW s7, s6, 1
  SLLIW s7, s7, 2
  LA s8, get2
  ADD s7, s8, s7
  LA s8, c
  LW s8, 0(s8)
  SW s8, 0(s7)
  ADDIW s6, s6, 2
  LA s7, ii
  SW s6, 0(s7)
  LA s6, chat
  LW s6, 0(s6)
  ADDI s7, zero, 1
  SUBW s7, s6, s7
  LA s8, chat
  SW s7, 0(s8)
  SLLIW s6, s6, 2
  LA s7, chas
  ADD s6, s7, s6
  LW s6, 0(s6)
  LA s7, c
  SW s6, 0(s7)
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
  LA s6, ii
  LW s6, 0(s6)
  SLLIW s7, s6, 2
  LA s8, get2
  ADD s7, s8, s7
  LW s0, 180(sp)
  SW s0, 0(s7)
  ADDIW s6, s6, 1
  LA s7, ii
  SW s6, 0(s7)
  LB s0, 122(sp)
  SB s0, 90(sp)
  LB s0, 121(sp)
  SB s0, 91(sp)
  LB s0, 119(sp)
  SB s0, 92(sp)
  LB s0, 4(sp)
  SB s0, 93(sp)
  LB s0, 118(sp)
  SB s0, 94(sp)
  LB s0, 117(sp)
  SB s0, 95(sp)
  LB a0, 31(sp)
  SB a0, 31(sp)
  LB a0, 31(sp)
  SB a0, 6(sp)
  LB s10, 116(sp)
  LB a0, 115(sp)
  SB a0, 28(sp)
  LB a0, 28(sp)
  SB a0, 28(sp)
  LB a0, 30(sp)
  SB a0, 30(sp)
  LB s0, 114(sp)
  SB s0, 25(sp)
  LB s0, 113(sp)
  SB s0, 49(sp)
  LB s0, 49(sp)
  SB s0, 49(sp)
  LB s0, 112(sp)
  SB s0, 97(sp)
  LB s0, 97(sp)
  SB s0, 97(sp)
  LB a0, 111(sp)
  SB a0, 27(sp)
  LB a0, 27(sp)
  SB a0, 27(sp)
  LB s0, 29(sp)
  SB s0, 5(sp)
  LB s0, 110(sp)
  LB s1, 23(sp)
  JAL zero, bb79
bb173:
  ADDI s6, zero, 1
  JAL zero, bb64
bb174:
  ADDI s6, zero, 57
  LW s0, 180(sp)
  SLT s6, s6, s0
  XORI s6, s6, 1
  JAL zero, bb62
bb175:
  LW s0, 308(sp)
  SLLIW s0, s0, 2
  LA s2, get
  ADD s0, s2, s0
  SW s1, 0(s0)
  LW s0, 308(sp)
  ADDIW s2, s0, 1
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb1
bb176:
  XORI s0, s1, 10
  SLTU s0, zero, s0
  JAL zero, bb3
