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
  BNE a1, zero, bb6
  # implict jump to bb4
bb4:
  ADDI s1, zero, 1
  # implict jump to bb5
bb5:
  ADD a0, s1, zero
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
bb6:
  ADD s2, a1, zero
  ADDI s3, zero, 1
  # implict jump to bb7
bb7:
  ADD s4, s3, zero
  ADD s5, s2, zero
  MULW s4, s4, s0
  ADDI s6, zero, 1
  SUBW s5, s5, s6
  BNE s5, zero, bb9
  # implict jump to bb8
bb8:
  ADD s1, s4, zero
  JAL zero, bb5
bb9:
  ADD s2, s5, zero
  ADD s3, s4, zero
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
  ADDI sp, sp, -256
  SD ra, 136(sp)
  SD s0, 144(sp)
  SD s1, 152(sp)
  SD s2, 160(sp)
  SD s3, 168(sp)
  SD s4, 176(sp)
  SD s5, 184(sp)
  SD s6, 200(sp)
  SD s10, 208(sp)
  SD s11, 216(sp)
  SD s7, 224(sp)
  SD s8, 232(sp)
  SD s9, 240(sp)
  LA a4, intt
  SW zero, 0(a4)
  LA a4, chat
  SW zero, 0(a4)
  CALL getch
  ADD s6, a0, zero
  ADD t4, zero, zero
  SW t4, 124(sp)
  ADD t4, s6, zero
  SW t4, 120(sp)
  # implict jump to bb12
bb12:
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t4, 116(sp)
  XORI s6, t4, 13
  BNE s6, zero, bb187
  # implict jump to bb13
bb13:
  ADD s6, zero, zero
  # implict jump to bb14
bb14:
  BNE s6, zero, bb186
  # implict jump to bb15
bb15:
  LA s1, i
  LW s1, 0(s1)
  LW t4, 128(sp)
  BLT s1, t4, bb70
  # implict jump to bb16
bb16:
  LA s9, chat
  LW s9, 0(s9)
  BLT zero, s9, bb69
  # implict jump to bb17
bb17:
  LA s9, ii
  LW s9, 0(s9)
  SLLIW s9, s9, 2
  LA s7, get2
  ADD s7, s7, s9
  ADDI s9, zero, 64
  SW s9, 0(s7)
  LA s7, i
  ADDI s9, zero, 1
  SW s9, 0(s7)
  LA s7, i
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  LA s9, get2
  ADD s7, s9, s7
  LW s7, 0(s7)
  XORI s7, s7, 64
  BNE s7, zero, bb19
  # implict jump to bb18
bb18:
  LA s2, ints
  LW s2, 4(s2)
  ADD a0, s2, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 136(sp)
  LD s0, 144(sp)
  LD s1, 152(sp)
  LD s2, 160(sp)
  LD s3, 168(sp)
  LD s4, 176(sp)
  LD s5, 184(sp)
  LD s6, 200(sp)
  LD s10, 208(sp)
  LD s11, 216(sp)
  LD s7, 224(sp)
  LD s8, 232(sp)
  LD s9, 240(sp)
  ADDI sp, sp, 256
  JALR zero, 0(ra)
bb19:
  ADD s7, zero, zero
  ADD s9, zero, zero
  ADD s10, zero, zero
  # implict jump to bb20
bb20:
  ADD s11, s10, zero
  ADD s1, s9, zero
  ADD s2, s7, zero
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s6, get2
  ADD s5, s6, s5
  LW s5, 0(s5)
  XORI s5, s5, 43
  SLTIU s5, s5, 1
  BNE s5, zero, bb68
  # implict jump to bb21
bb21:
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s6, get2
  ADD s5, s6, s5
  LW s5, 0(s5)
  XORI s5, s5, 45
  SLTIU s5, s5, 1
  # implict jump to bb22
bb22:
  BNE s5, zero, bb67
  # implict jump to bb23
bb23:
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s6, get2
  ADD s5, s6, s5
  LW s5, 0(s5)
  XORI s5, s5, 42
  SLTIU s5, s5, 1
  # implict jump to bb24
bb24:
  BNE s5, zero, bb66
  # implict jump to bb25
bb25:
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s6, get2
  ADD s5, s6, s5
  LW s5, 0(s5)
  XORI s5, s5, 47
  SLTIU s5, s5, 1
  # implict jump to bb26
bb26:
  BNE s5, zero, bb65
  # implict jump to bb27
bb27:
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s6, get2
  ADD s5, s6, s5
  LW s5, 0(s5)
  XORI s5, s5, 37
  SLTIU s5, s5, 1
  # implict jump to bb28
bb28:
  BNE s5, zero, bb64
  # implict jump to bb29
bb29:
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s6, get2
  ADD s5, s6, s5
  LW s5, 0(s5)
  XORI s5, s5, 94
  SLTIU s5, s5, 1
  # implict jump to bb30
bb30:
  BNE s5, zero, bb39
  # implict jump to bb31
bb31:
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s6, get2
  ADD s5, s6, s5
  LW s5, 0(s5)
  XORI s5, s5, 32
  BNE s5, zero, bb35
  # implict jump to bb32
bb32:
  ADD s0, s11, zero
  ADD s3, s2, zero
  # implict jump to bb33
bb33:
  LA s2, i
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s5, i
  SW s2, 0(s5)
  LA s2, i
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LA s5, get2
  ADD s2, s5, s2
  LW s2, 0(s2)
  XORI s2, s2, 64
  BNE s2, zero, bb34
  JAL zero, bb18
bb34:
  ADD s7, s3, zero
  ADD s9, s1, zero
  ADD s10, s0, zero
  JAL zero, bb20
bb35:
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s6, get2
  ADD s5, s6, s5
  LW s5, 0(s5)
  ADDI s6, zero, 48
  SUBW s5, s5, s6
  LA s6, intt
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s3, intt
  SW s6, 0(s3)
  SLLIW s3, s6, 2
  LA s6, ints
  ADD s3, s6, s3
  SW s5, 0(s3)
  LA s5, ii
  ADDI s6, zero, 1
  SW s6, 0(s5)
  LA s5, i
  LW s5, 0(s5)
  LA s6, ii
  LW s6, 0(s6)
  ADDW s5, s5, s6
  SLLIW s5, s5, 2
  LA s6, get2
  ADD s5, s6, s5
  LW s5, 0(s5)
  XORI s5, s5, 32
  BNE s5, zero, bb37
  # implict jump to bb36
bb36:
  LA s0, i
  LW s0, 0(s0)
  LA s3, ii
  LW s3, 0(s3)
  ADDW s0, s0, s3
  ADDI s3, zero, 1
  SUBW s0, s0, s3
  LA s3, i
  SW s0, 0(s3)
  JAL zero, bb32
bb37:
  LA s5, i
  LW s5, 0(s5)
  # implict jump to bb38
bb38:
  LA s6, ii
  LW s6, 0(s6)
  ADDW s6, s5, s6
  SLLIW s6, s6, 2
  LA s0, get2
  ADD s0, s0, s6
  LW s0, 0(s0)
  ADDI s6, zero, 48
  SUBW s0, s0, s6
  LW s6, 0(s3)
  ADDI s4, zero, 10
  MULW s4, s6, s4
  SW s4, 0(s3)
  LW s4, 0(s3)
  ADDW s0, s4, s0
  SW s0, 0(s3)
  LA s0, ii
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s4, ii
  SW s0, 0(s4)
  LA s0, i
  LW s0, 0(s0)
  LA s4, ii
  LW s4, 0(s4)
  ADDW s0, s0, s4
  SLLIW s0, s0, 2
  LA s4, get2
  ADD s0, s4, s0
  LW s0, 0(s0)
  XORI s0, s0, 32
  BNE s0, zero, bb38
  JAL zero, bb36
bb39:
  LA s4, intt
  LW s4, 0(s4)
  ADDI s5, zero, 1
  SUBW s5, s4, s5
  LA s6, intt
  SW s5, 0(s6)
  SLLIW s6, s4, 2
  LA s11, ints
  ADD s6, s11, s6
  LW t4, 0(s6)
  SW t4, 108(sp)
  ADDI s11, zero, 2
  SUBW s4, s4, s11
  LA s11, intt
  SW s4, 0(s11)
  SLLIW s4, s5, 2
  LA s5, ints
  ADD s4, s5, s4
  LW t4, 0(s4)
  SW t4, 104(sp)
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s11, get2
  ADD s5, s11, s5
  LW s5, 0(s5)
  XORI s5, s5, 43
  SLTIU s5, s5, 1
  BNE s5, zero, bb63
  # implict jump to bb40
bb40:
  # implict jump to bb41
bb41:
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s11, get2
  ADD s5, s11, s5
  LW s5, 0(s5)
  XORI s5, s5, 45
  SLTIU s5, s5, 1
  BNE s5, zero, bb62
  # implict jump to bb42
bb42:
  # implict jump to bb43
bb43:
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s11, get2
  ADD s5, s11, s5
  LW s5, 0(s5)
  XORI s5, s5, 42
  SLTIU s5, s5, 1
  BNE s5, zero, bb61
  # implict jump to bb44
bb44:
  # implict jump to bb45
bb45:
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s11, get2
  ADD s5, s11, s5
  LW s5, 0(s5)
  XORI s5, s5, 47
  SLTIU s5, s5, 1
  BNE s5, zero, bb60
  # implict jump to bb46
bb46:
  # implict jump to bb47
bb47:
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s11, get2
  ADD s5, s11, s5
  LW s5, 0(s5)
  XORI s5, s5, 37
  SLTIU s5, s5, 1
  BNE s5, zero, bb59
  # implict jump to bb48
bb48:
  # implict jump to bb49
bb49:
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s11, get2
  ADD s5, s11, s5
  LW s5, 0(s5)
  XORI s5, s5, 94
  SLTIU s5, s5, 1
  BNE s5, zero, bb52
  # implict jump to bb50
bb50:
  # implict jump to bb51
bb51:
  LA s5, intt
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s8, intt
  SW s5, 0(s8)
  SLLIW s5, s5, 2
  LA s8, ints
  ADD s5, s8, s5
  SW s2, 0(s5)
  LW t4, 108(sp)
  ADD s0, t4, zero
  LW t4, 104(sp)
  ADD s1, t4, zero
  ADD s3, s2, zero
  JAL zero, bb33
bb52:
  LW t4, 108(sp)
  BNE t4, zero, bb55
  # implict jump to bb53
bb53:
  ADDI s5, zero, 1
  # implict jump to bb54
bb54:
  ADD s2, s5, zero
  JAL zero, bb51
bb55:
  LW t4, 108(sp)
  ADD s11, t4, zero
  ADDI t4, zero, 1
  SW t4, 96(sp)
  # implict jump to bb56
bb56:
  LW t4, 96(sp)
  ADD s4, t4, zero
  ADD s6, s11, zero
  LW t4, 104(sp)
  MULW s4, s4, t4
  ADDI s8, zero, 1
  SUBW s6, s6, s8
  BNE s6, zero, bb58
  # implict jump to bb57
bb57:
  ADD s5, s4, zero
  JAL zero, bb54
bb58:
  ADD s11, s6, zero
  ADD t4, s4, zero
  SW t4, 96(sp)
  JAL zero, bb56
bb59:
  LW t4, 104(sp)
  LW t3, 108(sp)
  REMW s5, t4, t3
  ADD s2, s5, zero
  JAL zero, bb49
bb60:
  LW t4, 104(sp)
  LW t3, 108(sp)
  DIVW s5, t4, t3
  ADD s2, s5, zero
  JAL zero, bb47
bb61:
  LW t4, 108(sp)
  LW t3, 104(sp)
  MULW s5, t4, t3
  ADD s2, s5, zero
  JAL zero, bb45
bb62:
  LW t4, 104(sp)
  LW t3, 108(sp)
  SUBW s5, t4, t3
  ADD s2, s5, zero
  JAL zero, bb43
bb63:
  LW t4, 108(sp)
  LW t3, 104(sp)
  ADDW s5, t4, t3
  ADD s2, s5, zero
  JAL zero, bb41
bb64:
  ADDI s5, zero, 1
  JAL zero, bb30
bb65:
  ADDI s5, zero, 1
  JAL zero, bb28
bb66:
  ADDI s5, zero, 1
  JAL zero, bb26
bb67:
  ADDI s5, zero, 1
  JAL zero, bb24
bb68:
  ADDI s5, zero, 1
  JAL zero, bb22
bb69:
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
  JAL zero, bb16
bb70:
  ADD t4, s1, zero
  SW t4, 112(sp)
  ADD t4, zero, zero
  SB t4, 88(sp)
  ADD t4, zero, zero
  SB t4, 60(sp)
  ADD t4, zero, zero
  SB t4, 59(sp)
  ADD t4, zero, zero
  SB t4, 58(sp)
  ADD t4, zero, zero
  SB t4, 57(sp)
  ADD t4, zero, zero
  SB t4, 56(sp)
  ADD t4, zero, zero
  SB t4, 55(sp)
  ADD t4, zero, zero
  SB t4, 54(sp)
  ADD t4, zero, zero
  SB t4, 53(sp)
  ADD t4, zero, zero
  SB t4, 52(sp)
  ADD t4, zero, zero
  SB t4, 51(sp)
  ADD t4, zero, zero
  SB t4, 95(sp)
  ADD t4, zero, zero
  SB t4, 74(sp)
  ADD t4, zero, zero
  SB t4, 94(sp)
  ADD t4, zero, zero
  SB t4, 93(sp)
  ADD t4, zero, zero
  SB t4, 92(sp)
  ADD t4, zero, zero
  SB t4, 91(sp)
  ADD t4, zero, zero
  SB t4, 90(sp)
  ADD t4, zero, zero
  SB t4, 89(sp)
  # implict jump to bb71
bb71:
  LB t3, 89(sp)
  ADD t4, t3, zero
  SB t4, 20(sp)
  LB t3, 90(sp)
  ADD t4, t3, zero
  SB t4, 21(sp)
  LB t3, 91(sp)
  ADD t4, t3, zero
  SB t4, 86(sp)
  LB t3, 92(sp)
  ADD t4, t3, zero
  SB t4, 85(sp)
  LB t3, 93(sp)
  ADD t4, t3, zero
  SB t4, 84(sp)
  LB t3, 94(sp)
  ADD t4, t3, zero
  SB t4, 83(sp)
  LB t3, 74(sp)
  ADD t4, t3, zero
  SB t4, 82(sp)
  LB t3, 95(sp)
  ADD t4, t3, zero
  SB t4, 81(sp)
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
  SB t4, 62(sp)
  LB t3, 58(sp)
  ADD t4, t3, zero
  SB t4, 38(sp)
  LB t3, 59(sp)
  ADD t4, t3, zero
  SB t4, 24(sp)
  LB t3, 60(sp)
  ADD t4, t3, zero
  SB t4, 23(sp)
  LB t3, 88(sp)
  ADD t4, t3, zero
  SB t4, 22(sp)
  LW t4, 112(sp)
  ADD s1, t4, zero
  SLLIW s1, s1, 2
  LA s6, get
  ADD t4, s6, s1
  SD t4, 192(sp)
  LD t4, 192(sp)
  LW s6, 0(t4)
  SLTI s1, s6, 48
  XORI s1, s1, 1
  BNE s1, zero, bb185
  # implict jump to bb72
bb72:
  ADD s1, zero, zero
  # implict jump to bb73
bb73:
  BNE s1, zero, bb184
  # implict jump to bb74
bb74:
  ADD s1, zero, zero
  # implict jump to bb75
bb75:
  XORI s1, s1, 1
  SLTIU s1, s1, 1
  BNE s1, zero, bb183
  # implict jump to bb76
bb76:
  LD t4, 192(sp)
  LW s1, 0(t4)
  XORI s1, s1, 40
  SLTIU s1, s1, 1
  BNE s1, zero, bb182
  # implict jump to bb77
bb77:
  LD t4, 192(sp)
  LW s1, 0(t4)
  XORI s1, s1, 94
  SLTIU s1, s1, 1
  BNE s1, zero, bb181
  # implict jump to bb78
bb78:
  LD t4, 192(sp)
  LW s1, 0(t4)
  XORI s1, s1, 41
  SLTIU s1, s1, 1
  BNE s1, zero, bb179
  # implict jump to bb79
bb79:
  LD t4, 192(sp)
  LW s1, 0(t4)
  XORI s1, s1, 43
  SLTIU s1, s1, 1
  BNE s1, zero, bb158
  # implict jump to bb80
bb80:
  LB t3, 84(sp)
  ADD t4, t3, zero
  SB t4, 0(sp)
  LB t3, 81(sp)
  ADD t4, t3, zero
  SB t4, 12(sp)
  LB t3, 75(sp)
  ADD t4, t3, zero
  SB t4, 11(sp)
  LB t4, 23(sp)
  ADD s7, t4, zero
  LB t4, 22(sp)
  ADD s2, t4, zero
  # implict jump to bb81
bb81:
  ADD t4, s2, zero
  SB t4, 10(sp)
  ADD t4, s7, zero
  SB t4, 9(sp)
  LB t3, 11(sp)
  ADD t4, t3, zero
  SB t4, 8(sp)
  LB t3, 12(sp)
  ADD t4, t3, zero
  SB t4, 49(sp)
  LB t4, 0(sp)
  ADD s3, t4, zero
  LD t4, 192(sp)
  LW s4, 0(t4)
  XORI s4, s4, 45
  SLTIU s4, s4, 1
  BNE s4, zero, bb137
  # implict jump to bb82
bb82:
  LB t4, 82(sp)
  ADD s4, t4, zero
  LB t4, 76(sp)
  ADD s5, t4, zero
  LB t4, 62(sp)
  ADD s6, t4, zero
  LB t4, 38(sp)
  ADD s8, t4, zero
  LB t4, 24(sp)
  ADD s9, t4, zero
  # implict jump to bb83
bb83:
  ADD t4, s9, zero
  SB t4, 7(sp)
  ADD t4, s8, zero
  SB t4, 6(sp)
  ADD t4, s6, zero
  SB t4, 5(sp)
  ADD t4, s5, zero
  SB t4, 4(sp)
  LD t4, 192(sp)
  LW s0, 0(t4)
  XORI s0, s0, 42
  SLTIU s0, s0, 1
  BNE s0, zero, bb122
  # implict jump to bb84
bb84:
  LB t4, 83(sp)
  ADD s0, t4, zero
  LB t4, 78(sp)
  ADD s2, t4, zero
  LB t4, 77(sp)
  ADD s7, t4, zero
  # implict jump to bb85
bb85:
  ADD t4, s7, zero
  SB t4, 3(sp)
  ADD t4, s2, zero
  SB t4, 2(sp)
  LD t4, 192(sp)
  LW s6, 0(t4)
  XORI s6, s6, 47
  SLTIU s6, s6, 1
  BNE s6, zero, bb107
  # implict jump to bb86
bb86:
  LB t4, 20(sp)
  ADD s6, t4, zero
  LB t4, 80(sp)
  ADD s8, t4, zero
  LB t4, 79(sp)
  ADD s9, t4, zero
  # implict jump to bb87
bb87:
  ADD t4, s9, zero
  SB t4, 1(sp)
  ADD t4, s8, zero
  SB t4, 13(sp)
  LD t4, 192(sp)
  LW s2, 0(t4)
  XORI s2, s2, 37
  SLTIU s2, s2, 1
  BNE s2, zero, bb92
  # implict jump to bb88
bb88:
  LB t4, 21(sp)
  ADD s2, t4, zero
  LB t4, 86(sp)
  ADD s5, t4, zero
  LB t4, 85(sp)
  ADD s7, t4, zero
  # implict jump to bb89
bb89:
  LA s1, ii
  LW s1, 0(s1)
  SLLIW s8, s1, 2
  LA s9, get2
  ADD s8, s9, s8
  ADDI s9, zero, 32
  SW s9, 0(s8)
  ADDIW s1, s1, 1
  LA s8, ii
  SW s1, 0(s8)
  ADD t4, s6, zero
  SB t4, 48(sp)
  ADD t4, s2, zero
  SB t4, 47(sp)
  ADD t4, s5, zero
  SB t4, 46(sp)
  ADD t4, s7, zero
  SB t4, 45(sp)
  ADD t4, s3, zero
  SB t4, 44(sp)
  ADD t4, s0, zero
  SB t4, 43(sp)
  ADD t4, s4, zero
  SB t4, 42(sp)
  LB t3, 49(sp)
  ADD t4, t3, zero
  SB t4, 41(sp)
  LB t3, 13(sp)
  ADD t4, t3, zero
  SB t4, 40(sp)
  LB t3, 1(sp)
  ADD t4, t3, zero
  SB t4, 39(sp)
  LB t4, 2(sp)
  ADD s10, t4, zero
  LB t4, 3(sp)
  ADD s11, t4, zero
  LB t4, 4(sp)
  ADD s1, t4, zero
  LB t4, 8(sp)
  ADD s2, t4, zero
  LB t4, 5(sp)
  ADD s5, t4, zero
  LB t4, 6(sp)
  ADD s6, t4, zero
  LB t4, 7(sp)
  ADD s3, t4, zero
  LB t4, 9(sp)
  ADD s0, t4, zero
  LB t4, 10(sp)
  ADD s4, t4, zero
  # implict jump to bb90
bb90:
  ADD t4, s4, zero
  SB t4, 65(sp)
  ADD t4, s0, zero
  SB t4, 64(sp)
  ADD t4, s3, zero
  SB t4, 63(sp)
  ADD t4, s6, zero
  SB t4, 50(sp)
  ADD t4, s5, zero
  SB t4, 87(sp)
  ADD t4, s2, zero
  SB t4, 19(sp)
  ADD t4, s1, zero
  SB t4, 26(sp)
  ADD t4, s11, zero
  SB t4, 27(sp)
  ADD t4, s10, zero
  SB t4, 28(sp)
  LB t3, 39(sp)
  ADD t4, t3, zero
  SB t4, 29(sp)
  LB t3, 40(sp)
  ADD t4, t3, zero
  SB t4, 30(sp)
  LB t3, 41(sp)
  ADD t4, t3, zero
  SB t4, 31(sp)
  LB t3, 42(sp)
  ADD t4, t3, zero
  SB t4, 25(sp)
  LB t3, 43(sp)
  ADD t4, t3, zero
  SB t4, 37(sp)
  LB t3, 44(sp)
  ADD t4, t3, zero
  SB t4, 36(sp)
  LB t3, 45(sp)
  ADD t4, t3, zero
  SB t4, 35(sp)
  LB t3, 46(sp)
  ADD t4, t3, zero
  SB t4, 34(sp)
  LB t3, 47(sp)
  ADD t4, t3, zero
  SB t4, 33(sp)
  LB t3, 48(sp)
  ADD t4, t3, zero
  SB t4, 32(sp)
  LA s9, i
  LW s9, 0(s9)
  ADDIW s9, s9, 1
  LA s8, i
  SW s9, 0(s8)
  LA s8, i
  LW t4, 0(s8)
  SW t4, 100(sp)
  LW t4, 100(sp)
  LW t3, 128(sp)
  BLT t4, t3, bb91
  JAL zero, bb16
bb91:
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LB t3, 65(sp)
  ADD t4, t3, zero
  SB t4, 88(sp)
  LB t3, 64(sp)
  ADD t4, t3, zero
  SB t4, 60(sp)
  LB t3, 63(sp)
  ADD t4, t3, zero
  SB t4, 59(sp)
  LB t3, 50(sp)
  ADD t4, t3, zero
  SB t4, 58(sp)
  LB t3, 87(sp)
  ADD t4, t3, zero
  SB t4, 57(sp)
  LB t3, 19(sp)
  ADD t4, t3, zero
  SB t4, 56(sp)
  LB t3, 26(sp)
  ADD t4, t3, zero
  SB t4, 55(sp)
  LB t3, 27(sp)
  ADD t4, t3, zero
  SB t4, 54(sp)
  LB t3, 28(sp)
  ADD t4, t3, zero
  SB t4, 53(sp)
  LB t3, 29(sp)
  ADD t4, t3, zero
  SB t4, 52(sp)
  LB t3, 30(sp)
  ADD t4, t3, zero
  SB t4, 51(sp)
  LB t3, 31(sp)
  ADD t4, t3, zero
  SB t4, 95(sp)
  LB t3, 25(sp)
  ADD t4, t3, zero
  SB t4, 74(sp)
  LB t3, 37(sp)
  ADD t4, t3, zero
  SB t4, 94(sp)
  LB t3, 36(sp)
  ADD t4, t3, zero
  SB t4, 93(sp)
  LB t3, 35(sp)
  ADD t4, t3, zero
  SB t4, 92(sp)
  LB t3, 34(sp)
  ADD t4, t3, zero
  SB t4, 91(sp)
  LB t3, 33(sp)
  ADD t4, t3, zero
  SB t4, 90(sp)
  LB t3, 32(sp)
  ADD t4, t3, zero
  SB t4, 89(sp)
  JAL zero, bb71
bb92:
  LA s10, chat
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, chas
  ADD s10, s11, s10
  LW s11, 0(s10)
  XORI s11, s11, 42
  SLTIU s11, s11, 1
  BNE s11, zero, bb106
  # implict jump to bb93
bb93:
  LW s11, 0(s10)
  XORI s11, s11, 47
  SLTIU s11, s11, 1
  # implict jump to bb94
bb94:
  ADD t4, s11, zero
  SB t4, 72(sp)
  LB t4, 72(sp)
  BNE t4, zero, bb105
  # implict jump to bb95
bb95:
  LW s11, 0(s10)
  XORI s11, s11, 37
  SLTIU s11, s11, 1
  # implict jump to bb96
bb96:
  ADD t4, s11, zero
  SB t4, 73(sp)
  LB t4, 73(sp)
  BNE t4, zero, bb104
  # implict jump to bb97
bb97:
  LW s10, 0(s10)
  XORI s10, s10, 94
  SLTIU s10, s10, 1
  # implict jump to bb98
bb98:
  ADD t4, s10, zero
  SB t4, 61(sp)
  LB t4, 61(sp)
  BNE t4, zero, bb100
  # implict jump to bb99
bb99:
  LA s1, chat
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s8, chat
  SW s1, 0(s8)
  SLLIW s1, s1, 2
  LA s8, chas
  ADD s1, s8, s1
  ADDI s8, zero, 37
  SW s8, 0(s1)
  LB t4, 72(sp)
  ADD s2, t4, zero
  LB t4, 73(sp)
  ADD s5, t4, zero
  LB t4, 61(sp)
  ADD s7, t4, zero
  JAL zero, bb89
bb100:
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
  SLLIW s8, s10, 2
  LA s1, get2
  ADD s1, s1, s8
  ADDI s8, zero, 32
  SW s8, 0(s1)
  ADDIW s1, s10, 1
  SLLIW s1, s1, 2
  LA s8, get2
  ADD s1, s8, s1
  SW s9, 0(s1)
  ADDIW s1, s10, 2
  LA s8, ii
  SW s1, 0(s8)
  SLTIU s1, s11, 1
  BNE s1, zero, bb103
  # implict jump to bb101
bb101:
  ADDI s1, zero, 1
  # implict jump to bb102
bb102:
  SLTIU s1, s1, 1
  BNE s1, zero, bb99
  JAL zero, bb92
bb103:
  ADD s1, zero, zero
  JAL zero, bb102
bb104:
  ADDI s10, zero, 1
  JAL zero, bb98
bb105:
  ADDI s11, zero, 1
  JAL zero, bb96
bb106:
  ADDI s11, zero, 1
  JAL zero, bb94
bb107:
  LA s10, chat
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, chas
  ADD s10, s11, s10
  LW s11, 0(s10)
  XORI s11, s11, 42
  SLTIU s11, s11, 1
  BNE s11, zero, bb121
  # implict jump to bb108
bb108:
  LW s11, 0(s10)
  XORI s11, s11, 47
  SLTIU s11, s11, 1
  # implict jump to bb109
bb109:
  ADD t4, s11, zero
  SB t4, 71(sp)
  LB t4, 71(sp)
  BNE t4, zero, bb120
  # implict jump to bb110
bb110:
  LW s11, 0(s10)
  XORI s11, s11, 37
  SLTIU s11, s11, 1
  # implict jump to bb111
bb111:
  ADD t4, s11, zero
  SB t4, 69(sp)
  LB t4, 69(sp)
  BNE t4, zero, bb119
  # implict jump to bb112
bb112:
  LW s10, 0(s10)
  XORI s10, s10, 94
  SLTIU s10, s10, 1
  # implict jump to bb113
bb113:
  ADD t4, s10, zero
  SB t4, 68(sp)
  LB t4, 68(sp)
  BNE t4, zero, bb115
  # implict jump to bb114
bb114:
  LA s2, chat
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s5, chat
  SW s2, 0(s5)
  SLLIW s2, s2, 2
  LA s5, chas
  ADD s2, s5, s2
  ADDI s5, zero, 47
  SW s5, 0(s2)
  LB t4, 68(sp)
  ADD s6, t4, zero
  LB t4, 69(sp)
  ADD s8, t4, zero
  LB t4, 71(sp)
  ADD s9, t4, zero
  JAL zero, bb87
bb115:
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
  SLLIW s7, s10, 2
  LA s2, get2
  ADD s2, s2, s7
  ADDI s7, zero, 32
  SW s7, 0(s2)
  ADDIW s2, s10, 1
  SLLIW s2, s2, 2
  LA s7, get2
  ADD s2, s7, s2
  SW s5, 0(s2)
  ADDIW s2, s10, 2
  LA s5, ii
  SW s2, 0(s5)
  SLTIU s2, s11, 1
  BNE s2, zero, bb118
  # implict jump to bb116
bb116:
  ADDI s2, zero, 1
  # implict jump to bb117
bb117:
  SLTIU s2, s2, 1
  BNE s2, zero, bb114
  JAL zero, bb107
bb118:
  ADD s2, zero, zero
  JAL zero, bb117
bb119:
  ADDI s10, zero, 1
  JAL zero, bb113
bb120:
  ADDI s11, zero, 1
  JAL zero, bb111
bb121:
  ADDI s11, zero, 1
  JAL zero, bb109
bb122:
  LA s10, chat
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, chas
  ADD s10, s11, s10
  LW s11, 0(s10)
  XORI s11, s11, 42
  SLTIU s11, s11, 1
  BNE s11, zero, bb136
  # implict jump to bb123
bb123:
  LW s11, 0(s10)
  XORI s11, s11, 47
  SLTIU s11, s11, 1
  # implict jump to bb124
bb124:
  ADD t4, s11, zero
  SB t4, 70(sp)
  LB t4, 70(sp)
  BNE t4, zero, bb135
  # implict jump to bb125
bb125:
  LW s11, 0(s10)
  XORI s11, s11, 37
  SLTIU s11, s11, 1
  # implict jump to bb126
bb126:
  ADD t4, s11, zero
  SB t4, 67(sp)
  LB t4, 67(sp)
  BNE t4, zero, bb134
  # implict jump to bb127
bb127:
  LW s10, 0(s10)
  XORI s10, s10, 94
  SLTIU s10, s10, 1
  # implict jump to bb128
bb128:
  ADD t4, s10, zero
  SB t4, 18(sp)
  LB t4, 18(sp)
  BNE t4, zero, bb130
  # implict jump to bb129
bb129:
  LA s6, chat
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s8, chat
  SW s6, 0(s8)
  SLLIW s6, s6, 2
  LA s8, chas
  ADD s6, s8, s6
  ADDI s8, zero, 42
  SW s8, 0(s6)
  LB t4, 70(sp)
  ADD s0, t4, zero
  LB t4, 18(sp)
  ADD s2, t4, zero
  LB t4, 67(sp)
  ADD s7, t4, zero
  JAL zero, bb85
bb130:
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
  SLLIW s8, s10, 2
  LA s6, get2
  ADD s6, s6, s8
  ADDI s8, zero, 32
  SW s8, 0(s6)
  ADDIW s6, s10, 1
  SLLIW s6, s6, 2
  LA s8, get2
  ADD s6, s8, s6
  SW s9, 0(s6)
  ADDIW s6, s10, 2
  LA s8, ii
  SW s6, 0(s8)
  SLTIU s6, s11, 1
  BNE s6, zero, bb133
  # implict jump to bb131
bb131:
  ADDI s6, zero, 1
  # implict jump to bb132
bb132:
  SLTIU s6, s6, 1
  BNE s6, zero, bb129
  JAL zero, bb122
bb133:
  ADD s6, zero, zero
  JAL zero, bb132
bb134:
  ADDI s10, zero, 1
  JAL zero, bb128
bb135:
  ADDI s11, zero, 1
  JAL zero, bb126
bb136:
  ADDI s11, zero, 1
  JAL zero, bb124
bb137:
  LA s10, chat
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, chas
  ADD s10, s11, s10
  LW s11, 0(s10)
  XORI s11, s11, 43
  SLTIU s11, s11, 1
  BNE s11, zero, bb157
  # implict jump to bb138
bb138:
  LW s11, 0(s10)
  XORI s11, s11, 45
  SLTIU s11, s11, 1
  # implict jump to bb139
bb139:
  ADD t4, s11, zero
  SB t4, 66(sp)
  LB t4, 66(sp)
  BNE t4, zero, bb156
  # implict jump to bb140
bb140:
  LW s11, 0(s10)
  XORI s11, s11, 42
  SLTIU s11, s11, 1
  # implict jump to bb141
bb141:
  ADD t4, s11, zero
  SB t4, 14(sp)
  LB t4, 14(sp)
  BNE t4, zero, bb155
  # implict jump to bb142
bb142:
  LW s11, 0(s10)
  XORI s11, s11, 47
  SLTIU s11, s11, 1
  # implict jump to bb143
bb143:
  ADD t4, s11, zero
  SB t4, 17(sp)
  LB t4, 17(sp)
  BNE t4, zero, bb154
  # implict jump to bb144
bb144:
  LW s11, 0(s10)
  XORI s11, s11, 37
  SLTIU s11, s11, 1
  # implict jump to bb145
bb145:
  ADD t4, s11, zero
  SB t4, 16(sp)
  LB t4, 16(sp)
  BNE t4, zero, bb153
  # implict jump to bb146
bb146:
  LW s10, 0(s10)
  XORI s10, s10, 94
  SLTIU s10, s10, 1
  # implict jump to bb147
bb147:
  ADD t4, s10, zero
  SB t4, 15(sp)
  LB t4, 15(sp)
  BNE t4, zero, bb149
  # implict jump to bb148
bb148:
  LA s0, chat
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s2, chat
  SW s0, 0(s2)
  SLLIW s0, s0, 2
  LA s2, chas
  ADD s0, s2, s0
  ADDI s2, zero, 45
  SW s2, 0(s0)
  LB t4, 14(sp)
  ADD s4, t4, zero
  LB t4, 15(sp)
  ADD s5, t4, zero
  LB t4, 16(sp)
  ADD s6, t4, zero
  LB t4, 17(sp)
  ADD s8, t4, zero
  LB t4, 66(sp)
  ADD s9, t4, zero
  JAL zero, bb83
bb149:
  LA s10, chat
  LW s10, 0(s10)
  ADDI s11, zero, 1
  SUBW s11, s10, s11
  LA s2, chat
  SW s11, 0(s2)
  SLLIW s2, s10, 2
  LA s10, chas
  ADD s2, s10, s2
  LW s2, 0(s2)
  LA s10, c
  SW s2, 0(s10)
  LA s10, ii
  LW s10, 0(s10)
  SLLIW s7, s10, 2
  LA s0, get2
  ADD s0, s0, s7
  ADDI s7, zero, 32
  SW s7, 0(s0)
  ADDIW s0, s10, 1
  SLLIW s0, s0, 2
  LA s7, get2
  ADD s0, s7, s0
  SW s2, 0(s0)
  ADDIW s0, s10, 2
  LA s2, ii
  SW s0, 0(s2)
  SLTIU s0, s11, 1
  BNE s0, zero, bb152
  # implict jump to bb150
bb150:
  ADDI s0, zero, 1
  # implict jump to bb151
bb151:
  SLTIU s0, s0, 1
  BNE s0, zero, bb148
  JAL zero, bb137
bb152:
  ADD s0, zero, zero
  JAL zero, bb151
bb153:
  ADDI s10, zero, 1
  JAL zero, bb147
bb154:
  ADDI s11, zero, 1
  JAL zero, bb145
bb155:
  ADDI s11, zero, 1
  JAL zero, bb143
bb156:
  ADDI s11, zero, 1
  JAL zero, bb141
bb157:
  ADDI s11, zero, 1
  JAL zero, bb139
bb158:
  LA s8, chat
  LW s8, 0(s8)
  SLLIW s8, s8, 2
  LA s3, chas
  ADD s3, s3, s8
  LW s8, 0(s3)
  XORI s8, s8, 43
  SLTIU s8, s8, 1
  BNE s8, zero, bb178
  # implict jump to bb159
bb159:
  LW s8, 0(s3)
  XORI s8, s8, 45
  SLTIU s8, s8, 1
  # implict jump to bb160
bb160:
  ADD s0, s8, zero
  BNE s0, zero, bb177
  # implict jump to bb161
bb161:
  LW s8, 0(s3)
  XORI s8, s8, 42
  SLTIU s8, s8, 1
  # implict jump to bb162
bb162:
  ADD s9, s8, zero
  BNE s9, zero, bb176
  # implict jump to bb163
bb163:
  LW s8, 0(s3)
  XORI s8, s8, 47
  SLTIU s8, s8, 1
  # implict jump to bb164
bb164:
  ADD s10, s8, zero
  BNE s10, zero, bb175
  # implict jump to bb165
bb165:
  LW s8, 0(s3)
  XORI s8, s8, 37
  SLTIU s8, s8, 1
  # implict jump to bb166
bb166:
  ADD s5, s8, zero
  BNE s5, zero, bb174
  # implict jump to bb167
bb167:
  LW s3, 0(s3)
  XORI s3, s3, 94
  SLTIU s3, s3, 1
  # implict jump to bb168
bb168:
  ADD s4, s3, zero
  BNE s4, zero, bb170
  # implict jump to bb169
bb169:
  LA s1, chat
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s3, chat
  SW s1, 0(s3)
  SLLIW s1, s1, 2
  LA s3, chas
  ADD s1, s3, s1
  ADDI s3, zero, 43
  SW s3, 0(s1)
  ADD t4, s5, zero
  SB t4, 0(sp)
  ADD t4, s9, zero
  SB t4, 12(sp)
  ADD t4, s0, zero
  SB t4, 11(sp)
  ADD s7, s4, zero
  ADD s2, s10, zero
  JAL zero, bb81
bb170:
  LA s3, chat
  LW s3, 0(s3)
  ADDI s8, zero, 1
  SUBW s8, s3, s8
  LA s1, chat
  SW s8, 0(s1)
  SLLIW s1, s3, 2
  LA s3, chas
  ADD s1, s3, s1
  LW s1, 0(s1)
  LA s3, c
  SW s1, 0(s3)
  LA s3, ii
  LW s3, 0(s3)
  SLLIW s6, s3, 2
  LA s11, get2
  ADD s6, s11, s6
  ADDI s11, zero, 32
  SW s11, 0(s6)
  ADDIW s6, s3, 1
  SLLIW s6, s6, 2
  LA s11, get2
  ADD s6, s11, s6
  SW s1, 0(s6)
  ADDIW s1, s3, 2
  LA s3, ii
  SW s1, 0(s3)
  SLTIU s1, s8, 1
  BNE s1, zero, bb173
  # implict jump to bb171
bb171:
  ADDI s1, zero, 1
  # implict jump to bb172
bb172:
  SLTIU s1, s1, 1
  BNE s1, zero, bb169
  JAL zero, bb158
bb173:
  ADD s1, zero, zero
  JAL zero, bb172
bb174:
  ADDI s3, zero, 1
  JAL zero, bb168
bb175:
  ADDI s8, zero, 1
  JAL zero, bb166
bb176:
  ADDI s8, zero, 1
  JAL zero, bb164
bb177:
  ADDI s8, zero, 1
  JAL zero, bb162
bb178:
  ADDI s8, zero, 1
  JAL zero, bb160
bb179:
  LA s1, chat
  LW s1, 0(s1)
  ADDI s6, zero, 1
  SUBW s6, s1, s6
  LA s11, chat
  SW s6, 0(s11)
  SLLIW s1, s1, 2
  LA s6, chas
  ADD s1, s6, s1
  LW s1, 0(s1)
  LA s6, c
  SW s1, 0(s6)
  LA s1, c
  LW s1, 0(s1)
  XORI s1, s1, 40
  BNE s1, zero, bb180
  JAL zero, bb79
bb180:
  LA s1, ii
  LW s1, 0(s1)
  SLLIW s6, s1, 2
  LA s11, get2
  ADD s6, s11, s6
  ADDI s11, zero, 32
  SW s11, 0(s6)
  ADDIW s6, s1, 1
  SLLIW s6, s6, 2
  LA s11, get2
  ADD s6, s11, s6
  LA s11, c
  LW s11, 0(s11)
  SW s11, 0(s6)
  ADDIW s1, s1, 2
  LA s6, ii
  SW s1, 0(s6)
  LA s1, chat
  LW s1, 0(s1)
  ADDI s6, zero, 1
  SUBW s6, s1, s6
  LA s11, chat
  SW s6, 0(s11)
  SLLIW s1, s1, 2
  LA s6, chas
  ADD s1, s6, s1
  LW s1, 0(s1)
  LA s6, c
  SW s1, 0(s6)
  LA s1, c
  LW s1, 0(s1)
  XORI s1, s1, 40
  BNE s1, zero, bb180
  JAL zero, bb79
bb181:
  LA s1, chat
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s6, chat
  SW s1, 0(s6)
  SLLIW s1, s1, 2
  LA s6, chas
  ADD s1, s6, s1
  ADDI s6, zero, 94
  SW s6, 0(s1)
  JAL zero, bb78
bb182:
  LA s1, chat
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s6, chat
  SW s1, 0(s6)
  SLLIW s1, s1, 2
  LA s6, chas
  ADD s1, s6, s1
  ADDI s6, zero, 40
  SW s6, 0(s1)
  JAL zero, bb77
bb183:
  LA s7, ii
  LW s7, 0(s7)
  SLLIW s8, s7, 2
  LA s9, get2
  ADD s8, s9, s8
  LD t4, 192(sp)
  LW s9, 0(t4)
  SW s9, 0(s8)
  ADDIW s7, s7, 1
  LA s8, ii
  SW s7, 0(s8)
  LB t3, 20(sp)
  ADD t4, t3, zero
  SB t4, 48(sp)
  LB t3, 21(sp)
  ADD t4, t3, zero
  SB t4, 47(sp)
  LB t3, 86(sp)
  ADD t4, t3, zero
  SB t4, 46(sp)
  LB t3, 85(sp)
  ADD t4, t3, zero
  SB t4, 45(sp)
  LB t3, 84(sp)
  ADD t4, t3, zero
  SB t4, 44(sp)
  LB t3, 83(sp)
  ADD t4, t3, zero
  SB t4, 43(sp)
  LB t3, 82(sp)
  ADD t4, t3, zero
  SB t4, 42(sp)
  LB t3, 81(sp)
  ADD t4, t3, zero
  SB t4, 41(sp)
  LB t3, 80(sp)
  ADD t4, t3, zero
  SB t4, 40(sp)
  LB t3, 79(sp)
  ADD t4, t3, zero
  SB t4, 39(sp)
  LB t4, 78(sp)
  ADD s10, t4, zero
  LB t4, 77(sp)
  ADD s11, t4, zero
  LB t4, 76(sp)
  ADD s1, t4, zero
  LB t4, 75(sp)
  ADD s2, t4, zero
  LB t4, 62(sp)
  ADD s5, t4, zero
  LB t4, 38(sp)
  ADD s6, t4, zero
  LB t4, 24(sp)
  ADD s3, t4, zero
  LB t4, 23(sp)
  ADD s0, t4, zero
  LB t4, 22(sp)
  ADD s4, t4, zero
  JAL zero, bb90
bb184:
  ADDI s1, zero, 1
  JAL zero, bb75
bb185:
  ADDI s11, zero, 57
  SLT s6, s11, s6
  XORI s6, s6, 1
  ADD s1, s6, zero
  JAL zero, bb73
bb186:
  LW t4, 128(sp)
  SLLIW s0, t4, 2
  LA s1, get
  ADD s0, s1, s0
  LW t4, 116(sp)
  SW t4, 0(s0)
  LW t4, 128(sp)
  ADDIW s0, t4, 1
  CALL getch
  ADD t4, s0, zero
  SW t4, 124(sp)
  ADD t4, a0, zero
  SW t4, 120(sp)
  JAL zero, bb12
bb187:
  LW t4, 116(sp)
  XORI s1, t4, 10
  SLTU s1, zero, s1
  ADD s6, s1, zero
  JAL zero, bb14
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
  BNE s0, zero, bb190
  # implict jump to bb189
bb189:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb190:
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
  # implict jump to bb193
bb193:
  ADD s3, s1, zero
  ADD s4, s2, zero
  XORI s5, s3, 13
  BNE s5, zero, bb198
  # implict jump to bb194
bb194:
  ADD s5, zero, zero
  # implict jump to bb195
bb195:
  BNE s5, zero, bb197
  # implict jump to bb196
bb196:
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
bb197:
  SLLIW s5, s4, 2
  ADD s5, s0, s5
  SW s3, 0(s5)
  ADDIW s3, s4, 1
  CALL getch
  ADD s2, s3, zero
  ADD s1, a0, zero
  JAL zero, bb193
bb198:
  XORI s6, s3, 10
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb195
isdigit:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD s0, a0, zero
  SLTI s1, s0, 48
  XORI s1, s1, 1
  BNE s1, zero, bb204
  # implict jump to bb200
bb200:
  ADD s1, zero, zero
  # implict jump to bb201
bb201:
  BNE s1, zero, bb203
  # implict jump to bb202
bb202:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb203:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb204:
  ADDI s2, zero, 57
  SLT s0, s2, s0
  XORI s0, s0, 1
  ADD s1, s0, zero
  JAL zero, bb201
