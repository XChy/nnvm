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
  ADDI sp, sp, -304
  SD ra, 192(sp)
  SD s0, 200(sp)
  SD s1, 208(sp)
  SD s2, 216(sp)
  SD s3, 224(sp)
  SD s4, 232(sp)
  SD s5, 240(sp)
  SD s6, 248(sp)
  SD s7, 256(sp)
  SD s8, 264(sp)
  SD s9, 272(sp)
  LA s1, intt
  ADDI s0, zero, 0
  SW s0, 0(s1)
  LA s1, chat
  ADDI s0, zero, 0
  SW s0, 0(s1)
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  # implict jump to bb1
bb1:
  ADD s2, s0, zero
  ADD s0, s1, zero
  SW s0, 116(sp)
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
  LW s0, 0(a0)
  LW a0, 116(sp)
  BLT s0, a0, bb59
  # implict jump to bb5
bb5:
  LA a0, chat
  LW a0, 0(a0)
  BLT zero, a0, bb58
  # implict jump to bb6
bb6:
  LA a0, ii
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LA a0, get2
  ADD s0, a0, s0
  ADDI a0, zero, 64
  SW a0, 0(s0)
  LA s0, i
  ADDI a0, zero, 1
  SW a0, 0(s0)
  LA a0, i
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LA a0, get2
  ADD a0, a0, s0
  LW a0, 0(a0)
  XORI a0, a0, 64
  BNE a0, zero, bb8
  # implict jump to bb7
bb7:
  LA a0, ints
  LW a0, 4(a0)
  CALL putint
  ADD a0, zero, zero
  LD ra, 192(sp)
  LD s0, 200(sp)
  LD s1, 208(sp)
  LD s2, 216(sp)
  LD s3, 224(sp)
  LD s4, 232(sp)
  LD s5, 240(sp)
  LD s6, 248(sp)
  LD s7, 256(sp)
  LD s8, 264(sp)
  LD s9, 272(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
bb8:
  ADD a0, zero, zero
  ADD s1, zero, zero
  ADD s0, zero, zero
  # implict jump to bb9
bb9:
  ADD s2, s0, zero
  ADD s3, s1, zero
  ADD s4, a0, zero
  LA a0, i
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LA a0, get2
  ADD a0, a0, s0
  LW a0, 0(a0)
  XORI a0, a0, 43
  SLTIU a0, a0, 1
  BNE a0, zero, bb57
  # implict jump to bb10
bb10:
  LA a0, i
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LA a0, get2
  ADD a0, a0, s0
  LW a0, 0(a0)
  XORI a0, a0, 45
  SLTIU a0, a0, 1
  # implict jump to bb11
bb11:
  BNE a0, zero, bb56
  # implict jump to bb12
bb12:
  LA a0, i
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LA a0, get2
  ADD a0, a0, s0
  LW a0, 0(a0)
  XORI a0, a0, 42
  SLTIU a0, a0, 1
  # implict jump to bb13
bb13:
  BNE a0, zero, bb55
  # implict jump to bb14
bb14:
  LA a0, i
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LA a0, get2
  ADD a0, a0, s0
  LW a0, 0(a0)
  XORI a0, a0, 47
  SLTIU a0, a0, 1
  # implict jump to bb15
bb15:
  BNE a0, zero, bb54
  # implict jump to bb16
bb16:
  LA a0, i
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LA a0, get2
  ADD a0, a0, s0
  LW a0, 0(a0)
  XORI a0, a0, 37
  SLTIU a0, a0, 1
  # implict jump to bb17
bb17:
  BNE a0, zero, bb53
  # implict jump to bb18
bb18:
  LA a0, i
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LA a0, get2
  ADD a0, a0, s0
  LW a0, 0(a0)
  XORI a0, a0, 94
  SLTIU a0, a0, 1
  # implict jump to bb19
bb19:
  BNE a0, zero, bb28
  # implict jump to bb20
bb20:
  LA a0, i
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LA a0, get2
  ADD a0, a0, s0
  LW a0, 0(a0)
  XORI a0, a0, 32
  BNE a0, zero, bb24
  # implict jump to bb21
bb21:
  ADD s1, s2, zero
  ADD s0, s3, zero
  ADD a0, s4, zero
  # implict jump to bb22
bb22:
  ADD s2, a0, zero
  ADD s3, s0, zero
  ADD s4, s1, zero
  LA a0, i
  LW a0, 0(a0)
  ADDIW s0, a0, 1
  LA a0, i
  SW s0, 0(a0)
  LA a0, i
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LA a0, get2
  ADD a0, a0, s0
  LW a0, 0(a0)
  XORI a0, a0, 64
  BNE a0, zero, bb23
  JAL zero, bb7
bb23:
  ADD a0, s2, zero
  ADD s1, s3, zero
  ADD s0, s4, zero
  JAL zero, bb9
bb24:
  LA a0, i
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LA a0, get2
  ADD a0, a0, s0
  LW s0, 0(a0)
  ADDI a0, zero, 48
  SUBW s1, s0, a0
  LA a0, intt
  LW a0, 0(a0)
  ADDIW s0, a0, 1
  LA a0, intt
  SW s0, 0(a0)
  SLLIW s0, s0, 2
  LA a0, ints
  ADD s6, a0, s0
  SW s1, 0(s6)
  LA s0, ii
  ADDI a0, zero, 1
  SW a0, 0(s0)
  LA a0, i
  LW s0, 0(a0)
  LA a0, ii
  LW a0, 0(a0)
  ADDW a0, s0, a0
  SLLIW s0, a0, 2
  LA a0, get2
  ADD a0, a0, s0
  LW a0, 0(a0)
  XORI a0, a0, 32
  BNE a0, zero, bb26
  # implict jump to bb25
bb25:
  LA a0, i
  LW s0, 0(a0)
  LA a0, ii
  LW a0, 0(a0)
  ADDW s0, s0, a0
  ADDI a0, zero, 1
  SUBW s0, s0, a0
  LA a0, i
  SW s0, 0(a0)
  JAL zero, bb21
bb26:
  LA a0, i
  LW s5, 0(a0)
  # implict jump to bb27
bb27:
  LA a0, ii
  LW a0, 0(a0)
  ADDW a0, s5, a0
  SLLIW s0, a0, 2
  LA a0, get2
  ADD a0, a0, s0
  LW s0, 0(a0)
  ADDI a0, zero, 48
  SUBW s1, s0, a0
  LW s0, 0(s6)
  ADDI a0, zero, 10
  MULW a0, s0, a0
  SW a0, 0(s6)
  LW a0, 0(s6)
  ADDW a0, a0, s1
  SW a0, 0(s6)
  LA a0, ii
  LW a0, 0(a0)
  ADDIW s0, a0, 1
  LA a0, ii
  SW s0, 0(a0)
  LA a0, i
  LW s0, 0(a0)
  LA a0, ii
  LW a0, 0(a0)
  ADDW a0, s0, a0
  SLLIW s0, a0, 2
  LA a0, get2
  ADD a0, a0, s0
  LW a0, 0(a0)
  XORI a0, a0, 32
  BNE a0, zero, bb27
  JAL zero, bb25
bb28:
  LA a0, intt
  LW s2, 0(a0)
  ADDI a0, zero, 1
  SUBW s1, s2, a0
  LA a0, intt
  SW s1, 0(a0)
  SLLIW s0, s2, 2
  LA a0, ints
  ADD a0, a0, s0
  LW s3, 0(a0)
  ADDI a0, zero, 2
  SUBW s0, s2, a0
  LA a0, intt
  SW s0, 0(a0)
  SLLIW s0, s1, 2
  LA a0, ints
  ADD a0, a0, s0
  LW s2, 0(a0)
  LA a0, i
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LA a0, get2
  ADD a0, a0, s0
  LW a0, 0(a0)
  XORI a0, a0, 43
  SLTIU a0, a0, 1
  BNE a0, zero, bb52
  # implict jump to bb29
bb29:
  ADD a0, s4, zero
  # implict jump to bb30
bb30:
  ADD s1, a0, zero
  LA a0, i
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LA a0, get2
  ADD a0, a0, s0
  LW a0, 0(a0)
  XORI a0, a0, 45
  SLTIU a0, a0, 1
  BNE a0, zero, bb51
  # implict jump to bb31
bb31:
  ADD a0, s1, zero
  # implict jump to bb32
bb32:
  ADD s1, a0, zero
  LA a0, i
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LA a0, get2
  ADD a0, a0, s0
  LW a0, 0(a0)
  XORI a0, a0, 42
  SLTIU a0, a0, 1
  BNE a0, zero, bb50
  # implict jump to bb33
bb33:
  ADD a0, s1, zero
  # implict jump to bb34
bb34:
  ADD s1, a0, zero
  LA a0, i
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LA a0, get2
  ADD a0, a0, s0
  LW a0, 0(a0)
  XORI a0, a0, 47
  SLTIU a0, a0, 1
  BNE a0, zero, bb49
  # implict jump to bb35
bb35:
  ADD a0, s1, zero
  # implict jump to bb36
bb36:
  ADD s0, a0, zero
  LA a0, i
  LW a0, 0(a0)
  SLLIW s1, a0, 2
  LA a0, get2
  ADD a0, a0, s1
  LW a0, 0(a0)
  XORI a0, a0, 37
  SLTIU a0, a0, 1
  BNE a0, zero, bb48
  # implict jump to bb37
bb37:
  ADD a0, s0, zero
  # implict jump to bb38
bb38:
  ADD s1, a0, zero
  LA a0, i
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LA a0, get2
  ADD a0, a0, s0
  LW a0, 0(a0)
  XORI a0, a0, 94
  SLTIU a0, a0, 1
  BNE a0, zero, bb41
  # implict jump to bb39
bb39:
  ADD a0, s1, zero
  # implict jump to bb40
bb40:
  ADD s4, a0, zero
  LA a0, intt
  LW a0, 0(a0)
  ADDIW s0, a0, 1
  LA a0, intt
  SW s0, 0(a0)
  SLLIW s0, s0, 2
  LA a0, ints
  ADD a0, a0, s0
  SW s4, 0(a0)
  ADD s1, s3, zero
  ADD s0, s2, zero
  ADD a0, s4, zero
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
  ADD a0, s3, zero
  ADDI s0, zero, 1
  # implict jump to bb45
bb45:
  ADD s1, a0, zero
  MULW s0, s0, s2
  ADDI a0, zero, 1
  SUBW a0, s1, a0
  BNE a0, zero, bb47
  # implict jump to bb46
bb46:
  ADD a0, s0, zero
  JAL zero, bb43
bb47:
  JAL zero, bb45
bb48:
  REMW a0, s2, s3
  JAL zero, bb38
bb49:
  DIVW a0, s2, s3
  JAL zero, bb36
bb50:
  MULW a0, s3, s2
  JAL zero, bb34
bb51:
  SUBW a0, s2, s3
  JAL zero, bb32
bb52:
  ADDW a0, s3, s2
  JAL zero, bb30
bb53:
  ADDI a0, zero, 1
  JAL zero, bb19
bb54:
  ADDI a0, zero, 1
  JAL zero, bb17
bb55:
  ADDI a0, zero, 1
  JAL zero, bb15
bb56:
  ADDI a0, zero, 1
  JAL zero, bb13
bb57:
  ADDI a0, zero, 1
  JAL zero, bb11
bb58:
  LA a0, chat
  LW s1, 0(a0)
  ADDI a0, zero, 1
  SUBW s0, s1, a0
  LA a0, chat
  SW s0, 0(a0)
  SLLIW s0, s1, 2
  LA a0, chas
  ADD a0, a0, s0
  LW s2, 0(a0)
  LA a0, ii
  LW s1, 0(a0)
  SLLIW s0, s1, 2
  LA a0, get2
  ADD s0, a0, s0
  ADDI a0, zero, 32
  SW a0, 0(s0)
  ADDIW a0, s1, 1
  SLLIW s0, a0, 2
  LA a0, get2
  ADD a0, a0, s0
  SW s2, 0(a0)
  ADDIW s0, s1, 2
  LA a0, ii
  SW s0, 0(a0)
  JAL zero, bb5
bb59:
  ADD a0, s0, zero
  SW a0, 120(sp)
  ADD a0, zero, zero
  SB a0, 71(sp)
  ADD a0, zero, zero
  SB a0, 72(sp)
  ADD s0, zero, zero
  ADD a0, zero, zero
  SB a0, 10(sp)
  ADD a0, zero, zero
  SB a0, 11(sp)
  ADD a0, zero, zero
  SB a0, 12(sp)
  ADD a0, zero, zero
  SB a0, 13(sp)
  ADD s3, zero, zero
  ADD s2, zero, zero
  ADD s1, zero, zero
  ADD s4, zero, zero
  ADD a0, zero, zero
  SB a0, 73(sp)
  ADD a0, zero, zero
  SB a0, 74(sp)
  ADD a0, zero, zero
  SB a0, 75(sp)
  ADD s8, zero, zero
  ADD s7, zero, zero
  ADD s6, zero, zero
  ADD s5, zero, zero
  ADD a0, zero, zero
  SB a0, 76(sp)
  # implict jump to bb60
bb60:
  LB a0, 76(sp)
  SB a0, 91(sp)
  ADD a0, s5, zero
  SB a0, 88(sp)
  ADD a0, s6, zero
  SB a0, 89(sp)
  ADD a0, s7, zero
  SB a0, 92(sp)
  ADD a0, s8, zero
  SB a0, 37(sp)
  LB a0, 75(sp)
  SB a0, 36(sp)
  LB a0, 74(sp)
  ADD s5, a0, zero
  LB a0, 73(sp)
  SB a0, 83(sp)
  ADD a0, s4, zero
  SB a0, 34(sp)
  ADD a0, s1, zero
  SB a0, 93(sp)
  ADD a0, s2, zero
  SB a0, 94(sp)
  ADD a0, s3, zero
  SB a0, 95(sp)
  LB a0, 13(sp)
  SB a0, 96(sp)
  LB a0, 12(sp)
  SB a0, 97(sp)
  LB a0, 11(sp)
  SB a0, 98(sp)
  LB a0, 10(sp)
  SB a0, 99(sp)
  ADD a0, s0, zero
  SB a0, 100(sp)
  LB a0, 72(sp)
  SB a0, 69(sp)
  LB a0, 71(sp)
  SB a0, 101(sp)
  LW a0, 120(sp)
  SLLIW s0, a0, 2
  LA a0, get
  ADD a0, a0, s0
  SD a0, 280(sp)
  LD a0, 280(sp)
  LW s0, 0(a0)
  SLTI a0, s0, 48
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
  LD a0, 280(sp)
  LW a0, 0(a0)
  XORI a0, a0, 40
  SLTIU a0, a0, 1
  BNE a0, zero, bb171
  # implict jump to bb66
bb66:
  LD a0, 280(sp)
  LW a0, 0(a0)
  XORI a0, a0, 94
  SLTIU a0, a0, 1
  BNE a0, zero, bb170
  # implict jump to bb67
bb67:
  LD a0, 280(sp)
  LW a0, 0(a0)
  XORI a0, a0, 41
  SLTIU a0, a0, 1
  BNE a0, zero, bb168
  # implict jump to bb68
bb68:
  LD a0, 280(sp)
  LW a0, 0(a0)
  XORI a0, a0, 43
  SLTIU a0, a0, 1
  BNE a0, zero, bb147
  # implict jump to bb69
bb69:
  LB a0, 92(sp)
  ADD s0, a0, zero
  ADD s3, s5, zero
  LB a0, 93(sp)
  ADD s2, a0, zero
  LB a0, 69(sp)
  ADD s1, a0, zero
  LB a0, 101(sp)
  # implict jump to bb70
bb70:
  SB a0, 64(sp)
  ADD a0, s1, zero
  SB a0, 63(sp)
  ADD a0, s2, zero
  SB a0, 62(sp)
  ADD a0, s3, zero
  SB a0, 61(sp)
  ADD a0, s0, zero
  SB a0, 60(sp)
  LD a0, 280(sp)
  LW a0, 0(a0)
  XORI a0, a0, 45
  SLTIU a0, a0, 1
  BNE a0, zero, bb126
  # implict jump to bb71
bb71:
  LB a0, 36(sp)
  ADD s0, a0, zero
  LB a0, 97(sp)
  SB a0, 25(sp)
  LB a0, 98(sp)
  SB a0, 26(sp)
  LB a0, 99(sp)
  ADD s1, a0, zero
  LB a0, 100(sp)
  # implict jump to bb72
bb72:
  SB a0, 70(sp)
  ADD a0, s1, zero
  SB a0, 54(sp)
  LB a0, 26(sp)
  SB a0, 68(sp)
  LB a0, 25(sp)
  SB a0, 67(sp)
  ADD a0, s0, zero
  SB a0, 66(sp)
  LD a0, 280(sp)
  LW a0, 0(a0)
  XORI a0, a0, 42
  SLTIU a0, a0, 1
  BNE a0, zero, bb111
  # implict jump to bb73
bb73:
  LB a0, 34(sp)
  ADD s0, a0, zero
  LB a0, 95(sp)
  ADD s1, a0, zero
  LB a0, 96(sp)
  # implict jump to bb74
bb74:
  ADD s2, a0, zero
  ADD s3, s1, zero
  ADD a0, s0, zero
  SB a0, 1(sp)
  LD a0, 280(sp)
  LW a0, 0(a0)
  XORI a0, a0, 47
  SLTIU a0, a0, 1
  BNE a0, zero, bb96
  # implict jump to bb75
bb75:
  LB a0, 37(sp)
  ADD s0, a0, zero
  LB a0, 83(sp)
  ADD s1, a0, zero
  LB a0, 94(sp)
  # implict jump to bb76
bb76:
  SB a0, 5(sp)
  ADD a0, s1, zero
  SB a0, 4(sp)
  ADD a0, s0, zero
  SB a0, 3(sp)
  LD a0, 280(sp)
  LW a0, 0(a0)
  XORI a0, a0, 37
  SLTIU a0, a0, 1
  BNE a0, zero, bb81
  # implict jump to bb77
bb77:
  LB a0, 91(sp)
  ADD s0, a0, zero
  LB a0, 88(sp)
  ADD s1, a0, zero
  LB a0, 89(sp)
  # implict jump to bb78
bb78:
  ADD s4, a0, zero
  ADD s5, s1, zero
  ADD s6, s0, zero
  LA a0, ii
  LW s1, 0(a0)
  SLLIW a0, s1, 2
  SW a0, 108(sp)
  LA s0, get2
  LW a0, 108(sp)
  ADD a0, s0, a0
  SD a0, 288(sp)
  ADDI s0, zero, 32
  LD a0, 288(sp)
  SW s0, 0(a0)
  ADDIW s0, s1, 1
  LA a0, ii
  SW s0, 0(a0)
  ADD a0, s6, zero
  SB a0, 16(sp)
  ADD a0, s5, zero
  SB a0, 77(sp)
  ADD a0, s4, zero
  SB a0, 78(sp)
  LB a0, 60(sp)
  SB a0, 79(sp)
  LB a0, 3(sp)
  SB a0, 80(sp)
  LB a0, 66(sp)
  SB a0, 81(sp)
  LB a0, 61(sp)
  SB a0, 82(sp)
  LB a0, 4(sp)
  ADD s7, a0, zero
  LB a0, 1(sp)
  SB a0, 22(sp)
  LB a0, 62(sp)
  SB a0, 23(sp)
  LB a0, 5(sp)
  ADD s6, a0, zero
  ADD s5, s3, zero
  ADD s4, s2, zero
  LB a0, 67(sp)
  SB a0, 24(sp)
  LB a0, 68(sp)
  ADD s3, a0, zero
  LB a0, 54(sp)
  ADD s2, a0, zero
  LB a0, 70(sp)
  ADD s1, a0, zero
  LB a0, 63(sp)
  ADD s0, a0, zero
  LB a0, 64(sp)
  # implict jump to bb79
bb79:
  SB a0, 59(sp)
  ADD a0, s0, zero
  SB a0, 58(sp)
  ADD a0, s1, zero
  SB a0, 57(sp)
  ADD a0, s2, zero
  SB a0, 56(sp)
  LB a0, 24(sp)
  SB a0, 44(sp)
  ADD s1, s4, zero
  ADD s2, s5, zero
  ADD a0, s6, zero
  SB a0, 55(sp)
  LB a0, 23(sp)
  ADD s4, a0, zero
  LB a0, 22(sp)
  SB a0, 87(sp)
  LB a0, 82(sp)
  ADD s9, a0, zero
  LB a0, 81(sp)
  SB a0, 86(sp)
  LB a0, 80(sp)
  ADD s6, a0, zero
  LB a0, 79(sp)
  SB a0, 85(sp)
  LB a0, 78(sp)
  ADD s5, a0, zero
  LB a0, 77(sp)
  SB a0, 84(sp)
  LB a0, 16(sp)
  SB a0, 90(sp)
  LA a0, i
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 104(sp)
  LA s0, i
  LW a0, 104(sp)
  SW a0, 0(s0)
  LA a0, i
  LW a0, 0(a0)
  SW a0, 152(sp)
  LW a0, 116(sp)
  LW s0, 152(sp)
  BLT s0, a0, bb80
  JAL zero, bb5
bb80:
  LW a0, 152(sp)
  SW a0, 120(sp)
  LB a0, 59(sp)
  SB a0, 71(sp)
  LB a0, 58(sp)
  SB a0, 72(sp)
  LB a0, 57(sp)
  ADD s0, a0, zero
  LB a0, 56(sp)
  SB a0, 10(sp)
  ADD a0, s3, zero
  SB a0, 11(sp)
  LB a0, 44(sp)
  SB a0, 12(sp)
  ADD a0, s1, zero
  SB a0, 13(sp)
  ADD s3, s2, zero
  LB a0, 55(sp)
  ADD s2, a0, zero
  ADD s1, s4, zero
  LB a0, 87(sp)
  ADD s4, a0, zero
  ADD a0, s7, zero
  SB a0, 73(sp)
  ADD a0, s9, zero
  SB a0, 74(sp)
  LB a0, 86(sp)
  SB a0, 75(sp)
  ADD s8, s6, zero
  LB a0, 85(sp)
  ADD s7, a0, zero
  ADD s6, s5, zero
  LB a0, 84(sp)
  ADD s5, a0, zero
  LB a0, 90(sp)
  SB a0, 76(sp)
  JAL zero, bb60
bb81:
  LA a0, chat
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LA a0, chas
  ADD s0, a0, s0
  LW a0, 0(s0)
  XORI a0, a0, 42
  SLTIU a0, a0, 1
  BNE a0, zero, bb95
  # implict jump to bb82
bb82:
  LW a0, 0(s0)
  XORI a0, a0, 47
  SLTIU a0, a0, 1
  # implict jump to bb83
bb83:
  ADD s5, a0, zero
  BNE s5, zero, bb94
  # implict jump to bb84
bb84:
  LW a0, 0(s0)
  XORI a0, a0, 37
  SLTIU a0, a0, 1
  # implict jump to bb85
bb85:
  ADD s1, a0, zero
  BNE s1, zero, bb93
  # implict jump to bb86
bb86:
  LW a0, 0(s0)
  XORI a0, a0, 94
  SLTIU a0, a0, 1
  # implict jump to bb87
bb87:
  ADD s4, a0, zero
  BNE s4, zero, bb89
  # implict jump to bb88
bb88:
  LA a0, chat
  LW a0, 0(a0)
  ADDIW s0, a0, 1
  LA a0, chat
  SW s0, 0(a0)
  SLLIW s0, s0, 2
  LA a0, chas
  ADD s0, a0, s0
  ADDI a0, zero, 37
  SW a0, 0(s0)
  ADD s0, s5, zero
  ADD a0, s4, zero
  JAL zero, bb78
bb89:
  LA a0, chat
  LW a0, 0(a0)
  SW a0, 124(sp)
  ADDI s0, zero, 1
  LW a0, 124(sp)
  SUBW a0, a0, s0
  SW a0, 112(sp)
  LA s0, chat
  LW a0, 112(sp)
  SW a0, 0(s0)
  LW a0, 124(sp)
  SLLIW s0, a0, 2
  LA a0, chas
  ADD a0, a0, s0
  LW s6, 0(a0)
  LA a0, c
  SW s6, 0(a0)
  LA a0, ii
  LW a0, 0(a0)
  SW a0, 144(sp)
  LW a0, 144(sp)
  SLLIW a0, a0, 2
  SW a0, 148(sp)
  LA s0, get2
  LW a0, 148(sp)
  ADD a0, s0, a0
  SD a0, 296(sp)
  ADDI s0, zero, 32
  LD a0, 296(sp)
  SW s0, 0(a0)
  LW a0, 144(sp)
  ADDIW a0, a0, 1
  SLLIW a0, a0, 2
  SW a0, 156(sp)
  LA s0, get2
  LW a0, 156(sp)
  ADD a0, s0, a0
  SW s6, 0(a0)
  LW a0, 144(sp)
  ADDIW s0, a0, 2
  LA a0, ii
  SW s0, 0(a0)
  LW a0, 112(sp)
  SLTIU a0, a0, 1
  BNE a0, zero, bb92
  # implict jump to bb90
bb90:
  ADDI a0, zero, 1
  # implict jump to bb91
bb91:
  SLTIU a0, a0, 1
  BNE a0, zero, bb88
  JAL zero, bb81
bb92:
  ADD a0, zero, zero
  JAL zero, bb91
bb93:
  ADDI a0, zero, 1
  JAL zero, bb87
bb94:
  ADDI a0, zero, 1
  JAL zero, bb85
bb95:
  ADDI a0, zero, 1
  JAL zero, bb83
bb96:
  LA a0, chat
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LA a0, chas
  ADD s0, a0, s0
  LW a0, 0(s0)
  XORI a0, a0, 42
  SLTIU a0, a0, 1
  BNE a0, zero, bb110
  # implict jump to bb97
bb97:
  LW a0, 0(s0)
  XORI a0, a0, 47
  SLTIU a0, a0, 1
  # implict jump to bb98
bb98:
  SB a0, 6(sp)
  LB a0, 6(sp)
  BNE a0, zero, bb109
  # implict jump to bb99
bb99:
  LW a0, 0(s0)
  XORI a0, a0, 37
  SLTIU a0, a0, 1
  # implict jump to bb100
bb100:
  ADD s4, a0, zero
  BNE s4, zero, bb108
  # implict jump to bb101
bb101:
  LW a0, 0(s0)
  XORI a0, a0, 94
  SLTIU a0, a0, 1
  # implict jump to bb102
bb102:
  ADD s1, a0, zero
  BNE s1, zero, bb104
  # implict jump to bb103
bb103:
  LA a0, chat
  LW a0, 0(a0)
  ADDIW s0, a0, 1
  LA a0, chat
  SW s0, 0(a0)
  SLLIW s0, s0, 2
  LA a0, chas
  ADD s0, a0, s0
  ADDI a0, zero, 47
  SW a0, 0(s0)
  LB a0, 6(sp)
  ADD s0, a0, zero
  ADD a0, s4, zero
  JAL zero, bb76
bb104:
  LA a0, chat
  LW s5, 0(a0)
  ADDI a0, zero, 1
  SUBW a0, s5, a0
  SW a0, 140(sp)
  LA s0, chat
  LW a0, 140(sp)
  SW a0, 0(s0)
  SLLIW s0, s5, 2
  LA a0, chas
  ADD a0, a0, s0
  LW a0, 0(a0)
  SW a0, 136(sp)
  LA s0, c
  LW a0, 136(sp)
  SW a0, 0(s0)
  LA a0, ii
  LW a0, 0(a0)
  SW a0, 132(sp)
  LW a0, 132(sp)
  SLLIW s0, a0, 2
  LA a0, get2
  ADD s0, a0, s0
  ADDI a0, zero, 32
  SW a0, 0(s0)
  LW a0, 132(sp)
  ADDIW a0, a0, 1
  SLLIW s0, a0, 2
  LA a0, get2
  ADD s0, a0, s0
  LW a0, 136(sp)
  SW a0, 0(s0)
  LW a0, 132(sp)
  ADDIW s0, a0, 2
  LA a0, ii
  SW s0, 0(a0)
  LW a0, 140(sp)
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
  ADDI a0, zero, 1
  JAL zero, bb102
bb109:
  ADDI a0, zero, 1
  JAL zero, bb100
bb110:
  ADDI a0, zero, 1
  JAL zero, bb98
bb111:
  LA a0, chat
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LA a0, chas
  ADD s0, a0, s0
  LW a0, 0(s0)
  XORI a0, a0, 42
  SLTIU a0, a0, 1
  BNE a0, zero, bb125
  # implict jump to bb112
bb112:
  LW a0, 0(s0)
  XORI a0, a0, 47
  SLTIU a0, a0, 1
  # implict jump to bb113
bb113:
  ADD s3, a0, zero
  BNE s3, zero, bb124
  # implict jump to bb114
bb114:
  LW a0, 0(s0)
  XORI a0, a0, 37
  SLTIU a0, a0, 1
  # implict jump to bb115
bb115:
  SB a0, 2(sp)
  LB a0, 2(sp)
  BNE a0, zero, bb123
  # implict jump to bb116
bb116:
  LW a0, 0(s0)
  XORI a0, a0, 94
  SLTIU a0, a0, 1
  # implict jump to bb117
bb117:
  ADD s1, a0, zero
  BNE s1, zero, bb119
  # implict jump to bb118
bb118:
  LA a0, chat
  LW a0, 0(a0)
  ADDIW s0, a0, 1
  LA a0, chat
  SW s0, 0(a0)
  SLLIW s0, s0, 2
  LA a0, chas
  ADD s0, a0, s0
  ADDI a0, zero, 42
  SW a0, 0(s0)
  ADD s0, s3, zero
  LB a0, 2(sp)
  JAL zero, bb74
bb119:
  LA a0, chat
  LW s2, 0(a0)
  ADDI a0, zero, 1
  SUBW a0, s2, a0
  SW a0, 164(sp)
  LA s0, chat
  LW a0, 164(sp)
  SW a0, 0(s0)
  SLLIW s0, s2, 2
  LA a0, chas
  ADD a0, a0, s0
  LW s0, 0(a0)
  LA a0, c
  SW s0, 0(a0)
  LA a0, ii
  LW a0, 0(a0)
  SW a0, 160(sp)
  LW a0, 160(sp)
  SLLIW s2, a0, 2
  LA a0, get2
  ADD s2, a0, s2
  ADDI a0, zero, 32
  SW a0, 0(s2)
  LW a0, 160(sp)
  ADDIW a0, a0, 1
  SLLIW s2, a0, 2
  LA a0, get2
  ADD a0, a0, s2
  SW s0, 0(a0)
  LW a0, 160(sp)
  ADDIW s0, a0, 2
  LA a0, ii
  SW s0, 0(a0)
  LW a0, 164(sp)
  SLTIU a0, a0, 1
  BNE a0, zero, bb122
  # implict jump to bb120
bb120:
  ADDI a0, zero, 1
  # implict jump to bb121
bb121:
  SLTIU a0, a0, 1
  BNE a0, zero, bb118
  JAL zero, bb111
bb122:
  ADD a0, zero, zero
  JAL zero, bb121
bb123:
  ADDI a0, zero, 1
  JAL zero, bb117
bb124:
  ADDI a0, zero, 1
  JAL zero, bb115
bb125:
  ADDI a0, zero, 1
  JAL zero, bb113
bb126:
  LA a0, chat
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LA a0, chas
  ADD s0, a0, s0
  LW a0, 0(s0)
  XORI a0, a0, 43
  SLTIU a0, a0, 1
  BNE a0, zero, bb146
  # implict jump to bb127
bb127:
  LW a0, 0(s0)
  XORI a0, a0, 45
  SLTIU a0, a0, 1
  # implict jump to bb128
bb128:
  SB a0, 14(sp)
  LB a0, 14(sp)
  BNE a0, zero, bb145
  # implict jump to bb129
bb129:
  LW a0, 0(s0)
  XORI a0, a0, 42
  SLTIU a0, a0, 1
  # implict jump to bb130
bb130:
  ADD s1, a0, zero
  BNE s1, zero, bb144
  # implict jump to bb131
bb131:
  LW a0, 0(s0)
  XORI a0, a0, 47
  SLTIU a0, a0, 1
  # implict jump to bb132
bb132:
  ADD s3, a0, zero
  BNE s3, zero, bb143
  # implict jump to bb133
bb133:
  LW a0, 0(s0)
  XORI a0, a0, 37
  SLTIU a0, a0, 1
  # implict jump to bb134
bb134:
  ADD s4, a0, zero
  BNE s4, zero, bb142
  # implict jump to bb135
bb135:
  LW a0, 0(s0)
  XORI a0, a0, 94
  SLTIU a0, a0, 1
  # implict jump to bb136
bb136:
  ADD s5, a0, zero
  BNE s5, zero, bb138
  # implict jump to bb137
bb137:
  LA a0, chat
  LW a0, 0(a0)
  ADDIW s0, a0, 1
  LA a0, chat
  SW s0, 0(a0)
  SLLIW s0, s0, 2
  LA a0, chas
  ADD s0, a0, s0
  ADDI a0, zero, 45
  SW a0, 0(s0)
  ADD s0, s1, zero
  ADD a0, s5, zero
  SB a0, 25(sp)
  ADD a0, s4, zero
  SB a0, 26(sp)
  ADD s1, s3, zero
  LB a0, 14(sp)
  JAL zero, bb72
bb138:
  LA a0, chat
  LW s2, 0(a0)
  ADDI a0, zero, 1
  SUBW a0, s2, a0
  SW a0, 184(sp)
  LA s0, chat
  LW a0, 184(sp)
  SW a0, 0(s0)
  SLLIW s0, s2, 2
  LA a0, chas
  ADD a0, a0, s0
  LW a0, 0(a0)
  SW a0, 180(sp)
  LA s0, c
  LW a0, 180(sp)
  SW a0, 0(s0)
  LA a0, ii
  LW a0, 0(a0)
  SW a0, 176(sp)
  LW a0, 176(sp)
  SLLIW s0, a0, 2
  LA a0, get2
  ADD s0, a0, s0
  ADDI a0, zero, 32
  SW a0, 0(s0)
  LW a0, 176(sp)
  ADDIW a0, a0, 1
  SLLIW s0, a0, 2
  LA a0, get2
  ADD s0, a0, s0
  LW a0, 180(sp)
  SW a0, 0(s0)
  LW a0, 176(sp)
  ADDIW s0, a0, 2
  LA a0, ii
  SW s0, 0(a0)
  LW a0, 184(sp)
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
  ADDI a0, zero, 1
  JAL zero, bb136
bb143:
  ADDI a0, zero, 1
  JAL zero, bb134
bb144:
  ADDI a0, zero, 1
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
  SLLIW s0, a0, 2
  LA a0, chas
  ADD s0, a0, s0
  LW a0, 0(s0)
  XORI a0, a0, 43
  SLTIU a0, a0, 1
  BNE a0, zero, bb167
  # implict jump to bb148
bb148:
  LW a0, 0(s0)
  XORI a0, a0, 45
  SLTIU a0, a0, 1
  # implict jump to bb149
bb149:
  ADD s4, a0, zero
  BNE s4, zero, bb166
  # implict jump to bb150
bb150:
  LW a0, 0(s0)
  XORI a0, a0, 42
  SLTIU a0, a0, 1
  # implict jump to bb151
bb151:
  SB a0, 49(sp)
  LB a0, 49(sp)
  BNE a0, zero, bb165
  # implict jump to bb152
bb152:
  LW a0, 0(s0)
  XORI a0, a0, 47
  SLTIU a0, a0, 1
  # implict jump to bb153
bb153:
  SB a0, 65(sp)
  LB a0, 65(sp)
  BNE a0, zero, bb164
  # implict jump to bb154
bb154:
  LW a0, 0(s0)
  XORI a0, a0, 37
  SLTIU a0, a0, 1
  # implict jump to bb155
bb155:
  ADD s5, a0, zero
  BNE s5, zero, bb163
  # implict jump to bb156
bb156:
  LW a0, 0(s0)
  XORI a0, a0, 94
  SLTIU a0, a0, 1
  # implict jump to bb157
bb157:
  SB a0, 50(sp)
  LB a0, 50(sp)
  BNE a0, zero, bb159
  # implict jump to bb158
bb158:
  LA a0, chat
  LW a0, 0(a0)
  ADDIW s0, a0, 1
  LA a0, chat
  SW s0, 0(a0)
  SLLIW s0, s0, 2
  LA a0, chas
  ADD s0, a0, s0
  ADDI a0, zero, 43
  SW a0, 0(s0)
  LB a0, 65(sp)
  ADD s0, a0, zero
  LB a0, 50(sp)
  ADD s3, a0, zero
  ADD s2, s4, zero
  LB a0, 49(sp)
  ADD s1, a0, zero
  ADD a0, s5, zero
  JAL zero, bb70
bb159:
  LA a0, chat
  LW s0, 0(a0)
  ADDI a0, zero, 1
  SUBW s1, s0, a0
  LA a0, chat
  SW s1, 0(a0)
  SLLIW s0, s0, 2
  LA a0, chas
  ADD a0, a0, s0
  LW s2, 0(a0)
  LA a0, c
  SW s2, 0(a0)
  LA a0, ii
  LW s3, 0(a0)
  SLLIW s0, s3, 2
  LA a0, get2
  ADD s0, a0, s0
  ADDI a0, zero, 32
  SW a0, 0(s0)
  ADDIW a0, s3, 1
  SLLIW s0, a0, 2
  LA a0, get2
  ADD a0, a0, s0
  SW s2, 0(a0)
  ADDIW s0, s3, 2
  LA a0, ii
  SW s0, 0(a0)
  SLTIU a0, s1, 1
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
  ADDI a0, zero, 1
  JAL zero, bb155
bb165:
  ADDI a0, zero, 1
  JAL zero, bb153
bb166:
  ADDI a0, zero, 1
  JAL zero, bb151
bb167:
  ADDI a0, zero, 1
  JAL zero, bb149
bb168:
  LA a0, chat
  LW s1, 0(a0)
  ADDI a0, zero, 1
  SUBW s0, s1, a0
  LA a0, chat
  SW s0, 0(a0)
  SLLIW s0, s1, 2
  LA a0, chas
  ADD a0, a0, s0
  LW s0, 0(a0)
  LA a0, c
  SW s0, 0(a0)
  LA a0, c
  LW a0, 0(a0)
  XORI a0, a0, 40
  BNE a0, zero, bb169
  JAL zero, bb68
bb169:
  LA a0, ii
  LW s0, 0(a0)
  SLLIW s1, s0, 2
  LA a0, get2
  ADD s1, a0, s1
  ADDI a0, zero, 32
  SW a0, 0(s1)
  ADDIW a0, s0, 1
  SLLIW s1, a0, 2
  LA a0, get2
  ADD s1, a0, s1
  LA a0, c
  LW a0, 0(a0)
  SW a0, 0(s1)
  ADDIW s0, s0, 2
  LA a0, ii
  SW s0, 0(a0)
  LA a0, chat
  LW s1, 0(a0)
  ADDI a0, zero, 1
  SUBW s0, s1, a0
  LA a0, chat
  SW s0, 0(a0)
  SLLIW s0, s1, 2
  LA a0, chas
  ADD a0, a0, s0
  LW s0, 0(a0)
  LA a0, c
  SW s0, 0(a0)
  LA a0, c
  LW a0, 0(a0)
  XORI a0, a0, 40
  BNE a0, zero, bb169
  JAL zero, bb68
bb170:
  LA a0, chat
  LW a0, 0(a0)
  ADDIW s0, a0, 1
  LA a0, chat
  SW s0, 0(a0)
  SLLIW s0, s0, 2
  LA a0, chas
  ADD s0, a0, s0
  ADDI a0, zero, 94
  SW a0, 0(s0)
  JAL zero, bb67
bb171:
  LA a0, chat
  LW a0, 0(a0)
  ADDIW s0, a0, 1
  LA a0, chat
  SW s0, 0(a0)
  SLLIW s0, s0, 2
  LA a0, chas
  ADD s0, a0, s0
  ADDI a0, zero, 40
  SW a0, 0(s0)
  JAL zero, bb66
bb172:
  LA a0, ii
  LW s1, 0(a0)
  SLLIW s0, s1, 2
  LA a0, get2
  ADD s0, a0, s0
  LD a0, 280(sp)
  LW a0, 0(a0)
  SW a0, 0(s0)
  ADDIW s0, s1, 1
  LA a0, ii
  SW s0, 0(a0)
  LB a0, 91(sp)
  SB a0, 16(sp)
  LB a0, 88(sp)
  SB a0, 77(sp)
  LB a0, 89(sp)
  SB a0, 78(sp)
  LB a0, 92(sp)
  SB a0, 79(sp)
  LB a0, 37(sp)
  SB a0, 80(sp)
  LB a0, 36(sp)
  SB a0, 81(sp)
  ADD a0, s5, zero
  SB a0, 82(sp)
  LB a0, 83(sp)
  ADD s7, a0, zero
  LB a0, 34(sp)
  SB a0, 22(sp)
  LB a0, 93(sp)
  SB a0, 23(sp)
  LB a0, 94(sp)
  ADD s6, a0, zero
  LB a0, 95(sp)
  ADD s5, a0, zero
  LB a0, 96(sp)
  ADD s4, a0, zero
  LB a0, 97(sp)
  SB a0, 24(sp)
  LB a0, 98(sp)
  ADD s3, a0, zero
  LB a0, 99(sp)
  ADD s2, a0, zero
  LB a0, 100(sp)
  ADD s1, a0, zero
  LB a0, 69(sp)
  ADD s0, a0, zero
  LB a0, 101(sp)
  JAL zero, bb79
bb173:
  ADDI a0, zero, 1
  JAL zero, bb64
bb174:
  ADDI a0, zero, 57
  SLT a0, a0, s0
  XORI a0, a0, 1
  JAL zero, bb62
bb175:
  LW s0, 116(sp)
  SLLIW s1, s0, 2
  LA s0, get
  ADD s0, s0, s1
  SW s2, 0(s0)
  LW s0, 116(sp)
  ADDIW s1, s0, 1
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb1
bb176:
  XORI s0, s2, 10
  SLTU s0, zero, s0
  JAL zero, bb3
