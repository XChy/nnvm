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
  ADDI sp, sp, -816
  SD s1, 328(sp)
  SD ra, 344(sp)
  SD s0, 352(sp)
  SD s2, 392(sp)
  SD s3, 408(sp)
  SD s4, 416(sp)
  SD s5, 424(sp)
  SD s6, 432(sp)
  SD s7, 440(sp)
  SD s8, 488(sp)
  SD s9, 504(sp)
  SD s10, 512(sp)
  SD s11, 544(sp)
  LA s0, intt
  ADDI s1, zero, 0
  SW s1, 0(s0)
  LA s0, chat
  ADDI s1, zero, 0
  SW s1, 0(s0)
  CALL getch
  ADD s0, a0, zero
  ADD s2, zero, zero
  # implict jump to bb1
bb1:
  ADD s1, s2, zero
  SW s1, 260(sp)
  XORI s1, s0, 13
  BNE s1, zero, bb176
  # implict jump to bb2
bb2:
  ADD s1, zero, zero
  # implict jump to bb3
bb3:
  BNE s1, zero, bb175
  # implict jump to bb4
bb4:
  LA a0, i
  LW a0, 0(a0)
  LW s0, 260(sp)
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
  LA a0, i
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LA s0, get2
  ADD a0, s0, a0
  LW a0, 0(a0)
  XORI a0, a0, 64
  BNE a0, zero, bb8
  # implict jump to bb7
bb7:
  LA a0, ints
  LW a0, 4(a0)
  CALL putint
  ADD a0, zero, zero
  LD s1, 328(sp)
  LD ra, 344(sp)
  LD s0, 352(sp)
  LD s2, 392(sp)
  LD s3, 408(sp)
  LD s4, 416(sp)
  LD s5, 424(sp)
  LD s6, 432(sp)
  LD s7, 440(sp)
  LD s8, 488(sp)
  LD s9, 504(sp)
  LD s10, 512(sp)
  LD s11, 544(sp)
  ADDI sp, sp, 816
  JALR zero, 0(ra)
bb8:
  ADD s2, zero, zero
  ADD s0, zero, zero
  ADD a0, zero, zero
  # implict jump to bb9
bb9:
  ADD s1, a0, zero
  ADD a0, s2, zero
  LA s2, i
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LA s3, get2
  ADD s2, s3, s2
  LW s2, 0(s2)
  XORI s2, s2, 43
  SLTIU s2, s2, 1
  BNE s2, zero, bb57
  # implict jump to bb10
bb10:
  LA s2, i
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LA s3, get2
  ADD s2, s3, s2
  LW s2, 0(s2)
  XORI s2, s2, 45
  SLTIU s2, s2, 1
  # implict jump to bb11
bb11:
  BNE s2, zero, bb56
  # implict jump to bb12
bb12:
  LA s2, i
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LA s3, get2
  ADD s2, s3, s2
  LW s2, 0(s2)
  XORI s2, s2, 42
  SLTIU s2, s2, 1
  # implict jump to bb13
bb13:
  BNE s2, zero, bb55
  # implict jump to bb14
bb14:
  LA s2, i
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LA s3, get2
  ADD s2, s3, s2
  LW s2, 0(s2)
  XORI s2, s2, 47
  SLTIU s2, s2, 1
  # implict jump to bb15
bb15:
  BNE s2, zero, bb54
  # implict jump to bb16
bb16:
  LA s2, i
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LA s3, get2
  ADD s2, s3, s2
  LW s2, 0(s2)
  XORI s2, s2, 37
  SLTIU s2, s2, 1
  # implict jump to bb17
bb17:
  BNE s2, zero, bb53
  # implict jump to bb18
bb18:
  LA s2, i
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LA s3, get2
  ADD s2, s3, s2
  LW s2, 0(s2)
  XORI s2, s2, 94
  SLTIU s2, s2, 1
  # implict jump to bb19
bb19:
  BNE s2, zero, bb28
  # implict jump to bb20
bb20:
  LA s2, i
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LA s3, get2
  ADD s2, s3, s2
  LW s2, 0(s2)
  XORI s2, s2, 32
  BNE s2, zero, bb24
  # implict jump to bb21
bb21:
  ADD s2, s1, zero
  # implict jump to bb22
bb22:
  ADD s1, a0, zero
  ADD a0, s2, zero
  LA s2, i
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s3, i
  SW s2, 0(s3)
  LA s2, i
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LA s3, get2
  ADD s2, s3, s2
  LW s2, 0(s2)
  XORI s2, s2, 64
  BNE s2, zero, bb23
  JAL zero, bb7
bb23:
  ADD s2, s1, zero
  JAL zero, bb9
bb24:
  LA s2, i
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LA s3, get2
  ADD s2, s3, s2
  LW s2, 0(s2)
  ADDI s3, zero, 48
  SUBW s2, s2, s3
  LA s3, intt
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s4, intt
  SW s3, 0(s4)
  SLLIW s3, s3, 2
  LA s4, ints
  ADD s3, s4, s3
  SW s2, 0(s3)
  LA s2, ii
  ADDI s4, zero, 1
  SW s4, 0(s2)
  LA s2, i
  LW s2, 0(s2)
  LA s4, ii
  LW s4, 0(s4)
  ADDW s2, s2, s4
  SLLIW s2, s2, 2
  LA s4, get2
  ADD s2, s4, s2
  LW s2, 0(s2)
  XORI s2, s2, 32
  BNE s2, zero, bb26
  # implict jump to bb25
bb25:
  LA s2, i
  LW s2, 0(s2)
  LA s3, ii
  LW s3, 0(s3)
  ADDW s2, s2, s3
  ADDI s3, zero, 1
  SUBW s2, s2, s3
  LA s3, i
  SW s2, 0(s3)
  JAL zero, bb21
bb26:
  LA s2, i
  LW s2, 0(s2)
  # implict jump to bb27
bb27:
  LA s4, ii
  LW s4, 0(s4)
  ADDW s4, s2, s4
  SLLIW s4, s4, 2
  LA s5, get2
  ADD s4, s5, s4
  LW s4, 0(s4)
  ADDI s5, zero, 48
  SUBW s4, s4, s5
  LW s5, 0(s3)
  ADDI s6, zero, 10
  MULW s5, s5, s6
  SW s5, 0(s3)
  LW s5, 0(s3)
  ADDW s4, s5, s4
  SW s4, 0(s3)
  LA s4, ii
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, ii
  SW s4, 0(s5)
  LA s4, i
  LW s4, 0(s4)
  LA s5, ii
  LW s5, 0(s5)
  ADDW s4, s4, s5
  SLLIW s4, s4, 2
  LA s5, get2
  ADD s4, s5, s4
  LW s4, 0(s4)
  XORI s4, s4, 32
  BNE s4, zero, bb27
  JAL zero, bb25
bb28:
  LA s0, intt
  LW s0, 0(s0)
  ADDI s1, zero, 1
  SUBW s1, s0, s1
  LA s2, intt
  SW s1, 0(s2)
  SLLIW s2, s0, 2
  LA s3, ints
  ADD s2, s3, s2
  LW s2, 0(s2)
  ADDI s3, zero, 2
  SUBW s0, s0, s3
  LA s3, intt
  SW s0, 0(s3)
  SLLIW s0, s1, 2
  LA s1, ints
  ADD s0, s1, s0
  LW s0, 0(s0)
  LA s1, i
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  LA s3, get2
  ADD s1, s3, s1
  LW s1, 0(s1)
  XORI s1, s1, 43
  SLTIU s1, s1, 1
  BNE s1, zero, bb52
  # implict jump to bb29
bb29:
  # implict jump to bb30
bb30:
  LA s1, i
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  LA s3, get2
  ADD s1, s3, s1
  LW s1, 0(s1)
  XORI s1, s1, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb51
  # implict jump to bb31
bb31:
  # implict jump to bb32
bb32:
  LA s1, i
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  LA s3, get2
  ADD s1, s3, s1
  LW s1, 0(s1)
  XORI s1, s1, 42
  SLTIU s1, s1, 1
  BNE s1, zero, bb50
  # implict jump to bb33
bb33:
  # implict jump to bb34
bb34:
  LA s1, i
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  LA s3, get2
  ADD s1, s3, s1
  LW s1, 0(s1)
  XORI s1, s1, 47
  SLTIU s1, s1, 1
  BNE s1, zero, bb49
  # implict jump to bb35
bb35:
  # implict jump to bb36
bb36:
  LA s1, i
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  LA s3, get2
  ADD s1, s3, s1
  LW s1, 0(s1)
  XORI s1, s1, 37
  SLTIU s1, s1, 1
  BNE s1, zero, bb48
  # implict jump to bb37
bb37:
  # implict jump to bb38
bb38:
  LA s1, i
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  LA s3, get2
  ADD s1, s3, s1
  LW s1, 0(s1)
  XORI s1, s1, 94
  SLTIU s1, s1, 1
  BNE s1, zero, bb41
  # implict jump to bb39
bb39:
  # implict jump to bb40
bb40:
  LA s1, intt
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s3, intt
  SW s1, 0(s3)
  SLLIW s1, s1, 2
  LA s3, ints
  ADD s1, s3, s1
  SW a0, 0(s1)
  JAL zero, bb22
bb41:
  BNE s2, zero, bb44
  # implict jump to bb42
bb42:
  ADDI a0, zero, 1
  # implict jump to bb43
bb43:
  JAL zero, bb40
bb44:
  ADD a0, s2, zero
  ADDI s1, zero, 1
  # implict jump to bb45
bb45:
  MULW s1, s1, s0
  ADDI s3, zero, 1
  SUBW a0, a0, s3
  BNE a0, zero, bb47
  # implict jump to bb46
bb46:
  ADD a0, s1, zero
  JAL zero, bb43
bb47:
  JAL zero, bb45
bb48:
  REMW a0, s0, s2
  JAL zero, bb38
bb49:
  DIVW a0, s0, s2
  JAL zero, bb36
bb50:
  MULW a0, s2, s0
  JAL zero, bb34
bb51:
  SUBW a0, s0, s2
  JAL zero, bb32
bb52:
  ADDW a0, s2, s0
  JAL zero, bb30
bb53:
  ADDI s2, zero, 1
  JAL zero, bb19
bb54:
  ADDI s2, zero, 1
  JAL zero, bb17
bb55:
  ADDI s2, zero, 1
  JAL zero, bb15
bb56:
  ADDI s2, zero, 1
  JAL zero, bb13
bb57:
  ADDI s2, zero, 1
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
  SW a0, 256(sp)
  ADD a0, zero, zero
  SB a0, 97(sp)
  ADD a0, zero, zero
  SB a0, 98(sp)
  ADD a0, zero, zero
  SB a0, 0(sp)
  ADD a0, zero, zero
  SB a0, 8(sp)
  ADD a0, zero, zero
  SB a0, 9(sp)
  ADD a0, zero, zero
  SB a0, 10(sp)
  ADD a0, zero, zero
  SB a0, 11(sp)
  ADD a0, zero, zero
  SB a0, 13(sp)
  ADD a0, zero, zero
  SB a0, 14(sp)
  ADD s8, zero, zero
  ADD s7, zero, zero
  ADD a0, zero, zero
  SB a0, 89(sp)
  ADD a0, zero, zero
  SB a0, 88(sp)
  ADD a0, zero, zero
  SB a0, 87(sp)
  ADD s3, zero, zero
  ADD s2, zero, zero
  ADD s1, zero, zero
  ADD s0, zero, zero
  ADD a0, zero, zero
  SB a0, 90(sp)
  # implict jump to bb60
bb60:
  LB a0, 90(sp)
  SB a0, 101(sp)
  ADD a0, s0, zero
  SB a0, 70(sp)
  ADD a0, s1, zero
  SB a0, 60(sp)
  ADD a0, s2, zero
  SB a0, 61(sp)
  ADD a0, s3, zero
  SB a0, 81(sp)
  LB a0, 87(sp)
  SB a0, 48(sp)
  LB a0, 88(sp)
  SB a0, 21(sp)
  LB a0, 89(sp)
  SB a0, 73(sp)
  ADD s10, s7, zero
  ADD s9, s8, zero
  LB a0, 14(sp)
  SB a0, 59(sp)
  LB a0, 13(sp)
  ADD s7, a0, zero
  LB a0, 11(sp)
  SB a0, 84(sp)
  LB a0, 10(sp)
  SB a0, 80(sp)
  LB a0, 9(sp)
  SB a0, 57(sp)
  LB a0, 8(sp)
  ADD s3, a0, zero
  LB a0, 0(sp)
  SB a0, 69(sp)
  LB a0, 98(sp)
  ADD s1, a0, zero
  LB a0, 97(sp)
  ADD s0, a0, zero
  LW a0, 256(sp)
  SLLIW a0, a0, 2
  LA s2, get
  SD s2, 600(sp)
  LD s2, 600(sp)
  ADD a0, s2, a0
  SD a0, 632(sp)
  LD a0, 632(sp)
  LW a0, 0(a0)
  SW a0, 204(sp)
  LW a0, 204(sp)
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
  LD a0, 632(sp)
  LW a0, 0(a0)
  XORI a0, a0, 40
  SLTIU a0, a0, 1
  BNE a0, zero, bb171
  # implict jump to bb66
bb66:
  LD a0, 632(sp)
  LW a0, 0(a0)
  XORI a0, a0, 94
  SLTIU a0, a0, 1
  BNE a0, zero, bb170
  # implict jump to bb67
bb67:
  LD a0, 632(sp)
  LW a0, 0(a0)
  XORI a0, a0, 41
  SLTIU a0, a0, 1
  BNE a0, zero, bb168
  # implict jump to bb68
bb68:
  LD a0, 632(sp)
  LW a0, 0(a0)
  XORI a0, a0, 43
  SLTIU a0, a0, 1
  BNE a0, zero, bb147
  # implict jump to bb69
bb69:
  LB a0, 61(sp)
  SB a0, 16(sp)
  LB a0, 21(sp)
  SB a0, 83(sp)
  ADD a0, s9, zero
  # implict jump to bb70
bb70:
  SB s0, 106(sp)
  ADD s0, s1, zero
  SB s0, 79(sp)
  SB a0, 68(sp)
  LB a0, 83(sp)
  ADD s0, a0, zero
  LB a0, 16(sp)
  SB a0, 77(sp)
  LD a0, 632(sp)
  LW a0, 0(a0)
  SW a0, 196(sp)
  LW a0, 196(sp)
  XORI a0, a0, 45
  SW a0, 112(sp)
  LW a0, 112(sp)
  SLTIU a0, a0, 1
  SB a0, 5(sp)
  LB a0, 5(sp)
  BNE a0, zero, bb126
  # implict jump to bb71
bb71:
  LB a0, 48(sp)
  SB a0, 17(sp)
  LB a0, 80(sp)
  SB a0, 36(sp)
  LB a0, 57(sp)
  ADD s4, a0, zero
  ADD s5, s3, zero
  LB a0, 69(sp)
  ADD s2, a0, zero
  # implict jump to bb72
bb72:
  ADD a0, s2, zero
  SB a0, 75(sp)
  ADD a0, s5, zero
  SB a0, 76(sp)
  ADD a0, s4, zero
  SB a0, 52(sp)
  LB a0, 36(sp)
  SB a0, 105(sp)
  LB a0, 17(sp)
  SB a0, 66(sp)
  LD a0, 632(sp)
  LW s4, 0(a0)
  XORI s4, s4, 42
  SLTIU s4, s4, 1
  BNE s4, zero, bb111
  # implict jump to bb73
bb73:
  ADD s4, s10, zero
  ADD s5, s7, zero
  LB a0, 84(sp)
  ADD s6, a0, zero
  # implict jump to bb74
bb74:
  ADD a0, s6, zero
  SB a0, 62(sp)
  ADD a0, s5, zero
  SB a0, 63(sp)
  ADD a0, s4, zero
  SB a0, 64(sp)
  LD a0, 632(sp)
  LW s7, 0(a0)
  XORI s7, s7, 47
  SLTIU s7, s7, 1
  BNE s7, zero, bb96
  # implict jump to bb75
bb75:
  LB a0, 81(sp)
  ADD s7, a0, zero
  LB a0, 73(sp)
  ADD s11, a0, zero
  LB a0, 59(sp)
  ADD s8, a0, zero
  # implict jump to bb76
bb76:
  ADD s10, s8, zero
  ADD s8, s11, zero
  LD a0, 632(sp)
  LW s11, 0(a0)
  XORI s11, s11, 37
  SLTIU s11, s11, 1
  BNE s11, zero, bb81
  # implict jump to bb77
bb77:
  LB a0, 101(sp)
  ADD s11, a0, zero
  LB a0, 70(sp)
  SB a0, 47(sp)
  LB a0, 60(sp)
  SB a0, 50(sp)
  # implict jump to bb78
bb78:
  LB a0, 50(sp)
  SB a0, 65(sp)
  LB a0, 47(sp)
  SB a0, 104(sp)
  LA a0, ii
  SD a0, 368(sp)
  LD a0, 368(sp)
  LW a0, 0(a0)
  SW a0, 284(sp)
  LW a0, 284(sp)
  SLLIW a0, a0, 2
  SW a0, 300(sp)
  LA a0, get2
  SD a0, 360(sp)
  LD a0, 360(sp)
  LW s1, 300(sp)
  ADD a0, a0, s1
  SD a0, 608(sp)
  ADDI a0, zero, 32
  SW a0, 168(sp)
  LW a0, 168(sp)
  LD s1, 608(sp)
  SW a0, 0(s1)
  LW a0, 284(sp)
  ADDIW a0, a0, 1
  SW a0, 188(sp)
  LA a0, ii
  SD a0, 320(sp)
  LW a0, 188(sp)
  LD s1, 320(sp)
  SW a0, 0(s1)
  ADD a0, s11, zero
  SB a0, 99(sp)
  LB a0, 104(sp)
  SB a0, 96(sp)
  LB a0, 65(sp)
  SB a0, 95(sp)
  LB a0, 77(sp)
  SB a0, 94(sp)
  ADD a0, s7, zero
  SB a0, 93(sp)
  LB a0, 66(sp)
  SB a0, 92(sp)
  ADD a0, s0, zero
  SB a0, 32(sp)
  ADD a0, s8, zero
  SB a0, 33(sp)
  LB a0, 64(sp)
  SB a0, 35(sp)
  LB a0, 68(sp)
  SB a0, 41(sp)
  ADD a0, s10, zero
  LB s0, 63(sp)
  ADD s7, s0, zero
  LB s0, 62(sp)
  ADD s6, s0, zero
  LB s0, 105(sp)
  ADD s5, s0, zero
  LB s0, 52(sp)
  ADD s4, s0, zero
  LB s0, 76(sp)
  ADD s8, s0, zero
  LB s0, 75(sp)
  ADD s2, s0, zero
  LB s0, 79(sp)
  ADD s1, s0, zero
  LB s0, 106(sp)
  # implict jump to bb79
bb79:
  SB s0, 103(sp)
  ADD s0, s1, zero
  SB s0, 102(sp)
  ADD s0, s2, zero
  SB s0, 29(sp)
  ADD s0, s8, zero
  SB s0, 78(sp)
  ADD s0, s4, zero
  SB s0, 72(sp)
  ADD s0, s5, zero
  SB s0, 44(sp)
  ADD s11, s6, zero
  ADD s10, s7, zero
  ADD s9, a0, zero
  LB a0, 41(sp)
  SB a0, 58(sp)
  LB a0, 35(sp)
  ADD s7, a0, zero
  LB a0, 33(sp)
  SB a0, 109(sp)
  LB a0, 32(sp)
  ADD s5, a0, zero
  LB a0, 92(sp)
  SB a0, 82(sp)
  LB a0, 93(sp)
  ADD s3, a0, zero
  LB a0, 94(sp)
  SB a0, 108(sp)
  LB a0, 95(sp)
  SB a0, 107(sp)
  LB a0, 96(sp)
  ADD s0, a0, zero
  LB a0, 99(sp)
  SB a0, 100(sp)
  LA a0, i
  SD a0, 576(sp)
  LD a0, 576(sp)
  LW a0, 0(a0)
  SW a0, 228(sp)
  LW a0, 228(sp)
  ADDIW a0, a0, 1
  SW a0, 248(sp)
  LA a0, i
  SD a0, 568(sp)
  LW a0, 248(sp)
  LD s1, 568(sp)
  SW a0, 0(s1)
  LA a0, i
  SD a0, 560(sp)
  LD a0, 560(sp)
  LW a0, 0(a0)
  SW a0, 304(sp)
  LW a0, 260(sp)
  LW s1, 304(sp)
  BLT s1, a0, bb80
  JAL zero, bb5
bb80:
  LW a0, 304(sp)
  SW a0, 256(sp)
  LB a0, 103(sp)
  SB a0, 97(sp)
  LB a0, 102(sp)
  SB a0, 98(sp)
  LB a0, 29(sp)
  SB a0, 0(sp)
  LB a0, 78(sp)
  SB a0, 8(sp)
  LB a0, 72(sp)
  SB a0, 9(sp)
  LB a0, 44(sp)
  SB a0, 10(sp)
  ADD a0, s11, zero
  SB a0, 11(sp)
  ADD a0, s10, zero
  SB a0, 13(sp)
  ADD a0, s9, zero
  SB a0, 14(sp)
  LB a0, 58(sp)
  ADD s8, a0, zero
  LB a0, 109(sp)
  SB a0, 89(sp)
  ADD a0, s5, zero
  SB a0, 88(sp)
  LB a0, 82(sp)
  SB a0, 87(sp)
  LB a0, 108(sp)
  ADD s2, a0, zero
  LB a0, 107(sp)
  ADD s1, a0, zero
  LB a0, 100(sp)
  SB a0, 90(sp)
  JAL zero, bb60
bb81:
  LA s11, chat
  LW s11, 0(s11)
  SLLIW s11, s11, 2
  LA a0, chas
  SD a0, 336(sp)
  LD a0, 336(sp)
  ADD s11, a0, s11
  LW a0, 0(s11)
  SW a0, 116(sp)
  LW a0, 116(sp)
  XORI a0, a0, 42
  SW a0, 128(sp)
  LW a0, 128(sp)
  SLTIU a0, a0, 1
  SB a0, 34(sp)
  LB a0, 34(sp)
  BNE a0, zero, bb95
  # implict jump to bb82
bb82:
  LW a0, 0(s11)
  SW a0, 272(sp)
  LW a0, 272(sp)
  XORI a0, a0, 47
  SW a0, 132(sp)
  LW a0, 132(sp)
  SLTIU a0, a0, 1
  SB a0, 22(sp)
  LB a0, 22(sp)
  SB a0, 56(sp)
  # implict jump to bb83
bb83:
  LB a0, 56(sp)
  SB a0, 23(sp)
  LB a0, 23(sp)
  BNE a0, zero, bb94
  # implict jump to bb84
bb84:
  LW a0, 0(s11)
  SW a0, 276(sp)
  LW a0, 276(sp)
  XORI a0, a0, 37
  SW a0, 136(sp)
  LW a0, 136(sp)
  SLTIU a0, a0, 1
  SB a0, 26(sp)
  LB a0, 26(sp)
  SB a0, 6(sp)
  # implict jump to bb85
bb85:
  LB a0, 6(sp)
  SB a0, 27(sp)
  LB a0, 27(sp)
  BNE a0, zero, bb93
  # implict jump to bb86
bb86:
  LW s11, 0(s11)
  XORI s11, s11, 94
  SLTIU s11, s11, 1
  # implict jump to bb87
bb87:
  ADD a0, s11, zero
  SB a0, 91(sp)
  LB a0, 91(sp)
  BNE a0, zero, bb89
  # implict jump to bb88
bb88:
  LA s11, chat
  LW s11, 0(s11)
  ADDIW s11, s11, 1
  LA a0, chat
  SD a0, 528(sp)
  LD a0, 528(sp)
  SW s11, 0(a0)
  SLLIW s11, s11, 2
  LA a0, chas
  SD a0, 536(sp)
  LD a0, 536(sp)
  ADD s11, a0, s11
  ADDI a0, zero, 37
  SW a0, 140(sp)
  LW a0, 140(sp)
  SW a0, 0(s11)
  LB a0, 23(sp)
  ADD s11, a0, zero
  LB a0, 27(sp)
  SB a0, 47(sp)
  LB a0, 91(sp)
  SB a0, 50(sp)
  JAL zero, bb78
bb89:
  LA s11, chat
  LW s11, 0(s11)
  ADDI a0, zero, 1
  SW a0, 160(sp)
  LW a0, 160(sp)
  SUBW a0, s11, a0
  SW a0, 292(sp)
  LA a0, chat
  SD a0, 448(sp)
  LW a0, 292(sp)
  LD s1, 448(sp)
  SW a0, 0(s1)
  SLLIW s11, s11, 2
  LA a0, chas
  SD a0, 456(sp)
  LD a0, 456(sp)
  ADD s11, a0, s11
  LW s11, 0(s11)
  LA a0, c
  SD a0, 464(sp)
  LD a0, 464(sp)
  SW s11, 0(a0)
  LA a0, ii
  SD a0, 472(sp)
  LD a0, 472(sp)
  LW a0, 0(a0)
  SW a0, 264(sp)
  LW a0, 264(sp)
  SLLIW a0, a0, 2
  SW a0, 288(sp)
  LA a0, get2
  SD a0, 480(sp)
  LD a0, 480(sp)
  LW s1, 288(sp)
  ADD a0, a0, s1
  SD a0, 552(sp)
  ADDI a0, zero, 32
  SW a0, 144(sp)
  LW a0, 144(sp)
  LD s1, 552(sp)
  SW a0, 0(s1)
  LW a0, 264(sp)
  ADDIW a0, a0, 1
  SW a0, 280(sp)
  LW a0, 280(sp)
  SLLIW a0, a0, 2
  SW a0, 268(sp)
  LA a0, get2
  SD a0, 496(sp)
  LD a0, 496(sp)
  LW s1, 268(sp)
  ADD a0, a0, s1
  SD a0, 616(sp)
  LD a0, 616(sp)
  SW s11, 0(a0)
  LW a0, 264(sp)
  ADDIW s11, a0, 2
  LA a0, ii
  SD a0, 520(sp)
  LD a0, 520(sp)
  SW s11, 0(a0)
  LW a0, 292(sp)
  SLTIU s11, a0, 1
  BNE s11, zero, bb92
  # implict jump to bb90
bb90:
  ADDI s11, zero, 1
  # implict jump to bb91
bb91:
  SLTIU s11, s11, 1
  BNE s11, zero, bb88
  JAL zero, bb81
bb92:
  ADD s11, zero, zero
  JAL zero, bb91
bb93:
  ADDI s11, zero, 1
  JAL zero, bb87
bb94:
  ADDI a0, zero, 1
  SB a0, 6(sp)
  JAL zero, bb85
bb95:
  ADDI a0, zero, 1
  SB a0, 56(sp)
  JAL zero, bb83
bb96:
  LA s7, chat
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  LA s8, chas
  ADD s7, s8, s7
  LW s8, 0(s7)
  XORI s8, s8, 42
  SLTIU s8, s8, 1
  BNE s8, zero, bb110
  # implict jump to bb97
bb97:
  LW s8, 0(s7)
  XORI s8, s8, 47
  SLTIU s8, s8, 1
  # implict jump to bb98
bb98:
  ADD a0, s8, zero
  SB a0, 39(sp)
  LB a0, 39(sp)
  BNE a0, zero, bb109
  # implict jump to bb99
bb99:
  LW s8, 0(s7)
  XORI s8, s8, 37
  SLTIU s8, s8, 1
  # implict jump to bb100
bb100:
  ADD a0, s8, zero
  SB a0, 38(sp)
  LB a0, 38(sp)
  BNE a0, zero, bb108
  # implict jump to bb101
bb101:
  LW s7, 0(s7)
  XORI s7, s7, 94
  SLTIU s7, s7, 1
  # implict jump to bb102
bb102:
  ADD a0, s7, zero
  SB a0, 37(sp)
  LB a0, 37(sp)
  BNE a0, zero, bb104
  # implict jump to bb103
bb103:
  LA s7, chat
  LW s7, 0(s7)
  ADDIW s7, s7, 1
  LA s8, chat
  SW s7, 0(s8)
  SLLIW s7, s7, 2
  LA s8, chas
  ADD s7, s8, s7
  ADDI s8, zero, 47
  SW s8, 0(s7)
  LB a0, 39(sp)
  ADD s7, a0, zero
  LB a0, 37(sp)
  ADD s11, a0, zero
  LB a0, 38(sp)
  ADD s8, a0, zero
  JAL zero, bb76
bb104:
  LA s7, chat
  LW s7, 0(s7)
  ADDI s8, zero, 1
  SUBW s8, s7, s8
  LA s10, chat
  SW s8, 0(s10)
  SLLIW s7, s7, 2
  LA s10, chas
  ADD s7, s10, s7
  LW s7, 0(s7)
  LA s10, c
  SW s7, 0(s10)
  LA s10, ii
  LW s10, 0(s10)
  SLLIW s11, s10, 2
  LA a0, get2
  SD a0, 384(sp)
  LD a0, 384(sp)
  ADD s11, a0, s11
  ADDI a0, zero, 32
  SW a0, 176(sp)
  LW a0, 176(sp)
  SW a0, 0(s11)
  ADDIW s11, s10, 1
  SLLIW s11, s11, 2
  LA a0, get2
  SD a0, 376(sp)
  LD a0, 376(sp)
  ADD s11, a0, s11
  SW s7, 0(s11)
  ADDIW s7, s10, 2
  LA s10, ii
  SW s7, 0(s10)
  SLTIU s7, s8, 1
  BNE s7, zero, bb107
  # implict jump to bb105
bb105:
  ADDI s7, zero, 1
  # implict jump to bb106
bb106:
  SLTIU s7, s7, 1
  BNE s7, zero, bb103
  JAL zero, bb96
bb107:
  ADD s7, zero, zero
  JAL zero, bb106
bb108:
  ADDI s7, zero, 1
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
  LW s5, 0(s4)
  XORI s5, s5, 42
  SLTIU s5, s5, 1
  BNE s5, zero, bb125
  # implict jump to bb112
bb112:
  LW s5, 0(s4)
  XORI s5, s5, 47
  SLTIU s5, s5, 1
  # implict jump to bb113
bb113:
  ADD a0, s5, zero
  SB a0, 71(sp)
  LB a0, 71(sp)
  BNE a0, zero, bb124
  # implict jump to bb114
bb114:
  LW s5, 0(s4)
  XORI s5, s5, 37
  SLTIU s5, s5, 1
  # implict jump to bb115
bb115:
  ADD s7, s5, zero
  BNE s7, zero, bb123
  # implict jump to bb116
bb116:
  LW s4, 0(s4)
  XORI s4, s4, 94
  SLTIU s4, s4, 1
  # implict jump to bb117
bb117:
  ADD s10, s4, zero
  BNE s10, zero, bb119
  # implict jump to bb118
bb118:
  LA s4, chat
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, chat
  SW s4, 0(s5)
  SLLIW s4, s4, 2
  LA s5, chas
  ADD s4, s5, s4
  ADDI s5, zero, 42
  SW s5, 0(s4)
  LB a0, 71(sp)
  ADD s4, a0, zero
  ADD s5, s10, zero
  ADD s6, s7, zero
  JAL zero, bb74
bb119:
  LA s4, chat
  LW s4, 0(s4)
  ADDI s5, zero, 1
  SUBW s5, s4, s5
  LA s6, chat
  SW s5, 0(s6)
  SLLIW s4, s4, 2
  LA s6, chas
  ADD s4, s6, s4
  LW s4, 0(s4)
  LA s6, c
  SW s4, 0(s6)
  LA s6, ii
  LW s6, 0(s6)
  SLLIW a0, s6, 2
  SW a0, 236(sp)
  LA a0, get2
  SD a0, 744(sp)
  LD a0, 744(sp)
  LW s1, 236(sp)
  ADD a0, a0, s1
  SD a0, 664(sp)
  ADDI a0, zero, 32
  SW a0, 120(sp)
  LW a0, 120(sp)
  LD s1, 664(sp)
  SW a0, 0(s1)
  ADDIW a0, s6, 1
  SW a0, 232(sp)
  LW a0, 232(sp)
  SLLIW a0, a0, 2
  SW a0, 316(sp)
  LA a0, get2
  SD a0, 400(sp)
  LD a0, 400(sp)
  LW s1, 316(sp)
  ADD a0, a0, s1
  SD a0, 640(sp)
  LD a0, 640(sp)
  SW s4, 0(a0)
  ADDIW s4, s6, 2
  LA s6, ii
  SW s4, 0(s6)
  SLTIU s4, s5, 1
  BNE s4, zero, bb122
  # implict jump to bb120
bb120:
  ADDI s4, zero, 1
  # implict jump to bb121
bb121:
  SLTIU s4, s4, 1
  BNE s4, zero, bb118
  JAL zero, bb111
bb122:
  ADD s4, zero, zero
  JAL zero, bb121
bb123:
  ADDI s4, zero, 1
  JAL zero, bb117
bb124:
  ADDI s5, zero, 1
  JAL zero, bb115
bb125:
  ADDI s5, zero, 1
  JAL zero, bb113
bb126:
  LA s2, chat
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LA s3, chas
  ADD s2, s3, s2
  LW s3, 0(s2)
  XORI s3, s3, 43
  SLTIU s3, s3, 1
  BNE s3, zero, bb146
  # implict jump to bb127
bb127:
  LW s3, 0(s2)
  XORI s3, s3, 45
  SLTIU s3, s3, 1
  # implict jump to bb128
bb128:
  ADD a0, s3, zero
  SB a0, 19(sp)
  LB a0, 19(sp)
  BNE a0, zero, bb145
  # implict jump to bb129
bb129:
  LW s3, 0(s2)
  XORI s3, s3, 42
  SLTIU s3, s3, 1
  # implict jump to bb130
bb130:
  ADD s5, s3, zero
  BNE s5, zero, bb144
  # implict jump to bb131
bb131:
  LW s3, 0(s2)
  XORI s3, s3, 47
  SLTIU s3, s3, 1
  # implict jump to bb132
bb132:
  ADD a0, s3, zero
  SB a0, 12(sp)
  LB a0, 12(sp)
  BNE a0, zero, bb143
  # implict jump to bb133
bb133:
  LW s3, 0(s2)
  XORI s3, s3, 37
  SLTIU s3, s3, 1
  # implict jump to bb134
bb134:
  ADD a0, s3, zero
  SB a0, 51(sp)
  LB a0, 51(sp)
  BNE a0, zero, bb142
  # implict jump to bb135
bb135:
  LW s2, 0(s2)
  XORI s2, s2, 94
  SLTIU s2, s2, 1
  # implict jump to bb136
bb136:
  ADD a0, s2, zero
  SB a0, 54(sp)
  LB a0, 54(sp)
  BNE a0, zero, bb138
  # implict jump to bb137
bb137:
  LA s2, chat
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s3, chat
  SW s2, 0(s3)
  SLLIW s2, s2, 2
  LA s3, chas
  ADD s2, s3, s2
  ADDI s3, zero, 45
  SW s3, 0(s2)
  ADD a0, s5, zero
  SB a0, 17(sp)
  LB a0, 54(sp)
  SB a0, 36(sp)
  LB a0, 51(sp)
  ADD s4, a0, zero
  LB a0, 12(sp)
  ADD s5, a0, zero
  LB a0, 19(sp)
  ADD s2, a0, zero
  JAL zero, bb72
bb138:
  LA s2, chat
  LW s2, 0(s2)
  ADDI s3, zero, 1
  SUBW a0, s2, s3
  SW a0, 220(sp)
  LA s3, chat
  LW a0, 220(sp)
  SW a0, 0(s3)
  SLLIW s2, s2, 2
  LA s3, chas
  ADD s2, s3, s2
  LW a0, 0(s2)
  SW a0, 240(sp)
  LA s3, c
  LW a0, 240(sp)
  SW a0, 0(s3)
  LA s3, ii
  LW s3, 0(s3)
  SLLIW s4, s3, 2
  LA a0, get2
  SD a0, 688(sp)
  LD a0, 688(sp)
  ADD s4, a0, s4
  ADDI a0, zero, 32
  SW a0, 184(sp)
  LW a0, 184(sp)
  SW a0, 0(s4)
  ADDIW s4, s3, 1
  SLLIW s4, s4, 2
  LA a0, get2
  SD a0, 680(sp)
  LD a0, 680(sp)
  ADD s4, a0, s4
  LW a0, 240(sp)
  SW a0, 0(s4)
  ADDIW s2, s3, 2
  LA s3, ii
  SW s2, 0(s3)
  LW a0, 220(sp)
  SLTIU s2, a0, 1
  BNE s2, zero, bb141
  # implict jump to bb139
bb139:
  ADDI s2, zero, 1
  # implict jump to bb140
bb140:
  SLTIU s2, s2, 1
  BNE s2, zero, bb137
  JAL zero, bb126
bb141:
  ADD s2, zero, zero
  JAL zero, bb140
bb142:
  ADDI s2, zero, 1
  JAL zero, bb136
bb143:
  ADDI s3, zero, 1
  JAL zero, bb134
bb144:
  ADDI s3, zero, 1
  JAL zero, bb132
bb145:
  ADDI s3, zero, 1
  JAL zero, bb130
bb146:
  ADDI s3, zero, 1
  JAL zero, bb128
bb147:
  LA a0, chat
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LA s0, chas
  ADD a0, s0, a0
  LW s0, 0(a0)
  XORI s0, s0, 43
  SLTIU s0, s0, 1
  BNE s0, zero, bb167
  # implict jump to bb148
bb148:
  LW s0, 0(a0)
  XORI s0, s0, 45
  SLTIU s0, s0, 1
  # implict jump to bb149
bb149:
  SB s0, 49(sp)
  LB s0, 49(sp)
  BNE s0, zero, bb166
  # implict jump to bb150
bb150:
  LW s0, 0(a0)
  XORI s0, s0, 42
  SLTIU s0, s0, 1
  # implict jump to bb151
bb151:
  SB s0, 4(sp)
  LB s0, 4(sp)
  BNE s0, zero, bb165
  # implict jump to bb152
bb152:
  LW s0, 0(a0)
  XORI s0, s0, 47
  SLTIU s0, s0, 1
  # implict jump to bb153
bb153:
  SB s0, 2(sp)
  LB s0, 2(sp)
  BNE s0, zero, bb164
  # implict jump to bb154
bb154:
  LW s0, 0(a0)
  XORI s0, s0, 37
  SLTIU s0, s0, 1
  # implict jump to bb155
bb155:
  SB s0, 1(sp)
  LB s0, 1(sp)
  BNE s0, zero, bb163
  # implict jump to bb156
bb156:
  LW a0, 0(a0)
  XORI a0, a0, 94
  SLTIU a0, a0, 1
  # implict jump to bb157
bb157:
  SB a0, 67(sp)
  LB a0, 67(sp)
  BNE a0, zero, bb159
  # implict jump to bb158
bb158:
  LA a0, chat
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s0, chat
  SW a0, 0(s0)
  SLLIW a0, a0, 2
  LA s0, chas
  ADD a0, s0, a0
  ADDI s0, zero, 43
  SW s0, 0(a0)
  LB a0, 2(sp)
  SB a0, 16(sp)
  LB a0, 67(sp)
  SB a0, 83(sp)
  LB a0, 49(sp)
  LB s0, 4(sp)
  ADD s1, s0, zero
  LB s0, 1(sp)
  JAL zero, bb70
bb159:
  LA a0, chat
  LW a0, 0(a0)
  ADDI s0, zero, 1
  SUBW s0, a0, s0
  LA s1, chat
  SW s0, 0(s1)
  SLLIW a0, a0, 2
  LA s1, chas
  ADD a0, s1, a0
  LW a0, 0(a0)
  SW a0, 252(sp)
  LA s1, c
  LW a0, 252(sp)
  SW a0, 0(s1)
  LA s1, ii
  LW s1, 0(s1)
  SLLIW a0, s1, 2
  SW a0, 212(sp)
  LA a0, get2
  SD a0, 704(sp)
  LD a0, 704(sp)
  LW s2, 212(sp)
  ADD a0, a0, s2
  SD a0, 656(sp)
  ADDI a0, zero, 32
  SW a0, 180(sp)
  LW a0, 180(sp)
  LD s2, 656(sp)
  SW a0, 0(s2)
  ADDIW a0, s1, 1
  SW a0, 224(sp)
  LW a0, 224(sp)
  SLLIW a0, a0, 2
  SW a0, 216(sp)
  LA a0, get2
  SD a0, 696(sp)
  LD a0, 696(sp)
  LW s2, 216(sp)
  ADD a0, a0, s2
  SD a0, 648(sp)
  LW a0, 252(sp)
  LD s2, 648(sp)
  SW a0, 0(s2)
  ADDIW a0, s1, 2
  LA s1, ii
  SW a0, 0(s1)
  SLTIU a0, s0, 1
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
  ADDI a0, zero, 1
  JAL zero, bb157
bb164:
  ADDI s0, zero, 1
  JAL zero, bb155
bb165:
  ADDI s0, zero, 1
  JAL zero, bb153
bb166:
  ADDI s0, zero, 1
  JAL zero, bb151
bb167:
  ADDI s0, zero, 1
  JAL zero, bb149
bb168:
  LA a0, chat
  LW a0, 0(a0)
  ADDI s2, zero, 1
  SW s2, 156(sp)
  LW s2, 156(sp)
  SUBW s2, a0, s2
  SW s2, 208(sp)
  LA s2, chat
  SD s2, 784(sp)
  LW s2, 208(sp)
  LD s4, 784(sp)
  SW s2, 0(s4)
  SLLIW a0, a0, 2
  LA s2, chas
  SD s2, 776(sp)
  LD s2, 776(sp)
  ADD a0, s2, a0
  LW a0, 0(a0)
  LA s2, c
  SD s2, 768(sp)
  LD s2, 768(sp)
  SW a0, 0(s2)
  LA a0, c
  LW a0, 0(a0)
  XORI a0, a0, 40
  BNE a0, zero, bb169
  JAL zero, bb68
bb169:
  LA a0, ii
  LW a0, 0(a0)
  SW a0, 244(sp)
  LW a0, 244(sp)
  SLLIW a0, a0, 2
  LA s2, get2
  SD s2, 760(sp)
  LD s2, 760(sp)
  ADD a0, s2, a0
  ADDI s2, zero, 32
  SW s2, 164(sp)
  LW s2, 164(sp)
  SW s2, 0(a0)
  LW a0, 244(sp)
  ADDIW a0, a0, 1
  SLLIW a0, a0, 2
  LA s2, get2
  SD s2, 752(sp)
  LD s2, 752(sp)
  ADD a0, s2, a0
  LA s2, c
  SD s2, 672(sp)
  LD s2, 672(sp)
  LW s2, 0(s2)
  SW s2, 200(sp)
  LW s2, 200(sp)
  SW s2, 0(a0)
  LW a0, 244(sp)
  ADDIW a0, a0, 2
  LA s2, ii
  SD s2, 736(sp)
  LD s2, 736(sp)
  SW a0, 0(s2)
  LA a0, chat
  LW a0, 0(a0)
  ADDI s2, zero, 1
  SW s2, 172(sp)
  LW s2, 172(sp)
  SUBW s2, a0, s2
  SW s2, 312(sp)
  LA s2, chat
  SD s2, 728(sp)
  LW s2, 312(sp)
  LD s4, 728(sp)
  SW s2, 0(s4)
  SLLIW a0, a0, 2
  LA s2, chas
  SD s2, 720(sp)
  LD s2, 720(sp)
  ADD a0, s2, a0
  LW a0, 0(a0)
  LA s2, c
  SD s2, 712(sp)
  LD s2, 712(sp)
  SW a0, 0(s2)
  LA a0, c
  LW a0, 0(a0)
  XORI a0, a0, 40
  BNE a0, zero, bb169
  JAL zero, bb68
bb170:
  LA a0, chat
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s2, chat
  SD s2, 800(sp)
  LD s2, 800(sp)
  SW a0, 0(s2)
  SLLIW a0, a0, 2
  LA s2, chas
  SD s2, 792(sp)
  LD s2, 792(sp)
  ADD a0, s2, a0
  ADDI s2, zero, 94
  SW s2, 152(sp)
  LW s2, 152(sp)
  SW s2, 0(a0)
  JAL zero, bb67
bb171:
  LA a0, chat
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s2, chat
  SD s2, 624(sp)
  LD s2, 624(sp)
  SW a0, 0(s2)
  SLLIW a0, a0, 2
  LA s2, chas
  SD s2, 808(sp)
  LD s2, 808(sp)
  ADD a0, s2, a0
  ADDI s2, zero, 40
  SW s2, 148(sp)
  LW s2, 148(sp)
  SW s2, 0(a0)
  JAL zero, bb66
bb172:
  LA a0, ii
  LW a0, 0(a0)
  SW a0, 296(sp)
  LW a0, 296(sp)
  SLLIW a0, a0, 2
  LA s2, get2
  SD s2, 592(sp)
  LD s2, 592(sp)
  ADD a0, s2, a0
  LD s2, 632(sp)
  LW s2, 0(s2)
  SW s2, 192(sp)
  LW s2, 192(sp)
  SW s2, 0(a0)
  LW a0, 296(sp)
  ADDIW a0, a0, 1
  LA s2, ii
  SD s2, 584(sp)
  LD s2, 584(sp)
  SW a0, 0(s2)
  LB a0, 101(sp)
  SB a0, 99(sp)
  LB a0, 70(sp)
  SB a0, 96(sp)
  LB a0, 60(sp)
  SB a0, 95(sp)
  LB a0, 61(sp)
  SB a0, 94(sp)
  LB a0, 81(sp)
  SB a0, 93(sp)
  LB a0, 48(sp)
  SB a0, 92(sp)
  LB a0, 21(sp)
  SB a0, 32(sp)
  LB a0, 73(sp)
  SB a0, 33(sp)
  ADD a0, s10, zero
  SB a0, 35(sp)
  ADD a0, s9, zero
  SB a0, 41(sp)
  LB a0, 59(sp)
  LB s2, 84(sp)
  ADD s6, s2, zero
  LB s2, 80(sp)
  ADD s5, s2, zero
  LB s2, 57(sp)
  ADD s4, s2, zero
  ADD s8, s3, zero
  LB s2, 69(sp)
  JAL zero, bb79
bb173:
  ADDI a0, zero, 1
  JAL zero, bb64
bb174:
  ADDI a0, zero, 57
  LW s2, 204(sp)
  SLT a0, a0, s2
  XORI a0, a0, 1
  JAL zero, bb62
bb175:
  LW s1, 260(sp)
  SLLIW s1, s1, 2
  LA s2, get
  ADD s1, s2, s1
  SW s0, 0(s1)
  LW s0, 260(sp)
  ADDIW s0, s0, 1
  CALL getch
  ADD s1, a0, zero
  ADD s2, s0, zero
  ADD s0, s1, zero
  JAL zero, bb1
bb176:
  XORI s1, s0, 10
  SLTU s1, zero, s1
  JAL zero, bb3
