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
  ADDI sp, sp, -1248
  SD ra, 496(sp)
  SD s0, 504(sp)
  SD s1, 512(sp)
  SD s2, 520(sp)
  SD s3, 528(sp)
  SD s4, 536(sp)
  SD s5, 544(sp)
  SD s6, 552(sp)
  SD s7, 560(sp)
  SD s8, 568(sp)
  SD s9, 576(sp)
  SD s10, 584(sp)
  SD s11, 616(sp)
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
  SW s2, 340(sp)
  XORI s0, s1, 13
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
  LW s0, 340(sp)
  BLT a0, s0, bb61
  # implict jump to bb5
bb5:   # loop depth 1
  LA a0, chat
  LW a0, 0(a0)
  BLT zero, a0, bb60
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
  LD s6, 552(sp)
  LD s7, 560(sp)
  LD s8, 568(sp)
  LD s9, 576(sp)
  LD s10, 584(sp)
  LD s11, 616(sp)
  ADDI sp, sp, 1248
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
  BNE s0, zero, bb59
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
  BNE s0, zero, bb58
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
  BNE s0, zero, bb57
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
  BNE s0, zero, bb56
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
  BNE s0, zero, bb55
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
  BNE s0, zero, bb30
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
  ADDIW s2, s1, 1
  LA s5, intt
  SW s2, 0(s5)
  SLLIW s1, s1, 2
  LA s5, ints
  ADD s1, s5, s1
  SW s0, 4(s1)
  LA s0, ii
  ADDI s1, zero, 1
  SW s1, 0(s0)
  LA s0, i
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  SLLIW s0, s0, 2
  LA s1, get2
  ADD s0, s1, s0
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
  LW s1, 0(s0)
  SLLIW s0, s2, 2
  LA s2, ints
  ADD s2, s2, s0
  LW s0, 0(s2)
  # implict jump to bb27
bb27:   # loop depth 2
  LA s5, ii
  LW s5, 0(s5)
  ADDW s5, s1, s5
  SLLIW s5, s5, 2
  LA s6, get2
  ADD s5, s6, s5
  LW s5, 0(s5)
  ADDIW s5, s5, -48
  LW s6, 0(s2)
  ADDI s7, zero, 10
  MULW s6, s6, s7
  SW s6, 0(s2)
  ADDW s0, s0, s5
  LA s5, ii
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, ii
  SW s5, 0(s6)
  ADDW s5, s1, s5
  SLLIW s5, s5, 2
  LA s6, get2
  ADD s5, s6, s5
  LW s5, 0(s5)
  XORI s5, s5, 32
  BNE s5, zero, bb29
  # implict jump to bb28
bb28:   # loop depth 1
  SW s0, 0(s2)
  JAL zero, bb25
bb29:   # loop depth 2
  JAL zero, bb27
bb30:   # loop depth 1
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
  BNE s2, zero, bb54
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
  XORI s2, s2, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb53
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
  XORI s2, s2, 42
  SLTIU s2, s2, 1
  BNE s2, zero, bb52
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
  XORI s2, s2, 47
  SLTIU s2, s2, 1
  BNE s2, zero, bb51
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
  XORI s2, s2, 37
  SLTIU s2, s2, 1
  BNE s2, zero, bb50
  # implict jump to bb39
bb39:   # loop depth 1
  # implict jump to bb40
bb40:   # loop depth 1
  LA s2, i
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LA s5, get2
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
  LW s2, 0(s2)
  ADDIW s5, s2, 1
  LA s6, intt
  SW s5, 0(s6)
  SLLIW s2, s2, 2
  LA s5, ints
  ADD s2, s5, s2
  SW a0, 4(s2)
  JAL zero, bb22
bb43:   # loop depth 1
  BNE s3, zero, bb46
  # implict jump to bb44
bb44:   # loop depth 1
  ADDI a0, zero, 1
  # implict jump to bb45
bb45:   # loop depth 1
  JAL zero, bb42
bb46:   # loop depth 1
  ADD s2, s3, zero
  ADDI a0, zero, 1
  # implict jump to bb47
bb47:   # loop depth 2
  MULW a0, a0, s4
  ADDIW s2, s2, -1
  BNE s2, zero, bb49
  # implict jump to bb48
bb48:   # loop depth 1
  JAL zero, bb45
bb49:   # loop depth 2
  JAL zero, bb47
bb50:   # loop depth 1
  REMW a0, s4, s3
  JAL zero, bb40
bb51:   # loop depth 1
  DIVW a0, s4, s3
  JAL zero, bb38
bb52:   # loop depth 1
  MULW a0, s3, s4
  JAL zero, bb36
bb53:   # loop depth 1
  SUBW a0, s4, s3
  JAL zero, bb34
bb54:   # loop depth 1
  ADDW a0, s3, s4
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
  SW a0, 4(s1)
  ADDIW a0, s0, 2
  LA s0, ii
  SW a0, 0(s0)
  JAL zero, bb5
bb61:   # loop depth 0
  SW a0, 336(sp)
  ADD a0, zero, zero
  SB a0, 102(sp)
  ADD a0, zero, zero
  SB a0, 101(sp)
  ADD a0, zero, zero
  SB a0, 100(sp)
  ADD a0, zero, zero
  SB a0, 39(sp)
  ADD a0, zero, zero
  SB a0, 99(sp)
  ADD a0, zero, zero
  SB a0, 98(sp)
  ADD a0, zero, zero
  SB a0, 97(sp)
  ADD a0, zero, zero
  SB a0, 87(sp)
  ADD a0, zero, zero
  SB a0, 95(sp)
  ADD s6, zero, zero
  ADD s4, zero, zero
  ADD a0, zero, zero
  SB a0, 38(sp)
  ADD s9, zero, zero
  ADD a0, zero, zero
  SB a0, 37(sp)
  ADD s2, zero, zero
  ADD a0, zero, zero
  SB a0, 30(sp)
  ADD s1, zero, zero
  ADD s0, zero, zero
  ADD a0, zero, zero
  SB a0, 116(sp)
  # implict jump to bb62
bb62:   # loop depth 1
  LB a0, 116(sp)
  SB a0, 116(sp)
  LB a0, 116(sp)
  SB a0, 108(sp)
  SB s0, 117(sp)
  SB s1, 119(sp)
  LB a0, 30(sp)
  SB a0, 30(sp)
  SB s2, 122(sp)
  LB a0, 37(sp)
  SB a0, 29(sp)
  LB a0, 29(sp)
  SB a0, 29(sp)
  LB a0, 38(sp)
  SB a0, 121(sp)
  SB s4, 114(sp)
  SB s6, 8(sp)
  LB a0, 95(sp)
  SB a0, 113(sp)
  LB a0, 87(sp)
  SB a0, 7(sp)
  LB a0, 97(sp)
  SB a0, 112(sp)
  LB a0, 98(sp)
  SB a0, 105(sp)
  LB a0, 99(sp)
  SB a0, 111(sp)
  LB a0, 39(sp)
  SB a0, 110(sp)
  LB a0, 100(sp)
  SB a0, 109(sp)
  LB s1, 101(sp)
  LB s0, 102(sp)
  LW a0, 336(sp)
  SW a0, 352(sp)
  LW a0, 352(sp)
  SLLIW a0, a0, 2
  SW a0, 344(sp)
  LA a0, get
  SD a0, 992(sp)
  LD a0, 992(sp)
  LW s2, 344(sp)
  ADD a0, a0, s2
  SD a0, 600(sp)
  LD a0, 600(sp)
  LW a0, 0(a0)
  SW a0, 332(sp)
  LW a0, 332(sp)
  SLTI a0, a0, 48
  SB a0, 45(sp)
  LB a0, 45(sp)
  XORI a0, a0, 1
  SB a0, 16(sp)
  LB a0, 16(sp)
  BNE a0, zero, bb179
  # implict jump to bb63
bb63:   # loop depth 1
  ADD a0, zero, zero
  SB a0, 46(sp)
  # implict jump to bb64
bb64:   # loop depth 1
  LB a0, 46(sp)
  SB a0, 46(sp)
  LB a0, 46(sp)
  BNE a0, zero, bb178
  # implict jump to bb65
bb65:   # loop depth 1
  ADD a0, zero, zero
  SW a0, 324(sp)
  # implict jump to bb66
bb66:   # loop depth 1
  LW a0, 324(sp)
  SW a0, 324(sp)
  LW a0, 324(sp)
  XORI a0, a0, 1
  SW a0, 424(sp)
  LW a0, 424(sp)
  SLTIU a0, a0, 1
  SB a0, 17(sp)
  LB a0, 17(sp)
  BNE a0, zero, bb177
  # implict jump to bb67
bb67:   # loop depth 1
  LW a0, 332(sp)
  XORI a0, a0, 40
  SW a0, 428(sp)
  LW a0, 428(sp)
  SLTIU a0, a0, 1
  SB a0, 58(sp)
  LB a0, 58(sp)
  BNE a0, zero, bb176
  # implict jump to bb68
bb68:   # loop depth 1
  LW a0, 332(sp)
  XORI a0, a0, 94
  SW a0, 432(sp)
  LW a0, 432(sp)
  SLTIU a0, a0, 1
  SB a0, 35(sp)
  LB a0, 35(sp)
  BNE a0, zero, bb175
  # implict jump to bb69
bb69:   # loop depth 1
  LW a0, 332(sp)
  XORI a0, a0, 41
  SW a0, 436(sp)
  LW a0, 436(sp)
  SLTIU a0, a0, 1
  SB a0, 6(sp)
  LB a0, 6(sp)
  BNE a0, zero, bb170
  # implict jump to bb70
bb70:   # loop depth 1
  LW a0, 332(sp)
  XORI a0, a0, 43
  SW a0, 444(sp)
  LW a0, 444(sp)
  SLTIU a0, a0, 1
  SB a0, 88(sp)
  LB a0, 88(sp)
  BNE a0, zero, bb149
  # implict jump to bb71
bb71:   # loop depth 1
  LB s10, 30(sp)
  SB s9, 62(sp)
  LB a0, 8(sp)
  # implict jump to bb72
bb72:   # loop depth 1
  SB s0, 73(sp)
  SB s1, 74(sp)
  SB a0, 75(sp)
  LB a0, 62(sp)
  SB a0, 76(sp)
  SB s10, 77(sp)
  LW a0, 332(sp)
  XORI a0, a0, 45
  SW a0, 400(sp)
  LW a0, 400(sp)
  SLTIU a0, a0, 1
  SB a0, 107(sp)
  LB a0, 107(sp)
  BNE a0, zero, bb128
  # implict jump to bb73
bb73:   # loop depth 1
  LB s0, 29(sp)
  LB s5, 105(sp)
  LB s1, 111(sp)
  LB s3, 110(sp)
  LB s2, 109(sp)
  # implict jump to bb74
bb74:   # loop depth 1
  SB s2, 78(sp)
  SB s3, 70(sp)
  SB s1, 71(sp)
  SB s5, 72(sp)
  SB s0, 18(sp)
  LW a0, 332(sp)
  XORI s3, a0, 42
  SLTIU s3, s3, 1
  BNE s3, zero, bb113
  # implict jump to bb75
bb75:   # loop depth 1
  LB s8, 114(sp)
  LB s3, 7(sp)
  LB s4, 112(sp)
  # implict jump to bb76
bb76:   # loop depth 1
  SB s4, 103(sp)
  SB s3, 104(sp)
  SB s8, 15(sp)
  LW a0, 332(sp)
  XORI s5, a0, 47
  SLTIU s5, s5, 1
  BNE s5, zero, bb98
  # implict jump to bb77
bb77:   # loop depth 1
  LB a0, 122(sp)
  SB a0, 24(sp)
  LB a0, 24(sp)
  SB a0, 24(sp)
  LB a0, 121(sp)
  SB a0, 96(sp)
  LB a0, 96(sp)
  SB a0, 96(sp)
  LB s0, 113(sp)
  # implict jump to bb78
bb78:   # loop depth 1
  LB a0, 96(sp)
  SB a0, 96(sp)
  LB a0, 24(sp)
  SB a0, 24(sp)
  LW a0, 332(sp)
  XORI s8, a0, 37
  SLTIU s8, s8, 1
  BNE s8, zero, bb83
  # implict jump to bb79
bb79:   # loop depth 1
  LB s8, 108(sp)
  LB a0, 117(sp)
  SB a0, 59(sp)
  LB a0, 59(sp)
  SB a0, 59(sp)
  LB a0, 119(sp)
  SB a0, 52(sp)
  LB a0, 52(sp)
  SB a0, 52(sp)
  # implict jump to bb80
bb80:   # loop depth 1
  LB a0, 52(sp)
  SB a0, 52(sp)
  LB a0, 59(sp)
  SB a0, 59(sp)
  LA a0, ii
  SD a0, 920(sp)
  LD a0, 920(sp)
  LW a0, 0(a0)
  SW a0, 300(sp)
  LW a0, 300(sp)
  SLLIW a0, a0, 2
  SW a0, 140(sp)
  LA a0, get2
  SD a0, 912(sp)
  LD a0, 912(sp)
  LW s1, 140(sp)
  ADD a0, a0, s1
  SD a0, 1024(sp)
  ADDI a0, zero, 32
  SW a0, 388(sp)
  LW a0, 388(sp)
  LD s1, 1024(sp)
  SW a0, 0(s1)
  LW a0, 300(sp)
  ADDIW a0, a0, 1
  SW a0, 152(sp)
  LA a0, ii
  SD a0, 904(sp)
  LD a0, 904(sp)
  LW s1, 152(sp)
  SW s1, 0(a0)
  SB s8, 36(sp)
  LB a0, 59(sp)
  SB a0, 44(sp)
  LB a0, 52(sp)
  SB a0, 68(sp)
  LB a0, 77(sp)
  SB a0, 32(sp)
  LB a0, 32(sp)
  SB a0, 32(sp)
  LB a0, 24(sp)
  SB a0, 24(sp)
  LB a0, 24(sp)
  SB a0, 67(sp)
  LB a0, 18(sp)
  SB a0, 18(sp)
  LB s1, 76(sp)
  SB s1, 66(sp)
  LB a0, 96(sp)
  SB a0, 96(sp)
  LB a0, 96(sp)
  SB a0, 65(sp)
  LB s1, 15(sp)
  SB s1, 94(sp)
  LB a0, 75(sp)
  SB a0, 26(sp)
  LB a0, 26(sp)
  SB a0, 26(sp)
  SB s0, 63(sp)
  LB s11, 104(sp)
  LB s0, 103(sp)
  SB s0, 93(sp)
  LB s0, 72(sp)
  SB s0, 92(sp)
  LB s0, 71(sp)
  SB s0, 91(sp)
  LB s0, 70(sp)
  SB s0, 90(sp)
  LB s0, 78(sp)
  SB s0, 89(sp)
  LB s1, 74(sp)
  LB s0, 73(sp)
  # implict jump to bb81
bb81:   # loop depth 1
  SB s0, 69(sp)
  SB s1, 79(sp)
  LB s0, 89(sp)
  SB s0, 80(sp)
  LB s0, 90(sp)
  SB s0, 81(sp)
  LB s0, 91(sp)
  SB s0, 82(sp)
  LB s0, 92(sp)
  SB s0, 83(sp)
  LB s0, 93(sp)
  SB s0, 84(sp)
  SB s11, 85(sp)
  LB s0, 63(sp)
  SB s0, 86(sp)
  LB a0, 26(sp)
  SB a0, 26(sp)
  LB a0, 26(sp)
  SB a0, 56(sp)
  LB s0, 94(sp)
  SB s0, 55(sp)
  LB s0, 65(sp)
  SB s0, 54(sp)
  LB s0, 66(sp)
  SB s0, 53(sp)
  LB a0, 18(sp)
  SB a0, 18(sp)
  LB a0, 18(sp)
  SB a0, 27(sp)
  LB s2, 67(sp)
  LB a0, 32(sp)
  SB a0, 32(sp)
  LB s1, 68(sp)
  LB s0, 44(sp)
  LB a0, 36(sp)
  SB a0, 116(sp)
  LB a0, 116(sp)
  SB a0, 116(sp)
  LA s3, i
  SD s3, 960(sp)
  LD s3, 960(sp)
  LW s3, 0(s3)
  SW s3, 488(sp)
  LW s3, 488(sp)
  ADDIW s3, s3, 1
  SW s3, 484(sp)
  LA s3, i
  SD s3, 952(sp)
  LD s3, 952(sp)
  LW s4, 484(sp)
  SW s4, 0(s3)
  LW s3, 340(sp)
  LW s4, 484(sp)
  BLT s4, s3, bb82
  JAL zero, bb5
bb82:   # loop depth 1
  LW s3, 484(sp)
  SW s3, 336(sp)
  LB s3, 69(sp)
  SB s3, 102(sp)
  LB s3, 79(sp)
  SB s3, 101(sp)
  LB s3, 80(sp)
  SB s3, 100(sp)
  LB s3, 81(sp)
  SB s3, 39(sp)
  LB s3, 82(sp)
  SB s3, 99(sp)
  LB s3, 83(sp)
  SB s3, 98(sp)
  LB s3, 84(sp)
  SB s3, 97(sp)
  LB s3, 85(sp)
  SB s3, 87(sp)
  LB s3, 86(sp)
  SB s3, 95(sp)
  LB s6, 56(sp)
  LB s4, 55(sp)
  LB s3, 54(sp)
  SB s3, 38(sp)
  LB s9, 53(sp)
  LB s3, 27(sp)
  SB s3, 37(sp)
  LB a0, 32(sp)
  SB a0, 30(sp)
  LB a0, 116(sp)
  SB a0, 116(sp)
  JAL zero, bb62
bb83:   # loop depth 2
  LA s8, chat
  LW s8, 0(s8)
  SLLIW s8, s8, 2
  LA a0, chas
  SD a0, 896(sp)
  LD a0, 896(sp)
  ADD s8, a0, s8
  LW a0, 0(s8)
  SW a0, 156(sp)
  LW a0, 156(sp)
  XORI s8, a0, 42
  SLTIU s8, s8, 1
  BNE s8, zero, bb97
  # implict jump to bb84
bb84:   # loop depth 2
  LW a0, 156(sp)
  XORI s8, a0, 47
  SLTIU s8, s8, 1
  # implict jump to bb85
bb85:   # loop depth 2
  BNE s8, zero, bb96
  # implict jump to bb86
bb86:   # loop depth 2
  LW a0, 156(sp)
  XORI a0, a0, 37
  SW a0, 456(sp)
  LW a0, 456(sp)
  SLTIU a0, a0, 1
  SB a0, 59(sp)
  LB a0, 59(sp)
  SB a0, 59(sp)
  # implict jump to bb87
bb87:   # loop depth 2
  LB a0, 59(sp)
  SB a0, 59(sp)
  LB a0, 59(sp)
  BNE a0, zero, bb95
  # implict jump to bb88
bb88:   # loop depth 2
  LW a0, 156(sp)
  XORI a0, a0, 94
  SW a0, 460(sp)
  LW a0, 460(sp)
  SLTIU a0, a0, 1
  SB a0, 52(sp)
  LB a0, 52(sp)
  SB a0, 52(sp)
  # implict jump to bb89
bb89:   # loop depth 2
  LB a0, 52(sp)
  SB a0, 52(sp)
  LB a0, 52(sp)
  BNE a0, zero, bb91
  # implict jump to bb90
bb90:   # loop depth 1
  LA a0, chat
  SD a0, 832(sp)
  LD a0, 832(sp)
  LW a0, 0(a0)
  SW a0, 420(sp)
  LW a0, 420(sp)
  ADDIW a0, a0, 1
  SW a0, 404(sp)
  LA a0, chat
  SD a0, 824(sp)
  LD a0, 824(sp)
  LW s1, 404(sp)
  SW s1, 0(a0)
  LW a0, 420(sp)
  SLLIW a0, a0, 2
  SW a0, 408(sp)
  LA a0, chas
  SD a0, 816(sp)
  LD a0, 816(sp)
  LW s1, 408(sp)
  ADD a0, a0, s1
  SD a0, 1000(sp)
  ADDI a0, zero, 37
  SW a0, 392(sp)
  LW a0, 392(sp)
  LD s1, 1000(sp)
  SW a0, 4(s1)
  LB a0, 59(sp)
  SB a0, 59(sp)
  LB a0, 52(sp)
  SB a0, 52(sp)
  JAL zero, bb80
bb91:   # loop depth 2
  LA a0, chat
  SD a0, 888(sp)
  LD a0, 888(sp)
  LW a0, 0(a0)
  SW a0, 160(sp)
  LW a0, 160(sp)
  ADDIW a0, a0, -1
  SW a0, 164(sp)
  LA a0, chat
  SD a0, 880(sp)
  LD a0, 880(sp)
  LW s1, 164(sp)
  SW s1, 0(a0)
  LW a0, 160(sp)
  SLLIW a0, a0, 2
  SW a0, 168(sp)
  LA a0, chas
  SD a0, 872(sp)
  LD a0, 872(sp)
  LW s1, 168(sp)
  ADD a0, a0, s1
  SD a0, 1016(sp)
  LD a0, 1016(sp)
  LW a0, 0(a0)
  SW a0, 176(sp)
  LA a0, c
  SD a0, 864(sp)
  LD a0, 864(sp)
  LW s1, 176(sp)
  SW s1, 0(a0)
  LA a0, ii
  SD a0, 856(sp)
  LD a0, 856(sp)
  LW a0, 0(a0)
  SW a0, 184(sp)
  LW a0, 184(sp)
  SLLIW a0, a0, 2
  SW a0, 192(sp)
  LA a0, get2
  SD a0, 792(sp)
  LD a0, 792(sp)
  LW s1, 192(sp)
  ADD a0, a0, s1
  SD a0, 928(sp)
  ADDI a0, zero, 32
  SW a0, 312(sp)
  LW a0, 312(sp)
  LD s1, 928(sp)
  SW a0, 0(s1)
  LD a0, 928(sp)
  LW s1, 176(sp)
  SW s1, 4(a0)
  LW a0, 184(sp)
  ADDIW a0, a0, 2
  SW a0, 200(sp)
  LA a0, ii
  SD a0, 840(sp)
  LD a0, 840(sp)
  LW s1, 200(sp)
  SW s1, 0(a0)
  LW a0, 164(sp)
  SLTIU a0, a0, 1
  SB a0, 50(sp)
  LB a0, 50(sp)
  BNE a0, zero, bb94
  # implict jump to bb92
bb92:   # loop depth 2
  ADDI a0, zero, 1
  SW a0, 124(sp)
  # implict jump to bb93
bb93:   # loop depth 2
  LW a0, 124(sp)
  SW a0, 124(sp)
  LW a0, 124(sp)
  SLTIU a0, a0, 1
  SB a0, 51(sp)
  LB a0, 51(sp)
  BNE a0, zero, bb90
  JAL zero, bb83
bb94:   # loop depth 2
  ADD a0, zero, zero
  SW a0, 124(sp)
  JAL zero, bb93
bb95:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 52(sp)
  JAL zero, bb89
bb96:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 59(sp)
  JAL zero, bb87
bb97:   # loop depth 2
  ADDI s8, zero, 1
  JAL zero, bb85
bb98:   # loop depth 2
  LA s5, chat
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s6, chas
  ADD s5, s6, s5
  LW s7, 0(s5)
  XORI s5, s7, 42
  SLTIU s5, s5, 1
  BNE s5, zero, bb112
  # implict jump to bb99
bb99:   # loop depth 2
  XORI s5, s7, 47
  SLTIU a0, s5, 1
  SB a0, 24(sp)
  LB a0, 24(sp)
  SB a0, 24(sp)
  # implict jump to bb100
bb100:   # loop depth 2
  LB a0, 24(sp)
  SB a0, 24(sp)
  LB a0, 24(sp)
  BNE a0, zero, bb111
  # implict jump to bb101
bb101:   # loop depth 2
  XORI s6, s7, 37
  SLTIU s0, s6, 1
  # implict jump to bb102
bb102:   # loop depth 2
  BNE s0, zero, bb110
  # implict jump to bb103
bb103:   # loop depth 2
  XORI s7, s7, 94
  SLTIU a0, s7, 1
  SB a0, 96(sp)
  LB a0, 96(sp)
  SB a0, 96(sp)
  # implict jump to bb104
bb104:   # loop depth 2
  LB a0, 96(sp)
  SB a0, 96(sp)
  LB a0, 96(sp)
  BNE a0, zero, bb106
  # implict jump to bb105
bb105:   # loop depth 1
  LA s8, chat
  LW s8, 0(s8)
  ADDIW a0, s8, 1
  SW a0, 264(sp)
  LA a0, chat
  SD a0, 640(sp)
  LD a0, 640(sp)
  LW s1, 264(sp)
  SW s1, 0(a0)
  SLLIW s8, s8, 2
  LA a0, chas
  SD a0, 712(sp)
  LD a0, 712(sp)
  ADD s8, a0, s8
  ADDI a0, zero, 47
  SW a0, 384(sp)
  LW a0, 384(sp)
  SW a0, 4(s8)
  LB a0, 24(sp)
  SB a0, 24(sp)
  LB a0, 96(sp)
  SB a0, 96(sp)
  JAL zero, bb78
bb106:   # loop depth 2
  LA s8, chat
  LW s8, 0(s8)
  ADDIW a0, s8, -1
  SW a0, 236(sp)
  LA a0, chat
  SD a0, 688(sp)
  LD a0, 688(sp)
  LW s1, 236(sp)
  SW s1, 0(a0)
  SLLIW s8, s8, 2
  LA a0, chas
  SD a0, 680(sp)
  LD a0, 680(sp)
  ADD s8, a0, s8
  LW s8, 0(s8)
  LA a0, c
  SD a0, 672(sp)
  LD a0, 672(sp)
  SW s8, 0(a0)
  LA a0, ii
  SD a0, 664(sp)
  LD a0, 664(sp)
  LW a0, 0(a0)
  SW a0, 244(sp)
  LW a0, 244(sp)
  SLLIW a0, a0, 2
  SW a0, 252(sp)
  LA a0, get2
  SD a0, 656(sp)
  LD a0, 656(sp)
  LW s1, 252(sp)
  ADD a0, a0, s1
  SD a0, 1032(sp)
  ADDI a0, zero, 32
  SW a0, 380(sp)
  LW a0, 380(sp)
  LD s1, 1032(sp)
  SW a0, 0(s1)
  LD a0, 1032(sp)
  SW s8, 4(a0)
  LW a0, 244(sp)
  ADDIW s8, a0, 2
  LA a0, ii
  SD a0, 648(sp)
  LD a0, 648(sp)
  SW s8, 0(a0)
  LW a0, 236(sp)
  SLTIU s8, a0, 1
  BNE s8, zero, bb109
  # implict jump to bb107
bb107:   # loop depth 2
  ADDI s8, zero, 1
  # implict jump to bb108
bb108:   # loop depth 2
  SLTIU s8, s8, 1
  BNE s8, zero, bb105
  JAL zero, bb98
bb109:   # loop depth 2
  ADD s8, zero, zero
  JAL zero, bb108
bb110:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 96(sp)
  JAL zero, bb104
bb111:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb102
bb112:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 24(sp)
  JAL zero, bb100
bb113:   # loop depth 2
  LA s3, chat
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  LA s4, chas
  ADD s3, s4, s3
  LW s5, 0(s3)
  XORI s3, s5, 42
  SLTIU s3, s3, 1
  BNE s3, zero, bb127
  # implict jump to bb114
bb114:   # loop depth 2
  XORI s3, s5, 47
  SLTIU s8, s3, 1
  # implict jump to bb115
bb115:   # loop depth 2
  BNE s8, zero, bb126
  # implict jump to bb116
bb116:   # loop depth 2
  XORI s4, s5, 37
  SLTIU s4, s4, 1
  # implict jump to bb117
bb117:   # loop depth 2
  BNE s4, zero, bb125
  # implict jump to bb118
bb118:   # loop depth 2
  XORI s5, s5, 94
  SLTIU s3, s5, 1
  # implict jump to bb119
bb119:   # loop depth 2
  BNE s3, zero, bb121
  # implict jump to bb120
bb120:   # loop depth 1
  LA s6, chat
  LW s6, 0(s6)
  ADDIW a0, s6, 1
  SW a0, 232(sp)
  LA a0, chat
  SD a0, 704(sp)
  LD a0, 704(sp)
  LW s1, 232(sp)
  SW s1, 0(a0)
  SLLIW s6, s6, 2
  LA a0, chas
  SD a0, 696(sp)
  LD a0, 696(sp)
  ADD s6, a0, s6
  ADDI a0, zero, 42
  SW a0, 376(sp)
  LW a0, 376(sp)
  SW a0, 4(s6)
  JAL zero, bb76
bb121:   # loop depth 2
  LA s6, chat
  LW s6, 0(s6)
  ADDIW a0, s6, -1
  SW a0, 212(sp)
  LA a0, chat
  SD a0, 752(sp)
  LD a0, 752(sp)
  LW s1, 212(sp)
  SW s1, 0(a0)
  SLLIW s6, s6, 2
  LA a0, chas
  SD a0, 744(sp)
  LD a0, 744(sp)
  ADD s6, a0, s6
  LW s6, 0(s6)
  LA a0, c
  SD a0, 736(sp)
  LD a0, 736(sp)
  SW s6, 0(a0)
  LA a0, ii
  SD a0, 728(sp)
  LD a0, 728(sp)
  LW a0, 0(a0)
  SW a0, 220(sp)
  LW a0, 220(sp)
  SLLIW a0, a0, 2
  SW a0, 224(sp)
  LA a0, get2
  SD a0, 720(sp)
  LD a0, 720(sp)
  LW s1, 224(sp)
  ADD a0, a0, s1
  SD a0, 1040(sp)
  ADDI a0, zero, 32
  SW a0, 372(sp)
  LW a0, 372(sp)
  LD s1, 1040(sp)
  SW a0, 0(s1)
  LD a0, 1040(sp)
  SW s6, 4(a0)
  LW a0, 220(sp)
  ADDIW s6, a0, 2
  LA a0, ii
  SD a0, 632(sp)
  LD a0, 632(sp)
  SW s6, 0(a0)
  LW a0, 212(sp)
  SLTIU s6, a0, 1
  BNE s6, zero, bb124
  # implict jump to bb122
bb122:   # loop depth 2
  ADDI s6, zero, 1
  # implict jump to bb123
bb123:   # loop depth 2
  SLTIU s6, s6, 1
  BNE s6, zero, bb120
  JAL zero, bb113
bb124:   # loop depth 2
  ADD s6, zero, zero
  JAL zero, bb123
bb125:   # loop depth 2
  ADDI s3, zero, 1
  JAL zero, bb119
bb126:   # loop depth 2
  ADDI s4, zero, 1
  JAL zero, bb117
bb127:   # loop depth 2
  ADDI s8, zero, 1
  JAL zero, bb115
bb128:   # loop depth 2
  LA s0, chat
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s1, chas
  ADD s0, s1, s0
  LW s2, 0(s0)
  XORI s0, s2, 43
  SLTIU s0, s0, 1
  BNE s0, zero, bb148
  # implict jump to bb129
bb129:   # loop depth 2
  XORI s0, s2, 45
  SLTIU s0, s0, 1
  # implict jump to bb130
bb130:   # loop depth 2
  SB s0, 13(sp)
  LB a0, 13(sp)
  BNE a0, zero, bb147
  # implict jump to bb131
bb131:   # loop depth 2
  XORI s0, s2, 42
  SLTIU s0, s0, 1
  # implict jump to bb132
bb132:   # loop depth 2
  BNE s0, zero, bb146
  # implict jump to bb133
bb133:   # loop depth 2
  XORI s1, s2, 47
  SLTIU s1, s1, 1
  # implict jump to bb134
bb134:   # loop depth 2
  SB s1, 14(sp)
  LB a0, 14(sp)
  BNE a0, zero, bb145
  # implict jump to bb135
bb135:   # loop depth 2
  XORI s1, s2, 37
  SLTIU s1, s1, 1
  # implict jump to bb136
bb136:   # loop depth 2
  BNE s1, zero, bb144
  # implict jump to bb137
bb137:   # loop depth 2
  XORI s2, s2, 94
  SLTIU s5, s2, 1
  # implict jump to bb138
bb138:   # loop depth 2
  BNE s5, zero, bb140
  # implict jump to bb139
bb139:   # loop depth 1
  LA s3, chat
  LW s3, 0(s3)
  ADDIW a0, s3, 1
  SW a0, 216(sp)
  LA a0, chat
  SD a0, 760(sp)
  LD a0, 760(sp)
  LW s4, 216(sp)
  SW s4, 0(a0)
  SLLIW a0, s3, 2
  SW a0, 208(sp)
  LA s3, chas
  LW a0, 208(sp)
  ADD a0, s3, a0
  SD a0, 1048(sp)
  ADDI s3, zero, 45
  LD a0, 1048(sp)
  SW s3, 4(a0)
  LB s3, 14(sp)
  LB s2, 13(sp)
  JAL zero, bb74
bb140:   # loop depth 2
  LA s3, chat
  LW s3, 0(s3)
  ADDIW a0, s3, -1
  SW a0, 280(sp)
  LA a0, chat
  SD a0, 776(sp)
  LD a0, 776(sp)
  LW s4, 280(sp)
  SW s4, 0(a0)
  SLLIW a0, s3, 2
  SW a0, 272(sp)
  LA s3, chas
  LW a0, 272(sp)
  ADD s3, s3, a0
  LW a0, 0(s3)
  SW a0, 260(sp)
  LA s3, c
  LW a0, 260(sp)
  SW a0, 0(s3)
  LA s3, ii
  LW s3, 0(s3)
  SLLIW a0, s3, 2
  SW a0, 248(sp)
  LA a0, get2
  SD a0, 768(sp)
  LD a0, 768(sp)
  LW s4, 248(sp)
  ADD a0, a0, s4
  SD a0, 1056(sp)
  ADDI a0, zero, 32
  SW a0, 364(sp)
  LW a0, 364(sp)
  LD s4, 1056(sp)
  SW a0, 0(s4)
  LD a0, 1056(sp)
  LW s4, 260(sp)
  SW s4, 4(a0)
  ADDIW a0, s3, 2
  SW a0, 240(sp)
  LA s3, ii
  LW a0, 240(sp)
  SW a0, 0(s3)
  LW a0, 280(sp)
  SLTIU s3, a0, 1
  BNE s3, zero, bb143
  # implict jump to bb141
bb141:   # loop depth 2
  ADDI s3, zero, 1
  # implict jump to bb142
bb142:   # loop depth 2
  SLTIU s3, s3, 1
  BNE s3, zero, bb139
  JAL zero, bb128
bb143:   # loop depth 2
  ADD s3, zero, zero
  JAL zero, bb142
bb144:   # loop depth 2
  ADDI s5, zero, 1
  JAL zero, bb138
bb145:   # loop depth 2
  ADDI s1, zero, 1
  JAL zero, bb136
bb146:   # loop depth 2
  ADDI s1, zero, 1
  JAL zero, bb134
bb147:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb132
bb148:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb130
bb149:   # loop depth 2
  LA a0, chat
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LA s0, chas
  ADD a0, s0, a0
  LW s9, 0(a0)
  XORI a0, s9, 43
  SLTIU a0, a0, 1
  BNE a0, zero, bb169
  # implict jump to bb150
bb150:   # loop depth 2
  XORI a0, s9, 45
  SLTIU a0, a0, 1
  # implict jump to bb151
bb151:   # loop depth 2
  BNE a0, zero, bb168
  # implict jump to bb152
bb152:   # loop depth 2
  XORI s0, s9, 42
  SLTIU s0, s0, 1
  # implict jump to bb153
bb153:   # loop depth 2
  SB s0, 118(sp)
  LB s0, 118(sp)
  BNE s0, zero, bb167
  # implict jump to bb154
bb154:   # loop depth 2
  XORI s0, s9, 47
  SLTIU s10, s0, 1
  # implict jump to bb155
bb155:   # loop depth 2
  BNE s10, zero, bb166
  # implict jump to bb156
bb156:   # loop depth 2
  XORI s1, s9, 37
  SLTIU s1, s1, 1
  # implict jump to bb157
bb157:   # loop depth 2
  SB s1, 21(sp)
  LB s1, 21(sp)
  BNE s1, zero, bb165
  # implict jump to bb158
bb158:   # loop depth 2
  XORI s1, s9, 94
  SLTIU s0, s1, 1
  # implict jump to bb159
bb159:   # loop depth 2
  BNE s0, zero, bb161
  # implict jump to bb160
bb160:   # loop depth 1
  LA s9, chat
  LW s9, 0(s9)
  ADDIW s2, s9, 1
  SW s2, 196(sp)
  LA s2, chat
  SD s2, 848(sp)
  LD s2, 848(sp)
  LW s3, 196(sp)
  SW s3, 0(s2)
  SLLIW s9, s9, 2
  LA s2, chas
  SD s2, 784(sp)
  LD s2, 784(sp)
  ADD s9, s2, s9
  ADDI s2, zero, 43
  SW s2, 360(sp)
  LW s2, 360(sp)
  SW s2, 4(s9)
  SB s0, 62(sp)
  LB s1, 118(sp)
  LB s0, 21(sp)
  JAL zero, bb72
bb161:   # loop depth 2
  LA s9, chat
  LW s9, 0(s9)
  ADDIW s2, s9, -1
  SW s2, 132(sp)
  LA s2, chat
  SD s2, 1136(sp)
  LD s2, 1136(sp)
  LW s3, 132(sp)
  SW s3, 0(s2)
  SLLIW s9, s9, 2
  LA s2, chas
  SD s2, 1128(sp)
  LD s2, 1128(sp)
  ADD s9, s2, s9
  LW s9, 0(s9)
  LA s2, c
  SD s2, 1120(sp)
  LD s2, 1120(sp)
  SW s9, 0(s2)
  LA s2, ii
  SD s2, 1112(sp)
  LD s2, 1112(sp)
  LW s2, 0(s2)
  SW s2, 136(sp)
  LW s2, 136(sp)
  SLLIW s2, s2, 2
  SW s2, 144(sp)
  LA s2, get2
  SD s2, 1104(sp)
  LD s2, 1104(sp)
  LW s3, 144(sp)
  ADD s2, s2, s3
  SD s2, 1064(sp)
  ADDI s2, zero, 32
  SW s2, 348(sp)
  LW s2, 348(sp)
  LD s3, 1064(sp)
  SW s2, 0(s3)
  LD s2, 1064(sp)
  SW s9, 4(s2)
  LW s2, 136(sp)
  ADDIW s9, s2, 2
  LA s2, ii
  SD s2, 1096(sp)
  LD s2, 1096(sp)
  SW s9, 0(s2)
  LW s2, 132(sp)
  SLTIU s9, s2, 1
  BNE s9, zero, bb164
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
  ADDI s0, zero, 1
  JAL zero, bb159
bb166:   # loop depth 2
  ADDI s1, zero, 1
  JAL zero, bb157
bb167:   # loop depth 2
  ADDI s10, zero, 1
  JAL zero, bb155
bb168:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb153
bb169:   # loop depth 2
  ADDI a0, zero, 1
  JAL zero, bb151
bb170:   # loop depth 1
  LA a0, chat
  SD a0, 1208(sp)
  LD a0, 1208(sp)
  LW a0, 0(a0)
  SW a0, 172(sp)
  LW a0, 172(sp)
  ADDIW a0, a0, -1
  SW a0, 188(sp)
  LA a0, chat
  SD a0, 1200(sp)
  LD a0, 1200(sp)
  LW s2, 188(sp)
  SW s2, 0(a0)
  LW a0, 172(sp)
  SLLIW a0, a0, 2
  SW a0, 268(sp)
  LA a0, chas
  SD a0, 1192(sp)
  LD a0, 1192(sp)
  LW s2, 268(sp)
  ADD a0, a0, s2
  SD a0, 1168(sp)
  LD a0, 1168(sp)
  LW a0, 0(a0)
  SW a0, 128(sp)
  LA a0, c
  SD a0, 1184(sp)
  LD a0, 1184(sp)
  LW s2, 128(sp)
  SW s2, 0(a0)
  LW a0, 128(sp)
  XORI a0, a0, 40
  SW a0, 440(sp)
  LW a0, 440(sp)
  BNE a0, zero, bb171
  JAL zero, bb70
bb171:   # loop depth 1
  LA a0, ii
  SD a0, 1176(sp)
  LD a0, 1176(sp)
  LW a0, 0(a0)
  SW a0, 288(sp)
  LW a0, 188(sp)
  SW a0, 188(sp)
  LW a0, 288(sp)
  SW a0, 288(sp)
  # implict jump to bb172
bb172:   # loop depth 2
  LW a0, 288(sp)
  SW a0, 288(sp)
  LW a0, 188(sp)
  SW a0, 188(sp)
  LW a0, 288(sp)
  SLLIW a0, a0, 2
  SW a0, 180(sp)
  LA a0, get2
  SD a0, 1088(sp)
  LD a0, 1088(sp)
  LW s2, 180(sp)
  ADD a0, a0, s2
  SD a0, 1080(sp)
  ADDI a0, zero, 32
  SW a0, 328(sp)
  LW a0, 328(sp)
  LD s2, 1080(sp)
  SW a0, 0(s2)
  LA a0, c
  SD a0, 1160(sp)
  LD a0, 1160(sp)
  LW a0, 0(a0)
  SW a0, 276(sp)
  LW a0, 276(sp)
  LD s2, 1080(sp)
  SW a0, 4(s2)
  LW a0, 288(sp)
  ADDIW a0, a0, 2
  SW a0, 288(sp)
  LW a0, 188(sp)
  ADDIW a0, a0, -1
  SW a0, 284(sp)
  LW a0, 188(sp)
  SLLIW a0, a0, 2
  SW a0, 296(sp)
  LA a0, chas
  SD a0, 1152(sp)
  LD a0, 1152(sp)
  LW s2, 296(sp)
  ADD a0, a0, s2
  SD a0, 1072(sp)
  LD a0, 1072(sp)
  LW a0, 0(a0)
  SW a0, 256(sp)
  LA a0, c
  SD a0, 1144(sp)
  LD a0, 1144(sp)
  LW s2, 256(sp)
  SW s2, 0(a0)
  LW a0, 256(sp)
  XORI a0, a0, 40
  SW a0, 448(sp)
  LW a0, 448(sp)
  BNE a0, zero, bb174
  # implict jump to bb173
bb173:   # loop depth 1
  LA a0, chat
  SD a0, 808(sp)
  LD a0, 808(sp)
  LW s2, 284(sp)
  SW s2, 0(a0)
  LA a0, ii
  SD a0, 800(sp)
  LD a0, 800(sp)
  LW s2, 288(sp)
  SW s2, 0(a0)
  JAL zero, bb70
bb174:   # loop depth 2
  LW a0, 284(sp)
  SW a0, 188(sp)
  LW a0, 288(sp)
  SW a0, 288(sp)
  JAL zero, bb172
bb175:   # loop depth 1
  LA a0, chat
  SD a0, 1232(sp)
  LD a0, 1232(sp)
  LW a0, 0(a0)
  SW a0, 148(sp)
  LW a0, 148(sp)
  ADDIW a0, a0, 1
  SW a0, 204(sp)
  LA a0, chat
  SD a0, 1224(sp)
  LD a0, 1224(sp)
  LW s2, 204(sp)
  SW s2, 0(a0)
  LW a0, 148(sp)
  SLLIW a0, a0, 2
  SW a0, 228(sp)
  LA a0, chas
  SD a0, 1216(sp)
  LD a0, 1216(sp)
  LW s2, 228(sp)
  ADD a0, a0, s2
  SD a0, 592(sp)
  ADDI a0, zero, 94
  SW a0, 292(sp)
  LW a0, 292(sp)
  LD s2, 592(sp)
  SW a0, 4(s2)
  JAL zero, bb69
bb176:   # loop depth 1
  LA a0, chat
  SD a0, 944(sp)
  LD a0, 944(sp)
  LW a0, 0(a0)
  SW a0, 480(sp)
  LW a0, 480(sp)
  ADDIW a0, a0, 1
  SW a0, 476(sp)
  LA a0, chat
  SD a0, 936(sp)
  LD a0, 936(sp)
  LW s2, 476(sp)
  SW s2, 0(a0)
  LW a0, 480(sp)
  SLLIW a0, a0, 2
  SW a0, 412(sp)
  LA a0, chas
  SD a0, 1008(sp)
  LD a0, 1008(sp)
  LW s2, 412(sp)
  ADD a0, a0, s2
  SD a0, 624(sp)
  ADDI a0, zero, 40
  SW a0, 452(sp)
  LW a0, 452(sp)
  LD s2, 624(sp)
  SW a0, 4(s2)
  JAL zero, bb68
bb177:   # loop depth 1
  LA a0, ii
  SD a0, 984(sp)
  LD a0, 984(sp)
  LW a0, 0(a0)
  SW a0, 320(sp)
  LW a0, 320(sp)
  SLLIW a0, a0, 2
  SW a0, 316(sp)
  LA a0, get2
  SD a0, 976(sp)
  LD a0, 976(sp)
  LW s2, 316(sp)
  ADD a0, a0, s2
  SD a0, 608(sp)
  LD a0, 608(sp)
  LW s2, 332(sp)
  SW s2, 0(a0)
  LW a0, 320(sp)
  ADDIW a0, a0, 1
  SW a0, 356(sp)
  LA a0, ii
  SD a0, 968(sp)
  LD a0, 968(sp)
  LW s2, 356(sp)
  SW s2, 0(a0)
  LB a0, 108(sp)
  SB a0, 36(sp)
  LB a0, 117(sp)
  SB a0, 44(sp)
  LB a0, 119(sp)
  SB a0, 68(sp)
  LB a0, 30(sp)
  SB a0, 32(sp)
  LB s2, 122(sp)
  SB s2, 67(sp)
  LB a0, 29(sp)
  SB a0, 18(sp)
  SB s9, 66(sp)
  LB s2, 121(sp)
  SB s2, 65(sp)
  LB s2, 114(sp)
  SB s2, 94(sp)
  LB a0, 8(sp)
  SB a0, 26(sp)
  LB a0, 26(sp)
  SB a0, 26(sp)
  LB s2, 113(sp)
  SB s2, 63(sp)
  LB s2, 63(sp)
  SB s2, 63(sp)
  LB s11, 7(sp)
  LB s2, 112(sp)
  SB s2, 93(sp)
  LB s2, 105(sp)
  SB s2, 92(sp)
  LB s2, 111(sp)
  SB s2, 91(sp)
  LB s2, 110(sp)
  SB s2, 90(sp)
  LB s2, 109(sp)
  SB s2, 89(sp)
  JAL zero, bb81
bb178:   # loop depth 1
  ADDI a0, zero, 1
  SW a0, 324(sp)
  JAL zero, bb66
bb179:   # loop depth 1
  ADDI a0, zero, 57
  SW a0, 396(sp)
  LW a0, 396(sp)
  LW s2, 332(sp)
  SLT a0, a0, s2
  SB a0, 43(sp)
  LB a0, 43(sp)
  XORI a0, a0, 1
  SB a0, 46(sp)
  LB a0, 46(sp)
  SB a0, 46(sp)
  JAL zero, bb64
bb180:   # loop depth 1
  LW s0, 340(sp)
  SLLIW s0, s0, 2
  LA s2, get
  ADD s0, s2, s0
  SW s1, 0(s0)
  LW s0, 340(sp)
  ADDIW s2, s0, 1
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb1
bb181:   # loop depth 1
  XORI s0, s1, 10
  SLTU s0, zero, s0
  JAL zero, bb3
