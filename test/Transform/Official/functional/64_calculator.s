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
  ADDI s4, zero, 1
  # implict jump to bb7
bb7:
  ADD s5, a1, zero
  # implict jump to bb8
bb8:
  ADD s6, s4, zero
  ADD s7, s5, zero
  MULW s0, s6, s2
  ADDI s6, zero, 1
  SUBW s1, s7, s6
  # implict jump to bb9
bb9:
  BNE s1, zero, bb11
  # implict jump to bb10
bb10:
  ADD s3, s0, zero
  JAL zero, bb5
bb11:
  ADD s5, s1, zero
  ADD s4, s0, zero
  JAL zero, bb8
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
  SD s10, 216(sp)
  SD s11, 224(sp)
  SD s7, 240(sp)
  SD s8, 248(sp)
  SD s9, 256(sp)
  LA ra, intt
  SW zero, 0(ra)
  LA ra, chat
  SW zero, 0(ra)
  CALL getch
  ADD s0, a0, zero
  ADD t4, zero, zero
  SW t4, 132(sp)
  ADD t4, s0, zero
  SW t4, 136(sp)
  # implict jump to bb14
bb14:
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t4, 140(sp)
  XORI s0, t4, 13
  BNE s0, zero, bb204
  # implict jump to bb15
bb15:
  ADD s0, zero, zero
  # implict jump to bb16
bb16:
  BNE s0, zero, bb203
  # implict jump to bb17
bb17:
  LA s0, i
  LW s0, 0(s0)
  LW t4, 104(sp)
  BLT s0, t4, bb78
  # implict jump to bb18
bb18:
  # implict jump to bb19
bb19:
  LA s1, chat
  LW s1, 0(s1)
  BLT zero, s1, bb77
  # implict jump to bb20
bb20:
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
  BNE s1, zero, bb22
  # implict jump to bb21
bb21:
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
  LD s10, 216(sp)
  LD s11, 224(sp)
  LD s7, 240(sp)
  LD s8, 248(sp)
  LD s9, 256(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb22:
  # implict jump to bb23
bb23:
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  # implict jump to bb24
bb24:
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
  BNE s7, zero, bb76
  # implict jump to bb25
bb25:
  LA s7, i
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  LA s8, get2
  ADD s7, s8, s7
  LW s7, 0(s7)
  XORI s7, s7, 45
  SLTIU s7, s7, 1
  # implict jump to bb26
bb26:
  BNE s7, zero, bb75
  # implict jump to bb27
bb27:
  LA s7, i
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  LA s8, get2
  ADD s7, s8, s7
  LW s7, 0(s7)
  XORI s7, s7, 42
  SLTIU s7, s7, 1
  # implict jump to bb28
bb28:
  BNE s7, zero, bb74
  # implict jump to bb29
bb29:
  LA s7, i
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  LA s8, get2
  ADD s7, s8, s7
  LW s7, 0(s7)
  XORI s7, s7, 47
  SLTIU s7, s7, 1
  # implict jump to bb30
bb30:
  BNE s7, zero, bb73
  # implict jump to bb31
bb31:
  LA s7, i
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  LA s8, get2
  ADD s7, s8, s7
  LW s7, 0(s7)
  XORI s7, s7, 37
  SLTIU s7, s7, 1
  # implict jump to bb32
bb32:
  BNE s7, zero, bb72
  # implict jump to bb33
bb33:
  LA s7, i
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  LA s8, get2
  ADD s7, s8, s7
  LW s7, 0(s7)
  XORI s7, s7, 94
  SLTIU s7, s7, 1
  # implict jump to bb34
bb34:
  BNE s7, zero, bb45
  # implict jump to bb35
bb35:
  LA s7, i
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  LA s8, get2
  ADD s7, s8, s7
  LW s7, 0(s7)
  XORI s7, s7, 32
  BNE s7, zero, bb40
  # implict jump to bb36
bb36:
  ADD s7, s6, zero
  # implict jump to bb37
bb37:
  ADD t4, s7, zero
  SW t4, 124(sp)
  ADD t4, s5, zero
  SW t4, 144(sp)
  ADD t4, s4, zero
  SW t4, 128(sp)
  LA s4, i
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, i
  SW s4, 0(s5)
  # implict jump to bb38
bb38:
  LA s4, i
  LW s4, 0(s4)
  SLLIW s4, s4, 2
  LA s5, get2
  ADD s4, s5, s4
  LW s4, 0(s4)
  XORI s4, s4, 64
  BNE s4, zero, bb39
  JAL zero, bb21
bb39:
  LW t4, 124(sp)
  ADD s1, t4, zero
  LW t4, 144(sp)
  ADD s2, t4, zero
  LW t4, 128(sp)
  ADD s3, t4, zero
  JAL zero, bb24
bb40:
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
  BNE s7, zero, bb42
  # implict jump to bb41
bb41:
  LA s7, i
  LW s7, 0(s7)
  LA s8, ii
  LW s8, 0(s8)
  ADDW s7, s7, s8
  ADDI s8, zero, 1
  SUBW s7, s7, s8
  LA s8, i
  SW s7, 0(s8)
  JAL zero, bb36
bb42:
  LA s7, i
  LW t4, 0(s7)
  SW t4, 120(sp)
  # implict jump to bb43
bb43:
  LA s7, ii
  LW s7, 0(s7)
  LW t4, 120(sp)
  ADDW s7, t4, s7
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
  # implict jump to bb44
bb44:
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
  BNE s7, zero, bb43
  JAL zero, bb41
bb45:
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
  SW t4, 96(sp)
  ADDI s10, zero, 1
  SUBW s10, s9, s10
  LA s11, intt
  SW s10, 0(s11)
  SLLIW s9, s9, 2
  LA s10, ints
  ADD s9, s10, s9
  LW t4, 0(s9)
  SW t4, 108(sp)
  LA s10, i
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, get2
  ADD s10, s11, s10
  LW s10, 0(s10)
  XORI s10, s10, 43
  SLTIU s10, s10, 1
  BNE s10, zero, bb71
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
  XORI s10, s10, 45
  SLTIU s10, s10, 1
  BNE s10, zero, bb70
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
  XORI s10, s10, 42
  SLTIU s10, s10, 1
  BNE s10, zero, bb69
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
  XORI s10, s10, 47
  SLTIU s10, s10, 1
  BNE s10, zero, bb68
  # implict jump to bb52
bb52:
  # implict jump to bb53
bb53:
  LA s10, i
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, get2
  ADD s10, s11, s10
  LW s10, 0(s10)
  XORI s10, s10, 37
  SLTIU s10, s10, 1
  BNE s10, zero, bb67
  # implict jump to bb54
bb54:
  # implict jump to bb55
bb55:
  LA s10, i
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, get2
  ADD s10, s11, s10
  LW s10, 0(s10)
  XORI s10, s10, 94
  SLTIU s10, s10, 1
  BNE s10, zero, bb58
  # implict jump to bb56
bb56:
  # implict jump to bb57
bb57:
  LA s8, intt
  LW s8, 0(s8)
  ADDIW s8, s8, 1
  LA s9, intt
  SW s8, 0(s9)
  SLLIW s8, s8, 2
  LA s9, ints
  ADD s8, s9, s8
  SW s6, 0(s8)
  LW t4, 96(sp)
  ADD s4, t4, zero
  LW t4, 108(sp)
  ADD s5, t4, zero
  ADD s7, s6, zero
  JAL zero, bb37
bb58:
  LW t4, 96(sp)
  BNE t4, zero, bb61
  # implict jump to bb59
bb59:
  ADDI s10, zero, 1
  # implict jump to bb60
bb60:
  ADD s6, s10, zero
  JAL zero, bb57
bb61:
  ADDI s11, zero, 1
  # implict jump to bb62
bb62:
  LW t4, 96(sp)
  ADD s0, t4, zero
  # implict jump to bb63
bb63:
  ADD s9, s11, zero
  ADD s8, s0, zero
  LW t3, 108(sp)
  MULW t4, s9, t3
  SW t4, 112(sp)
  ADDI s9, zero, 1
  SUBW t4, s8, s9
  SW t4, 116(sp)
  # implict jump to bb64
bb64:
  LW t4, 116(sp)
  BNE t4, zero, bb66
  # implict jump to bb65
bb65:
  LW t4, 112(sp)
  ADD s10, t4, zero
  JAL zero, bb60
bb66:
  LW t4, 116(sp)
  ADD s0, t4, zero
  LW t4, 112(sp)
  ADD s11, t4, zero
  JAL zero, bb63
bb67:
  LW t4, 108(sp)
  LW t3, 96(sp)
  REMW s10, t4, t3
  ADD s6, s10, zero
  JAL zero, bb55
bb68:
  LW t4, 108(sp)
  LW t3, 96(sp)
  DIVW s10, t4, t3
  ADD s6, s10, zero
  JAL zero, bb53
bb69:
  LW t4, 96(sp)
  LW t3, 108(sp)
  MULW s10, t4, t3
  ADD s6, s10, zero
  JAL zero, bb51
bb70:
  LW t4, 108(sp)
  LW t3, 96(sp)
  SUBW s10, t4, t3
  ADD s6, s10, zero
  JAL zero, bb49
bb71:
  LW t4, 96(sp)
  LW t3, 108(sp)
  ADDW s10, t4, t3
  ADD s6, s10, zero
  JAL zero, bb47
bb72:
  ADDI s7, zero, 1
  JAL zero, bb34
bb73:
  ADDI s7, zero, 1
  JAL zero, bb32
bb74:
  ADDI s7, zero, 1
  JAL zero, bb30
bb75:
  ADDI s7, zero, 1
  JAL zero, bb28
bb76:
  ADDI s7, zero, 1
  JAL zero, bb26
bb77:
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
  JAL zero, bb19
bb78:
  # implict jump to bb79
bb79:
  ADD t4, s0, zero
  SW t4, 148(sp)
  ADD t4, zero, zero
  SB t4, 23(sp)
  ADD t4, zero, zero
  SB t4, 89(sp)
  ADD t4, zero, zero
  SB t4, 88(sp)
  ADD t4, zero, zero
  SB t4, 77(sp)
  ADD t4, zero, zero
  SB t4, 87(sp)
  ADD t4, zero, zero
  SB t4, 86(sp)
  ADD t4, zero, zero
  SB t4, 85(sp)
  ADD t4, zero, zero
  SB t4, 84(sp)
  ADD t4, zero, zero
  SB t4, 83(sp)
  ADD t4, zero, zero
  SB t4, 82(sp)
  ADD t4, zero, zero
  SB t4, 81(sp)
  ADD t4, zero, zero
  SB t4, 80(sp)
  ADD t4, zero, zero
  SB t4, 79(sp)
  ADD t4, zero, zero
  SB t4, 78(sp)
  ADD t4, zero, zero
  SB t4, 42(sp)
  ADD t4, zero, zero
  SB t4, 27(sp)
  ADD t4, zero, zero
  SB t4, 26(sp)
  ADD t4, zero, zero
  SB t4, 25(sp)
  ADD t4, zero, zero
  SB t4, 24(sp)
  # implict jump to bb80
bb80:
  LB t3, 24(sp)
  ADD t4, t3, zero
  SB t4, 4(sp)
  LB t3, 25(sp)
  ADD t4, t3, zero
  SB t4, 5(sp)
  LB t3, 26(sp)
  ADD t4, t3, zero
  SB t4, 22(sp)
  LB t3, 27(sp)
  ADD t4, t3, zero
  SB t4, 21(sp)
  LB t3, 42(sp)
  ADD t4, t3, zero
  SB t4, 20(sp)
  LB t3, 78(sp)
  ADD t4, t3, zero
  SB t4, 19(sp)
  LB t3, 79(sp)
  ADD t4, t3, zero
  SB t4, 18(sp)
  LB t3, 80(sp)
  ADD t4, t3, zero
  SB t4, 17(sp)
  LB t3, 81(sp)
  ADD t4, t3, zero
  SB t4, 16(sp)
  LB t3, 82(sp)
  ADD t4, t3, zero
  SB t4, 15(sp)
  LB t3, 83(sp)
  ADD t4, t3, zero
  SB t4, 0(sp)
  LB t3, 84(sp)
  ADD t4, t3, zero
  SB t4, 13(sp)
  LB t3, 85(sp)
  ADD t4, t3, zero
  SB t4, 12(sp)
  LB t3, 86(sp)
  ADD t4, t3, zero
  SB t4, 11(sp)
  LB t3, 87(sp)
  ADD t4, t3, zero
  SB t4, 10(sp)
  LB t3, 77(sp)
  ADD t4, t3, zero
  SB t4, 9(sp)
  LB t3, 88(sp)
  ADD t4, t3, zero
  SB t4, 8(sp)
  LB t3, 89(sp)
  ADD t4, t3, zero
  SB t4, 7(sp)
  LB t3, 23(sp)
  ADD t4, t3, zero
  SB t4, 6(sp)
  LW t4, 148(sp)
  ADD s0, t4, zero
  SLLIW s0, s0, 2
  LA s1, get
  ADD t4, s1, s0
  SD t4, 232(sp)
  LD t4, 232(sp)
  LW s1, 0(t4)
  SLTI s0, s1, 48
  XORI s0, s0, 1
  BNE s0, zero, bb202
  # implict jump to bb81
bb81:
  ADD s0, zero, zero
  # implict jump to bb82
bb82:
  BNE s0, zero, bb201
  # implict jump to bb83
bb83:
  ADD s0, zero, zero
  # implict jump to bb84
bb84:
  XORI s0, s0, 1
  SLTIU s0, s0, 1
  BNE s0, zero, bb200
  # implict jump to bb85
bb85:
  LD t4, 232(sp)
  LW s0, 0(t4)
  XORI s0, s0, 40
  SLTIU s0, s0, 1
  BNE s0, zero, bb199
  # implict jump to bb86
bb86:
  LD t4, 232(sp)
  LW s0, 0(t4)
  XORI s0, s0, 94
  SLTIU s0, s0, 1
  BNE s0, zero, bb198
  # implict jump to bb87
bb87:
  LD t4, 232(sp)
  LW s0, 0(t4)
  XORI s0, s0, 41
  SLTIU s0, s0, 1
  BNE s0, zero, bb194
  # implict jump to bb88
bb88:
  LD t4, 232(sp)
  LW s0, 0(t4)
  XORI s0, s0, 43
  SLTIU s0, s0, 1
  BNE s0, zero, bb172
  # implict jump to bb89
bb89:
  LB t3, 19(sp)
  ADD t4, t3, zero
  SB t4, 51(sp)
  LB t3, 13(sp)
  ADD t4, t3, zero
  SB t4, 50(sp)
  LB t4, 9(sp)
  ADD s2, t4, zero
  LB t4, 7(sp)
  ADD s5, t4, zero
  LB t4, 6(sp)
  ADD s10, t4, zero
  # implict jump to bb90
bb90:
  ADD t4, s10, zero
  SB t4, 49(sp)
  ADD t4, s5, zero
  SB t4, 48(sp)
  ADD t4, s2, zero
  SB t4, 47(sp)
  LB t3, 50(sp)
  ADD t4, t3, zero
  SB t4, 28(sp)
  LB t4, 51(sp)
  ADD s1, t4, zero
  LD t4, 232(sp)
  LW s3, 0(t4)
  XORI s3, s3, 45
  SLTIU s3, s3, 1
  BNE s3, zero, bb150
  # implict jump to bb91
bb91:
  LB t4, 0(sp)
  ADD s3, t4, zero
  LB t4, 12(sp)
  ADD s4, t4, zero
  LB t4, 11(sp)
  ADD s6, t4, zero
  LB t4, 10(sp)
  ADD s7, t4, zero
  LB t4, 8(sp)
  ADD s8, t4, zero
  # implict jump to bb92
bb92:
  ADD t4, s8, zero
  SB t4, 46(sp)
  ADD t4, s7, zero
  SB t4, 45(sp)
  ADD t4, s6, zero
  SB t4, 44(sp)
  ADD t4, s4, zero
  SB t4, 43(sp)
  ADD t4, s3, zero
  SB t4, 41(sp)
  LD t4, 232(sp)
  LW s2, 0(t4)
  XORI s2, s2, 42
  SLTIU s2, s2, 1
  BNE s2, zero, bb134
  # implict jump to bb93
bb93:
  LB t4, 17(sp)
  ADD s2, t4, zero
  LB t4, 16(sp)
  ADD s5, t4, zero
  LB t4, 15(sp)
  ADD s9, t4, zero
  # implict jump to bb94
bb94:
  ADD t4, s9, zero
  SB t4, 40(sp)
  ADD t4, s5, zero
  SB t4, 39(sp)
  ADD t4, s2, zero
  SB t4, 38(sp)
  LD t4, 232(sp)
  LW s6, 0(t4)
  XORI s6, s6, 47
  SLTIU s6, s6, 1
  BNE s6, zero, bb118
  # implict jump to bb95
bb95:
  LB t4, 4(sp)
  ADD s6, t4, zero
  LB t4, 21(sp)
  ADD s7, t4, zero
  LB t4, 18(sp)
  ADD s8, t4, zero
  # implict jump to bb96
bb96:
  LD t4, 232(sp)
  LW s0, 0(t4)
  XORI s0, s0, 37
  SLTIU s0, s0, 1
  BNE s0, zero, bb102
  # implict jump to bb97
bb97:
  LB t4, 5(sp)
  ADD s0, t4, zero
  LB t4, 22(sp)
  ADD s3, t4, zero
  LB t4, 20(sp)
  ADD s4, t4, zero
  # implict jump to bb98
bb98:
  LA s2, ii
  LW s2, 0(s2)
  SLLIW s5, s2, 2
  LA s9, get2
  ADD s5, s9, s5
  ADDI s9, zero, 32
  SW s9, 0(s5)
  ADDIW s2, s2, 1
  LA s5, ii
  SW s2, 0(s5)
  ADD t4, s6, zero
  SB t4, 37(sp)
  ADD t4, s0, zero
  SB t4, 36(sp)
  ADD t4, s3, zero
  SB t4, 35(sp)
  ADD t4, s7, zero
  SB t4, 34(sp)
  ADD t4, s4, zero
  SB t4, 33(sp)
  ADD t4, s1, zero
  SB t4, 32(sp)
  ADD t4, s8, zero
  SB t4, 31(sp)
  LB t3, 38(sp)
  ADD t4, t3, zero
  SB t4, 30(sp)
  LB t3, 39(sp)
  ADD t4, t3, zero
  SB t4, 29(sp)
  LB t3, 40(sp)
  ADD t4, t3, zero
  SB t4, 3(sp)
  LB t4, 41(sp)
  ADD s10, t4, zero
  LB t4, 28(sp)
  ADD s11, t4, zero
  LB t4, 43(sp)
  ADD s2, t4, zero
  LB t4, 44(sp)
  ADD s0, t4, zero
  LB t4, 45(sp)
  ADD s3, t4, zero
  LB t4, 47(sp)
  ADD s5, t4, zero
  LB t4, 46(sp)
  ADD s4, t4, zero
  LB t4, 48(sp)
  ADD s1, t4, zero
  LB t4, 49(sp)
  ADD s6, t4, zero
  # implict jump to bb99
bb99:
  ADD t4, s6, zero
  SB t4, 55(sp)
  ADD t4, s1, zero
  SB t4, 67(sp)
  ADD t4, s4, zero
  SB t4, 69(sp)
  ADD t4, s5, zero
  SB t4, 70(sp)
  ADD t4, s3, zero
  SB t4, 71(sp)
  ADD t4, s0, zero
  SB t4, 73(sp)
  ADD t4, s2, zero
  SB t4, 74(sp)
  ADD t4, s11, zero
  SB t4, 65(sp)
  ADD t4, s10, zero
  SB t4, 75(sp)
  LB t3, 3(sp)
  ADD t4, t3, zero
  SB t4, 64(sp)
  LB t3, 29(sp)
  ADD t4, t3, zero
  SB t4, 59(sp)
  LB t3, 30(sp)
  ADD t4, t3, zero
  SB t4, 72(sp)
  LB t3, 31(sp)
  ADD t4, t3, zero
  SB t4, 93(sp)
  LB t3, 32(sp)
  ADD t4, t3, zero
  SB t4, 92(sp)
  LB t3, 33(sp)
  ADD t4, t3, zero
  SB t4, 61(sp)
  LB t3, 34(sp)
  ADD t4, t3, zero
  SB t4, 91(sp)
  LB t3, 35(sp)
  ADD t4, t3, zero
  SB t4, 68(sp)
  LB t3, 36(sp)
  ADD t4, t3, zero
  SB t4, 76(sp)
  LB t3, 37(sp)
  ADD t4, t3, zero
  SB t4, 90(sp)
  LA s0, i
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s1, i
  SW s0, 0(s1)
  # implict jump to bb100
bb100:
  LA s0, i
  LW t4, 0(s0)
  SW t4, 100(sp)
  LW t4, 100(sp)
  LW t3, 104(sp)
  BLT t4, t3, bb101
  JAL zero, bb18
bb101:
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 148(sp)
  LB t3, 55(sp)
  ADD t4, t3, zero
  SB t4, 23(sp)
  LB t3, 67(sp)
  ADD t4, t3, zero
  SB t4, 89(sp)
  LB t3, 69(sp)
  ADD t4, t3, zero
  SB t4, 88(sp)
  LB t3, 70(sp)
  ADD t4, t3, zero
  SB t4, 77(sp)
  LB t3, 71(sp)
  ADD t4, t3, zero
  SB t4, 87(sp)
  LB t3, 73(sp)
  ADD t4, t3, zero
  SB t4, 86(sp)
  LB t3, 74(sp)
  ADD t4, t3, zero
  SB t4, 85(sp)
  LB t3, 65(sp)
  ADD t4, t3, zero
  SB t4, 84(sp)
  LB t3, 75(sp)
  ADD t4, t3, zero
  SB t4, 83(sp)
  LB t3, 64(sp)
  ADD t4, t3, zero
  SB t4, 82(sp)
  LB t3, 59(sp)
  ADD t4, t3, zero
  SB t4, 81(sp)
  LB t3, 72(sp)
  ADD t4, t3, zero
  SB t4, 80(sp)
  LB t3, 93(sp)
  ADD t4, t3, zero
  SB t4, 79(sp)
  LB t3, 92(sp)
  ADD t4, t3, zero
  SB t4, 78(sp)
  LB t3, 61(sp)
  ADD t4, t3, zero
  SB t4, 42(sp)
  LB t3, 91(sp)
  ADD t4, t3, zero
  SB t4, 27(sp)
  LB t3, 68(sp)
  ADD t4, t3, zero
  SB t4, 26(sp)
  LB t3, 76(sp)
  ADD t4, t3, zero
  SB t4, 25(sp)
  LB t3, 90(sp)
  ADD t4, t3, zero
  SB t4, 24(sp)
  JAL zero, bb80
bb102:
  # implict jump to bb103
bb103:
  LA s10, chat
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, chas
  ADD s10, s11, s10
  LW s11, 0(s10)
  XORI s11, s11, 42
  SLTIU s11, s11, 1
  BNE s11, zero, bb117
  # implict jump to bb104
bb104:
  LW s11, 0(s10)
  XORI s11, s11, 47
  SLTIU s11, s11, 1
  # implict jump to bb105
bb105:
  ADD t4, s11, zero
  SB t4, 94(sp)
  LB t4, 94(sp)
  BNE t4, zero, bb116
  # implict jump to bb106
bb106:
  LW s11, 0(s10)
  XORI s11, s11, 37
  SLTIU s11, s11, 1
  # implict jump to bb107
bb107:
  ADD t4, s11, zero
  SB t4, 1(sp)
  LB t4, 1(sp)
  BNE t4, zero, bb115
  # implict jump to bb108
bb108:
  LW s10, 0(s10)
  XORI s10, s10, 94
  SLTIU s10, s10, 1
  # implict jump to bb109
bb109:
  ADD t4, s10, zero
  SB t4, 2(sp)
  LB t4, 2(sp)
  BNE t4, zero, bb111
  # implict jump to bb110
bb110:
  LA s2, chat
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s5, chat
  SW s2, 0(s5)
  SLLIW s2, s2, 2
  LA s5, chas
  ADD s2, s5, s2
  ADDI s5, zero, 37
  SW s5, 0(s2)
  LB t4, 1(sp)
  ADD s0, t4, zero
  LB t4, 2(sp)
  ADD s3, t4, zero
  LB t4, 94(sp)
  ADD s4, t4, zero
  JAL zero, bb98
bb111:
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
  SLLIW s5, s10, 2
  LA s2, get2
  ADD s2, s2, s5
  ADDI s5, zero, 32
  SW s5, 0(s2)
  ADDIW s2, s10, 1
  SLLIW s2, s2, 2
  LA s5, get2
  ADD s2, s5, s2
  SW s9, 0(s2)
  ADDIW s2, s10, 2
  LA s5, ii
  SW s2, 0(s5)
  SLTIU s2, s11, 1
  BNE s2, zero, bb114
  # implict jump to bb112
bb112:
  ADDI s2, zero, 1
  # implict jump to bb113
bb113:
  SLTIU s2, s2, 1
  BNE s2, zero, bb110
  JAL zero, bb103
bb114:
  ADD s2, zero, zero
  JAL zero, bb113
bb115:
  ADDI s10, zero, 1
  JAL zero, bb109
bb116:
  ADDI s11, zero, 1
  JAL zero, bb107
bb117:
  ADDI s11, zero, 1
  JAL zero, bb105
bb118:
  # implict jump to bb119
bb119:
  LA s10, chat
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, chas
  ADD s10, s11, s10
  LW s11, 0(s10)
  XORI s11, s11, 42
  SLTIU s11, s11, 1
  BNE s11, zero, bb133
  # implict jump to bb120
bb120:
  LW s11, 0(s10)
  XORI s11, s11, 47
  SLTIU s11, s11, 1
  # implict jump to bb121
bb121:
  ADD t4, s11, zero
  SB t4, 56(sp)
  LB t4, 56(sp)
  BNE t4, zero, bb132
  # implict jump to bb122
bb122:
  LW s11, 0(s10)
  XORI s11, s11, 37
  SLTIU s11, s11, 1
  # implict jump to bb123
bb123:
  ADD t4, s11, zero
  SB t4, 95(sp)
  LB t4, 95(sp)
  BNE t4, zero, bb131
  # implict jump to bb124
bb124:
  LW s10, 0(s10)
  XORI s10, s10, 94
  SLTIU s10, s10, 1
  # implict jump to bb125
bb125:
  ADD t4, s10, zero
  SB t4, 66(sp)
  LB t4, 66(sp)
  BNE t4, zero, bb127
  # implict jump to bb126
bb126:
  LA s0, chat
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s3, chat
  SW s0, 0(s3)
  SLLIW s0, s0, 2
  LA s3, chas
  ADD s0, s3, s0
  ADDI s3, zero, 47
  SW s3, 0(s0)
  LB t4, 66(sp)
  ADD s6, t4, zero
  LB t4, 56(sp)
  ADD s7, t4, zero
  LB t4, 95(sp)
  ADD s8, t4, zero
  JAL zero, bb96
bb127:
  LA s10, chat
  LW s10, 0(s10)
  ADDI s11, zero, 1
  SUBW s11, s10, s11
  LA s4, chat
  SW s11, 0(s4)
  SLLIW s4, s10, 2
  LA s10, chas
  ADD s4, s10, s4
  LW s4, 0(s4)
  LA s10, c
  SW s4, 0(s10)
  LA s10, ii
  LW s10, 0(s10)
  SLLIW s0, s10, 2
  LA s3, get2
  ADD s0, s3, s0
  ADDI s3, zero, 32
  SW s3, 0(s0)
  ADDIW s0, s10, 1
  SLLIW s0, s0, 2
  LA s3, get2
  ADD s0, s3, s0
  SW s4, 0(s0)
  ADDIW s0, s10, 2
  LA s3, ii
  SW s0, 0(s3)
  SLTIU s0, s11, 1
  BNE s0, zero, bb130
  # implict jump to bb128
bb128:
  ADDI s0, zero, 1
  # implict jump to bb129
bb129:
  SLTIU s0, s0, 1
  BNE s0, zero, bb126
  JAL zero, bb119
bb130:
  ADD s0, zero, zero
  JAL zero, bb129
bb131:
  ADDI s10, zero, 1
  JAL zero, bb125
bb132:
  ADDI s11, zero, 1
  JAL zero, bb123
bb133:
  ADDI s11, zero, 1
  JAL zero, bb121
bb134:
  # implict jump to bb135
bb135:
  LA s10, chat
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, chas
  ADD s10, s11, s10
  LW s11, 0(s10)
  XORI s11, s11, 42
  SLTIU s11, s11, 1
  BNE s11, zero, bb149
  # implict jump to bb136
bb136:
  LW s11, 0(s10)
  XORI s11, s11, 47
  SLTIU s11, s11, 1
  # implict jump to bb137
bb137:
  ADD t4, s11, zero
  SB t4, 58(sp)
  LB t4, 58(sp)
  BNE t4, zero, bb148
  # implict jump to bb138
bb138:
  LW s11, 0(s10)
  XORI s11, s11, 37
  SLTIU s11, s11, 1
  # implict jump to bb139
bb139:
  ADD t4, s11, zero
  SB t4, 14(sp)
  LB t4, 14(sp)
  BNE t4, zero, bb147
  # implict jump to bb140
bb140:
  LW s10, 0(s10)
  XORI s10, s10, 94
  SLTIU s10, s10, 1
  # implict jump to bb141
bb141:
  ADD t4, s10, zero
  SB t4, 60(sp)
  LB t4, 60(sp)
  BNE t4, zero, bb143
  # implict jump to bb142
bb142:
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
  LB t4, 60(sp)
  ADD s2, t4, zero
  LB t4, 14(sp)
  ADD s5, t4, zero
  LB t4, 58(sp)
  ADD s9, t4, zero
  JAL zero, bb94
bb143:
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
  BNE s6, zero, bb146
  # implict jump to bb144
bb144:
  ADDI s6, zero, 1
  # implict jump to bb145
bb145:
  SLTIU s6, s6, 1
  BNE s6, zero, bb142
  JAL zero, bb135
bb146:
  ADD s6, zero, zero
  JAL zero, bb145
bb147:
  ADDI s10, zero, 1
  JAL zero, bb141
bb148:
  ADDI s11, zero, 1
  JAL zero, bb139
bb149:
  ADDI s11, zero, 1
  JAL zero, bb137
bb150:
  # implict jump to bb151
bb151:
  LA s9, chat
  LW s9, 0(s9)
  SLLIW s9, s9, 2
  LA s11, chas
  ADD s9, s11, s9
  LW s11, 0(s9)
  XORI s11, s11, 43
  SLTIU s11, s11, 1
  BNE s11, zero, bb171
  # implict jump to bb152
bb152:
  LW s11, 0(s9)
  XORI s11, s11, 45
  SLTIU s11, s11, 1
  # implict jump to bb153
bb153:
  ADD t4, s11, zero
  SB t4, 57(sp)
  LB t4, 57(sp)
  BNE t4, zero, bb170
  # implict jump to bb154
bb154:
  LW s11, 0(s9)
  XORI s11, s11, 42
  SLTIU s11, s11, 1
  # implict jump to bb155
bb155:
  ADD t4, s11, zero
  SB t4, 54(sp)
  LB t4, 54(sp)
  BNE t4, zero, bb169
  # implict jump to bb156
bb156:
  LW s11, 0(s9)
  XORI s11, s11, 47
  SLTIU s11, s11, 1
  # implict jump to bb157
bb157:
  ADD t4, s11, zero
  SB t4, 63(sp)
  LB t4, 63(sp)
  BNE t4, zero, bb168
  # implict jump to bb158
bb158:
  LW s11, 0(s9)
  XORI s11, s11, 37
  SLTIU s11, s11, 1
  # implict jump to bb159
bb159:
  ADD t4, s11, zero
  SB t4, 53(sp)
  LB t4, 53(sp)
  BNE t4, zero, bb167
  # implict jump to bb160
bb160:
  LW s9, 0(s9)
  XORI s9, s9, 94
  SLTIU s9, s9, 1
  # implict jump to bb161
bb161:
  ADD t4, s9, zero
  SB t4, 52(sp)
  LB t4, 52(sp)
  BNE t4, zero, bb163
  # implict jump to bb162
bb162:
  LA s2, chat
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s5, chat
  SW s2, 0(s5)
  SLLIW s2, s2, 2
  LA s5, chas
  ADD s2, s5, s2
  ADDI s5, zero, 45
  SW s5, 0(s2)
  LB t4, 52(sp)
  ADD s3, t4, zero
  LB t4, 53(sp)
  ADD s4, t4, zero
  LB t4, 63(sp)
  ADD s6, t4, zero
  LB t4, 54(sp)
  ADD s7, t4, zero
  LB t4, 57(sp)
  ADD s8, t4, zero
  JAL zero, bb92
bb163:
  LA s9, chat
  LW s9, 0(s9)
  ADDI s11, zero, 1
  SUBW s11, s9, s11
  LA s10, chat
  SW s11, 0(s10)
  SLLIW s9, s9, 2
  LA s10, chas
  ADD s9, s10, s9
  LW s9, 0(s9)
  LA s10, c
  SW s9, 0(s10)
  LA s10, ii
  LW s10, 0(s10)
  SLLIW s5, s10, 2
  LA s2, get2
  ADD s2, s2, s5
  ADDI s5, zero, 32
  SW s5, 0(s2)
  ADDIW s2, s10, 1
  SLLIW s2, s2, 2
  LA s5, get2
  ADD s2, s5, s2
  SW s9, 0(s2)
  ADDIW s2, s10, 2
  LA s5, ii
  SW s2, 0(s5)
  SLTIU s2, s11, 1
  BNE s2, zero, bb166
  # implict jump to bb164
bb164:
  ADDI s2, zero, 1
  # implict jump to bb165
bb165:
  SLTIU s2, s2, 1
  BNE s2, zero, bb162
  JAL zero, bb151
bb166:
  ADD s2, zero, zero
  JAL zero, bb165
bb167:
  ADDI s9, zero, 1
  JAL zero, bb161
bb168:
  ADDI s11, zero, 1
  JAL zero, bb159
bb169:
  ADDI s11, zero, 1
  JAL zero, bb157
bb170:
  ADDI s11, zero, 1
  JAL zero, bb155
bb171:
  ADDI s11, zero, 1
  JAL zero, bb153
bb172:
  # implict jump to bb173
bb173:
  LA s3, chat
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  LA s7, chas
  ADD s3, s7, s3
  LW s7, 0(s3)
  XORI s7, s7, 43
  SLTIU s7, s7, 1
  BNE s7, zero, bb193
  # implict jump to bb174
bb174:
  LW s7, 0(s3)
  XORI s7, s7, 45
  SLTIU s7, s7, 1
  # implict jump to bb175
bb175:
  ADD s11, s7, zero
  BNE s11, zero, bb192
  # implict jump to bb176
bb176:
  LW s7, 0(s3)
  XORI s7, s7, 42
  SLTIU s7, s7, 1
  # implict jump to bb177
bb177:
  ADD t4, s7, zero
  SB t4, 62(sp)
  LB t4, 62(sp)
  BNE t4, zero, bb191
  # implict jump to bb178
bb178:
  LW s7, 0(s3)
  XORI s7, s7, 47
  SLTIU s7, s7, 1
  # implict jump to bb179
bb179:
  ADD s9, s7, zero
  BNE s9, zero, bb190
  # implict jump to bb180
bb180:
  LW s7, 0(s3)
  XORI s7, s7, 37
  SLTIU s7, s7, 1
  # implict jump to bb181
bb181:
  ADD s8, s7, zero
  BNE s8, zero, bb189
  # implict jump to bb182
bb182:
  LW s3, 0(s3)
  XORI s3, s3, 94
  SLTIU s3, s3, 1
  # implict jump to bb183
bb183:
  ADD s4, s3, zero
  BNE s4, zero, bb185
  # implict jump to bb184
bb184:
  LA s0, chat
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s1, chat
  SW s0, 0(s1)
  SLLIW s0, s0, 2
  LA s1, chas
  ADD s0, s1, s0
  ADDI s1, zero, 43
  SW s1, 0(s0)
  ADD t4, s11, zero
  SB t4, 51(sp)
  ADD t4, s9, zero
  SB t4, 50(sp)
  ADD s2, s8, zero
  ADD s5, s4, zero
  LB t4, 62(sp)
  ADD s10, t4, zero
  JAL zero, bb90
bb185:
  LA s3, chat
  LW s3, 0(s3)
  ADDI s7, zero, 1
  SUBW s7, s3, s7
  LA s6, chat
  SW s7, 0(s6)
  SLLIW s3, s3, 2
  LA s6, chas
  ADD s3, s6, s3
  LW s3, 0(s3)
  LA s6, c
  SW s3, 0(s6)
  LA s6, ii
  LW s6, 0(s6)
  SLLIW s0, s6, 2
  LA s1, get2
  ADD s0, s1, s0
  ADDI s1, zero, 32
  SW s1, 0(s0)
  ADDIW s0, s6, 1
  SLLIW s0, s0, 2
  LA s1, get2
  ADD s0, s1, s0
  SW s3, 0(s0)
  ADDIW s0, s6, 2
  LA s1, ii
  SW s0, 0(s1)
  SLTIU s0, s7, 1
  BNE s0, zero, bb188
  # implict jump to bb186
bb186:
  ADDI s0, zero, 1
  # implict jump to bb187
bb187:
  SLTIU s0, s0, 1
  BNE s0, zero, bb184
  JAL zero, bb173
bb188:
  ADD s0, zero, zero
  JAL zero, bb187
bb189:
  ADDI s3, zero, 1
  JAL zero, bb183
bb190:
  ADDI s7, zero, 1
  JAL zero, bb181
bb191:
  ADDI s7, zero, 1
  JAL zero, bb179
bb192:
  ADDI s7, zero, 1
  JAL zero, bb177
bb193:
  ADDI s7, zero, 1
  JAL zero, bb175
bb194:
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
  LA s1, c
  SW s0, 0(s1)
  LA s0, c
  LW s0, 0(s0)
  XORI s0, s0, 40
  BNE s0, zero, bb195
  JAL zero, bb88
bb195:
  # implict jump to bb196
bb196:
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
  LA s2, c
  LW s2, 0(s2)
  SW s2, 0(s1)
  ADDIW s0, s0, 2
  LA s1, ii
  SW s0, 0(s1)
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
  LA s1, c
  SW s0, 0(s1)
  # implict jump to bb197
bb197:
  LA s0, c
  LW s0, 0(s0)
  XORI s0, s0, 40
  BNE s0, zero, bb196
  JAL zero, bb88
bb198:
  LA s0, chat
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s1, chat
  SW s0, 0(s1)
  SLLIW s0, s0, 2
  LA s1, chas
  ADD s0, s1, s0
  ADDI s1, zero, 94
  SW s1, 0(s0)
  JAL zero, bb87
bb199:
  LA s0, chat
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s1, chat
  SW s0, 0(s1)
  SLLIW s0, s0, 2
  LA s1, chas
  ADD s0, s1, s0
  ADDI s1, zero, 40
  SW s1, 0(s0)
  JAL zero, bb86
bb200:
  LA s7, ii
  LW s7, 0(s7)
  SLLIW s8, s7, 2
  LA s9, get2
  ADD s8, s9, s8
  LD t4, 232(sp)
  LW s9, 0(t4)
  SW s9, 0(s8)
  ADDIW s7, s7, 1
  LA s8, ii
  SW s7, 0(s8)
  LB t3, 4(sp)
  ADD t4, t3, zero
  SB t4, 37(sp)
  LB t3, 5(sp)
  ADD t4, t3, zero
  SB t4, 36(sp)
  LB t3, 22(sp)
  ADD t4, t3, zero
  SB t4, 35(sp)
  LB t3, 21(sp)
  ADD t4, t3, zero
  SB t4, 34(sp)
  LB t3, 20(sp)
  ADD t4, t3, zero
  SB t4, 33(sp)
  LB t3, 19(sp)
  ADD t4, t3, zero
  SB t4, 32(sp)
  LB t3, 18(sp)
  ADD t4, t3, zero
  SB t4, 31(sp)
  LB t3, 17(sp)
  ADD t4, t3, zero
  SB t4, 30(sp)
  LB t3, 16(sp)
  ADD t4, t3, zero
  SB t4, 29(sp)
  LB t3, 15(sp)
  ADD t4, t3, zero
  SB t4, 3(sp)
  LB t4, 0(sp)
  ADD s10, t4, zero
  LB t4, 13(sp)
  ADD s11, t4, zero
  LB t4, 12(sp)
  ADD s2, t4, zero
  LB t4, 11(sp)
  ADD s0, t4, zero
  LB t4, 10(sp)
  ADD s3, t4, zero
  LB t4, 9(sp)
  ADD s5, t4, zero
  LB t4, 8(sp)
  ADD s4, t4, zero
  LB t4, 7(sp)
  ADD s1, t4, zero
  LB t4, 6(sp)
  ADD s6, t4, zero
  JAL zero, bb99
bb201:
  ADDI s0, zero, 1
  JAL zero, bb84
bb202:
  ADDI s2, zero, 57
  SLT s1, s2, s1
  XORI s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb82
bb203:
  LW t4, 104(sp)
  SLLIW s0, t4, 2
  LA s1, get
  ADD s0, s1, s0
  LW t4, 140(sp)
  SW t4, 0(s0)
  LW t4, 104(sp)
  ADDIW s0, t4, 1
  CALL getch
  ADD t4, s0, zero
  SW t4, 132(sp)
  ADD t4, a0, zero
  SW t4, 136(sp)
  JAL zero, bb14
bb204:
  LW t4, 140(sp)
  XORI s1, t4, 10
  SLTU s1, zero, s1
  ADD s0, s1, zero
  JAL zero, bb16
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
  BNE s0, zero, bb207
  # implict jump to bb206
bb206:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb207:
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
  # implict jump to bb210
bb210:
  ADD s3, s1, zero
  ADD s4, s2, zero
  XORI s5, s3, 13
  BNE s5, zero, bb215
  # implict jump to bb211
bb211:
  ADD s5, zero, zero
  # implict jump to bb212
bb212:
  BNE s5, zero, bb214
  # implict jump to bb213
bb213:
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
bb214:
  SLLIW s5, s4, 2
  ADD s5, s0, s5
  SW s3, 0(s5)
  ADDIW s3, s4, 1
  CALL getch
  ADD s2, s3, zero
  ADD s1, a0, zero
  JAL zero, bb210
bb215:
  XORI s6, s3, 10
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb212
isdigit:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD s0, a0, zero
  SLTI s1, s0, 48
  XORI s1, s1, 1
  BNE s1, zero, bb221
  # implict jump to bb217
bb217:
  ADD s1, zero, zero
  # implict jump to bb218
bb218:
  BNE s1, zero, bb220
  # implict jump to bb219
bb219:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb220:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb221:
  ADDI s2, zero, 57
  SLT s0, s2, s0
  XORI s0, s0, 1
  ADD s1, s0, zero
  JAL zero, bb218
