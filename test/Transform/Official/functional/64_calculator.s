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
  ADDI sp, sp, -1152
  SD ra, 440(sp)
  SD s0, 448(sp)
  SD s1, 456(sp)
  SD s3, 496(sp)
  SD s4, 504(sp)
  SD s5, 512(sp)
  SD s6, 528(sp)
  SD s2, 544(sp)
  SD s7, 552(sp)
  SD s8, 560(sp)
  SD s9, 568(sp)
  SD s10, 576(sp)
  SD s11, 584(sp)
  LA s0, intt
  ADDI s1, zero, 0
  LA s2, chat
  ADDI s3, zero, 0
  SW s1, 0(s0)
  ADD s1, zero, zero
  SW s3, 0(s2)
  CALL getch
  ADD s2, a0, zero
  # implict jump to bb1
bb1:   # loop depth 1
  SW s1, 352(sp)
  XORI s0, s2, 13
  BNE s0, zero, bb181
  # implict jump to bb2
bb2:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb3
bb3:   # loop depth 1
  BNE s0, zero, bb180
  # implict jump to bb4
bb4:   # loop depth 0
  LA a0, i
  LW a0, 0(a0)
  SW a0, 332(sp)
  LW s0, 352(sp)
  LW a0, 332(sp)
  BLT a0, s0, bb61
  # implict jump to bb5
bb5:   # loop depth 1
  LA a0, chat
  LW a0, 0(a0)
  BLT zero, a0, bb60
  # implict jump to bb6
bb6:   # loop depth 0
  LA a0, ii
  LA s0, get2
  ADDI s1, zero, 64
  LA s2, i
  LW a0, 0(a0)
  ADDI s3, zero, 1
  LA s4, get2
  SLLIW a0, a0, 2
  ADD a0, s0, a0
  SW s1, 0(a0)
  SW s3, 0(s2)
  LW a0, 4(s4)
  XORI a0, a0, 64
  BNE a0, zero, bb8
  # implict jump to bb7
bb7:   # loop depth 0
  LA a0, ints
  LW a0, 4(a0)
  CALL putint
  ADD a0, zero, zero
  LD ra, 440(sp)
  LD s0, 448(sp)
  LD s1, 456(sp)
  LD s3, 496(sp)
  LD s4, 504(sp)
  LD s5, 512(sp)
  LD s6, 528(sp)
  LD s2, 544(sp)
  LD s7, 552(sp)
  LD s8, 560(sp)
  LD s9, 568(sp)
  LD s10, 576(sp)
  LD s11, 584(sp)
  ADDI sp, sp, 1152
  JALR zero, 0(ra)
bb8:   # loop depth 0
  ADD s5, zero, zero
  ADD s6, zero, zero
  ADD s3, zero, zero
  # implict jump to bb9
bb9:   # loop depth 1
  LA a0, i
  LA s1, get2
  LW s0, 0(a0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 43
  SLTIU s0, s0, 1
  BNE s0, zero, bb59
  # implict jump to bb10
bb10:   # loop depth 1
  LA s0, i
  LA s1, get2
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 45
  SLTIU s0, s0, 1
  # implict jump to bb11
bb11:   # loop depth 1
  BNE s0, zero, bb58
  # implict jump to bb12
bb12:   # loop depth 1
  LA s0, i
  LA s1, get2
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 42
  SLTIU s0, s0, 1
  # implict jump to bb13
bb13:   # loop depth 1
  BNE s0, zero, bb57
  # implict jump to bb14
bb14:   # loop depth 1
  LA s0, i
  LA s1, get2
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 47
  SLTIU s0, s0, 1
  # implict jump to bb15
bb15:   # loop depth 1
  BNE s0, zero, bb56
  # implict jump to bb16
bb16:   # loop depth 1
  LA s0, i
  LA s1, get2
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 37
  SLTIU s0, s0, 1
  # implict jump to bb17
bb17:   # loop depth 1
  BNE s0, zero, bb55
  # implict jump to bb18
bb18:   # loop depth 1
  LA s0, i
  LA s1, get2
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 94
  SLTIU s0, s0, 1
  # implict jump to bb19
bb19:   # loop depth 1
  BNE s0, zero, bb30
  # implict jump to bb20
bb20:   # loop depth 1
  LA s0, i
  LA s1, get2
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 32
  BNE s0, zero, bb24
  # implict jump to bb21
bb21:   # loop depth 1
  # implict jump to bb22
bb22:   # loop depth 1
  LA s4, i
  LA s7, i
  LA s8, get2
  LW s4, 0(s4)
  ADDIW s2, s4, 1
  SLLIW s4, s2, 2
  SW s2, 0(s7)
  ADD s2, s8, s4
  LW s2, 0(s2)
  XORI s2, s2, 64
  BNE s2, zero, bb23
  JAL zero, bb7
bb23:   # loop depth 1
  JAL zero, bb9
bb24:   # loop depth 1
  LA s0, i
  LA s1, get2
  LA s2, intt
  LA s4, intt
  LW s0, 0(s0)
  LA s7, ints
  LA s8, ii
  ADDI s9, zero, 1
  LA s10, i
  LA s11, get2
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  LW s1, 0(s2)
  ADDIW s0, s0, -48
  ADDIW s2, s1, 1
  SLLIW s1, s1, 2
  ADD s1, s7, s1
  SW s2, 0(s4)
  SW s0, 4(s1)
  SW s9, 0(s8)
  LW s0, 0(s10)
  ADDIW s0, s0, 1
  SLLIW s0, s0, 2
  ADD s0, s11, s0
  LW s0, 0(s0)
  XORI s0, s0, 32
  BNE s0, zero, bb26
  # implict jump to bb25
bb25:   # loop depth 1
  LA s0, i
  LA s1, ii
  LA s2, i
  LW s0, 0(s0)
  LW s1, 0(s1)
  ADDW s0, s0, s1
  ADDIW s0, s0, -1
  SW s0, 0(s2)
  JAL zero, bb21
bb26:   # loop depth 1
  LA s1, i
  LA s4, ints
  SLLIW s0, s2, 2
  LW s1, 0(s1)
  ADD s2, s4, s0
  LW s0, 0(s2)
  # implict jump to bb27
bb27:   # loop depth 2
  LA s4, ii
  LA s7, get2
  ADDI s8, zero, 10
  LA s9, ii
  LW s4, 0(s4)
  LA s10, ii
  LA s11, get2
  ADDW s4, s1, s4
  SLLIW s4, s4, 2
  ADD s4, s7, s4
  LW s4, 0(s4)
  LW s7, 0(s2)
  ADDIW s4, s4, -48
  ADDW s0, s0, s4
  MULW s4, s7, s8
  SW s4, 0(s2)
  LW s4, 0(s9)
  ADDIW s4, s4, 1
  ADDW s7, s1, s4
  SW s4, 0(s10)
  SLLIW s4, s7, 2
  ADD s4, s11, s4
  LW s4, 0(s4)
  XORI s4, s4, 32
  BNE s4, zero, bb29
  # implict jump to bb28
bb28:   # loop depth 1
  SW s0, 0(s2)
  JAL zero, bb25
bb29:   # loop depth 2
  JAL zero, bb27
bb30:   # loop depth 1
  LA s0, intt
  LA s3, intt
  LA s4, ints
  LA s6, intt
  LW s1, 0(s0)
  LA s7, ints
  LA s8, i
  LA s9, get2
  ADDIW s2, s1, -1
  SLLIW s0, s1, 2
  ADD s0, s4, s0
  SW s2, 0(s3)
  LW s3, 0(s0)
  ADDIW s1, s1, -2
  SLLIW s2, s2, 2
  ADD s2, s7, s2
  SW s1, 0(s6)
  LW s6, 0(s2)
  LW s2, 0(s8)
  SLLIW s2, s2, 2
  ADD s2, s9, s2
  LW s2, 0(s2)
  XORI s2, s2, 43
  SLTIU s2, s2, 1
  BNE s2, zero, bb54
  # implict jump to bb31
bb31:   # loop depth 1
  ADD s4, s5, zero
  # implict jump to bb32
bb32:   # loop depth 1
  LA s2, i
  LA s5, get2
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  ADD s2, s5, s2
  LW s2, 0(s2)
  XORI s2, s2, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb53
  # implict jump to bb33
bb33:   # loop depth 1
  # implict jump to bb34
bb34:   # loop depth 1
  LA s2, i
  LA s5, get2
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  ADD s2, s5, s2
  LW s2, 0(s2)
  XORI s2, s2, 42
  SLTIU s2, s2, 1
  BNE s2, zero, bb52
  # implict jump to bb35
bb35:   # loop depth 1
  # implict jump to bb36
bb36:   # loop depth 1
  LA s2, i
  LA s5, get2
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  ADD s2, s5, s2
  LW s2, 0(s2)
  XORI s2, s2, 47
  SLTIU s2, s2, 1
  BNE s2, zero, bb51
  # implict jump to bb37
bb37:   # loop depth 1
  # implict jump to bb38
bb38:   # loop depth 1
  LA s2, i
  LA s5, get2
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  ADD s2, s5, s2
  LW s2, 0(s2)
  XORI s2, s2, 37
  SLTIU s2, s2, 1
  BNE s2, zero, bb50
  # implict jump to bb39
bb39:   # loop depth 1
  # implict jump to bb40
bb40:   # loop depth 1
  LA s2, i
  LA s5, get2
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  ADD s2, s5, s2
  LW s2, 0(s2)
  XORI s2, s2, 94
  SLTIU s2, s2, 1
  BNE s2, zero, bb43
  # implict jump to bb41
bb41:   # loop depth 1
  # implict jump to bb42
bb42:   # loop depth 1
  LA s2, intt
  LA s8, intt
  LA s9, ints
  LW s7, 0(s2)
  ADD s5, s4, zero
  ADDIW s1, s7, 1
  SLLIW s7, s7, 2
  ADD s7, s9, s7
  SW s1, 0(s8)
  SW s4, 4(s7)
  JAL zero, bb22
bb43:   # loop depth 1
  BNE s3, zero, bb46
  # implict jump to bb44
bb44:   # loop depth 1
  ADDI s4, zero, 1
  # implict jump to bb45
bb45:   # loop depth 1
  JAL zero, bb42
bb46:   # loop depth 1
  ADD s2, s3, zero
  ADDI s4, zero, 1
  # implict jump to bb47
bb47:   # loop depth 2
  MULW s4, s4, s6
  ADDIW s2, s2, -1
  BNE s2, zero, bb49
  # implict jump to bb48
bb48:   # loop depth 1
  JAL zero, bb45
bb49:   # loop depth 2
  JAL zero, bb47
bb50:   # loop depth 1
  REMW s4, s6, s3
  JAL zero, bb40
bb51:   # loop depth 1
  DIVW s4, s6, s3
  JAL zero, bb38
bb52:   # loop depth 1
  MULW s4, s3, s6
  JAL zero, bb36
bb53:   # loop depth 1
  SUBW s4, s6, s3
  JAL zero, bb34
bb54:   # loop depth 1
  ADDW s4, s3, s6
  JAL zero, bb32
bb55:   # loop depth 1
  ADDI s0, zero, 1
  JAL zero, bb19
bb56:   # loop depth 1
  ADDI s0, zero, 1
  JAL zero, bb17
bb57:   # loop depth 1
  ADDI s0, zero, 1
  JAL zero, bb15
bb58:   # loop depth 1
  ADDI s0, zero, 1
  JAL zero, bb13
bb59:   # loop depth 1
  ADDI s0, zero, 1
  JAL zero, bb11
bb60:   # loop depth 1
  LA a0, chat
  LA s1, chat
  LA s2, chas
  LA s3, ii
  LW a0, 0(a0)
  LA s4, get2
  ADDI s5, zero, 32
  LA s6, ii
  ADDIW s0, a0, -1
  SLLIW a0, a0, 2
  ADD a0, s2, a0
  SW s0, 0(s1)
  LW a0, 0(a0)
  LW s0, 0(s3)
  SLLIW s1, s0, 2
  ADDIW s2, s0, 2
  ADD s0, s4, s1
  SW s5, 0(s0)
  SW a0, 4(s0)
  SW s2, 0(s6)
  JAL zero, bb5
bb61:   # loop depth 0
  LW a0, 332(sp)
  SW a0, 332(sp)
  ADD a0, zero, zero
  SB a0, 75(sp)
  ADD a0, zero, zero
  SB a0, 84(sp)
  ADD a0, zero, zero
  SB a0, 111(sp)
  ADD a0, zero, zero
  SB a0, 110(sp)
  ADD a0, zero, zero
  SB a0, 109(sp)
  ADD a0, zero, zero
  SB a0, 108(sp)
  ADD a0, zero, zero
  SB a0, 107(sp)
  ADD a0, zero, zero
  SB a0, 106(sp)
  ADD a0, zero, zero
  SB a0, 53(sp)
  ADD a0, zero, zero
  SB a0, 52(sp)
  ADD a0, zero, zero
  SB a0, 51(sp)
  ADD a0, zero, zero
  SB a0, 50(sp)
  ADD a0, zero, zero
  SB a0, 49(sp)
  ADD a0, zero, zero
  SB a0, 20(sp)
  ADD a0, zero, zero
  SB a0, 48(sp)
  ADD a0, zero, zero
  ADD s1, zero, zero
  SB s1, 37(sp)
  ADD s1, zero, zero
  ADD s3, zero, zero
  # implict jump to bb62
bb62:   # loop depth 1
  LW s0, 332(sp)
  SW s0, 332(sp)
  LA s2, get
  SD s2, 856(sp)
  LW s0, 332(sp)
  SLLIW s4, s0, 2
  SB s3, 134(sp)
  LD s2, 856(sp)
  ADD s3, s2, s4
  SB s1, 135(sp)
  LW s1, 0(s3)
  SW s1, 308(sp)
  LB s1, 37(sp)
  SB s1, 126(sp)
  LB s1, 48(sp)
  SB s1, 125(sp)
  LB s0, 20(sp)
  SB s0, 20(sp)
  LB s0, 20(sp)
  SB s0, 124(sp)
  LB s0, 49(sp)
  SB s0, 10(sp)
  LW s0, 308(sp)
  SLTI s0, s0, 48
  SB s0, 55(sp)
  LB s0, 50(sp)
  SB s0, 123(sp)
  LB s0, 51(sp)
  SB s0, 122(sp)
  LB s0, 52(sp)
  SB s0, 34(sp)
  LB s0, 53(sp)
  SB s0, 121(sp)
  LB s0, 106(sp)
  SB s0, 120(sp)
  LB s0, 107(sp)
  SB s0, 119(sp)
  LB s0, 108(sp)
  SB s0, 117(sp)
  LB s0, 109(sp)
  SB s0, 116(sp)
  LB s0, 110(sp)
  SB s0, 115(sp)
  LB s0, 111(sp)
  SB s0, 114(sp)
  LB s1, 84(sp)
  LB s0, 75(sp)
  SB s0, 113(sp)
  LB s0, 55(sp)
  XORI s7, s0, 1
  BNE s7, zero, bb179
  # implict jump to bb63
bb63:   # loop depth 1
  ADD s7, zero, zero
  # implict jump to bb64
bb64:   # loop depth 1
  BNE s7, zero, bb178
  # implict jump to bb65
bb65:   # loop depth 1
  ADD s7, zero, zero
  # implict jump to bb66
bb66:   # loop depth 1
  XORI s7, s7, 1
  SLTIU s7, s7, 1
  BNE s7, zero, bb177
  # implict jump to bb67
bb67:   # loop depth 1
  LW s0, 308(sp)
  XORI s7, s0, 40
  SLTIU s7, s7, 1
  BNE s7, zero, bb176
  # implict jump to bb68
bb68:   # loop depth 1
  LW s0, 308(sp)
  XORI s7, s0, 94
  SLTIU s7, s7, 1
  BNE s7, zero, bb175
  # implict jump to bb69
bb69:   # loop depth 1
  LW s0, 308(sp)
  XORI s7, s0, 41
  SLTIU s7, s7, 1
  BNE s7, zero, bb170
  # implict jump to bb70
bb70:   # loop depth 1
  LW s0, 308(sp)
  XORI s7, s0, 43
  SLTIU s7, s7, 1
  BNE s7, zero, bb149
  # implict jump to bb71
bb71:   # loop depth 1
  LB s8, 10(sp)
  LB s10, 34(sp)
  LB s0, 113(sp)
  # implict jump to bb72
bb72:   # loop depth 1
  LW s2, 308(sp)
  XORI s7, s2, 45
  SB s0, 88(sp)
  SB s1, 89(sp)
  SB s10, 90(sp)
  SB s8, 91(sp)
  SB a0, 92(sp)
  SLTIU s7, s7, 1
  BNE s7, zero, bb128
  # implict jump to bb73
bb73:   # loop depth 1
  LB s10, 124(sp)
  LB s8, 117(sp)
  LB s7, 116(sp)
  LB s3, 115(sp)
  LB s2, 114(sp)
  # implict jump to bb74
bb74:   # loop depth 1
  LW a0, 308(sp)
  XORI a0, a0, 42
  SW a0, 408(sp)
  SB s2, 103(sp)
  SB s3, 74(sp)
  SB s7, 85(sp)
  SB s8, 86(sp)
  SB s10, 87(sp)
  LW a0, 408(sp)
  SLTIU s7, a0, 1
  BNE s7, zero, bb113
  # implict jump to bb75
bb75:   # loop depth 1
  LB s7, 122(sp)
  LB s8, 120(sp)
  LB s9, 119(sp)
  # implict jump to bb76
bb76:   # loop depth 1
  LW a0, 308(sp)
  XORI a0, a0, 47
  SW a0, 324(sp)
  SB s9, 81(sp)
  SB s8, 82(sp)
  SB s7, 83(sp)
  LW a0, 324(sp)
  SLTIU a0, a0, 1
  SB a0, 21(sp)
  LB a0, 21(sp)
  BNE a0, zero, bb98
  # implict jump to bb77
bb77:   # loop depth 1
  LB a0, 125(sp)
  SB a0, 69(sp)
  LB a0, 123(sp)
  SB a0, 68(sp)
  LB a0, 121(sp)
  SB a0, 67(sp)
  # implict jump to bb78
bb78:   # loop depth 1
  LW a0, 308(sp)
  XORI a0, a0, 37
  SW a0, 364(sp)
  LB a0, 67(sp)
  SB a0, 79(sp)
  LB a0, 68(sp)
  SB a0, 80(sp)
  LB a0, 69(sp)
  SB a0, 96(sp)
  LW a0, 364(sp)
  SLTIU a0, a0, 1
  SB a0, 99(sp)
  LB a0, 99(sp)
  BNE a0, zero, bb83
  # implict jump to bb79
bb79:   # loop depth 1
  LB a0, 134(sp)
  SB a0, 62(sp)
  LB s5, 135(sp)
  LB s4, 126(sp)
  # implict jump to bb80
bb80:   # loop depth 1
  LA s6, ii
  LA a0, get2
  SD a0, 616(sp)
  ADDI a0, zero, 32
  SW a0, 284(sp)
  LA a0, ii
  SD a0, 744(sp)
  LW a0, 0(s6)
  SW a0, 216(sp)
  SB s4, 76(sp)
  SB s5, 77(sp)
  LB a0, 62(sp)
  SB a0, 78(sp)
  LB a0, 92(sp)
  SB a0, 93(sp)
  LB a0, 96(sp)
  SB a0, 102(sp)
  LW a0, 216(sp)
  SLLIW a0, a0, 2
  LW s0, 216(sp)
  ADDIW s0, s0, 1
  SW s0, 348(sp)
  LD s0, 616(sp)
  ADD s10, s0, a0
  LB a0, 87(sp)
  SB a0, 101(sp)
  LW a0, 284(sp)
  SW a0, 0(s10)
  LB a0, 91(sp)
  SB a0, 100(sp)
  LB a0, 80(sp)
  SB a0, 41(sp)
  LB a0, 83(sp)
  SB a0, 40(sp)
  LB a0, 90(sp)
  SB a0, 39(sp)
  LB a0, 79(sp)
  SB a0, 38(sp)
  LB a0, 82(sp)
  SB a0, 47(sp)
  LB a0, 81(sp)
  SB a0, 73(sp)
  LB a0, 86(sp)
  SB a0, 72(sp)
  LB a0, 85(sp)
  LB s0, 74(sp)
  SB s0, 71(sp)
  LB s0, 103(sp)
  SB s0, 70(sp)
  LB s1, 89(sp)
  LB s0, 88(sp)
  LB s2, 76(sp)
  SB s2, 104(sp)
  LB s2, 78(sp)
  SB s2, 105(sp)
  LB s9, 77(sp)
  LD s2, 744(sp)
  LW s3, 348(sp)
  SW s3, 0(s2)
  # implict jump to bb81
bb81:   # loop depth 1
  LA s2, i
  SD s2, 776(sp)
  LA s2, i
  SD s2, 768(sp)
  SB s0, 133(sp)
  SB s1, 112(sp)
  LD s0, 776(sp)
  LW s7, 0(s0)
  LB s0, 70(sp)
  SB s0, 127(sp)
  LB s0, 71(sp)
  SB s0, 128(sp)
  SB a0, 129(sp)
  LB a0, 72(sp)
  SB a0, 130(sp)
  LB a0, 73(sp)
  SB a0, 131(sp)
  ADDIW a0, s7, 1
  SW a0, 332(sp)
  LB a0, 47(sp)
  SB a0, 132(sp)
  LB a0, 38(sp)
  SB a0, 15(sp)
  LB a0, 39(sp)
  SB a0, 14(sp)
  LB a0, 40(sp)
  SB a0, 13(sp)
  LB a0, 41(sp)
  SB a0, 11(sp)
  LB a0, 100(sp)
  SB a0, 0(sp)
  LB a0, 101(sp)
  SB a0, 9(sp)
  LB a0, 102(sp)
  SB a0, 7(sp)
  LB a0, 93(sp)
  SB a0, 6(sp)
  LB a0, 104(sp)
  SB a0, 5(sp)
  SB s9, 4(sp)
  LB a0, 105(sp)
  SB a0, 3(sp)
  LD a0, 768(sp)
  LW s0, 332(sp)
  SW s0, 0(a0)
  LW a0, 352(sp)
  LW s0, 332(sp)
  BLT s0, a0, bb82
  JAL zero, bb5
bb82:   # loop depth 1
  LW a0, 332(sp)
  SW a0, 332(sp)
  LB a0, 133(sp)
  SB a0, 75(sp)
  LB a0, 112(sp)
  SB a0, 84(sp)
  LB a0, 127(sp)
  SB a0, 111(sp)
  LB a0, 128(sp)
  SB a0, 110(sp)
  LB a0, 129(sp)
  SB a0, 109(sp)
  LB a0, 130(sp)
  SB a0, 108(sp)
  LB a0, 131(sp)
  SB a0, 107(sp)
  LB a0, 132(sp)
  SB a0, 106(sp)
  LB a0, 15(sp)
  SB a0, 53(sp)
  LB a0, 14(sp)
  SB a0, 52(sp)
  LB a0, 13(sp)
  SB a0, 51(sp)
  LB a0, 11(sp)
  SB a0, 50(sp)
  LB a0, 0(sp)
  SB a0, 49(sp)
  LB a0, 9(sp)
  SB a0, 20(sp)
  LB a0, 20(sp)
  SB a0, 20(sp)
  LB a0, 7(sp)
  SB a0, 48(sp)
  LB a0, 6(sp)
  LB s1, 5(sp)
  SB s1, 37(sp)
  LB s1, 4(sp)
  LB s3, 3(sp)
  JAL zero, bb62
bb83:   # loop depth 2
  LA s4, chat
  LA s5, chas
  LW s4, 0(s4)
  SLLIW s4, s4, 2
  ADD s4, s5, s4
  LW a0, 0(s4)
  SW a0, 228(sp)
  LW a0, 228(sp)
  XORI s4, a0, 42
  SLTIU s4, s4, 1
  BNE s4, zero, bb97
  # implict jump to bb84
bb84:   # loop depth 2
  LW a0, 228(sp)
  XORI s4, a0, 47
  SLTIU s11, s4, 1
  # implict jump to bb85
bb85:   # loop depth 2
  BNE s11, zero, bb96
  # implict jump to bb86
bb86:   # loop depth 2
  LW a0, 228(sp)
  XORI s4, a0, 37
  SLTIU s5, s4, 1
  # implict jump to bb87
bb87:   # loop depth 2
  BNE s5, zero, bb95
  # implict jump to bb88
bb88:   # loop depth 2
  LW a0, 228(sp)
  XORI s4, a0, 94
  SLTIU s4, s4, 1
  # implict jump to bb89
bb89:   # loop depth 2
  BNE s4, zero, bb91
  # implict jump to bb90
bb90:   # loop depth 1
  LA a0, chat
  SD a0, 808(sp)
  LA a0, chat
  SD a0, 800(sp)
  LA a0, chas
  SD a0, 792(sp)
  ADDI a0, zero, 37
  SW a0, 340(sp)
  LD a0, 808(sp)
  LW a0, 0(a0)
  SW a0, 164(sp)
  SB s11, 62(sp)
  LW a0, 164(sp)
  ADDIW s6, a0, 1
  LW a0, 164(sp)
  SLLIW a0, a0, 2
  SW a0, 136(sp)
  LD a0, 792(sp)
  LW s0, 136(sp)
  ADD a0, a0, s0
  SD a0, 936(sp)
  LD a0, 800(sp)
  SW s6, 0(a0)
  LW a0, 340(sp)
  LD s0, 936(sp)
  SW a0, 4(s0)
  JAL zero, bb80
bb91:   # loop depth 2
  LA a0, chat
  SD a0, 600(sp)
  LA a0, chat
  SD a0, 664(sp)
  LA a0, chas
  SD a0, 848(sp)
  LA a0, c
  SD a0, 840(sp)
  LD a0, 600(sp)
  LW a0, 0(a0)
  SW a0, 236(sp)
  LA a0, ii
  SD a0, 832(sp)
  LA a0, get2
  SD a0, 824(sp)
  ADDI a0, zero, 32
  SW a0, 336(sp)
  LA a0, ii
  SD a0, 816(sp)
  LW a0, 236(sp)
  ADDIW a0, a0, -1
  SW a0, 240(sp)
  LW a0, 236(sp)
  SLLIW a0, a0, 2
  SW a0, 244(sp)
  LD a0, 848(sp)
  LW s0, 244(sp)
  ADD a0, a0, s0
  SD a0, 952(sp)
  LD a0, 664(sp)
  LW s0, 240(sp)
  SW s0, 0(a0)
  LD a0, 952(sp)
  LW a0, 0(a0)
  SW a0, 208(sp)
  LW a0, 240(sp)
  SLTIU a0, a0, 1
  SB a0, 66(sp)
  LD a0, 840(sp)
  LW s0, 208(sp)
  SW s0, 0(a0)
  LD a0, 832(sp)
  LW a0, 0(a0)
  SW a0, 252(sp)
  LW a0, 252(sp)
  SLLIW a0, a0, 2
  SW a0, 256(sp)
  LW a0, 252(sp)
  ADDIW a0, a0, 2
  SW a0, 268(sp)
  LD a0, 824(sp)
  LW s0, 256(sp)
  ADD a0, a0, s0
  SD a0, 944(sp)
  LW a0, 336(sp)
  LD s0, 944(sp)
  SW a0, 0(s0)
  LD a0, 944(sp)
  LW s0, 208(sp)
  SW s0, 4(a0)
  LD a0, 816(sp)
  LW s0, 268(sp)
  SW s0, 0(a0)
  LB a0, 66(sp)
  BNE a0, zero, bb94
  # implict jump to bb92
bb92:   # loop depth 2
  ADDI a0, zero, 1
  SW a0, 204(sp)
  # implict jump to bb93
bb93:   # loop depth 2
  LW a0, 204(sp)
  SW a0, 204(sp)
  LW a0, 204(sp)
  SLTIU a0, a0, 1
  SB a0, 54(sp)
  LB a0, 54(sp)
  BNE a0, zero, bb90
  JAL zero, bb83
bb94:   # loop depth 2
  ADD a0, zero, zero
  SW a0, 204(sp)
  JAL zero, bb93
bb95:   # loop depth 2
  ADDI s4, zero, 1
  JAL zero, bb89
bb96:   # loop depth 2
  ADDI s5, zero, 1
  JAL zero, bb87
bb97:   # loop depth 2
  ADDI s11, zero, 1
  JAL zero, bb85
bb98:   # loop depth 2
  LA a0, chat
  SD a0, 712(sp)
  LA a0, chas
  SD a0, 704(sp)
  LD a0, 712(sp)
  LW a0, 0(a0)
  SW a0, 160(sp)
  LW a0, 160(sp)
  SLLIW a0, a0, 2
  SW a0, 276(sp)
  LD a0, 704(sp)
  LW s0, 276(sp)
  ADD a0, a0, s0
  SD a0, 984(sp)
  LD a0, 984(sp)
  LW a0, 0(a0)
  SW a0, 212(sp)
  LW a0, 212(sp)
  XORI a0, a0, 42
  SW a0, 396(sp)
  LW a0, 396(sp)
  SLTIU a0, a0, 1
  SB a0, 118(sp)
  LB a0, 118(sp)
  BNE a0, zero, bb112
  # implict jump to bb99
bb99:   # loop depth 2
  LW a0, 212(sp)
  XORI a0, a0, 47
  SW a0, 392(sp)
  LW a0, 392(sp)
  SLTIU a0, a0, 1
  SB a0, 56(sp)
  LB a0, 56(sp)
  SB a0, 56(sp)
  # implict jump to bb100
bb100:   # loop depth 2
  LB a0, 56(sp)
  SB a0, 12(sp)
  LB a0, 12(sp)
  BNE a0, zero, bb111
  # implict jump to bb101
bb101:   # loop depth 2
  LW a0, 212(sp)
  XORI a0, a0, 37
  SW a0, 380(sp)
  LW a0, 380(sp)
  SLTIU a0, a0, 1
  SB a0, 64(sp)
  LB a0, 64(sp)
  SB a0, 64(sp)
  # implict jump to bb102
bb102:   # loop depth 2
  LB a0, 64(sp)
  SB a0, 17(sp)
  LB a0, 17(sp)
  BNE a0, zero, bb110
  # implict jump to bb103
bb103:   # loop depth 2
  LW a0, 212(sp)
  XORI a0, a0, 94
  SW a0, 368(sp)
  LW a0, 368(sp)
  SLTIU a0, a0, 1
  SB a0, 63(sp)
  LB a0, 63(sp)
  SB a0, 63(sp)
  # implict jump to bb104
bb104:   # loop depth 2
  LB a0, 63(sp)
  SB a0, 28(sp)
  LB a0, 28(sp)
  BNE a0, zero, bb106
  # implict jump to bb105
bb105:   # loop depth 1
  LA a0, chat
  SD a0, 640(sp)
  LA a0, chat
  SD a0, 632(sp)
  LA a0, chas
  SD a0, 624(sp)
  ADDI a0, zero, 47
  SW a0, 320(sp)
  LD a0, 640(sp)
  LW a0, 0(a0)
  SW a0, 280(sp)
  LB a0, 12(sp)
  SB a0, 69(sp)
  LB a0, 28(sp)
  SB a0, 68(sp)
  LB a0, 17(sp)
  SB a0, 67(sp)
  LW a0, 280(sp)
  ADDIW a0, a0, 1
  SW a0, 260(sp)
  LW a0, 280(sp)
  SLLIW a0, a0, 2
  SW a0, 232(sp)
  LD a0, 624(sp)
  LW s0, 232(sp)
  ADD a0, a0, s0
  SD a0, 960(sp)
  LD a0, 632(sp)
  LW s0, 260(sp)
  SW s0, 0(a0)
  LW a0, 320(sp)
  LD s0, 960(sp)
  SW a0, 4(s0)
  JAL zero, bb78
bb106:   # loop depth 2
  LA a0, chat
  SD a0, 696(sp)
  LA a0, chat
  SD a0, 688(sp)
  LA a0, chas
  SD a0, 680(sp)
  LA a0, c
  SD a0, 672(sp)
  LD a0, 696(sp)
  LW a0, 0(a0)
  SW a0, 156(sp)
  LA a0, ii
  SD a0, 592(sp)
  LA a0, get2
  SD a0, 656(sp)
  ADDI a0, zero, 32
  SW a0, 316(sp)
  LA a0, ii
  SD a0, 648(sp)
  LW a0, 156(sp)
  ADDIW a0, a0, -1
  SW a0, 176(sp)
  LW a0, 156(sp)
  SLLIW a0, a0, 2
  SW a0, 184(sp)
  LD a0, 680(sp)
  LW s0, 184(sp)
  ADD a0, a0, s0
  SD a0, 976(sp)
  LD a0, 688(sp)
  LW s0, 176(sp)
  SW s0, 0(a0)
  LD a0, 976(sp)
  LW a0, 0(a0)
  SW a0, 140(sp)
  LW a0, 176(sp)
  SLTIU a0, a0, 1
  SB a0, 23(sp)
  LD a0, 672(sp)
  LW s0, 140(sp)
  SW s0, 0(a0)
  LD a0, 592(sp)
  LW a0, 0(a0)
  SW a0, 188(sp)
  LW a0, 188(sp)
  SLLIW a0, a0, 2
  SW a0, 180(sp)
  LW a0, 188(sp)
  ADDIW a0, a0, 2
  SW a0, 172(sp)
  LD a0, 656(sp)
  LW s0, 180(sp)
  ADD a0, a0, s0
  SD a0, 968(sp)
  LW a0, 316(sp)
  LD s0, 968(sp)
  SW a0, 0(s0)
  LD a0, 968(sp)
  LW s0, 140(sp)
  SW s0, 4(a0)
  LD a0, 648(sp)
  LW s0, 172(sp)
  SW s0, 0(a0)
  LB a0, 23(sp)
  BNE a0, zero, bb109
  # implict jump to bb107
bb107:   # loop depth 2
  ADDI a0, zero, 1
  SW a0, 144(sp)
  # implict jump to bb108
bb108:   # loop depth 2
  LW a0, 144(sp)
  SW a0, 144(sp)
  LW a0, 144(sp)
  SLTIU a0, a0, 1
  SB a0, 25(sp)
  LB a0, 25(sp)
  BNE a0, zero, bb105
  JAL zero, bb98
bb109:   # loop depth 2
  ADD a0, zero, zero
  SW a0, 144(sp)
  JAL zero, bb108
bb110:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 63(sp)
  JAL zero, bb104
bb111:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 64(sp)
  JAL zero, bb102
bb112:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 56(sp)
  JAL zero, bb100
bb113:   # loop depth 2
  LA s7, chat
  LA s8, chas
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  ADD s7, s8, s7
  LW s9, 0(s7)
  XORI s7, s9, 42
  SLTIU s7, s7, 1
  BNE s7, zero, bb127
  # implict jump to bb114
bb114:   # loop depth 2
  XORI s7, s9, 47
  SLTIU s7, s7, 1
  # implict jump to bb115
bb115:   # loop depth 2
  BNE s7, zero, bb126
  # implict jump to bb116
bb116:   # loop depth 2
  XORI s8, s9, 37
  SLTIU s8, s8, 1
  # implict jump to bb117
bb117:   # loop depth 2
  SB s8, 95(sp)
  LB a0, 95(sp)
  BNE a0, zero, bb125
  # implict jump to bb118
bb118:   # loop depth 2
  XORI s8, s9, 94
  SLTIU s8, s8, 1
  # implict jump to bb119
bb119:   # loop depth 2
  BNE s8, zero, bb121
  # implict jump to bb120
bb120:   # loop depth 1
  LA s9, chat
  LA a0, chat
  SD a0, 728(sp)
  LA a0, chas
  SD a0, 720(sp)
  ADDI a0, zero, 42
  SW a0, 312(sp)
  LW a0, 0(s9)
  SW a0, 168(sp)
  LB s9, 95(sp)
  LW a0, 168(sp)
  ADDIW a0, a0, 1
  SW a0, 200(sp)
  LW a0, 168(sp)
  SLLIW a0, a0, 2
  SW a0, 196(sp)
  LD a0, 720(sp)
  LW s0, 196(sp)
  ADD a0, a0, s0
  SD a0, 992(sp)
  LD a0, 728(sp)
  LW s0, 200(sp)
  SW s0, 0(a0)
  LW a0, 312(sp)
  LD s0, 992(sp)
  SW a0, 4(s0)
  JAL zero, bb76
bb121:   # loop depth 2
  LA s9, chat
  LA a0, chat
  SD a0, 1040(sp)
  LA a0, chas
  SD a0, 1032(sp)
  LA a0, c
  SD a0, 1024(sp)
  LW s9, 0(s9)
  LA a0, ii
  SD a0, 1016(sp)
  LA a0, get2
  SD a0, 1008(sp)
  ADDI a0, zero, 32
  SW a0, 304(sp)
  LA a0, ii
  SD a0, 784(sp)
  ADDIW a0, s9, -1
  SW a0, 224(sp)
  SLLIW s9, s9, 2
  LD a0, 1032(sp)
  ADD s9, a0, s9
  LD a0, 1040(sp)
  LW s0, 224(sp)
  SW s0, 0(a0)
  LW s9, 0(s9)
  LW a0, 224(sp)
  SLTIU a0, a0, 1
  SB a0, 94(sp)
  LD a0, 1024(sp)
  SW s9, 0(a0)
  LD a0, 1016(sp)
  LW a0, 0(a0)
  SW a0, 272(sp)
  LW a0, 272(sp)
  SLLIW a0, a0, 2
  SW a0, 192(sp)
  LW a0, 272(sp)
  ADDIW a0, a0, 2
  SW a0, 248(sp)
  LD a0, 1008(sp)
  LW s0, 192(sp)
  ADD a0, a0, s0
  SD a0, 1072(sp)
  LW a0, 304(sp)
  LD s0, 1072(sp)
  SW a0, 0(s0)
  LD a0, 1072(sp)
  SW s9, 4(a0)
  LD a0, 784(sp)
  LW s0, 248(sp)
  SW s0, 0(a0)
  LB a0, 94(sp)
  BNE a0, zero, bb124
  # implict jump to bb122
bb122:   # loop depth 2
  ADDI s9, zero, 1
  # implict jump to bb123
bb123:   # loop depth 2
  SLTIU s9, s9, 1
  BNE s9, zero, bb120
  JAL zero, bb113
bb124:   # loop depth 2
  ADD s9, zero, zero
  JAL zero, bb123
bb125:   # loop depth 2
  ADDI s8, zero, 1
  JAL zero, bb119
bb126:   # loop depth 2
  ADDI s8, zero, 1
  JAL zero, bb117
bb127:   # loop depth 2
  ADDI s7, zero, 1
  JAL zero, bb115
bb128:   # loop depth 2
  LA s2, chat
  LA s3, chas
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  ADD s2, s3, s2
  LW s8, 0(s2)
  XORI s2, s8, 43
  SLTIU s2, s2, 1
  BNE s2, zero, bb148
  # implict jump to bb129
bb129:   # loop depth 2
  XORI s2, s8, 45
  SLTIU s2, s2, 1
  # implict jump to bb130
bb130:   # loop depth 2
  SB s2, 2(sp)
  LB a0, 2(sp)
  BNE a0, zero, bb147
  # implict jump to bb131
bb131:   # loop depth 2
  XORI s2, s8, 42
  SLTIU s10, s2, 1
  # implict jump to bb132
bb132:   # loop depth 2
  BNE s10, zero, bb146
  # implict jump to bb133
bb133:   # loop depth 2
  XORI s3, s8, 47
  SLTIU s3, s3, 1
  # implict jump to bb134
bb134:   # loop depth 2
  BNE s3, zero, bb145
  # implict jump to bb135
bb135:   # loop depth 2
  XORI s7, s8, 37
  SLTIU s7, s7, 1
  # implict jump to bb136
bb136:   # loop depth 2
  BNE s7, zero, bb144
  # implict jump to bb137
bb137:   # loop depth 2
  XORI s8, s8, 94
  SLTIU s8, s8, 1
  # implict jump to bb138
bb138:   # loop depth 2
  BNE s8, zero, bb140
  # implict jump to bb139
bb139:   # loop depth 1
  LA s9, chat
  LA a0, chat
  SD a0, 1056(sp)
  LA a0, chas
  SD a0, 1048(sp)
  ADDI a0, zero, 45
  SW a0, 300(sp)
  LW a0, 0(s9)
  SW a0, 388(sp)
  LB s2, 2(sp)
  LW a0, 388(sp)
  ADDIW a0, a0, 1
  SW a0, 152(sp)
  LW a0, 388(sp)
  SLLIW a0, a0, 2
  SW a0, 264(sp)
  LD a0, 1048(sp)
  LW s0, 264(sp)
  ADD a0, a0, s0
  SD a0, 472(sp)
  LD a0, 1056(sp)
  LW s0, 152(sp)
  SW s0, 0(a0)
  LW a0, 300(sp)
  LD s0, 472(sp)
  SW a0, 4(s0)
  JAL zero, bb74
bb140:   # loop depth 2
  LA s9, chat
  LA a0, chat
  SD a0, 1104(sp)
  LA a0, chas
  SD a0, 1096(sp)
  LA a0, c
  SD a0, 1088(sp)
  LW s9, 0(s9)
  LA a0, ii
  SD a0, 1080(sp)
  LA a0, get2
  SD a0, 1000(sp)
  ADDI a0, zero, 32
  SW a0, 360(sp)
  LA a0, ii
  SD a0, 752(sp)
  ADDIW a0, s9, -1
  SW a0, 420(sp)
  SLLIW s9, s9, 2
  LD a0, 1096(sp)
  ADD s9, a0, s9
  LD a0, 1104(sp)
  LW s0, 420(sp)
  SW s0, 0(a0)
  LW s9, 0(s9)
  LW a0, 420(sp)
  SLTIU a0, a0, 1
  SB a0, 61(sp)
  LD a0, 1088(sp)
  SW s9, 0(a0)
  LD a0, 1080(sp)
  LW a0, 0(a0)
  SW a0, 416(sp)
  LW a0, 416(sp)
  SLLIW a0, a0, 2
  SW a0, 412(sp)
  LW a0, 416(sp)
  ADDIW a0, a0, 2
  SW a0, 400(sp)
  LD a0, 1000(sp)
  LW s0, 412(sp)
  ADD a0, a0, s0
  SD a0, 480(sp)
  LW a0, 360(sp)
  LD s0, 480(sp)
  SW a0, 0(s0)
  LD a0, 480(sp)
  SW s9, 4(a0)
  LD a0, 752(sp)
  LW s0, 400(sp)
  SW s0, 0(a0)
  LB a0, 61(sp)
  BNE a0, zero, bb143
  # implict jump to bb141
bb141:   # loop depth 2
  ADDI s9, zero, 1
  # implict jump to bb142
bb142:   # loop depth 2
  SLTIU s9, s9, 1
  BNE s9, zero, bb139
  JAL zero, bb128
bb143:   # loop depth 2
  ADD s9, zero, zero
  JAL zero, bb142
bb144:   # loop depth 2
  ADDI s8, zero, 1
  JAL zero, bb138
bb145:   # loop depth 2
  ADDI s7, zero, 1
  JAL zero, bb136
bb146:   # loop depth 2
  ADDI s3, zero, 1
  JAL zero, bb134
bb147:   # loop depth 2
  ADDI s10, zero, 1
  JAL zero, bb132
bb148:   # loop depth 2
  ADDI s2, zero, 1
  JAL zero, bb130
bb149:   # loop depth 2
  LA a0, chat
  LA s0, chas
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s0, a0
  LW s8, 0(a0)
  XORI a0, s8, 43
  SLTIU a0, a0, 1
  BNE a0, zero, bb169
  # implict jump to bb150
bb150:   # loop depth 2
  XORI a0, s8, 45
  SLTIU s10, a0, 1
  # implict jump to bb151
bb151:   # loop depth 2
  BNE s10, zero, bb168
  # implict jump to bb152
bb152:   # loop depth 2
  XORI a0, s8, 42
  SLTIU s1, a0, 1
  # implict jump to bb153
bb153:   # loop depth 2
  BNE s1, zero, bb167
  # implict jump to bb154
bb154:   # loop depth 2
  XORI a0, s8, 47
  SLTIU a0, a0, 1
  # implict jump to bb155
bb155:   # loop depth 2
  BNE a0, zero, bb166
  # implict jump to bb156
bb156:   # loop depth 2
  XORI s7, s8, 37
  SLTIU s0, s7, 1
  # implict jump to bb157
bb157:   # loop depth 2
  BNE s0, zero, bb165
  # implict jump to bb158
bb158:   # loop depth 2
  XORI s8, s8, 94
  SLTIU s8, s8, 1
  # implict jump to bb159
bb159:   # loop depth 2
  BNE s8, zero, bb161
  # implict jump to bb160
bb160:   # loop depth 1
  LA s9, chat
  LA s2, chat
  SD s2, 1120(sp)
  LA s2, chas
  SD s2, 1112(sp)
  ADDI s2, zero, 43
  SW s2, 288(sp)
  LW s2, 0(s9)
  SW s2, 424(sp)
  LW s2, 424(sp)
  ADDIW s7, s2, 1
  LW s2, 424(sp)
  SLLIW s11, s2, 2
  LD s2, 1112(sp)
  ADD s11, s2, s11
  LD s2, 1120(sp)
  SW s7, 0(s2)
  LW s2, 288(sp)
  SW s2, 4(s11)
  JAL zero, bb72
bb161:   # loop depth 2
  LA s9, chat
  LA s2, chat
  SD s2, 872(sp)
  LA s2, chas
  SD s2, 864(sp)
  LA s2, c
  SD s2, 928(sp)
  LW s9, 0(s9)
  LA s2, ii
  SD s2, 1136(sp)
  LA s2, get2
  SD s2, 1128(sp)
  ADDI s2, zero, 32
  SW s2, 356(sp)
  LA s2, ii
  SD s2, 760(sp)
  ADDIW s11, s9, -1
  SLLIW s9, s9, 2
  LD s2, 864(sp)
  ADD s9, s2, s9
  LD s2, 872(sp)
  SW s11, 0(s2)
  LW s9, 0(s9)
  SLTIU s2, s11, 1
  SB s2, 57(sp)
  LD s2, 928(sp)
  SW s9, 0(s2)
  LD s2, 1136(sp)
  LW s2, 0(s2)
  SW s2, 328(sp)
  LW s2, 328(sp)
  SLLIW s2, s2, 2
  SW s2, 372(sp)
  LW s2, 328(sp)
  ADDIW s2, s2, 2
  SW s2, 432(sp)
  LD s3, 1128(sp)
  LW s2, 372(sp)
  ADD s2, s3, s2
  SD s2, 520(sp)
  LW s2, 356(sp)
  LD s3, 520(sp)
  SW s2, 0(s3)
  LD s2, 520(sp)
  SW s9, 4(s2)
  LD s3, 760(sp)
  LW s2, 432(sp)
  SW s2, 0(s3)
  LB s2, 57(sp)
  BNE s2, zero, bb164
  # implict jump to bb162
bb162:   # loop depth 2
  ADDI s9, zero, 1
  # implict jump to bb163
bb163:   # loop depth 2
  SLTIU s9, s9, 1
  BNE s9, zero, bb160
  JAL zero, bb149
bb164:   # loop depth 2
  ADD s9, zero, zero
  JAL zero, bb163
bb165:   # loop depth 2
  ADDI s8, zero, 1
  JAL zero, bb159
bb166:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb157
bb167:   # loop depth 2
  ADDI a0, zero, 1
  JAL zero, bb155
bb168:   # loop depth 2
  ADDI s1, zero, 1
  JAL zero, bb153
bb169:   # loop depth 2
  ADDI s10, zero, 1
  JAL zero, bb151
bb170:   # loop depth 1
  LA s7, chat
  LA s10, chat
  LA s0, chas
  SD s0, 904(sp)
  LA s0, c
  SD s0, 488(sp)
  LW s9, 0(s7)
  ADDIW s8, s9, -1
  SLLIW s9, s9, 2
  LD s0, 904(sp)
  ADD s9, s0, s9
  SW s8, 0(s10)
  LW s9, 0(s9)
  XORI s10, s9, 40
  LD s0, 488(sp)
  SW s9, 0(s0)
  BNE s10, zero, bb171
  JAL zero, bb70
bb171:   # loop depth 1
  LA s9, ii
  LW s7, 0(s9)
  # implict jump to bb172
bb172:   # loop depth 2
  LA s10, get2
  SLLIW s9, s7, 2
  ADDI s0, zero, 32
  SW s0, 404(sp)
  LA s0, c
  SD s0, 896(sp)
  ADD s9, s10, s9
  LW s0, 404(sp)
  SW s0, 0(s9)
  LD s0, 896(sp)
  LW s10, 0(s0)
  LA s0, chas
  SD s0, 888(sp)
  SLLIW s0, s8, 2
  SW s0, 292(sp)
  LA s0, c
  SD s0, 880(sp)
  LD s0, 888(sp)
  LW s2, 292(sp)
  ADD s0, s0, s2
  SD s0, 464(sp)
  ADDIW s7, s7, 2
  SW s10, 4(s9)
  ADDIW s8, s8, -1
  LD s0, 464(sp)
  LW s9, 0(s0)
  XORI s10, s9, 40
  LD s0, 880(sp)
  SW s9, 0(s0)
  BNE s10, zero, bb174
  # implict jump to bb173
bb173:   # loop depth 1
  LA s10, chat
  LA s9, ii
  SW s8, 0(s10)
  SW s7, 0(s9)
  JAL zero, bb70
bb174:   # loop depth 2
  JAL zero, bb172
bb175:   # loop depth 1
  LA s7, chat
  LA s9, chat
  LA s0, chas
  SD s0, 912(sp)
  ADDI s10, zero, 94
  LW s7, 0(s7)
  ADDIW s8, s7, 1
  SLLIW s7, s7, 2
  LD s0, 912(sp)
  ADD s7, s0, s7
  SW s8, 0(s9)
  SW s10, 4(s7)
  JAL zero, bb69
bb176:   # loop depth 1
  LA s7, chat
  LA s9, chat
  LA s0, chas
  SD s0, 920(sp)
  ADDI s10, zero, 40
  LW s7, 0(s7)
  ADDIW s8, s7, 1
  SLLIW s7, s7, 2
  LD s0, 920(sp)
  ADD s7, s0, s7
  SW s8, 0(s9)
  SW s10, 4(s7)
  JAL zero, bb68
bb177:   # loop depth 1
  LA s7, ii
  LA s10, get2
  LA s0, ii
  SD s0, 736(sp)
  LB s0, 134(sp)
  SB s0, 105(sp)
  LW s6, 0(s7)
  LB s9, 135(sp)
  LB s0, 126(sp)
  SB s0, 104(sp)
  SB a0, 93(sp)
  LB a0, 125(sp)
  SB a0, 102(sp)
  LB a0, 124(sp)
  SB a0, 101(sp)
  SLLIW a0, s6, 2
  ADDIW s0, s6, 1
  SW s0, 344(sp)
  ADD s3, s10, a0
  LB a0, 10(sp)
  SB a0, 100(sp)
  LW a0, 308(sp)
  SW a0, 0(s3)
  LB a0, 123(sp)
  SB a0, 41(sp)
  LB a0, 122(sp)
  SB a0, 40(sp)
  LB a0, 34(sp)
  SB a0, 39(sp)
  LB a0, 121(sp)
  SB a0, 38(sp)
  LB a0, 120(sp)
  SB a0, 47(sp)
  LB a0, 119(sp)
  SB a0, 73(sp)
  LB a0, 117(sp)
  SB a0, 72(sp)
  LB a0, 116(sp)
  LB s0, 115(sp)
  SB s0, 71(sp)
  LB s0, 114(sp)
  SB s0, 70(sp)
  LB s0, 113(sp)
  LD s2, 736(sp)
  LW s3, 344(sp)
  SW s3, 0(s2)
  JAL zero, bb81
bb178:   # loop depth 1
  ADDI s7, zero, 1
  JAL zero, bb66
bb179:   # loop depth 1
  ADDI s7, zero, 57
  LW s0, 308(sp)
  SLT s7, s7, s0
  XORI s7, s7, 1
  JAL zero, bb64
bb180:   # loop depth 1
  LA s4, get
  LW s0, 352(sp)
  SLLIW s3, s0, 2
  LW s0, 352(sp)
  ADDIW s1, s0, 1
  ADD s3, s4, s3
  SW s2, 0(s3)
  CALL getch
  ADD s2, a0, zero
  JAL zero, bb1
bb181:   # loop depth 1
  XORI s0, s2, 10
  SLTU s0, zero, s0
  JAL zero, bb3
