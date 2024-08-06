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
  ADDI sp, sp, -1280
  SD s11, 544(sp)
  SD s9, 568(sp)
  SD s10, 576(sp)
  SD ra, 592(sp)
  SD s0, 600(sp)
  SD s1, 608(sp)
  SD s2, 616(sp)
  SD s3, 624(sp)
  SD s4, 632(sp)
  SD s5, 640(sp)
  SD s6, 648(sp)
  SD s7, 656(sp)
  SD s8, 664(sp)
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
  SW s2, 316(sp)
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
  LW s0, 316(sp)
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
  LD s11, 544(sp)
  LD s9, 568(sp)
  LD s10, 576(sp)
  LD ra, 592(sp)
  LD s0, 600(sp)
  LD s1, 608(sp)
  LD s2, 616(sp)
  LD s3, 624(sp)
  LD s4, 632(sp)
  LD s5, 640(sp)
  LD s6, 648(sp)
  LD s7, 656(sp)
  LD s8, 664(sp)
  ADDI sp, sp, 1280
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
  SW a0, 368(sp)
  ADD a0, zero, zero
  SB a0, 96(sp)
  ADD a0, zero, zero
  SB a0, 85(sp)
  ADD a0, zero, zero
  SB a0, 94(sp)
  ADD a0, zero, zero
  SB a0, 93(sp)
  ADD a0, zero, zero
  SB a0, 92(sp)
  ADD a0, zero, zero
  SB a0, 91(sp)
  ADD a0, zero, zero
  SB a0, 90(sp)
  ADD a0, zero, zero
  SB a0, 89(sp)
  ADD a0, zero, zero
  SB a0, 33(sp)
  ADD a0, zero, zero
  SB a0, 65(sp)
  ADD a0, zero, zero
  SB a0, 21(sp)
  ADD a0, zero, zero
  SB a0, 36(sp)
  ADD a0, zero, zero
  SB a0, 108(sp)
  ADD s5, zero, zero
  ADD a0, zero, zero
  SB a0, 2(sp)
  ADD a0, zero, zero
  SB a0, 3(sp)
  ADD a0, zero, zero
  SB a0, 4(sp)
  ADD a0, zero, zero
  SB a0, 5(sp)
  ADD a0, zero, zero
  # implict jump to bb60
bb60:
  SB a0, 12(sp)
  LB a0, 5(sp)
  SB a0, 13(sp)
  LB a0, 4(sp)
  SB a0, 14(sp)
  LB s8, 3(sp)
  LB a0, 2(sp)
  SB a0, 15(sp)
  SB s5, 16(sp)
  LB a0, 108(sp)
  SB a0, 108(sp)
  LB a0, 36(sp)
  SB a0, 17(sp)
  LB a0, 21(sp)
  SB a0, 21(sp)
  LB a0, 21(sp)
  SB a0, 52(sp)
  LB a0, 65(sp)
  SB a0, 20(sp)
  LB a0, 33(sp)
  SB a0, 33(sp)
  LB a0, 33(sp)
  SB a0, 51(sp)
  LB a0, 89(sp)
  SB a0, 97(sp)
  LB a0, 97(sp)
  SB a0, 97(sp)
  LB a0, 90(sp)
  SB a0, 10(sp)
  LB a0, 91(sp)
  SB a0, 30(sp)
  LB a0, 92(sp)
  SB a0, 68(sp)
  LB s11, 93(sp)
  LB a0, 94(sp)
  SB a0, 67(sp)
  LB a0, 67(sp)
  SB a0, 67(sp)
  LB s1, 85(sp)
  LB a0, 96(sp)
  SB a0, 110(sp)
  LB a0, 110(sp)
  SB a0, 110(sp)
  LW a0, 368(sp)
  SW a0, 448(sp)
  LW a0, 448(sp)
  SLLIW a0, a0, 2
  SW a0, 444(sp)
  LA a0, get
  SD a0, 752(sp)
  LD s9, 752(sp)
  LW a0, 444(sp)
  ADD a0, s9, a0
  SD a0, 816(sp)
  LD a0, 816(sp)
  LW a0, 0(a0)
  SW a0, 440(sp)
  LW a0, 440(sp)
  SLTI a0, a0, 48
  SB a0, 143(sp)
  LB a0, 143(sp)
  XORI a0, a0, 1
  SB a0, 8(sp)
  LB a0, 8(sp)
  BNE a0, zero, bb174
  # implict jump to bb61
bb61:
  ADD a0, zero, zero
  SB a0, 104(sp)
  # implict jump to bb62
bb62:
  LB a0, 104(sp)
  SB a0, 145(sp)
  LB a0, 145(sp)
  BNE a0, zero, bb173
  # implict jump to bb63
bb63:
  ADD a0, zero, zero
  SW a0, 372(sp)
  # implict jump to bb64
bb64:
  LW a0, 372(sp)
  SW a0, 436(sp)
  LW a0, 436(sp)
  XORI a0, a0, 1
  SW a0, 312(sp)
  LW a0, 312(sp)
  SLTIU a0, a0, 1
  SB a0, 6(sp)
  LB a0, 6(sp)
  BNE a0, zero, bb172
  # implict jump to bb65
bb65:
  LW a0, 440(sp)
  XORI a0, a0, 40
  SW a0, 308(sp)
  LW a0, 308(sp)
  SLTIU a0, a0, 1
  SB a0, 37(sp)
  LB a0, 37(sp)
  BNE a0, zero, bb171
  # implict jump to bb66
bb66:
  LW a0, 440(sp)
  XORI a0, a0, 94
  SW a0, 304(sp)
  LW a0, 304(sp)
  SLTIU a0, a0, 1
  SB a0, 22(sp)
  LB a0, 22(sp)
  BNE a0, zero, bb170
  # implict jump to bb67
bb67:
  LW a0, 440(sp)
  XORI a0, a0, 41
  SW a0, 300(sp)
  LW a0, 300(sp)
  SLTIU a0, a0, 1
  SB a0, 32(sp)
  LB a0, 32(sp)
  BNE a0, zero, bb168
  # implict jump to bb68
bb68:
  LW a0, 440(sp)
  XORI a0, a0, 43
  SW a0, 328(sp)
  LW a0, 328(sp)
  SLTIU a0, a0, 1
  SB a0, 29(sp)
  LB a0, 29(sp)
  BNE a0, zero, bb147
  # implict jump to bb69
bb69:
  LB a0, 108(sp)
  SB a0, 108(sp)
  LB a0, 20(sp)
  SB a0, 20(sp)
  LB a0, 20(sp)
  SB a0, 83(sp)
  LB a0, 110(sp)
  SB a0, 110(sp)
  # implict jump to bb70
bb70:
  LB a0, 110(sp)
  SB a0, 110(sp)
  LB a0, 110(sp)
  SB a0, 129(sp)
  SB s1, 128(sp)
  LB a0, 83(sp)
  SB a0, 126(sp)
  LB a0, 108(sp)
  SB a0, 108(sp)
  LB a0, 108(sp)
  SB a0, 125(sp)
  SB s8, 124(sp)
  LW a0, 440(sp)
  XORI s6, a0, 45
  SLTIU s6, s6, 1
  BNE s6, zero, bb126
  # implict jump to bb71
bb71:
  LB a0, 16(sp)
  SB a0, 47(sp)
  LB a0, 30(sp)
  SB a0, 30(sp)
  LB s7, 68(sp)
  LB a0, 67(sp)
  SB a0, 67(sp)
  # implict jump to bb72
bb72:
  LB a0, 67(sp)
  SB a0, 67(sp)
  LB a0, 67(sp)
  SB a0, 144(sp)
  SB s11, 142(sp)
  SB s7, 141(sp)
  LB a0, 30(sp)
  SB a0, 140(sp)
  LB a0, 47(sp)
  SB a0, 138(sp)
  LW a0, 440(sp)
  XORI s7, a0, 42
  SLTIU s7, s7, 1
  BNE s7, zero, bb111
  # implict jump to bb73
bb73:
  LB a0, 52(sp)
  SB a0, 50(sp)
  LB a0, 97(sp)
  SB a0, 97(sp)
  LB s4, 10(sp)
  # implict jump to bb74
bb74:
  SB s4, 147(sp)
  LB a0, 97(sp)
  SB a0, 97(sp)
  LB s4, 50(sp)
  LW a0, 440(sp)
  XORI a0, a0, 47
  SW a0, 248(sp)
  LW a0, 248(sp)
  SLTIU a0, a0, 1
  SB a0, 137(sp)
  LB a0, 137(sp)
  BNE a0, zero, bb96
  # implict jump to bb75
bb75:
  LB a0, 15(sp)
  SB a0, 55(sp)
  LB s10, 17(sp)
  LB a0, 51(sp)
  SB a0, 61(sp)
  # implict jump to bb76
bb76:
  LB a0, 61(sp)
  SB a0, 105(sp)
  SB s10, 106(sp)
  LB a0, 55(sp)
  SB a0, 107(sp)
  LW a0, 440(sp)
  XORI s8, a0, 37
  SLTIU s8, s8, 1
  BNE s8, zero, bb81
  # implict jump to bb77
bb77:
  LB a0, 12(sp)
  SB a0, 75(sp)
  LB a0, 13(sp)
  SB a0, 63(sp)
  LB a0, 14(sp)
  SB a0, 62(sp)
  # implict jump to bb78
bb78:
  LB a0, 62(sp)
  SB a0, 27(sp)
  LB a0, 63(sp)
  SB a0, 26(sp)
  LB a0, 75(sp)
  SB a0, 75(sp)
  LA s8, ii
  LW s8, 0(s8)
  SLLIW a0, s8, 2
  SW a0, 212(sp)
  LA a0, get2
  SD a0, 1184(sp)
  LD a0, 1184(sp)
  LW s0, 212(sp)
  ADD a0, a0, s0
  SD a0, 1072(sp)
  ADDI a0, zero, 32
  SW a0, 464(sp)
  LW a0, 464(sp)
  LD s0, 1072(sp)
  SW a0, 0(s0)
  ADDIW s8, s8, 1
  LA a0, ii
  SD a0, 1176(sp)
  LD a0, 1176(sp)
  SW s8, 0(a0)
  LB a0, 75(sp)
  SB a0, 87(sp)
  LB a0, 26(sp)
  SB a0, 86(sp)
  LB a0, 27(sp)
  SB a0, 95(sp)
  LB a0, 124(sp)
  SB a0, 121(sp)
  LB a0, 107(sp)
  SB a0, 120(sp)
  LB a0, 138(sp)
  SB a0, 119(sp)
  LB a0, 125(sp)
  SB a0, 118(sp)
  LB a0, 106(sp)
  SB a0, 117(sp)
  SB s4, 116(sp)
  LB a0, 126(sp)
  SB a0, 115(sp)
  LB a0, 105(sp)
  SB a0, 114(sp)
  LB a0, 97(sp)
  SB a0, 97(sp)
  LB a0, 147(sp)
  SB a0, 10(sp)
  LB a0, 10(sp)
  SB a0, 10(sp)
  LB s7, 140(sp)
  LB a0, 141(sp)
  SB a0, 68(sp)
  LB a0, 68(sp)
  SB a0, 68(sp)
  LB s11, 142(sp)
  LB a0, 144(sp)
  SB a0, 67(sp)
  LB a0, 67(sp)
  SB a0, 67(sp)
  LB s1, 128(sp)
  LB a0, 129(sp)
  SB a0, 110(sp)
  LB a0, 110(sp)
  SB a0, 110(sp)
  # implict jump to bb79
bb79:
  LB a0, 110(sp)
  SB a0, 110(sp)
  SB s1, 80(sp)
  LB s5, 67(sp)
  LB a0, 68(sp)
  SB a0, 68(sp)
  LB a0, 68(sp)
  SB a0, 139(sp)
  SB s7, 79(sp)
  LB a0, 10(sp)
  SB a0, 10(sp)
  LB a0, 97(sp)
  SB a0, 97(sp)
  LB a0, 114(sp)
  SB a0, 33(sp)
  LB a0, 33(sp)
  SB a0, 33(sp)
  LB a0, 115(sp)
  SB a0, 99(sp)
  LB a0, 116(sp)
  SB a0, 21(sp)
  LB a0, 21(sp)
  SB a0, 21(sp)
  LB a0, 117(sp)
  SB a0, 38(sp)
  LB a0, 118(sp)
  SB a0, 39(sp)
  LB a0, 119(sp)
  SB a0, 73(sp)
  LB a0, 73(sp)
  SB a0, 73(sp)
  LB a0, 120(sp)
  SB a0, 40(sp)
  LB a0, 121(sp)
  SB a0, 41(sp)
  LB a0, 95(sp)
  SB a0, 42(sp)
  LB a0, 86(sp)
  SB a0, 11(sp)
  LB a0, 87(sp)
  SB a0, 1(sp)
  LA s7, i
  LW s7, 0(s7)
  ADDIW s7, s7, 1
  LA a0, i
  SD a0, 720(sp)
  LD a0, 720(sp)
  SW s7, 0(a0)
  LW a0, 316(sp)
  BLT s7, a0, bb80
  JAL zero, bb5
bb80:
  SW s7, 368(sp)
  LB a0, 110(sp)
  SB a0, 110(sp)
  LB a0, 110(sp)
  SB a0, 96(sp)
  LB a0, 80(sp)
  SB a0, 85(sp)
  SB s5, 94(sp)
  SB s11, 93(sp)
  LB a0, 139(sp)
  SB a0, 92(sp)
  LB a0, 79(sp)
  SB a0, 91(sp)
  LB a0, 10(sp)
  SB a0, 10(sp)
  LB a0, 10(sp)
  SB a0, 90(sp)
  LB a0, 97(sp)
  SB a0, 97(sp)
  LB a0, 97(sp)
  SB a0, 89(sp)
  LB a0, 33(sp)
  SB a0, 33(sp)
  LB a0, 99(sp)
  SB a0, 65(sp)
  LB a0, 65(sp)
  SB a0, 65(sp)
  LB a0, 21(sp)
  SB a0, 21(sp)
  LB a0, 38(sp)
  SB a0, 36(sp)
  LB a0, 39(sp)
  SB a0, 108(sp)
  LB a0, 108(sp)
  SB a0, 108(sp)
  LB s5, 73(sp)
  LB a0, 40(sp)
  SB a0, 2(sp)
  LB a0, 41(sp)
  SB a0, 3(sp)
  LB a0, 42(sp)
  SB a0, 4(sp)
  LB a0, 11(sp)
  SB a0, 5(sp)
  LB a0, 1(sp)
  JAL zero, bb60
bb81:
  LA s8, chat
  LW s8, 0(s8)
  SLLIW s8, s8, 2
  LA a0, chas
  SD a0, 1168(sp)
  LD a0, 1168(sp)
  ADD s8, a0, s8
  LW a0, 0(s8)
  SW a0, 216(sp)
  LW a0, 216(sp)
  XORI s8, a0, 42
  SLTIU s8, s8, 1
  BNE s8, zero, bb95
  # implict jump to bb82
bb82:
  LW a0, 216(sp)
  XORI s8, a0, 47
  SLTIU a0, s8, 1
  SB a0, 75(sp)
  LB a0, 75(sp)
  SB a0, 75(sp)
  # implict jump to bb83
bb83:
  LB a0, 75(sp)
  SB a0, 75(sp)
  LB a0, 75(sp)
  BNE a0, zero, bb94
  # implict jump to bb84
bb84:
  LW a0, 216(sp)
  XORI s9, a0, 37
  SLTIU s9, s9, 1
  # implict jump to bb85
bb85:
  SB s9, 63(sp)
  LB a0, 63(sp)
  BNE a0, zero, bb93
  # implict jump to bb86
bb86:
  LW a0, 216(sp)
  XORI s10, a0, 94
  SLTIU s10, s10, 1
  # implict jump to bb87
bb87:
  SB s10, 62(sp)
  LB a0, 62(sp)
  BNE a0, zero, bb89
  # implict jump to bb88
bb88:
  LA a0, chat
  SD a0, 552(sp)
  LD a0, 552(sp)
  LW a0, 0(a0)
  SW a0, 376(sp)
  LW a0, 376(sp)
  ADDIW a0, a0, 1
  SW a0, 324(sp)
  LA a0, chat
  SD a0, 832(sp)
  LD a0, 832(sp)
  LW s0, 324(sp)
  SW s0, 0(a0)
  LW a0, 324(sp)
  SLLIW a0, a0, 2
  SW a0, 348(sp)
  LA a0, chas
  SD a0, 824(sp)
  LD a0, 824(sp)
  LW s0, 348(sp)
  ADD a0, a0, s0
  SD a0, 584(sp)
  ADDI a0, zero, 37
  SW a0, 452(sp)
  LW a0, 452(sp)
  LD s0, 584(sp)
  SW a0, 0(s0)
  LB a0, 75(sp)
  SB a0, 75(sp)
  LB a0, 63(sp)
  SB a0, 63(sp)
  LB a0, 62(sp)
  SB a0, 62(sp)
  JAL zero, bb78
bb89:
  LA a0, chat
  SD a0, 680(sp)
  LD a0, 680(sp)
  LW a0, 0(a0)
  SW a0, 400(sp)
  ADDI a0, zero, 1
  SW a0, 424(sp)
  LW a0, 424(sp)
  LW s0, 400(sp)
  SUBW a0, s0, a0
  SW a0, 220(sp)
  LA a0, chat
  SD a0, 1160(sp)
  LD a0, 1160(sp)
  LW s0, 220(sp)
  SW s0, 0(a0)
  LW a0, 400(sp)
  SLLIW a0, a0, 2
  SW a0, 392(sp)
  LA a0, chas
  SD a0, 1152(sp)
  LD a0, 1152(sp)
  LW s0, 392(sp)
  ADD a0, a0, s0
  SD a0, 672(sp)
  LD a0, 672(sp)
  LW a0, 0(a0)
  SW a0, 388(sp)
  LA a0, c
  SD a0, 1144(sp)
  LD a0, 1144(sp)
  LW s0, 388(sp)
  SW s0, 0(a0)
  LA a0, ii
  SD a0, 1136(sp)
  LD a0, 1136(sp)
  LW a0, 0(a0)
  SW a0, 224(sp)
  LW a0, 224(sp)
  SLLIW a0, a0, 2
  SW a0, 228(sp)
  LA a0, get2
  SD a0, 1128(sp)
  LD a0, 1128(sp)
  LW s0, 228(sp)
  ADD a0, a0, s0
  SD a0, 1064(sp)
  ADDI a0, zero, 32
  SW a0, 456(sp)
  LW a0, 456(sp)
  LD s0, 1064(sp)
  SW a0, 0(s0)
  LW a0, 224(sp)
  ADDIW a0, a0, 1
  SW a0, 232(sp)
  LW a0, 232(sp)
  SLLIW a0, a0, 2
  SW a0, 236(sp)
  LA a0, get2
  SD a0, 904(sp)
  LD a0, 904(sp)
  LW s0, 236(sp)
  ADD a0, a0, s0
  SD a0, 1056(sp)
  LD a0, 1056(sp)
  LW s0, 388(sp)
  SW s0, 0(a0)
  LW a0, 224(sp)
  ADDIW a0, a0, 2
  SW a0, 384(sp)
  LA a0, ii
  SD a0, 840(sp)
  LD a0, 840(sp)
  LW s0, 384(sp)
  SW s0, 0(a0)
  LW a0, 220(sp)
  SLTIU a0, a0, 1
  SB a0, 109(sp)
  LB a0, 109(sp)
  BNE a0, zero, bb92
  # implict jump to bb90
bb90:
  ADDI a0, zero, 1
  SW a0, 380(sp)
  # implict jump to bb91
bb91:
  LW a0, 380(sp)
  SW a0, 380(sp)
  LW a0, 380(sp)
  SLTIU a0, a0, 1
  SB a0, 111(sp)
  LB a0, 111(sp)
  BNE a0, zero, bb88
  JAL zero, bb81
bb92:
  ADD a0, zero, zero
  SW a0, 380(sp)
  JAL zero, bb91
bb93:
  ADDI s10, zero, 1
  JAL zero, bb87
bb94:
  ADDI s9, zero, 1
  JAL zero, bb85
bb95:
  ADDI a0, zero, 1
  SB a0, 75(sp)
  JAL zero, bb83
bb96:
  LA s8, chat
  LW s8, 0(s8)
  SLLIW s8, s8, 2
  LA a0, chas
  SD a0, 984(sp)
  LD a0, 984(sp)
  ADD s8, a0, s8
  LW a0, 0(s8)
  SW a0, 244(sp)
  LW a0, 244(sp)
  XORI s8, a0, 42
  SLTIU s8, s8, 1
  BNE s8, zero, bb110
  # implict jump to bb97
bb97:
  LW a0, 244(sp)
  XORI s8, a0, 47
  SLTIU s8, s8, 1
  # implict jump to bb98
bb98:
  SB s8, 24(sp)
  LB a0, 24(sp)
  BNE a0, zero, bb109
  # implict jump to bb99
bb99:
  LW a0, 244(sp)
  XORI s8, a0, 37
  SLTIU s8, s8, 1
  # implict jump to bb100
bb100:
  SB s8, 25(sp)
  LB a0, 25(sp)
  BNE a0, zero, bb108
  # implict jump to bb101
bb101:
  LW a0, 244(sp)
  XORI s8, a0, 94
  SLTIU s10, s8, 1
  # implict jump to bb102
bb102:
  BNE s10, zero, bb104
  # implict jump to bb103
bb103:
  LA a0, chat
  SD a0, 1208(sp)
  LD a0, 1208(sp)
  LW a0, 0(a0)
  SW a0, 196(sp)
  LW a0, 196(sp)
  ADDIW a0, a0, 1
  SW a0, 200(sp)
  LA a0, chat
  SD a0, 1120(sp)
  LD a0, 1120(sp)
  LW s0, 200(sp)
  SW s0, 0(a0)
  LW a0, 200(sp)
  SLLIW a0, a0, 2
  SW a0, 204(sp)
  LA a0, chas
  SD a0, 1192(sp)
  LD a0, 1192(sp)
  LW s0, 204(sp)
  ADD a0, a0, s0
  SD a0, 1080(sp)
  ADDI a0, zero, 47
  SW a0, 468(sp)
  LW a0, 468(sp)
  LD s0, 1080(sp)
  SW a0, 0(s0)
  LB a0, 24(sp)
  SB a0, 55(sp)
  LB a0, 25(sp)
  SB a0, 61(sp)
  JAL zero, bb76
bb104:
  LA a0, chat
  SD a0, 1048(sp)
  LD a0, 1048(sp)
  LW a0, 0(a0)
  SW a0, 288(sp)
  ADDI a0, zero, 1
  SW a0, 476(sp)
  LW a0, 476(sp)
  LW s0, 288(sp)
  SUBW a0, s0, a0
  SW a0, 284(sp)
  LA a0, chat
  SD a0, 1264(sp)
  LD a0, 1264(sp)
  LW s0, 284(sp)
  SW s0, 0(a0)
  LW a0, 288(sp)
  SLLIW a0, a0, 2
  SW a0, 280(sp)
  LA a0, chas
  SD a0, 1256(sp)
  LD a0, 1256(sp)
  LW s0, 280(sp)
  ADD a0, a0, s0
  SD a0, 1104(sp)
  LD a0, 1104(sp)
  LW a0, 0(a0)
  SW a0, 276(sp)
  LA a0, c
  SD a0, 1248(sp)
  LD a0, 1248(sp)
  LW s0, 276(sp)
  SW s0, 0(a0)
  LA a0, ii
  SD a0, 1240(sp)
  LD a0, 1240(sp)
  LW a0, 0(a0)
  SW a0, 272(sp)
  LW a0, 272(sp)
  SLLIW a0, a0, 2
  SW a0, 268(sp)
  LA a0, get2
  SD a0, 1232(sp)
  LD a0, 1232(sp)
  LW s0, 268(sp)
  ADD a0, a0, s0
  SD a0, 1096(sp)
  ADDI a0, zero, 32
  SW a0, 472(sp)
  LW a0, 472(sp)
  LD s0, 1096(sp)
  SW a0, 0(s0)
  LW a0, 272(sp)
  ADDIW a0, a0, 1
  SW a0, 264(sp)
  LW a0, 264(sp)
  SLLIW a0, a0, 2
  SW a0, 260(sp)
  LA a0, get2
  SD a0, 1224(sp)
  LD a0, 1224(sp)
  LW s0, 260(sp)
  ADD a0, a0, s0
  SD a0, 1088(sp)
  LD a0, 1088(sp)
  LW s0, 276(sp)
  SW s0, 0(a0)
  LW a0, 272(sp)
  ADDIW a0, a0, 2
  SW a0, 256(sp)
  LA a0, ii
  SD a0, 1216(sp)
  LD a0, 1216(sp)
  LW s0, 256(sp)
  SW s0, 0(a0)
  LW a0, 284(sp)
  SLTIU a0, a0, 1
  SB a0, 122(sp)
  LB a0, 122(sp)
  BNE a0, zero, bb107
  # implict jump to bb105
bb105:
  ADDI a0, zero, 1
  SW a0, 252(sp)
  # implict jump to bb106
bb106:
  LW a0, 252(sp)
  SW a0, 252(sp)
  LW a0, 252(sp)
  SLTIU a0, a0, 1
  SB a0, 113(sp)
  LB a0, 113(sp)
  BNE a0, zero, bb103
  JAL zero, bb96
bb107:
  ADD a0, zero, zero
  SW a0, 252(sp)
  JAL zero, bb106
bb108:
  ADDI s10, zero, 1
  JAL zero, bb102
bb109:
  ADDI s8, zero, 1
  JAL zero, bb100
bb110:
  ADDI s8, zero, 1
  JAL zero, bb98
bb111:
  LA s4, chat
  LW s4, 0(s4)
  SLLIW s4, s4, 2
  LA s5, chas
  ADD s4, s5, s4
  LW s7, 0(s4)
  XORI s4, s7, 42
  SLTIU s4, s4, 1
  BNE s4, zero, bb125
  # implict jump to bb112
bb112:
  XORI s4, s7, 47
  SLTIU s4, s4, 1
  # implict jump to bb113
bb113:
  BNE s4, zero, bb124
  # implict jump to bb114
bb114:
  XORI s5, s7, 37
  SLTIU s5, s5, 1
  # implict jump to bb115
bb115:
  SB s5, 88(sp)
  LB a0, 88(sp)
  BNE a0, zero, bb123
  # implict jump to bb116
bb116:
  XORI s5, s7, 94
  SLTIU a0, s5, 1
  SB a0, 97(sp)
  LB a0, 97(sp)
  SB a0, 97(sp)
  # implict jump to bb117
bb117:
  LB a0, 97(sp)
  SB a0, 97(sp)
  LB a0, 97(sp)
  BNE a0, zero, bb119
  # implict jump to bb118
bb118:
  LA s7, chat
  LW s7, 0(s7)
  ADDIW s7, s7, 1
  LA a0, chat
  SD a0, 992(sp)
  LD a0, 992(sp)
  SW s7, 0(a0)
  SLLIW s7, s7, 2
  LA a0, chas
  SD a0, 560(sp)
  LD a0, 560(sp)
  ADD s7, a0, s7
  ADDI a0, zero, 42
  SW a0, 480(sp)
  LW a0, 480(sp)
  SW a0, 0(s7)
  SB s4, 50(sp)
  LB a0, 97(sp)
  SB a0, 97(sp)
  LB s4, 88(sp)
  JAL zero, bb74
bb119:
  LA s7, chat
  LW s7, 0(s7)
  ADDI a0, zero, 1
  SW a0, 360(sp)
  LW a0, 360(sp)
  SUBW a0, s7, a0
  SW a0, 156(sp)
  LA a0, chat
  SD a0, 976(sp)
  LD a0, 976(sp)
  LW s0, 156(sp)
  SW s0, 0(a0)
  SLLIW s7, s7, 2
  LA a0, chas
  SD a0, 1040(sp)
  LD a0, 1040(sp)
  ADD s7, a0, s7
  LW s7, 0(s7)
  LA a0, c
  SD a0, 1032(sp)
  LD a0, 1032(sp)
  SW s7, 0(a0)
  LA a0, ii
  SD a0, 1024(sp)
  LD a0, 1024(sp)
  LW a0, 0(a0)
  SW a0, 188(sp)
  LW a0, 188(sp)
  SLLIW a0, a0, 2
  SW a0, 184(sp)
  LA a0, get2
  SD a0, 1016(sp)
  LD a0, 1016(sp)
  LW s0, 184(sp)
  ADD a0, a0, s0
  SD a0, 1200(sp)
  ADDI a0, zero, 32
  SW a0, 484(sp)
  LW a0, 484(sp)
  LD s0, 1200(sp)
  SW a0, 0(s0)
  LW a0, 188(sp)
  ADDIW a0, a0, 1
  SW a0, 168(sp)
  LW a0, 168(sp)
  SLLIW a0, a0, 2
  SW a0, 164(sp)
  LA a0, get2
  SD a0, 1008(sp)
  LD a0, 1008(sp)
  LW s0, 164(sp)
  ADD a0, a0, s0
  SD a0, 1112(sp)
  LD a0, 1112(sp)
  SW s7, 0(a0)
  LW a0, 188(sp)
  ADDIW s7, a0, 2
  LA a0, ii
  SD a0, 1000(sp)
  LD a0, 1000(sp)
  SW s7, 0(a0)
  LW a0, 156(sp)
  SLTIU s7, a0, 1
  BNE s7, zero, bb122
  # implict jump to bb120
bb120:
  ADDI s7, zero, 1
  # implict jump to bb121
bb121:
  SLTIU s7, s7, 1
  BNE s7, zero, bb118
  JAL zero, bb111
bb122:
  ADD s7, zero, zero
  JAL zero, bb121
bb123:
  ADDI a0, zero, 1
  SB a0, 97(sp)
  JAL zero, bb117
bb124:
  ADDI s5, zero, 1
  JAL zero, bb115
bb125:
  ADDI s4, zero, 1
  JAL zero, bb113
bb126:
  LA s2, chat
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LA s3, chas
  ADD s2, s3, s2
  LW s9, 0(s2)
  XORI s2, s9, 43
  SLTIU s2, s2, 1
  BNE s2, zero, bb146
  # implict jump to bb127
bb127:
  XORI s2, s9, 45
  SLTIU s2, s2, 1
  # implict jump to bb128
bb128:
  SB s2, 146(sp)
  LB a0, 146(sp)
  BNE a0, zero, bb145
  # implict jump to bb129
bb129:
  XORI s3, s9, 42
  SLTIU s8, s3, 1
  # implict jump to bb130
bb130:
  BNE s8, zero, bb144
  # implict jump to bb131
bb131:
  XORI s6, s9, 47
  SLTIU s11, s6, 1
  # implict jump to bb132
bb132:
  BNE s11, zero, bb143
  # implict jump to bb133
bb133:
  XORI s7, s9, 37
  SLTIU s7, s7, 1
  # implict jump to bb134
bb134:
  SB s7, 133(sp)
  LB a0, 133(sp)
  BNE a0, zero, bb142
  # implict jump to bb135
bb135:
  XORI s7, s9, 94
  SLTIU s7, s7, 1
  # implict jump to bb136
bb136:
  SB s7, 134(sp)
  LB a0, 134(sp)
  BNE a0, zero, bb138
  # implict jump to bb137
bb137:
  LA s7, chat
  LW s7, 0(s7)
  ADDIW s7, s7, 1
  LA s9, chat
  SW s7, 0(s9)
  SLLIW s7, s7, 2
  LA s9, chas
  ADD s7, s9, s7
  ADDI s9, zero, 45
  SW s9, 0(s7)
  SB s8, 47(sp)
  LB a0, 134(sp)
  SB a0, 30(sp)
  LB s7, 133(sp)
  LB a0, 146(sp)
  SB a0, 67(sp)
  LB a0, 67(sp)
  SB a0, 67(sp)
  JAL zero, bb72
bb138:
  LA s7, chat
  LW s7, 0(s7)
  ADDI s9, zero, 1
  SUBW a0, s7, s9
  SW a0, 172(sp)
  LA s9, chat
  LW a0, 172(sp)
  SW a0, 0(s9)
  SLLIW s7, s7, 2
  LA s9, chas
  ADD s7, s9, s7
  LW a0, 0(s7)
  SW a0, 176(sp)
  LA s7, c
  LW a0, 176(sp)
  SW a0, 0(s7)
  LA s7, ii
  LW a0, 0(s7)
  SW a0, 180(sp)
  LW a0, 180(sp)
  SLLIW s7, a0, 2
  LA s9, get2
  ADD s7, s9, s7
  ADDI s9, zero, 32
  SW s9, 0(s7)
  LW a0, 180(sp)
  ADDIW s7, a0, 1
  SLLIW s7, s7, 2
  LA s9, get2
  ADD s7, s9, s7
  LW a0, 176(sp)
  SW a0, 0(s7)
  LW a0, 180(sp)
  ADDIW s7, a0, 2
  LA s9, ii
  SW s7, 0(s9)
  LW a0, 172(sp)
  SLTIU s7, a0, 1
  BNE s7, zero, bb141
  # implict jump to bb139
bb139:
  ADDI s7, zero, 1
  # implict jump to bb140
bb140:
  SLTIU s7, s7, 1
  BNE s7, zero, bb137
  JAL zero, bb126
bb141:
  ADD s7, zero, zero
  JAL zero, bb140
bb142:
  ADDI s7, zero, 1
  JAL zero, bb136
bb143:
  ADDI s7, zero, 1
  JAL zero, bb134
bb144:
  ADDI s11, zero, 1
  JAL zero, bb132
bb145:
  ADDI s8, zero, 1
  JAL zero, bb130
bb146:
  ADDI s2, zero, 1
  JAL zero, bb128
bb147:
  LA a0, chat
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LA a0, chas
  ADD a0, a0, s0
  LW s7, 0(a0)
  XORI a0, s7, 43
  SLTIU a0, a0, 1
  BNE a0, zero, bb167
  # implict jump to bb148
bb148:
  XORI a0, s7, 45
  SLTIU a0, a0, 1
  # implict jump to bb149
bb149:
  SB a0, 130(sp)
  LB a0, 130(sp)
  BNE a0, zero, bb166
  # implict jump to bb150
bb150:
  XORI s0, s7, 42
  SLTIU s0, s0, 1
  # implict jump to bb151
bb151:
  SB s0, 131(sp)
  LB a0, 131(sp)
  BNE a0, zero, bb165
  # implict jump to bb152
bb152:
  XORI s1, s7, 47
  SLTIU s1, s1, 1
  # implict jump to bb153
bb153:
  SB s1, 132(sp)
  LB a0, 132(sp)
  BNE a0, zero, bb164
  # implict jump to bb154
bb154:
  XORI s6, s7, 37
  SLTIU s6, s6, 1
  # implict jump to bb155
bb155:
  SB s6, 135(sp)
  LB a0, 135(sp)
  BNE a0, zero, bb163
  # implict jump to bb156
bb156:
  XORI s6, s7, 94
  SLTIU s6, s6, 1
  # implict jump to bb157
bb157:
  SB s6, 136(sp)
  LB a0, 136(sp)
  BNE a0, zero, bb159
  # implict jump to bb158
bb158:
  LA s7, chat
  LW s7, 0(s7)
  ADDIW s8, s7, 1
  LA s7, chat
  SW s8, 0(s7)
  SLLIW s8, s8, 2
  LA s7, chas
  ADD s8, s7, s8
  ADDI s7, zero, 43
  SW s7, 0(s8)
  LB s8, 132(sp)
  LB a0, 136(sp)
  SB a0, 108(sp)
  LB a0, 108(sp)
  SB a0, 108(sp)
  LB a0, 130(sp)
  SB a0, 83(sp)
  LB s1, 131(sp)
  LB a0, 135(sp)
  SB a0, 110(sp)
  LB a0, 110(sp)
  SB a0, 110(sp)
  JAL zero, bb70
bb159:
  LA s7, chat
  LW s8, 0(s7)
  ADDI s7, zero, 1
  SUBW a0, s8, s7
  SW a0, 208(sp)
  LA s7, chat
  LW a0, 208(sp)
  SW a0, 0(s7)
  SLLIW s8, s8, 2
  LA s7, chas
  ADD s7, s7, s8
  LW a0, 0(s7)
  SW a0, 152(sp)
  LA s7, c
  LW a0, 152(sp)
  SW a0, 0(s7)
  LA s7, ii
  LW a0, 0(s7)
  SW a0, 160(sp)
  LW a0, 160(sp)
  SLLIW s8, a0, 2
  LA s7, get2
  ADD s8, s7, s8
  ADDI s7, zero, 32
  SW s7, 0(s8)
  LW a0, 160(sp)
  ADDIW s7, a0, 1
  SLLIW s8, s7, 2
  LA s7, get2
  ADD s7, s7, s8
  LW a0, 152(sp)
  SW a0, 0(s7)
  LW a0, 160(sp)
  ADDIW s8, a0, 2
  LA s7, ii
  SW s8, 0(s7)
  LW a0, 208(sp)
  SLTIU s7, a0, 1
  BNE s7, zero, bb162
  # implict jump to bb160
bb160:
  ADDI s7, zero, 1
  # implict jump to bb161
bb161:
  SLTIU s7, s7, 1
  BNE s7, zero, bb158
  JAL zero, bb147
bb162:
  ADD s7, zero, zero
  JAL zero, bb161
bb163:
  ADDI s6, zero, 1
  JAL zero, bb157
bb164:
  ADDI s6, zero, 1
  JAL zero, bb155
bb165:
  ADDI s1, zero, 1
  JAL zero, bb153
bb166:
  ADDI s0, zero, 1
  JAL zero, bb151
bb167:
  ADDI a0, zero, 1
  JAL zero, bb149
bb168:
  LA a0, chat
  SD a0, 952(sp)
  LD a0, 952(sp)
  LW a0, 0(a0)
  SW a0, 492(sp)
  ADDI a0, zero, 1
  SW a0, 408(sp)
  LW s9, 408(sp)
  LW a0, 492(sp)
  SUBW a0, a0, s9
  SW a0, 508(sp)
  LA a0, chat
  SD a0, 944(sp)
  LD s9, 944(sp)
  LW a0, 508(sp)
  SW a0, 0(s9)
  LW a0, 492(sp)
  SLLIW a0, a0, 2
  SW a0, 504(sp)
  LA a0, chas
  SD a0, 936(sp)
  LD s9, 936(sp)
  LW a0, 504(sp)
  ADD a0, s9, a0
  SD a0, 784(sp)
  LD a0, 784(sp)
  LW a0, 0(a0)
  SW a0, 500(sp)
  LA a0, c
  SD a0, 928(sp)
  LD s9, 928(sp)
  LW a0, 500(sp)
  SW a0, 0(s9)
  LW a0, 500(sp)
  XORI a0, a0, 40
  SW a0, 296(sp)
  LW a0, 296(sp)
  BNE a0, zero, bb169
  JAL zero, bb68
bb169:
  LA a0, ii
  SD a0, 920(sp)
  LD a0, 920(sp)
  LW a0, 0(a0)
  SW a0, 496(sp)
  LW a0, 496(sp)
  SLLIW a0, a0, 2
  SW a0, 460(sp)
  LA a0, get2
  SD a0, 912(sp)
  LD s9, 912(sp)
  LW a0, 460(sp)
  ADD a0, s9, a0
  SD a0, 776(sp)
  ADDI a0, zero, 32
  SW a0, 412(sp)
  LW s9, 412(sp)
  LD a0, 776(sp)
  SW s9, 0(a0)
  LW a0, 496(sp)
  ADDIW a0, a0, 1
  SW a0, 356(sp)
  LW a0, 356(sp)
  SLLIW a0, a0, 2
  SW a0, 352(sp)
  LA a0, get2
  SD a0, 848(sp)
  LD s9, 848(sp)
  LW a0, 352(sp)
  ADD a0, s9, a0
  SD a0, 688(sp)
  LA a0, c
  SD a0, 896(sp)
  LD a0, 896(sp)
  LW a0, 0(a0)
  SW a0, 344(sp)
  LW s9, 344(sp)
  LD a0, 688(sp)
  SW s9, 0(a0)
  LW a0, 496(sp)
  ADDIW a0, a0, 2
  SW a0, 340(sp)
  LA a0, ii
  SD a0, 888(sp)
  LD s9, 888(sp)
  LW a0, 340(sp)
  SW a0, 0(s9)
  LA a0, chat
  SD a0, 880(sp)
  LD a0, 880(sp)
  LW a0, 0(a0)
  SW a0, 336(sp)
  ADDI a0, zero, 1
  SW a0, 416(sp)
  LW s9, 416(sp)
  LW a0, 336(sp)
  SUBW a0, a0, s9
  SW a0, 332(sp)
  LA a0, chat
  SD a0, 872(sp)
  LD s9, 872(sp)
  LW a0, 332(sp)
  SW a0, 0(s9)
  LW a0, 336(sp)
  SLLIW a0, a0, 2
  SW a0, 292(sp)
  LA a0, chas
  SD a0, 864(sp)
  LD s9, 864(sp)
  LW a0, 292(sp)
  ADD a0, s9, a0
  SD a0, 760(sp)
  LD a0, 760(sp)
  LW a0, 0(a0)
  SW a0, 320(sp)
  LA a0, c
  SD a0, 856(sp)
  LD s9, 856(sp)
  LW a0, 320(sp)
  SW a0, 0(s9)
  LW a0, 320(sp)
  XORI a0, a0, 40
  SW a0, 364(sp)
  LW a0, 364(sp)
  BNE a0, zero, bb169
  JAL zero, bb68
bb170:
  LA a0, chat
  SD a0, 768(sp)
  LD a0, 768(sp)
  LW a0, 0(a0)
  SW a0, 524(sp)
  LW a0, 524(sp)
  ADDIW a0, a0, 1
  SW a0, 520(sp)
  LA a0, chat
  SD a0, 968(sp)
  LD s9, 968(sp)
  LW a0, 520(sp)
  SW a0, 0(s9)
  LW a0, 520(sp)
  SLLIW a0, a0, 2
  SW a0, 516(sp)
  LA a0, chas
  SD a0, 960(sp)
  LD s9, 960(sp)
  LW a0, 516(sp)
  ADD a0, s9, a0
  SD a0, 792(sp)
  ADDI a0, zero, 94
  SW a0, 404(sp)
  LW s9, 404(sp)
  LD a0, 792(sp)
  SW s9, 0(a0)
  JAL zero, bb67
bb171:
  LA a0, chat
  SD a0, 712(sp)
  LD a0, 712(sp)
  LW a0, 0(a0)
  SW a0, 536(sp)
  LW a0, 536(sp)
  ADDIW a0, a0, 1
  SW a0, 532(sp)
  LA a0, chat
  SD a0, 704(sp)
  LD s9, 704(sp)
  LW a0, 532(sp)
  SW a0, 0(s9)
  LW a0, 532(sp)
  SLLIW a0, a0, 2
  SW a0, 528(sp)
  LA a0, chas
  SD a0, 696(sp)
  LD s9, 696(sp)
  LW a0, 528(sp)
  ADD a0, s9, a0
  SD a0, 800(sp)
  ADDI a0, zero, 40
  SW a0, 396(sp)
  LW s9, 396(sp)
  LD a0, 800(sp)
  SW s9, 0(a0)
  JAL zero, bb66
bb172:
  LA a0, ii
  SD a0, 744(sp)
  LD a0, 744(sp)
  LW a0, 0(a0)
  SW a0, 432(sp)
  LW a0, 432(sp)
  SLLIW a0, a0, 2
  SW a0, 428(sp)
  LA a0, get2
  SD a0, 736(sp)
  LD s9, 736(sp)
  LW a0, 428(sp)
  ADD a0, s9, a0
  SD a0, 808(sp)
  LD s9, 808(sp)
  LW a0, 440(sp)
  SW a0, 0(s9)
  LW a0, 432(sp)
  ADDIW a0, a0, 1
  SW a0, 540(sp)
  LA a0, ii
  SD a0, 728(sp)
  LD s9, 728(sp)
  LW a0, 540(sp)
  SW a0, 0(s9)
  LB a0, 12(sp)
  SB a0, 87(sp)
  LB a0, 13(sp)
  SB a0, 86(sp)
  LB a0, 14(sp)
  SB a0, 95(sp)
  SB s8, 121(sp)
  LB a0, 15(sp)
  SB a0, 120(sp)
  LB a0, 16(sp)
  SB a0, 119(sp)
  LB a0, 108(sp)
  SB a0, 108(sp)
  LB a0, 108(sp)
  SB a0, 118(sp)
  LB a0, 17(sp)
  SB a0, 117(sp)
  LB a0, 52(sp)
  SB a0, 116(sp)
  LB a0, 20(sp)
  SB a0, 20(sp)
  LB a0, 20(sp)
  SB a0, 115(sp)
  LB a0, 51(sp)
  SB a0, 114(sp)
  LB a0, 97(sp)
  SB a0, 97(sp)
  LB a0, 10(sp)
  SB a0, 10(sp)
  LB s7, 30(sp)
  LB a0, 68(sp)
  SB a0, 68(sp)
  LB a0, 67(sp)
  SB a0, 67(sp)
  LB a0, 110(sp)
  SB a0, 110(sp)
  JAL zero, bb79
bb173:
  ADDI a0, zero, 1
  SW a0, 372(sp)
  JAL zero, bb64
bb174:
  ADDI a0, zero, 57
  SW a0, 420(sp)
  LW s9, 420(sp)
  LW a0, 440(sp)
  SLT a0, s9, a0
  SB a0, 98(sp)
  LB a0, 98(sp)
  XORI a0, a0, 1
  SB a0, 148(sp)
  LB a0, 148(sp)
  SB a0, 104(sp)
  JAL zero, bb62
bb175:
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
bb176:
  XORI s0, s1, 10
  SLTU s0, zero, s0
  JAL zero, bb3
