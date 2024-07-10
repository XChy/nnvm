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
  ADD a0, a0, zero
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
  ADD a0, a0, zero
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
  ADD a1, a1, zero
  ADDI s1, zero, 1
  ADD s2, a1, zero
  # implict jump to bb4
bb4:
  ADD s3, s2, zero
  ADD s4, s1, zero
  XOR s5, s3, zero
  SLTU s5, zero, s5
  BNE s5, zero, bb6
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
  ADD a0, a0, zero
  LA s0, intt
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s1, ints
  ADD s0, s1, s0
  LW s1, 0(s0)
  ADDI s2, zero, 10
  MULW s1, s1, s2
  SW s1, 0(s0)
  LA s0, intt
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s1, ints
  ADD s0, s1, s0
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
  ADDI sp, sp, -224
  SD ra, 120(sp)
  SD s0, 128(sp)
  SD s1, 136(sp)
  SD s2, 144(sp)
  SD s3, 152(sp)
  SD s4, 160(sp)
  SD s6, 168(sp)
  SD s7, 176(sp)
  SD s10, 184(sp)
  SD s11, 192(sp)
  SD s5, 200(sp)
  SD s8, 208(sp)
  SD s9, 216(sp)
  LA a4, intt
  SW zero, 0(a4)
  LA a4, chat
  SW zero, 0(a4)
  CALL getch
  ADD s4, a0, zero
  ADD t4, zero, zero
  SW t4, 88(sp)
  ADD t4, s4, zero
  SW t4, 100(sp)
  # implict jump to bb9
bb9:
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  LW t4, 104(sp)
  XORI s4, t4, 13
  SLTU s4, zero, s4
  BNE s4, zero, bb180
  # implict jump to bb10
bb10:
  ADD s4, zero, zero
  # implict jump to bb11
bb11:
  ADD s4, s4, zero
  BNE s4, zero, bb179
  # implict jump to bb12
bb12:
  ADD t4, zero, zero
  SB t4, 72(sp)
  ADD t4, zero, zero
  SB t4, 77(sp)
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
  SB t4, 48(sp)
  ADD t4, zero, zero
  SB t4, 57(sp)
  ADD t4, zero, zero
  SB t4, 46(sp)
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
  SB t4, 68(sp)
  # implict jump to bb13
bb13:
  LB t3, 68(sp)
  ADD t4, t3, zero
  SB t4, 71(sp)
  LB t3, 78(sp)
  ADD t4, t3, zero
  SB t4, 70(sp)
  LB t3, 79(sp)
  ADD t4, t3, zero
  SB t4, 69(sp)
  LB t3, 80(sp)
  ADD t4, t3, zero
  SB t4, 73(sp)
  LB t3, 81(sp)
  ADD t4, t3, zero
  SB t4, 74(sp)
  LB t3, 82(sp)
  ADD t4, t3, zero
  SB t4, 75(sp)
  LB t3, 83(sp)
  ADD t4, t3, zero
  SB t4, 76(sp)
  LB t3, 46(sp)
  ADD t4, t3, zero
  SB t4, 84(sp)
  LB t3, 57(sp)
  ADD t4, t3, zero
  SB t4, 85(sp)
  LB t3, 48(sp)
  ADD t4, t3, zero
  SB t4, 47(sp)
  LB t3, 49(sp)
  ADD t4, t3, zero
  SB t4, 22(sp)
  LB t3, 50(sp)
  ADD t4, t3, zero
  SB t4, 34(sp)
  LB t3, 51(sp)
  ADD t4, t3, zero
  SB t4, 21(sp)
  LB t3, 52(sp)
  ADD t4, t3, zero
  SB t4, 20(sp)
  LB t3, 53(sp)
  ADD t4, t3, zero
  SB t4, 19(sp)
  LB t3, 54(sp)
  ADD t4, t3, zero
  SB t4, 18(sp)
  LB t3, 55(sp)
  ADD t4, t3, zero
  SB t4, 17(sp)
  LB t3, 77(sp)
  ADD t4, t3, zero
  SB t4, 16(sp)
  LB t3, 72(sp)
  ADD t4, t3, zero
  SB t4, 15(sp)
  LA s4, i
  LW s4, 0(s4)
  LW t4, 92(sp)
  SLT s4, s4, t4
  BNE s4, zero, bb64
  # implict jump to bb14
bb14:
  LA s4, chat
  LW s4, 0(s4)
  SLT s4, zero, s4
  BNE s4, zero, bb63
  # implict jump to bb15
bb15:
  LA s4, ii
  LW s4, 0(s4)
  SLLIW s4, s4, 2
  LA s6, get2
  ADD s4, s6, s4
  ADDI s6, zero, 64
  SW s6, 0(s4)
  LA s4, i
  ADDI s6, zero, 1
  SW s6, 0(s4)
  ADD s4, zero, zero
  ADD s6, zero, zero
  ADD t4, zero, zero
  SW t4, 108(sp)
  # implict jump to bb16
bb16:
  LW t4, 108(sp)
  ADD s3, t4, zero
  ADD s1, s6, zero
  ADD s2, s4, zero
  LA s0, i
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s7, get2
  ADD s0, s7, s0
  LW s0, 0(s0)
  XORI s0, s0, 64
  SLTU s0, zero, s0
  BNE s0, zero, bb18
  # implict jump to bb17
bb17:
  LA s0, ints
  ADDI s0, s0, 4
  LW s0, 0(s0)
  ADD a0, s0, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 120(sp)
  LD s0, 128(sp)
  LD s1, 136(sp)
  LD s2, 144(sp)
  LD s3, 152(sp)
  LD s4, 160(sp)
  LD s6, 168(sp)
  LD s7, 176(sp)
  LD s10, 184(sp)
  LD s11, 192(sp)
  LD s5, 200(sp)
  LD s8, 208(sp)
  LD s9, 216(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb18:
  LA s0, i
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s7, get2
  ADD s0, s7, s0
  LW s0, 0(s0)
  XORI s0, s0, 43
  SLTIU s0, s0, 1
  BNE s0, zero, bb62
  # implict jump to bb19
bb19:
  LA s0, i
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s7, get2
  ADD s0, s7, s0
  LW s0, 0(s0)
  XORI s0, s0, 45
  SLTIU s0, s0, 1
  ADD s0, s0, zero
  # implict jump to bb20
bb20:
  ADD s0, s0, zero
  BNE s0, zero, bb61
  # implict jump to bb21
bb21:
  LA s0, i
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s7, get2
  ADD s0, s7, s0
  LW s0, 0(s0)
  XORI s0, s0, 42
  SLTIU s0, s0, 1
  ADD s0, s0, zero
  # implict jump to bb22
bb22:
  ADD s0, s0, zero
  BNE s0, zero, bb60
  # implict jump to bb23
bb23:
  LA s0, i
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s7, get2
  ADD s0, s7, s0
  LW s0, 0(s0)
  XORI s0, s0, 47
  SLTIU s0, s0, 1
  ADD s0, s0, zero
  # implict jump to bb24
bb24:
  ADD s0, s0, zero
  BNE s0, zero, bb59
  # implict jump to bb25
bb25:
  LA s0, i
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s7, get2
  ADD s0, s7, s0
  LW s0, 0(s0)
  XORI s0, s0, 37
  SLTIU s0, s0, 1
  ADD s0, s0, zero
  # implict jump to bb26
bb26:
  ADD s0, s0, zero
  BNE s0, zero, bb58
  # implict jump to bb27
bb27:
  LA s0, i
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s7, get2
  ADD s0, s7, s0
  LW s0, 0(s0)
  XORI s0, s0, 94
  SLTIU s0, s0, 1
  ADD s0, s0, zero
  # implict jump to bb28
bb28:
  ADD s0, s0, zero
  BNE s0, zero, bb36
  # implict jump to bb29
bb29:
  LA s0, i
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s7, get2
  ADD s0, s7, s0
  LW s0, 0(s0)
  XORI s0, s0, 32
  SLTU s0, zero, s0
  BNE s0, zero, bb32
  # implict jump to bb30
bb30:
  ADD s0, s2, zero
  ADD s7, s1, zero
  ADD s9, s3, zero
  # implict jump to bb31
bb31:
  ADD s9, s9, zero
  ADD s7, s7, zero
  ADD s0, s0, zero
  LA s1, i
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, i
  SW s1, 0(s2)
  ADD s4, s0, zero
  ADD s6, s7, zero
  ADD t4, s9, zero
  SW t4, 108(sp)
  JAL zero, bb16
bb32:
  LA s0, i
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s7, get2
  ADD s0, s7, s0
  LW s0, 0(s0)
  ADDI s7, zero, 48
  SUBW s0, s0, s7
  LA s7, intt
  LW s7, 0(s7)
  ADDIW s7, s7, 1
  LA s9, intt
  SW s7, 0(s9)
  SLLIW s7, s7, 2
  LA s9, ints
  ADD s7, s9, s7
  SW s0, 0(s7)
  LA s0, ii
  ADDI s7, zero, 1
  SW s7, 0(s0)
  # implict jump to bb33
bb33:
  LA s0, i
  LW s0, 0(s0)
  LA s7, ii
  LW s7, 0(s7)
  ADDW s0, s0, s7
  SLLIW s0, s0, 2
  LA s7, get2
  ADD s0, s7, s0
  LW s0, 0(s0)
  XORI s0, s0, 32
  SLTU s0, zero, s0
  BNE s0, zero, bb35
  # implict jump to bb34
bb34:
  LA s0, i
  LW s0, 0(s0)
  LA s7, ii
  LW s7, 0(s7)
  ADDW s0, s0, s7
  ADDI s7, zero, 1
  SUBW s0, s0, s7
  LA s7, i
  SW s0, 0(s7)
  JAL zero, bb30
bb35:
  LA s8, i
  LW s8, 0(s8)
  LA s10, ii
  LW s10, 0(s10)
  ADDW s8, s8, s10
  SLLIW s8, s8, 2
  LA s10, get2
  ADD s8, s10, s8
  LW s8, 0(s8)
  ADDI s10, zero, 48
  SUBW s8, s8, s10
  LA s10, intt
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, ints
  ADD s10, s11, s10
  LW s11, 0(s10)
  ADDI s5, zero, 10
  MULW s5, s11, s5
  SW s5, 0(s10)
  LA s5, intt
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s10, ints
  ADD s5, s10, s5
  LW s10, 0(s5)
  ADDW s8, s10, s8
  SW s8, 0(s5)
  LA s5, ii
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s8, ii
  SW s5, 0(s8)
  JAL zero, bb33
bb36:
  LA s1, intt
  LW s1, 0(s1)
  ADDI s2, zero, 1
  SUBW s2, s1, s2
  LA s5, intt
  SW s2, 0(s5)
  SLLIW s1, s1, 2
  LA s2, ints
  ADD s1, s2, s1
  LW t4, 0(s1)
  SW t4, 96(sp)
  LA s2, intt
  LW s2, 0(s2)
  ADDI s5, zero, 1
  SUBW s5, s2, s5
  LA s8, intt
  SW s5, 0(s8)
  SLLIW s2, s2, 2
  LA s5, ints
  ADD s2, s5, s2
  LW t4, 0(s2)
  SW t4, 112(sp)
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s8, get2
  ADD s5, s8, s5
  LW s5, 0(s5)
  XORI s5, s5, 43
  SLTIU s5, s5, 1
  BNE s5, zero, bb57
  # implict jump to bb37
bb37:
  ADD s3, s3, zero
  # implict jump to bb38
bb38:
  ADD s3, s3, zero
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
  ADD s3, s3, zero
  # implict jump to bb40
bb40:
  ADD s3, s3, zero
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
  ADD s3, s3, zero
  # implict jump to bb42
bb42:
  ADD s3, s3, zero
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
  ADD s3, s3, zero
  # implict jump to bb44
bb44:
  ADD s3, s3, zero
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
  ADD s3, s3, zero
  # implict jump to bb46
bb46:
  ADD s3, s3, zero
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
  ADD s3, s3, zero
  # implict jump to bb48
bb48:
  ADD s3, s3, zero
  LA s2, intt
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s1, intt
  SW s2, 0(s1)
  SLLIW s1, s2, 2
  LA s2, ints
  ADD s1, s2, s1
  SW s3, 0(s1)
  LW t4, 96(sp)
  ADD s0, t4, zero
  LW t4, 112(sp)
  ADD s7, t4, zero
  ADD s9, s3, zero
  JAL zero, bb31
bb49:
  ADDI s5, zero, 1
  LW t4, 96(sp)
  ADD s8, t4, zero
  # implict jump to bb50
bb50:
  ADD s10, s8, zero
  ADD s11, s5, zero
  XOR s2, s10, zero
  SLTU s2, zero, s2
  BNE s2, zero, bb52
  # implict jump to bb51
bb51:
  ADD s3, s11, zero
  JAL zero, bb48
bb52:
  LW t4, 112(sp)
  MULW s0, s11, t4
  ADDI s1, zero, 1
  SUBW s1, s10, s1
  ADD s5, s0, zero
  ADD s8, s1, zero
  JAL zero, bb50
bb53:
  LW t4, 112(sp)
  LW t3, 96(sp)
  REMW s5, t4, t3
  ADD s3, s5, zero
  JAL zero, bb46
bb54:
  LW t4, 112(sp)
  LW t3, 96(sp)
  DIVW s5, t4, t3
  ADD s3, s5, zero
  JAL zero, bb44
bb55:
  LW t4, 96(sp)
  LW t3, 112(sp)
  MULW s5, t4, t3
  ADD s3, s5, zero
  JAL zero, bb42
bb56:
  LW t4, 112(sp)
  LW t3, 96(sp)
  SUBW s5, t4, t3
  ADD s3, s5, zero
  JAL zero, bb40
bb57:
  LW t4, 96(sp)
  LW t3, 112(sp)
  ADDW s5, t4, t3
  ADD s3, s5, zero
  JAL zero, bb38
bb58:
  ADDI s0, zero, 1
  JAL zero, bb28
bb59:
  ADDI s0, zero, 1
  JAL zero, bb26
bb60:
  ADDI s0, zero, 1
  JAL zero, bb24
bb61:
  ADDI s0, zero, 1
  JAL zero, bb22
bb62:
  ADDI s0, zero, 1
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
  SLLIW s1, s1, 2
  LA s2, get2
  ADD s1, s2, s1
  ADDI s2, zero, 32
  SW s2, 0(s1)
  LA s1, ii
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  SLLIW s1, s1, 2
  LA s2, get2
  ADD s1, s2, s1
  SW s0, 0(s1)
  LA s0, ii
  LW s0, 0(s0)
  ADDIW s0, s0, 2
  LA s1, ii
  SW s0, 0(s1)
  JAL zero, bb14
bb64:
  LA s0, i
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s1, get
  ADD s0, s1, s0
  LW s0, 0(s0)
  SLTI s1, s0, 48
  XORI s1, s1, 1
  BNE s1, zero, bb178
  # implict jump to bb65
bb65:
  ADD s1, zero, zero
  # implict jump to bb66
bb66:
  ADD s1, s1, zero
  BNE s1, zero, bb177
  # implict jump to bb67
bb67:
  ADD s0, zero, zero
  # implict jump to bb68
bb68:
  ADD s0, s0, zero
  XORI s0, s0, 1
  SLTIU s0, s0, 1
  BNE s0, zero, bb176
  # implict jump to bb69
bb69:
  LA s0, i
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s1, get
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 40
  SLTIU s0, s0, 1
  BNE s0, zero, bb175
  # implict jump to bb70
bb70:
  LA s0, i
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s1, get
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 94
  SLTIU s0, s0, 1
  BNE s0, zero, bb174
  # implict jump to bb71
bb71:
  LA s0, i
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s1, get
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 41
  SLTIU s0, s0, 1
  BNE s0, zero, bb171
  # implict jump to bb72
bb72:
  LA s0, i
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s1, get
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, 43
  SLTIU s0, s0, 1
  BNE s0, zero, bb150
  # implict jump to bb73
bb73:
  LB t4, 20(sp)
  ADD s0, t4, zero
  LB t4, 84(sp)
  ADD s1, t4, zero
  LB t4, 73(sp)
  ADD s2, t4, zero
  LB t4, 70(sp)
  ADD s3, t4, zero
  LB t4, 71(sp)
  ADD s4, t4, zero
  # implict jump to bb74
bb74:
  ADD t4, s4, zero
  SB t4, 4(sp)
  ADD t4, s3, zero
  SB t4, 3(sp)
  ADD t4, s2, zero
  SB t4, 1(sp)
  ADD t4, s1, zero
  SB t4, 42(sp)
  ADD s0, s0, zero
  LA s5, i
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s6, get
  ADD s5, s6, s5
  LW s5, 0(s5)
  XORI s5, s5, 45
  SLTIU s5, s5, 1
  BNE s5, zero, bb129
  # implict jump to bb75
bb75:
  LB t4, 85(sp)
  ADD s5, t4, zero
  LB t4, 76(sp)
  ADD s6, t4, zero
  LB t4, 75(sp)
  ADD s7, t4, zero
  LB t4, 74(sp)
  ADD s8, t4, zero
  LB t4, 69(sp)
  ADD s9, t4, zero
  # implict jump to bb76
bb76:
  ADD t4, s9, zero
  SB t4, 2(sp)
  ADD t4, s8, zero
  SB t4, 12(sp)
  ADD t4, s7, zero
  SB t4, 44(sp)
  ADD t4, s6, zero
  SB t4, 43(sp)
  ADD t4, s5, zero
  SB t4, 41(sp)
  LA s4, i
  LW s4, 0(s4)
  SLLIW s4, s4, 2
  LA s10, get
  ADD s4, s10, s4
  LW s4, 0(s4)
  XORI s4, s4, 42
  SLTIU s4, s4, 1
  BNE s4, zero, bb114
  # implict jump to bb77
bb77:
  LB t4, 34(sp)
  ADD s4, t4, zero
  LB t4, 22(sp)
  ADD s10, t4, zero
  LB t4, 47(sp)
  ADD s11, t4, zero
  # implict jump to bb78
bb78:
  ADD t4, s11, zero
  SB t4, 40(sp)
  ADD s10, s10, zero
  ADD s4, s4, zero
  LA s2, i
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LA s3, get
  ADD s2, s3, s2
  LW s2, 0(s2)
  XORI s2, s2, 47
  SLTIU s2, s2, 1
  BNE s2, zero, bb99
  # implict jump to bb79
bb79:
  LB t4, 15(sp)
  ADD s2, t4, zero
  LB t4, 18(sp)
  ADD s3, t4, zero
  LB t4, 21(sp)
  ADD s9, t4, zero
  # implict jump to bb80
bb80:
  ADD s9, s9, zero
  ADD s3, s3, zero
  ADD s2, s2, zero
  LA s6, i
  LW s6, 0(s6)
  SLLIW s6, s6, 2
  LA s7, get
  ADD s6, s7, s6
  LW s6, 0(s6)
  XORI s6, s6, 37
  SLTIU s6, s6, 1
  BNE s6, zero, bb84
  # implict jump to bb81
bb81:
  LB t4, 16(sp)
  ADD s6, t4, zero
  LB t4, 17(sp)
  ADD s7, t4, zero
  LB t4, 19(sp)
  ADD s8, t4, zero
  # implict jump to bb82
bb82:
  ADD s8, s8, zero
  ADD s7, s7, zero
  ADD s6, s6, zero
  LA s1, ii
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  LA s5, get2
  ADD s1, s5, s1
  ADDI s5, zero, 32
  SW s5, 0(s1)
  LA s1, ii
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s5, ii
  SW s1, 0(s5)
  ADD t4, s2, zero
  SB t4, 39(sp)
  ADD t4, s6, zero
  SB t4, 38(sp)
  ADD t4, s7, zero
  SB t4, 37(sp)
  ADD t4, s3, zero
  SB t4, 36(sp)
  ADD t4, s8, zero
  SB t4, 35(sp)
  ADD t4, s0, zero
  SB t4, 23(sp)
  ADD t4, s9, zero
  SB t4, 33(sp)
  ADD t4, s4, zero
  SB t4, 32(sp)
  ADD t4, s10, zero
  SB t4, 31(sp)
  LB t3, 40(sp)
  ADD t4, t3, zero
  SB t4, 30(sp)
  LB t4, 41(sp)
  ADD s10, t4, zero
  LB t4, 42(sp)
  ADD s11, t4, zero
  LB t4, 43(sp)
  ADD s1, t4, zero
  LB t4, 44(sp)
  ADD s2, t4, zero
  LB t4, 12(sp)
  ADD s5, t4, zero
  LB t4, 1(sp)
  ADD s3, t4, zero
  LB t4, 2(sp)
  ADD s6, t4, zero
  LB t4, 3(sp)
  ADD s0, t4, zero
  LB t4, 4(sp)
  ADD s7, t4, zero
  # implict jump to bb83
bb83:
  ADD t4, s7, zero
  SB t4, 29(sp)
  ADD t4, s0, zero
  SB t4, 28(sp)
  ADD t4, s6, zero
  SB t4, 27(sp)
  ADD t4, s3, zero
  SB t4, 26(sp)
  ADD t4, s5, zero
  SB t4, 25(sp)
  ADD t4, s2, zero
  SB t4, 24(sp)
  ADD t4, s1, zero
  SB t4, 65(sp)
  ADD t4, s11, zero
  SB t4, 66(sp)
  ADD t4, s10, zero
  SB t4, 67(sp)
  LB t4, 30(sp)
  ADD s4, t4, zero
  LB t4, 31(sp)
  ADD s8, t4, zero
  LB t4, 32(sp)
  ADD s9, t4, zero
  LB t4, 33(sp)
  ADD s7, t4, zero
  LB t4, 23(sp)
  ADD s0, t4, zero
  LB t4, 35(sp)
  ADD s6, t4, zero
  LB t4, 36(sp)
  ADD s3, t4, zero
  LB t4, 37(sp)
  ADD s5, t4, zero
  LB t4, 38(sp)
  ADD s2, t4, zero
  LB t4, 39(sp)
  ADD s1, t4, zero
  LA s11, i
  LW s11, 0(s11)
  ADDIW s11, s11, 1
  LA s10, i
  SW s11, 0(s10)
  ADD t4, s1, zero
  SB t4, 72(sp)
  ADD t4, s2, zero
  SB t4, 77(sp)
  ADD t4, s5, zero
  SB t4, 55(sp)
  ADD t4, s3, zero
  SB t4, 54(sp)
  ADD t4, s6, zero
  SB t4, 53(sp)
  ADD t4, s0, zero
  SB t4, 52(sp)
  ADD t4, s7, zero
  SB t4, 51(sp)
  ADD t4, s9, zero
  SB t4, 50(sp)
  ADD t4, s8, zero
  SB t4, 49(sp)
  ADD t4, s4, zero
  SB t4, 48(sp)
  LB t3, 67(sp)
  ADD t4, t3, zero
  SB t4, 57(sp)
  LB t3, 66(sp)
  ADD t4, t3, zero
  SB t4, 46(sp)
  LB t3, 65(sp)
  ADD t4, t3, zero
  SB t4, 83(sp)
  LB t3, 24(sp)
  ADD t4, t3, zero
  SB t4, 82(sp)
  LB t3, 25(sp)
  ADD t4, t3, zero
  SB t4, 81(sp)
  LB t3, 26(sp)
  ADD t4, t3, zero
  SB t4, 80(sp)
  LB t3, 27(sp)
  ADD t4, t3, zero
  SB t4, 79(sp)
  LB t3, 28(sp)
  ADD t4, t3, zero
  SB t4, 78(sp)
  LB t3, 29(sp)
  ADD t4, t3, zero
  SB t4, 68(sp)
  JAL zero, bb13
bb84:
  LA s1, chat
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  LA s5, chas
  ADD s1, s5, s1
  LW s1, 0(s1)
  XORI s1, s1, 42
  SLTIU s1, s1, 1
  BNE s1, zero, bb98
  # implict jump to bb85
bb85:
  LA s1, chat
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  LA s5, chas
  ADD s1, s5, s1
  LW s1, 0(s1)
  XORI s1, s1, 47
  SLTIU s1, s1, 1
  ADD s1, s1, zero
  # implict jump to bb86
bb86:
  ADD t4, s1, zero
  SB t4, 56(sp)
  LB t4, 56(sp)
  BNE t4, zero, bb97
  # implict jump to bb87
bb87:
  LA s1, chat
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  LA s5, chas
  ADD s1, s5, s1
  LW s1, 0(s1)
  XORI s1, s1, 37
  SLTIU s1, s1, 1
  ADD s1, s1, zero
  # implict jump to bb88
bb88:
  ADD t4, s1, zero
  SB t4, 13(sp)
  LB t4, 13(sp)
  BNE t4, zero, bb96
  # implict jump to bb89
bb89:
  LA s1, chat
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  LA s5, chas
  ADD s1, s5, s1
  LW s1, 0(s1)
  XORI s1, s1, 94
  SLTIU s1, s1, 1
  ADD s1, s1, zero
  # implict jump to bb90
bb90:
  ADD t4, s1, zero
  SB t4, 14(sp)
  LB t4, 14(sp)
  BNE t4, zero, bb92
  # implict jump to bb91
bb91:
  LA s1, chat
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s5, chat
  SW s1, 0(s5)
  SLLIW s1, s1, 2
  LA s5, chas
  ADD s1, s5, s1
  ADDI s5, zero, 37
  SW s5, 0(s1)
  LB t4, 13(sp)
  ADD s6, t4, zero
  LB t4, 14(sp)
  ADD s7, t4, zero
  LB t4, 56(sp)
  ADD s8, t4, zero
  JAL zero, bb82
bb92:
  LA s1, chat
  LW s1, 0(s1)
  ADDI s5, zero, 1
  SUBW s5, s1, s5
  LA s11, chat
  SW s5, 0(s11)
  SLLIW s1, s1, 2
  LA s5, chas
  ADD s1, s5, s1
  LW s1, 0(s1)
  LA s5, c
  SW s1, 0(s5)
  LA s1, ii
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  LA s5, get2
  ADD s1, s5, s1
  ADDI s5, zero, 32
  SW s5, 0(s1)
  LA s1, ii
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  SLLIW s1, s1, 2
  LA s5, get2
  ADD s1, s5, s1
  LA s5, c
  LW s5, 0(s5)
  SW s5, 0(s1)
  LA s1, ii
  LW s1, 0(s1)
  ADDIW s1, s1, 2
  LA s5, ii
  SW s1, 0(s5)
  LA s1, chat
  LW s1, 0(s1)
  XOR s1, s1, zero
  SLTIU s1, s1, 1
  BNE s1, zero, bb95
  # implict jump to bb93
bb93:
  ADDI s1, zero, 1
  # implict jump to bb94
bb94:
  ADD s1, s1, zero
  XOR s1, s1, zero
  SLTIU s1, s1, 1
  BNE s1, zero, bb91
  JAL zero, bb84
bb95:
  ADD s1, zero, zero
  JAL zero, bb94
bb96:
  ADDI s1, zero, 1
  JAL zero, bb90
bb97:
  ADDI s1, zero, 1
  JAL zero, bb88
bb98:
  ADDI s1, zero, 1
  JAL zero, bb86
bb99:
  LA s8, chat
  LW s8, 0(s8)
  SLLIW s8, s8, 2
  LA s7, chas
  ADD s7, s7, s8
  LW s7, 0(s7)
  XORI s7, s7, 42
  SLTIU s7, s7, 1
  BNE s7, zero, bb113
  # implict jump to bb100
bb100:
  LA s7, chat
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  LA s8, chas
  ADD s7, s8, s7
  LW s7, 0(s7)
  XORI s7, s7, 47
  SLTIU s7, s7, 1
  ADD s7, s7, zero
  # implict jump to bb101
bb101:
  ADD t4, s7, zero
  SB t4, 11(sp)
  LB t4, 11(sp)
  BNE t4, zero, bb112
  # implict jump to bb102
bb102:
  LA s7, chat
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  LA s8, chas
  ADD s7, s8, s7
  LW s7, 0(s7)
  XORI s7, s7, 37
  SLTIU s7, s7, 1
  ADD s7, s7, zero
  # implict jump to bb103
bb103:
  ADD t4, s7, zero
  SB t4, 0(sp)
  LB t4, 0(sp)
  BNE t4, zero, bb111
  # implict jump to bb104
bb104:
  LA s7, chat
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  LA s8, chas
  ADD s7, s8, s7
  LW s7, 0(s7)
  XORI s7, s7, 94
  SLTIU s7, s7, 1
  ADD s7, s7, zero
  # implict jump to bb105
bb105:
  ADD t4, s7, zero
  SB t4, 10(sp)
  LB t4, 10(sp)
  BNE t4, zero, bb107
  # implict jump to bb106
bb106:
  LA s6, chat
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, chat
  SW s6, 0(s7)
  SLLIW s6, s6, 2
  LA s7, chas
  ADD s6, s7, s6
  ADDI s7, zero, 47
  SW s7, 0(s6)
  LB t4, 10(sp)
  ADD s2, t4, zero
  LB t4, 11(sp)
  ADD s3, t4, zero
  LB t4, 0(sp)
  ADD s9, t4, zero
  JAL zero, bb80
bb107:
  LA s7, chat
  LW s7, 0(s7)
  ADDI s8, zero, 1
  SUBW s8, s7, s8
  LA s6, chat
  SW s8, 0(s6)
  SLLIW s6, s7, 2
  LA s7, chas
  ADD s6, s7, s6
  LW s6, 0(s6)
  LA s7, c
  SW s6, 0(s7)
  LA s6, ii
  LW s6, 0(s6)
  SLLIW s6, s6, 2
  LA s7, get2
  ADD s6, s7, s6
  ADDI s7, zero, 32
  SW s7, 0(s6)
  LA s6, ii
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  SLLIW s6, s6, 2
  LA s7, get2
  ADD s6, s7, s6
  LA s7, c
  LW s7, 0(s7)
  SW s7, 0(s6)
  LA s6, ii
  LW s6, 0(s6)
  ADDIW s6, s6, 2
  LA s7, ii
  SW s6, 0(s7)
  LA s6, chat
  LW s6, 0(s6)
  XOR s6, s6, zero
  SLTIU s6, s6, 1
  BNE s6, zero, bb110
  # implict jump to bb108
bb108:
  ADDI s6, zero, 1
  # implict jump to bb109
bb109:
  ADD s6, s6, zero
  XOR s6, s6, zero
  SLTIU s6, s6, 1
  BNE s6, zero, bb106
  JAL zero, bb99
bb110:
  ADD s6, zero, zero
  JAL zero, bb109
bb111:
  ADDI s7, zero, 1
  JAL zero, bb105
bb112:
  ADDI s7, zero, 1
  JAL zero, bb103
bb113:
  ADDI s7, zero, 1
  JAL zero, bb101
bb114:
  LA s3, chat
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  LA s9, chas
  ADD s3, s9, s3
  LW s3, 0(s3)
  XORI s3, s3, 42
  SLTIU s3, s3, 1
  BNE s3, zero, bb128
  # implict jump to bb115
bb115:
  LA s3, chat
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  LA s9, chas
  ADD s3, s9, s3
  LW s3, 0(s3)
  XORI s3, s3, 47
  SLTIU s3, s3, 1
  ADD s3, s3, zero
  # implict jump to bb116
bb116:
  ADD t4, s3, zero
  SB t4, 64(sp)
  LB t4, 64(sp)
  BNE t4, zero, bb127
  # implict jump to bb117
bb117:
  LA s3, chat
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  LA s9, chas
  ADD s3, s9, s3
  LW s3, 0(s3)
  XORI s3, s3, 37
  SLTIU s3, s3, 1
  ADD s3, s3, zero
  # implict jump to bb118
bb118:
  ADD t4, s3, zero
  SB t4, 9(sp)
  LB t4, 9(sp)
  BNE t4, zero, bb126
  # implict jump to bb119
bb119:
  LA s3, chat
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  LA s9, chas
  ADD s3, s9, s3
  LW s3, 0(s3)
  XORI s3, s3, 94
  SLTIU s3, s3, 1
  ADD s3, s3, zero
  # implict jump to bb120
bb120:
  ADD t4, s3, zero
  SB t4, 59(sp)
  LB t4, 59(sp)
  BNE t4, zero, bb122
  # implict jump to bb121
bb121:
  LA s2, chat
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s3, chat
  SW s2, 0(s3)
  SLLIW s2, s2, 2
  LA s3, chas
  ADD s2, s3, s2
  ADDI s3, zero, 42
  SW s3, 0(s2)
  LB t4, 59(sp)
  ADD s4, t4, zero
  LB t4, 9(sp)
  ADD s10, t4, zero
  LB t4, 64(sp)
  ADD s11, t4, zero
  JAL zero, bb78
bb122:
  LA s3, chat
  LW s3, 0(s3)
  ADDI s9, zero, 1
  SUBW s9, s3, s9
  LA s2, chat
  SW s9, 0(s2)
  SLLIW s2, s3, 2
  LA s3, chas
  ADD s2, s3, s2
  LW s2, 0(s2)
  LA s3, c
  SW s2, 0(s3)
  LA s2, ii
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LA s3, get2
  ADD s2, s3, s2
  ADDI s3, zero, 32
  SW s3, 0(s2)
  LA s2, ii
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  SLLIW s2, s2, 2
  LA s3, get2
  ADD s2, s3, s2
  LA s3, c
  LW s3, 0(s3)
  SW s3, 0(s2)
  LA s2, ii
  LW s2, 0(s2)
  ADDIW s2, s2, 2
  LA s3, ii
  SW s2, 0(s3)
  LA s2, chat
  LW s2, 0(s2)
  XOR s2, s2, zero
  SLTIU s2, s2, 1
  BNE s2, zero, bb125
  # implict jump to bb123
bb123:
  ADDI s2, zero, 1
  # implict jump to bb124
bb124:
  ADD s2, s2, zero
  XOR s2, s2, zero
  SLTIU s2, s2, 1
  BNE s2, zero, bb121
  JAL zero, bb114
bb125:
  ADD s2, zero, zero
  JAL zero, bb124
bb126:
  ADDI s3, zero, 1
  JAL zero, bb120
bb127:
  ADDI s3, zero, 1
  JAL zero, bb118
bb128:
  ADDI s3, zero, 1
  JAL zero, bb116
bb129:
  LA s10, chat
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, chas
  ADD s10, s11, s10
  LW s10, 0(s10)
  XORI s10, s10, 43
  SLTIU s10, s10, 1
  BNE s10, zero, bb149
  # implict jump to bb130
bb130:
  LA s10, chat
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, chas
  ADD s10, s11, s10
  LW s10, 0(s10)
  XORI s10, s10, 45
  SLTIU s10, s10, 1
  ADD s10, s10, zero
  # implict jump to bb131
bb131:
  ADD t4, s10, zero
  SB t4, 62(sp)
  LB t4, 62(sp)
  BNE t4, zero, bb148
  # implict jump to bb132
bb132:
  LA s10, chat
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, chas
  ADD s10, s11, s10
  LW s10, 0(s10)
  XORI s10, s10, 42
  SLTIU s10, s10, 1
  ADD s10, s10, zero
  # implict jump to bb133
bb133:
  ADD t4, s10, zero
  SB t4, 45(sp)
  LB t4, 45(sp)
  BNE t4, zero, bb147
  # implict jump to bb134
bb134:
  LA s10, chat
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, chas
  ADD s10, s11, s10
  LW s10, 0(s10)
  XORI s10, s10, 47
  SLTIU s10, s10, 1
  ADD s10, s10, zero
  # implict jump to bb135
bb135:
  ADD t4, s10, zero
  SB t4, 63(sp)
  LB t4, 63(sp)
  BNE t4, zero, bb146
  # implict jump to bb136
bb136:
  LA s10, chat
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, chas
  ADD s10, s11, s10
  LW s10, 0(s10)
  XORI s10, s10, 37
  SLTIU s10, s10, 1
  ADD s10, s10, zero
  # implict jump to bb137
bb137:
  ADD t4, s10, zero
  SB t4, 8(sp)
  LB t4, 8(sp)
  BNE t4, zero, bb145
  # implict jump to bb138
bb138:
  LA s10, chat
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, chas
  ADD s10, s11, s10
  LW s10, 0(s10)
  XORI s10, s10, 94
  SLTIU s10, s10, 1
  ADD s10, s10, zero
  # implict jump to bb139
bb139:
  ADD t4, s10, zero
  SB t4, 58(sp)
  LB t4, 58(sp)
  BNE t4, zero, bb141
  # implict jump to bb140
bb140:
  LA s4, chat
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s10, chat
  SW s4, 0(s10)
  SLLIW s4, s4, 2
  LA s10, chas
  ADD s4, s10, s4
  ADDI s10, zero, 45
  SW s10, 0(s4)
  LB t4, 58(sp)
  ADD s5, t4, zero
  LB t4, 8(sp)
  ADD s6, t4, zero
  LB t4, 63(sp)
  ADD s7, t4, zero
  LB t4, 45(sp)
  ADD s8, t4, zero
  LB t4, 62(sp)
  ADD s9, t4, zero
  JAL zero, bb76
bb141:
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
  LA s4, ii
  LW s4, 0(s4)
  SLLIW s4, s4, 2
  LA s10, get2
  ADD s4, s10, s4
  ADDI s10, zero, 32
  SW s10, 0(s4)
  LA s4, ii
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  SLLIW s4, s4, 2
  LA s10, get2
  ADD s4, s10, s4
  LA s10, c
  LW s10, 0(s10)
  SW s10, 0(s4)
  LA s4, ii
  LW s4, 0(s4)
  ADDIW s4, s4, 2
  LA s10, ii
  SW s4, 0(s10)
  LA s4, chat
  LW s4, 0(s4)
  XOR s4, s4, zero
  SLTIU s4, s4, 1
  BNE s4, zero, bb144
  # implict jump to bb142
bb142:
  ADDI s4, zero, 1
  # implict jump to bb143
bb143:
  ADD s4, s4, zero
  XOR s4, s4, zero
  SLTIU s4, s4, 1
  BNE s4, zero, bb140
  JAL zero, bb129
bb144:
  ADD s4, zero, zero
  JAL zero, bb143
bb145:
  ADDI s10, zero, 1
  JAL zero, bb139
bb146:
  ADDI s10, zero, 1
  JAL zero, bb137
bb147:
  ADDI s10, zero, 1
  JAL zero, bb135
bb148:
  ADDI s10, zero, 1
  JAL zero, bb133
bb149:
  ADDI s10, zero, 1
  JAL zero, bb131
bb150:
  LA s5, chat
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s6, chas
  ADD s5, s6, s5
  LW s5, 0(s5)
  XORI s5, s5, 43
  SLTIU s5, s5, 1
  BNE s5, zero, bb170
  # implict jump to bb151
bb151:
  LA s5, chat
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s6, chas
  ADD s5, s6, s5
  LW s5, 0(s5)
  XORI s5, s5, 45
  SLTIU s5, s5, 1
  ADD s5, s5, zero
  # implict jump to bb152
bb152:
  ADD t4, s5, zero
  SB t4, 5(sp)
  LB t4, 5(sp)
  BNE t4, zero, bb169
  # implict jump to bb153
bb153:
  LA s5, chat
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s6, chas
  ADD s5, s6, s5
  LW s5, 0(s5)
  XORI s5, s5, 42
  SLTIU s5, s5, 1
  ADD s5, s5, zero
  # implict jump to bb154
bb154:
  ADD t4, s5, zero
  SB t4, 7(sp)
  LB t4, 7(sp)
  BNE t4, zero, bb168
  # implict jump to bb155
bb155:
  LA s5, chat
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s6, chas
  ADD s5, s6, s5
  LW s5, 0(s5)
  XORI s5, s5, 47
  SLTIU s5, s5, 1
  ADD s5, s5, zero
  # implict jump to bb156
bb156:
  ADD t4, s5, zero
  SB t4, 6(sp)
  LB t4, 6(sp)
  BNE t4, zero, bb167
  # implict jump to bb157
bb157:
  LA s5, chat
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s6, chas
  ADD s5, s6, s5
  LW s5, 0(s5)
  XORI s5, s5, 37
  SLTIU s5, s5, 1
  ADD s5, s5, zero
  # implict jump to bb158
bb158:
  ADD t4, s5, zero
  SB t4, 61(sp)
  LB t4, 61(sp)
  BNE t4, zero, bb166
  # implict jump to bb159
bb159:
  LA s5, chat
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s6, chas
  ADD s5, s6, s5
  LW s5, 0(s5)
  XORI s5, s5, 94
  SLTIU s5, s5, 1
  ADD s5, s5, zero
  # implict jump to bb160
bb160:
  ADD t4, s5, zero
  SB t4, 60(sp)
  LB t4, 60(sp)
  BNE t4, zero, bb162
  # implict jump to bb161
bb161:
  LA s5, chat
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, chat
  SW s5, 0(s6)
  SLLIW s5, s5, 2
  LA s6, chas
  ADD s5, s6, s5
  ADDI s6, zero, 43
  SW s6, 0(s5)
  LB t4, 5(sp)
  ADD s0, t4, zero
  LB t4, 6(sp)
  ADD s1, t4, zero
  LB t4, 61(sp)
  ADD s2, t4, zero
  LB t4, 60(sp)
  ADD s3, t4, zero
  LB t4, 7(sp)
  ADD s4, t4, zero
  JAL zero, bb74
bb162:
  LA s5, chat
  LW s5, 0(s5)
  ADDI s6, zero, 1
  SUBW s6, s5, s6
  LA s7, chat
  SW s6, 0(s7)
  SLLIW s5, s5, 2
  LA s6, chas
  ADD s5, s6, s5
  LW s5, 0(s5)
  LA s6, c
  SW s5, 0(s6)
  LA s5, ii
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s6, get2
  ADD s5, s6, s5
  ADDI s6, zero, 32
  SW s6, 0(s5)
  LA s5, ii
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  SLLIW s5, s5, 2
  LA s6, get2
  ADD s5, s6, s5
  LA s6, c
  LW s6, 0(s6)
  SW s6, 0(s5)
  LA s5, ii
  LW s5, 0(s5)
  ADDIW s5, s5, 2
  LA s6, ii
  SW s5, 0(s6)
  LA s5, chat
  LW s5, 0(s5)
  XOR s5, s5, zero
  SLTIU s5, s5, 1
  BNE s5, zero, bb165
  # implict jump to bb163
bb163:
  ADDI s5, zero, 1
  # implict jump to bb164
bb164:
  ADD s5, s5, zero
  XOR s5, s5, zero
  SLTIU s5, s5, 1
  BNE s5, zero, bb161
  JAL zero, bb150
bb165:
  ADD s5, zero, zero
  JAL zero, bb164
bb166:
  ADDI s5, zero, 1
  JAL zero, bb160
bb167:
  ADDI s5, zero, 1
  JAL zero, bb158
bb168:
  ADDI s5, zero, 1
  JAL zero, bb156
bb169:
  ADDI s5, zero, 1
  JAL zero, bb154
bb170:
  ADDI s5, zero, 1
  JAL zero, bb152
bb171:
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
  # implict jump to bb172
bb172:
  LA s0, c
  LW s0, 0(s0)
  XORI s0, s0, 40
  SLTU s0, zero, s0
  BNE s0, zero, bb173
  JAL zero, bb72
bb173:
  LA s4, ii
  LW s4, 0(s4)
  SLLIW s4, s4, 2
  LA s8, get2
  ADD s4, s8, s4
  ADDI s8, zero, 32
  SW s8, 0(s4)
  LA s4, ii
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  SLLIW s4, s4, 2
  LA s8, get2
  ADD s4, s8, s4
  LA s8, c
  LW s8, 0(s8)
  SW s8, 0(s4)
  LA s4, ii
  LW s4, 0(s4)
  ADDIW s4, s4, 2
  LA s8, ii
  SW s4, 0(s8)
  LA s4, chat
  LW s4, 0(s4)
  ADDI s8, zero, 1
  SUBW s8, s4, s8
  LA s9, chat
  SW s8, 0(s9)
  SLLIW s4, s4, 2
  LA s8, chas
  ADD s4, s8, s4
  LW s4, 0(s4)
  LA s8, c
  SW s4, 0(s8)
  JAL zero, bb172
bb174:
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
  JAL zero, bb71
bb175:
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
  JAL zero, bb70
bb176:
  LA s4, ii
  LW s4, 0(s4)
  SLLIW s4, s4, 2
  LA s8, get2
  ADD s4, s8, s4
  LA s8, i
  LW s8, 0(s8)
  SLLIW s8, s8, 2
  LA s9, get
  ADD s8, s9, s8
  LW s8, 0(s8)
  SW s8, 0(s4)
  LA s4, ii
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s8, ii
  SW s4, 0(s8)
  LB t3, 15(sp)
  ADD t4, t3, zero
  SB t4, 39(sp)
  LB t3, 16(sp)
  ADD t4, t3, zero
  SB t4, 38(sp)
  LB t3, 17(sp)
  ADD t4, t3, zero
  SB t4, 37(sp)
  LB t3, 18(sp)
  ADD t4, t3, zero
  SB t4, 36(sp)
  LB t3, 19(sp)
  ADD t4, t3, zero
  SB t4, 35(sp)
  LB t3, 20(sp)
  ADD t4, t3, zero
  SB t4, 23(sp)
  LB t3, 21(sp)
  ADD t4, t3, zero
  SB t4, 33(sp)
  LB t3, 34(sp)
  ADD t4, t3, zero
  SB t4, 32(sp)
  LB t3, 22(sp)
  ADD t4, t3, zero
  SB t4, 31(sp)
  LB t3, 47(sp)
  ADD t4, t3, zero
  SB t4, 30(sp)
  LB t4, 85(sp)
  ADD s10, t4, zero
  LB t4, 84(sp)
  ADD s11, t4, zero
  LB t4, 76(sp)
  ADD s1, t4, zero
  LB t4, 75(sp)
  ADD s2, t4, zero
  LB t4, 74(sp)
  ADD s5, t4, zero
  LB t4, 73(sp)
  ADD s3, t4, zero
  LB t4, 69(sp)
  ADD s6, t4, zero
  LB t4, 70(sp)
  ADD s0, t4, zero
  LB t4, 71(sp)
  ADD s7, t4, zero
  JAL zero, bb83
bb177:
  ADDI s0, zero, 1
  JAL zero, bb68
bb178:
  ADDI s2, zero, 57
  SLT s0, s2, s0
  XORI s0, s0, 1
  ADD s1, s0, zero
  JAL zero, bb66
bb179:
  LW t4, 92(sp)
  SLLIW s0, t4, 2
  LA s1, get
  ADD s0, s1, s0
  LW t4, 104(sp)
  SW t4, 0(s0)
  LW t4, 92(sp)
  ADDIW s0, t4, 1
  CALL getch
  ADD a0, a0, zero
  ADD t4, s0, zero
  SW t4, 88(sp)
  ADD t4, a0, zero
  SW t4, 100(sp)
  JAL zero, bb9
bb180:
  LW t4, 104(sp)
  XORI s6, t4, 10
  SLTU s6, zero, s6
  ADD s4, s6, zero
  JAL zero, bb11
find:
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
  LA s1, c
  SW s0, 0(s1)
  LA s0, ii
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s1, get2
  ADD s0, s1, s0
  ADDI s1, zero, 32
  SW s1, 0(s0)
  LA s0, ii
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  SLLIW s0, s0, 2
  LA s1, get2
  ADD s0, s1, s0
  LA s1, c
  LW s1, 0(s1)
  SW s1, 0(s0)
  LA s0, ii
  LW s0, 0(s0)
  ADDIW s0, s0, 2
  LA s1, ii
  SW s0, 0(s1)
  LA s0, chat
  LW s0, 0(s0)
  XOR s0, s0, zero
  SLTIU s0, s0, 1
  BNE s0, zero, bb183
  # implict jump to bb182
bb182:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb183:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
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
  ADD s1, s1, zero
  # implict jump to bb186
bb186:
  ADD s3, s1, zero
  ADD s4, s2, zero
  XORI s5, s3, 13
  SLTU s5, zero, s5
  BNE s5, zero, bb191
  # implict jump to bb187
bb187:
  ADD s5, zero, zero
  # implict jump to bb188
bb188:
  ADD s5, s5, zero
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
  ADD a0, a0, zero
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
  ADD s1, s1, zero
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
