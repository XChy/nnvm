.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
  ADDI sp, sp, -1312
  SD s3, 464(sp)
  SD s4, 472(sp)
  SD s5, 480(sp)
  SD s6, 496(sp)
  SD s7, 552(sp)
  SD s8, 560(sp)
  SD s9, 568(sp)
  SD s10, 576(sp)
  SD ra, 584(sp)
  SD s11, 640(sp)
  SD s0, 672(sp)
  SD s1, 680(sp)
  SD s2, 688(sp)
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
  SW s1, 268(sp)
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
  LW s4, 0(a0)
  LW a0, 268(sp)
  BLT s4, a0, bb61
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
  SH2ADD a0, a0, s0
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
  LD s3, 464(sp)
  LD s4, 472(sp)
  LD s5, 480(sp)
  LD s6, 496(sp)
  LD s7, 552(sp)
  LD s8, 560(sp)
  LD s9, 568(sp)
  LD s10, 576(sp)
  LD ra, 584(sp)
  LD s11, 640(sp)
  LD s0, 672(sp)
  LD s1, 680(sp)
  LD s2, 688(sp)
  ADDI sp, sp, 1312
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
  SH2ADD s0, s0, s2
  LW s0, 0(s0)
  XORI s0, s0, 43
  SLTIU s0, s0, 1
  BNE s0, zero, bb59
  # implict jump to bb10
bb10:   # loop depth 1
  LA s0, i
  LA s2, get2
  LW s0, 0(s0)
  SH2ADD s0, s0, s2
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
  SH2ADD s0, s0, s2
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
  SH2ADD s0, s0, s2
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
  SH2ADD s0, s0, s2
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
  SH2ADD s0, s0, s2
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
  SH2ADD s0, s0, s2
  LW s0, 0(s0)
  XORI s0, s0, 32
  BNE s0, zero, bb24
  # implict jump to bb21
bb21:   # loop depth 1
  # implict jump to bb22
bb22:   # loop depth 1
  LA s0, i
  LA s5, get2
  LA s6, i
  LW s4, 0(s0)
  ADDIW s4, s4, 1
  SH2ADD s5, s4, s5
  SW s4, 0(s6)
  LW s4, 0(s5)
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
  SH2ADD s0, s0, s2
  LW s0, 0(s0)
  LW s2, 0(s4)
  ADDIW s0, s0, -48
  ADDIW s4, s2, 1
  SH2ADD s2, s2, s6
  SW s4, 0(s5)
  SW s0, 4(s2)
  SW s8, 0(s7)
  LW s0, 0(s9)
  ADDIW s0, s0, 1
  SH2ADD s0, s0, s10
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
  LA s0, i
  LA s5, ints
  LW s2, 0(s0)
  SH2ADD s4, s4, s5
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
  SH2ADD s5, s5, s6
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
  SH2ADD s5, s6, s10
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
  LA s2, ints
  LA s3, intt
  LA s6, ints
  LW s0, 0(s0)
  LA s5, intt
  LA s7, i
  LA s8, get2
  ADDIW s1, s0, -1
  SH2ADD s2, s0, s2
  SW s1, 0(s3)
  ADDIW s4, s0, -2
  LW s3, 0(s2)
  SH2ADD s1, s1, s6
  SW s4, 0(s5)
  LW s1, 0(s1)
  LW s2, 0(s7)
  SH2ADD s2, s2, s8
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
  SH2ADD s2, s2, s5
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
  SH2ADD s2, s2, s5
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
  SH2ADD s2, s2, s5
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
  SH2ADD s2, s2, s5
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
  SH2ADD s2, s2, s5
  LW s2, 0(s2)
  XORI s2, s2, 94
  SLTIU s2, s2, 1
  BNE s2, zero, bb43
  # implict jump to bb41
bb41:   # loop depth 1
  # implict jump to bb42
bb42:   # loop depth 1
  LA s2, intt
  LA s7, ints
  LA s6, intt
  LW s5, 0(s2)
  ADD a0, s4, zero
  ADDIW s0, s5, 1
  SH2ADD s5, s5, s7
  SW s0, 0(s6)
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
  ADDIW s0, a0, -1
  SH2ADD a0, a0, s2
  SW s0, 0(s1)
  LW a0, 0(a0)
  LW s0, 0(s3)
  SH2ADD s1, s0, s4
  ADDIW s0, s0, 2
  SW s5, 0(s1)
  SW a0, 4(s1)
  SW s0, 0(s6)
  JAL zero, bb5
bb61:   # loop depth 0
  ADD a0, zero, zero
  SB a0, 128(sp)
  ADD a0, zero, zero
  SB a0, 149(sp)
  ADD a0, zero, zero
  SB a0, 145(sp)
  ADD a0, zero, zero
  SB a0, 146(sp)
  ADD a0, zero, zero
  SB a0, 147(sp)
  ADD a0, zero, zero
  SB a0, 150(sp)
  ADD a0, zero, zero
  SB a0, 152(sp)
  ADD a0, zero, zero
  SB a0, 154(sp)
  ADD a0, zero, zero
  SB a0, 107(sp)
  ADD a0, zero, zero
  SB a0, 22(sp)
  ADD a0, zero, zero
  SB a0, 23(sp)
  ADD a0, zero, zero
  SB a0, 36(sp)
  ADD a0, zero, zero
  SB a0, 71(sp)
  ADD s2, zero, zero
  ADD s7, zero, zero
  ADD s8, zero, zero
  ADD s9, zero, zero
  ADD s10, zero, zero
  ADD a0, zero, zero
  SB a0, 108(sp)
  # implict jump to bb62
bb62:   # loop depth 1
  LA s1, get
  LB a0, 108(sp)
  SB a0, 108(sp)
  SH2ADD s1, s4, s1
  SB s9, 94(sp)
  LW s1, 0(s1)
  SW s1, 192(sp)
  SB s8, 102(sp)
  SB s7, 127(sp)
  SB s2, 125(sp)
  LB s1, 71(sp)
  SB s1, 124(sp)
  LB s1, 36(sp)
  SB s1, 122(sp)
  LW s1, 192(sp)
  SLTI s2, s1, 48
  LB s1, 23(sp)
  SB s1, 121(sp)
  XORI s8, s2, 1
  LB a0, 22(sp)
  SB a0, 144(sp)
  LB a0, 144(sp)
  SB a0, 144(sp)
  LB s1, 107(sp)
  SB s1, 111(sp)
  LB s1, 154(sp)
  SB s1, 119(sp)
  LB s11, 152(sp)
  LB s1, 150(sp)
  SB s1, 118(sp)
  LB s1, 147(sp)
  SB s1, 117(sp)
  LB s1, 146(sp)
  SB s1, 116(sp)
  LB s1, 145(sp)
  SB s1, 115(sp)
  LB s1, 149(sp)
  SB s1, 114(sp)
  LB s1, 128(sp)
  SB s1, 113(sp)
  BNE s8, zero, bb179
  # implict jump to bb63
bb63:   # loop depth 1
  ADD s8, zero, zero
  # implict jump to bb64
bb64:   # loop depth 1
  BNE s8, zero, bb178
  # implict jump to bb65
bb65:   # loop depth 1
  ADD s8, zero, zero
  # implict jump to bb66
bb66:   # loop depth 1
  XORI s8, s8, 1
  SLTIU s8, s8, 1
  BNE s8, zero, bb177
  # implict jump to bb67
bb67:   # loop depth 1
  LW s1, 192(sp)
  XORI s8, s1, 40
  SLTIU s8, s8, 1
  BNE s8, zero, bb176
  # implict jump to bb68
bb68:   # loop depth 1
  LW s1, 192(sp)
  XORI s8, s1, 94
  SLTIU s8, s8, 1
  BNE s8, zero, bb175
  # implict jump to bb69
bb69:   # loop depth 1
  LW s1, 192(sp)
  XORI s8, s1, 41
  SLTIU s8, s8, 1
  BNE s8, zero, bb170
  # implict jump to bb70
bb70:   # loop depth 1
  LW s1, 192(sp)
  XORI s8, s1, 43
  SLTIU s8, s8, 1
  BNE s8, zero, bb149
  # implict jump to bb71
bb71:   # loop depth 1
  LB a0, 108(sp)
  SB a0, 108(sp)
  LB a0, 144(sp)
  SB a0, 144(sp)
  LB a0, 116(sp)
  SB a0, 110(sp)
  LB a0, 110(sp)
  SB a0, 110(sp)
  # implict jump to bb72
bb72:   # loop depth 1
  LW s1, 192(sp)
  XORI s2, s1, 45
  LB a0, 110(sp)
  SB a0, 110(sp)
  LB a0, 110(sp)
  SB a0, 153(sp)
  SLTIU a0, s2, 1
  SB a0, 29(sp)
  SB s11, 140(sp)
  LB a0, 144(sp)
  SB a0, 144(sp)
  LB a0, 144(sp)
  SB a0, 137(sp)
  SB s10, 133(sp)
  LB a0, 108(sp)
  SB a0, 108(sp)
  LB a0, 108(sp)
  SB a0, 134(sp)
  LB a0, 29(sp)
  BNE a0, zero, bb128
  # implict jump to bb73
bb73:   # loop depth 1
  LB a0, 94(sp)
  SB a0, 4(sp)
  LB s9, 102(sp)
  LB s10, 127(sp)
  LB s11, 125(sp)
  LB s8, 118(sp)
  # implict jump to bb74
bb74:   # loop depth 1
  LW a0, 192(sp)
  XORI a0, a0, 42
  SW a0, 396(sp)
  SB s8, 135(sp)
  LW a0, 396(sp)
  SLTIU a0, a0, 1
  SB a0, 56(sp)
  SB s11, 138(sp)
  SB s10, 142(sp)
  SB s9, 143(sp)
  LB a0, 4(sp)
  SB a0, 148(sp)
  LB a0, 56(sp)
  BNE a0, zero, bb113
  # implict jump to bb75
bb75:   # loop depth 1
  LB a0, 124(sp)
  SB a0, 2(sp)
  LB a0, 122(sp)
  SB a0, 3(sp)
  LB s10, 111(sp)
  # implict jump to bb76
bb76:   # loop depth 1
  LW a0, 192(sp)
  XORI s11, a0, 47
  SB s10, 151(sp)
  SLTIU a0, s11, 1
  SB a0, 49(sp)
  LB a0, 3(sp)
  SB a0, 95(sp)
  LB a0, 2(sp)
  SB a0, 98(sp)
  LB a0, 49(sp)
  BNE a0, zero, bb98
  # implict jump to bb77
bb77:   # loop depth 1
  LB a0, 121(sp)
  SB a0, 46(sp)
  LB a0, 119(sp)
  SB a0, 12(sp)
  LB a0, 117(sp)
  SB a0, 1(sp)
  # implict jump to bb78
bb78:   # loop depth 1
  LW a0, 192(sp)
  XORI a0, a0, 37
  SW a0, 420(sp)
  LB a0, 1(sp)
  SB a0, 100(sp)
  LW a0, 420(sp)
  SLTIU a0, a0, 1
  SB a0, 85(sp)
  LB a0, 12(sp)
  SB a0, 93(sp)
  LB a0, 46(sp)
  SB a0, 103(sp)
  LB a0, 85(sp)
  BNE a0, zero, bb83
  # implict jump to bb79
bb79:   # loop depth 1
  LB a0, 115(sp)
  SB a0, 42(sp)
  LB a0, 114(sp)
  SB a0, 28(sp)
  LB a0, 28(sp)
  SB a0, 28(sp)
  LB s6, 113(sp)
  # implict jump to bb80
bb80:   # loop depth 1
  LA s7, ii
  LA a0, get2
  SD a0, 736(sp)
  LA a0, ii
  SD a0, 888(sp)
  ADDI a0, zero, 32
  SW a0, 376(sp)
  LW a0, 0(s7)
  SW a0, 168(sp)
  SB s6, 104(sp)
  LB a0, 28(sp)
  SB a0, 28(sp)
  LB a0, 42(sp)
  SB a0, 35(sp)
  LB a0, 35(sp)
  SB a0, 35(sp)
  LB a0, 134(sp)
  SB a0, 130(sp)
  LB a0, 133(sp)
  SB a0, 131(sp)
  LD a0, 736(sp)
  LW s0, 168(sp)
  SH2ADD s3, s0, a0
  LW a0, 168(sp)
  ADDIW a0, a0, 1
  SW a0, 272(sp)
  LW a0, 376(sp)
  SW a0, 0(s3)
  LB a0, 148(sp)
  SB a0, 132(sp)
  LB a0, 143(sp)
  SB a0, 136(sp)
  LB a0, 142(sp)
  SB a0, 139(sp)
  LB a0, 138(sp)
  SB a0, 141(sp)
  LB a0, 98(sp)
  SB a0, 11(sp)
  LB a0, 95(sp)
  SB a0, 0(sp)
  LB a0, 103(sp)
  SB a0, 26(sp)
  LB a0, 26(sp)
  SB a0, 26(sp)
  LB a0, 137(sp)
  SB a0, 144(sp)
  LB a0, 144(sp)
  SB a0, 144(sp)
  LB a0, 151(sp)
  SB a0, 13(sp)
  LB a0, 93(sp)
  SB a0, 14(sp)
  LB s11, 140(sp)
  LB s2, 135(sp)
  LB s10, 100(sp)
  LB a0, 153(sp)
  SB a0, 15(sp)
  LB a0, 35(sp)
  SB a0, 35(sp)
  LB a0, 28(sp)
  SB a0, 28(sp)
  LB a0, 104(sp)
  LD s4, 888(sp)
  LW s5, 272(sp)
  SW s5, 0(s4)
  # implict jump to bb81
bb81:   # loop depth 1
  LA s4, i
  SD s4, 920(sp)
  LA s4, i
  SD s4, 912(sp)
  SB a0, 112(sp)
  LB a0, 28(sp)
  SB a0, 28(sp)
  LB a0, 28(sp)
  SB a0, 123(sp)
  LD a0, 920(sp)
  LW s4, 0(a0)
  LB a0, 35(sp)
  SB a0, 35(sp)
  LB a0, 35(sp)
  SB a0, 126(sp)
  LB a0, 15(sp)
  SB a0, 96(sp)
  SB s10, 97(sp)
  SB s2, 99(sp)
  SB s11, 101(sp)
  ADDIW s4, s4, 1
  LB a0, 14(sp)
  SB a0, 105(sp)
  LD a0, 912(sp)
  SW s4, 0(a0)
  LB a0, 13(sp)
  SB a0, 106(sp)
  LB a0, 144(sp)
  SB a0, 144(sp)
  LB a0, 144(sp)
  SB a0, 120(sp)
  LB a0, 26(sp)
  SB a0, 24(sp)
  LB a0, 0(sp)
  SB a0, 36(sp)
  LB a0, 11(sp)
  SB a0, 61(sp)
  LB s2, 141(sp)
  LB s7, 139(sp)
  LB s8, 136(sp)
  LB s9, 132(sp)
  LB s10, 131(sp)
  LB a0, 130(sp)
  SB a0, 108(sp)
  LB a0, 108(sp)
  SB a0, 108(sp)
  LW a0, 268(sp)
  BLT s4, a0, bb82
  JAL zero, bb5
bb82:   # loop depth 1
  LB a0, 112(sp)
  SB a0, 128(sp)
  LB a0, 123(sp)
  SB a0, 149(sp)
  LB a0, 126(sp)
  SB a0, 145(sp)
  LB a0, 96(sp)
  SB a0, 146(sp)
  LB a0, 97(sp)
  SB a0, 147(sp)
  LB a0, 99(sp)
  SB a0, 150(sp)
  LB a0, 101(sp)
  SB a0, 152(sp)
  LB a0, 105(sp)
  SB a0, 154(sp)
  LB a0, 106(sp)
  SB a0, 107(sp)
  LB a0, 120(sp)
  SB a0, 22(sp)
  LB a0, 24(sp)
  SB a0, 24(sp)
  LB a0, 24(sp)
  SB a0, 23(sp)
  LB a0, 36(sp)
  SB a0, 36(sp)
  LB a0, 61(sp)
  SB a0, 71(sp)
  LB a0, 108(sp)
  SB a0, 108(sp)
  JAL zero, bb62
bb83:   # loop depth 2
  LA s5, chat
  LA s6, chas
  LW s5, 0(s5)
  SH2ADD s5, s5, s6
  LW a0, 0(s5)
  SW a0, 164(sp)
  LW a0, 164(sp)
  XORI s5, a0, 42
  SLTIU s5, s5, 1
  BNE s5, zero, bb97
  # implict jump to bb84
bb84:   # loop depth 2
  LW a0, 164(sp)
  XORI s5, a0, 47
  SLTIU s6, s5, 1
  # implict jump to bb85
bb85:   # loop depth 2
  BNE s6, zero, bb96
  # implict jump to bb86
bb86:   # loop depth 2
  LW a0, 164(sp)
  XORI s5, a0, 37
  SLTIU a0, s5, 1
  SB a0, 28(sp)
  LB a0, 28(sp)
  SB a0, 28(sp)
  # implict jump to bb87
bb87:   # loop depth 2
  LB a0, 28(sp)
  SB a0, 28(sp)
  LB a0, 28(sp)
  BNE a0, zero, bb95
  # implict jump to bb88
bb88:   # loop depth 2
  LW a0, 164(sp)
  XORI s5, a0, 94
  SLTIU s5, s5, 1
  # implict jump to bb89
bb89:   # loop depth 2
  BNE s5, zero, bb91
  # implict jump to bb90
bb90:   # loop depth 1
  LA a0, chat
  SD a0, 952(sp)
  LA a0, chas
  SD a0, 880(sp)
  LA a0, chat
  SD a0, 944(sp)
  ADDI a0, zero, 37
  SW a0, 384(sp)
  LD a0, 952(sp)
  LW a0, 0(a0)
  SW a0, 408(sp)
  SB s5, 42(sp)
  LB a0, 28(sp)
  SB a0, 28(sp)
  LW a0, 408(sp)
  ADDIW s7, a0, 1
  LD a0, 880(sp)
  LW s0, 408(sp)
  SH2ADD a0, s0, a0
  SD a0, 1056(sp)
  LD a0, 944(sp)
  SW s7, 0(a0)
  LW a0, 384(sp)
  LD s0, 1056(sp)
  SW a0, 4(s0)
  JAL zero, bb80
bb91:   # loop depth 2
  LA a0, chat
  SD a0, 800(sp)
  LA a0, chas
  SD a0, 992(sp)
  LA a0, chat
  SD a0, 1000(sp)
  LA a0, c
  SD a0, 984(sp)
  LD a0, 800(sp)
  LW a0, 0(a0)
  SW a0, 184(sp)
  LA a0, ii
  SD a0, 976(sp)
  LA a0, get2
  SD a0, 968(sp)
  ADDI a0, zero, 32
  SW a0, 332(sp)
  LA a0, ii
  SD a0, 960(sp)
  LW a0, 184(sp)
  ADDIW a0, a0, -1
  SW a0, 352(sp)
  LD a0, 992(sp)
  LW s0, 184(sp)
  SH2ADD a0, s0, a0
  SD a0, 1072(sp)
  LD a0, 1000(sp)
  LW s0, 352(sp)
  SW s0, 0(a0)
  LW a0, 352(sp)
  SLTIU a0, a0, 1
  SB a0, 73(sp)
  LD a0, 1072(sp)
  LW a0, 0(a0)
  SW a0, 388(sp)
  LD a0, 984(sp)
  LW s0, 388(sp)
  SW s0, 0(a0)
  LD a0, 976(sp)
  LW a0, 0(a0)
  SW a0, 392(sp)
  LD a0, 968(sp)
  LW s0, 392(sp)
  SH2ADD a0, s0, a0
  SD a0, 1064(sp)
  LW a0, 392(sp)
  ADDIW a0, a0, 2
  SW a0, 400(sp)
  LW a0, 332(sp)
  LD s0, 1064(sp)
  SW a0, 0(s0)
  LD a0, 1064(sp)
  LW s0, 388(sp)
  SW s0, 4(a0)
  LD a0, 960(sp)
  LW s0, 400(sp)
  SW s0, 0(a0)
  LB a0, 73(sp)
  BNE a0, zero, bb94
  # implict jump to bb92
bb92:   # loop depth 2
  ADDI a0, zero, 1
  SW a0, 404(sp)
  # implict jump to bb93
bb93:   # loop depth 2
  LW a0, 404(sp)
  SW a0, 404(sp)
  LW a0, 404(sp)
  SLTIU a0, a0, 1
  SB a0, 72(sp)
  LB a0, 72(sp)
  BNE a0, zero, bb90
  JAL zero, bb83
bb94:   # loop depth 2
  ADD a0, zero, zero
  SW a0, 404(sp)
  JAL zero, bb93
bb95:   # loop depth 2
  ADDI s5, zero, 1
  JAL zero, bb89
bb96:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 28(sp)
  JAL zero, bb87
bb97:   # loop depth 2
  ADDI s6, zero, 1
  JAL zero, bb85
bb98:   # loop depth 2
  LA a0, chat
  SD a0, 832(sp)
  LA a0, chas
  SD a0, 824(sp)
  LD a0, 832(sp)
  LW a0, 0(a0)
  SW a0, 276(sp)
  LD a0, 824(sp)
  LW s0, 276(sp)
  SH2ADD a0, s0, a0
  SD a0, 1104(sp)
  LD a0, 1104(sp)
  LW a0, 0(a0)
  SW a0, 280(sp)
  LW a0, 280(sp)
  XORI a0, a0, 42
  SW a0, 424(sp)
  LW a0, 424(sp)
  SLTIU a0, a0, 1
  SB a0, 83(sp)
  LB a0, 83(sp)
  BNE a0, zero, bb112
  # implict jump to bb99
bb99:   # loop depth 2
  LW a0, 280(sp)
  XORI a0, a0, 47
  SW a0, 428(sp)
  LW a0, 428(sp)
  SLTIU a0, a0, 1
  SB a0, 45(sp)
  LB a0, 45(sp)
  SB a0, 45(sp)
  # implict jump to bb100
bb100:   # loop depth 2
  LB a0, 45(sp)
  SB a0, 78(sp)
  LB a0, 78(sp)
  BNE a0, zero, bb111
  # implict jump to bb101
bb101:   # loop depth 2
  LW a0, 280(sp)
  XORI a0, a0, 37
  SW a0, 432(sp)
  LW a0, 432(sp)
  SLTIU a0, a0, 1
  SB a0, 44(sp)
  LB a0, 44(sp)
  SB a0, 44(sp)
  # implict jump to bb102
bb102:   # loop depth 2
  LB a0, 44(sp)
  SB a0, 76(sp)
  LB a0, 76(sp)
  BNE a0, zero, bb110
  # implict jump to bb103
bb103:   # loop depth 2
  LW a0, 280(sp)
  XORI a0, a0, 94
  SW a0, 436(sp)
  LW a0, 436(sp)
  SLTIU a0, a0, 1
  SB a0, 43(sp)
  LB a0, 43(sp)
  SB a0, 43(sp)
  # implict jump to bb104
bb104:   # loop depth 2
  LB a0, 43(sp)
  SB a0, 74(sp)
  LB a0, 74(sp)
  BNE a0, zero, bb106
  # implict jump to bb105
bb105:   # loop depth 1
  LA a0, chat
  SD a0, 760(sp)
  LA a0, chas
  SD a0, 744(sp)
  LA a0, chat
  SD a0, 752(sp)
  ADDI a0, zero, 47
  SW a0, 368(sp)
  LD a0, 760(sp)
  LW a0, 0(a0)
  SW a0, 172(sp)
  LB a0, 76(sp)
  SB a0, 46(sp)
  LB a0, 74(sp)
  SB a0, 12(sp)
  LB a0, 78(sp)
  SB a0, 1(sp)
  LW a0, 172(sp)
  ADDIW a0, a0, 1
  SW a0, 176(sp)
  LD a0, 744(sp)
  LW s0, 172(sp)
  SH2ADD a0, s0, a0
  SD a0, 1080(sp)
  LD a0, 752(sp)
  LW s0, 176(sp)
  SW s0, 0(a0)
  LW a0, 368(sp)
  LD s0, 1080(sp)
  SW a0, 4(s0)
  JAL zero, bb78
bb106:   # loop depth 2
  LA a0, chat
  SD a0, 816(sp)
  LA a0, chas
  SD a0, 720(sp)
  LA a0, chat
  SD a0, 808(sp)
  LA a0, c
  SD a0, 792(sp)
  LD a0, 816(sp)
  LW a0, 0(a0)
  SW a0, 284(sp)
  LA a0, ii
  SD a0, 784(sp)
  LA a0, get2
  SD a0, 776(sp)
  ADDI a0, zero, 32
  SW a0, 416(sp)
  LA a0, ii
  SD a0, 768(sp)
  LW a0, 284(sp)
  ADDIW a0, a0, -1
  SW a0, 288(sp)
  LD a0, 720(sp)
  LW s0, 284(sp)
  SH2ADD a0, s0, a0
  SD a0, 1096(sp)
  LD a0, 808(sp)
  LW s0, 288(sp)
  SW s0, 0(a0)
  LW a0, 288(sp)
  SLTIU a0, a0, 1
  SB a0, 81(sp)
  LD a0, 1096(sp)
  LW a0, 0(a0)
  SW a0, 292(sp)
  LD a0, 792(sp)
  LW s0, 292(sp)
  SW s0, 0(a0)
  LD a0, 784(sp)
  LW a0, 0(a0)
  SW a0, 296(sp)
  LD a0, 776(sp)
  LW s0, 296(sp)
  SH2ADD a0, s0, a0
  SD a0, 1008(sp)
  LW a0, 296(sp)
  ADDIW a0, a0, 2
  SW a0, 244(sp)
  LW a0, 416(sp)
  LD s0, 1008(sp)
  SW a0, 0(s0)
  LD a0, 1008(sp)
  LW s0, 292(sp)
  SW s0, 4(a0)
  LD a0, 768(sp)
  LW s0, 244(sp)
  SW s0, 0(a0)
  LB a0, 81(sp)
  BNE a0, zero, bb109
  # implict jump to bb107
bb107:   # loop depth 2
  ADDI a0, zero, 1
  SW a0, 156(sp)
  # implict jump to bb108
bb108:   # loop depth 2
  LW a0, 156(sp)
  SW a0, 156(sp)
  LW a0, 156(sp)
  SLTIU a0, a0, 1
  SB a0, 80(sp)
  LB a0, 80(sp)
  BNE a0, zero, bb105
  JAL zero, bb98
bb109:   # loop depth 2
  ADD a0, zero, zero
  SW a0, 156(sp)
  JAL zero, bb108
bb110:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 43(sp)
  JAL zero, bb104
bb111:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 44(sp)
  JAL zero, bb102
bb112:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 45(sp)
  JAL zero, bb100
bb113:   # loop depth 2
  LA s10, chat
  LA s11, chas
  LW s10, 0(s10)
  SH2ADD s10, s10, s11
  LW a0, 0(s10)
  SW a0, 236(sp)
  LW a0, 236(sp)
  XORI s10, a0, 42
  SLTIU s10, s10, 1
  BNE s10, zero, bb127
  # implict jump to bb114
bb114:   # loop depth 2
  LW a0, 236(sp)
  XORI s10, a0, 47
  SLTIU s10, s10, 1
  # implict jump to bb115
bb115:   # loop depth 2
  BNE s10, zero, bb126
  # implict jump to bb116
bb116:   # loop depth 2
  LW a0, 236(sp)
  XORI s11, a0, 37
  SLTIU s11, s11, 1
  # implict jump to bb117
bb117:   # loop depth 2
  SB s11, 89(sp)
  LB a0, 89(sp)
  BNE a0, zero, bb125
  # implict jump to bb118
bb118:   # loop depth 2
  LW a0, 236(sp)
  XORI s11, a0, 94
  SLTIU s11, s11, 1
  # implict jump to bb119
bb119:   # loop depth 2
  BNE s11, zero, bb121
  # implict jump to bb120
bb120:   # loop depth 1
  LA a0, chat
  SD a0, 856(sp)
  LA a0, chas
  SD a0, 840(sp)
  LA a0, chat
  SD a0, 848(sp)
  ADDI a0, zero, 42
  SW a0, 328(sp)
  LD a0, 856(sp)
  LW a0, 0(a0)
  SW a0, 264(sp)
  LB a0, 89(sp)
  SB a0, 2(sp)
  SB s11, 3(sp)
  LW a0, 264(sp)
  ADDIW s11, a0, 1
  LD a0, 840(sp)
  LW s0, 264(sp)
  SH2ADD a0, s0, a0
  SD a0, 1112(sp)
  LD a0, 848(sp)
  SW s11, 0(a0)
  LW a0, 328(sp)
  LD s0, 1112(sp)
  SW a0, 4(s0)
  JAL zero, bb76
bb121:   # loop depth 2
  LA a0, chat
  SD a0, 1192(sp)
  LA a0, chas
  SD a0, 1176(sp)
  LA a0, chat
  SD a0, 1184(sp)
  LA a0, c
  SD a0, 1168(sp)
  LD a0, 1192(sp)
  LW a0, 0(a0)
  SW a0, 240(sp)
  LA a0, ii
  SD a0, 936(sp)
  LA a0, get2
  SD a0, 872(sp)
  ADDI a0, zero, 32
  SW a0, 304(sp)
  LA a0, ii
  SD a0, 864(sp)
  LW a0, 240(sp)
  ADDIW a0, a0, -1
  SW a0, 188(sp)
  LD a0, 1176(sp)
  LW s0, 240(sp)
  SH2ADD a0, s0, a0
  SD a0, 1128(sp)
  LD a0, 1184(sp)
  LW s0, 188(sp)
  SW s0, 0(a0)
  LW a0, 188(sp)
  SLTIU a0, a0, 1
  SB a0, 92(sp)
  LD a0, 1128(sp)
  LW a0, 0(a0)
  SW a0, 248(sp)
  LD a0, 1168(sp)
  LW s0, 248(sp)
  SW s0, 0(a0)
  LD a0, 936(sp)
  LW a0, 0(a0)
  SW a0, 252(sp)
  LD a0, 872(sp)
  LW s0, 252(sp)
  SH2ADD a0, s0, a0
  SD a0, 1120(sp)
  LW a0, 252(sp)
  ADDIW a0, a0, 2
  SW a0, 256(sp)
  LW a0, 304(sp)
  LD s0, 1120(sp)
  SW a0, 0(s0)
  LD a0, 1120(sp)
  LW s0, 248(sp)
  SW s0, 4(a0)
  LD a0, 864(sp)
  LW s0, 256(sp)
  SW s0, 0(a0)
  LB a0, 92(sp)
  BNE a0, zero, bb124
  # implict jump to bb122
bb122:   # loop depth 2
  ADDI a0, zero, 1
  SW a0, 260(sp)
  # implict jump to bb123
bb123:   # loop depth 2
  LW a0, 260(sp)
  SW a0, 260(sp)
  LW a0, 260(sp)
  SLTIU a0, a0, 1
  SB a0, 91(sp)
  LB a0, 91(sp)
  BNE a0, zero, bb120
  JAL zero, bb113
bb124:   # loop depth 2
  ADD a0, zero, zero
  SW a0, 260(sp)
  JAL zero, bb123
bb125:   # loop depth 2
  ADDI s11, zero, 1
  JAL zero, bb119
bb126:   # loop depth 2
  ADDI s11, zero, 1
  JAL zero, bb117
bb127:   # loop depth 2
  ADDI s10, zero, 1
  JAL zero, bb115
bb128:   # loop depth 2
  LA s1, chat
  LA s8, chas
  LW s1, 0(s1)
  SH2ADD s1, s1, s8
  LW a0, 0(s1)
  SW a0, 204(sp)
  LW a0, 204(sp)
  XORI s1, a0, 43
  SLTIU s1, s1, 1
  BNE s1, zero, bb148
  # implict jump to bb129
bb129:   # loop depth 2
  LW a0, 204(sp)
  XORI s1, a0, 45
  SLTIU s1, s1, 1
  # implict jump to bb130
bb130:   # loop depth 2
  BNE s1, zero, bb147
  # implict jump to bb131
bb131:   # loop depth 2
  LW a0, 204(sp)
  XORI s8, a0, 42
  SLTIU s8, s8, 1
  # implict jump to bb132
bb132:   # loop depth 2
  BNE s8, zero, bb146
  # implict jump to bb133
bb133:   # loop depth 2
  LW a0, 204(sp)
  XORI s9, a0, 47
  SLTIU s9, s9, 1
  # implict jump to bb134
bb134:   # loop depth 2
  BNE s9, zero, bb145
  # implict jump to bb135
bb135:   # loop depth 2
  LW a0, 204(sp)
  XORI s10, a0, 37
  SLTIU s10, s10, 1
  # implict jump to bb136
bb136:   # loop depth 2
  BNE s10, zero, bb144
  # implict jump to bb137
bb137:   # loop depth 2
  LW a0, 204(sp)
  XORI s11, a0, 94
  SLTIU s11, s11, 1
  # implict jump to bb138
bb138:   # loop depth 2
  BNE s11, zero, bb140
  # implict jump to bb139
bb139:   # loop depth 1
  LA a0, chat
  SD a0, 1216(sp)
  LA a0, chas
  SD a0, 1200(sp)
  LA a0, chat
  SD a0, 1208(sp)
  ADDI a0, zero, 45
  SW a0, 372(sp)
  LD a0, 1216(sp)
  LW a0, 0(a0)
  SW a0, 232(sp)
  SB s1, 4(sp)
  LW a0, 232(sp)
  ADDIW a0, a0, 1
  SW a0, 380(sp)
  LD a0, 1200(sp)
  LW s0, 232(sp)
  SH2ADD a0, s0, a0
  SD a0, 1136(sp)
  LD a0, 1208(sp)
  LW s0, 380(sp)
  SW s0, 0(a0)
  LW a0, 372(sp)
  LD s0, 1136(sp)
  SW a0, 4(s0)
  JAL zero, bb74
bb140:   # loop depth 2
  LA a0, chat
  SD a0, 1272(sp)
  LA a0, chas
  SD a0, 1256(sp)
  LA a0, chat
  SD a0, 1264(sp)
  LA a0, c
  SD a0, 1248(sp)
  LD a0, 1272(sp)
  LW a0, 0(a0)
  SW a0, 208(sp)
  LA a0, ii
  SD a0, 1160(sp)
  LA a0, get2
  SD a0, 1232(sp)
  ADDI a0, zero, 32
  SW a0, 196(sp)
  LA a0, ii
  SD a0, 896(sp)
  LW a0, 208(sp)
  ADDIW a0, a0, -1
  SW a0, 212(sp)
  LD a0, 1256(sp)
  LW s0, 208(sp)
  SH2ADD a0, s0, a0
  SD a0, 1152(sp)
  LD a0, 1264(sp)
  LW s0, 212(sp)
  SW s0, 0(a0)
  LW a0, 212(sp)
  SLTIU a0, a0, 1
  SB a0, 53(sp)
  LD a0, 1152(sp)
  LW a0, 0(a0)
  SW a0, 216(sp)
  LD a0, 1248(sp)
  LW s0, 216(sp)
  SW s0, 0(a0)
  LD a0, 1160(sp)
  LW a0, 0(a0)
  SW a0, 220(sp)
  LD a0, 1232(sp)
  LW s0, 220(sp)
  SH2ADD a0, s0, a0
  SD a0, 1144(sp)
  LW a0, 220(sp)
  ADDIW a0, a0, 2
  SW a0, 224(sp)
  LW a0, 196(sp)
  LD s0, 1144(sp)
  SW a0, 0(s0)
  LD a0, 1144(sp)
  LW s0, 216(sp)
  SW s0, 4(a0)
  LD a0, 896(sp)
  LW s0, 224(sp)
  SW s0, 0(a0)
  LB a0, 53(sp)
  BNE a0, zero, bb143
  # implict jump to bb141
bb141:   # loop depth 2
  ADDI a0, zero, 1
  SW a0, 228(sp)
  # implict jump to bb142
bb142:   # loop depth 2
  LW a0, 228(sp)
  SW a0, 228(sp)
  LW a0, 228(sp)
  SLTIU a0, a0, 1
  SB a0, 52(sp)
  LB a0, 52(sp)
  BNE a0, zero, bb139
  JAL zero, bb128
bb143:   # loop depth 2
  ADD a0, zero, zero
  SW a0, 228(sp)
  JAL zero, bb142
bb144:   # loop depth 2
  ADDI s11, zero, 1
  JAL zero, bb138
bb145:   # loop depth 2
  ADDI s10, zero, 1
  JAL zero, bb136
bb146:   # loop depth 2
  ADDI s9, zero, 1
  JAL zero, bb134
bb147:   # loop depth 2
  ADDI s8, zero, 1
  JAL zero, bb132
bb148:   # loop depth 2
  ADDI s1, zero, 1
  JAL zero, bb130
bb149:   # loop depth 2
  LA a0, chat
  LA s0, chas
  LW a0, 0(a0)
  SH2ADD a0, a0, s0
  LW s4, 0(a0)
  XORI a0, s4, 43
  SLTIU a0, a0, 1
  BNE a0, zero, bb169
  # implict jump to bb150
bb150:   # loop depth 2
  XORI a0, s4, 45
  SLTIU a0, a0, 1
  SB a0, 144(sp)
  LB a0, 144(sp)
  SB a0, 144(sp)
  # implict jump to bb151
bb151:   # loop depth 2
  LB a0, 144(sp)
  SB a0, 144(sp)
  LB a0, 144(sp)
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
  SB a0, 110(sp)
  LB a0, 110(sp)
  SB a0, 110(sp)
  # implict jump to bb155
bb155:   # loop depth 2
  LB a0, 110(sp)
  SB a0, 110(sp)
  LB a0, 110(sp)
  BNE a0, zero, bb166
  # implict jump to bb156
bb156:   # loop depth 2
  XORI s3, s4, 37
  SLTIU a0, s3, 1
  SB a0, 108(sp)
  LB a0, 108(sp)
  SB a0, 108(sp)
  # implict jump to bb157
bb157:   # loop depth 2
  LB a0, 108(sp)
  SB a0, 108(sp)
  LB a0, 108(sp)
  BNE a0, zero, bb165
  # implict jump to bb158
bb158:   # loop depth 2
  XORI s4, s4, 94
  SLTIU s11, s4, 1
  # implict jump to bb159
bb159:   # loop depth 2
  BNE s11, zero, bb161
  # implict jump to bb160
bb160:   # loop depth 1
  LA s8, chat
  LA s1, chas
  SD s1, 1280(sp)
  LA s1, chat
  SD s1, 1288(sp)
  ADDI s1, zero, 43
  SW s1, 300(sp)
  LW a0, 0(s8)
  SW a0, 348(sp)
  LB a0, 108(sp)
  SB a0, 108(sp)
  LB a0, 144(sp)
  SB a0, 144(sp)
  LB a0, 110(sp)
  SB a0, 110(sp)
  LW a0, 348(sp)
  ADDIW s2, a0, 1
  LD s1, 1280(sp)
  LW a0, 348(sp)
  SH2ADD a0, a0, s1
  SD a0, 704(sp)
  LD s1, 1288(sp)
  SW s2, 0(s1)
  LW s1, 300(sp)
  LD a0, 704(sp)
  SW s1, 4(a0)
  JAL zero, bb72
bb161:   # loop depth 2
  LA s8, chat
  LA s1, chas
  SD s1, 1088(sp)
  LA s1, chat
  SD s1, 1016(sp)
  LA a0, c
  SD a0, 536(sp)
  LW s8, 0(s8)
  LA s1, ii
  SD s1, 1304(sp)
  LA s1, get2
  SD s1, 1296(sp)
  ADDI s1, zero, 32
  SW s1, 200(sp)
  LA s1, ii
  SD s1, 904(sp)
  ADDIW s9, s8, -1
  LD s1, 1088(sp)
  SH2ADD s8, s8, s1
  LD s1, 1016(sp)
  SW s9, 0(s1)
  SLTIU s1, s9, 1
  SB s1, 47(sp)
  LW s8, 0(s8)
  LD a0, 536(sp)
  SW s8, 0(a0)
  LD s1, 1304(sp)
  LW s9, 0(s1)
  LD s1, 1296(sp)
  SH2ADD a0, s9, s1
  SD a0, 712(sp)
  ADDIW s9, s9, 2
  LW s1, 200(sp)
  LD a0, 712(sp)
  SW s1, 0(a0)
  LD a0, 712(sp)
  SW s8, 4(a0)
  LD s1, 904(sp)
  SW s9, 0(s1)
  LB s1, 47(sp)
  BNE s1, zero, bb164
  # implict jump to bb162
bb162:   # loop depth 2
  ADDI s8, zero, 1
  # implict jump to bb163
bb163:   # loop depth 2
  SLTIU s8, s8, 1
  BNE s8, zero, bb160
  JAL zero, bb149
bb164:   # loop depth 2
  ADD s8, zero, zero
  JAL zero, bb163
bb165:   # loop depth 2
  ADDI s11, zero, 1
  JAL zero, bb159
bb166:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 108(sp)
  JAL zero, bb157
bb167:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 110(sp)
  JAL zero, bb155
bb168:   # loop depth 2
  ADDI s10, zero, 1
  JAL zero, bb153
bb169:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 144(sp)
  JAL zero, bb151
bb170:   # loop depth 1
  LA s8, chat
  LA a0, chas
  SD a0, 520(sp)
  LA a0, chat
  SD a0, 656(sp)
  LA s1, c
  SD s1, 1048(sp)
  LW s9, 0(s8)
  ADDIW a0, s9, -1
  SW a0, 460(sp)
  LD a0, 520(sp)
  SH2ADD s9, s9, a0
  LD a0, 656(sp)
  LW s0, 460(sp)
  SW s0, 0(a0)
  LW s9, 0(s9)
  XORI a0, s9, 40
  SW a0, 324(sp)
  LD s1, 1048(sp)
  SW s9, 0(s1)
  LW a0, 324(sp)
  BNE a0, zero, bb171
  JAL zero, bb70
bb171:   # loop depth 1
  LA a0, ii
  SD a0, 512(sp)
  LW a0, 460(sp)
  SW a0, 460(sp)
  LD a0, 512(sp)
  LW s8, 0(a0)
  # implict jump to bb172
bb172:   # loop depth 2
  LA a0, get2
  SD a0, 504(sp)
  LA s1, c
  SD s1, 1040(sp)
  ADDI a0, zero, 32
  SW a0, 356(sp)
  LD a0, 504(sp)
  SH2ADD a0, s8, a0
  SD a0, 632(sp)
  LA s1, chas
  SD s1, 1032(sp)
  LW a0, 356(sp)
  LD s0, 632(sp)
  SW a0, 0(s0)
  LW a0, 460(sp)
  SW a0, 460(sp)
  LD s1, 1040(sp)
  LW a0, 0(s1)
  SW a0, 340(sp)
  LD s1, 1032(sp)
  LW a0, 460(sp)
  SH2ADD s1, a0, s1
  SD s1, 1240(sp)
  LA s1, c
  SD s1, 1024(sp)
  LW a0, 460(sp)
  ADDIW a0, a0, -1
  SW a0, 460(sp)
  ADDIW s8, s8, 2
  LD a0, 632(sp)
  LW s0, 340(sp)
  SW s0, 4(a0)
  LD s1, 1240(sp)
  LW a0, 0(s1)
  SW a0, 320(sp)
  LW a0, 320(sp)
  XORI a0, a0, 40
  SW a0, 344(sp)
  LD s1, 1024(sp)
  LW a0, 320(sp)
  SW a0, 0(s1)
  LW a0, 344(sp)
  BNE a0, zero, bb174
  # implict jump to bb173
bb173:   # loop depth 1
  LA a0, chat
  SD a0, 648(sp)
  LA a0, ii
  SD a0, 488(sp)
  LD a0, 648(sp)
  LW s0, 460(sp)
  SW s0, 0(a0)
  LD a0, 488(sp)
  SW s8, 0(a0)
  JAL zero, bb70
bb174:   # loop depth 2
  LW a0, 460(sp)
  SW a0, 460(sp)
  JAL zero, bb172
bb175:   # loop depth 1
  LA s8, chat
  LA a0, chas
  SD a0, 528(sp)
  LA a0, chat
  SD a0, 664(sp)
  ADDI s1, zero, 94
  SW s1, 316(sp)
  LW s8, 0(s8)
  ADDIW s9, s8, 1
  LD a0, 528(sp)
  SH2ADD s8, s8, a0
  LD a0, 664(sp)
  SW s9, 0(a0)
  LW s1, 316(sp)
  SW s1, 4(s8)
  JAL zero, bb69
bb176:   # loop depth 1
  LA s8, chat
  LA a0, chas
  SD a0, 544(sp)
  LA a0, chat
  SD a0, 696(sp)
  ADDI s1, zero, 40
  SW s1, 312(sp)
  LW s8, 0(s8)
  ADDIW s9, s8, 1
  LD a0, 544(sp)
  SH2ADD s8, s8, a0
  LD a0, 696(sp)
  SW s9, 0(a0)
  LW s1, 312(sp)
  SW s1, 4(s8)
  JAL zero, bb68
bb177:   # loop depth 1
  LA s8, ii
  LA s9, get2
  LA s1, ii
  SD s1, 928(sp)
  LB a0, 108(sp)
  SB a0, 108(sp)
  LB a0, 108(sp)
  SB a0, 130(sp)
  LW s8, 0(s8)
  SB s10, 131(sp)
  LB a0, 94(sp)
  SB a0, 132(sp)
  LB a0, 102(sp)
  SB a0, 136(sp)
  LB a0, 127(sp)
  SB a0, 139(sp)
  LB a0, 125(sp)
  SB a0, 141(sp)
  SH2ADD a0, s8, s9
  ADDIW s0, s8, 1
  SW s0, 440(sp)
  LW s0, 192(sp)
  SW s0, 0(a0)
  LB a0, 124(sp)
  SB a0, 11(sp)
  LB a0, 122(sp)
  SB a0, 0(sp)
  LB a0, 121(sp)
  SB a0, 26(sp)
  LB a0, 26(sp)
  SB a0, 26(sp)
  LB a0, 144(sp)
  SB a0, 144(sp)
  LB a0, 111(sp)
  SB a0, 13(sp)
  LB a0, 119(sp)
  SB a0, 14(sp)
  LB s2, 118(sp)
  LB s10, 117(sp)
  LB a0, 116(sp)
  SB a0, 15(sp)
  LB a0, 115(sp)
  SB a0, 35(sp)
  LB a0, 35(sp)
  SB a0, 35(sp)
  LB a0, 114(sp)
  SB a0, 28(sp)
  LB a0, 28(sp)
  SB a0, 28(sp)
  LB a0, 113(sp)
  LD s4, 928(sp)
  LW s5, 440(sp)
  SW s5, 0(s4)
  JAL zero, bb81
bb178:   # loop depth 1
  ADDI s8, zero, 1
  JAL zero, bb66
bb179:   # loop depth 1
  ADDI s8, zero, 57
  LW s1, 192(sp)
  SLT s8, s8, s1
  XORI s8, s8, 1
  JAL zero, bb64
bb180:   # loop depth 1
  LA s3, get
  LW s0, 268(sp)
  ADDIW s1, s0, 1
  LW s0, 268(sp)
  SH2ADD s0, s0, s3
  SW s2, 0(s0)
  CALL getch
  ADD s2, a0, zero
  JAL zero, bb1
bb181:   # loop depth 1
  XORI s0, s2, 10
  SLTU s0, zero, s0
  JAL zero, bb3
