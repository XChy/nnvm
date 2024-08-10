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
  SD s0, 504(sp)
  SD ra, 520(sp)
  SD s11, 552(sp)
  SD s1, 568(sp)
  SD s2, 576(sp)
  SD s3, 584(sp)
  SD s4, 592(sp)
  SD s5, 600(sp)
  SD s6, 608(sp)
  SD s7, 616(sp)
  SD s8, 624(sp)
  SD s9, 632(sp)
  SD s10, 640(sp)
  LA s0, intt
  LA s2, chat
  ADDI s1, zero, 0
  ADDI s3, zero, 0
  SW s1, 0(s0)
  ADD s1, zero, zero
  SW s3, 0(s2)
  CALL getch
  ADD s2, a0, zero
  # implict jump to bb1
bb1:   # loop depth 1
  SW s1, 400(sp)
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
  SW a0, 480(sp)
  LW a0, 400(sp)
  LW s0, 480(sp)
  BLT s0, a0, bb61
  # implict jump to bb5
bb5:   # loop depth 1
  LA a0, chat
  LW a0, 0(a0)
  BLT zero, a0, bb60
  # implict jump to bb6
bb6:   # loop depth 0
  LA a0, ii
  LA s0, get2
  LA s2, i
  ADDI s1, zero, 64
  LW a0, 0(a0)
  LA s4, get2
  ADDI s3, zero, 1
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
  LD s0, 504(sp)
  LD ra, 520(sp)
  LD s11, 552(sp)
  LD s1, 568(sp)
  LD s2, 576(sp)
  LD s3, 584(sp)
  LD s4, 592(sp)
  LD s5, 600(sp)
  LD s6, 608(sp)
  LD s7, 616(sp)
  LD s8, 624(sp)
  LD s9, 632(sp)
  LD s10, 640(sp)
  ADDI sp, sp, 1248
  JALR zero, 0(ra)
bb8:   # loop depth 0
  ADD s3, zero, zero
  ADD s1, zero, zero
  ADD a0, zero, zero
  # implict jump to bb9
bb9:   # loop depth 1
  LA s0, i
  LA s2, get2
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s2, s0
  LW s0, 0(s0)
  XORI s0, s0, 43
  SLTIU s0, s0, 1
  BNE s0, zero, bb59
  # implict jump to bb10
bb10:   # loop depth 1
  LA s0, i
  LA s2, get2
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s2, s0
  LW s0, 0(s0)
  XORI s0, s0, 45
  SLTIU s0, s0, 1
  # implict jump to bb11
bb11:   # loop depth 1
  BNE s0, zero, bb58
  # implict jump to bb12
bb12:   # loop depth 1
  LA s0, i
  LA s2, get2
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s2, s0
  LW s0, 0(s0)
  XORI s0, s0, 42
  SLTIU s0, s0, 1
  # implict jump to bb13
bb13:   # loop depth 1
  BNE s0, zero, bb57
  # implict jump to bb14
bb14:   # loop depth 1
  LA s0, i
  LA s2, get2
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s2, s0
  LW s0, 0(s0)
  XORI s0, s0, 47
  SLTIU s0, s0, 1
  # implict jump to bb15
bb15:   # loop depth 1
  BNE s0, zero, bb56
  # implict jump to bb16
bb16:   # loop depth 1
  LA s0, i
  LA s2, get2
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s2, s0
  LW s0, 0(s0)
  XORI s0, s0, 37
  SLTIU s0, s0, 1
  # implict jump to bb17
bb17:   # loop depth 1
  BNE s0, zero, bb55
  # implict jump to bb18
bb18:   # loop depth 1
  LA s0, i
  LA s2, get2
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s2, s0
  LW s0, 0(s0)
  XORI s0, s0, 94
  SLTIU s0, s0, 1
  # implict jump to bb19
bb19:   # loop depth 1
  BNE s0, zero, bb30
  # implict jump to bb20
bb20:   # loop depth 1
  LA s0, i
  LA s2, get2
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s2, s0
  LW s0, 0(s0)
  XORI s0, s0, 32
  BNE s0, zero, bb24
  # implict jump to bb21
bb21:   # loop depth 1
  # implict jump to bb22
bb22:   # loop depth 1
  LA s0, i
  LA s7, get2
  LA s6, i
  LW s4, 0(s0)
  ADDIW s4, s4, 1
  SLLIW s5, s4, 2
  SW s4, 0(s6)
  ADD s4, s7, s5
  LW s4, 0(s4)
  XORI s4, s4, 64
  BNE s4, zero, bb23
  JAL zero, bb7
bb23:   # loop depth 1
  JAL zero, bb9
bb24:   # loop depth 1
  LA s0, i
  LA s2, get2
  LA s4, intt
  LA s6, ints
  LW s0, 0(s0)
  LA s5, intt
  LA s7, ii
  LA s9, i
  ADDI s8, zero, 1
  LA s10, get2
  SLLIW s0, s0, 2
  ADD s0, s2, s0
  LW s0, 0(s0)
  LW s2, 0(s4)
  ADDIW s0, s0, -48
  SLLIW s4, s2, 2
  ADDIW s2, s2, 1
  ADD s4, s6, s4
  SW s2, 0(s5)
  SW s0, 4(s4)
  SW s8, 0(s7)
  LW s0, 0(s9)
  ADDIW s0, s0, 1
  SLLIW s0, s0, 2
  ADD s0, s10, s0
  LW s0, 0(s0)
  XORI s0, s0, 32
  BNE s0, zero, bb26
  # implict jump to bb25
bb25:   # loop depth 1
  LA s0, i
  LA s2, ii
  LA s4, i
  LW s0, 0(s0)
  LW s2, 0(s2)
  ADDW s0, s0, s2
  ADDIW s0, s0, -1
  SW s0, 0(s4)
  JAL zero, bb21
bb26:   # loop depth 1
  LA s4, i
  LA s5, ints
  SLLIW s0, s2, 2
  LW s2, 0(s4)
  ADD s4, s5, s0
  LW s0, 0(s4)
  # implict jump to bb27
bb27:   # loop depth 2
  LA s5, ii
  LA s6, get2
  ADDI s7, zero, 10
  LA s8, ii
  LW s5, 0(s5)
  LA s10, get2
  LA s9, ii
  ADDW s5, s2, s5
  SLLIW s5, s5, 2
  ADD s5, s6, s5
  LW s5, 0(s5)
  LW s6, 0(s4)
  ADDIW s5, s5, -48
  ADDW s0, s0, s5
  MULW s5, s6, s7
  SW s5, 0(s4)
  LW s5, 0(s8)
  ADDIW s5, s5, 1
  ADDW s6, s2, s5
  SW s5, 0(s9)
  SLLIW s5, s6, 2
  ADD s5, s10, s5
  LW s5, 0(s5)
  XORI s5, s5, 32
  BNE s5, zero, bb29
  # implict jump to bb28
bb28:   # loop depth 1
  SW s0, 0(s4)
  JAL zero, bb25
bb29:   # loop depth 2
  JAL zero, bb27
bb30:   # loop depth 1
  LA s0, intt
  LA s4, ints
  LA s3, intt
  LA s6, ints
  LW s1, 0(s0)
  LA s5, intt
  LA s7, i
  LA s8, get2
  SLLIW s0, s1, 2
  ADDIW s2, s1, -1
  ADD s0, s4, s0
  SW s2, 0(s3)
  LW s3, 0(s0)
  SLLIW s2, s2, 2
  ADDIW s1, s1, -2
  ADD s2, s6, s2
  SW s1, 0(s5)
  LW s1, 0(s2)
  LW s2, 0(s7)
  SLLIW s2, s2, 2
  ADD s2, s8, s2
  LW s2, 0(s2)
  XORI s2, s2, 43
  SLTIU s2, s2, 1
  BNE s2, zero, bb54
  # implict jump to bb31
bb31:   # loop depth 1
  ADD s4, a0, zero
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
  LA s8, ints
  LA s7, intt
  LW s5, 0(s2)
  ADD a0, s4, zero
  SLLIW s6, s5, 2
  ADDIW s0, s5, 1
  ADD s5, s8, s6
  SW s0, 0(s7)
  SW s4, 4(s5)
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
  ADDI s4, zero, 1
  ADD s2, s3, zero
  # implict jump to bb47
bb47:   # loop depth 2
  MULW s4, s4, s1
  ADDIW s2, s2, -1
  BNE s2, zero, bb49
  # implict jump to bb48
bb48:   # loop depth 1
  JAL zero, bb45
bb49:   # loop depth 2
  JAL zero, bb47
bb50:   # loop depth 1
  REMW s4, s1, s3
  JAL zero, bb40
bb51:   # loop depth 1
  DIVW s4, s1, s3
  JAL zero, bb38
bb52:   # loop depth 1
  MULW s4, s3, s1
  JAL zero, bb36
bb53:   # loop depth 1
  SUBW s4, s1, s3
  JAL zero, bb34
bb54:   # loop depth 1
  ADDW s4, s3, s1
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
  LA s2, chas
  LA s1, chat
  LA s3, ii
  LW a0, 0(a0)
  LA s4, get2
  ADDI s5, zero, 32
  LA s6, ii
  SLLIW s0, a0, 2
  ADDIW a0, a0, -1
  ADD s0, s2, s0
  SW a0, 0(s1)
  LW a0, 0(s0)
  LW s0, 0(s3)
  SLLIW s1, s0, 2
  ADDIW s2, s0, 2
  ADD s0, s4, s1
  SW s5, 0(s0)
  SW a0, 4(s0)
  SW s2, 0(s6)
  JAL zero, bb5
bb61:   # loop depth 0
  ADD a0, zero, zero
  SB a0, 91(sp)
  ADD a0, zero, zero
  SB a0, 113(sp)
  ADD a0, zero, zero
  SB a0, 112(sp)
  ADD a0, zero, zero
  SB a0, 111(sp)
  ADD a0, zero, zero
  SB a0, 110(sp)
  ADD a0, zero, zero
  SB a0, 109(sp)
  ADD a0, zero, zero
  SB a0, 107(sp)
  ADD a0, zero, zero
  SB a0, 105(sp)
  ADD a0, zero, zero
  SB a0, 106(sp)
  ADD a0, zero, zero
  SB a0, 68(sp)
  ADD a0, zero, zero
  SB a0, 69(sp)
  ADD a0, zero, zero
  SB a0, 70(sp)
  ADD a0, zero, zero
  SB a0, 61(sp)
  ADD s6, zero, zero
  ADD s7, zero, zero
  ADD s8, zero, zero
  ADD a0, zero, zero
  SB a0, 28(sp)
  ADD s10, zero, zero
  ADD s9, zero, zero
  LW a0, 480(sp)
  SW a0, 480(sp)
  # implict jump to bb62
bb62:   # loop depth 1
  LA s11, get
  LW a0, 480(sp)
  SW a0, 480(sp)
  LW a0, 480(sp)
  SLLIW s1, a0, 2
  ADD s1, s11, s1
  LW s1, 0(s1)
  SW s1, 440(sp)
  LB a0, 28(sp)
  SB a0, 28(sp)
  LB a0, 28(sp)
  SB a0, 138(sp)
  SB s8, 139(sp)
  SB s7, 140(sp)
  SB s6, 141(sp)
  LB s1, 61(sp)
  SB s1, 142(sp)
  LW s1, 440(sp)
  SLTI s2, s1, 48
  LB s1, 70(sp)
  SB s1, 143(sp)
  XORI s7, s2, 1
  LB s1, 69(sp)
  SB s1, 148(sp)
  LB a0, 68(sp)
  SB a0, 24(sp)
  LB a0, 24(sp)
  SB a0, 24(sp)
  LB s1, 106(sp)
  SB s1, 149(sp)
  LB s1, 105(sp)
  SB s1, 147(sp)
  LB s1, 107(sp)
  SB s1, 145(sp)
  LB s1, 109(sp)
  SB s1, 146(sp)
  LB s1, 110(sp)
  SB s1, 103(sp)
  LB s1, 111(sp)
  SB s1, 102(sp)
  LB s1, 112(sp)
  SB s1, 100(sp)
  LB s1, 113(sp)
  SB s1, 99(sp)
  LB s1, 91(sp)
  SB s1, 98(sp)
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
  LW s1, 440(sp)
  XORI s7, s1, 40
  SLTIU s7, s7, 1
  BNE s7, zero, bb176
  # implict jump to bb68
bb68:   # loop depth 1
  LW s1, 440(sp)
  XORI s7, s1, 94
  SLTIU s7, s7, 1
  BNE s7, zero, bb175
  # implict jump to bb69
bb69:   # loop depth 1
  LW s1, 440(sp)
  XORI s7, s1, 41
  SLTIU s7, s7, 1
  BNE s7, zero, bb170
  # implict jump to bb70
bb70:   # loop depth 1
  LW s1, 440(sp)
  XORI s7, s1, 43
  SLTIU s7, s7, 1
  BNE s7, zero, bb149
  # implict jump to bb71
bb71:   # loop depth 1
  LB a0, 24(sp)
  SB a0, 24(sp)
  LB a0, 145(sp)
  SB a0, 22(sp)
  LB a0, 22(sp)
  SB a0, 22(sp)
  LB a0, 102(sp)
  SB a0, 23(sp)
  LB a0, 23(sp)
  SB a0, 23(sp)
  # implict jump to bb72
bb72:   # loop depth 1
  LW s1, 440(sp)
  XORI s2, s1, 45
  LB a0, 23(sp)
  SB a0, 23(sp)
  LB a0, 23(sp)
  SB a0, 84(sp)
  SLTIU a0, s2, 1
  SB a0, 25(sp)
  LB a0, 22(sp)
  SB a0, 22(sp)
  LB a0, 22(sp)
  SB a0, 83(sp)
  LB a0, 24(sp)
  SB a0, 24(sp)
  LB a0, 24(sp)
  SB a0, 82(sp)
  SB s10, 93(sp)
  SB s9, 125(sp)
  LB a0, 25(sp)
  BNE a0, zero, bb128
  # implict jump to bb73
bb73:   # loop depth 1
  LB a0, 138(sp)
  SB a0, 27(sp)
  LB a0, 27(sp)
  SB a0, 27(sp)
  LB s8, 139(sp)
  LB s9, 140(sp)
  LB s10, 141(sp)
  LB s7, 146(sp)
  # implict jump to bb74
bb74:   # loop depth 1
  LW a0, 440(sp)
  XORI a0, a0, 42
  SW a0, 344(sp)
  SB s7, 124(sp)
  LW a0, 344(sp)
  SLTIU a0, a0, 1
  SB a0, 135(sp)
  SB s10, 123(sp)
  SB s9, 122(sp)
  SB s8, 121(sp)
  LB a0, 27(sp)
  SB a0, 27(sp)
  LB a0, 27(sp)
  SB a0, 120(sp)
  LB a0, 135(sp)
  BNE a0, zero, bb113
  # implict jump to bb75
bb75:   # loop depth 1
  LB a0, 142(sp)
  SB a0, 10(sp)
  LB s11, 143(sp)
  LB s9, 149(sp)
  # implict jump to bb76
bb76:   # loop depth 1
  LW a0, 440(sp)
  XORI a0, a0, 47
  SW a0, 280(sp)
  SB s9, 119(sp)
  LW a0, 280(sp)
  SLTIU a0, a0, 1
  SB a0, 33(sp)
  SB s11, 118(sp)
  LB a0, 10(sp)
  SB a0, 117(sp)
  LB a0, 33(sp)
  BNE a0, zero, bb98
  # implict jump to bb77
bb77:   # loop depth 1
  LB a0, 148(sp)
  SB a0, 7(sp)
  LB a0, 147(sp)
  SB a0, 8(sp)
  LB a0, 103(sp)
  SB a0, 9(sp)
  # implict jump to bb78
bb78:   # loop depth 1
  LW a0, 440(sp)
  XORI a0, a0, 37
  SW a0, 424(sp)
  LB a0, 9(sp)
  SB a0, 116(sp)
  LW a0, 424(sp)
  SLTIU a0, a0, 1
  SB a0, 52(sp)
  LB a0, 8(sp)
  SB a0, 104(sp)
  LB a0, 7(sp)
  SB a0, 114(sp)
  LB a0, 52(sp)
  BNE a0, zero, bb83
  # implict jump to bb79
bb79:   # loop depth 1
  LB a0, 100(sp)
  SB a0, 3(sp)
  LB a0, 99(sp)
  SB a0, 34(sp)
  LB a0, 34(sp)
  SB a0, 34(sp)
  LB s6, 98(sp)
  # implict jump to bb80
bb80:   # loop depth 1
  LA a0, ii
  SD a0, 720(sp)
  LA a0, get2
  SD a0, 712(sp)
  LA a0, ii
  SD a0, 840(sp)
  ADDI a0, zero, 32
  SW a0, 368(sp)
  LD a0, 720(sp)
  LW a0, 0(a0)
  SW a0, 188(sp)
  SB s6, 108(sp)
  LB a0, 34(sp)
  SB a0, 34(sp)
  LB a0, 3(sp)
  SB a0, 78(sp)
  LB a0, 125(sp)
  SB a0, 137(sp)
  LB a0, 93(sp)
  SB a0, 144(sp)
  LW a0, 188(sp)
  SLLIW s3, a0, 2
  LW a0, 188(sp)
  ADDIW a0, a0, 1
  SW a0, 416(sp)
  LD a0, 712(sp)
  ADD s3, a0, s3
  LB a0, 120(sp)
  SB a0, 126(sp)
  LW a0, 368(sp)
  SW a0, 0(s3)
  LB a0, 121(sp)
  SB a0, 101(sp)
  LB a0, 122(sp)
  SB a0, 97(sp)
  LB a0, 123(sp)
  SB a0, 95(sp)
  LB a0, 117(sp)
  SB a0, 17(sp)
  LB a0, 118(sp)
  SB a0, 18(sp)
  LB a0, 114(sp)
  SB a0, 19(sp)
  LB a0, 82(sp)
  SB a0, 24(sp)
  LB a0, 24(sp)
  SB a0, 24(sp)
  LB a0, 119(sp)
  SB a0, 20(sp)
  LB a0, 104(sp)
  SB a0, 31(sp)
  LB a0, 83(sp)
  SB a0, 62(sp)
  LB a0, 124(sp)
  SB a0, 1(sp)
  LB s3, 116(sp)
  LB s2, 84(sp)
  LB s1, 78(sp)
  LB a0, 34(sp)
  SB a0, 34(sp)
  LB a0, 108(sp)
  LD s4, 840(sp)
  LW s5, 416(sp)
  SW s5, 0(s4)
  # implict jump to bb81
bb81:   # loop depth 1
  LA s4, i
  SD s4, 872(sp)
  LA s4, i
  SD s4, 864(sp)
  SB a0, 96(sp)
  LB a0, 34(sp)
  SB a0, 34(sp)
  LB a0, 34(sp)
  SB a0, 94(sp)
  LD a0, 872(sp)
  LW s4, 0(a0)
  SB s1, 81(sp)
  SB s2, 92(sp)
  SB s3, 90(sp)
  LB a0, 1(sp)
  SB a0, 89(sp)
  LB a0, 62(sp)
  SB a0, 88(sp)
  ADDIW a0, s4, 1
  SW a0, 480(sp)
  LB a0, 31(sp)
  SB a0, 87(sp)
  LD a0, 864(sp)
  LW s0, 480(sp)
  SW s0, 0(a0)
  LB a0, 20(sp)
  SB a0, 86(sp)
  LB a0, 24(sp)
  SB a0, 24(sp)
  LB a0, 24(sp)
  SB a0, 85(sp)
  LB a0, 19(sp)
  SB a0, 35(sp)
  LB a0, 35(sp)
  SB a0, 35(sp)
  LB a0, 18(sp)
  SB a0, 129(sp)
  LB s4, 17(sp)
  LB s6, 95(sp)
  LB s7, 97(sp)
  LB s8, 101(sp)
  LB a0, 126(sp)
  SB a0, 28(sp)
  LB a0, 28(sp)
  SB a0, 28(sp)
  LB s10, 144(sp)
  LB s9, 137(sp)
  LW a0, 400(sp)
  LW s0, 480(sp)
  BLT s0, a0, bb82
  JAL zero, bb5
bb82:   # loop depth 1
  LB a0, 96(sp)
  SB a0, 91(sp)
  LB a0, 94(sp)
  SB a0, 113(sp)
  LB a0, 81(sp)
  SB a0, 112(sp)
  LB a0, 92(sp)
  SB a0, 111(sp)
  LB a0, 90(sp)
  SB a0, 110(sp)
  LB a0, 89(sp)
  SB a0, 109(sp)
  LB a0, 88(sp)
  SB a0, 107(sp)
  LB a0, 87(sp)
  SB a0, 105(sp)
  LB a0, 86(sp)
  SB a0, 106(sp)
  LB a0, 85(sp)
  SB a0, 68(sp)
  LB a0, 35(sp)
  SB a0, 35(sp)
  LB a0, 35(sp)
  SB a0, 69(sp)
  LB a0, 129(sp)
  SB a0, 70(sp)
  SB s4, 61(sp)
  LB a0, 28(sp)
  SB a0, 28(sp)
  LW a0, 480(sp)
  SW a0, 480(sp)
  JAL zero, bb62
bb83:   # loop depth 2
  LA s5, chat
  LA s6, chas
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  ADD s5, s6, s5
  LW a0, 0(s5)
  SW a0, 196(sp)
  LW a0, 196(sp)
  XORI s5, a0, 42
  SLTIU s5, s5, 1
  BNE s5, zero, bb97
  # implict jump to bb84
bb84:   # loop depth 2
  LW a0, 196(sp)
  XORI s5, a0, 47
  SLTIU s6, s5, 1
  # implict jump to bb85
bb85:   # loop depth 2
  BNE s6, zero, bb96
  # implict jump to bb86
bb86:   # loop depth 2
  LW a0, 196(sp)
  XORI s5, a0, 37
  SLTIU a0, s5, 1
  SB a0, 72(sp)
  LB a0, 72(sp)
  SB a0, 72(sp)
  # implict jump to bb87
bb87:   # loop depth 2
  LB a0, 72(sp)
  SB a0, 72(sp)
  LB a0, 72(sp)
  BNE a0, zero, bb95
  # implict jump to bb88
bb88:   # loop depth 2
  LW a0, 196(sp)
  XORI s5, a0, 94
  SLTIU s10, s5, 1
  # implict jump to bb89
bb89:   # loop depth 2
  BNE s10, zero, bb91
  # implict jump to bb90
bb90:   # loop depth 1
  LA a0, chat
  SD a0, 904(sp)
  LA a0, chas
  SD a0, 888(sp)
  LA a0, chat
  SD a0, 896(sp)
  ADDI a0, zero, 37
  SW a0, 336(sp)
  LD a0, 904(sp)
  LW a0, 0(a0)
  SW a0, 404(sp)
  SB s10, 3(sp)
  LB a0, 72(sp)
  SB a0, 34(sp)
  LB a0, 34(sp)
  SB a0, 34(sp)
  LW a0, 404(sp)
  SLLIW a0, a0, 2
  SW a0, 412(sp)
  LW a0, 404(sp)
  ADDIW a0, a0, 1
  SW a0, 408(sp)
  LD a0, 888(sp)
  LW s0, 412(sp)
  ADD a0, a0, s0
  SD a0, 1008(sp)
  LD a0, 896(sp)
  LW s0, 408(sp)
  SW s0, 0(a0)
  LW a0, 336(sp)
  LD s0, 1008(sp)
  SW a0, 4(s0)
  JAL zero, bb80
bb91:   # loop depth 2
  LA a0, chat
  SD a0, 696(sp)
  LA a0, chas
  SD a0, 944(sp)
  LA a0, chat
  SD a0, 760(sp)
  LA a0, c
  SD a0, 936(sp)
  LD a0, 696(sp)
  LW a0, 0(a0)
  SW a0, 200(sp)
  LA a0, ii
  SD a0, 928(sp)
  LA a0, get2
  SD a0, 920(sp)
  ADDI a0, zero, 32
  SW a0, 380(sp)
  LA a0, ii
  SD a0, 912(sp)
  LW a0, 200(sp)
  SLLIW a0, a0, 2
  SW a0, 156(sp)
  LW a0, 200(sp)
  ADDIW a0, a0, -1
  SW a0, 204(sp)
  LD a0, 944(sp)
  LW s0, 156(sp)
  ADD a0, a0, s0
  SD a0, 952(sp)
  LD a0, 760(sp)
  LW s0, 204(sp)
  SW s0, 0(a0)
  LD a0, 952(sp)
  LW a0, 0(a0)
  SW a0, 180(sp)
  LW a0, 204(sp)
  SLTIU a0, a0, 1
  SB a0, 75(sp)
  LD a0, 936(sp)
  LW s0, 180(sp)
  SW s0, 0(a0)
  LD a0, 928(sp)
  LW a0, 0(a0)
  SW a0, 172(sp)
  LW a0, 172(sp)
  SLLIW a0, a0, 2
  SW a0, 284(sp)
  LW a0, 172(sp)
  ADDIW a0, a0, 2
  SW a0, 392(sp)
  LD a0, 920(sp)
  LW s0, 284(sp)
  ADD a0, a0, s0
  SD a0, 1016(sp)
  LW a0, 380(sp)
  LD s0, 1016(sp)
  SW a0, 0(s0)
  LD a0, 1016(sp)
  LW s0, 180(sp)
  SW s0, 4(a0)
  LD a0, 912(sp)
  LW s0, 392(sp)
  SW s0, 0(a0)
  LB a0, 75(sp)
  BNE a0, zero, bb94
  # implict jump to bb92
bb92:   # loop depth 2
  ADDI a0, zero, 1
  SW a0, 396(sp)
  # implict jump to bb93
bb93:   # loop depth 2
  LW a0, 396(sp)
  SW a0, 396(sp)
  LW a0, 396(sp)
  SLTIU a0, a0, 1
  SB a0, 74(sp)
  LB a0, 74(sp)
  BNE a0, zero, bb90
  JAL zero, bb83
bb94:   # loop depth 2
  ADD a0, zero, zero
  SW a0, 396(sp)
  JAL zero, bb93
bb95:   # loop depth 2
  ADDI s10, zero, 1
  JAL zero, bb89
bb96:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 72(sp)
  JAL zero, bb87
bb97:   # loop depth 2
  ADDI s6, zero, 1
  JAL zero, bb85
bb98:   # loop depth 2
  LA a0, chat
  SD a0, 816(sp)
  LA a0, chas
  SD a0, 808(sp)
  LD a0, 816(sp)
  LW a0, 0(a0)
  SW a0, 264(sp)
  LW a0, 264(sp)
  SLLIW a0, a0, 2
  SW a0, 260(sp)
  LD a0, 808(sp)
  LW s0, 260(sp)
  ADD a0, a0, s0
  SD a0, 1056(sp)
  LD a0, 1056(sp)
  LW a0, 0(a0)
  SW a0, 256(sp)
  LW a0, 256(sp)
  XORI a0, a0, 42
  SW a0, 428(sp)
  LW a0, 428(sp)
  SLTIU a0, a0, 1
  SB a0, 50(sp)
  LB a0, 50(sp)
  BNE a0, zero, bb112
  # implict jump to bb99
bb99:   # loop depth 2
  LW a0, 256(sp)
  XORI a0, a0, 47
  SW a0, 432(sp)
  LW a0, 432(sp)
  SLTIU a0, a0, 1
  SB a0, 6(sp)
  LB a0, 6(sp)
  SB a0, 6(sp)
  # implict jump to bb100
bb100:   # loop depth 2
  LB a0, 6(sp)
  SB a0, 43(sp)
  LB a0, 43(sp)
  BNE a0, zero, bb111
  # implict jump to bb101
bb101:   # loop depth 2
  LW a0, 256(sp)
  XORI a0, a0, 37
  SW a0, 436(sp)
  LW a0, 436(sp)
  SLTIU a0, a0, 1
  SB a0, 5(sp)
  LB a0, 5(sp)
  SB a0, 5(sp)
  # implict jump to bb102
bb102:   # loop depth 2
  LB a0, 5(sp)
  SB a0, 51(sp)
  LB a0, 51(sp)
  BNE a0, zero, bb110
  # implict jump to bb103
bb103:   # loop depth 2
  LW a0, 256(sp)
  XORI a0, a0, 94
  SW a0, 388(sp)
  LW a0, 388(sp)
  SLTIU a0, a0, 1
  SB a0, 4(sp)
  LB a0, 4(sp)
  SB a0, 4(sp)
  # implict jump to bb104
bb104:   # loop depth 2
  LB a0, 4(sp)
  SB a0, 79(sp)
  LB a0, 79(sp)
  BNE a0, zero, bb106
  # implict jump to bb105
bb105:   # loop depth 1
  LA a0, chat
  SD a0, 744(sp)
  LA a0, chas
  SD a0, 728(sp)
  LA a0, chat
  SD a0, 736(sp)
  ADDI a0, zero, 47
  SW a0, 360(sp)
  LD a0, 744(sp)
  LW a0, 0(a0)
  SW a0, 216(sp)
  LB a0, 51(sp)
  SB a0, 7(sp)
  LB a0, 79(sp)
  SB a0, 8(sp)
  LB a0, 43(sp)
  SB a0, 9(sp)
  LW a0, 216(sp)
  SLLIW a0, a0, 2
  SW a0, 224(sp)
  LW a0, 216(sp)
  ADDIW a0, a0, 1
  SW a0, 220(sp)
  LD a0, 728(sp)
  LW s0, 224(sp)
  ADD a0, a0, s0
  SD a0, 1032(sp)
  LD a0, 736(sp)
  LW s0, 220(sp)
  SW s0, 0(a0)
  LW a0, 360(sp)
  LD s0, 1032(sp)
  SW a0, 4(s0)
  JAL zero, bb78
bb106:   # loop depth 2
  LA a0, chat
  SD a0, 800(sp)
  LA a0, chas
  SD a0, 784(sp)
  LA a0, chat
  SD a0, 792(sp)
  LA a0, c
  SD a0, 776(sp)
  LD a0, 800(sp)
  LW a0, 0(a0)
  SW a0, 252(sp)
  LA a0, ii
  SD a0, 768(sp)
  LA a0, get2
  SD a0, 688(sp)
  ADDI a0, zero, 32
  SW a0, 340(sp)
  LA a0, ii
  SD a0, 752(sp)
  LW a0, 252(sp)
  SLLIW a0, a0, 2
  SW a0, 208(sp)
  LW a0, 252(sp)
  ADDIW a0, a0, -1
  SW a0, 248(sp)
  LD a0, 784(sp)
  LW s0, 208(sp)
  ADD a0, a0, s0
  SD a0, 1048(sp)
  LD a0, 792(sp)
  LW s0, 248(sp)
  SW s0, 0(a0)
  LD a0, 1048(sp)
  LW a0, 0(a0)
  SW a0, 240(sp)
  LW a0, 248(sp)
  SLTIU a0, a0, 1
  SB a0, 47(sp)
  LD a0, 776(sp)
  LW s0, 240(sp)
  SW s0, 0(a0)
  LD a0, 768(sp)
  LW a0, 0(a0)
  SW a0, 236(sp)
  LW a0, 236(sp)
  SLLIW a0, a0, 2
  SW a0, 232(sp)
  LW a0, 236(sp)
  ADDIW a0, a0, 2
  SW a0, 228(sp)
  LD a0, 688(sp)
  LW s0, 232(sp)
  ADD a0, a0, s0
  SD a0, 1040(sp)
  LW a0, 340(sp)
  LD s0, 1040(sp)
  SW a0, 0(s0)
  LD a0, 1040(sp)
  LW s0, 240(sp)
  SW s0, 4(a0)
  LD a0, 752(sp)
  LW s0, 228(sp)
  SW s0, 0(a0)
  LB a0, 47(sp)
  BNE a0, zero, bb109
  # implict jump to bb107
bb107:   # loop depth 2
  ADDI a0, zero, 1
  SW a0, 212(sp)
  # implict jump to bb108
bb108:   # loop depth 2
  LW a0, 212(sp)
  SW a0, 212(sp)
  LW a0, 212(sp)
  SLTIU a0, a0, 1
  SB a0, 46(sp)
  LB a0, 46(sp)
  BNE a0, zero, bb105
  JAL zero, bb98
bb109:   # loop depth 2
  ADD a0, zero, zero
  SW a0, 212(sp)
  JAL zero, bb108
bb110:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 4(sp)
  JAL zero, bb104
bb111:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 5(sp)
  JAL zero, bb102
bb112:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 6(sp)
  JAL zero, bb100
bb113:   # loop depth 2
  LA s9, chat
  LA s10, chas
  LW s9, 0(s9)
  SLLIW s9, s9, 2
  ADD s9, s10, s9
  LW a0, 0(s9)
  SW a0, 472(sp)
  LW a0, 472(sp)
  XORI s9, a0, 42
  SLTIU s9, s9, 1
  BNE s9, zero, bb127
  # implict jump to bb114
bb114:   # loop depth 2
  LW a0, 472(sp)
  XORI s9, a0, 47
  SLTIU s9, s9, 1
  # implict jump to bb115
bb115:   # loop depth 2
  BNE s9, zero, bb126
  # implict jump to bb116
bb116:   # loop depth 2
  LW a0, 472(sp)
  XORI s10, a0, 37
  SLTIU s10, s10, 1
  # implict jump to bb117
bb117:   # loop depth 2
  BNE s10, zero, bb125
  # implict jump to bb118
bb118:   # loop depth 2
  LW a0, 472(sp)
  XORI s11, a0, 94
  SLTIU s11, s11, 1
  # implict jump to bb119
bb119:   # loop depth 2
  BNE s11, zero, bb121
  # implict jump to bb120
bb120:   # loop depth 1
  LA a0, chat
  SD a0, 1104(sp)
  LA a0, chas
  SD a0, 824(sp)
  LA a0, chat
  SD a0, 880(sp)
  ADDI a0, zero, 42
  SW a0, 304(sp)
  LD a0, 1104(sp)
  LW a0, 0(a0)
  SW a0, 152(sp)
  SB s10, 10(sp)
  LW a0, 152(sp)
  SLLIW a0, a0, 2
  SW a0, 244(sp)
  LW a0, 152(sp)
  ADDIW a0, a0, 1
  SW a0, 356(sp)
  LD a0, 824(sp)
  LW s0, 244(sp)
  ADD a0, a0, s0
  SD a0, 1064(sp)
  LD a0, 880(sp)
  LW s0, 356(sp)
  SW s0, 0(a0)
  LW a0, 304(sp)
  LD s0, 1064(sp)
  SW a0, 4(s0)
  JAL zero, bb76
bb121:   # loop depth 2
  LA a0, chat
  SD a0, 1160(sp)
  LA a0, chas
  SD a0, 1144(sp)
  LA a0, chat
  SD a0, 1152(sp)
  LA a0, c
  SD a0, 1136(sp)
  LD a0, 1160(sp)
  LW a0, 0(a0)
  SW a0, 468(sp)
  LA a0, ii
  SD a0, 1128(sp)
  LA a0, get2
  SD a0, 1120(sp)
  ADDI a0, zero, 32
  SW a0, 292(sp)
  LA a0, ii
  SD a0, 1112(sp)
  LW a0, 468(sp)
  SLLIW a0, a0, 2
  SW a0, 160(sp)
  LW a0, 468(sp)
  ADDIW a0, a0, -1
  SW a0, 460(sp)
  LD a0, 1144(sp)
  LW s0, 160(sp)
  ADD a0, a0, s0
  SD a0, 1080(sp)
  LD a0, 1152(sp)
  LW s0, 460(sp)
  SW s0, 0(a0)
  LD a0, 1080(sp)
  LW a0, 0(a0)
  SW a0, 176(sp)
  LW a0, 460(sp)
  SLTIU a0, a0, 1
  SB a0, 58(sp)
  LD a0, 1136(sp)
  LW s0, 176(sp)
  SW s0, 0(a0)
  LD a0, 1128(sp)
  LW a0, 0(a0)
  SW a0, 184(sp)
  LW a0, 184(sp)
  SLLIW a0, a0, 2
  SW a0, 192(sp)
  LW a0, 184(sp)
  ADDIW a0, a0, 2
  SW a0, 168(sp)
  LD a0, 1120(sp)
  LW s0, 192(sp)
  ADD a0, a0, s0
  SD a0, 1072(sp)
  LW a0, 292(sp)
  LD s0, 1072(sp)
  SW a0, 0(s0)
  LD a0, 1072(sp)
  LW s0, 176(sp)
  SW s0, 4(a0)
  LD a0, 1112(sp)
  LW s0, 168(sp)
  SW s0, 0(a0)
  LB a0, 58(sp)
  BNE a0, zero, bb124
  # implict jump to bb122
bb122:   # loop depth 2
  ADDI a0, zero, 1
  SW a0, 164(sp)
  # implict jump to bb123
bb123:   # loop depth 2
  LW a0, 164(sp)
  SW a0, 164(sp)
  LW a0, 164(sp)
  SLTIU a0, a0, 1
  SB a0, 57(sp)
  LB a0, 57(sp)
  BNE a0, zero, bb120
  JAL zero, bb113
bb124:   # loop depth 2
  ADD a0, zero, zero
  SW a0, 164(sp)
  JAL zero, bb123
bb125:   # loop depth 2
  ADDI s11, zero, 1
  JAL zero, bb119
bb126:   # loop depth 2
  ADDI s10, zero, 1
  JAL zero, bb117
bb127:   # loop depth 2
  ADDI s9, zero, 1
  JAL zero, bb115
bb128:   # loop depth 2
  LA s1, chat
  LA s7, chas
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADD s1, s7, s1
  LW s10, 0(s1)
  XORI s1, s10, 43
  SLTIU s1, s1, 1
  BNE s1, zero, bb148
  # implict jump to bb129
bb129:   # loop depth 2
  XORI s1, s10, 45
  SLTIU a0, s1, 1
  SB a0, 27(sp)
  LB a0, 27(sp)
  SB a0, 27(sp)
  # implict jump to bb130
bb130:   # loop depth 2
  LB a0, 27(sp)
  SB a0, 27(sp)
  LB a0, 27(sp)
  BNE a0, zero, bb147
  # implict jump to bb131
bb131:   # loop depth 2
  XORI s7, s10, 42
  SLTIU s7, s7, 1
  # implict jump to bb132
bb132:   # loop depth 2
  BNE s7, zero, bb146
  # implict jump to bb133
bb133:   # loop depth 2
  XORI s8, s10, 47
  SLTIU s8, s8, 1
  # implict jump to bb134
bb134:   # loop depth 2
  BNE s8, zero, bb145
  # implict jump to bb135
bb135:   # loop depth 2
  XORI s9, s10, 37
  SLTIU s9, s9, 1
  # implict jump to bb136
bb136:   # loop depth 2
  BNE s9, zero, bb144
  # implict jump to bb137
bb137:   # loop depth 2
  XORI s10, s10, 94
  SLTIU s10, s10, 1
  # implict jump to bb138
bb138:   # loop depth 2
  BNE s10, zero, bb140
  # implict jump to bb139
bb139:   # loop depth 1
  LA s11, chat
  LA a0, chas
  SD a0, 1096(sp)
  LA a0, chat
  SD a0, 1176(sp)
  ADDI a0, zero, 45
  SW a0, 488(sp)
  LW a0, 0(s11)
  SW a0, 316(sp)
  LB a0, 27(sp)
  SB a0, 27(sp)
  LW a0, 316(sp)
  SLLIW a0, a0, 2
  SW a0, 308(sp)
  LW a0, 316(sp)
  ADDIW a0, a0, 1
  SW a0, 364(sp)
  LD a0, 1096(sp)
  LW s0, 308(sp)
  ADD a0, a0, s0
  SD a0, 1088(sp)
  LD a0, 1176(sp)
  LW s0, 364(sp)
  SW s0, 0(a0)
  LW a0, 488(sp)
  LD s0, 1088(sp)
  SW a0, 4(s0)
  JAL zero, bb74
bb140:   # loop depth 2
  LA s11, chat
  LA a0, chas
  SD a0, 1216(sp)
  LA a0, chat
  SD a0, 1224(sp)
  LA a0, c
  SD a0, 1208(sp)
  LW s11, 0(s11)
  LA a0, ii
  SD a0, 1200(sp)
  LA a0, get2
  SD a0, 1192(sp)
  ADDI a0, zero, 32
  SW a0, 276(sp)
  LA a0, ii
  SD a0, 848(sp)
  SLLIW a0, s11, 2
  SW a0, 324(sp)
  ADDIW s11, s11, -1
  LD a0, 1216(sp)
  LW s0, 324(sp)
  ADD a0, a0, s0
  SD a0, 1168(sp)
  LD a0, 1224(sp)
  SW s11, 0(a0)
  LD a0, 1168(sp)
  LW a0, 0(a0)
  SW a0, 384(sp)
  SLTIU a0, s11, 1
  SB a0, 26(sp)
  LD a0, 1208(sp)
  LW s0, 384(sp)
  SW s0, 0(a0)
  LD a0, 1200(sp)
  LW s11, 0(a0)
  SLLIW a0, s11, 2
  SW a0, 372(sp)
  ADDIW a0, s11, 2
  SW a0, 332(sp)
  LD a0, 1192(sp)
  LW s0, 372(sp)
  ADD s11, a0, s0
  LW a0, 276(sp)
  SW a0, 0(s11)
  LW a0, 384(sp)
  SW a0, 4(s11)
  LD a0, 848(sp)
  LW s0, 332(sp)
  SW s0, 0(a0)
  LB a0, 26(sp)
  BNE a0, zero, bb143
  # implict jump to bb141
bb141:   # loop depth 2
  ADDI s11, zero, 1
  # implict jump to bb142
bb142:   # loop depth 2
  SLTIU s11, s11, 1
  BNE s11, zero, bb139
  JAL zero, bb128
bb143:   # loop depth 2
  ADD s11, zero, zero
  JAL zero, bb142
bb144:   # loop depth 2
  ADDI s10, zero, 1
  JAL zero, bb138
bb145:   # loop depth 2
  ADDI s9, zero, 1
  JAL zero, bb136
bb146:   # loop depth 2
  ADDI s8, zero, 1
  JAL zero, bb134
bb147:   # loop depth 2
  ADDI s7, zero, 1
  JAL zero, bb132
bb148:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 27(sp)
  JAL zero, bb130
bb149:   # loop depth 2
  LA a0, chat
  LA s0, chas
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s0, a0
  LW s4, 0(a0)
  XORI a0, s4, 43
  SLTIU a0, a0, 1
  BNE a0, zero, bb169
  # implict jump to bb150
bb150:   # loop depth 2
  XORI a0, s4, 45
  SLTIU a0, a0, 1
  SB a0, 24(sp)
  LB a0, 24(sp)
  SB a0, 24(sp)
  # implict jump to bb151
bb151:   # loop depth 2
  LB a0, 24(sp)
  SB a0, 24(sp)
  LB a0, 24(sp)
  BNE a0, zero, bb168
  # implict jump to bb152
bb152:   # loop depth 2
  XORI s0, s4, 42
  SLTIU s10, s0, 1
  # implict jump to bb153
bb153:   # loop depth 2
  BNE s10, zero, bb167
  # implict jump to bb154
bb154:   # loop depth 2
  XORI s2, s4, 47
  SLTIU a0, s2, 1
  SB a0, 23(sp)
  LB a0, 23(sp)
  SB a0, 23(sp)
  # implict jump to bb155
bb155:   # loop depth 2
  LB a0, 23(sp)
  SB a0, 23(sp)
  LB a0, 23(sp)
  BNE a0, zero, bb166
  # implict jump to bb156
bb156:   # loop depth 2
  XORI s3, s4, 37
  SLTIU s9, s3, 1
  # implict jump to bb157
bb157:   # loop depth 2
  BNE s9, zero, bb165
  # implict jump to bb158
bb158:   # loop depth 2
  XORI s4, s4, 94
  SLTIU a0, s4, 1
  SB a0, 22(sp)
  LB a0, 22(sp)
  SB a0, 22(sp)
  # implict jump to bb159
bb159:   # loop depth 2
  LB a0, 22(sp)
  SB a0, 22(sp)
  LB a0, 22(sp)
  BNE a0, zero, bb161
  # implict jump to bb160
bb160:   # loop depth 1
  LA s7, chat
  LA s1, chas
  SD s1, 1232(sp)
  LA a0, chat
  SD a0, 528(sp)
  ADDI s1, zero, 43
  SW s1, 476(sp)
  LW s11, 0(s7)
  LB a0, 24(sp)
  SB a0, 24(sp)
  LB a0, 22(sp)
  SB a0, 22(sp)
  LB a0, 23(sp)
  SB a0, 23(sp)
  SLLIW s3, s11, 2
  ADDIW s2, s11, 1
  LD s1, 1232(sp)
  ADD s3, s1, s3
  LD a0, 528(sp)
  SW s2, 0(a0)
  LW s1, 476(sp)
  SW s1, 4(s3)
  JAL zero, bb72
bb161:   # loop depth 2
  LA s7, chat
  LA s1, chas
  SD s1, 968(sp)
  LA s1, chat
  SD s1, 976(sp)
  LA s11, c
  LW s7, 0(s7)
  LA s1, ii
  SD s1, 960(sp)
  LA s1, get2
  SD s1, 1024(sp)
  ADDI s1, zero, 32
  SW s1, 272(sp)
  LA s1, ii
  SD s1, 856(sp)
  SLLIW s8, s7, 2
  ADDIW s7, s7, -1
  LD s1, 968(sp)
  ADD s8, s1, s8
  LD s1, 976(sp)
  SW s7, 0(s1)
  LW s8, 0(s8)
  SLTIU s1, s7, 1
  SB s1, 132(sp)
  SW s8, 0(s11)
  LD s1, 960(sp)
  LW s7, 0(s1)
  SLLIW s11, s7, 2
  ADDIW s1, s7, 2
  SW s1, 268(sp)
  LD s1, 1024(sp)
  ADD s7, s1, s11
  LW s1, 272(sp)
  SW s1, 0(s7)
  SW s8, 4(s7)
  LD s1, 856(sp)
  LW s5, 268(sp)
  SW s5, 0(s1)
  LB s1, 132(sp)
  BNE s1, zero, bb164
  # implict jump to bb162
bb162:   # loop depth 2
  ADDI s7, zero, 1
  # implict jump to bb163
bb163:   # loop depth 2
  SLTIU s7, s7, 1
  BNE s7, zero, bb160
  JAL zero, bb149
bb164:   # loop depth 2
  ADD s7, zero, zero
  JAL zero, bb163
bb165:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 22(sp)
  JAL zero, bb159
bb166:   # loop depth 2
  ADDI s9, zero, 1
  JAL zero, bb157
bb167:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 23(sp)
  JAL zero, bb155
bb168:   # loop depth 2
  ADDI s10, zero, 1
  JAL zero, bb153
bb169:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 24(sp)
  JAL zero, bb151
bb170:   # loop depth 1
  LA s7, chat
  LA a0, chas
  SD a0, 680(sp)
  LA a0, chat
  SD a0, 664(sp)
  LA a0, c
  SD a0, 648(sp)
  LW s7, 0(s7)
  SLLIW s11, s7, 2
  ADDIW s8, s7, -1
  LD a0, 680(sp)
  ADD s11, a0, s11
  LD a0, 664(sp)
  SW s8, 0(a0)
  LW s11, 0(s11)
  XORI a0, s11, 40
  SW a0, 352(sp)
  LD a0, 648(sp)
  SW s11, 0(a0)
  LW a0, 352(sp)
  BNE a0, zero, bb171
  JAL zero, bb70
bb171:   # loop depth 1
  LA s11, ii
  LW s7, 0(s11)
  # implict jump to bb172
bb172:   # loop depth 2
  LA s11, get2
  SLLIW a0, s7, 2
  SW a0, 296(sp)
  LA s1, c
  SD s1, 1000(sp)
  ADDI a0, zero, 32
  SW a0, 312(sp)
  LW a0, 296(sp)
  ADD s11, s11, a0
  LW a0, 312(sp)
  SW a0, 0(s11)
  LA s1, chas
  SD s1, 992(sp)
  LD s1, 1000(sp)
  LW a0, 0(s1)
  SW a0, 288(sp)
  SLLIW a0, s8, 2
  SW a0, 376(sp)
  LA s1, c
  SD s1, 984(sp)
  LD s1, 992(sp)
  LW a0, 376(sp)
  ADD a0, s1, a0
  SD a0, 536(sp)
  ADDIW s8, s8, -1
  LW a0, 288(sp)
  SW a0, 4(s11)
  ADDIW s7, s7, 2
  LD a0, 536(sp)
  LW s11, 0(a0)
  XORI a0, s11, 40
  SW a0, 348(sp)
  LD s1, 984(sp)
  SW s11, 0(s1)
  LW a0, 348(sp)
  BNE a0, zero, bb174
  # implict jump to bb173
bb173:   # loop depth 1
  LA s11, chat
  LA a0, ii
  SD a0, 672(sp)
  SW s8, 0(s11)
  LD a0, 672(sp)
  SW s7, 0(a0)
  JAL zero, bb70
bb174:   # loop depth 2
  JAL zero, bb172
bb175:   # loop depth 1
  LA s7, chat
  LA a0, chas
  SD a0, 560(sp)
  LA s11, chat
  ADDI a0, zero, 94
  SW a0, 320(sp)
  LW s7, 0(s7)
  SLLIW s8, s7, 2
  ADDIW s7, s7, 1
  LD a0, 560(sp)
  ADD s8, a0, s8
  SW s7, 0(s11)
  LW a0, 320(sp)
  SW a0, 4(s8)
  JAL zero, bb69
bb176:   # loop depth 1
  LA s7, chat
  LA a0, chas
  SD a0, 544(sp)
  LA s11, chat
  ADDI a0, zero, 40
  SW a0, 328(sp)
  LW s7, 0(s7)
  SLLIW s8, s7, 2
  ADDIW s7, s7, 1
  LD a0, 544(sp)
  ADD s8, a0, s8
  SW s7, 0(s11)
  LW a0, 328(sp)
  SW a0, 4(s8)
  JAL zero, bb68
bb177:   # loop depth 1
  LA s7, ii
  LA s11, get2
  LA s1, ii
  SD s1, 832(sp)
  SB s9, 137(sp)
  LW s7, 0(s7)
  SB s10, 144(sp)
  LB a0, 138(sp)
  SB a0, 126(sp)
  LB a0, 139(sp)
  SB a0, 101(sp)
  LB a0, 140(sp)
  SB a0, 97(sp)
  LB a0, 141(sp)
  SB a0, 95(sp)
  SLLIW a0, s7, 2
  ADDIW s0, s7, 1
  SW s0, 452(sp)
  ADD s0, s11, a0
  LB a0, 142(sp)
  SB a0, 17(sp)
  LW a0, 440(sp)
  SW a0, 0(s0)
  LB a0, 143(sp)
  SB a0, 18(sp)
  LB a0, 148(sp)
  SB a0, 19(sp)
  LB a0, 24(sp)
  SB a0, 24(sp)
  LB a0, 149(sp)
  SB a0, 20(sp)
  LB a0, 147(sp)
  SB a0, 31(sp)
  LB a0, 145(sp)
  SB a0, 62(sp)
  LB a0, 146(sp)
  SB a0, 1(sp)
  LB s3, 103(sp)
  LB s2, 102(sp)
  LB s1, 100(sp)
  LB a0, 99(sp)
  SB a0, 34(sp)
  LB a0, 34(sp)
  SB a0, 34(sp)
  LB a0, 98(sp)
  LD s4, 832(sp)
  LW s5, 452(sp)
  SW s5, 0(s4)
  JAL zero, bb81
bb178:   # loop depth 1
  ADDI s7, zero, 1
  JAL zero, bb66
bb179:   # loop depth 1
  ADDI s7, zero, 57
  LW s1, 440(sp)
  SLT s7, s7, s1
  XORI s7, s7, 1
  JAL zero, bb64
bb180:   # loop depth 1
  LA s4, get
  LW s0, 400(sp)
  SLLIW s3, s0, 2
  LW s0, 400(sp)
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
