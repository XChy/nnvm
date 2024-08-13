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
  ADDI sp, sp, -1280
  SD s3, 480(sp)
  SD ra, 496(sp)
  SD s0, 504(sp)
  SD s1, 512(sp)
  SD s2, 520(sp)
  SD s9, 544(sp)
  SD s10, 552(sp)
  SD s11, 560(sp)
  SD s8, 616(sp)
  SD s4, 632(sp)
  SD s5, 640(sp)
  SD s6, 648(sp)
  SD s7, 656(sp)
  LA s0, intt
  LA s2, chat
  ADDI s1, zero, 0
  ADDI s3, zero, 0
  SW s1, 0(s0)
  SW s3, 0(s2)
  CALL getch
  ADD s1, a0, zero
  XORI s3, s1, 10
  XORI s2, s1, 13
  SLTU s3, zero, s3
  SLTU s2, zero, s2
  AND s2, s2, s3
  BNE s2, zero, bb172
  # implict jump to bb1
bb1:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb2
bb2:   # loop depth 0
  LA a0, i
  SW s0, 396(sp)
  LW s8, 0(a0)
  LW s0, 396(sp)
  BLT s8, s0, bb59
  # implict jump to bb3
bb3:   # loop depth 1
  LA a0, chat
  LW a0, 0(a0)
  BLT zero, a0, bb58
  # implict jump to bb4
bb4:   # loop depth 0
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
  BNE a0, zero, bb6
  # implict jump to bb5
bb5:   # loop depth 0
  LA a0, ints
  LW a0, 4(a0)
  CALL putint
  ADD a0, zero, zero
  LD s3, 480(sp)
  LD ra, 496(sp)
  LD s0, 504(sp)
  LD s1, 512(sp)
  LD s2, 520(sp)
  LD s9, 544(sp)
  LD s10, 552(sp)
  LD s11, 560(sp)
  LD s8, 616(sp)
  LD s4, 632(sp)
  LD s5, 640(sp)
  LD s6, 648(sp)
  LD s7, 656(sp)
  ADDI sp, sp, 1280
  JALR zero, 0(ra)
bb6:   # loop depth 0
  ADD s3, zero, zero
  ADD s1, zero, zero
  ADD a0, zero, zero
  # implict jump to bb7
bb7:   # loop depth 1
  LA s0, i
  LA s2, get2
  LW s0, 0(s0)
  SH2ADD s0, s0, s2
  LW s0, 0(s0)
  XORI s0, s0, 43
  SLTIU s0, s0, 1
  BNE s0, zero, bb57
  # implict jump to bb8
bb8:   # loop depth 1
  LA s0, i
  LA s2, get2
  LW s0, 0(s0)
  SH2ADD s0, s0, s2
  LW s0, 0(s0)
  XORI s0, s0, 45
  SLTIU s0, s0, 1
  # implict jump to bb9
bb9:   # loop depth 1
  BNE s0, zero, bb56
  # implict jump to bb10
bb10:   # loop depth 1
  LA s0, i
  LA s2, get2
  LW s0, 0(s0)
  SH2ADD s0, s0, s2
  LW s0, 0(s0)
  XORI s0, s0, 42
  SLTIU s0, s0, 1
  # implict jump to bb11
bb11:   # loop depth 1
  BNE s0, zero, bb55
  # implict jump to bb12
bb12:   # loop depth 1
  LA s0, i
  LA s2, get2
  LW s0, 0(s0)
  SH2ADD s0, s0, s2
  LW s0, 0(s0)
  XORI s0, s0, 47
  SLTIU s0, s0, 1
  # implict jump to bb13
bb13:   # loop depth 1
  BNE s0, zero, bb54
  # implict jump to bb14
bb14:   # loop depth 1
  LA s0, i
  LA s2, get2
  LW s0, 0(s0)
  SH2ADD s0, s0, s2
  LW s0, 0(s0)
  XORI s0, s0, 37
  SLTIU s0, s0, 1
  # implict jump to bb15
bb15:   # loop depth 1
  BNE s0, zero, bb53
  # implict jump to bb16
bb16:   # loop depth 1
  LA s0, i
  LA s2, get2
  LW s0, 0(s0)
  SH2ADD s0, s0, s2
  LW s0, 0(s0)
  XORI s0, s0, 94
  SLTIU s0, s0, 1
  # implict jump to bb17
bb17:   # loop depth 1
  BNE s0, zero, bb28
  # implict jump to bb18
bb18:   # loop depth 1
  LA s0, i
  LA s2, get2
  LW s0, 0(s0)
  SH2ADD s0, s0, s2
  LW s0, 0(s0)
  XORI s0, s0, 32
  BNE s0, zero, bb22
  # implict jump to bb19
bb19:   # loop depth 1
  # implict jump to bb20
bb20:   # loop depth 1
  LA s0, i
  LA s5, get2
  LA s6, i
  LW s4, 0(s0)
  ADDIW s4, s4, 1
  SH2ADD s5, s4, s5
  SW s4, 0(s6)
  LW s4, 0(s5)
  XORI s4, s4, 64
  BNE s4, zero, bb21
  JAL zero, bb5
bb21:   # loop depth 1
  JAL zero, bb7
bb22:   # loop depth 1
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
  BNE s0, zero, bb24
  # implict jump to bb23
bb23:   # loop depth 1
  LA s0, i
  LA s2, ii
  LA s4, i
  LW s0, 0(s0)
  LW s2, 0(s2)
  ADDW s0, s0, s2
  ADDIW s0, s0, -1
  SW s0, 0(s4)
  JAL zero, bb19
bb24:   # loop depth 1
  LA s0, i
  LA s5, ints
  LW s2, 0(s0)
  SH2ADD s4, s4, s5
  LW s0, 0(s4)
  # implict jump to bb25
bb25:   # loop depth 2
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
  BNE s5, zero, bb27
  # implict jump to bb26
bb26:   # loop depth 1
  SW s0, 0(s4)
  JAL zero, bb23
bb27:   # loop depth 2
  JAL zero, bb25
bb28:   # loop depth 1
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
  LW s5, 0(s7)
  ADDW s4, s3, s1
  SH2ADD s5, s5, s8
  LW s5, 0(s5)
  XORI s6, s5, 43
  SLTIU s6, s6, 1
  BNE s6, zero, bb52
  # implict jump to bb29
bb29:   # loop depth 1
  ADD s4, a0, zero
  # implict jump to bb30
bb30:   # loop depth 1
  XORI s6, s5, 45
  SUBW s2, s1, s3
  SLTIU s6, s6, 1
  BNE s6, zero, bb51
  # implict jump to bb31
bb31:   # loop depth 1
  ADD s2, s4, zero
  # implict jump to bb32
bb32:   # loop depth 1
  MULW s4, s3, s1
  XORI s6, s5, 42
  SLTIU s6, s6, 1
  BNE s6, zero, bb50
  # implict jump to bb33
bb33:   # loop depth 1
  ADD s4, s2, zero
  # implict jump to bb34
bb34:   # loop depth 1
  DIVW s2, s1, s3
  XORI s6, s5, 47
  SLTIU s6, s6, 1
  BNE s6, zero, bb49
  # implict jump to bb35
bb35:   # loop depth 1
  ADD s2, s4, zero
  # implict jump to bb36
bb36:   # loop depth 1
  REMW s4, s1, s3
  XORI s6, s5, 37
  SLTIU s6, s6, 1
  BNE s6, zero, bb48
  # implict jump to bb37
bb37:   # loop depth 1
  ADD s4, s2, zero
  # implict jump to bb38
bb38:   # loop depth 1
  XORI s2, s5, 94
  SLTIU s2, s2, 1
  BNE s2, zero, bb41
  # implict jump to bb39
bb39:   # loop depth 1
  # implict jump to bb40
bb40:   # loop depth 1
  LA s2, intt
  LA s7, ints
  LA s6, intt
  LW s5, 0(s2)
  ADD a0, s4, zero
  ADDIW s0, s5, 1
  SH2ADD s5, s5, s7
  SW s0, 0(s6)
  SW s4, 4(s5)
  JAL zero, bb20
bb41:   # loop depth 1
  BNE s3, zero, bb44
  # implict jump to bb42
bb42:   # loop depth 1
  ADDI s4, zero, 1
  # implict jump to bb43
bb43:   # loop depth 1
  JAL zero, bb40
bb44:   # loop depth 1
  ADDI s4, zero, 1
  ADD s2, s3, zero
  # implict jump to bb45
bb45:   # loop depth 2
  MULW s4, s4, s1
  ADDIW s2, s2, -1
  BNE s2, zero, bb47
  # implict jump to bb46
bb46:   # loop depth 1
  JAL zero, bb43
bb47:   # loop depth 2
  JAL zero, bb45
bb48:   # loop depth 1
  JAL zero, bb38
bb49:   # loop depth 1
  JAL zero, bb36
bb50:   # loop depth 1
  JAL zero, bb34
bb51:   # loop depth 1
  JAL zero, bb32
bb52:   # loop depth 1
  JAL zero, bb30
bb53:   # loop depth 1
  ADDI s0, zero, 1
  JAL zero, bb17
bb54:   # loop depth 1
  ADDI s0, zero, 1
  JAL zero, bb15
bb55:   # loop depth 1
  ADDI s0, zero, 1
  JAL zero, bb13
bb56:   # loop depth 1
  ADDI s0, zero, 1
  JAL zero, bb11
bb57:   # loop depth 1
  ADDI s0, zero, 1
  JAL zero, bb9
bb58:   # loop depth 1
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
  JAL zero, bb3
bb59:   # loop depth 0
  ADD s0, zero, zero
  SB s0, 142(sp)
  ADD s0, zero, zero
  SB s0, 146(sp)
  ADD s0, zero, zero
  SB s0, 103(sp)
  ADD s0, zero, zero
  SB s0, 120(sp)
  ADD s0, zero, zero
  SB s0, 115(sp)
  ADD s0, zero, zero
  SB s0, 111(sp)
  ADD s0, zero, zero
  SB s0, 110(sp)
  ADD s0, zero, zero
  SB s0, 112(sp)
  ADD s0, zero, zero
  SB s0, 113(sp)
  ADD s0, zero, zero
  SB s0, 114(sp)
  ADD s0, zero, zero
  SB s0, 79(sp)
  ADD s0, zero, zero
  SB s0, 80(sp)
  ADD s0, zero, zero
  SB s0, 81(sp)
  ADD s0, zero, zero
  SB s0, 82(sp)
  ADD s0, zero, zero
  SB s0, 83(sp)
  ADD s0, zero, zero
  SB s0, 84(sp)
  ADD s1, zero, zero
  ADD a0, zero, zero
  SB a0, 135(sp)
  ADD s11, zero, zero
  # implict jump to bb60
bb60:   # loop depth 1
  LA s0, get
  ADDI s4, zero, 57
  SH2ADD s2, s8, s0
  LB a0, 135(sp)
  SB a0, 135(sp)
  LW s2, 0(s2)
  SW s2, 320(sp)
  SB s1, 139(sp)
  LB s1, 84(sp)
  SB s1, 147(sp)
  LB s1, 83(sp)
  SB s1, 141(sp)
  LB s1, 82(sp)
  SB s1, 145(sp)
  LB s1, 81(sp)
  SB s1, 144(sp)
  LW s1, 320(sp)
  SLT s3, s4, s1
  LW s1, 320(sp)
  SLTI s2, s1, 48
  XORI s3, s3, 1
  XORI s2, s2, 1
  AND s2, s2, s3
  LB s1, 80(sp)
  SB s1, 130(sp)
  XORI s2, s2, 1
  LB s1, 79(sp)
  SB s1, 108(sp)
  SLTIU s1, s2, 1
  SB s1, 39(sp)
  LB s9, 114(sp)
  LB s1, 113(sp)
  SB s1, 107(sp)
  LB s1, 112(sp)
  SB s1, 106(sp)
  LB a0, 110(sp)
  SB a0, 134(sp)
  LB a0, 134(sp)
  SB a0, 134(sp)
  LB s1, 111(sp)
  SB s1, 105(sp)
  LB s1, 115(sp)
  SB s1, 104(sp)
  LB s1, 120(sp)
  SB s1, 102(sp)
  LB s1, 103(sp)
  SB s1, 101(sp)
  LB s1, 146(sp)
  SB s1, 100(sp)
  LB s1, 142(sp)
  SB s1, 99(sp)
  LB s1, 39(sp)
  BNE s1, zero, bb171
  # implict jump to bb61
bb61:   # loop depth 1
  LW s1, 320(sp)
  XORI s8, s1, 40
  SLTIU s8, s8, 1
  BNE s8, zero, bb170
  # implict jump to bb62
bb62:   # loop depth 1
  LW s1, 320(sp)
  XORI s8, s1, 94
  SLTIU s8, s8, 1
  BNE s8, zero, bb169
  # implict jump to bb63
bb63:   # loop depth 1
  LW s1, 320(sp)
  XORI s8, s1, 41
  SLTIU s8, s8, 1
  BNE s8, zero, bb164
  # implict jump to bb64
bb64:   # loop depth 1
  LW s1, 320(sp)
  XORI s8, s1, 43
  SLTIU s8, s8, 1
  BNE s8, zero, bb143
  # implict jump to bb65
bb65:   # loop depth 1
  LB a0, 135(sp)
  SB a0, 135(sp)
  LB a0, 134(sp)
  SB a0, 134(sp)
  LB a0, 102(sp)
  SB a0, 23(sp)
  LB a0, 23(sp)
  SB a0, 23(sp)
  # implict jump to bb66
bb66:   # loop depth 1
  LW s1, 320(sp)
  XORI s2, s1, 45
  LB a0, 23(sp)
  SB a0, 23(sp)
  LB a0, 23(sp)
  SB a0, 89(sp)
  SLTIU s5, s2, 1
  LB a0, 134(sp)
  SB a0, 134(sp)
  LB a0, 134(sp)
  SB a0, 88(sp)
  SB s9, 98(sp)
  LB a0, 135(sp)
  SB a0, 135(sp)
  LB a0, 135(sp)
  SB a0, 129(sp)
  SB s11, 128(sp)
  BNE s5, zero, bb122
  # implict jump to bb67
bb67:   # loop depth 1
  LB a0, 139(sp)
  SB a0, 17(sp)
  LB a0, 147(sp)
  SB a0, 18(sp)
  LB s8, 141(sp)
  LB s9, 145(sp)
  LB s4, 105(sp)
  # implict jump to bb68
bb68:   # loop depth 1
  LW a0, 320(sp)
  XORI s10, a0, 42
  SB s4, 127(sp)
  SLTIU s10, s10, 1
  SB s9, 126(sp)
  SB s8, 125(sp)
  LB a0, 18(sp)
  SB a0, 124(sp)
  LB a0, 17(sp)
  SB a0, 123(sp)
  BNE s10, zero, bb107
  # implict jump to bb69
bb69:   # loop depth 1
  LB a0, 144(sp)
  SB a0, 15(sp)
  LB a0, 130(sp)
  SB a0, 16(sp)
  LB s8, 107(sp)
  # implict jump to bb70
bb70:   # loop depth 1
  LW a0, 320(sp)
  XORI s9, a0, 47
  SB s8, 122(sp)
  SLTIU a0, s9, 1
  SB a0, 63(sp)
  LB a0, 16(sp)
  SB a0, 121(sp)
  LB a0, 15(sp)
  SB a0, 109(sp)
  LB a0, 63(sp)
  BNE a0, zero, bb92
  # implict jump to bb71
bb71:   # loop depth 1
  LB a0, 108(sp)
  SB a0, 12(sp)
  LB a0, 106(sp)
  SB a0, 13(sp)
  LB a0, 104(sp)
  SB a0, 14(sp)
  # implict jump to bb72
bb72:   # loop depth 1
  LW a0, 320(sp)
  XORI a0, a0, 37
  SW a0, 348(sp)
  LB a0, 14(sp)
  SB a0, 119(sp)
  LW a0, 348(sp)
  SLTIU a0, a0, 1
  SB a0, 44(sp)
  LB a0, 13(sp)
  SB a0, 118(sp)
  LB a0, 12(sp)
  SB a0, 117(sp)
  LB a0, 44(sp)
  BNE a0, zero, bb77
  # implict jump to bb73
bb73:   # loop depth 1
  LB a0, 101(sp)
  SB a0, 8(sp)
  LB s10, 100(sp)
  LB s7, 99(sp)
  # implict jump to bb74
bb74:   # loop depth 1
  LA a0, ii
  SD a0, 688(sp)
  LA a0, get2
  SD a0, 680(sp)
  LA a0, ii
  SD a0, 832(sp)
  ADDI a0, zero, 32
  SW a0, 264(sp)
  LD a0, 688(sp)
  LW a0, 0(a0)
  SW a0, 244(sp)
  SB s7, 116(sp)
  LB a0, 8(sp)
  SB a0, 45(sp)
  LB a0, 128(sp)
  SB a0, 133(sp)
  LB a0, 129(sp)
  SB a0, 136(sp)
  LD a0, 680(sp)
  LW s0, 244(sp)
  SH2ADD s3, s0, a0
  LW a0, 244(sp)
  ADDIW a0, a0, 1
  SW a0, 392(sp)
  LW a0, 264(sp)
  SW a0, 0(s3)
  LB a0, 123(sp)
  SB a0, 137(sp)
  LB a0, 124(sp)
  SB a0, 138(sp)
  LB a0, 125(sp)
  SB a0, 140(sp)
  LB a0, 126(sp)
  SB a0, 143(sp)
  LB a0, 109(sp)
  SB a0, 69(sp)
  LB a0, 121(sp)
  SB a0, 70(sp)
  LB a0, 117(sp)
  SB a0, 28(sp)
  LB s9, 98(sp)
  LB a0, 122(sp)
  SB a0, 71(sp)
  LB a0, 118(sp)
  SB a0, 72(sp)
  LB a0, 88(sp)
  SB a0, 134(sp)
  LB a0, 134(sp)
  SB a0, 134(sp)
  LB a0, 127(sp)
  SB a0, 73(sp)
  LB s3, 119(sp)
  LB s2, 89(sp)
  LB s1, 45(sp)
  LB a0, 116(sp)
  LD s4, 832(sp)
  LW s5, 392(sp)
  SW s5, 0(s4)
  # implict jump to bb75
bb75:   # loop depth 1
  LA s4, i
  SD s4, 864(sp)
  LA s4, i
  SD s4, 856(sp)
  SB a0, 87(sp)
  SB s10, 97(sp)
  LD a0, 864(sp)
  LW s4, 0(a0)
  SB s1, 96(sp)
  SB s2, 95(sp)
  SB s3, 94(sp)
  LB a0, 73(sp)
  SB a0, 93(sp)
  LB a0, 134(sp)
  SB a0, 134(sp)
  LB a0, 134(sp)
  SB a0, 92(sp)
  ADDIW s8, s4, 1
  LB a0, 72(sp)
  SB a0, 91(sp)
  LD a0, 856(sp)
  SW s8, 0(a0)
  LB a0, 71(sp)
  SB a0, 90(sp)
  SB s9, 77(sp)
  LB a0, 28(sp)
  SB a0, 42(sp)
  LB a0, 70(sp)
  SB a0, 43(sp)
  LB a0, 69(sp)
  SB a0, 11(sp)
  LB a0, 143(sp)
  SB a0, 1(sp)
  LB a0, 140(sp)
  SB a0, 2(sp)
  LB a0, 138(sp)
  SB a0, 3(sp)
  LB a0, 137(sp)
  SB a0, 4(sp)
  LB a0, 136(sp)
  SB a0, 135(sp)
  LB a0, 135(sp)
  SB a0, 135(sp)
  LB s11, 133(sp)
  LW a0, 396(sp)
  BLT s8, a0, bb76
  JAL zero, bb3
bb76:   # loop depth 1
  LB a0, 87(sp)
  SB a0, 142(sp)
  LB a0, 97(sp)
  SB a0, 146(sp)
  LB a0, 96(sp)
  SB a0, 103(sp)
  LB a0, 95(sp)
  SB a0, 120(sp)
  LB a0, 94(sp)
  SB a0, 115(sp)
  LB a0, 93(sp)
  SB a0, 111(sp)
  LB a0, 92(sp)
  SB a0, 110(sp)
  LB a0, 91(sp)
  SB a0, 112(sp)
  LB a0, 90(sp)
  SB a0, 113(sp)
  LB a0, 77(sp)
  SB a0, 114(sp)
  LB a0, 42(sp)
  SB a0, 79(sp)
  LB a0, 43(sp)
  SB a0, 80(sp)
  LB a0, 11(sp)
  SB a0, 81(sp)
  LB a0, 1(sp)
  SB a0, 82(sp)
  LB a0, 2(sp)
  SB a0, 83(sp)
  LB a0, 3(sp)
  SB a0, 84(sp)
  LB s1, 4(sp)
  LB a0, 135(sp)
  SB a0, 135(sp)
  JAL zero, bb60
bb77:   # loop depth 2
  LA s6, chat
  LA s7, chas
  LW s6, 0(s6)
  SH2ADD s6, s6, s7
  LW a0, 0(s6)
  SW a0, 300(sp)
  LW a0, 300(sp)
  XORI s6, a0, 42
  SLTIU s6, s6, 1
  BNE s6, zero, bb91
  # implict jump to bb78
bb78:   # loop depth 2
  LW a0, 300(sp)
  XORI s6, a0, 47
  SLTIU s7, s6, 1
  # implict jump to bb79
bb79:   # loop depth 2
  BNE s7, zero, bb90
  # implict jump to bb80
bb80:   # loop depth 2
  LW a0, 300(sp)
  XORI s6, a0, 37
  SLTIU a0, s6, 1
  SB a0, 85(sp)
  LB a0, 85(sp)
  SB a0, 85(sp)
  # implict jump to bb81
bb81:   # loop depth 2
  LB a0, 85(sp)
  SB a0, 85(sp)
  LB a0, 85(sp)
  BNE a0, zero, bb89
  # implict jump to bb82
bb82:   # loop depth 2
  LW a0, 300(sp)
  XORI s6, a0, 94
  SLTIU s10, s6, 1
  # implict jump to bb83
bb83:   # loop depth 2
  BNE s10, zero, bb85
  # implict jump to bb84
bb84:   # loop depth 1
  LA a0, chat
  SD a0, 904(sp)
  LA a0, chas
  SD a0, 888(sp)
  LA a0, chat
  SD a0, 896(sp)
  ADDI a0, zero, 37
  SW a0, 328(sp)
  LD a0, 904(sp)
  LW a0, 0(a0)
  SW a0, 184(sp)
  SB s10, 8(sp)
  LB s10, 85(sp)
  LW a0, 184(sp)
  ADDIW a0, a0, 1
  SW a0, 180(sp)
  LD a0, 888(sp)
  LW s0, 184(sp)
  SH2ADD a0, s0, a0
  SD a0, 1048(sp)
  LD a0, 896(sp)
  LW s0, 180(sp)
  SW s0, 0(a0)
  LW a0, 328(sp)
  LD s0, 1048(sp)
  SW a0, 4(s0)
  JAL zero, bb74
bb85:   # loop depth 2
  LA a0, chat
  SD a0, 744(sp)
  LA a0, chas
  SD a0, 944(sp)
  LA a0, chat
  SD a0, 952(sp)
  LA a0, c
  SD a0, 936(sp)
  LD a0, 744(sp)
  LW a0, 0(a0)
  SW a0, 228(sp)
  LA a0, ii
  SD a0, 928(sp)
  LA a0, get2
  SD a0, 920(sp)
  ADDI a0, zero, 32
  SW a0, 336(sp)
  LA a0, ii
  SD a0, 912(sp)
  LW a0, 228(sp)
  ADDIW a0, a0, -1
  SW a0, 232(sp)
  LD a0, 944(sp)
  LW s0, 228(sp)
  SH2ADD a0, s0, a0
  SD a0, 1064(sp)
  LD a0, 952(sp)
  LW s0, 232(sp)
  SW s0, 0(a0)
  LW a0, 232(sp)
  SLTIU a0, a0, 1
  SB a0, 55(sp)
  LD a0, 1064(sp)
  LW a0, 0(a0)
  SW a0, 248(sp)
  LD a0, 936(sp)
  LW s0, 248(sp)
  SW s0, 0(a0)
  LD a0, 928(sp)
  LW a0, 0(a0)
  SW a0, 260(sp)
  LD a0, 920(sp)
  LW s0, 260(sp)
  SH2ADD a0, s0, a0
  SD a0, 1056(sp)
  LW a0, 260(sp)
  ADDIW a0, a0, 2
  SW a0, 280(sp)
  LW a0, 336(sp)
  LD s0, 1056(sp)
  SW a0, 0(s0)
  LD a0, 1056(sp)
  LW s0, 248(sp)
  SW s0, 4(a0)
  LD a0, 912(sp)
  LW s0, 280(sp)
  SW s0, 0(a0)
  LB a0, 55(sp)
  BNE a0, zero, bb88
  # implict jump to bb86
bb86:   # loop depth 2
  ADDI a0, zero, 1
  SW a0, 204(sp)
  # implict jump to bb87
bb87:   # loop depth 2
  LW a0, 204(sp)
  SW a0, 204(sp)
  LW a0, 204(sp)
  SLTIU a0, a0, 1
  SB a0, 86(sp)
  LB a0, 86(sp)
  BNE a0, zero, bb84
  JAL zero, bb77
bb88:   # loop depth 2
  ADD a0, zero, zero
  SW a0, 204(sp)
  JAL zero, bb87
bb89:   # loop depth 2
  ADDI s10, zero, 1
  JAL zero, bb83
bb90:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 85(sp)
  JAL zero, bb81
bb91:   # loop depth 2
  ADDI s7, zero, 1
  JAL zero, bb79
bb92:   # loop depth 2
  LA a0, chat
  SD a0, 784(sp)
  LA a0, chas
  SD a0, 776(sp)
  LD a0, 784(sp)
  LW a0, 0(a0)
  SW a0, 152(sp)
  LD a0, 776(sp)
  LW s0, 152(sp)
  SH2ADD a0, s0, a0
  SD a0, 1096(sp)
  LD a0, 1096(sp)
  LW a0, 0(a0)
  SW a0, 268(sp)
  LW a0, 268(sp)
  XORI a0, a0, 42
  SW a0, 448(sp)
  LW a0, 448(sp)
  SLTIU a0, a0, 1
  SB a0, 54(sp)
  LB a0, 54(sp)
  BNE a0, zero, bb106
  # implict jump to bb93
bb93:   # loop depth 2
  LW a0, 268(sp)
  XORI a0, a0, 47
  SW a0, 440(sp)
  LW a0, 440(sp)
  SLTIU a0, a0, 1
  SB a0, 0(sp)
  LB a0, 0(sp)
  SB a0, 0(sp)
  # implict jump to bb94
bb94:   # loop depth 2
  LB a0, 0(sp)
  SB a0, 50(sp)
  LB a0, 50(sp)
  BNE a0, zero, bb105
  # implict jump to bb95
bb95:   # loop depth 2
  LW a0, 268(sp)
  XORI a0, a0, 37
  SW a0, 408(sp)
  LW a0, 408(sp)
  SLTIU a0, a0, 1
  SB a0, 10(sp)
  LB a0, 10(sp)
  SB a0, 10(sp)
  # implict jump to bb96
bb96:   # loop depth 2
  LB a0, 10(sp)
  SB a0, 48(sp)
  LB a0, 48(sp)
  BNE a0, zero, bb104
  # implict jump to bb97
bb97:   # loop depth 2
  LW a0, 268(sp)
  XORI a0, a0, 94
  SW a0, 400(sp)
  LW a0, 400(sp)
  SLTIU a0, a0, 1
  SB a0, 9(sp)
  LB a0, 9(sp)
  SB a0, 9(sp)
  # implict jump to bb98
bb98:   # loop depth 2
  LB a0, 9(sp)
  SB a0, 46(sp)
  LB a0, 46(sp)
  BNE a0, zero, bb100
  # implict jump to bb99
bb99:   # loop depth 1
  LA a0, chat
  SD a0, 712(sp)
  LA a0, chas
  SD a0, 696(sp)
  LA a0, chat
  SD a0, 704(sp)
  ADDI a0, zero, 47
  SW a0, 384(sp)
  LD a0, 712(sp)
  LW a0, 0(a0)
  SW a0, 256(sp)
  LB a0, 48(sp)
  SB a0, 12(sp)
  LB a0, 46(sp)
  SB a0, 13(sp)
  LB a0, 50(sp)
  SB a0, 14(sp)
  LW a0, 256(sp)
  ADDIW a0, a0, 1
  SW a0, 252(sp)
  LD a0, 696(sp)
  LW s0, 256(sp)
  SH2ADD a0, s0, a0
  SD a0, 1072(sp)
  LD a0, 704(sp)
  LW s0, 252(sp)
  SW s0, 0(a0)
  LW a0, 384(sp)
  LD s0, 1072(sp)
  SW a0, 4(s0)
  JAL zero, bb72
bb100:   # loop depth 2
  LA a0, chat
  SD a0, 768(sp)
  LA a0, chas
  SD a0, 752(sp)
  LA a0, chat
  SD a0, 760(sp)
  LA a0, c
  SD a0, 664(sp)
  LD a0, 768(sp)
  LW a0, 0(a0)
  SW a0, 304(sp)
  LA a0, ii
  SD a0, 736(sp)
  LA a0, get2
  SD a0, 728(sp)
  ADDI a0, zero, 32
  SW a0, 368(sp)
  LA a0, ii
  SD a0, 720(sp)
  LW a0, 304(sp)
  ADDIW a0, a0, -1
  SW a0, 192(sp)
  LD a0, 752(sp)
  LW s0, 304(sp)
  SH2ADD a0, s0, a0
  SD a0, 1088(sp)
  LD a0, 760(sp)
  LW s0, 192(sp)
  SW s0, 0(a0)
  LW a0, 192(sp)
  SLTIU a0, a0, 1
  SB a0, 53(sp)
  LD a0, 1088(sp)
  LW a0, 0(a0)
  SW a0, 292(sp)
  LD a0, 664(sp)
  LW s0, 292(sp)
  SW s0, 0(a0)
  LD a0, 736(sp)
  LW a0, 0(a0)
  SW a0, 288(sp)
  LD a0, 728(sp)
  LW s0, 288(sp)
  SH2ADD a0, s0, a0
  SD a0, 1080(sp)
  LW a0, 288(sp)
  ADDIW a0, a0, 2
  SW a0, 276(sp)
  LW a0, 368(sp)
  LD s0, 1080(sp)
  SW a0, 0(s0)
  LD a0, 1080(sp)
  LW s0, 292(sp)
  SW s0, 4(a0)
  LD a0, 720(sp)
  LW s0, 276(sp)
  SW s0, 0(a0)
  LB a0, 53(sp)
  BNE a0, zero, bb103
  # implict jump to bb101
bb101:   # loop depth 2
  ADDI a0, zero, 1
  SW a0, 224(sp)
  # implict jump to bb102
bb102:   # loop depth 2
  LW a0, 224(sp)
  SW a0, 224(sp)
  LW a0, 224(sp)
  SLTIU a0, a0, 1
  SB a0, 52(sp)
  LB a0, 52(sp)
  BNE a0, zero, bb99
  JAL zero, bb92
bb103:   # loop depth 2
  ADD a0, zero, zero
  SW a0, 224(sp)
  JAL zero, bb102
bb104:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 9(sp)
  JAL zero, bb98
bb105:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 10(sp)
  JAL zero, bb96
bb106:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 0(sp)
  JAL zero, bb94
bb107:   # loop depth 2
  LA s8, chat
  LA s9, chas
  LW s8, 0(s8)
  SH2ADD s8, s8, s9
  LW a0, 0(s8)
  SW a0, 216(sp)
  LW a0, 216(sp)
  XORI s8, a0, 42
  SLTIU s8, s8, 1
  BNE s8, zero, bb121
  # implict jump to bb108
bb108:   # loop depth 2
  LW a0, 216(sp)
  XORI s8, a0, 47
  SLTIU s8, s8, 1
  # implict jump to bb109
bb109:   # loop depth 2
  BNE s8, zero, bb120
  # implict jump to bb110
bb110:   # loop depth 2
  LW a0, 216(sp)
  XORI s9, a0, 37
  SLTIU s9, s9, 1
  # implict jump to bb111
bb111:   # loop depth 2
  SB s9, 59(sp)
  LB a0, 59(sp)
  BNE a0, zero, bb119
  # implict jump to bb112
bb112:   # loop depth 2
  LW a0, 216(sp)
  XORI s9, a0, 94
  SLTIU s9, s9, 1
  # implict jump to bb113
bb113:   # loop depth 2
  BNE s9, zero, bb115
  # implict jump to bb114
bb114:   # loop depth 1
  LA a0, chat
  SD a0, 808(sp)
  LA a0, chas
  SD a0, 792(sp)
  LA a0, chat
  SD a0, 800(sp)
  ADDI a0, zero, 42
  SW a0, 352(sp)
  LD a0, 808(sp)
  LW a0, 0(a0)
  SW a0, 164(sp)
  LB a0, 59(sp)
  SB a0, 15(sp)
  SB s9, 16(sp)
  LW a0, 164(sp)
  ADDIW s9, a0, 1
  LD a0, 792(sp)
  LW s0, 164(sp)
  SH2ADD a0, s0, a0
  SD a0, 1104(sp)
  LD a0, 800(sp)
  SW s9, 0(a0)
  LW a0, 352(sp)
  LD s0, 1104(sp)
  SW a0, 4(s0)
  JAL zero, bb70
bb115:   # loop depth 2
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
  SW a0, 212(sp)
  LA a0, ii
  SD a0, 1128(sp)
  LA a0, get2
  SD a0, 880(sp)
  ADDI a0, zero, 32
  SW a0, 344(sp)
  LA a0, ii
  SD a0, 816(sp)
  LW a0, 212(sp)
  ADDIW a0, a0, -1
  SW a0, 208(sp)
  LD a0, 1144(sp)
  LW s0, 212(sp)
  SH2ADD a0, s0, a0
  SD a0, 1200(sp)
  LD a0, 1152(sp)
  LW s0, 208(sp)
  SW s0, 0(a0)
  LW a0, 208(sp)
  SLTIU a0, a0, 1
  SB a0, 61(sp)
  LD a0, 1200(sp)
  LW a0, 0(a0)
  SW a0, 196(sp)
  LD a0, 1136(sp)
  LW s0, 196(sp)
  SW s0, 0(a0)
  LD a0, 1128(sp)
  LW a0, 0(a0)
  SW a0, 188(sp)
  LD a0, 880(sp)
  LW s0, 188(sp)
  SH2ADD a0, s0, a0
  SD a0, 1112(sp)
  LW a0, 188(sp)
  ADDIW a0, a0, 2
  SW a0, 148(sp)
  LW a0, 344(sp)
  LD s0, 1112(sp)
  SW a0, 0(s0)
  LD a0, 1112(sp)
  LW s0, 196(sp)
  SW s0, 4(a0)
  LD a0, 816(sp)
  LW s0, 148(sp)
  SW s0, 0(a0)
  LB a0, 61(sp)
  BNE a0, zero, bb118
  # implict jump to bb116
bb116:   # loop depth 2
  ADDI a0, zero, 1
  SW a0, 172(sp)
  # implict jump to bb117
bb117:   # loop depth 2
  LW a0, 172(sp)
  SW a0, 172(sp)
  LW a0, 172(sp)
  SLTIU a0, a0, 1
  SB a0, 60(sp)
  LB a0, 60(sp)
  BNE a0, zero, bb114
  JAL zero, bb107
bb118:   # loop depth 2
  ADD a0, zero, zero
  SW a0, 172(sp)
  JAL zero, bb117
bb119:   # loop depth 2
  ADDI s9, zero, 1
  JAL zero, bb113
bb120:   # loop depth 2
  ADDI s9, zero, 1
  JAL zero, bb111
bb121:   # loop depth 2
  ADDI s8, zero, 1
  JAL zero, bb109
bb122:   # loop depth 2
  LA s1, chat
  LA s4, chas
  LW s1, 0(s1)
  SH2ADD s1, s1, s4
  LW a0, 0(s1)
  SW a0, 176(sp)
  LW a0, 176(sp)
  XORI s1, a0, 43
  SLTIU s1, s1, 1
  BNE s1, zero, bb142
  # implict jump to bb123
bb123:   # loop depth 2
  LW a0, 176(sp)
  XORI s1, a0, 45
  SLTIU s1, s1, 1
  # implict jump to bb124
bb124:   # loop depth 2
  BNE s1, zero, bb141
  # implict jump to bb125
bb125:   # loop depth 2
  LW a0, 176(sp)
  XORI s4, a0, 42
  SLTIU s4, s4, 1
  # implict jump to bb126
bb126:   # loop depth 2
  BNE s4, zero, bb140
  # implict jump to bb127
bb127:   # loop depth 2
  LW a0, 176(sp)
  XORI s5, a0, 47
  SLTIU s5, s5, 1
  # implict jump to bb128
bb128:   # loop depth 2
  BNE s5, zero, bb139
  # implict jump to bb129
bb129:   # loop depth 2
  LW a0, 176(sp)
  XORI s8, a0, 37
  SLTIU s8, s8, 1
  # implict jump to bb130
bb130:   # loop depth 2
  BNE s8, zero, bb138
  # implict jump to bb131
bb131:   # loop depth 2
  LW a0, 176(sp)
  XORI s9, a0, 94
  SLTIU s9, s9, 1
  # implict jump to bb132
bb132:   # loop depth 2
  BNE s9, zero, bb134
  # implict jump to bb133
bb133:   # loop depth 1
  LA a0, chat
  SD a0, 1184(sp)
  LA a0, chas
  SD a0, 1168(sp)
  LA a0, chat
  SD a0, 1176(sp)
  ADDI a0, zero, 45
  SW a0, 332(sp)
  LD a0, 1184(sp)
  LW a0, 0(a0)
  SW a0, 220(sp)
  SB s1, 17(sp)
  SB s5, 18(sp)
  LW a0, 220(sp)
  ADDIW s10, a0, 1
  LD a0, 1168(sp)
  LW s0, 220(sp)
  SH2ADD s11, s0, a0
  LD a0, 1176(sp)
  SW s10, 0(a0)
  LW a0, 332(sp)
  SW a0, 4(s11)
  JAL zero, bb68
bb134:   # loop depth 2
  LA a0, chat
  SD a0, 1240(sp)
  LA a0, chas
  SD a0, 1224(sp)
  LA a0, chat
  SD a0, 1232(sp)
  LA a0, c
  SD a0, 1216(sp)
  LD a0, 1240(sp)
  LW a0, 0(a0)
  SW a0, 272(sp)
  LA a0, ii
  SD a0, 1208(sp)
  LA a0, get2
  SD a0, 1120(sp)
  ADDI a0, zero, 32
  SW a0, 168(sp)
  LA a0, ii
  SD a0, 840(sp)
  LW a0, 272(sp)
  ADDIW a0, a0, -1
  SW a0, 240(sp)
  LD a0, 1224(sp)
  LW s0, 272(sp)
  SH2ADD a0, s0, a0
  SD a0, 576(sp)
  LD a0, 1232(sp)
  LW s0, 240(sp)
  SW s0, 0(a0)
  LW a0, 240(sp)
  SLTIU a0, a0, 1
  SB a0, 62(sp)
  LD a0, 576(sp)
  LW a0, 0(a0)
  SW a0, 284(sp)
  LD a0, 1216(sp)
  LW s0, 284(sp)
  SW s0, 0(a0)
  LD a0, 1208(sp)
  LW a0, 0(a0)
  SW a0, 296(sp)
  LD a0, 1120(sp)
  LW s0, 296(sp)
  SH2ADD a0, s0, a0
  SD a0, 624(sp)
  LW a0, 296(sp)
  ADDIW a0, a0, 2
  SW a0, 160(sp)
  LW a0, 168(sp)
  LD s0, 624(sp)
  SW a0, 0(s0)
  LD a0, 624(sp)
  LW s0, 284(sp)
  SW s0, 4(a0)
  LD a0, 840(sp)
  LW s0, 160(sp)
  SW s0, 0(a0)
  LB a0, 62(sp)
  BNE a0, zero, bb137
  # implict jump to bb135
bb135:   # loop depth 2
  ADDI a0, zero, 1
  SW a0, 200(sp)
  # implict jump to bb136
bb136:   # loop depth 2
  LW a0, 200(sp)
  SW a0, 200(sp)
  LW a0, 200(sp)
  SLTIU a0, a0, 1
  SB a0, 65(sp)
  LB a0, 65(sp)
  BNE a0, zero, bb133
  JAL zero, bb122
bb137:   # loop depth 2
  ADD a0, zero, zero
  SW a0, 200(sp)
  JAL zero, bb136
bb138:   # loop depth 2
  ADDI s9, zero, 1
  JAL zero, bb132
bb139:   # loop depth 2
  ADDI s8, zero, 1
  JAL zero, bb130
bb140:   # loop depth 2
  ADDI s5, zero, 1
  JAL zero, bb128
bb141:   # loop depth 2
  ADDI s4, zero, 1
  JAL zero, bb126
bb142:   # loop depth 2
  ADDI s1, zero, 1
  JAL zero, bb124
bb143:   # loop depth 2
  LA a0, chat
  LA s0, chas
  LW a0, 0(a0)
  SH2ADD a0, a0, s0
  LW s5, 0(a0)
  XORI a0, s5, 43
  SLTIU a0, a0, 1
  BNE a0, zero, bb163
  # implict jump to bb144
bb144:   # loop depth 2
  XORI a0, s5, 45
  SLTIU s9, a0, 1
  # implict jump to bb145
bb145:   # loop depth 2
  BNE s9, zero, bb162
  # implict jump to bb146
bb146:   # loop depth 2
  XORI s0, s5, 42
  SLTIU a0, s0, 1
  SB a0, 135(sp)
  LB a0, 135(sp)
  SB a0, 135(sp)
  # implict jump to bb147
bb147:   # loop depth 2
  LB a0, 135(sp)
  SB a0, 135(sp)
  LB a0, 135(sp)
  BNE a0, zero, bb161
  # implict jump to bb148
bb148:   # loop depth 2
  XORI s2, s5, 47
  SLTIU a0, s2, 1
  SB a0, 23(sp)
  LB a0, 23(sp)
  SB a0, 23(sp)
  # implict jump to bb149
bb149:   # loop depth 2
  LB a0, 23(sp)
  SB a0, 23(sp)
  LB a0, 23(sp)
  BNE a0, zero, bb160
  # implict jump to bb150
bb150:   # loop depth 2
  XORI s3, s5, 37
  SLTIU s11, s3, 1
  # implict jump to bb151
bb151:   # loop depth 2
  BNE s11, zero, bb159
  # implict jump to bb152
bb152:   # loop depth 2
  XORI s5, s5, 94
  SLTIU a0, s5, 1
  SB a0, 134(sp)
  LB a0, 134(sp)
  SB a0, 134(sp)
  # implict jump to bb153
bb153:   # loop depth 2
  LB a0, 134(sp)
  SB a0, 134(sp)
  LB a0, 134(sp)
  BNE a0, zero, bb155
  # implict jump to bb154
bb154:   # loop depth 1
  LA s8, chat
  LA s1, chas
  SD s1, 1248(sp)
  LA s1, chat
  SD s1, 1256(sp)
  ADDI s1, zero, 43
  SW s1, 316(sp)
  LW s1, 0(s8)
  SW s1, 432(sp)
  LB a0, 135(sp)
  SB a0, 135(sp)
  LB a0, 134(sp)
  SB a0, 134(sp)
  LB a0, 23(sp)
  SB a0, 23(sp)
  LW s1, 432(sp)
  ADDIW s2, s1, 1
  LD s1, 1248(sp)
  LW s3, 432(sp)
  SH2ADD s3, s3, s1
  LD s1, 1256(sp)
  SW s2, 0(s1)
  LW s1, 316(sp)
  SW s1, 4(s3)
  JAL zero, bb66
bb155:   # loop depth 2
  LA s8, chat
  LA s1, chas
  SD s1, 976(sp)
  LA s1, chat
  SD s1, 984(sp)
  LA s1, c
  SD s1, 968(sp)
  LW s8, 0(s8)
  LA s1, ii
  SD s1, 1040(sp)
  LA s1, get2
  SD s1, 1264(sp)
  ADDI s1, zero, 32
  SW s1, 156(sp)
  LA s1, ii
  SD s1, 848(sp)
  ADDIW a0, s8, -1
  SW a0, 372(sp)
  LD s1, 976(sp)
  SH2ADD s8, s8, s1
  LD s1, 984(sp)
  LW a0, 372(sp)
  SW a0, 0(s1)
  LW a0, 372(sp)
  SLTIU s1, a0, 1
  SB s1, 5(sp)
  LW s8, 0(s8)
  LD s1, 968(sp)
  SW s8, 0(s1)
  LD s1, 1040(sp)
  LW a0, 0(s1)
  SW a0, 364(sp)
  LD s1, 1264(sp)
  LW a0, 364(sp)
  SH2ADD s1, a0, s1
  SD s1, 568(sp)
  LW a0, 364(sp)
  ADDIW a0, a0, 2
  SW a0, 360(sp)
  LW s1, 156(sp)
  LD s4, 568(sp)
  SW s1, 0(s4)
  LD s1, 568(sp)
  SW s8, 4(s1)
  LD s1, 848(sp)
  LW a0, 360(sp)
  SW a0, 0(s1)
  LB s1, 5(sp)
  BNE s1, zero, bb158
  # implict jump to bb156
bb156:   # loop depth 2
  ADDI s8, zero, 1
  # implict jump to bb157
bb157:   # loop depth 2
  SLTIU s8, s8, 1
  BNE s8, zero, bb154
  JAL zero, bb143
bb158:   # loop depth 2
  ADD s8, zero, zero
  JAL zero, bb157
bb159:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 134(sp)
  JAL zero, bb153
bb160:   # loop depth 2
  ADDI s11, zero, 1
  JAL zero, bb151
bb161:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 23(sp)
  JAL zero, bb149
bb162:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 135(sp)
  JAL zero, bb147
bb163:   # loop depth 2
  ADDI s9, zero, 1
  JAL zero, bb145
bb164:   # loop depth 1
  LA s8, chat
  LA s1, chas
  SD s1, 1024(sp)
  LA a0, chat
  SD a0, 456(sp)
  LA s1, c
  SD s1, 1016(sp)
  LW s10, 0(s8)
  ADDIW a0, s10, -1
  SW a0, 380(sp)
  LD s1, 1024(sp)
  SH2ADD s10, s10, s1
  LD a0, 456(sp)
  LW s0, 380(sp)
  SW s0, 0(a0)
  LW s10, 0(s10)
  XORI a0, s10, 40
  SW a0, 308(sp)
  LD s1, 1016(sp)
  SW s10, 0(s1)
  LW a0, 308(sp)
  BNE a0, zero, bb165
  JAL zero, bb64
bb165:   # loop depth 1
  LA a0, ii
  SD a0, 528(sp)
  LW a0, 380(sp)
  SW a0, 380(sp)
  LD a0, 528(sp)
  LW a0, 0(a0)
  SW a0, 376(sp)
  LW a0, 376(sp)
  SW a0, 376(sp)
  # implict jump to bb166
bb166:   # loop depth 2
  LA a0, get2
  SD a0, 608(sp)
  LW a0, 376(sp)
  SW a0, 376(sp)
  LA s1, c
  SD s1, 1008(sp)
  ADDI s1, zero, 32
  SW s1, 444(sp)
  LW a0, 376(sp)
  LD s0, 608(sp)
  SH2ADD a0, a0, s0
  SD a0, 488(sp)
  LA s1, chas
  SD s1, 1000(sp)
  LW s1, 444(sp)
  LD a0, 488(sp)
  SW s1, 0(a0)
  LW a0, 380(sp)
  SW a0, 380(sp)
  LD s1, 1008(sp)
  LW s1, 0(s1)
  SW s1, 428(sp)
  LD s1, 1000(sp)
  LW a0, 380(sp)
  SH2ADD s1, a0, s1
  SD s1, 536(sp)
  LA s1, c
  SD s1, 992(sp)
  LW a0, 380(sp)
  ADDIW a0, a0, -1
  SW a0, 380(sp)
  LW a0, 376(sp)
  ADDIW a0, a0, 2
  SW a0, 376(sp)
  LW s1, 428(sp)
  LD a0, 488(sp)
  SW s1, 4(a0)
  LD s1, 536(sp)
  LW a0, 0(s1)
  SW a0, 340(sp)
  LW a0, 340(sp)
  XORI s1, a0, 40
  SW s1, 452(sp)
  LD s1, 992(sp)
  LW a0, 340(sp)
  SW a0, 0(s1)
  LW s1, 452(sp)
  BNE s1, zero, bb168
  # implict jump to bb167
bb167:   # loop depth 1
  LA s1, chat
  SD s1, 824(sp)
  LA a0, ii
  SD a0, 600(sp)
  LD s1, 824(sp)
  LW a0, 380(sp)
  SW a0, 0(s1)
  LW a0, 376(sp)
  LD s0, 600(sp)
  SW a0, 0(s0)
  JAL zero, bb64
bb168:   # loop depth 2
  LW a0, 376(sp)
  SW a0, 376(sp)
  LW a0, 380(sp)
  SW a0, 380(sp)
  JAL zero, bb166
bb169:   # loop depth 1
  LA s8, chat
  LA s1, chas
  SD s1, 1032(sp)
  LA a0, chat
  SD a0, 472(sp)
  ADDI s1, zero, 94
  SW s1, 388(sp)
  LW s8, 0(s8)
  ADDIW s10, s8, 1
  LD s1, 1032(sp)
  SH2ADD s8, s8, s1
  LD a0, 472(sp)
  SW s10, 0(a0)
  LW s1, 388(sp)
  SW s1, 4(s8)
  JAL zero, bb63
bb170:   # loop depth 1
  LA s8, chat
  LA s1, chas
  SD s1, 960(sp)
  LA a0, chat
  SD a0, 464(sp)
  ADDI s1, zero, 40
  SW s1, 424(sp)
  LW s8, 0(s8)
  ADDIW s10, s8, 1
  LD s1, 960(sp)
  SH2ADD s8, s8, s1
  LD a0, 464(sp)
  SW s10, 0(a0)
  LW s1, 424(sp)
  SW s1, 4(s8)
  JAL zero, bb62
bb171:   # loop depth 1
  LA s8, ii
  LA s10, get2
  LA s1, ii
  SD s1, 872(sp)
  SB s11, 133(sp)
  LW s8, 0(s8)
  LB a0, 135(sp)
  SB a0, 135(sp)
  LB a0, 135(sp)
  SB a0, 136(sp)
  LB a0, 139(sp)
  SB a0, 137(sp)
  LB a0, 147(sp)
  SB a0, 138(sp)
  LB a0, 141(sp)
  SB a0, 140(sp)
  LB a0, 145(sp)
  SB a0, 143(sp)
  SH2ADD a0, s8, s10
  ADDIW s0, s8, 1
  SW s0, 412(sp)
  LW s0, 320(sp)
  SW s0, 0(a0)
  LB a0, 144(sp)
  SB a0, 69(sp)
  LB a0, 130(sp)
  SB a0, 70(sp)
  LB a0, 108(sp)
  SB a0, 28(sp)
  LB a0, 107(sp)
  SB a0, 71(sp)
  LB a0, 106(sp)
  SB a0, 72(sp)
  LB a0, 134(sp)
  SB a0, 134(sp)
  LB a0, 105(sp)
  SB a0, 73(sp)
  LB s3, 104(sp)
  LB s2, 102(sp)
  LB s1, 101(sp)
  LB s10, 100(sp)
  LB a0, 99(sp)
  LD s4, 872(sp)
  LW s5, 412(sp)
  SW s5, 0(s4)
  JAL zero, bb75
bb172:   # loop depth 0
  ADD s2, zero, zero
  # implict jump to bb173
bb173:   # loop depth 1
  LA s3, get
  ADDIW s0, s2, 1
  SH2ADD s2, s2, s3
  SW s1, 0(s2)
  CALL getch
  ADD s1, a0, zero
  XORI s3, s1, 10
  XORI s2, s1, 13
  SLTU s3, zero, s3
  SLTU s2, zero, s2
  AND s2, s2, s3
  BNE s2, zero, bb175
  # implict jump to bb174
bb174:   # loop depth 0
  JAL zero, bb2
bb175:   # loop depth 1
  ADD s2, s0, zero
  JAL zero, bb173
