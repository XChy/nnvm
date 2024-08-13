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
  ADDI sp, sp, -1216
  SD s5, 456(sp)
  SD s10, 464(sp)
  SD s3, 480(sp)
  SD s4, 488(sp)
  SD s6, 496(sp)
  SD s7, 504(sp)
  SD s8, 512(sp)
  SD s9, 520(sp)
  SD ra, 528(sp)
  SD s0, 536(sp)
  SD s1, 544(sp)
  SD s2, 552(sp)
  SD s11, 632(sp)
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
  SW s0, 372(sp)
  LW a0, 0(a0)
  SW a0, 364(sp)
  LW s0, 372(sp)
  LW a0, 364(sp)
  BLT a0, s0, bb59
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
  LD s5, 456(sp)
  LD s10, 464(sp)
  LD s3, 480(sp)
  LD s4, 488(sp)
  LD s6, 496(sp)
  LD s7, 504(sp)
  LD s8, 512(sp)
  LD s9, 520(sp)
  LD ra, 528(sp)
  LD s0, 536(sp)
  LD s1, 544(sp)
  LD s2, 552(sp)
  LD s11, 632(sp)
  ADDI sp, sp, 1216
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
  BEQ s0, zero, bb57
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
  BEQ s6, zero, bb52
  # implict jump to bb29
bb29:   # loop depth 1
  ADD s4, a0, zero
  # implict jump to bb30
bb30:   # loop depth 1
  SUBW s2, s1, s3
  XORI s6, s5, 45
  BEQ s6, zero, bb51
  # implict jump to bb31
bb31:   # loop depth 1
  ADD s2, s4, zero
  # implict jump to bb32
bb32:   # loop depth 1
  MULW s4, s3, s1
  XORI s6, s5, 42
  BEQ s6, zero, bb50
  # implict jump to bb33
bb33:   # loop depth 1
  ADD s4, s2, zero
  # implict jump to bb34
bb34:   # loop depth 1
  DIVW s2, s1, s3
  XORI s6, s5, 47
  BEQ s6, zero, bb49
  # implict jump to bb35
bb35:   # loop depth 1
  ADD s2, s4, zero
  # implict jump to bb36
bb36:   # loop depth 1
  REMW s4, s1, s3
  XORI s6, s5, 37
  BEQ s6, zero, bb48
  # implict jump to bb37
bb37:   # loop depth 1
  ADD s4, s2, zero
  # implict jump to bb38
bb38:   # loop depth 1
  XORI s2, s5, 94
  BEQ s2, zero, bb41
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
  SB s0, 67(sp)
  ADD s0, zero, zero
  SB s0, 68(sp)
  ADD s0, zero, zero
  SB s0, 69(sp)
  ADD s0, zero, zero
  SB s0, 70(sp)
  ADD s0, zero, zero
  SB s0, 71(sp)
  ADD s0, zero, zero
  SB s0, 72(sp)
  ADD s0, zero, zero
  SB s0, 73(sp)
  ADD s0, zero, zero
  SB s0, 74(sp)
  ADD s0, zero, zero
  SB s0, 66(sp)
  ADD s0, zero, zero
  SB s0, 76(sp)
  ADD s0, zero, zero
  SB s0, 90(sp)
  ADD s0, zero, zero
  SB s0, 89(sp)
  ADD s0, zero, zero
  SB s0, 88(sp)
  ADD s0, zero, zero
  SB s0, 87(sp)
  ADD s0, zero, zero
  SB s0, 86(sp)
  ADD s0, zero, zero
  SB s0, 85(sp)
  ADD s1, zero, zero
  ADD a0, zero, zero
  SB a0, 4(sp)
  ADD a0, zero, zero
  SB a0, 22(sp)
  LW a0, 364(sp)
  SW a0, 364(sp)
  # implict jump to bb60
bb60:   # loop depth 1
  LA s4, get
  LW a0, 364(sp)
  SW a0, 364(sp)
  ADDI a0, zero, 57
  SW a0, 408(sp)
  LB a0, 22(sp)
  SB a0, 22(sp)
  LW a0, 364(sp)
  SH2ADD s2, a0, s4
  LB a0, 4(sp)
  SB a0, 4(sp)
  LW s2, 0(s2)
  SW s2, 388(sp)
  SB s1, 29(sp)
  LB s1, 85(sp)
  SB s1, 30(sp)
  LB s1, 86(sp)
  SB s1, 50(sp)
  LB s1, 87(sp)
  SB s1, 31(sp)
  LB s1, 88(sp)
  SB s1, 32(sp)
  LW s1, 408(sp)
  LW s2, 388(sp)
  SLT s2, s1, s2
  LW s1, 388(sp)
  SLTI s1, s1, 48
  XORI s2, s2, 1
  XORI s1, s1, 1
  AND s2, s1, s2
  LB s1, 89(sp)
  SB s1, 82(sp)
  XORI s1, s2, 1
  SW s1, 236(sp)
  LB s1, 90(sp)
  SB s1, 117(sp)
  LB s10, 76(sp)
  LB s2, 66(sp)
  SB s2, 116(sp)
  LB s2, 74(sp)
  SB s2, 115(sp)
  LB s2, 73(sp)
  SB s2, 11(sp)
  LB s3, 72(sp)
  SB s3, 114(sp)
  LB s3, 71(sp)
  SB s3, 113(sp)
  LB s3, 70(sp)
  SB s3, 112(sp)
  LB s3, 69(sp)
  SB s3, 111(sp)
  LB s3, 68(sp)
  SB s3, 101(sp)
  LB s3, 67(sp)
  SB s3, 109(sp)
  LW s3, 236(sp)
  BEQ s3, zero, bb171
  # implict jump to bb61
bb61:   # loop depth 1
  LW s3, 388(sp)
  XORI s7, s3, 40
  BEQ s7, zero, bb170
  # implict jump to bb62
bb62:   # loop depth 1
  LW s3, 388(sp)
  XORI s7, s3, 94
  BEQ s7, zero, bb169
  # implict jump to bb63
bb63:   # loop depth 1
  LW s3, 388(sp)
  XORI s7, s3, 41
  BEQ s7, zero, bb164
  # implict jump to bb64
bb64:   # loop depth 1
  LW s3, 388(sp)
  XORI s7, s3, 43
  BEQ s7, zero, bb143
  # implict jump to bb65
bb65:   # loop depth 1
  LB a0, 22(sp)
  SB a0, 22(sp)
  LB a0, 4(sp)
  SB a0, 4(sp)
  LB s11, 11(sp)
  LB s1, 112(sp)
  # implict jump to bb66
bb66:   # loop depth 1
  LW s2, 388(sp)
  XORI a0, s2, 45
  SW a0, 432(sp)
  SB s1, 129(sp)
  SB s11, 128(sp)
  SB s10, 127(sp)
  LB a0, 4(sp)
  SB a0, 4(sp)
  LB a0, 4(sp)
  SB a0, 126(sp)
  LB a0, 22(sp)
  SB a0, 22(sp)
  LB a0, 22(sp)
  SB a0, 118(sp)
  LW a0, 432(sp)
  BEQ a0, zero, bb122
  # implict jump to bb67
bb67:   # loop depth 1
  LB a0, 29(sp)
  SB a0, 1(sp)
  LB s8, 30(sp)
  LB s9, 50(sp)
  LB s10, 31(sp)
  LB s7, 114(sp)
  # implict jump to bb68
bb68:   # loop depth 1
  LW a0, 388(sp)
  XORI a0, a0, 42
  SW a0, 268(sp)
  SB s7, 124(sp)
  SB s10, 123(sp)
  SB s9, 122(sp)
  SB s8, 121(sp)
  LB a0, 1(sp)
  SB a0, 120(sp)
  LW a0, 268(sp)
  BEQ a0, zero, bb107
  # implict jump to bb69
bb69:   # loop depth 1
  LB a0, 32(sp)
  SB a0, 3(sp)
  LB s10, 82(sp)
  LB s8, 116(sp)
  # implict jump to bb70
bb70:   # loop depth 1
  LW a0, 388(sp)
  XORI a0, a0, 47
  SW a0, 152(sp)
  SB s8, 119(sp)
  SB s10, 102(sp)
  LB a0, 3(sp)
  SB a0, 83(sp)
  LW a0, 152(sp)
  BEQ a0, zero, bb92
  # implict jump to bb71
bb71:   # loop depth 1
  LB a0, 117(sp)
  SB a0, 62(sp)
  LB a0, 115(sp)
  SB a0, 65(sp)
  LB a0, 113(sp)
  SB a0, 6(sp)
  # implict jump to bb72
bb72:   # loop depth 1
  LW a0, 388(sp)
  XORI a0, a0, 37
  SW a0, 132(sp)
  LB a0, 6(sp)
  SB a0, 93(sp)
  LB a0, 65(sp)
  SB a0, 81(sp)
  LB a0, 62(sp)
  SB a0, 80(sp)
  LW a0, 132(sp)
  BEQ a0, zero, bb77
  # implict jump to bb73
bb73:   # loop depth 1
  LB a0, 111(sp)
  SB a0, 38(sp)
  LB a0, 101(sp)
  SB a0, 51(sp)
  LB s6, 109(sp)
  # implict jump to bb74
bb74:   # loop depth 1
  LA s10, ii
  LA a0, get2
  SD a0, 656(sp)
  LA a0, ii
  SD a0, 800(sp)
  ADDI a0, zero, 32
  SW a0, 340(sp)
  LW a0, 0(s10)
  SW a0, 272(sp)
  SB s6, 79(sp)
  LB a0, 51(sp)
  SB a0, 14(sp)
  LB a0, 14(sp)
  SB a0, 14(sp)
  LB a0, 38(sp)
  SB a0, 17(sp)
  LB a0, 118(sp)
  SB a0, 96(sp)
  LB a0, 126(sp)
  SB a0, 97(sp)
  LD a0, 656(sp)
  LW s0, 272(sp)
  SH2ADD s2, s0, a0
  LW a0, 272(sp)
  ADDIW a0, a0, 1
  SW a0, 376(sp)
  LW a0, 340(sp)
  SW a0, 0(s2)
  LB a0, 120(sp)
  SB a0, 98(sp)
  LB a0, 121(sp)
  SB a0, 99(sp)
  LB a0, 122(sp)
  SB a0, 100(sp)
  LB a0, 123(sp)
  SB a0, 75(sp)
  LB a0, 83(sp)
  SB a0, 28(sp)
  LB a0, 102(sp)
  SB a0, 108(sp)
  LB a0, 80(sp)
  SB a0, 78(sp)
  LB s10, 127(sp)
  LB a0, 119(sp)
  SB a0, 77(sp)
  LB a0, 81(sp)
  SB a0, 95(sp)
  LB a0, 128(sp)
  SB a0, 11(sp)
  LB a0, 11(sp)
  SB a0, 11(sp)
  LB s7, 124(sp)
  LB s3, 93(sp)
  LB s2, 129(sp)
  LB s1, 17(sp)
  LB a0, 14(sp)
  SB a0, 14(sp)
  LB a0, 79(sp)
  LD s4, 800(sp)
  LW s5, 376(sp)
  SW s5, 0(s4)
  # implict jump to bb75
bb75:   # loop depth 1
  LA s4, i
  SD s4, 832(sp)
  LA s4, i
  SD s4, 824(sp)
  SB a0, 107(sp)
  LB a0, 14(sp)
  SB a0, 14(sp)
  LB a0, 14(sp)
  SB a0, 106(sp)
  LD a0, 832(sp)
  LW s5, 0(a0)
  SB s1, 105(sp)
  SB s2, 104(sp)
  SB s3, 103(sp)
  SB s7, 110(sp)
  LB a0, 11(sp)
  SB a0, 125(sp)
  ADDIW a0, s5, 1
  SW a0, 364(sp)
  LB a0, 95(sp)
  SB a0, 131(sp)
  LD a0, 824(sp)
  LW s0, 364(sp)
  SW s0, 0(a0)
  LB a0, 77(sp)
  SB a0, 130(sp)
  SB s10, 33(sp)
  LB a0, 78(sp)
  SB a0, 43(sp)
  LB a0, 108(sp)
  SB a0, 44(sp)
  LB a0, 28(sp)
  SB a0, 45(sp)
  LB a0, 75(sp)
  SB a0, 46(sp)
  LB a0, 100(sp)
  SB a0, 47(sp)
  LB a0, 99(sp)
  SB a0, 48(sp)
  LB a0, 98(sp)
  SB a0, 49(sp)
  LB a0, 97(sp)
  SB a0, 39(sp)
  LB a0, 96(sp)
  SB a0, 22(sp)
  LB a0, 22(sp)
  SB a0, 22(sp)
  LW a0, 372(sp)
  LW s0, 364(sp)
  BLT s0, a0, bb76
  JAL zero, bb3
bb76:   # loop depth 1
  LB a0, 107(sp)
  SB a0, 67(sp)
  LB a0, 106(sp)
  SB a0, 68(sp)
  LB a0, 105(sp)
  SB a0, 69(sp)
  LB a0, 104(sp)
  SB a0, 70(sp)
  LB a0, 103(sp)
  SB a0, 71(sp)
  LB a0, 110(sp)
  SB a0, 72(sp)
  LB a0, 125(sp)
  SB a0, 73(sp)
  LB a0, 131(sp)
  SB a0, 74(sp)
  LB a0, 130(sp)
  SB a0, 66(sp)
  LB a0, 33(sp)
  SB a0, 76(sp)
  LB a0, 43(sp)
  SB a0, 90(sp)
  LB a0, 44(sp)
  SB a0, 89(sp)
  LB a0, 45(sp)
  SB a0, 88(sp)
  LB a0, 46(sp)
  SB a0, 87(sp)
  LB a0, 47(sp)
  SB a0, 86(sp)
  LB a0, 48(sp)
  SB a0, 85(sp)
  LB s1, 49(sp)
  LB a0, 39(sp)
  SB a0, 4(sp)
  LB a0, 4(sp)
  SB a0, 4(sp)
  LB a0, 22(sp)
  SB a0, 22(sp)
  LW a0, 364(sp)
  SW a0, 364(sp)
  JAL zero, bb60
bb77:   # loop depth 2
  LA s5, chat
  LA s6, chas
  LW s5, 0(s5)
  SH2ADD s5, s5, s6
  LW a0, 0(s5)
  SW a0, 232(sp)
  LW a0, 232(sp)
  XORI s5, a0, 42
  BEQ s5, zero, bb91
  # implict jump to bb78
bb78:   # loop depth 2
  LW a0, 232(sp)
  XORI s5, a0, 47
  SLTIU s6, s5, 1
  # implict jump to bb79
bb79:   # loop depth 2
  BNE s6, zero, bb90
  # implict jump to bb80
bb80:   # loop depth 2
  LW a0, 232(sp)
  XORI s5, a0, 37
  SLTIU s5, s5, 1
  # implict jump to bb81
bb81:   # loop depth 2
  SB s5, 40(sp)
  LB a0, 40(sp)
  BNE a0, zero, bb89
  # implict jump to bb82
bb82:   # loop depth 2
  LW a0, 232(sp)
  XORI s5, a0, 94
  SLTIU s10, s5, 1
  # implict jump to bb83
bb83:   # loop depth 2
  BNE s10, zero, bb85
  # implict jump to bb84
bb84:   # loop depth 1
  LA a0, chat
  SD a0, 864(sp)
  LA a0, chas
  SD a0, 792(sp)
  LA a0, chat
  SD a0, 856(sp)
  ADDI a0, zero, 37
  SW a0, 380(sp)
  LD a0, 864(sp)
  LW a0, 0(a0)
  SW a0, 240(sp)
  SB s10, 38(sp)
  LB a0, 40(sp)
  SB a0, 51(sp)
  LW a0, 240(sp)
  ADDIW s10, a0, 1
  LD a0, 792(sp)
  LW s0, 240(sp)
  SH2ADD a0, s0, a0
  SD a0, 984(sp)
  LD a0, 856(sp)
  SW s10, 0(a0)
  LW a0, 380(sp)
  LD s0, 984(sp)
  SW a0, 4(s0)
  JAL zero, bb74
bb85:   # loop depth 2
  LA a0, chat
  SD a0, 720(sp)
  LA a0, chas
  SD a0, 904(sp)
  LA a0, chat
  SD a0, 912(sp)
  LA a0, c
  SD a0, 896(sp)
  LD a0, 720(sp)
  LW a0, 0(a0)
  SW a0, 264(sp)
  LA a0, ii
  SD a0, 888(sp)
  LA a0, get2
  SD a0, 880(sp)
  ADDI a0, zero, 32
  SW a0, 368(sp)
  LA a0, ii
  SD a0, 872(sp)
  LW a0, 264(sp)
  ADDIW a0, a0, -1
  SW a0, 260(sp)
  LD a0, 904(sp)
  LW s0, 264(sp)
  SH2ADD a0, s0, a0
  SD a0, 920(sp)
  LD a0, 912(sp)
  LW s0, 260(sp)
  SW s0, 0(a0)
  LD a0, 920(sp)
  LW a0, 0(a0)
  SW a0, 256(sp)
  LD a0, 896(sp)
  LW s0, 256(sp)
  SW s0, 0(a0)
  LD a0, 888(sp)
  LW a0, 0(a0)
  SW a0, 252(sp)
  LD a0, 880(sp)
  LW s0, 252(sp)
  SH2ADD a0, s0, a0
  SD a0, 992(sp)
  LW a0, 252(sp)
  ADDIW a0, a0, 2
  SW a0, 248(sp)
  LW a0, 368(sp)
  LD s0, 992(sp)
  SW a0, 0(s0)
  LD a0, 992(sp)
  LW s0, 256(sp)
  SW s0, 4(a0)
  LD a0, 872(sp)
  LW s0, 248(sp)
  SW s0, 0(a0)
  LW a0, 260(sp)
  BEQ a0, zero, bb88
  # implict jump to bb86
bb86:   # loop depth 2
  ADDI a0, zero, 1
  SW a0, 244(sp)
  # implict jump to bb87
bb87:   # loop depth 2
  LW a0, 244(sp)
  SW a0, 244(sp)
  LW a0, 244(sp)
  BEQ a0, zero, bb84
  JAL zero, bb77
bb88:   # loop depth 2
  ADD a0, zero, zero
  SW a0, 244(sp)
  JAL zero, bb87
bb89:   # loop depth 2
  ADDI s10, zero, 1
  JAL zero, bb83
bb90:   # loop depth 2
  ADDI s5, zero, 1
  JAL zero, bb81
bb91:   # loop depth 2
  ADDI s6, zero, 1
  JAL zero, bb79
bb92:   # loop depth 2
  LA a0, chat
  SD a0, 752(sp)
  LA a0, chas
  SD a0, 744(sp)
  LD a0, 752(sp)
  LW a0, 0(a0)
  SW a0, 168(sp)
  LD a0, 744(sp)
  LW s0, 168(sp)
  SH2ADD a0, s0, a0
  SD a0, 1032(sp)
  LD a0, 1032(sp)
  LW a0, 0(a0)
  SW a0, 160(sp)
  LW a0, 160(sp)
  XORI a0, a0, 42
  SW a0, 136(sp)
  LW a0, 136(sp)
  BEQ a0, zero, bb106
  # implict jump to bb93
bb93:   # loop depth 2
  LW a0, 160(sp)
  XORI a0, a0, 47
  SW a0, 140(sp)
  LW a0, 140(sp)
  SLTIU a0, a0, 1
  SB a0, 60(sp)
  LB a0, 60(sp)
  SB a0, 60(sp)
  # implict jump to bb94
bb94:   # loop depth 2
  LB a0, 60(sp)
  SB a0, 0(sp)
  LB a0, 0(sp)
  BNE a0, zero, bb105
  # implict jump to bb95
bb95:   # loop depth 2
  LW a0, 160(sp)
  XORI a0, a0, 37
  SW a0, 148(sp)
  LW a0, 148(sp)
  SLTIU a0, a0, 1
  SB a0, 59(sp)
  LB a0, 59(sp)
  SB a0, 59(sp)
  # implict jump to bb96
bb96:   # loop depth 2
  LB a0, 59(sp)
  SB a0, 12(sp)
  LB a0, 12(sp)
  BNE a0, zero, bb104
  # implict jump to bb97
bb97:   # loop depth 2
  LW a0, 160(sp)
  XORI a0, a0, 94
  SW a0, 436(sp)
  LW a0, 436(sp)
  SLTIU a0, a0, 1
  SB a0, 56(sp)
  LB a0, 56(sp)
  SB a0, 56(sp)
  # implict jump to bb98
bb98:   # loop depth 2
  LB a0, 56(sp)
  SB a0, 16(sp)
  LB a0, 16(sp)
  BNE a0, zero, bb100
  # implict jump to bb99
bb99:   # loop depth 1
  LA a0, chat
  SD a0, 680(sp)
  LA a0, chas
  SD a0, 664(sp)
  LA a0, chat
  SD a0, 672(sp)
  ADDI a0, zero, 47
  SW a0, 336(sp)
  LD a0, 680(sp)
  LW a0, 0(a0)
  SW a0, 280(sp)
  LB a0, 12(sp)
  SB a0, 62(sp)
  LB a0, 16(sp)
  SB a0, 65(sp)
  LB a0, 0(sp)
  SB a0, 6(sp)
  LW a0, 280(sp)
  ADDIW a0, a0, 1
  SW a0, 276(sp)
  LD a0, 664(sp)
  LW s0, 280(sp)
  SH2ADD a0, s0, a0
  SD a0, 1008(sp)
  LD a0, 672(sp)
  LW s0, 276(sp)
  SW s0, 0(a0)
  LW a0, 336(sp)
  LD s0, 1008(sp)
  SW a0, 4(s0)
  JAL zero, bb72
bb100:   # loop depth 2
  LA a0, chat
  SD a0, 736(sp)
  LA a0, chas
  SD a0, 640(sp)
  LA a0, chat
  SD a0, 728(sp)
  LA a0, c
  SD a0, 712(sp)
  LD a0, 736(sp)
  LW a0, 0(a0)
  SW a0, 196(sp)
  LA a0, ii
  SD a0, 704(sp)
  LA a0, get2
  SD a0, 696(sp)
  ADDI a0, zero, 32
  SW a0, 328(sp)
  LA a0, ii
  SD a0, 688(sp)
  LW a0, 196(sp)
  ADDIW a0, a0, -1
  SW a0, 300(sp)
  LD a0, 640(sp)
  LW s0, 196(sp)
  SH2ADD a0, s0, a0
  SD a0, 1024(sp)
  LD a0, 728(sp)
  LW s0, 300(sp)
  SW s0, 0(a0)
  LD a0, 1024(sp)
  LW a0, 0(a0)
  SW a0, 296(sp)
  LD a0, 712(sp)
  LW s0, 296(sp)
  SW s0, 0(a0)
  LD a0, 704(sp)
  LW a0, 0(a0)
  SW a0, 292(sp)
  LD a0, 696(sp)
  LW s0, 292(sp)
  SH2ADD a0, s0, a0
  SD a0, 1016(sp)
  LW a0, 292(sp)
  ADDIW a0, a0, 2
  SW a0, 288(sp)
  LW a0, 328(sp)
  LD s0, 1016(sp)
  SW a0, 0(s0)
  LD a0, 1016(sp)
  LW s0, 296(sp)
  SW s0, 4(a0)
  LD a0, 688(sp)
  LW s0, 288(sp)
  SW s0, 0(a0)
  LW a0, 300(sp)
  BEQ a0, zero, bb103
  # implict jump to bb101
bb101:   # loop depth 2
  ADDI a0, zero, 1
  SW a0, 144(sp)
  # implict jump to bb102
bb102:   # loop depth 2
  LW a0, 144(sp)
  SW a0, 144(sp)
  LW a0, 144(sp)
  BEQ a0, zero, bb99
  JAL zero, bb92
bb103:   # loop depth 2
  ADD a0, zero, zero
  SW a0, 144(sp)
  JAL zero, bb102
bb104:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 56(sp)
  JAL zero, bb98
bb105:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 59(sp)
  JAL zero, bb96
bb106:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 60(sp)
  JAL zero, bb94
bb107:   # loop depth 2
  LA s8, chat
  LA s9, chas
  LW s8, 0(s8)
  SH2ADD s8, s8, s9
  LW a0, 0(s8)
  SW a0, 208(sp)
  LW a0, 208(sp)
  XORI s8, a0, 42
  BEQ s8, zero, bb121
  # implict jump to bb108
bb108:   # loop depth 2
  LW a0, 208(sp)
  XORI s8, a0, 47
  SLTIU s8, s8, 1
  # implict jump to bb109
bb109:   # loop depth 2
  BNE s8, zero, bb120
  # implict jump to bb110
bb110:   # loop depth 2
  LW a0, 208(sp)
  XORI s9, a0, 37
  SLTIU s9, s9, 1
  # implict jump to bb111
bb111:   # loop depth 2
  BNE s9, zero, bb119
  # implict jump to bb112
bb112:   # loop depth 2
  LW a0, 208(sp)
  XORI s10, a0, 94
  SLTIU s10, s10, 1
  # implict jump to bb113
bb113:   # loop depth 2
  BNE s10, zero, bb115
  # implict jump to bb114
bb114:   # loop depth 1
  LA a0, chat
  SD a0, 776(sp)
  LA a0, chas
  SD a0, 760(sp)
  LA a0, chat
  SD a0, 768(sp)
  ADDI a0, zero, 42
  SW a0, 312(sp)
  LD a0, 776(sp)
  LW a0, 0(a0)
  SW a0, 176(sp)
  SB s9, 3(sp)
  LW a0, 176(sp)
  ADDIW s11, a0, 1
  LD a0, 760(sp)
  LW s0, 176(sp)
  SH2ADD a0, s0, a0
  SD a0, 1040(sp)
  LD a0, 768(sp)
  SW s11, 0(a0)
  LW a0, 312(sp)
  LD s0, 1040(sp)
  SW a0, 4(s0)
  JAL zero, bb70
bb115:   # loop depth 2
  LA a0, chat
  SD a0, 1112(sp)
  LA a0, chas
  SD a0, 1096(sp)
  LA a0, chat
  SD a0, 1104(sp)
  LA a0, c
  SD a0, 1088(sp)
  LD a0, 1112(sp)
  LW a0, 0(a0)
  SW a0, 204(sp)
  LA a0, ii
  SD a0, 1080(sp)
  LA a0, get2
  SD a0, 848(sp)
  ADDI a0, zero, 32
  SW a0, 448(sp)
  LA a0, ii
  SD a0, 784(sp)
  LW a0, 204(sp)
  ADDIW a0, a0, -1
  SW a0, 200(sp)
  LD a0, 1096(sp)
  LW s0, 204(sp)
  SH2ADD a0, s0, a0
  SD a0, 1056(sp)
  LD a0, 1104(sp)
  LW s0, 200(sp)
  SW s0, 0(a0)
  LD a0, 1056(sp)
  LW a0, 0(a0)
  SW a0, 156(sp)
  LD a0, 1088(sp)
  LW s0, 156(sp)
  SW s0, 0(a0)
  LD a0, 1080(sp)
  LW a0, 0(a0)
  SW a0, 192(sp)
  LD a0, 848(sp)
  LW s0, 192(sp)
  SH2ADD a0, s0, a0
  SD a0, 1048(sp)
  LW a0, 192(sp)
  ADDIW a0, a0, 2
  SW a0, 184(sp)
  LW a0, 448(sp)
  LD s0, 1048(sp)
  SW a0, 0(s0)
  LD a0, 1048(sp)
  LW s0, 156(sp)
  SW s0, 4(a0)
  LD a0, 784(sp)
  LW s0, 184(sp)
  SW s0, 0(a0)
  LW a0, 200(sp)
  BEQ a0, zero, bb118
  # implict jump to bb116
bb116:   # loop depth 2
  ADDI a0, zero, 1
  SW a0, 180(sp)
  # implict jump to bb117
bb117:   # loop depth 2
  LW a0, 180(sp)
  SW a0, 180(sp)
  LW a0, 180(sp)
  BEQ a0, zero, bb114
  JAL zero, bb107
bb118:   # loop depth 2
  ADD a0, zero, zero
  SW a0, 180(sp)
  JAL zero, bb117
bb119:   # loop depth 2
  ADDI s10, zero, 1
  JAL zero, bb113
bb120:   # loop depth 2
  ADDI s9, zero, 1
  JAL zero, bb111
bb121:   # loop depth 2
  ADDI s8, zero, 1
  JAL zero, bb109
bb122:   # loop depth 2
  LA s3, chat
  LA s7, chas
  LW s3, 0(s3)
  SH2ADD s3, s3, s7
  LW a0, 0(s3)
  SW a0, 164(sp)
  LW a0, 164(sp)
  XORI s3, a0, 43
  BEQ s3, zero, bb142
  # implict jump to bb123
bb123:   # loop depth 2
  LW a0, 164(sp)
  XORI s3, a0, 45
  SLTIU s3, s3, 1
  # implict jump to bb124
bb124:   # loop depth 2
  BNE s3, zero, bb141
  # implict jump to bb125
bb125:   # loop depth 2
  LW a0, 164(sp)
  XORI s7, a0, 42
  SLTIU s7, s7, 1
  # implict jump to bb126
bb126:   # loop depth 2
  BNE s7, zero, bb140
  # implict jump to bb127
bb127:   # loop depth 2
  LW a0, 164(sp)
  XORI s8, a0, 47
  SLTIU s8, s8, 1
  # implict jump to bb128
bb128:   # loop depth 2
  BNE s8, zero, bb139
  # implict jump to bb129
bb129:   # loop depth 2
  LW a0, 164(sp)
  XORI s9, a0, 37
  SLTIU s9, s9, 1
  # implict jump to bb130
bb130:   # loop depth 2
  BNE s9, zero, bb138
  # implict jump to bb131
bb131:   # loop depth 2
  LW a0, 164(sp)
  XORI s10, a0, 94
  SLTIU s10, s10, 1
  # implict jump to bb132
bb132:   # loop depth 2
  BNE s10, zero, bb134
  # implict jump to bb133
bb133:   # loop depth 1
  LA a0, chat
  SD a0, 1136(sp)
  LA a0, chas
  SD a0, 1120(sp)
  LA a0, chat
  SD a0, 1128(sp)
  ADDI a0, zero, 45
  SW a0, 440(sp)
  LD a0, 1136(sp)
  LW a0, 0(a0)
  SW a0, 216(sp)
  SB s3, 1(sp)
  LW a0, 216(sp)
  ADDIW a0, a0, 1
  SW a0, 344(sp)
  LD a0, 1120(sp)
  LW s0, 216(sp)
  SH2ADD a0, s0, a0
  SD a0, 1064(sp)
  LD a0, 1128(sp)
  LW s0, 344(sp)
  SW s0, 0(a0)
  LW a0, 440(sp)
  LD s0, 1064(sp)
  SW a0, 4(s0)
  JAL zero, bb68
bb134:   # loop depth 2
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
  SW a0, 172(sp)
  LA a0, ii
  SD a0, 1160(sp)
  LA a0, get2
  SD a0, 1152(sp)
  ADDI a0, zero, 32
  SW a0, 348(sp)
  LA a0, ii
  SD a0, 808(sp)
  LW a0, 172(sp)
  ADDIW a0, a0, -1
  SW a0, 188(sp)
  LD a0, 1176(sp)
  LW s0, 172(sp)
  SH2ADD a0, s0, a0
  SD a0, 472(sp)
  LD a0, 1184(sp)
  LW s0, 188(sp)
  SW s0, 0(a0)
  LD a0, 472(sp)
  LW a0, 0(a0)
  SW a0, 212(sp)
  LD a0, 1168(sp)
  LW s0, 212(sp)
  SW s0, 0(a0)
  LD a0, 1160(sp)
  LW a0, 0(a0)
  SW a0, 228(sp)
  LD a0, 1152(sp)
  LW s0, 228(sp)
  SH2ADD a0, s0, a0
  SD a0, 1144(sp)
  LW a0, 228(sp)
  ADDIW a0, a0, 2
  SW a0, 224(sp)
  LW a0, 348(sp)
  LD s0, 1144(sp)
  SW a0, 0(s0)
  LD a0, 1144(sp)
  LW s0, 212(sp)
  SW s0, 4(a0)
  LD a0, 808(sp)
  LW s0, 224(sp)
  SW s0, 0(a0)
  LW a0, 188(sp)
  BEQ a0, zero, bb137
  # implict jump to bb135
bb135:   # loop depth 2
  ADDI a0, zero, 1
  SW a0, 220(sp)
  # implict jump to bb136
bb136:   # loop depth 2
  LW a0, 220(sp)
  SW a0, 220(sp)
  LW a0, 220(sp)
  BEQ a0, zero, bb133
  JAL zero, bb122
bb137:   # loop depth 2
  ADD a0, zero, zero
  SW a0, 220(sp)
  JAL zero, bb136
bb138:   # loop depth 2
  ADDI s10, zero, 1
  JAL zero, bb132
bb139:   # loop depth 2
  ADDI s9, zero, 1
  JAL zero, bb130
bb140:   # loop depth 2
  ADDI s8, zero, 1
  JAL zero, bb128
bb141:   # loop depth 2
  ADDI s7, zero, 1
  JAL zero, bb126
bb142:   # loop depth 2
  ADDI s3, zero, 1
  JAL zero, bb124
bb143:   # loop depth 2
  LA a0, chat
  LA s0, chas
  LW a0, 0(a0)
  SH2ADD a0, a0, s0
  LW s4, 0(a0)
  XORI a0, s4, 43
  BEQ a0, zero, bb163
  # implict jump to bb144
bb144:   # loop depth 2
  XORI a0, s4, 45
  SLTIU s10, a0, 1
  # implict jump to bb145
bb145:   # loop depth 2
  BNE s10, zero, bb162
  # implict jump to bb146
bb146:   # loop depth 2
  XORI s0, s4, 42
  SLTIU a0, s0, 1
  SB a0, 4(sp)
  LB a0, 4(sp)
  SB a0, 4(sp)
  # implict jump to bb147
bb147:   # loop depth 2
  LB a0, 4(sp)
  SB a0, 4(sp)
  LB a0, 4(sp)
  BNE a0, zero, bb161
  # implict jump to bb148
bb148:   # loop depth 2
  XORI s1, s4, 47
  SLTIU s1, s1, 1
  # implict jump to bb149
bb149:   # loop depth 2
  BNE s1, zero, bb160
  # implict jump to bb150
bb150:   # loop depth 2
  XORI s2, s4, 37
  SLTIU a0, s2, 1
  SB a0, 22(sp)
  LB a0, 22(sp)
  SB a0, 22(sp)
  # implict jump to bb151
bb151:   # loop depth 2
  LB a0, 22(sp)
  SB a0, 22(sp)
  LB a0, 22(sp)
  BNE a0, zero, bb159
  # implict jump to bb152
bb152:   # loop depth 2
  XORI s4, s4, 94
  SLTIU s11, s4, 1
  # implict jump to bb153
bb153:   # loop depth 2
  BNE s11, zero, bb155
  # implict jump to bb154
bb154:   # loop depth 1
  LA s7, chat
  LA s3, chas
  SD s3, 1200(sp)
  LA a0, chat
  SD a0, 568(sp)
  ADDI s3, zero, 43
  SW s3, 428(sp)
  LW a0, 0(s7)
  SW a0, 304(sp)
  LB a0, 22(sp)
  SB a0, 22(sp)
  LB a0, 4(sp)
  SB a0, 4(sp)
  LW a0, 304(sp)
  ADDIW a0, a0, 1
  SW a0, 316(sp)
  LD s2, 1200(sp)
  LW a0, 304(sp)
  SH2ADD s2, a0, s2
  LW a0, 316(sp)
  LD s0, 568(sp)
  SW a0, 0(s0)
  LW s3, 428(sp)
  SW s3, 4(s2)
  JAL zero, bb66
bb155:   # loop depth 2
  LA s7, chat
  LA s3, chas
  SD s3, 928(sp)
  LA s3, chat
  SD s3, 936(sp)
  LA a0, c
  SD a0, 560(sp)
  LW s7, 0(s7)
  LA s3, ii
  SD s3, 1000(sp)
  LA s3, get2
  SD s3, 1208(sp)
  ADDI s3, zero, 32
  SW s3, 320(sp)
  LA s3, ii
  SD s3, 816(sp)
  ADDIW a0, s7, -1
  SW a0, 360(sp)
  LD s3, 928(sp)
  SH2ADD s7, s7, s3
  LD s3, 936(sp)
  LW a0, 360(sp)
  SW a0, 0(s3)
  LW s7, 0(s7)
  LD a0, 560(sp)
  SW s7, 0(a0)
  LD s3, 1000(sp)
  LW a0, 0(s3)
  SW a0, 356(sp)
  LD s3, 1208(sp)
  LW a0, 356(sp)
  SH2ADD s3, a0, s3
  SD s3, 608(sp)
  LW a0, 356(sp)
  ADDIW a0, a0, 2
  SW a0, 352(sp)
  LW s3, 320(sp)
  LD s5, 608(sp)
  SW s3, 0(s5)
  LD s3, 608(sp)
  SW s7, 4(s3)
  LD s3, 816(sp)
  LW a0, 352(sp)
  SW a0, 0(s3)
  LW a0, 360(sp)
  BEQ a0, zero, bb158
  # implict jump to bb156
bb156:   # loop depth 2
  ADDI s7, zero, 1
  # implict jump to bb157
bb157:   # loop depth 2
  BEQ s7, zero, bb154
  JAL zero, bb143
bb158:   # loop depth 2
  ADD s7, zero, zero
  JAL zero, bb157
bb159:   # loop depth 2
  ADDI s11, zero, 1
  JAL zero, bb153
bb160:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 22(sp)
  JAL zero, bb151
bb161:   # loop depth 2
  ADDI s1, zero, 1
  JAL zero, bb149
bb162:   # loop depth 2
  ADDI a0, zero, 1
  SB a0, 4(sp)
  JAL zero, bb147
bb163:   # loop depth 2
  ADDI s10, zero, 1
  JAL zero, bb145
bb164:   # loop depth 1
  LA s7, chat
  LA s11, chas
  LA s9, chat
  LA s3, c
  SD s3, 968(sp)
  LW s8, 0(s7)
  ADDIW a0, s8, -1
  SW a0, 332(sp)
  SH2ADD s8, s8, s11
  LW a0, 332(sp)
  SW a0, 0(s9)
  LW s8, 0(s8)
  XORI s9, s8, 40
  LD s3, 968(sp)
  SW s8, 0(s3)
  BNE s9, zero, bb165
  JAL zero, bb64
bb165:   # loop depth 1
  LA s9, ii
  LW a0, 332(sp)
  SW a0, 332(sp)
  LW a0, 0(s9)
  SW a0, 324(sp)
  LW a0, 324(sp)
  SW a0, 324(sp)
  # implict jump to bb166
bb166:   # loop depth 2
  LA s9, get2
  LW a0, 324(sp)
  SW a0, 324(sp)
  LA s3, c
  SD s3, 960(sp)
  ADDI s7, zero, 32
  LW a0, 324(sp)
  SH2ADD a0, a0, s9
  SD a0, 576(sp)
  LA s3, chas
  SD s3, 952(sp)
  LD a0, 576(sp)
  SW s7, 0(a0)
  LW a0, 332(sp)
  SW a0, 332(sp)
  LD s3, 960(sp)
  LW s9, 0(s3)
  LD s3, 952(sp)
  LW a0, 332(sp)
  SH2ADD s3, a0, s3
  SD s3, 624(sp)
  LA s3, c
  SD s3, 944(sp)
  LW a0, 332(sp)
  ADDIW a0, a0, -1
  SW a0, 332(sp)
  LW a0, 324(sp)
  ADDIW a0, a0, 2
  SW a0, 324(sp)
  LD a0, 576(sp)
  SW s9, 4(a0)
  LD s3, 624(sp)
  LW s9, 0(s3)
  XORI s11, s9, 40
  LD s3, 944(sp)
  SW s9, 0(s3)
  BNE s11, zero, bb168
  # implict jump to bb167
bb167:   # loop depth 1
  LA s9, chat
  LA s11, ii
  LW a0, 332(sp)
  SW a0, 0(s9)
  LW a0, 324(sp)
  SW a0, 0(s11)
  JAL zero, bb64
bb168:   # loop depth 2
  LW a0, 324(sp)
  SW a0, 324(sp)
  LW a0, 332(sp)
  SW a0, 332(sp)
  JAL zero, bb166
bb169:   # loop depth 1
  LA s7, chat
  LA s9, chas
  LA a0, chat
  SD a0, 592(sp)
  ADDI s3, zero, 94
  SW s3, 416(sp)
  LW s7, 0(s7)
  ADDIW s8, s7, 1
  SH2ADD s7, s7, s9
  LD a0, 592(sp)
  SW s8, 0(a0)
  LW s3, 416(sp)
  SW s3, 4(s7)
  JAL zero, bb63
bb170:   # loop depth 1
  LA s7, chat
  LA s9, chas
  LA a0, chat
  SD a0, 584(sp)
  ADDI s3, zero, 40
  SW s3, 412(sp)
  LW s7, 0(s7)
  ADDIW s8, s7, 1
  SH2ADD s7, s7, s9
  LD a0, 584(sp)
  SW s8, 0(a0)
  LW s3, 412(sp)
  SW s3, 4(s7)
  JAL zero, bb62
bb171:   # loop depth 1
  LA s7, ii
  LA s8, get2
  LA s3, ii
  SD s3, 840(sp)
  LB a0, 22(sp)
  SB a0, 22(sp)
  LB a0, 22(sp)
  SB a0, 96(sp)
  LW s7, 0(s7)
  LB a0, 4(sp)
  SB a0, 4(sp)
  LB a0, 4(sp)
  SB a0, 97(sp)
  LB a0, 29(sp)
  SB a0, 98(sp)
  LB a0, 30(sp)
  SB a0, 99(sp)
  LB a0, 50(sp)
  SB a0, 100(sp)
  LB a0, 31(sp)
  SB a0, 75(sp)
  SH2ADD a0, s7, s8
  ADDIW s0, s7, 1
  SW s0, 384(sp)
  LW s0, 388(sp)
  SW s0, 0(a0)
  LB a0, 32(sp)
  SB a0, 28(sp)
  LB a0, 82(sp)
  SB a0, 108(sp)
  LB a0, 117(sp)
  SB a0, 78(sp)
  LB a0, 116(sp)
  SB a0, 77(sp)
  LB a0, 115(sp)
  SB a0, 95(sp)
  LB a0, 11(sp)
  SB a0, 11(sp)
  LB s7, 114(sp)
  LB s3, 113(sp)
  LB s2, 112(sp)
  LB s1, 111(sp)
  LB a0, 101(sp)
  SB a0, 14(sp)
  LB a0, 14(sp)
  SB a0, 14(sp)
  LB a0, 109(sp)
  LD s4, 840(sp)
  LW s5, 384(sp)
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
