.global chapop
.global chapush
.global intpush
.global power
.global intadd
.global main
.global find
.global intpop
.global getstr
.global isdigit
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
chapop:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  LA s0, chat
  LW s0, 0(s0)
  ADDI s1, zero, 1
  SUBW s1, s0, s1
  LA s2, chat
  SW s1, 0(s2)
  SLLIW s0, s0, 2
  LA s1, chas
  ADD s0, s1, s0
  LW s0, 0(s0)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
chapush:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  LA s0, chat
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s1, chat
  SW s0, 0(s1)
  SLLIW s0, s0, 2
  LA s1, chas
  ADD s0, s1, s0
  SW a0, 0(s0)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
intpush:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  LA s0, intt
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s1, intt
  SW s0, 0(s1)
  SLLIW s0, s0, 2
  LA s1, ints
  ADD s0, s1, s0
  SW a0, 0(s0)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
power:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  ADD s2, a0, zero
  BNE a1, zero, bb6
  # implict jump to bb4
bb4:
  ADDI s3, zero, 1
  # implict jump to bb5
bb5:
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb6:
  ADD s4, a1, zero
  ADDI s5, zero, 1
  # implict jump to bb7
bb7:
  ADD s6, s5, zero
  ADD s7, s4, zero
  MULW s1, s6, s2
  ADDI s6, zero, 1
  SUBW s0, s7, s6
  # implict jump to bb8
bb8:
  BNE s0, zero, bb10
  # implict jump to bb9
bb9:
  ADD s3, s1, zero
  JAL zero, bb5
bb10:
  ADD s4, s0, zero
  ADD s5, s1, zero
  JAL zero, bb7
intadd:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  LA s0, intt
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s1, ints
  ADD s0, s1, s0
  LW s1, 0(s0)
  ADDI s2, zero, 10
  MULW s1, s1, s2
  SW s1, 0(s0)
  LW s1, 0(s0)
  ADDW s1, s1, a0
  SW s1, 0(s0)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -272
  SD ra, 152(sp)
  SD s0, 160(sp)
  SD s1, 168(sp)
  SD s2, 176(sp)
  SD s3, 184(sp)
  SD s4, 192(sp)
  SD s5, 200(sp)
  SD s6, 208(sp)
  SD s7, 216(sp)
  SD s8, 224(sp)
  SD s9, 232(sp)
  SD s10, 240(sp)
  SD s11, 248(sp)
  LA a5, intt
  SW zero, 0(a5)
  LA a5, chat
  SW zero, 0(a5)
  CALL getch
  ADD s9, a0, zero
  ADD t4, zero, zero
  SW t4, 132(sp)
  ADD t4, s9, zero
  SW t4, 128(sp)
  # implict jump to bb13
bb13:
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  LW t4, 124(sp)
  XORI s9, t4, 13
  BNE s9, zero, bb192
  # implict jump to bb14
bb14:
  ADD s9, zero, zero
  # implict jump to bb15
bb15:
  BNE s9, zero, bb191
  # implict jump to bb16
bb16:
  LA s0, i
  LW s0, 0(s0)
  LW t4, 140(sp)
  BLT s0, t4, bb73
  # implict jump to bb17
bb17:
  LA s1, chat
  LW s1, 0(s1)
  BLT zero, s1, bb72
  # implict jump to bb18
bb18:
  LA s1, ii
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  LA s2, get2
  ADD s1, s2, s1
  ADDI s2, zero, 64
  SW s2, 0(s1)
  LA s1, i
  ADDI s2, zero, 1
  SW s2, 0(s1)
  LA s1, i
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  LA s2, get2
  ADD s1, s2, s1
  LW s1, 0(s1)
  XORI s1, s1, 64
  BNE s1, zero, bb20
  # implict jump to bb19
bb19:
  LA s4, ints
  LW s4, 4(s4)
  ADD a0, s4, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 152(sp)
  LD s0, 160(sp)
  LD s1, 168(sp)
  LD s2, 176(sp)
  LD s3, 184(sp)
  LD s4, 192(sp)
  LD s5, 200(sp)
  LD s6, 208(sp)
  LD s7, 216(sp)
  LD s8, 224(sp)
  LD s9, 232(sp)
  LD s10, 240(sp)
  LD s11, 248(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb20:
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  # implict jump to bb21
bb21:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s6, s1, zero
  LA s7, i
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  LA s8, get2
  ADD s7, s8, s7
  LW s7, 0(s7)
  XORI s7, s7, 43
  SLTIU s7, s7, 1
  BNE s7, zero, bb71
  # implict jump to bb22
bb22:
  LA s7, i
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  LA s8, get2
  ADD s7, s8, s7
  LW s7, 0(s7)
  XORI s7, s7, 45
  SLTIU s7, s7, 1
  # implict jump to bb23
bb23:
  BNE s7, zero, bb70
  # implict jump to bb24
bb24:
  LA s7, i
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  LA s8, get2
  ADD s7, s8, s7
  LW s7, 0(s7)
  XORI s7, s7, 42
  SLTIU s7, s7, 1
  # implict jump to bb25
bb25:
  BNE s7, zero, bb69
  # implict jump to bb26
bb26:
  LA s7, i
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  LA s8, get2
  ADD s7, s8, s7
  LW s7, 0(s7)
  XORI s7, s7, 47
  SLTIU s7, s7, 1
  # implict jump to bb27
bb27:
  BNE s7, zero, bb68
  # implict jump to bb28
bb28:
  LA s7, i
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  LA s8, get2
  ADD s7, s8, s7
  LW s7, 0(s7)
  XORI s7, s7, 37
  SLTIU s7, s7, 1
  # implict jump to bb29
bb29:
  BNE s7, zero, bb67
  # implict jump to bb30
bb30:
  LA s7, i
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  LA s8, get2
  ADD s7, s8, s7
  LW s7, 0(s7)
  XORI s7, s7, 94
  SLTIU s7, s7, 1
  # implict jump to bb31
bb31:
  BNE s7, zero, bb41
  # implict jump to bb32
bb32:
  LA s7, i
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  LA s8, get2
  ADD s7, s8, s7
  LW s7, 0(s7)
  XORI s7, s7, 32
  BNE s7, zero, bb37
  # implict jump to bb33
bb33:
  ADD s7, s6, zero
  # implict jump to bb34
bb34:
  ADD t4, s7, zero
  SW t4, 104(sp)
  ADD t4, s5, zero
  SW t4, 108(sp)
  ADD t4, s4, zero
  SW t4, 112(sp)
  LA s4, i
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, i
  SW s4, 0(s5)
  # implict jump to bb35
bb35:
  LA s4, i
  LW s4, 0(s4)
  SLLIW s4, s4, 2
  LA s5, get2
  ADD s4, s5, s4
  LW s4, 0(s4)
  XORI s4, s4, 64
  BNE s4, zero, bb36
  JAL zero, bb19
bb36:
  LW t4, 104(sp)
  ADD s1, t4, zero
  LW t4, 108(sp)
  ADD s2, t4, zero
  LW t4, 112(sp)
  ADD s3, t4, zero
  JAL zero, bb21
bb37:
  LA s7, i
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  LA s8, get2
  ADD s7, s8, s7
  LW s7, 0(s7)
  ADDI s8, zero, 48
  SUBW s7, s7, s8
  LA s8, intt
  LW s8, 0(s8)
  ADDIW s8, s8, 1
  LA s9, intt
  SW s8, 0(s9)
  SLLIW s8, s8, 2
  LA s9, ints
  ADD s8, s9, s8
  SW s7, 0(s8)
  LA s7, ii
  ADDI s9, zero, 1
  SW s9, 0(s7)
  LA s7, i
  LW s7, 0(s7)
  LA s9, ii
  LW s9, 0(s9)
  ADDW s7, s7, s9
  SLLIW s7, s7, 2
  LA s9, get2
  ADD s7, s9, s7
  LW s7, 0(s7)
  XORI s7, s7, 32
  BNE s7, zero, bb39
  # implict jump to bb38
bb38:
  LA s7, i
  LW s7, 0(s7)
  LA s8, ii
  LW s8, 0(s8)
  ADDW s7, s7, s8
  ADDI s8, zero, 1
  SUBW s7, s7, s8
  LA s8, i
  SW s7, 0(s8)
  JAL zero, bb33
bb39:
  LA s7, i
  LW s7, 0(s7)
  LA s9, ii
  LW s9, 0(s9)
  ADDW s7, s7, s9
  SLLIW s7, s7, 2
  LA s9, get2
  ADD s7, s9, s7
  LW s7, 0(s7)
  ADDI s9, zero, 48
  SUBW s7, s7, s9
  LW s9, 0(s8)
  ADDI s10, zero, 10
  MULW s9, s9, s10
  SW s9, 0(s8)
  LW s9, 0(s8)
  ADDW s7, s9, s7
  SW s7, 0(s8)
  LA s7, ii
  LW s7, 0(s7)
  ADDIW s7, s7, 1
  LA s9, ii
  SW s7, 0(s9)
  # implict jump to bb40
bb40:
  LA s7, i
  LW s7, 0(s7)
  LA s9, ii
  LW s9, 0(s9)
  ADDW s7, s7, s9
  SLLIW s7, s7, 2
  LA s9, get2
  ADD s7, s9, s7
  LW s7, 0(s7)
  XORI s7, s7, 32
  BNE s7, zero, bb39
  JAL zero, bb38
bb41:
  LA s8, intt
  LW s8, 0(s8)
  ADDI s9, zero, 1
  SUBW s9, s8, s9
  LA s10, intt
  SW s9, 0(s10)
  SLLIW s8, s8, 2
  LA s10, ints
  ADD s8, s10, s8
  LW t4, 0(s8)
  SW t4, 144(sp)
  ADDI s10, zero, 1
  SUBW s10, s9, s10
  LA s11, intt
  SW s10, 0(s11)
  SLLIW s9, s9, 2
  LA s10, ints
  ADD s9, s10, s9
  LW t4, 0(s9)
  SW t4, 100(sp)
  LA s10, i
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, get2
  ADD s10, s11, s10
  LW s10, 0(s10)
  XORI s10, s10, 43
  SLTIU s10, s10, 1
  BNE s10, zero, bb66
  # implict jump to bb42
bb42:
  # implict jump to bb43
bb43:
  LA s10, i
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, get2
  ADD s10, s11, s10
  LW s10, 0(s10)
  XORI s10, s10, 45
  SLTIU s10, s10, 1
  BNE s10, zero, bb65
  # implict jump to bb44
bb44:
  # implict jump to bb45
bb45:
  LA s10, i
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, get2
  ADD s10, s11, s10
  LW s10, 0(s10)
  XORI s10, s10, 42
  SLTIU s10, s10, 1
  BNE s10, zero, bb64
  # implict jump to bb46
bb46:
  # implict jump to bb47
bb47:
  LA s10, i
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, get2
  ADD s10, s11, s10
  LW s10, 0(s10)
  XORI s10, s10, 47
  SLTIU s10, s10, 1
  BNE s10, zero, bb63
  # implict jump to bb48
bb48:
  # implict jump to bb49
bb49:
  LA s10, i
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, get2
  ADD s10, s11, s10
  LW s10, 0(s10)
  XORI s10, s10, 37
  SLTIU s10, s10, 1
  BNE s10, zero, bb62
  # implict jump to bb50
bb50:
  # implict jump to bb51
bb51:
  LA s10, i
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, get2
  ADD s10, s11, s10
  LW s10, 0(s10)
  XORI s10, s10, 94
  SLTIU s10, s10, 1
  BNE s10, zero, bb54
  # implict jump to bb52
bb52:
  # implict jump to bb53
bb53:
  LA s8, intt
  LW s8, 0(s8)
  ADDIW s8, s8, 1
  LA s9, intt
  SW s8, 0(s9)
  SLLIW s8, s8, 2
  LA s9, ints
  ADD s8, s9, s8
  SW s6, 0(s8)
  LW t4, 144(sp)
  ADD s4, t4, zero
  LW t4, 100(sp)
  ADD s5, t4, zero
  ADD s7, s6, zero
  JAL zero, bb34
bb54:
  LW t4, 144(sp)
  BNE t4, zero, bb57
  # implict jump to bb55
bb55:
  ADDI s10, zero, 1
  # implict jump to bb56
bb56:
  ADD s6, s10, zero
  JAL zero, bb53
bb57:
  LW t4, 144(sp)
  ADD s11, t4, zero
  ADDI s0, zero, 1
  # implict jump to bb58
bb58:
  ADD s9, s0, zero
  ADD s8, s11, zero
  LW t3, 100(sp)
  MULW t4, s9, t3
  SW t4, 136(sp)
  ADDI s9, zero, 1
  SUBW t4, s8, s9
  SW t4, 120(sp)
  # implict jump to bb59
bb59:
  LW t4, 120(sp)
  BNE t4, zero, bb61
  # implict jump to bb60
bb60:
  LW t4, 136(sp)
  ADD s10, t4, zero
  JAL zero, bb56
bb61:
  LW t4, 120(sp)
  ADD s11, t4, zero
  LW t4, 136(sp)
  ADD s0, t4, zero
  JAL zero, bb58
bb62:
  LW t4, 100(sp)
  LW t3, 144(sp)
  REMW s10, t4, t3
  ADD s6, s10, zero
  JAL zero, bb51
bb63:
  LW t4, 100(sp)
  LW t3, 144(sp)
  DIVW s10, t4, t3
  ADD s6, s10, zero
  JAL zero, bb49
bb64:
  LW t4, 144(sp)
  LW t3, 100(sp)
  MULW s10, t4, t3
  ADD s6, s10, zero
  JAL zero, bb47
bb65:
  LW t4, 100(sp)
  LW t3, 144(sp)
  SUBW s10, t4, t3
  ADD s6, s10, zero
  JAL zero, bb45
bb66:
  LW t4, 144(sp)
  LW t3, 100(sp)
  ADDW s10, t4, t3
  ADD s6, s10, zero
  JAL zero, bb43
bb67:
  ADDI s7, zero, 1
  JAL zero, bb31
bb68:
  ADDI s7, zero, 1
  JAL zero, bb29
bb69:
  ADDI s7, zero, 1
  JAL zero, bb27
bb70:
  ADDI s7, zero, 1
  JAL zero, bb25
bb71:
  ADDI s7, zero, 1
  JAL zero, bb23
bb72:
  LA s0, chat
  LW s0, 0(s0)
  ADDI s1, zero, 1
  SUBW s1, s0, s1
  LA s2, chat
  SW s1, 0(s2)
  SLLIW s0, s0, 2
  LA s1, chas
  ADD s0, s1, s0
  LW s0, 0(s0)
  LA s1, ii
  LW s1, 0(s1)
  SLLIW s2, s1, 2
  LA s3, get2
  ADD s2, s3, s2
  ADDI s3, zero, 32
  SW s3, 0(s2)
  ADDIW s2, s1, 1
  SLLIW s2, s2, 2
  LA s3, get2
  ADD s2, s3, s2
  SW s0, 0(s2)
  ADDIW s0, s1, 2
  LA s1, ii
  SW s0, 0(s1)
  JAL zero, bb17
bb73:
  ADD t4, s0, zero
  SW t4, 116(sp)
  ADD t4, zero, zero
  SB t4, 14(sp)
  ADD t4, zero, zero
  SB t4, 80(sp)
  ADD t4, zero, zero
  SB t4, 79(sp)
  ADD t4, zero, zero
  SB t4, 78(sp)
  ADD t4, zero, zero
  SB t4, 77(sp)
  ADD t4, zero, zero
  SB t4, 76(sp)
  ADD t4, zero, zero
  SB t4, 75(sp)
  ADD t4, zero, zero
  SB t4, 74(sp)
  ADD t4, zero, zero
  SB t4, 37(sp)
  ADD t4, zero, zero
  SB t4, 24(sp)
  ADD t4, zero, zero
  SB t4, 23(sp)
  ADD t4, zero, zero
  SB t4, 22(sp)
  ADD t4, zero, zero
  SB t4, 21(sp)
  ADD t4, zero, zero
  SB t4, 20(sp)
  ADD t4, zero, zero
  SB t4, 19(sp)
  ADD t4, zero, zero
  SB t4, 18(sp)
  ADD t4, zero, zero
  SB t4, 17(sp)
  ADD t4, zero, zero
  SB t4, 16(sp)
  ADD t4, zero, zero
  SB t4, 15(sp)
  # implict jump to bb74
bb74:
  LB t3, 15(sp)
  ADD t4, t3, zero
  SB t4, 40(sp)
  LB t3, 16(sp)
  ADD t4, t3, zero
  SB t4, 41(sp)
  LB t3, 17(sp)
  ADD t4, t3, zero
  SB t4, 42(sp)
  LB t3, 18(sp)
  ADD t4, t3, zero
  SB t4, 43(sp)
  LB t3, 19(sp)
  ADD t4, t3, zero
  SB t4, 44(sp)
  LB t3, 20(sp)
  ADD t4, t3, zero
  SB t4, 9(sp)
  LB t3, 21(sp)
  ADD t4, t3, zero
  SB t4, 8(sp)
  LB t3, 22(sp)
  ADD t4, t3, zero
  SB t4, 7(sp)
  LB t3, 23(sp)
  ADD t4, t3, zero
  SB t4, 6(sp)
  LB t3, 24(sp)
  ADD t4, t3, zero
  SB t4, 5(sp)
  LB t3, 37(sp)
  ADD t4, t3, zero
  SB t4, 4(sp)
  LB t3, 74(sp)
  ADD t4, t3, zero
  SB t4, 3(sp)
  LB t3, 75(sp)
  ADD t4, t3, zero
  SB t4, 2(sp)
  LB t3, 76(sp)
  ADD t4, t3, zero
  SB t4, 1(sp)
  LB t3, 77(sp)
  ADD t4, t3, zero
  SB t4, 13(sp)
  LB t3, 78(sp)
  ADD t4, t3, zero
  SB t4, 48(sp)
  LB t3, 79(sp)
  ADD t4, t3, zero
  SB t4, 47(sp)
  LB t3, 80(sp)
  ADD t4, t3, zero
  SB t4, 46(sp)
  LB t3, 14(sp)
  ADD t4, t3, zero
  SB t4, 45(sp)
  LW t4, 116(sp)
  ADD s1, t4, zero
  SLLIW s1, s1, 2
  LA s2, get
  ADD t4, s2, s1
  SD t4, 256(sp)
  LD t4, 256(sp)
  LW s2, 0(t4)
  SLTI s3, s2, 48
  XORI s3, s3, 1
  BNE s3, zero, bb190
  # implict jump to bb75
bb75:
  ADD s3, zero, zero
  # implict jump to bb76
bb76:
  BNE s3, zero, bb189
  # implict jump to bb77
bb77:
  ADD s0, zero, zero
  # implict jump to bb78
bb78:
  XORI s0, s0, 1
  SLTIU s0, s0, 1
  BNE s0, zero, bb188
  # implict jump to bb79
bb79:
  LD t4, 256(sp)
  LW s0, 0(t4)
  XORI s0, s0, 40
  SLTIU s0, s0, 1
  BNE s0, zero, bb187
  # implict jump to bb80
bb80:
  LD t4, 256(sp)
  LW s0, 0(t4)
  XORI s0, s0, 94
  SLTIU s0, s0, 1
  BNE s0, zero, bb186
  # implict jump to bb81
bb81:
  LD t4, 256(sp)
  LW s0, 0(t4)
  XORI s0, s0, 41
  SLTIU s0, s0, 1
  BNE s0, zero, bb183
  # implict jump to bb82
bb82:
  LD t4, 256(sp)
  LW s0, 0(t4)
  XORI s0, s0, 43
  SLTIU s0, s0, 1
  BNE s0, zero, bb162
  # implict jump to bb83
bb83:
  LB t3, 9(sp)
  ADD t4, t3, zero
  SB t4, 35(sp)
  LB t3, 3(sp)
  ADD t4, t3, zero
  SB t4, 34(sp)
  LB t4, 48(sp)
  ADD s3, t4, zero
  LB t4, 46(sp)
  ADD s9, t4, zero
  LB t4, 45(sp)
  ADD s1, t4, zero
  # implict jump to bb84
bb84:
  ADD t4, s1, zero
  SB t4, 33(sp)
  ADD t4, s9, zero
  SB t4, 32(sp)
  ADD t4, s3, zero
  SB t4, 31(sp)
  LB t3, 34(sp)
  ADD t4, t3, zero
  SB t4, 26(sp)
  LB t4, 35(sp)
  ADD s2, t4, zero
  LD t4, 256(sp)
  LW s4, 0(t4)
  XORI s4, s4, 45
  SLTIU s4, s4, 1
  BNE s4, zero, bb141
  # implict jump to bb85
bb85:
  LB t4, 4(sp)
  ADD s4, t4, zero
  LB t4, 2(sp)
  ADD s5, t4, zero
  LB t4, 1(sp)
  ADD s6, t4, zero
  LB t4, 13(sp)
  ADD s7, t4, zero
  LB t4, 47(sp)
  ADD s8, t4, zero
  # implict jump to bb86
bb86:
  ADD t4, s8, zero
  SB t4, 30(sp)
  ADD t4, s7, zero
  SB t4, 29(sp)
  ADD t4, s6, zero
  SB t4, 28(sp)
  ADD t4, s5, zero
  SB t4, 27(sp)
  ADD t4, s4, zero
  SB t4, 39(sp)
  LD t4, 256(sp)
  LW s1, 0(t4)
  XORI s1, s1, 42
  SLTIU s1, s1, 1
  BNE s1, zero, bb126
  # implict jump to bb87
bb87:
  LB t4, 7(sp)
  ADD s1, t4, zero
  LB t4, 6(sp)
  ADD s3, t4, zero
  LB t4, 5(sp)
  ADD s9, t4, zero
  # implict jump to bb88
bb88:
  ADD t4, s9, zero
  SB t4, 10(sp)
  ADD t4, s3, zero
  SB t4, 11(sp)
  ADD t4, s1, zero
  SB t4, 12(sp)
  LD t4, 256(sp)
  LW s6, 0(t4)
  XORI s6, s6, 47
  SLTIU s6, s6, 1
  BNE s6, zero, bb111
  # implict jump to bb89
bb89:
  LB t4, 40(sp)
  ADD s6, t4, zero
  LB t4, 43(sp)
  ADD s7, t4, zero
  LB t4, 8(sp)
  ADD s8, t4, zero
  # implict jump to bb90
bb90:
  LD t4, 256(sp)
  LW s0, 0(t4)
  XORI s0, s0, 37
  SLTIU s0, s0, 1
  BNE s0, zero, bb96
  # implict jump to bb91
bb91:
  LB t4, 41(sp)
  ADD s0, t4, zero
  LB t4, 42(sp)
  ADD s4, t4, zero
  LB t4, 44(sp)
  ADD s5, t4, zero
  # implict jump to bb92
bb92:
  LA s1, ii
  LW s1, 0(s1)
  SLLIW s3, s1, 2
  LA s9, get2
  ADD s3, s9, s3
  ADDI s9, zero, 32
  SW s9, 0(s3)
  ADDIW s1, s1, 1
  LA s3, ii
  SW s1, 0(s3)
  ADD t4, s6, zero
  SB t4, 0(sp)
  ADD t4, s0, zero
  SB t4, 81(sp)
  ADD t4, s4, zero
  SB t4, 82(sp)
  ADD t4, s7, zero
  SB t4, 83(sp)
  ADD t4, s5, zero
  SB t4, 84(sp)
  ADD t4, s2, zero
  SB t4, 73(sp)
  ADD t4, s8, zero
  SB t4, 69(sp)
  LB t3, 12(sp)
  ADD t4, t3, zero
  SB t4, 70(sp)
  LB t3, 11(sp)
  ADD t4, t3, zero
  SB t4, 71(sp)
  LB t3, 10(sp)
  ADD t4, t3, zero
  SB t4, 72(sp)
  LB t4, 39(sp)
  ADD s10, t4, zero
  LB t4, 26(sp)
  ADD s11, t4, zero
  LB t4, 27(sp)
  ADD s1, t4, zero
  LB t4, 28(sp)
  ADD s0, t4, zero
  LB t4, 29(sp)
  ADD s3, t4, zero
  LB t4, 31(sp)
  ADD s4, t4, zero
  LB t4, 30(sp)
  ADD s5, t4, zero
  LB t4, 32(sp)
  ADD s2, t4, zero
  LB t4, 33(sp)
  ADD s6, t4, zero
  # implict jump to bb93
bb93:
  ADD t4, s6, zero
  SB t4, 50(sp)
  ADD t4, s2, zero
  SB t4, 51(sp)
  ADD t4, s5, zero
  SB t4, 52(sp)
  ADD t4, s4, zero
  SB t4, 53(sp)
  ADD t4, s3, zero
  SB t4, 54(sp)
  ADD t4, s0, zero
  SB t4, 55(sp)
  ADD t4, s1, zero
  SB t4, 56(sp)
  ADD t4, s11, zero
  SB t4, 57(sp)
  ADD t4, s10, zero
  SB t4, 59(sp)
  LB t3, 72(sp)
  ADD t4, t3, zero
  SB t4, 60(sp)
  LB t3, 71(sp)
  ADD t4, t3, zero
  SB t4, 49(sp)
  LB t3, 70(sp)
  ADD t4, t3, zero
  SB t4, 62(sp)
  LB t3, 69(sp)
  ADD t4, t3, zero
  SB t4, 63(sp)
  LB t3, 73(sp)
  ADD t4, t3, zero
  SB t4, 64(sp)
  LB t3, 84(sp)
  ADD t4, t3, zero
  SB t4, 65(sp)
  LB t3, 83(sp)
  ADD t4, t3, zero
  SB t4, 66(sp)
  LB t3, 82(sp)
  ADD t4, t3, zero
  SB t4, 67(sp)
  LB t3, 81(sp)
  ADD t4, t3, zero
  SB t4, 58(sp)
  LB t3, 0(sp)
  ADD t4, t3, zero
  SB t4, 68(sp)
  LA s0, i
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s1, i
  SW s0, 0(s1)
  # implict jump to bb94
bb94:
  LA s0, i
  LW t4, 0(s0)
  SW t4, 96(sp)
  LW t4, 96(sp)
  LW t3, 140(sp)
  BLT t4, t3, bb95
  JAL zero, bb17
bb95:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  LB t3, 50(sp)
  ADD t4, t3, zero
  SB t4, 14(sp)
  LB t3, 51(sp)
  ADD t4, t3, zero
  SB t4, 80(sp)
  LB t3, 52(sp)
  ADD t4, t3, zero
  SB t4, 79(sp)
  LB t3, 53(sp)
  ADD t4, t3, zero
  SB t4, 78(sp)
  LB t3, 54(sp)
  ADD t4, t3, zero
  SB t4, 77(sp)
  LB t3, 55(sp)
  ADD t4, t3, zero
  SB t4, 76(sp)
  LB t3, 56(sp)
  ADD t4, t3, zero
  SB t4, 75(sp)
  LB t3, 57(sp)
  ADD t4, t3, zero
  SB t4, 74(sp)
  LB t3, 59(sp)
  ADD t4, t3, zero
  SB t4, 37(sp)
  LB t3, 60(sp)
  ADD t4, t3, zero
  SB t4, 24(sp)
  LB t3, 49(sp)
  ADD t4, t3, zero
  SB t4, 23(sp)
  LB t3, 62(sp)
  ADD t4, t3, zero
  SB t4, 22(sp)
  LB t3, 63(sp)
  ADD t4, t3, zero
  SB t4, 21(sp)
  LB t3, 64(sp)
  ADD t4, t3, zero
  SB t4, 20(sp)
  LB t3, 65(sp)
  ADD t4, t3, zero
  SB t4, 19(sp)
  LB t3, 66(sp)
  ADD t4, t3, zero
  SB t4, 18(sp)
  LB t3, 67(sp)
  ADD t4, t3, zero
  SB t4, 17(sp)
  LB t3, 58(sp)
  ADD t4, t3, zero
  SB t4, 16(sp)
  LB t3, 68(sp)
  ADD t4, t3, zero
  SB t4, 15(sp)
  JAL zero, bb74
bb96:
  LA s10, chat
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, chas
  ADD s10, s11, s10
  LW s11, 0(s10)
  XORI s11, s11, 42
  SLTIU s11, s11, 1
  BNE s11, zero, bb110
  # implict jump to bb97
bb97:
  LW s11, 0(s10)
  XORI s11, s11, 47
  SLTIU s11, s11, 1
  # implict jump to bb98
bb98:
  ADD t4, s11, zero
  SB t4, 38(sp)
  LB t4, 38(sp)
  BNE t4, zero, bb109
  # implict jump to bb99
bb99:
  LW s11, 0(s10)
  XORI s11, s11, 37
  SLTIU s11, s11, 1
  # implict jump to bb100
bb100:
  ADD t4, s11, zero
  SB t4, 85(sp)
  LB t4, 85(sp)
  BNE t4, zero, bb108
  # implict jump to bb101
bb101:
  LW s10, 0(s10)
  XORI s10, s10, 94
  SLTIU s10, s10, 1
  # implict jump to bb102
bb102:
  ADD t4, s10, zero
  SB t4, 25(sp)
  LB t4, 25(sp)
  BNE t4, zero, bb104
  # implict jump to bb103
bb103:
  LA s1, chat
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s3, chat
  SW s1, 0(s3)
  SLLIW s1, s1, 2
  LA s3, chas
  ADD s1, s3, s1
  ADDI s3, zero, 37
  SW s3, 0(s1)
  LB t4, 85(sp)
  ADD s0, t4, zero
  LB t4, 25(sp)
  ADD s4, t4, zero
  LB t4, 38(sp)
  ADD s5, t4, zero
  JAL zero, bb92
bb104:
  LA s10, chat
  LW s10, 0(s10)
  ADDI s11, zero, 1
  SUBW s11, s10, s11
  LA s9, chat
  SW s11, 0(s9)
  SLLIW s9, s10, 2
  LA s10, chas
  ADD s9, s10, s9
  LW s9, 0(s9)
  LA s10, c
  SW s9, 0(s10)
  LA s10, ii
  LW s10, 0(s10)
  SLLIW s3, s10, 2
  LA s1, get2
  ADD s1, s1, s3
  ADDI s3, zero, 32
  SW s3, 0(s1)
  ADDIW s1, s10, 1
  SLLIW s1, s1, 2
  LA s3, get2
  ADD s1, s3, s1
  SW s9, 0(s1)
  ADDIW s1, s10, 2
  LA s3, ii
  SW s1, 0(s3)
  SLTIU s1, s11, 1
  BNE s1, zero, bb107
  # implict jump to bb105
bb105:
  ADDI s1, zero, 1
  # implict jump to bb106
bb106:
  SLTIU s1, s1, 1
  BNE s1, zero, bb103
  JAL zero, bb96
bb107:
  ADD s1, zero, zero
  JAL zero, bb106
bb108:
  ADDI s10, zero, 1
  JAL zero, bb102
bb109:
  ADDI s11, zero, 1
  JAL zero, bb100
bb110:
  ADDI s11, zero, 1
  JAL zero, bb98
bb111:
  LA s10, chat
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, chas
  ADD s10, s11, s10
  LW s11, 0(s10)
  XORI s11, s11, 42
  SLTIU s11, s11, 1
  BNE s11, zero, bb125
  # implict jump to bb112
bb112:
  LW s11, 0(s10)
  XORI s11, s11, 47
  SLTIU s11, s11, 1
  # implict jump to bb113
bb113:
  ADD t4, s11, zero
  SB t4, 86(sp)
  LB t4, 86(sp)
  BNE t4, zero, bb124
  # implict jump to bb114
bb114:
  LW s11, 0(s10)
  XORI s11, s11, 37
  SLTIU s11, s11, 1
  # implict jump to bb115
bb115:
  ADD t4, s11, zero
  SB t4, 90(sp)
  LB t4, 90(sp)
  BNE t4, zero, bb123
  # implict jump to bb116
bb116:
  LW s10, 0(s10)
  XORI s10, s10, 94
  SLTIU s10, s10, 1
  # implict jump to bb117
bb117:
  ADD t4, s10, zero
  SB t4, 93(sp)
  LB t4, 93(sp)
  BNE t4, zero, bb119
  # implict jump to bb118
bb118:
  LA s0, chat
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, chat
  SW s0, 0(s4)
  SLLIW s0, s0, 2
  LA s4, chas
  ADD s0, s4, s0
  ADDI s4, zero, 47
  SW s4, 0(s0)
  LB t4, 93(sp)
  ADD s6, t4, zero
  LB t4, 86(sp)
  ADD s7, t4, zero
  LB t4, 90(sp)
  ADD s8, t4, zero
  JAL zero, bb90
bb119:
  LA s10, chat
  LW s10, 0(s10)
  ADDI s11, zero, 1
  SUBW s11, s10, s11
  LA s5, chat
  SW s11, 0(s5)
  SLLIW s5, s10, 2
  LA s10, chas
  ADD s5, s10, s5
  LW s5, 0(s5)
  LA s10, c
  SW s5, 0(s10)
  LA s10, ii
  LW s10, 0(s10)
  SLLIW s0, s10, 2
  LA s4, get2
  ADD s0, s4, s0
  ADDI s4, zero, 32
  SW s4, 0(s0)
  ADDIW s0, s10, 1
  SLLIW s0, s0, 2
  LA s4, get2
  ADD s0, s4, s0
  SW s5, 0(s0)
  ADDIW s0, s10, 2
  LA s4, ii
  SW s0, 0(s4)
  SLTIU s0, s11, 1
  BNE s0, zero, bb122
  # implict jump to bb120
bb120:
  ADDI s0, zero, 1
  # implict jump to bb121
bb121:
  SLTIU s0, s0, 1
  BNE s0, zero, bb118
  JAL zero, bb111
bb122:
  ADD s0, zero, zero
  JAL zero, bb121
bb123:
  ADDI s10, zero, 1
  JAL zero, bb117
bb124:
  ADDI s11, zero, 1
  JAL zero, bb115
bb125:
  ADDI s11, zero, 1
  JAL zero, bb113
bb126:
  LA s10, chat
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, chas
  ADD s10, s11, s10
  LW s11, 0(s10)
  XORI s11, s11, 42
  SLTIU s11, s11, 1
  BNE s11, zero, bb140
  # implict jump to bb127
bb127:
  LW s11, 0(s10)
  XORI s11, s11, 47
  SLTIU s11, s11, 1
  # implict jump to bb128
bb128:
  ADD t4, s11, zero
  SB t4, 61(sp)
  LB t4, 61(sp)
  BNE t4, zero, bb139
  # implict jump to bb129
bb129:
  LW s11, 0(s10)
  XORI s11, s11, 37
  SLTIU s11, s11, 1
  # implict jump to bb130
bb130:
  ADD t4, s11, zero
  SB t4, 89(sp)
  LB t4, 89(sp)
  BNE t4, zero, bb138
  # implict jump to bb131
bb131:
  LW s10, 0(s10)
  XORI s10, s10, 94
  SLTIU s10, s10, 1
  # implict jump to bb132
bb132:
  ADD t4, s10, zero
  SB t4, 91(sp)
  LB t4, 91(sp)
  BNE t4, zero, bb134
  # implict jump to bb133
bb133:
  LA s6, chat
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, chat
  SW s6, 0(s7)
  SLLIW s6, s6, 2
  LA s7, chas
  ADD s6, s7, s6
  ADDI s7, zero, 42
  SW s7, 0(s6)
  LB t4, 91(sp)
  ADD s1, t4, zero
  LB t4, 89(sp)
  ADD s3, t4, zero
  LB t4, 61(sp)
  ADD s9, t4, zero
  JAL zero, bb88
bb134:
  LA s10, chat
  LW s10, 0(s10)
  ADDI s11, zero, 1
  SUBW s11, s10, s11
  LA s8, chat
  SW s11, 0(s8)
  SLLIW s8, s10, 2
  LA s10, chas
  ADD s8, s10, s8
  LW s8, 0(s8)
  LA s10, c
  SW s8, 0(s10)
  LA s10, ii
  LW s10, 0(s10)
  SLLIW s7, s10, 2
  LA s6, get2
  ADD s6, s6, s7
  ADDI s7, zero, 32
  SW s7, 0(s6)
  ADDIW s6, s10, 1
  SLLIW s6, s6, 2
  LA s7, get2
  ADD s6, s7, s6
  SW s8, 0(s6)
  ADDIW s6, s10, 2
  LA s7, ii
  SW s6, 0(s7)
  SLTIU s6, s11, 1
  BNE s6, zero, bb137
  # implict jump to bb135
bb135:
  ADDI s6, zero, 1
  # implict jump to bb136
bb136:
  SLTIU s6, s6, 1
  BNE s6, zero, bb133
  JAL zero, bb126
bb137:
  ADD s6, zero, zero
  JAL zero, bb136
bb138:
  ADDI s10, zero, 1
  JAL zero, bb132
bb139:
  ADDI s11, zero, 1
  JAL zero, bb130
bb140:
  ADDI s11, zero, 1
  JAL zero, bb128
bb141:
  LA s10, chat
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, chas
  ADD s10, s11, s10
  LW s11, 0(s10)
  XORI s11, s11, 43
  SLTIU s11, s11, 1
  BNE s11, zero, bb161
  # implict jump to bb142
bb142:
  LW s11, 0(s10)
  XORI s11, s11, 45
  SLTIU s11, s11, 1
  # implict jump to bb143
bb143:
  ADD t4, s11, zero
  SB t4, 94(sp)
  LB t4, 94(sp)
  BNE t4, zero, bb160
  # implict jump to bb144
bb144:
  LW s11, 0(s10)
  XORI s11, s11, 42
  SLTIU s11, s11, 1
  # implict jump to bb145
bb145:
  ADD t4, s11, zero
  SB t4, 95(sp)
  LB t4, 95(sp)
  BNE t4, zero, bb159
  # implict jump to bb146
bb146:
  LW s11, 0(s10)
  XORI s11, s11, 47
  SLTIU s11, s11, 1
  # implict jump to bb147
bb147:
  ADD t4, s11, zero
  SB t4, 88(sp)
  LB t4, 88(sp)
  BNE t4, zero, bb158
  # implict jump to bb148
bb148:
  LW s11, 0(s10)
  XORI s11, s11, 37
  SLTIU s11, s11, 1
  # implict jump to bb149
bb149:
  ADD t4, s11, zero
  SB t4, 92(sp)
  LB t4, 92(sp)
  BNE t4, zero, bb157
  # implict jump to bb150
bb150:
  LW s10, 0(s10)
  XORI s10, s10, 94
  SLTIU s10, s10, 1
  # implict jump to bb151
bb151:
  ADD t4, s10, zero
  SB t4, 36(sp)
  LB t4, 36(sp)
  BNE t4, zero, bb153
  # implict jump to bb152
bb152:
  LA s1, chat
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s3, chat
  SW s1, 0(s3)
  SLLIW s1, s1, 2
  LA s3, chas
  ADD s1, s3, s1
  ADDI s3, zero, 45
  SW s3, 0(s1)
  LB t4, 36(sp)
  ADD s4, t4, zero
  LB t4, 92(sp)
  ADD s5, t4, zero
  LB t4, 88(sp)
  ADD s6, t4, zero
  LB t4, 95(sp)
  ADD s7, t4, zero
  LB t4, 94(sp)
  ADD s8, t4, zero
  JAL zero, bb86
bb153:
  LA s10, chat
  LW s10, 0(s10)
  ADDI s11, zero, 1
  SUBW s11, s10, s11
  LA s1, chat
  SW s11, 0(s1)
  SLLIW s1, s10, 2
  LA s10, chas
  ADD s1, s10, s1
  LW s1, 0(s1)
  LA s10, c
  SW s1, 0(s10)
  LA s10, ii
  LW s10, 0(s10)
  SLLIW s9, s10, 2
  LA s3, get2
  ADD s3, s3, s9
  ADDI s9, zero, 32
  SW s9, 0(s3)
  ADDIW s3, s10, 1
  SLLIW s3, s3, 2
  LA s9, get2
  ADD s3, s9, s3
  SW s1, 0(s3)
  ADDIW s1, s10, 2
  LA s3, ii
  SW s1, 0(s3)
  SLTIU s1, s11, 1
  BNE s1, zero, bb156
  # implict jump to bb154
bb154:
  ADDI s1, zero, 1
  # implict jump to bb155
bb155:
  SLTIU s1, s1, 1
  BNE s1, zero, bb152
  JAL zero, bb141
bb156:
  ADD s1, zero, zero
  JAL zero, bb155
bb157:
  ADDI s10, zero, 1
  JAL zero, bb151
bb158:
  ADDI s11, zero, 1
  JAL zero, bb149
bb159:
  ADDI s11, zero, 1
  JAL zero, bb147
bb160:
  ADDI s11, zero, 1
  JAL zero, bb145
bb161:
  ADDI s11, zero, 1
  JAL zero, bb143
bb162:
  LA s11, chat
  LW s11, 0(s11)
  SLLIW s11, s11, 2
  LA s6, chas
  ADD s6, s6, s11
  LW s11, 0(s6)
  XORI s11, s11, 43
  SLTIU s11, s11, 1
  BNE s11, zero, bb182
  # implict jump to bb163
bb163:
  LW s11, 0(s6)
  XORI s11, s11, 45
  SLTIU s11, s11, 1
  # implict jump to bb164
bb164:
  ADD s10, s11, zero
  BNE s10, zero, bb181
  # implict jump to bb165
bb165:
  LW s11, 0(s6)
  XORI s11, s11, 42
  SLTIU s11, s11, 1
  # implict jump to bb166
bb166:
  ADD s4, s11, zero
  BNE s4, zero, bb180
  # implict jump to bb167
bb167:
  LW s11, 0(s6)
  XORI s11, s11, 47
  SLTIU s11, s11, 1
  # implict jump to bb168
bb168:
  ADD t4, s11, zero
  SB t4, 87(sp)
  LB t4, 87(sp)
  BNE t4, zero, bb179
  # implict jump to bb169
bb169:
  LW s11, 0(s6)
  XORI s11, s11, 37
  SLTIU s11, s11, 1
  # implict jump to bb170
bb170:
  ADD s8, s11, zero
  BNE s8, zero, bb178
  # implict jump to bb171
bb171:
  LW s6, 0(s6)
  XORI s6, s6, 94
  SLTIU s6, s6, 1
  # implict jump to bb172
bb172:
  ADD s7, s6, zero
  BNE s7, zero, bb174
  # implict jump to bb173
bb173:
  LA s0, chat
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s2, chat
  SW s0, 0(s2)
  SLLIW s0, s0, 2
  LA s2, chas
  ADD s0, s2, s0
  ADDI s2, zero, 43
  SW s2, 0(s0)
  ADD t4, s10, zero
  SB t4, 35(sp)
  LB t3, 87(sp)
  ADD t4, t3, zero
  SB t4, 34(sp)
  ADD s3, s8, zero
  ADD s9, s7, zero
  ADD s1, s4, zero
  JAL zero, bb84
bb174:
  LA s6, chat
  LW s6, 0(s6)
  ADDI s11, zero, 1
  SUBW s11, s6, s11
  LA s5, chat
  SW s11, 0(s5)
  SLLIW s5, s6, 2
  LA s6, chas
  ADD s5, s6, s5
  LW s5, 0(s5)
  LA s6, c
  SW s5, 0(s6)
  LA s6, ii
  LW s6, 0(s6)
  SLLIW s0, s6, 2
  LA s2, get2
  ADD s0, s2, s0
  ADDI s2, zero, 32
  SW s2, 0(s0)
  ADDIW s0, s6, 1
  SLLIW s0, s0, 2
  LA s2, get2
  ADD s0, s2, s0
  SW s5, 0(s0)
  ADDIW s0, s6, 2
  LA s2, ii
  SW s0, 0(s2)
  SLTIU s0, s11, 1
  BNE s0, zero, bb177
  # implict jump to bb175
bb175:
  ADDI s0, zero, 1
  # implict jump to bb176
bb176:
  SLTIU s0, s0, 1
  BNE s0, zero, bb173
  JAL zero, bb162
bb177:
  ADD s0, zero, zero
  JAL zero, bb176
bb178:
  ADDI s6, zero, 1
  JAL zero, bb172
bb179:
  ADDI s11, zero, 1
  JAL zero, bb170
bb180:
  ADDI s11, zero, 1
  JAL zero, bb168
bb181:
  ADDI s11, zero, 1
  JAL zero, bb166
bb182:
  ADDI s11, zero, 1
  JAL zero, bb164
bb183:
  LA s0, chat
  LW s0, 0(s0)
  ADDI s2, zero, 1
  SUBW s2, s0, s2
  LA s3, chat
  SW s2, 0(s3)
  SLLIW s0, s0, 2
  LA s2, chas
  ADD s0, s2, s0
  LW s0, 0(s0)
  LA s2, c
  SW s0, 0(s2)
  LA s0, c
  LW s0, 0(s0)
  XORI s0, s0, 40
  BNE s0, zero, bb184
  JAL zero, bb82
bb184:
  LA s0, ii
  LW s0, 0(s0)
  SLLIW s2, s0, 2
  LA s3, get2
  ADD s2, s3, s2
  ADDI s3, zero, 32
  SW s3, 0(s2)
  ADDIW s2, s0, 1
  SLLIW s2, s2, 2
  LA s3, get2
  ADD s2, s3, s2
  LA s3, c
  LW s3, 0(s3)
  SW s3, 0(s2)
  ADDIW s0, s0, 2
  LA s2, ii
  SW s0, 0(s2)
  LA s0, chat
  LW s0, 0(s0)
  ADDI s2, zero, 1
  SUBW s2, s0, s2
  LA s3, chat
  SW s2, 0(s3)
  SLLIW s0, s0, 2
  LA s2, chas
  ADD s0, s2, s0
  LW s0, 0(s0)
  LA s2, c
  SW s0, 0(s2)
  # implict jump to bb185
bb185:
  LA s0, c
  LW s0, 0(s0)
  XORI s0, s0, 40
  BNE s0, zero, bb184
  JAL zero, bb82
bb186:
  LA s0, chat
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s2, chat
  SW s0, 0(s2)
  SLLIW s0, s0, 2
  LA s2, chas
  ADD s0, s2, s0
  ADDI s2, zero, 94
  SW s2, 0(s0)
  JAL zero, bb81
bb187:
  LA s0, chat
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s2, chat
  SW s0, 0(s2)
  SLLIW s0, s0, 2
  LA s2, chas
  ADD s0, s2, s0
  ADDI s2, zero, 40
  SW s2, 0(s0)
  JAL zero, bb80
bb188:
  LA s7, ii
  LW s7, 0(s7)
  SLLIW s8, s7, 2
  LA s9, get2
  ADD s8, s9, s8
  LD t4, 256(sp)
  LW s9, 0(t4)
  SW s9, 0(s8)
  ADDIW s7, s7, 1
  LA s8, ii
  SW s7, 0(s8)
  LB t3, 40(sp)
  ADD t4, t3, zero
  SB t4, 0(sp)
  LB t3, 41(sp)
  ADD t4, t3, zero
  SB t4, 81(sp)
  LB t3, 42(sp)
  ADD t4, t3, zero
  SB t4, 82(sp)
  LB t3, 43(sp)
  ADD t4, t3, zero
  SB t4, 83(sp)
  LB t3, 44(sp)
  ADD t4, t3, zero
  SB t4, 84(sp)
  LB t3, 9(sp)
  ADD t4, t3, zero
  SB t4, 73(sp)
  LB t3, 8(sp)
  ADD t4, t3, zero
  SB t4, 69(sp)
  LB t3, 7(sp)
  ADD t4, t3, zero
  SB t4, 70(sp)
  LB t3, 6(sp)
  ADD t4, t3, zero
  SB t4, 71(sp)
  LB t3, 5(sp)
  ADD t4, t3, zero
  SB t4, 72(sp)
  LB t4, 4(sp)
  ADD s10, t4, zero
  LB t4, 3(sp)
  ADD s11, t4, zero
  LB t4, 2(sp)
  ADD s1, t4, zero
  LB t4, 1(sp)
  ADD s0, t4, zero
  LB t4, 13(sp)
  ADD s3, t4, zero
  LB t4, 48(sp)
  ADD s4, t4, zero
  LB t4, 47(sp)
  ADD s5, t4, zero
  LB t4, 46(sp)
  ADD s2, t4, zero
  LB t4, 45(sp)
  ADD s6, t4, zero
  JAL zero, bb93
bb189:
  ADDI s0, zero, 1
  JAL zero, bb78
bb190:
  ADDI s0, zero, 57
  SLT s0, s0, s2
  XORI s0, s0, 1
  ADD s3, s0, zero
  JAL zero, bb76
bb191:
  LW t4, 140(sp)
  SLLIW s0, t4, 2
  LA s1, get
  ADD s0, s1, s0
  LW t4, 124(sp)
  SW t4, 0(s0)
  LW t4, 140(sp)
  ADDIW s0, t4, 1
  CALL getch
  ADD t4, s0, zero
  SW t4, 132(sp)
  ADD t4, a0, zero
  SW t4, 128(sp)
  JAL zero, bb13
bb192:
  LW t4, 124(sp)
  XORI s0, t4, 10
  SLTU s0, zero, s0
  ADD s9, s0, zero
  JAL zero, bb15
find:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  LA s0, chat
  LW s0, 0(s0)
  ADDI s1, zero, 1
  SUBW s1, s0, s1
  LA s2, chat
  SW s1, 0(s2)
  SLLIW s0, s0, 2
  LA s2, chas
  ADD s0, s2, s0
  LW s0, 0(s0)
  LA s2, c
  SW s0, 0(s2)
  LA s2, ii
  LW s2, 0(s2)
  SLLIW s3, s2, 2
  LA s4, get2
  ADD s3, s4, s3
  ADDI s4, zero, 32
  SW s4, 0(s3)
  ADDIW s3, s2, 1
  SLLIW s3, s3, 2
  LA s4, get2
  ADD s3, s4, s3
  SW s0, 0(s3)
  ADDIW s0, s2, 2
  LA s2, ii
  SW s0, 0(s2)
  SLTIU s0, s1, 1
  BNE s0, zero, bb195
  # implict jump to bb194
bb194:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb195:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
intpop:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  LA s0, intt
  LW s0, 0(s0)
  ADDI s1, zero, 1
  SUBW s1, s0, s1
  LA s2, intt
  SW s1, 0(s2)
  SLLIW s0, s0, 2
  LA s1, ints
  ADD s0, s1, s0
  LW s0, 0(s0)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
getstr:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  ADD s0, a0, zero
  CALL getch
  ADD s1, a0, zero
  ADD s2, zero, zero
  # implict jump to bb198
bb198:
  ADD s3, s1, zero
  ADD s4, s2, zero
  XORI s5, s3, 13
  BNE s5, zero, bb203
  # implict jump to bb199
bb199:
  ADD s5, zero, zero
  # implict jump to bb200
bb200:
  BNE s5, zero, bb202
  # implict jump to bb201
bb201:
  ADD a0, s4, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb202:
  SLLIW s5, s4, 2
  ADD s5, s0, s5
  SW s3, 0(s5)
  ADDIW s3, s4, 1
  CALL getch
  ADD s2, s3, zero
  ADD s1, a0, zero
  JAL zero, bb198
bb203:
  XORI s6, s3, 10
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb200
isdigit:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD s0, a0, zero
  SLTI s1, s0, 48
  XORI s1, s1, 1
  BNE s1, zero, bb209
  # implict jump to bb205
bb205:
  ADD s1, zero, zero
  # implict jump to bb206
bb206:
  BNE s1, zero, bb208
  # implict jump to bb207
bb207:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb208:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb209:
  ADDI s2, zero, 57
  SLT s0, s2, s0
  XORI s0, s0, 1
  ADD s1, s0, zero
  JAL zero, bb206
