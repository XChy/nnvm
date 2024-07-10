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
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 1
  SUBW s2, s1, s0
  LA s0, chat
  SW s2, 0(s0)
  SLLIW s0, s1, 2
  LA s1, chas
  ADD s2, s1, s0
  LW s0, 0(s2)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
chapush:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  LA s1, chat
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, chat
  SW s1, 0(s2)
  SLLIW s2, s1, 2
  LA s1, chas
  ADD s3, s1, s2
  SW s0, 0(s3)
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
intpush:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  LA s1, intt
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, intt
  SW s1, 0(s2)
  SLLIW s2, s1, 2
  LA s1, ints
  ADD s3, s1, s2
  SW s0, 0(s3)
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
power:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s7, 48(sp)
  SD s5, 56(sp)
  SD s0, 64(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADDI s2, zero, 1
  ADD s3, s1, zero
  # implict jump to bb4
bb4:
  ADD s1, s3, zero
  ADD s4, s2, zero
  XOR s5, s1, zero
  SLTU s6, zero, s5
  BNE s6, zero, bb6
  # implict jump to bb5
bb5:
  ADD a0, s4, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s7, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb6:
  MULW s5, s4, s0
  ADDI s6, zero, 1
  SUBW s7, s1, s6
  ADD s2, s5, zero
  ADD s3, s7, zero
  JAL zero, bb4
intadd:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  LA s1, intt
  LW s2, 0(s1)
  SLLIW s1, s2, 2
  LA s2, ints
  ADD s3, s2, s1
  LW s1, 0(s3)
  ADDI s2, zero, 10
  MULW s4, s1, s2
  SW s4, 0(s3)
  LA s1, intt
  LW s2, 0(s1)
  SLLIW s1, s2, 2
  LA s2, ints
  ADD s3, s2, s1
  LW s1, 0(s3)
  ADDW s2, s1, s0
  SW s2, 0(s3)
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -352
  SD ra, 248(sp)
  SD s9, 256(sp)
  SD s3, 264(sp)
  SD s8, 272(sp)
  SD s10, 280(sp)
  SD s7, 288(sp)
  SD s5, 296(sp)
  SD s0, 304(sp)
  SD s11, 312(sp)
  SD s4, 320(sp)
  SD s6, 328(sp)
  SD s1, 336(sp)
  SD s2, 344(sp)
  LA s8, intt
  SW zero, 0(s8)
  LA s8, chat
  SW zero, 0(s8)
  CALL getch
  ADD s8, a0, zero
  ADD s5, zero, zero
  ADD s10, s8, zero
  # implict jump to bb9
bb9:
  ADD t4, s10, zero
  SW t4, 20(sp)
  ADD t4, s5, zero
  SW t4, 12(sp)
  LW t4, 20(sp)
  XORI s8, t4, 13
  SLTU s11, zero, s8
  BNE s11, zero, bb180
  # implict jump to bb10
bb10:
  ADD t4, zero, zero
  SB t4, 25(sp)
  # implict jump to bb11
bb11:
  LB t4, 25(sp)
  ADD s11, t4, zero
  BNE s11, zero, bb179
  # implict jump to bb12
bb12:
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADD s8, zero, zero
  ADD s10, zero, zero
  ADD s11, zero, zero
  ADD t4, zero, zero
  SB t4, 104(sp)
  ADD t4, zero, zero
  SB t4, 102(sp)
  ADD t4, zero, zero
  SB t4, 100(sp)
  ADD t4, zero, zero
  SB t4, 68(sp)
  ADD t4, zero, zero
  SB t4, 62(sp)
  ADD t4, zero, zero
  SB t4, 61(sp)
  ADD t4, zero, zero
  SB t4, 60(sp)
  ADD t4, zero, zero
  SB t4, 34(sp)
  ADD t4, zero, zero
  SB t4, 35(sp)
  ADD t4, zero, zero
  SB t4, 36(sp)
  ADD t4, zero, zero
  SB t4, 37(sp)
  ADD t4, zero, zero
  SB t4, 38(sp)
  ADD t4, zero, zero
  SB t4, 39(sp)
  ADD t4, zero, zero
  SB t4, 40(sp)
  # implict jump to bb13
bb13:
  LB t3, 40(sp)
  ADD t4, t3, zero
  SB t4, 41(sp)
  LB t3, 39(sp)
  ADD t4, t3, zero
  SB t4, 42(sp)
  LB t3, 38(sp)
  ADD t4, t3, zero
  SB t4, 43(sp)
  LB t3, 37(sp)
  ADD t4, t3, zero
  SB t4, 44(sp)
  LB t3, 36(sp)
  ADD t4, t3, zero
  SB t4, 45(sp)
  LB t3, 35(sp)
  ADD t4, t3, zero
  SB t4, 46(sp)
  LB t3, 34(sp)
  ADD t4, t3, zero
  SB t4, 47(sp)
  LB t3, 60(sp)
  ADD t4, t3, zero
  SB t4, 48(sp)
  LB t3, 61(sp)
  ADD t4, t3, zero
  SB t4, 49(sp)
  LB t3, 62(sp)
  ADD t4, t3, zero
  SB t4, 50(sp)
  LB t3, 68(sp)
  ADD t4, t3, zero
  SB t4, 51(sp)
  LB t3, 100(sp)
  ADD t4, t3, zero
  SB t4, 52(sp)
  LB t3, 102(sp)
  ADD t4, t3, zero
  SB t4, 53(sp)
  LB t3, 104(sp)
  ADD t4, t3, zero
  SB t4, 54(sp)
  ADD t4, s11, zero
  SB t4, 55(sp)
  ADD t4, s10, zero
  SB t4, 56(sp)
  ADD t4, s8, zero
  SB t4, 57(sp)
  ADD t4, s5, zero
  SB t4, 58(sp)
  ADD t4, s4, zero
  SB t4, 59(sp)
  LA s0, i
  LW s6, 0(s0)
  LW t4, 12(sp)
  SLT s0, s6, t4
  BNE s0, zero, bb64
  # implict jump to bb14
bb14:
  LA s0, chat
  LW s1, 0(s0)
  SLT s0, zero, s1
  BNE s0, zero, bb63
  # implict jump to bb15
bb15:
  LA s0, ii
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, get2
  ADD s2, s1, s0
  ADDI s0, zero, 64
  SW s0, 0(s2)
  LA s0, i
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADD s0, zero, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb16
bb16:
  ADD t4, s2, zero
  SW t4, 184(sp)
  ADD t4, s1, zero
  SW t4, 180(sp)
  ADD t4, s0, zero
  SW t4, 176(sp)
  LA s6, i
  LW s7, 0(s6)
  SLLIW s6, s7, 2
  LA s7, get2
  ADD s8, s7, s6
  LW s6, 0(s8)
  XORI s7, s6, 64
  SLTU s6, zero, s7
  BNE s6, zero, bb18
  # implict jump to bb17
bb17:
  LA s0, ints
  ADDI s1, s0, 4
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 248(sp)
  LD s9, 256(sp)
  LD s3, 264(sp)
  LD s8, 272(sp)
  LD s10, 280(sp)
  LD s7, 288(sp)
  LD s5, 296(sp)
  LD s0, 304(sp)
  LD s11, 312(sp)
  LD s4, 320(sp)
  LD s6, 328(sp)
  LD s1, 336(sp)
  LD s2, 344(sp)
  ADDI sp, sp, 352
  JALR zero, 0(ra)
bb18:
  LA s6, i
  LW s7, 0(s6)
  SLLIW s6, s7, 2
  LA s7, get2
  ADD s8, s7, s6
  LW s6, 0(s8)
  XORI s7, s6, 43
  SLTIU s6, s7, 1
  BNE s6, zero, bb62
  # implict jump to bb19
bb19:
  LA s0, i
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, get2
  ADD s2, s1, s0
  LW s0, 0(s2)
  XORI s1, s0, 45
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 188(sp)
  # implict jump to bb20
bb20:
  LB t4, 188(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb61
  # implict jump to bb21
bb21:
  LA s0, i
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, get2
  ADD s2, s1, s0
  LW s0, 0(s2)
  XORI s1, s0, 42
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 189(sp)
  # implict jump to bb22
bb22:
  LB t4, 189(sp)
  ADD s8, t4, zero
  BNE s8, zero, bb60
  # implict jump to bb23
bb23:
  LA s0, i
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, get2
  ADD s2, s1, s0
  LW s0, 0(s2)
  XORI s1, s0, 47
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 190(sp)
  # implict jump to bb24
bb24:
  LB t4, 190(sp)
  ADD s9, t4, zero
  BNE s9, zero, bb59
  # implict jump to bb25
bb25:
  LA s0, i
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, get2
  ADD s2, s1, s0
  LW s0, 0(s2)
  XORI s1, s0, 37
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 191(sp)
  # implict jump to bb26
bb26:
  LB t4, 191(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb58
  # implict jump to bb27
bb27:
  LA s0, i
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, get2
  ADD s2, s1, s0
  LW s0, 0(s2)
  XORI s1, s0, 94
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 192(sp)
  # implict jump to bb28
bb28:
  LB t4, 192(sp)
  ADD s11, t4, zero
  BNE s11, zero, bb36
  # implict jump to bb29
bb29:
  LA s0, i
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, get2
  ADD s2, s1, s0
  LW s0, 0(s2)
  XORI s1, s0, 32
  SLTU s0, zero, s1
  BNE s0, zero, bb32
  # implict jump to bb30
bb30:
  LW t4, 176(sp)
  ADD s7, t4, zero
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 240(sp)
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 236(sp)
  # implict jump to bb31
bb31:
  LW t4, 236(sp)
  ADD s5, t4, zero
  LW t4, 240(sp)
  ADD s10, t4, zero
  ADD s11, s7, zero
  LA s9, i
  LW s8, 0(s9)
  ADDIW s9, s8, 1
  LA s8, i
  SW s9, 0(s8)
  ADD s0, s11, zero
  ADD s1, s10, zero
  ADD s2, s5, zero
  JAL zero, bb16
bb32:
  LA s0, i
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, get2
  ADD s2, s1, s0
  LW s0, 0(s2)
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  LA s0, intt
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, intt
  SW s0, 0(s1)
  SLLIW s1, s0, 2
  LA s0, ints
  ADD s3, s0, s1
  SW s2, 0(s3)
  LA s0, ii
  ADDI s1, zero, 1
  SW s1, 0(s0)
  # implict jump to bb33
bb33:
  LA s0, i
  LW s1, 0(s0)
  LA s0, ii
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SLLIW s1, s0, 2
  LA s0, get2
  ADD s2, s0, s1
  LW s0, 0(s2)
  XORI s1, s0, 32
  SLTU s0, zero, s1
  BNE s0, zero, bb35
  # implict jump to bb34
bb34:
  LA s0, i
  LW s1, 0(s0)
  LA s0, ii
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  LA s0, i
  SW s2, 0(s0)
  JAL zero, bb30
bb35:
  LA s0, i
  LW s1, 0(s0)
  LA s0, ii
  LW s2, 0(s0)
  ADDW s0, s1, s2
  SLLIW s1, s0, 2
  LA s0, get2
  ADD s2, s0, s1
  LW s0, 0(s2)
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  LA s0, intt
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, ints
  ADD s3, s1, s0
  LW s0, 0(s3)
  ADDI s1, zero, 10
  MULW s4, s0, s1
  SW s4, 0(s3)
  LA s0, intt
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, ints
  ADD s3, s1, s0
  LW s0, 0(s3)
  ADDW s1, s0, s2
  SW s1, 0(s3)
  LA s0, ii
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, ii
  SW s0, 0(s1)
  JAL zero, bb33
bb36:
  LA s11, intt
  LW s5, 0(s11)
  ADDI s11, zero, 1
  SUBW s4, s5, s11
  LA s11, intt
  SW s4, 0(s11)
  SLLIW s4, s5, 2
  LA s5, ints
  ADD s11, s5, s4
  LW t4, 0(s11)
  SW t4, 200(sp)
  LA s5, intt
  LW s11, 0(s5)
  ADDI s5, zero, 1
  SUBW s3, s11, s5
  LA s5, intt
  SW s3, 0(s5)
  SLLIW s3, s11, 2
  LA s5, ints
  ADD s11, s5, s3
  LW t4, 0(s11)
  SW t4, 196(sp)
  LA s5, i
  LW s11, 0(s5)
  SLLIW s5, s11, 2
  LA s11, get2
  ADD s6, s11, s5
  LW s5, 0(s6)
  XORI s6, s5, 43
  SLTIU s5, s6, 1
  BNE s5, zero, bb57
  # implict jump to bb37
bb37:
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 204(sp)
  # implict jump to bb38
bb38:
  LW t3, 204(sp)
  ADD t4, t3, zero
  SW t4, 212(sp)
  LA s11, i
  LW s7, 0(s11)
  SLLIW s11, s7, 2
  LA s7, get2
  ADD s8, s7, s11
  LW s7, 0(s8)
  XORI s8, s7, 45
  SLTIU s7, s8, 1
  BNE s7, zero, bb56
  # implict jump to bb39
bb39:
  LW t3, 212(sp)
  ADD t4, t3, zero
  SW t4, 208(sp)
  # implict jump to bb40
bb40:
  LW t3, 208(sp)
  ADD t4, t3, zero
  SW t4, 220(sp)
  LA s11, i
  LW s9, 0(s11)
  SLLIW s11, s9, 2
  LA s9, get2
  ADD s10, s9, s11
  LW s9, 0(s10)
  XORI s10, s9, 42
  SLTIU s9, s10, 1
  BNE s9, zero, bb55
  # implict jump to bb41
bb41:
  LW t3, 220(sp)
  ADD t4, t3, zero
  SW t4, 216(sp)
  # implict jump to bb42
bb42:
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 228(sp)
  LA s11, i
  LW s3, 0(s11)
  SLLIW s11, s3, 2
  LA s3, get2
  ADD s4, s3, s11
  LW s3, 0(s4)
  XORI s4, s3, 47
  SLTIU s3, s4, 1
  BNE s3, zero, bb54
  # implict jump to bb43
bb43:
  LW t3, 228(sp)
  ADD t4, t3, zero
  SW t4, 224(sp)
  # implict jump to bb44
bb44:
  LW t4, 224(sp)
  ADD s3, t4, zero
  LA s11, i
  LW s6, 0(s11)
  SLLIW s11, s6, 2
  LA s6, get2
  ADD s8, s6, s11
  LW s6, 0(s8)
  XORI s8, s6, 37
  SLTIU s6, s8, 1
  BNE s6, zero, bb53
  # implict jump to bb45
bb45:
  ADD t4, s3, zero
  SW t4, 232(sp)
  # implict jump to bb46
bb46:
  LW t4, 232(sp)
  ADD s6, t4, zero
  LA s11, i
  LW s5, 0(s11)
  SLLIW s11, s5, 2
  LA s5, get2
  ADD s10, s5, s11
  LW s5, 0(s10)
  XORI s10, s5, 94
  SLTIU s5, s10, 1
  BNE s5, zero, bb49
  # implict jump to bb47
bb47:
  ADD s4, s6, zero
  # implict jump to bb48
bb48:
  ADD s5, s4, zero
  LA s7, intt
  LW s8, 0(s7)
  ADDIW s7, s8, 1
  LA s8, intt
  SW s7, 0(s8)
  SLLIW s8, s7, 2
  LA s7, ints
  ADD s9, s7, s8
  SW s5, 0(s9)
  LW t4, 200(sp)
  ADD s7, t4, zero
  LW t3, 196(sp)
  ADD t4, t3, zero
  SW t4, 240(sp)
  ADD t4, s5, zero
  SW t4, 236(sp)
  JAL zero, bb31
bb49:
  ADDI s5, zero, 1
  LW t4, 200(sp)
  ADD s10, t4, zero
  # implict jump to bb50
bb50:
  ADD s11, s10, zero
  ADD s7, s5, zero
  XOR s4, s11, zero
  SLTU s9, zero, s4
  BNE s9, zero, bb52
  # implict jump to bb51
bb51:
  ADD s4, s7, zero
  JAL zero, bb48
bb52:
  LW t4, 196(sp)
  MULW s4, s7, t4
  ADDI s9, zero, 1
  SUBW s8, s11, s9
  ADD s5, s4, zero
  ADD s10, s8, zero
  JAL zero, bb50
bb53:
  LW t4, 196(sp)
  LW t3, 200(sp)
  REMW s6, t4, t3
  ADD t4, s6, zero
  SW t4, 232(sp)
  JAL zero, bb46
bb54:
  LW t4, 196(sp)
  LW t3, 200(sp)
  DIVW s3, t4, t3
  ADD t4, s3, zero
  SW t4, 224(sp)
  JAL zero, bb44
bb55:
  LW t4, 200(sp)
  LW t3, 196(sp)
  MULW s9, t4, t3
  ADD t4, s9, zero
  SW t4, 216(sp)
  JAL zero, bb42
bb56:
  LW t4, 196(sp)
  LW t3, 200(sp)
  SUBW s7, t4, t3
  ADD t4, s7, zero
  SW t4, 208(sp)
  JAL zero, bb40
bb57:
  LW t4, 200(sp)
  LW t3, 196(sp)
  ADDW s5, t4, t3
  ADD t4, s5, zero
  SW t4, 204(sp)
  JAL zero, bb38
bb58:
  ADDI t4, zero, 1
  SB t4, 192(sp)
  JAL zero, bb28
bb59:
  ADDI t4, zero, 1
  SB t4, 191(sp)
  JAL zero, bb26
bb60:
  ADDI t4, zero, 1
  SB t4, 190(sp)
  JAL zero, bb24
bb61:
  ADDI t4, zero, 1
  SB t4, 189(sp)
  JAL zero, bb22
bb62:
  ADDI t4, zero, 1
  SB t4, 188(sp)
  JAL zero, bb20
bb63:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 1
  SUBW s2, s1, s0
  LA s0, chat
  SW s2, 0(s0)
  SLLIW s0, s1, 2
  LA s1, chas
  ADD s2, s1, s0
  LW s0, 0(s2)
  LA s1, ii
  LW s2, 0(s1)
  SLLIW s1, s2, 2
  LA s2, get2
  ADD s3, s2, s1
  ADDI s1, zero, 32
  SW s1, 0(s3)
  LA s1, ii
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  SLLIW s2, s1, 2
  LA s1, get2
  ADD s3, s1, s2
  SW s0, 0(s3)
  LA s0, ii
  LW s1, 0(s0)
  ADDIW s0, s1, 2
  LA s1, ii
  SW s0, 0(s1)
  JAL zero, bb14
bb64:
  LA s0, i
  LW s6, 0(s0)
  SLLIW s0, s6, 2
  LA s6, get
  ADD s1, s6, s0
  LW s0, 0(s1)
  SLTI s1, s0, 48
  XORI s6, s1, 1
  BNE s6, zero, bb178
  # implict jump to bb65
bb65:
  ADD t4, zero, zero
  SB t4, 63(sp)
  # implict jump to bb66
bb66:
  LB t4, 63(sp)
  ADD s0, t4, zero
  BNE s0, zero, bb177
  # implict jump to bb67
bb67:
  ADD t4, zero, zero
  SW t4, 64(sp)
  # implict jump to bb68
bb68:
  LW t4, 64(sp)
  ADD s6, t4, zero
  XORI s1, s6, 1
  SLTIU s6, s1, 1
  BNE s6, zero, bb176
  # implict jump to bb69
bb69:
  LA s0, i
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, get
  ADD s2, s1, s0
  LW s0, 0(s2)
  XORI s1, s0, 40
  SLTIU s0, s1, 1
  BNE s0, zero, bb175
  # implict jump to bb70
bb70:
  LA s0, i
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, get
  ADD s2, s1, s0
  LW s0, 0(s2)
  XORI s1, s0, 94
  SLTIU s0, s1, 1
  BNE s0, zero, bb174
  # implict jump to bb71
bb71:
  LA s0, i
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, get
  ADD s2, s1, s0
  LW s0, 0(s2)
  XORI s1, s0, 41
  SLTIU s0, s1, 1
  BNE s0, zero, bb171
  # implict jump to bb72
bb72:
  LA s0, i
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, get
  ADD s2, s1, s0
  LW s0, 0(s2)
  XORI s1, s0, 43
  SLTIU s0, s1, 1
  BNE s0, zero, bb150
  # implict jump to bb73
bb73:
  LB t3, 54(sp)
  ADD t4, t3, zero
  SB t4, 109(sp)
  LB t3, 48(sp)
  ADD t4, t3, zero
  SB t4, 108(sp)
  LB t3, 44(sp)
  ADD t4, t3, zero
  SB t4, 107(sp)
  LB t3, 42(sp)
  ADD t4, t3, zero
  SB t4, 106(sp)
  LB t3, 41(sp)
  ADD t4, t3, zero
  SB t4, 105(sp)
  # implict jump to bb74
bb74:
  LB t3, 105(sp)
  ADD t4, t3, zero
  SB t4, 124(sp)
  LB t3, 106(sp)
  ADD t4, t3, zero
  SB t4, 123(sp)
  LB t3, 107(sp)
  ADD t4, t3, zero
  SB t4, 122(sp)
  LB t3, 108(sp)
  ADD t4, t3, zero
  SB t4, 121(sp)
  LB t3, 109(sp)
  ADD t4, t3, zero
  SB t4, 120(sp)
  LA s6, i
  LW s0, 0(s6)
  SLLIW s6, s0, 2
  LA s0, get
  ADD s1, s0, s6
  LW s0, 0(s1)
  XORI s1, s0, 45
  SLTIU s0, s1, 1
  BNE s0, zero, bb129
  # implict jump to bb75
bb75:
  LB t3, 49(sp)
  ADD t4, t3, zero
  SB t4, 129(sp)
  LB t3, 47(sp)
  ADD t4, t3, zero
  SB t4, 128(sp)
  LB t3, 46(sp)
  ADD t4, t3, zero
  SB t4, 127(sp)
  LB t3, 45(sp)
  ADD t4, t3, zero
  SB t4, 126(sp)
  LB t3, 43(sp)
  ADD t4, t3, zero
  SB t4, 125(sp)
  # implict jump to bb76
bb76:
  LB t3, 125(sp)
  ADD t4, t3, zero
  SB t4, 144(sp)
  LB t3, 126(sp)
  ADD t4, t3, zero
  SB t4, 143(sp)
  LB t3, 127(sp)
  ADD t4, t3, zero
  SB t4, 142(sp)
  LB t3, 128(sp)
  ADD t4, t3, zero
  SB t4, 141(sp)
  LB t3, 129(sp)
  ADD t4, t3, zero
  SB t4, 140(sp)
  LA s5, i
  LW s0, 0(s5)
  SLLIW s5, s0, 2
  LA s0, get
  ADD s1, s0, s5
  LW s0, 0(s1)
  XORI s1, s0, 42
  SLTIU s0, s1, 1
  BNE s0, zero, bb114
  # implict jump to bb77
bb77:
  LB t3, 52(sp)
  ADD t4, t3, zero
  SB t4, 147(sp)
  LB t3, 51(sp)
  ADD t4, t3, zero
  SB t4, 146(sp)
  LB t3, 50(sp)
  ADD t4, t3, zero
  SB t4, 145(sp)
  # implict jump to bb78
bb78:
  LB t3, 145(sp)
  ADD t4, t3, zero
  SB t4, 158(sp)
  LB t3, 146(sp)
  ADD t4, t3, zero
  SB t4, 157(sp)
  LB t3, 147(sp)
  ADD t4, t3, zero
  SB t4, 156(sp)
  LA s10, i
  LW s11, 0(s10)
  SLLIW s10, s11, 2
  LA s11, get
  ADD s6, s11, s10
  LW s10, 0(s6)
  XORI s6, s10, 47
  SLTIU s10, s6, 1
  BNE s10, zero, bb99
  # implict jump to bb79
bb79:
  LB t3, 59(sp)
  ADD t4, t3, zero
  SB t4, 161(sp)
  LB t3, 56(sp)
  ADD t4, t3, zero
  SB t4, 160(sp)
  LB t3, 53(sp)
  ADD t4, t3, zero
  SB t4, 159(sp)
  # implict jump to bb80
bb80:
  LB t3, 159(sp)
  ADD t4, t3, zero
  SB t4, 174(sp)
  LB t3, 160(sp)
  ADD t4, t3, zero
  SB t4, 173(sp)
  LB t3, 161(sp)
  ADD t4, t3, zero
  SB t4, 172(sp)
  LA s8, i
  LW s7, 0(s8)
  SLLIW s8, s7, 2
  LA s7, get
  ADD s4, s7, s8
  LW s7, 0(s4)
  XORI s4, s7, 37
  SLTIU s7, s4, 1
  BNE s7, zero, bb84
  # implict jump to bb81
bb81:
  LB t4, 58(sp)
  ADD s3, t4, zero
  LB t4, 57(sp)
  ADD s6, t4, zero
  LB t3, 55(sp)
  ADD t4, t3, zero
  SB t4, 175(sp)
  # implict jump to bb82
bb82:
  LB t4, 175(sp)
  ADD s11, t4, zero
  ADD s0, s6, zero
  ADD s9, s3, zero
  LA s2, ii
  LW s5, 0(s2)
  SLLIW s2, s5, 2
  LA s5, get2
  ADD s10, s5, s2
  ADDI s2, zero, 32
  SW s2, 0(s10)
  LA s2, ii
  LW s5, 0(s2)
  ADDIW s2, s5, 1
  LA s5, ii
  SW s2, 0(s5)
  LB t3, 172(sp)
  ADD t4, t3, zero
  SB t4, 87(sp)
  ADD t4, s9, zero
  SB t4, 86(sp)
  ADD t4, s0, zero
  SB t4, 85(sp)
  LB t3, 173(sp)
  ADD t4, t3, zero
  SB t4, 84(sp)
  ADD t4, s11, zero
  SB t4, 69(sp)
  LB t3, 120(sp)
  ADD t4, t3, zero
  SB t4, 70(sp)
  LB t3, 174(sp)
  ADD t4, t3, zero
  SB t4, 71(sp)
  LB t3, 156(sp)
  ADD t4, t3, zero
  SB t4, 72(sp)
  LB t3, 157(sp)
  ADD t4, t3, zero
  SB t4, 73(sp)
  LB t3, 158(sp)
  ADD t4, t3, zero
  SB t4, 74(sp)
  LB t3, 140(sp)
  ADD t4, t3, zero
  SB t4, 75(sp)
  LB t3, 121(sp)
  ADD t4, t3, zero
  SB t4, 76(sp)
  LB t3, 141(sp)
  ADD t4, t3, zero
  SB t4, 77(sp)
  LB t3, 142(sp)
  ADD t4, t3, zero
  SB t4, 78(sp)
  LB t3, 143(sp)
  ADD t4, t3, zero
  SB t4, 79(sp)
  LB t3, 122(sp)
  ADD t4, t3, zero
  SB t4, 80(sp)
  LB t3, 144(sp)
  ADD t4, t3, zero
  SB t4, 81(sp)
  LB t3, 123(sp)
  ADD t4, t3, zero
  SB t4, 82(sp)
  LB t3, 124(sp)
  ADD t4, t3, zero
  SB t4, 83(sp)
  # implict jump to bb83
bb83:
  LB t3, 83(sp)
  ADD t4, t3, zero
  SB t4, 88(sp)
  LB t3, 82(sp)
  ADD t4, t3, zero
  SB t4, 89(sp)
  LB t3, 81(sp)
  ADD t4, t3, zero
  SB t4, 90(sp)
  LB t3, 80(sp)
  ADD t4, t3, zero
  SB t4, 91(sp)
  LB t3, 79(sp)
  ADD t4, t3, zero
  SB t4, 92(sp)
  LB t3, 78(sp)
  ADD t4, t3, zero
  SB t4, 93(sp)
  LB t3, 77(sp)
  ADD t4, t3, zero
  SB t4, 94(sp)
  LB t3, 76(sp)
  ADD t4, t3, zero
  SB t4, 95(sp)
  LB t3, 75(sp)
  ADD t4, t3, zero
  SB t4, 96(sp)
  LB t3, 74(sp)
  ADD t4, t3, zero
  SB t4, 97(sp)
  LB t3, 73(sp)
  ADD t4, t3, zero
  SB t4, 98(sp)
  LB t3, 72(sp)
  ADD t4, t3, zero
  SB t4, 99(sp)
  LB t3, 71(sp)
  ADD t4, t3, zero
  SB t4, 101(sp)
  LB t3, 70(sp)
  ADD t4, t3, zero
  SB t4, 103(sp)
  LB t4, 69(sp)
  ADD s1, t4, zero
  LB t4, 84(sp)
  ADD s0, t4, zero
  LB t4, 85(sp)
  ADD s7, t4, zero
  LB t4, 86(sp)
  ADD s6, t4, zero
  LB t4, 87(sp)
  ADD s3, t4, zero
  LA s2, i
  LW s9, 0(s2)
  ADDIW s2, s9, 1
  LA s9, i
  SW s2, 0(s9)
  ADD s4, s3, zero
  ADD s5, s6, zero
  ADD s8, s7, zero
  ADD s10, s0, zero
  ADD s11, s1, zero
  LB t3, 103(sp)
  ADD t4, t3, zero
  SB t4, 104(sp)
  LB t3, 101(sp)
  ADD t4, t3, zero
  SB t4, 102(sp)
  LB t3, 99(sp)
  ADD t4, t3, zero
  SB t4, 100(sp)
  LB t3, 98(sp)
  ADD t4, t3, zero
  SB t4, 68(sp)
  LB t3, 97(sp)
  ADD t4, t3, zero
  SB t4, 62(sp)
  LB t3, 96(sp)
  ADD t4, t3, zero
  SB t4, 61(sp)
  LB t3, 95(sp)
  ADD t4, t3, zero
  SB t4, 60(sp)
  LB t3, 94(sp)
  ADD t4, t3, zero
  SB t4, 34(sp)
  LB t3, 93(sp)
  ADD t4, t3, zero
  SB t4, 35(sp)
  LB t3, 92(sp)
  ADD t4, t3, zero
  SB t4, 36(sp)
  LB t3, 91(sp)
  ADD t4, t3, zero
  SB t4, 37(sp)
  LB t3, 90(sp)
  ADD t4, t3, zero
  SB t4, 38(sp)
  LB t3, 89(sp)
  ADD t4, t3, zero
  SB t4, 39(sp)
  LB t3, 88(sp)
  ADD t4, t3, zero
  SB t4, 40(sp)
  JAL zero, bb13
bb84:
  LA s4, chat
  LW s7, 0(s4)
  SLLIW s4, s7, 2
  LA s7, chas
  ADD s8, s7, s4
  LW s4, 0(s8)
  XORI s7, s4, 42
  SLTIU s4, s7, 1
  BNE s4, zero, bb98
  # implict jump to bb85
bb85:
  LA s0, chat
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, chas
  ADD s2, s1, s0
  LW s0, 0(s2)
  XORI s1, s0, 47
  SLTIU s0, s1, 1
  ADD s4, s0, zero
  # implict jump to bb86
bb86:
  ADD t4, s4, zero
  SB t4, 32(sp)
  LB t4, 32(sp)
  BNE t4, zero, bb97
  # implict jump to bb87
bb87:
  LA s0, chat
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, chas
  ADD s2, s1, s0
  LW s0, 0(s2)
  XORI s1, s0, 37
  SLTIU s0, s1, 1
  ADD s7, s0, zero
  # implict jump to bb88
bb88:
  ADD t4, s7, zero
  SB t4, 5(sp)
  LB t4, 5(sp)
  BNE t4, zero, bb96
  # implict jump to bb89
bb89:
  LA s0, chat
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, chas
  ADD s2, s1, s0
  LW s0, 0(s2)
  XORI s1, s0, 94
  SLTIU s0, s1, 1
  ADD s8, s0, zero
  # implict jump to bb90
bb90:
  ADD t4, s8, zero
  SB t4, 33(sp)
  LB t4, 33(sp)
  BNE t4, zero, bb92
  # implict jump to bb91
bb91:
  LA s3, chat
  LW s6, 0(s3)
  ADDIW s3, s6, 1
  LA s6, chat
  SW s3, 0(s6)
  SLLIW s6, s3, 2
  LA s3, chas
  ADD s10, s3, s6
  ADDI s3, zero, 37
  SW s3, 0(s10)
  LB t4, 5(sp)
  ADD s3, t4, zero
  LB t4, 33(sp)
  ADD s6, t4, zero
  LB t3, 32(sp)
  ADD t4, t3, zero
  SB t4, 175(sp)
  JAL zero, bb82
bb92:
  LA s3, chat
  LW s1, 0(s3)
  ADDI s3, zero, 1
  SUBW s6, s1, s3
  LA s3, chat
  SW s6, 0(s3)
  SLLIW s3, s1, 2
  LA s1, chas
  ADD s6, s1, s3
  LW s1, 0(s6)
  LA s3, c
  SW s1, 0(s3)
  LA s1, ii
  LW s3, 0(s1)
  SLLIW s1, s3, 2
  LA s3, get2
  ADD s6, s3, s1
  ADDI s1, zero, 32
  SW s1, 0(s6)
  LA s1, ii
  LW s3, 0(s1)
  ADDIW s1, s3, 1
  SLLIW s3, s1, 2
  LA s1, get2
  ADD s6, s1, s3
  LA s1, c
  LW s3, 0(s1)
  SW s3, 0(s6)
  LA s1, ii
  LW s3, 0(s1)
  ADDIW s1, s3, 2
  LA s3, ii
  SW s1, 0(s3)
  LA s1, chat
  LW s3, 0(s1)
  XOR s1, s3, zero
  SLTIU s3, s1, 1
  BNE s3, zero, bb95
  # implict jump to bb93
bb93:
  ADDI s1, zero, 1
  # implict jump to bb94
bb94:
  ADD s3, s1, zero
  XOR s6, s3, zero
  SLTIU s3, s6, 1
  BNE s3, zero, bb91
  JAL zero, bb84
bb95:
  ADD s1, zero, zero
  JAL zero, bb94
bb96:
  ADDI s8, zero, 1
  JAL zero, bb90
bb97:
  ADDI s7, zero, 1
  JAL zero, bb88
bb98:
  ADDI s4, zero, 1
  JAL zero, bb86
bb99:
  LA s6, chat
  LW s10, 0(s6)
  SLLIW s6, s10, 2
  LA s10, chas
  ADD s11, s10, s6
  LW s6, 0(s11)
  XORI s10, s6, 42
  SLTIU s6, s10, 1
  BNE s6, zero, bb113
  # implict jump to bb100
bb100:
  LA s0, chat
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, chas
  ADD s2, s1, s0
  LW s0, 0(s2)
  XORI s1, s0, 47
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 162(sp)
  # implict jump to bb101
bb101:
  LB t3, 162(sp)
  ADD t4, t3, zero
  SB t4, 29(sp)
  LB t4, 29(sp)
  BNE t4, zero, bb112
  # implict jump to bb102
bb102:
  LA s0, chat
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, chas
  ADD s2, s1, s0
  LW s0, 0(s2)
  XORI s1, s0, 37
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 163(sp)
  # implict jump to bb103
bb103:
  LB t3, 163(sp)
  ADD t4, t3, zero
  SB t4, 30(sp)
  LB t4, 30(sp)
  BNE t4, zero, bb111
  # implict jump to bb104
bb104:
  LA s0, chat
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, chas
  ADD s2, s1, s0
  LW s0, 0(s2)
  XORI s1, s0, 94
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 164(sp)
  # implict jump to bb105
bb105:
  LB t3, 164(sp)
  ADD t4, t3, zero
  SB t4, 31(sp)
  LB t4, 31(sp)
  BNE t4, zero, bb107
  # implict jump to bb106
bb106:
  LA s3, chat
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, chat
  SW s3, 0(s4)
  SLLIW s4, s3, 2
  LA s3, chas
  ADD s1, s3, s4
  ADDI s3, zero, 47
  SW s3, 0(s1)
  LB t3, 31(sp)
  ADD t4, t3, zero
  SB t4, 161(sp)
  LB t3, 29(sp)
  ADD t4, t3, zero
  SB t4, 160(sp)
  LB t3, 30(sp)
  ADD t4, t3, zero
  SB t4, 159(sp)
  JAL zero, bb80
bb107:
  LA s4, chat
  LW s3, 0(s4)
  ADDI s4, zero, 1
  SUBW s0, s3, s4
  LA s4, chat
  SW s0, 0(s4)
  SLLIW s0, s3, 2
  LA s3, chas
  ADD s4, s3, s0
  LW s0, 0(s4)
  LA s3, c
  SW s0, 0(s3)
  LA s0, ii
  LW s3, 0(s0)
  SLLIW s0, s3, 2
  LA s3, get2
  ADD s4, s3, s0
  ADDI s0, zero, 32
  SW s0, 0(s4)
  LA s0, ii
  LW s3, 0(s0)
  ADDIW s0, s3, 1
  SLLIW s3, s0, 2
  LA s0, get2
  ADD s4, s0, s3
  LA s0, c
  LW s3, 0(s0)
  SW s3, 0(s4)
  LA s0, ii
  LW s3, 0(s0)
  ADDIW s0, s3, 2
  LA s3, ii
  SW s0, 0(s3)
  LA s0, chat
  LW s3, 0(s0)
  XOR s0, s3, zero
  SLTIU s3, s0, 1
  BNE s3, zero, bb110
  # implict jump to bb108
bb108:
  ADDI t4, zero, 1
  SW t4, 168(sp)
  # implict jump to bb109
bb109:
  LW t4, 168(sp)
  ADD s3, t4, zero
  XOR s4, s3, zero
  SLTIU s3, s4, 1
  BNE s3, zero, bb106
  JAL zero, bb99
bb110:
  ADD t4, zero, zero
  SW t4, 168(sp)
  JAL zero, bb109
bb111:
  ADDI t4, zero, 1
  SB t4, 164(sp)
  JAL zero, bb105
bb112:
  ADDI t4, zero, 1
  SB t4, 163(sp)
  JAL zero, bb103
bb113:
  ADDI t4, zero, 1
  SB t4, 162(sp)
  JAL zero, bb101
bb114:
  LA s0, chat
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, chas
  ADD s5, s1, s0
  LW s0, 0(s5)
  XORI s1, s0, 42
  SLTIU s0, s1, 1
  BNE s0, zero, bb128
  # implict jump to bb115
bb115:
  LA s0, chat
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, chas
  ADD s2, s1, s0
  LW s0, 0(s2)
  XORI s1, s0, 47
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 148(sp)
  # implict jump to bb116
bb116:
  LB t3, 148(sp)
  ADD t4, t3, zero
  SB t4, 27(sp)
  LB t4, 27(sp)
  BNE t4, zero, bb127
  # implict jump to bb117
bb117:
  LA s0, chat
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, chas
  ADD s2, s1, s0
  LW s0, 0(s2)
  XORI s1, s0, 37
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 149(sp)
  # implict jump to bb118
bb118:
  LB t3, 149(sp)
  ADD t4, t3, zero
  SB t4, 2(sp)
  LB t4, 2(sp)
  BNE t4, zero, bb126
  # implict jump to bb119
bb119:
  LA s0, chat
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, chas
  ADD s2, s1, s0
  LW s0, 0(s2)
  XORI s1, s0, 94
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 150(sp)
  # implict jump to bb120
bb120:
  LB t3, 150(sp)
  ADD t4, t3, zero
  SB t4, 28(sp)
  LB t4, 28(sp)
  BNE t4, zero, bb122
  # implict jump to bb121
bb121:
  LA s3, chat
  LW s6, 0(s3)
  ADDIW s3, s6, 1
  LA s6, chat
  SW s3, 0(s6)
  SLLIW s6, s3, 2
  LA s3, chas
  ADD s4, s3, s6
  ADDI s3, zero, 42
  SW s3, 0(s4)
  LB t3, 28(sp)
  ADD t4, t3, zero
  SB t4, 147(sp)
  LB t3, 2(sp)
  ADD t4, t3, zero
  SB t4, 146(sp)
  LB t3, 27(sp)
  ADD t4, t3, zero
  SB t4, 145(sp)
  JAL zero, bb78
bb122:
  LA s6, chat
  LW s2, 0(s6)
  ADDI s6, zero, 1
  SUBW s3, s2, s6
  LA s6, chat
  SW s3, 0(s6)
  SLLIW s3, s2, 2
  LA s2, chas
  ADD s6, s2, s3
  LW s2, 0(s6)
  LA s3, c
  SW s2, 0(s3)
  LA s2, ii
  LW s3, 0(s2)
  SLLIW s2, s3, 2
  LA s3, get2
  ADD s6, s3, s2
  ADDI s2, zero, 32
  SW s2, 0(s6)
  LA s2, ii
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  SLLIW s3, s2, 2
  LA s2, get2
  ADD s6, s2, s3
  LA s2, c
  LW s3, 0(s2)
  SW s3, 0(s6)
  LA s2, ii
  LW s3, 0(s2)
  ADDIW s2, s3, 2
  LA s3, ii
  SW s2, 0(s3)
  LA s2, chat
  LW s3, 0(s2)
  XOR s2, s3, zero
  SLTIU s3, s2, 1
  BNE s3, zero, bb125
  # implict jump to bb123
bb123:
  ADDI t4, zero, 1
  SW t4, 152(sp)
  # implict jump to bb124
bb124:
  LW t4, 152(sp)
  ADD s3, t4, zero
  XOR s6, s3, zero
  SLTIU s3, s6, 1
  BNE s3, zero, bb121
  JAL zero, bb114
bb125:
  ADD t4, zero, zero
  SW t4, 152(sp)
  JAL zero, bb124
bb126:
  ADDI t4, zero, 1
  SB t4, 150(sp)
  JAL zero, bb120
bb127:
  ADDI t4, zero, 1
  SB t4, 149(sp)
  JAL zero, bb118
bb128:
  ADDI t4, zero, 1
  SB t4, 148(sp)
  JAL zero, bb116
bb129:
  LA s0, chat
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, chas
  ADD s6, s1, s0
  LW s0, 0(s6)
  XORI s1, s0, 43
  SLTIU s0, s1, 1
  BNE s0, zero, bb149
  # implict jump to bb130
bb130:
  LA s0, chat
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, chas
  ADD s2, s1, s0
  LW s0, 0(s2)
  XORI s1, s0, 45
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 130(sp)
  # implict jump to bb131
bb131:
  LB t3, 130(sp)
  ADD t4, t3, zero
  SB t4, 1(sp)
  LB t4, 1(sp)
  BNE t4, zero, bb148
  # implict jump to bb132
bb132:
  LA s0, chat
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, chas
  ADD s2, s1, s0
  LW s0, 0(s2)
  XORI s1, s0, 42
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 131(sp)
  # implict jump to bb133
bb133:
  LB t3, 131(sp)
  ADD t4, t3, zero
  SB t4, 26(sp)
  LB t4, 26(sp)
  BNE t4, zero, bb147
  # implict jump to bb134
bb134:
  LA s0, chat
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, chas
  ADD s2, s1, s0
  LW s0, 0(s2)
  XORI s1, s0, 47
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 132(sp)
  # implict jump to bb135
bb135:
  LB t3, 132(sp)
  ADD t4, t3, zero
  SB t4, 7(sp)
  LB t4, 7(sp)
  BNE t4, zero, bb146
  # implict jump to bb136
bb136:
  LA s0, chat
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, chas
  ADD s2, s1, s0
  LW s0, 0(s2)
  XORI s1, s0, 37
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 133(sp)
  # implict jump to bb137
bb137:
  LB t3, 133(sp)
  ADD t4, t3, zero
  SB t4, 0(sp)
  LB t4, 0(sp)
  BNE t4, zero, bb145
  # implict jump to bb138
bb138:
  LA s0, chat
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, chas
  ADD s2, s1, s0
  LW s0, 0(s2)
  XORI s1, s0, 94
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 134(sp)
  # implict jump to bb139
bb139:
  LB t3, 134(sp)
  ADD t4, t3, zero
  SB t4, 6(sp)
  LB t4, 6(sp)
  BNE t4, zero, bb141
  # implict jump to bb140
bb140:
  LA s5, chat
  LW s7, 0(s5)
  ADDIW s5, s7, 1
  LA s7, chat
  SW s5, 0(s7)
  SLLIW s7, s5, 2
  LA s5, chas
  ADD s8, s5, s7
  ADDI s5, zero, 45
  SW s5, 0(s8)
  LB t3, 6(sp)
  ADD t4, t3, zero
  SB t4, 129(sp)
  LB t3, 0(sp)
  ADD t4, t3, zero
  SB t4, 128(sp)
  LB t3, 7(sp)
  ADD t4, t3, zero
  SB t4, 127(sp)
  LB t3, 26(sp)
  ADD t4, t3, zero
  SB t4, 126(sp)
  LB t3, 1(sp)
  ADD t4, t3, zero
  SB t4, 125(sp)
  JAL zero, bb76
bb141:
  LA s4, chat
  LW s5, 0(s4)
  ADDI s4, zero, 1
  SUBW s7, s5, s4
  LA s4, chat
  SW s7, 0(s4)
  SLLIW s4, s5, 2
  LA s5, chas
  ADD s7, s5, s4
  LW s4, 0(s7)
  LA s5, c
  SW s4, 0(s5)
  LA s4, ii
  LW s5, 0(s4)
  SLLIW s4, s5, 2
  LA s5, get2
  ADD s7, s5, s4
  ADDI s4, zero, 32
  SW s4, 0(s7)
  LA s4, ii
  LW s5, 0(s4)
  ADDIW s4, s5, 1
  SLLIW s5, s4, 2
  LA s4, get2
  ADD s7, s4, s5
  LA s4, c
  LW s5, 0(s4)
  SW s5, 0(s7)
  LA s4, ii
  LW s5, 0(s4)
  ADDIW s4, s5, 2
  LA s5, ii
  SW s4, 0(s5)
  LA s4, chat
  LW s5, 0(s4)
  XOR s4, s5, zero
  SLTIU s5, s4, 1
  BNE s5, zero, bb144
  # implict jump to bb142
bb142:
  ADDI t4, zero, 1
  SW t4, 136(sp)
  # implict jump to bb143
bb143:
  LW t4, 136(sp)
  ADD s5, t4, zero
  XOR s7, s5, zero
  SLTIU s5, s7, 1
  BNE s5, zero, bb140
  JAL zero, bb129
bb144:
  ADD t4, zero, zero
  SW t4, 136(sp)
  JAL zero, bb143
bb145:
  ADDI t4, zero, 1
  SB t4, 134(sp)
  JAL zero, bb139
bb146:
  ADDI t4, zero, 1
  SB t4, 133(sp)
  JAL zero, bb137
bb147:
  ADDI t4, zero, 1
  SB t4, 132(sp)
  JAL zero, bb135
bb148:
  ADDI t4, zero, 1
  SB t4, 131(sp)
  JAL zero, bb133
bb149:
  ADDI t4, zero, 1
  SB t4, 130(sp)
  JAL zero, bb131
bb150:
  LA s0, chat
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, chas
  ADD s2, s1, s0
  LW s0, 0(s2)
  XORI s1, s0, 43
  SLTIU s0, s1, 1
  BNE s0, zero, bb170
  # implict jump to bb151
bb151:
  LA s0, chat
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, chas
  ADD s2, s1, s0
  LW s0, 0(s2)
  XORI s1, s0, 45
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 110(sp)
  # implict jump to bb152
bb152:
  LB t3, 110(sp)
  ADD t4, t3, zero
  SB t4, 16(sp)
  LB t4, 16(sp)
  BNE t4, zero, bb169
  # implict jump to bb153
bb153:
  LA s0, chat
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, chas
  ADD s2, s1, s0
  LW s0, 0(s2)
  XORI s1, s0, 42
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 111(sp)
  # implict jump to bb154
bb154:
  LB t3, 111(sp)
  ADD t4, t3, zero
  SB t4, 8(sp)
  LB t4, 8(sp)
  BNE t4, zero, bb168
  # implict jump to bb155
bb155:
  LA s0, chat
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, chas
  ADD s2, s1, s0
  LW s0, 0(s2)
  XORI s1, s0, 47
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 112(sp)
  # implict jump to bb156
bb156:
  LB t3, 112(sp)
  ADD t4, t3, zero
  SB t4, 24(sp)
  LB t4, 24(sp)
  BNE t4, zero, bb167
  # implict jump to bb157
bb157:
  LA s0, chat
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, chas
  ADD s2, s1, s0
  LW s0, 0(s2)
  XORI s1, s0, 37
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 113(sp)
  # implict jump to bb158
bb158:
  LB t3, 113(sp)
  ADD t4, t3, zero
  SB t4, 4(sp)
  LB t4, 4(sp)
  BNE t4, zero, bb166
  # implict jump to bb159
bb159:
  LA s0, chat
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, chas
  ADD s2, s1, s0
  LW s0, 0(s2)
  XORI s1, s0, 94
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 114(sp)
  # implict jump to bb160
bb160:
  LB t3, 114(sp)
  ADD t4, t3, zero
  SB t4, 3(sp)
  LB t4, 3(sp)
  BNE t4, zero, bb162
  # implict jump to bb161
bb161:
  LA s6, chat
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, chat
  SW s6, 0(s7)
  SLLIW s7, s6, 2
  LA s6, chas
  ADD s8, s6, s7
  ADDI s6, zero, 43
  SW s6, 0(s8)
  LB t3, 16(sp)
  ADD t4, t3, zero
  SB t4, 109(sp)
  LB t3, 24(sp)
  ADD t4, t3, zero
  SB t4, 108(sp)
  LB t3, 4(sp)
  ADD t4, t3, zero
  SB t4, 107(sp)
  LB t3, 3(sp)
  ADD t4, t3, zero
  SB t4, 106(sp)
  LB t3, 8(sp)
  ADD t4, t3, zero
  SB t4, 105(sp)
  JAL zero, bb74
bb162:
  LA s5, chat
  LW s6, 0(s5)
  ADDI s5, zero, 1
  SUBW s7, s6, s5
  LA s5, chat
  SW s7, 0(s5)
  SLLIW s5, s6, 2
  LA s6, chas
  ADD s7, s6, s5
  LW s5, 0(s7)
  LA s6, c
  SW s5, 0(s6)
  LA s5, ii
  LW s6, 0(s5)
  SLLIW s5, s6, 2
  LA s6, get2
  ADD s7, s6, s5
  ADDI s5, zero, 32
  SW s5, 0(s7)
  LA s5, ii
  LW s6, 0(s5)
  ADDIW s5, s6, 1
  SLLIW s6, s5, 2
  LA s5, get2
  ADD s7, s5, s6
  LA s5, c
  LW s6, 0(s5)
  SW s6, 0(s7)
  LA s5, ii
  LW s6, 0(s5)
  ADDIW s5, s6, 2
  LA s6, ii
  SW s5, 0(s6)
  LA s5, chat
  LW s6, 0(s5)
  XOR s5, s6, zero
  SLTIU s6, s5, 1
  BNE s6, zero, bb165
  # implict jump to bb163
bb163:
  ADDI t4, zero, 1
  SW t4, 116(sp)
  # implict jump to bb164
bb164:
  LW t4, 116(sp)
  ADD s6, t4, zero
  XOR s7, s6, zero
  SLTIU s6, s7, 1
  BNE s6, zero, bb161
  JAL zero, bb150
bb165:
  ADD t4, zero, zero
  SW t4, 116(sp)
  JAL zero, bb164
bb166:
  ADDI t4, zero, 1
  SB t4, 114(sp)
  JAL zero, bb160
bb167:
  ADDI t4, zero, 1
  SB t4, 113(sp)
  JAL zero, bb158
bb168:
  ADDI t4, zero, 1
  SB t4, 112(sp)
  JAL zero, bb156
bb169:
  ADDI t4, zero, 1
  SB t4, 111(sp)
  JAL zero, bb154
bb170:
  ADDI t4, zero, 1
  SB t4, 110(sp)
  JAL zero, bb152
bb171:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 1
  SUBW s2, s1, s0
  LA s0, chat
  SW s2, 0(s0)
  SLLIW s0, s1, 2
  LA s1, chas
  ADD s2, s1, s0
  LW s0, 0(s2)
  LA s1, c
  SW s0, 0(s1)
  # implict jump to bb172
bb172:
  LA s0, c
  LW s1, 0(s0)
  XORI s0, s1, 40
  SLTU s1, zero, s0
  BNE s1, zero, bb173
  JAL zero, bb72
bb173:
  LA s0, ii
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, get2
  ADD s2, s1, s0
  ADDI s0, zero, 32
  SW s0, 0(s2)
  LA s0, ii
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  SLLIW s1, s0, 2
  LA s0, get2
  ADD s2, s0, s1
  LA s0, c
  LW s1, 0(s0)
  SW s1, 0(s2)
  LA s0, ii
  LW s1, 0(s0)
  ADDIW s0, s1, 2
  LA s1, ii
  SW s0, 0(s1)
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 1
  SUBW s2, s1, s0
  LA s0, chat
  SW s2, 0(s0)
  SLLIW s0, s1, 2
  LA s1, chas
  ADD s2, s1, s0
  LW s0, 0(s2)
  LA s1, c
  SW s0, 0(s1)
  JAL zero, bb172
bb174:
  LA s0, chat
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, chat
  SW s0, 0(s1)
  SLLIW s1, s0, 2
  LA s0, chas
  ADD s2, s0, s1
  ADDI s0, zero, 94
  SW s0, 0(s2)
  JAL zero, bb71
bb175:
  LA s0, chat
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, chat
  SW s0, 0(s1)
  SLLIW s1, s0, 2
  LA s0, chas
  ADD s2, s0, s1
  ADDI s0, zero, 40
  SW s0, 0(s2)
  JAL zero, bb70
bb176:
  LA s1, ii
  LW s6, 0(s1)
  SLLIW s1, s6, 2
  LA s6, get2
  ADD s0, s6, s1
  LA s1, i
  LW s6, 0(s1)
  SLLIW s1, s6, 2
  LA s6, get
  ADD s2, s6, s1
  LW s1, 0(s2)
  SW s1, 0(s0)
  LA s0, ii
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, ii
  SW s0, 0(s1)
  LB t3, 59(sp)
  ADD t4, t3, zero
  SB t4, 87(sp)
  LB t3, 58(sp)
  ADD t4, t3, zero
  SB t4, 86(sp)
  LB t3, 57(sp)
  ADD t4, t3, zero
  SB t4, 85(sp)
  LB t3, 56(sp)
  ADD t4, t3, zero
  SB t4, 84(sp)
  LB t3, 55(sp)
  ADD t4, t3, zero
  SB t4, 69(sp)
  LB t3, 54(sp)
  ADD t4, t3, zero
  SB t4, 70(sp)
  LB t3, 53(sp)
  ADD t4, t3, zero
  SB t4, 71(sp)
  LB t3, 52(sp)
  ADD t4, t3, zero
  SB t4, 72(sp)
  LB t3, 51(sp)
  ADD t4, t3, zero
  SB t4, 73(sp)
  LB t3, 50(sp)
  ADD t4, t3, zero
  SB t4, 74(sp)
  LB t3, 49(sp)
  ADD t4, t3, zero
  SB t4, 75(sp)
  LB t3, 48(sp)
  ADD t4, t3, zero
  SB t4, 76(sp)
  LB t3, 47(sp)
  ADD t4, t3, zero
  SB t4, 77(sp)
  LB t3, 46(sp)
  ADD t4, t3, zero
  SB t4, 78(sp)
  LB t3, 45(sp)
  ADD t4, t3, zero
  SB t4, 79(sp)
  LB t3, 44(sp)
  ADD t4, t3, zero
  SB t4, 80(sp)
  LB t3, 43(sp)
  ADD t4, t3, zero
  SB t4, 81(sp)
  LB t3, 42(sp)
  ADD t4, t3, zero
  SB t4, 82(sp)
  LB t3, 41(sp)
  ADD t4, t3, zero
  SB t4, 83(sp)
  JAL zero, bb83
bb177:
  ADDI t4, zero, 1
  SW t4, 64(sp)
  JAL zero, bb68
bb178:
  ADDI s1, zero, 57
  SLT s6, s1, s0
  XORI s0, s6, 1
  ADD t4, s0, zero
  SB t4, 63(sp)
  JAL zero, bb66
bb179:
  LW t4, 12(sp)
  SLLIW s11, t4, 2
  LA s8, get
  ADD s4, s8, s11
  LW t4, 20(sp)
  SW t4, 0(s4)
  LW t4, 12(sp)
  ADDIW s4, t4, 1
  CALL getch
  ADD s8, a0, zero
  ADD s5, s4, zero
  ADD s10, s8, zero
  JAL zero, bb9
bb180:
  LW t4, 20(sp)
  XORI s8, t4, 10
  SLTU s11, zero, s8
  ADD t4, s11, zero
  SB t4, 25(sp)
  JAL zero, bb11
find:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 1
  SUBW s2, s1, s0
  LA s0, chat
  SW s2, 0(s0)
  SLLIW s0, s1, 2
  LA s1, chas
  ADD s2, s1, s0
  LW s0, 0(s2)
  LA s1, c
  SW s0, 0(s1)
  LA s0, ii
  LW s1, 0(s0)
  SLLIW s0, s1, 2
  LA s1, get2
  ADD s2, s1, s0
  ADDI s0, zero, 32
  SW s0, 0(s2)
  LA s0, ii
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  SLLIW s1, s0, 2
  LA s0, get2
  ADD s2, s0, s1
  LA s0, c
  LW s1, 0(s0)
  SW s1, 0(s2)
  LA s0, ii
  LW s1, 0(s0)
  ADDIW s0, s1, 2
  LA s1, ii
  SW s0, 0(s1)
  LA s0, chat
  LW s1, 0(s0)
  XOR s0, s1, zero
  SLTIU s1, s0, 1
  BNE s1, zero, bb183
  # implict jump to bb182
bb182:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb183:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
intpop:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  LA s0, intt
  LW s1, 0(s0)
  ADDI s0, zero, 1
  SUBW s2, s1, s0
  LA s0, intt
  SW s2, 0(s0)
  SLLIW s0, s1, 2
  LA s1, ints
  ADD s2, s1, s0
  LW s0, 0(s2)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
getstr:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s7, 48(sp)
  SD s5, 56(sp)
  SD s0, 64(sp)
  ADD s0, a0, zero
  CALL getch
  ADD s1, a0, zero
  ADD s2, zero, zero
  ADD s3, s1, zero
  # implict jump to bb186
bb186:
  ADD s1, s3, zero
  ADD s4, s2, zero
  XORI s5, s1, 13
  SLTU s6, zero, s5
  BNE s6, zero, bb191
  # implict jump to bb187
bb187:
  ADD s5, zero, zero
  # implict jump to bb188
bb188:
  ADD s6, s5, zero
  BNE s6, zero, bb190
  # implict jump to bb189
bb189:
  ADD a0, s4, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s7, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb190:
  SLLIW s6, s4, 2
  ADD s7, s0, s6
  SW s1, 0(s7)
  ADDIW s6, s4, 1
  CALL getch
  ADD s7, a0, zero
  ADD s2, s6, zero
  ADD s3, s7, zero
  JAL zero, bb186
bb191:
  XORI s5, s1, 10
  SLTU s6, zero, s5
  ADD s5, s6, zero
  JAL zero, bb188
isdigit:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  SLTI s1, s0, 48
  XORI s2, s1, 1
  BNE s2, zero, bb197
  # implict jump to bb193
bb193:
  ADD s1, zero, zero
  # implict jump to bb194
bb194:
  ADD s0, s1, zero
  BNE s0, zero, bb196
  # implict jump to bb195
bb195:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb196:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb197:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XORI s0, s2, 1
  ADD s1, s0, zero
  JAL zero, bb194
