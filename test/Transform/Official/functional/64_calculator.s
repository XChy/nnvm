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
  ADD s0, a0, zero
  ADDI s1, zero, 1
  ADD s2, a1, zero
  # implict jump to bb4
bb4:
  ADD s3, s2, zero
  ADD s4, s1, zero
  BNE s3, zero, bb6
  # implict jump to bb5
bb5:
  ADD a0, s4, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb6:
  MULW s4, s4, s0
  ADDI s5, zero, 1
  SUBW s3, s3, s5
  ADD s1, s4, zero
  ADD s2, s3, zero
  JAL zero, bb4
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
  ADDI sp, sp, -240
  SD ra, 120(sp)
  SD s0, 128(sp)
  SD s1, 136(sp)
  SD s2, 144(sp)
  SD s3, 152(sp)
  SD s4, 160(sp)
  SD s5, 168(sp)
  SD s6, 176(sp)
  SD s8, 184(sp)
  SD s7, 192(sp)
  SD s9, 200(sp)
  SD s10, 208(sp)
  SD s11, 216(sp)
  LA a4, intt
  SW zero, 0(a4)
  LA a4, chat
  SW zero, 0(a4)
  CALL getch
  ADD s3, a0, zero
  ADD t4, zero, zero
  SW t4, 96(sp)
  ADD t4, s3, zero
  SW t4, 100(sp)
  # implict jump to bb9
bb9:
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  LW t4, 88(sp)
  XORI s3, t4, 13
  BNE s3, zero, bb180
  # implict jump to bb10
bb10:
  ADD s3, zero, zero
  # implict jump to bb11
bb11:
  BNE s3, zero, bb179
  # implict jump to bb12
bb12:
  ADD t4, zero, zero
  SB t4, 80(sp)
  ADD t4, zero, zero
  SB t4, 71(sp)
  ADD t4, zero, zero
  SB t4, 61(sp)
  ADD t4, zero, zero
  SB t4, 48(sp)
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
  SB t4, 50(sp)
  ADD t4, zero, zero
  SB t4, 49(sp)
  ADD t4, zero, zero
  SB t4, 75(sp)
  ADD t4, zero, zero
  SB t4, 87(sp)
  ADD t4, zero, zero
  SB t4, 82(sp)
  ADD t4, zero, zero
  SB t4, 81(sp)
  # implict jump to bb13
bb13:
  LB t3, 81(sp)
  ADD t4, t3, zero
  SB t4, 79(sp)
  LB t3, 82(sp)
  ADD t4, t3, zero
  SB t4, 78(sp)
  LB t3, 87(sp)
  ADD t4, t3, zero
  SB t4, 77(sp)
  LB t3, 75(sp)
  ADD t4, t3, zero
  SB t4, 76(sp)
  LB t3, 49(sp)
  ADD t4, t3, zero
  SB t4, 72(sp)
  LB t3, 50(sp)
  ADD t4, t3, zero
  SB t4, 73(sp)
  LB t3, 51(sp)
  ADD t4, t3, zero
  SB t4, 74(sp)
  LB t3, 52(sp)
  ADD t4, t3, zero
  SB t4, 83(sp)
  LB t3, 53(sp)
  ADD t4, t3, zero
  SB t4, 84(sp)
  LB t3, 54(sp)
  ADD t4, t3, zero
  SB t4, 85(sp)
  LB t3, 55(sp)
  ADD t4, t3, zero
  SB t4, 60(sp)
  LB t3, 56(sp)
  ADD t4, t3, zero
  SB t4, 86(sp)
  LB t3, 57(sp)
  ADD t4, t3, zero
  SB t4, 23(sp)
  LB t3, 58(sp)
  ADD t4, t3, zero
  SB t4, 22(sp)
  LB t3, 59(sp)
  ADD t4, t3, zero
  SB t4, 36(sp)
  LB t3, 48(sp)
  ADD t4, t3, zero
  SB t4, 21(sp)
  LB t3, 61(sp)
  ADD t4, t3, zero
  SB t4, 20(sp)
  LB t3, 71(sp)
  ADD t4, t3, zero
  SB t4, 19(sp)
  LB t3, 80(sp)
  ADD t4, t3, zero
  SB t4, 18(sp)
  LA s3, i
  LW t4, 0(s3)
  SW t4, 104(sp)
  LW t4, 104(sp)
  LW t3, 92(sp)
  BLT t4, t3, bb64
  # implict jump to bb14
bb14:
  LA s7, chat
  LW s7, 0(s7)
  BLT zero, s7, bb63
  # implict jump to bb15
bb15:
  LA s7, ii
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  LA s1, get2
  ADD s1, s1, s7
  ADDI s7, zero, 64
  SW s7, 0(s1)
  LA s1, i
  ADDI s7, zero, 1
  SW s7, 0(s1)
  ADD s1, zero, zero
  ADD s7, zero, zero
  ADD t4, zero, zero
  SW t4, 108(sp)
  # implict jump to bb16
bb16:
  LW t4, 108(sp)
  ADD s9, t4, zero
  ADD s10, s7, zero
  ADD s2, s1, zero
  LA s11, i
  LW s11, 0(s11)
  SLLIW s11, s11, 2
  LA s6, get2
  ADD s6, s6, s11
  LW s6, 0(s6)
  XORI s6, s6, 64
  BNE s6, zero, bb18
  # implict jump to bb17
bb17:
  LA s6, ints
  LW s6, 4(s6)
  ADD a0, s6, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 120(sp)
  LD s0, 128(sp)
  LD s1, 136(sp)
  LD s2, 144(sp)
  LD s3, 152(sp)
  LD s4, 160(sp)
  LD s5, 168(sp)
  LD s6, 176(sp)
  LD s8, 184(sp)
  LD s7, 192(sp)
  LD s9, 200(sp)
  LD s10, 208(sp)
  LD s11, 216(sp)
  ADDI sp, sp, 240
  JALR zero, 0(ra)
bb18:
  LA s6, i
  LW s6, 0(s6)
  SLLIW s6, s6, 2
  LA s11, get2
  ADD s6, s11, s6
  LW s6, 0(s6)
  XORI s6, s6, 43
  SLTIU s6, s6, 1
  BNE s6, zero, bb62
  # implict jump to bb19
bb19:
  LA s6, i
  LW s6, 0(s6)
  SLLIW s6, s6, 2
  LA s11, get2
  ADD s6, s11, s6
  LW s6, 0(s6)
  XORI s6, s6, 45
  SLTIU s6, s6, 1
  # implict jump to bb20
bb20:
  BNE s6, zero, bb61
  # implict jump to bb21
bb21:
  LA s6, i
  LW s6, 0(s6)
  SLLIW s6, s6, 2
  LA s11, get2
  ADD s6, s11, s6
  LW s6, 0(s6)
  XORI s6, s6, 42
  SLTIU s6, s6, 1
  # implict jump to bb22
bb22:
  BNE s6, zero, bb60
  # implict jump to bb23
bb23:
  LA s6, i
  LW s6, 0(s6)
  SLLIW s6, s6, 2
  LA s11, get2
  ADD s6, s11, s6
  LW s6, 0(s6)
  XORI s6, s6, 47
  SLTIU s6, s6, 1
  # implict jump to bb24
bb24:
  BNE s6, zero, bb59
  # implict jump to bb25
bb25:
  LA s6, i
  LW s6, 0(s6)
  SLLIW s6, s6, 2
  LA s11, get2
  ADD s6, s11, s6
  LW s6, 0(s6)
  XORI s6, s6, 37
  SLTIU s6, s6, 1
  # implict jump to bb26
bb26:
  BNE s6, zero, bb58
  # implict jump to bb27
bb27:
  LA s6, i
  LW s6, 0(s6)
  SLLIW s6, s6, 2
  LA s11, get2
  ADD s6, s11, s6
  LW s6, 0(s6)
  XORI s6, s6, 94
  SLTIU s6, s6, 1
  # implict jump to bb28
bb28:
  BNE s6, zero, bb36
  # implict jump to bb29
bb29:
  LA s6, i
  LW s6, 0(s6)
  SLLIW s6, s6, 2
  LA s11, get2
  ADD s6, s11, s6
  LW s6, 0(s6)
  XORI s6, s6, 32
  BNE s6, zero, bb32
  # implict jump to bb30
bb30:
  ADD s6, s2, zero
  ADD s11, s10, zero
  ADD s0, s9, zero
  # implict jump to bb31
bb31:
  LA s2, i
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s3, i
  SW s2, 0(s3)
  ADD s1, s6, zero
  ADD s7, s11, zero
  ADD t4, s0, zero
  SW t4, 108(sp)
  JAL zero, bb16
bb32:
  LA s6, i
  LW s6, 0(s6)
  SLLIW s6, s6, 2
  LA s11, get2
  ADD s6, s11, s6
  LW s6, 0(s6)
  ADDI s11, zero, 48
  SUBW s6, s6, s11
  LA s11, intt
  LW s11, 0(s11)
  ADDIW s11, s11, 1
  LA s5, intt
  SW s11, 0(s5)
  SLLIW s5, s11, 2
  LA s11, ints
  ADD s5, s11, s5
  SW s6, 0(s5)
  LA s6, ii
  ADDI s11, zero, 1
  SW s11, 0(s6)
  # implict jump to bb33
bb33:
  LA s6, i
  LW s6, 0(s6)
  LA s11, ii
  LW s11, 0(s11)
  ADDW s6, s6, s11
  SLLIW s6, s6, 2
  LA s11, get2
  ADD s6, s11, s6
  LW s6, 0(s6)
  XORI s6, s6, 32
  BNE s6, zero, bb35
  # implict jump to bb34
bb34:
  LA s6, i
  LW s6, 0(s6)
  LA s11, ii
  LW s11, 0(s11)
  ADDW s6, s6, s11
  ADDI s11, zero, 1
  SUBW s6, s6, s11
  LA s11, i
  SW s6, 0(s11)
  JAL zero, bb30
bb35:
  LA s4, i
  LW s4, 0(s4)
  LA s3, ii
  LW s3, 0(s3)
  ADDW s3, s4, s3
  SLLIW s3, s3, 2
  LA s4, get2
  ADD s3, s4, s3
  LW s3, 0(s3)
  ADDI s4, zero, 48
  SUBW s3, s3, s4
  LW s4, 0(s5)
  ADDI s8, zero, 10
  MULW s4, s4, s8
  SW s4, 0(s5)
  LW s4, 0(s5)
  ADDW s3, s4, s3
  SW s3, 0(s5)
  LA s3, ii
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s4, ii
  SW s3, 0(s4)
  JAL zero, bb33
bb36:
  LA s2, intt
  LW s2, 0(s2)
  ADDI s3, zero, 1
  SUBW s3, s2, s3
  LA s4, intt
  SW s3, 0(s4)
  SLLIW s2, s2, 2
  LA s4, ints
  ADD s2, s4, s2
  LW t4, 0(s2)
  SW t4, 116(sp)
  ADDI s4, zero, 1
  SUBW s4, s3, s4
  LA s5, intt
  SW s4, 0(s5)
  SLLIW s3, s3, 2
  LA s4, ints
  ADD s3, s4, s3
  LW t4, 0(s3)
  SW t4, 112(sp)
  LA s4, i
  LW s4, 0(s4)
  SLLIW s4, s4, 2
  LA s5, get2
  ADD s4, s5, s4
  LW s4, 0(s4)
  XORI s4, s4, 43
  SLTIU s4, s4, 1
  BNE s4, zero, bb57
  # implict jump to bb37
bb37:
  ADD s4, s9, zero
  # implict jump to bb38
bb38:
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s8, get2
  ADD s5, s8, s5
  LW s5, 0(s5)
  XORI s5, s5, 45
  SLTIU s5, s5, 1
  BNE s5, zero, bb56
  # implict jump to bb39
bb39:
  # implict jump to bb40
bb40:
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s8, get2
  ADD s5, s8, s5
  LW s5, 0(s5)
  XORI s5, s5, 42
  SLTIU s5, s5, 1
  BNE s5, zero, bb55
  # implict jump to bb41
bb41:
  # implict jump to bb42
bb42:
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s8, get2
  ADD s5, s8, s5
  LW s5, 0(s5)
  XORI s5, s5, 47
  SLTIU s5, s5, 1
  BNE s5, zero, bb54
  # implict jump to bb43
bb43:
  # implict jump to bb44
bb44:
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s8, get2
  ADD s5, s8, s5
  LW s5, 0(s5)
  XORI s5, s5, 37
  SLTIU s5, s5, 1
  BNE s5, zero, bb53
  # implict jump to bb45
bb45:
  # implict jump to bb46
bb46:
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s8, get2
  ADD s5, s8, s5
  LW s5, 0(s5)
  XORI s5, s5, 94
  SLTIU s5, s5, 1
  BNE s5, zero, bb49
  # implict jump to bb47
bb47:
  # implict jump to bb48
bb48:
  LA s3, intt
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s2, intt
  SW s3, 0(s2)
  SLLIW s2, s3, 2
  LA s3, ints
  ADD s2, s3, s2
  SW s4, 0(s2)
  LW t4, 116(sp)
  ADD s6, t4, zero
  LW t4, 112(sp)
  ADD s11, t4, zero
  ADD s0, s4, zero
  JAL zero, bb31
bb49:
  ADDI s5, zero, 1
  LW t4, 116(sp)
  ADD s8, t4, zero
  # implict jump to bb50
bb50:
  ADD s9, s8, zero
  ADD s10, s5, zero
  BNE s9, zero, bb52
  # implict jump to bb51
bb51:
  ADD s4, s10, zero
  JAL zero, bb48
bb52:
  LW t4, 112(sp)
  MULW s0, s10, t4
  ADDI s1, zero, 1
  SUBW s1, s9, s1
  ADD s5, s0, zero
  ADD s8, s1, zero
  JAL zero, bb50
bb53:
  LW t4, 112(sp)
  LW t3, 116(sp)
  REMW s5, t4, t3
  ADD s4, s5, zero
  JAL zero, bb46
bb54:
  LW t4, 112(sp)
  LW t3, 116(sp)
  DIVW s5, t4, t3
  ADD s4, s5, zero
  JAL zero, bb44
bb55:
  LW t4, 116(sp)
  LW t3, 112(sp)
  MULW s5, t4, t3
  ADD s4, s5, zero
  JAL zero, bb42
bb56:
  LW t4, 112(sp)
  LW t3, 116(sp)
  SUBW s5, t4, t3
  ADD s4, s5, zero
  JAL zero, bb40
bb57:
  LW t4, 116(sp)
  LW t3, 112(sp)
  ADDW s5, t4, t3
  ADD s4, s5, zero
  JAL zero, bb38
bb58:
  ADDI s6, zero, 1
  JAL zero, bb28
bb59:
  ADDI s6, zero, 1
  JAL zero, bb26
bb60:
  ADDI s6, zero, 1
  JAL zero, bb24
bb61:
  ADDI s6, zero, 1
  JAL zero, bb22
bb62:
  ADDI s6, zero, 1
  JAL zero, bb20
bb63:
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
  JAL zero, bb14
bb64:
  LW t4, 104(sp)
  SLLIW s0, t4, 2
  LA s1, get
  ADD t4, s1, s0
  SD t4, 224(sp)
  LD t4, 224(sp)
  LW s1, 0(t4)
  SLTI s2, s1, 48
  XORI s2, s2, 1
  BNE s2, zero, bb178
  # implict jump to bb65
bb65:
  ADD s2, zero, zero
  # implict jump to bb66
bb66:
  BNE s2, zero, bb177
  # implict jump to bb67
bb67:
  ADD s1, zero, zero
  # implict jump to bb68
bb68:
  XORI s1, s1, 1
  SLTIU s1, s1, 1
  BNE s1, zero, bb176
  # implict jump to bb69
bb69:
  LD t4, 224(sp)
  LW s1, 0(t4)
  XORI s1, s1, 40
  SLTIU s1, s1, 1
  BNE s1, zero, bb175
  # implict jump to bb70
bb70:
  LD t4, 224(sp)
  LW s1, 0(t4)
  XORI s1, s1, 94
  SLTIU s1, s1, 1
  BNE s1, zero, bb174
  # implict jump to bb71
bb71:
  LD t4, 224(sp)
  LW s1, 0(t4)
  XORI s1, s1, 41
  SLTIU s1, s1, 1
  BNE s1, zero, bb171
  # implict jump to bb72
bb72:
  LD t4, 224(sp)
  LW s1, 0(t4)
  XORI s1, s1, 43
  SLTIU s1, s1, 1
  BNE s1, zero, bb150
  # implict jump to bb73
bb73:
  LB t4, 22(sp)
  ADD s1, t4, zero
  LB t4, 83(sp)
  ADD s2, t4, zero
  LB t4, 76(sp)
  ADD s3, t4, zero
  LB t4, 78(sp)
  ADD s4, t4, zero
  LB t4, 79(sp)
  ADD s5, t4, zero
  # implict jump to bb74
bb74:
  ADD t4, s5, zero
  SB t4, 7(sp)
  ADD t4, s4, zero
  SB t4, 6(sp)
  ADD t4, s3, zero
  SB t4, 5(sp)
  ADD t4, s2, zero
  SB t4, 12(sp)
  LD t4, 224(sp)
  LW s6, 0(t4)
  XORI s6, s6, 45
  SLTIU s6, s6, 1
  BNE s6, zero, bb129
  # implict jump to bb75
bb75:
  LB t4, 84(sp)
  ADD s6, t4, zero
  LB t4, 74(sp)
  ADD s7, t4, zero
  LB t4, 73(sp)
  ADD s8, t4, zero
  LB t4, 72(sp)
  ADD s9, t4, zero
  LB t4, 77(sp)
  ADD s10, t4, zero
  # implict jump to bb76
bb76:
  ADD t4, s10, zero
  SB t4, 4(sp)
  ADD t4, s9, zero
  SB t4, 3(sp)
  ADD t4, s8, zero
  SB t4, 2(sp)
  ADD t4, s7, zero
  SB t4, 1(sp)
  ADD t4, s6, zero
  SB t4, 47(sp)
  LD t4, 224(sp)
  LW s0, 0(t4)
  XORI s0, s0, 42
  SLTIU s0, s0, 1
  BNE s0, zero, bb114
  # implict jump to bb77
bb77:
  LB t4, 86(sp)
  ADD s0, t4, zero
  LB t4, 60(sp)
  ADD s3, t4, zero
  LB t4, 85(sp)
  ADD s4, t4, zero
  # implict jump to bb78
bb78:
  ADD t4, s4, zero
  SB t4, 46(sp)
  ADD t4, s3, zero
  SB t4, 45(sp)
  ADD t4, s0, zero
  SB t4, 44(sp)
  LD t4, 224(sp)
  LW s5, 0(t4)
  XORI s5, s5, 47
  SLTIU s5, s5, 1
  BNE s5, zero, bb99
  # implict jump to bb79
bb79:
  LB t4, 18(sp)
  ADD s5, t4, zero
  LB t4, 21(sp)
  ADD s8, t4, zero
  LB t4, 23(sp)
  ADD s9, t4, zero
  # implict jump to bb80
bb80:
  LD t4, 224(sp)
  LW s2, 0(t4)
  XORI s2, s2, 37
  SLTIU s2, s2, 1
  BNE s2, zero, bb84
  # implict jump to bb81
bb81:
  LB t4, 19(sp)
  ADD s2, t4, zero
  LB t4, 20(sp)
  ADD s6, t4, zero
  LB t4, 36(sp)
  ADD s7, t4, zero
  # implict jump to bb82
bb82:
  LA s0, ii
  LW s0, 0(s0)
  SLLIW s3, s0, 2
  LA s4, get2
  ADD s3, s4, s3
  ADDI s4, zero, 32
  SW s4, 0(s3)
  ADDIW s0, s0, 1
  LA s3, ii
  SW s0, 0(s3)
  ADD t4, s5, zero
  SB t4, 43(sp)
  ADD t4, s2, zero
  SB t4, 42(sp)
  ADD t4, s6, zero
  SB t4, 41(sp)
  ADD t4, s8, zero
  SB t4, 40(sp)
  ADD t4, s7, zero
  SB t4, 39(sp)
  ADD t4, s1, zero
  SB t4, 38(sp)
  ADD t4, s9, zero
  SB t4, 37(sp)
  LB t3, 44(sp)
  ADD t4, t3, zero
  SB t4, 24(sp)
  LB t3, 45(sp)
  ADD t4, t3, zero
  SB t4, 35(sp)
  LB t3, 46(sp)
  ADD t4, t3, zero
  SB t4, 34(sp)
  LB t4, 47(sp)
  ADD s10, t4, zero
  LB t4, 12(sp)
  ADD s11, t4, zero
  LB t4, 1(sp)
  ADD s0, t4, zero
  LB t4, 2(sp)
  ADD s2, t4, zero
  LB t4, 3(sp)
  ADD s3, t4, zero
  LB t4, 5(sp)
  ADD s4, t4, zero
  LB t4, 4(sp)
  ADD s5, t4, zero
  LB t4, 6(sp)
  ADD s1, t4, zero
  LB t4, 7(sp)
  ADD s6, t4, zero
  # implict jump to bb83
bb83:
  ADD t4, s6, zero
  SB t4, 33(sp)
  ADD t4, s1, zero
  SB t4, 32(sp)
  ADD t4, s5, zero
  SB t4, 31(sp)
  ADD t4, s4, zero
  SB t4, 30(sp)
  ADD t4, s3, zero
  SB t4, 29(sp)
  ADD t4, s2, zero
  SB t4, 28(sp)
  ADD t4, s0, zero
  SB t4, 27(sp)
  ADD t4, s11, zero
  SB t4, 26(sp)
  ADD t4, s10, zero
  SB t4, 25(sp)
  LB t4, 34(sp)
  ADD s7, t4, zero
  LB t4, 35(sp)
  ADD s8, t4, zero
  LB t4, 24(sp)
  ADD s9, t4, zero
  LB t4, 37(sp)
  ADD s6, t4, zero
  LB t4, 38(sp)
  ADD s1, t4, zero
  LB t4, 39(sp)
  ADD s5, t4, zero
  LB t4, 40(sp)
  ADD s4, t4, zero
  LB t4, 41(sp)
  ADD s3, t4, zero
  LB t4, 42(sp)
  ADD s2, t4, zero
  LB t4, 43(sp)
  ADD s0, t4, zero
  LA s11, i
  LW s11, 0(s11)
  ADDIW s11, s11, 1
  LA s10, i
  SW s11, 0(s10)
  ADD t4, s0, zero
  SB t4, 80(sp)
  ADD t4, s2, zero
  SB t4, 71(sp)
  ADD t4, s3, zero
  SB t4, 61(sp)
  ADD t4, s4, zero
  SB t4, 48(sp)
  ADD t4, s5, zero
  SB t4, 59(sp)
  ADD t4, s1, zero
  SB t4, 58(sp)
  ADD t4, s6, zero
  SB t4, 57(sp)
  ADD t4, s9, zero
  SB t4, 56(sp)
  ADD t4, s8, zero
  SB t4, 55(sp)
  ADD t4, s7, zero
  SB t4, 54(sp)
  LB t3, 25(sp)
  ADD t4, t3, zero
  SB t4, 53(sp)
  LB t3, 26(sp)
  ADD t4, t3, zero
  SB t4, 52(sp)
  LB t3, 27(sp)
  ADD t4, t3, zero
  SB t4, 51(sp)
  LB t3, 28(sp)
  ADD t4, t3, zero
  SB t4, 50(sp)
  LB t3, 29(sp)
  ADD t4, t3, zero
  SB t4, 49(sp)
  LB t3, 30(sp)
  ADD t4, t3, zero
  SB t4, 75(sp)
  LB t3, 31(sp)
  ADD t4, t3, zero
  SB t4, 87(sp)
  LB t3, 32(sp)
  ADD t4, t3, zero
  SB t4, 82(sp)
  LB t3, 33(sp)
  ADD t4, t3, zero
  SB t4, 81(sp)
  JAL zero, bb13
bb84:
  LA s10, chat
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, chas
  ADD s10, s11, s10
  LW s11, 0(s10)
  XORI s11, s11, 42
  SLTIU s11, s11, 1
  BNE s11, zero, bb98
  # implict jump to bb85
bb85:
  LW s11, 0(s10)
  XORI s11, s11, 47
  SLTIU s11, s11, 1
  # implict jump to bb86
bb86:
  ADD t4, s11, zero
  SB t4, 66(sp)
  LB t4, 66(sp)
  BNE t4, zero, bb97
  # implict jump to bb87
bb87:
  LW s11, 0(s10)
  XORI s11, s11, 37
  SLTIU s11, s11, 1
  # implict jump to bb88
bb88:
  ADD t4, s11, zero
  SB t4, 65(sp)
  LB t4, 65(sp)
  BNE t4, zero, bb96
  # implict jump to bb89
bb89:
  LW s10, 0(s10)
  XORI s10, s10, 94
  SLTIU s10, s10, 1
  # implict jump to bb90
bb90:
  ADD t4, s10, zero
  SB t4, 63(sp)
  LB t4, 63(sp)
  BNE t4, zero, bb92
  # implict jump to bb91
bb91:
  LA s0, chat
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s3, chat
  SW s0, 0(s3)
  SLLIW s0, s0, 2
  LA s3, chas
  ADD s0, s3, s0
  ADDI s3, zero, 37
  SW s3, 0(s0)
  LB t4, 65(sp)
  ADD s2, t4, zero
  LB t4, 63(sp)
  ADD s6, t4, zero
  LB t4, 66(sp)
  ADD s7, t4, zero
  JAL zero, bb82
bb92:
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
  SLLIW s3, s10, 2
  LA s0, get2
  ADD s0, s0, s3
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
  BNE s0, zero, bb95
  # implict jump to bb93
bb93:
  ADDI s0, zero, 1
  # implict jump to bb94
bb94:
  SLTIU s0, s0, 1
  BNE s0, zero, bb91
  JAL zero, bb84
bb95:
  ADD s0, zero, zero
  JAL zero, bb94
bb96:
  ADDI s10, zero, 1
  JAL zero, bb90
bb97:
  ADDI s11, zero, 1
  JAL zero, bb88
bb98:
  ADDI s11, zero, 1
  JAL zero, bb86
bb99:
  LA s10, chat
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, chas
  ADD s10, s11, s10
  LW s11, 0(s10)
  XORI s11, s11, 42
  SLTIU s11, s11, 1
  BNE s11, zero, bb113
  # implict jump to bb100
bb100:
  LW s11, 0(s10)
  XORI s11, s11, 47
  SLTIU s11, s11, 1
  # implict jump to bb101
bb101:
  ADD t4, s11, zero
  SB t4, 70(sp)
  LB t4, 70(sp)
  BNE t4, zero, bb112
  # implict jump to bb102
bb102:
  LW s11, 0(s10)
  XORI s11, s11, 37
  SLTIU s11, s11, 1
  # implict jump to bb103
bb103:
  ADD t4, s11, zero
  SB t4, 64(sp)
  LB t4, 64(sp)
  BNE t4, zero, bb111
  # implict jump to bb104
bb104:
  LW s10, 0(s10)
  XORI s10, s10, 94
  SLTIU s10, s10, 1
  # implict jump to bb105
bb105:
  ADD t4, s10, zero
  SB t4, 62(sp)
  LB t4, 62(sp)
  BNE t4, zero, bb107
  # implict jump to bb106
bb106:
  LA s2, chat
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s6, chat
  SW s2, 0(s6)
  SLLIW s2, s2, 2
  LA s6, chas
  ADD s2, s6, s2
  ADDI s6, zero, 47
  SW s6, 0(s2)
  LB t4, 62(sp)
  ADD s5, t4, zero
  LB t4, 70(sp)
  ADD s8, t4, zero
  LB t4, 64(sp)
  ADD s9, t4, zero
  JAL zero, bb80
bb107:
  LA s10, chat
  LW s10, 0(s10)
  ADDI s11, zero, 1
  SUBW s11, s10, s11
  LA s7, chat
  SW s11, 0(s7)
  SLLIW s7, s10, 2
  LA s10, chas
  ADD s7, s10, s7
  LW s7, 0(s7)
  LA s10, c
  SW s7, 0(s10)
  LA s10, ii
  LW s10, 0(s10)
  SLLIW s2, s10, 2
  LA s6, get2
  ADD s2, s6, s2
  ADDI s6, zero, 32
  SW s6, 0(s2)
  ADDIW s2, s10, 1
  SLLIW s2, s2, 2
  LA s6, get2
  ADD s2, s6, s2
  SW s7, 0(s2)
  ADDIW s2, s10, 2
  LA s6, ii
  SW s2, 0(s6)
  SLTIU s2, s11, 1
  BNE s2, zero, bb110
  # implict jump to bb108
bb108:
  ADDI s2, zero, 1
  # implict jump to bb109
bb109:
  SLTIU s2, s2, 1
  BNE s2, zero, bb106
  JAL zero, bb99
bb110:
  ADD s2, zero, zero
  JAL zero, bb109
bb111:
  ADDI s10, zero, 1
  JAL zero, bb105
bb112:
  ADDI s11, zero, 1
  JAL zero, bb103
bb113:
  ADDI s11, zero, 1
  JAL zero, bb101
bb114:
  LA s5, chat
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s11, chas
  ADD s5, s11, s5
  LW s11, 0(s5)
  XORI s11, s11, 42
  SLTIU s11, s11, 1
  BNE s11, zero, bb128
  # implict jump to bb115
bb115:
  LW s11, 0(s5)
  XORI s11, s11, 47
  SLTIU s11, s11, 1
  # implict jump to bb116
bb116:
  ADD t4, s11, zero
  SB t4, 69(sp)
  LB t4, 69(sp)
  BNE t4, zero, bb127
  # implict jump to bb117
bb117:
  LW s11, 0(s5)
  XORI s11, s11, 37
  SLTIU s11, s11, 1
  # implict jump to bb118
bb118:
  ADD t4, s11, zero
  SB t4, 17(sp)
  LB t4, 17(sp)
  BNE t4, zero, bb126
  # implict jump to bb119
bb119:
  LW s5, 0(s5)
  XORI s5, s5, 94
  SLTIU s5, s5, 1
  # implict jump to bb120
bb120:
  ADD t4, s5, zero
  SB t4, 68(sp)
  LB t4, 68(sp)
  BNE t4, zero, bb122
  # implict jump to bb121
bb121:
  LA s5, chat
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s8, chat
  SW s5, 0(s8)
  SLLIW s5, s5, 2
  LA s8, chas
  ADD s5, s8, s5
  ADDI s8, zero, 42
  SW s8, 0(s5)
  LB t4, 68(sp)
  ADD s0, t4, zero
  LB t4, 17(sp)
  ADD s3, t4, zero
  LB t4, 69(sp)
  ADD s4, t4, zero
  JAL zero, bb78
bb122:
  LA s5, chat
  LW s5, 0(s5)
  ADDI s11, zero, 1
  SUBW s11, s5, s11
  LA s10, chat
  SW s11, 0(s10)
  SLLIW s5, s5, 2
  LA s10, chas
  ADD s5, s10, s5
  LW s5, 0(s5)
  LA s10, c
  SW s5, 0(s10)
  LA s10, ii
  LW s10, 0(s10)
  SLLIW s9, s10, 2
  LA s8, get2
  ADD s8, s8, s9
  ADDI s9, zero, 32
  SW s9, 0(s8)
  ADDIW s8, s10, 1
  SLLIW s8, s8, 2
  LA s9, get2
  ADD s8, s9, s8
  SW s5, 0(s8)
  ADDIW s5, s10, 2
  LA s8, ii
  SW s5, 0(s8)
  SLTIU s5, s11, 1
  BNE s5, zero, bb125
  # implict jump to bb123
bb123:
  ADDI s5, zero, 1
  # implict jump to bb124
bb124:
  SLTIU s5, s5, 1
  BNE s5, zero, bb121
  JAL zero, bb114
bb125:
  ADD s5, zero, zero
  JAL zero, bb124
bb126:
  ADDI s5, zero, 1
  JAL zero, bb120
bb127:
  ADDI s11, zero, 1
  JAL zero, bb118
bb128:
  ADDI s11, zero, 1
  JAL zero, bb116
bb129:
  LA s11, chat
  LW s11, 0(s11)
  SLLIW s11, s11, 2
  LA s0, chas
  ADD s0, s0, s11
  LW s11, 0(s0)
  XORI s11, s11, 43
  SLTIU s11, s11, 1
  BNE s11, zero, bb149
  # implict jump to bb130
bb130:
  LW s11, 0(s0)
  XORI s11, s11, 45
  SLTIU s11, s11, 1
  # implict jump to bb131
bb131:
  ADD t4, s11, zero
  SB t4, 16(sp)
  LB t4, 16(sp)
  BNE t4, zero, bb148
  # implict jump to bb132
bb132:
  LW s11, 0(s0)
  XORI s11, s11, 42
  SLTIU s11, s11, 1
  # implict jump to bb133
bb133:
  ADD t4, s11, zero
  SB t4, 15(sp)
  LB t4, 15(sp)
  BNE t4, zero, bb147
  # implict jump to bb134
bb134:
  LW s11, 0(s0)
  XORI s11, s11, 47
  SLTIU s11, s11, 1
  # implict jump to bb135
bb135:
  ADD t4, s11, zero
  SB t4, 14(sp)
  LB t4, 14(sp)
  BNE t4, zero, bb146
  # implict jump to bb136
bb136:
  LW s11, 0(s0)
  XORI s11, s11, 37
  SLTIU s11, s11, 1
  # implict jump to bb137
bb137:
  ADD t4, s11, zero
  SB t4, 13(sp)
  LB t4, 13(sp)
  BNE t4, zero, bb145
  # implict jump to bb138
bb138:
  LW s0, 0(s0)
  XORI s0, s0, 94
  SLTIU s0, s0, 1
  # implict jump to bb139
bb139:
  ADD t4, s0, zero
  SB t4, 0(sp)
  LB t4, 0(sp)
  BNE t4, zero, bb141
  # implict jump to bb140
bb140:
  LA s0, chat
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s3, chat
  SW s0, 0(s3)
  SLLIW s0, s0, 2
  LA s3, chas
  ADD s0, s3, s0
  ADDI s3, zero, 45
  SW s3, 0(s0)
  LB t4, 0(sp)
  ADD s6, t4, zero
  LB t4, 13(sp)
  ADD s7, t4, zero
  LB t4, 14(sp)
  ADD s8, t4, zero
  LB t4, 15(sp)
  ADD s9, t4, zero
  LB t4, 16(sp)
  ADD s10, t4, zero
  JAL zero, bb76
bb141:
  LA s0, chat
  LW s0, 0(s0)
  ADDI s11, zero, 1
  SUBW s11, s0, s11
  LA s5, chat
  SW s11, 0(s5)
  SLLIW s0, s0, 2
  LA s5, chas
  ADD s0, s5, s0
  LW s0, 0(s0)
  LA s5, c
  SW s0, 0(s5)
  LA s5, ii
  LW s5, 0(s5)
  SLLIW s4, s5, 2
  LA s3, get2
  ADD s3, s3, s4
  ADDI s4, zero, 32
  SW s4, 0(s3)
  ADDIW s3, s5, 1
  SLLIW s3, s3, 2
  LA s4, get2
  ADD s3, s4, s3
  SW s0, 0(s3)
  ADDIW s0, s5, 2
  LA s3, ii
  SW s0, 0(s3)
  SLTIU s0, s11, 1
  BNE s0, zero, bb144
  # implict jump to bb142
bb142:
  ADDI s0, zero, 1
  # implict jump to bb143
bb143:
  SLTIU s0, s0, 1
  BNE s0, zero, bb140
  JAL zero, bb129
bb144:
  ADD s0, zero, zero
  JAL zero, bb143
bb145:
  ADDI s0, zero, 1
  JAL zero, bb139
bb146:
  ADDI s11, zero, 1
  JAL zero, bb137
bb147:
  ADDI s11, zero, 1
  JAL zero, bb135
bb148:
  ADDI s11, zero, 1
  JAL zero, bb133
bb149:
  ADDI s11, zero, 1
  JAL zero, bb131
bb150:
  LA s6, chat
  LW s6, 0(s6)
  SLLIW s6, s6, 2
  LA s7, chas
  ADD s6, s7, s6
  LW s7, 0(s6)
  XORI s7, s7, 43
  SLTIU s7, s7, 1
  BNE s7, zero, bb170
  # implict jump to bb151
bb151:
  LW s7, 0(s6)
  XORI s7, s7, 45
  SLTIU s7, s7, 1
  # implict jump to bb152
bb152:
  ADD t4, s7, zero
  SB t4, 8(sp)
  LB t4, 8(sp)
  BNE t4, zero, bb169
  # implict jump to bb153
bb153:
  LW s7, 0(s6)
  XORI s7, s7, 42
  SLTIU s7, s7, 1
  # implict jump to bb154
bb154:
  ADD t4, s7, zero
  SB t4, 11(sp)
  LB t4, 11(sp)
  BNE t4, zero, bb168
  # implict jump to bb155
bb155:
  LW s7, 0(s6)
  XORI s7, s7, 47
  SLTIU s7, s7, 1
  # implict jump to bb156
bb156:
  ADD t4, s7, zero
  SB t4, 9(sp)
  LB t4, 9(sp)
  BNE t4, zero, bb167
  # implict jump to bb157
bb157:
  LW s7, 0(s6)
  XORI s7, s7, 37
  SLTIU s7, s7, 1
  # implict jump to bb158
bb158:
  ADD t4, s7, zero
  SB t4, 10(sp)
  LB t4, 10(sp)
  BNE t4, zero, bb166
  # implict jump to bb159
bb159:
  LW s6, 0(s6)
  XORI s6, s6, 94
  SLTIU s6, s6, 1
  # implict jump to bb160
bb160:
  ADD t4, s6, zero
  SB t4, 67(sp)
  LB t4, 67(sp)
  BNE t4, zero, bb162
  # implict jump to bb161
bb161:
  LA s6, chat
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, chat
  SW s6, 0(s7)
  SLLIW s6, s6, 2
  LA s7, chas
  ADD s6, s7, s6
  ADDI s7, zero, 43
  SW s7, 0(s6)
  LB t4, 8(sp)
  ADD s1, t4, zero
  LB t4, 9(sp)
  ADD s2, t4, zero
  LB t4, 10(sp)
  ADD s3, t4, zero
  LB t4, 67(sp)
  ADD s4, t4, zero
  LB t4, 11(sp)
  ADD s5, t4, zero
  JAL zero, bb74
bb162:
  LA s6, chat
  LW s6, 0(s6)
  ADDI s7, zero, 1
  SUBW s7, s6, s7
  LA s8, chat
  SW s7, 0(s8)
  SLLIW s6, s6, 2
  LA s8, chas
  ADD s6, s8, s6
  LW s6, 0(s6)
  LA s8, c
  SW s6, 0(s8)
  LA s8, ii
  LW s8, 0(s8)
  SLLIW s9, s8, 2
  LA s10, get2
  ADD s9, s10, s9
  ADDI s10, zero, 32
  SW s10, 0(s9)
  ADDIW s9, s8, 1
  SLLIW s9, s9, 2
  LA s10, get2
  ADD s9, s10, s9
  SW s6, 0(s9)
  ADDIW s6, s8, 2
  LA s8, ii
  SW s6, 0(s8)
  SLTIU s6, s7, 1
  BNE s6, zero, bb165
  # implict jump to bb163
bb163:
  ADDI s6, zero, 1
  # implict jump to bb164
bb164:
  SLTIU s6, s6, 1
  BNE s6, zero, bb161
  JAL zero, bb150
bb165:
  ADD s6, zero, zero
  JAL zero, bb164
bb166:
  ADDI s6, zero, 1
  JAL zero, bb160
bb167:
  ADDI s7, zero, 1
  JAL zero, bb158
bb168:
  ADDI s7, zero, 1
  JAL zero, bb156
bb169:
  ADDI s7, zero, 1
  JAL zero, bb154
bb170:
  ADDI s7, zero, 1
  JAL zero, bb152
bb171:
  LA s1, chat
  LW s1, 0(s1)
  ADDI s2, zero, 1
  SUBW s2, s1, s2
  LA s3, chat
  SW s2, 0(s3)
  SLLIW s1, s1, 2
  LA s2, chas
  ADD s1, s2, s1
  LW s1, 0(s1)
  LA s2, c
  SW s1, 0(s2)
  # implict jump to bb172
bb172:
  LA s1, c
  LW s1, 0(s1)
  XORI s1, s1, 40
  BNE s1, zero, bb173
  JAL zero, bb72
bb173:
  LA s7, ii
  LW s7, 0(s7)
  SLLIW s8, s7, 2
  LA s9, get2
  ADD s8, s9, s8
  ADDI s9, zero, 32
  SW s9, 0(s8)
  ADDIW s8, s7, 1
  SLLIW s8, s8, 2
  LA s9, get2
  ADD s8, s9, s8
  LA s9, c
  LW s9, 0(s9)
  SW s9, 0(s8)
  ADDIW s7, s7, 2
  LA s8, ii
  SW s7, 0(s8)
  LA s7, chat
  LW s7, 0(s7)
  ADDI s8, zero, 1
  SUBW s8, s7, s8
  LA s9, chat
  SW s8, 0(s9)
  SLLIW s7, s7, 2
  LA s8, chas
  ADD s7, s8, s7
  LW s7, 0(s7)
  LA s8, c
  SW s7, 0(s8)
  JAL zero, bb172
bb174:
  LA s1, chat
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, chat
  SW s1, 0(s2)
  SLLIW s1, s1, 2
  LA s2, chas
  ADD s1, s2, s1
  ADDI s2, zero, 94
  SW s2, 0(s1)
  JAL zero, bb71
bb175:
  LA s1, chat
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, chat
  SW s1, 0(s2)
  SLLIW s1, s1, 2
  LA s2, chas
  ADD s1, s2, s1
  ADDI s2, zero, 40
  SW s2, 0(s1)
  JAL zero, bb70
bb176:
  LA s7, ii
  LW s7, 0(s7)
  SLLIW s8, s7, 2
  LA s9, get2
  ADD s8, s9, s8
  LD t4, 224(sp)
  LW s9, 0(t4)
  SW s9, 0(s8)
  ADDIW s7, s7, 1
  LA s8, ii
  SW s7, 0(s8)
  LB t3, 18(sp)
  ADD t4, t3, zero
  SB t4, 43(sp)
  LB t3, 19(sp)
  ADD t4, t3, zero
  SB t4, 42(sp)
  LB t3, 20(sp)
  ADD t4, t3, zero
  SB t4, 41(sp)
  LB t3, 21(sp)
  ADD t4, t3, zero
  SB t4, 40(sp)
  LB t3, 36(sp)
  ADD t4, t3, zero
  SB t4, 39(sp)
  LB t3, 22(sp)
  ADD t4, t3, zero
  SB t4, 38(sp)
  LB t3, 23(sp)
  ADD t4, t3, zero
  SB t4, 37(sp)
  LB t3, 86(sp)
  ADD t4, t3, zero
  SB t4, 24(sp)
  LB t3, 60(sp)
  ADD t4, t3, zero
  SB t4, 35(sp)
  LB t3, 85(sp)
  ADD t4, t3, zero
  SB t4, 34(sp)
  LB t4, 84(sp)
  ADD s10, t4, zero
  LB t4, 83(sp)
  ADD s11, t4, zero
  LB t4, 74(sp)
  ADD s0, t4, zero
  LB t4, 73(sp)
  ADD s2, t4, zero
  LB t4, 72(sp)
  ADD s3, t4, zero
  LB t4, 76(sp)
  ADD s4, t4, zero
  LB t4, 77(sp)
  ADD s5, t4, zero
  LB t4, 78(sp)
  ADD s1, t4, zero
  LB t4, 79(sp)
  ADD s6, t4, zero
  JAL zero, bb83
bb177:
  ADDI s1, zero, 1
  JAL zero, bb68
bb178:
  ADDI s3, zero, 57
  SLT s1, s3, s1
  XORI s1, s1, 1
  ADD s2, s1, zero
  JAL zero, bb66
bb179:
  LW t4, 92(sp)
  SLLIW s0, t4, 2
  LA s1, get
  ADD s0, s1, s0
  LW t4, 88(sp)
  SW t4, 0(s0)
  LW t4, 92(sp)
  ADDIW s0, t4, 1
  CALL getch
  ADD t4, s0, zero
  SW t4, 96(sp)
  ADD t4, a0, zero
  SW t4, 100(sp)
  JAL zero, bb9
bb180:
  LW t4, 88(sp)
  XORI s7, t4, 10
  SLTU s7, zero, s7
  ADD s3, s7, zero
  JAL zero, bb11
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
  BNE s0, zero, bb183
  # implict jump to bb182
bb182:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb183:
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
  # implict jump to bb186
bb186:
  ADD s3, s1, zero
  ADD s4, s2, zero
  XORI s5, s3, 13
  BNE s5, zero, bb191
  # implict jump to bb187
bb187:
  ADD s5, zero, zero
  # implict jump to bb188
bb188:
  BNE s5, zero, bb190
  # implict jump to bb189
bb189:
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
bb190:
  SLLIW s5, s4, 2
  ADD s5, s0, s5
  SW s3, 0(s5)
  ADDIW s3, s4, 1
  CALL getch
  ADD s2, s3, zero
  ADD s1, a0, zero
  JAL zero, bb186
bb191:
  XORI s6, s3, 10
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb188
isdigit:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD s0, a0, zero
  SLTI s1, s0, 48
  XORI s1, s1, 1
  BNE s1, zero, bb197
  # implict jump to bb193
bb193:
  ADD s1, zero, zero
  # implict jump to bb194
bb194:
  BNE s1, zero, bb196
  # implict jump to bb195
bb195:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb196:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb197:
  ADDI s2, zero, 57
  SLT s0, s2, s0
  XORI s0, s0, 1
  ADD s1, s0, zero
  JAL zero, bb194
