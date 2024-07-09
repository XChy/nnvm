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
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
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
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, chas
  ADD s2, s1, s3
  SW s0, 0(s2)
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
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, ints
  ADD s2, s1, s3
  SW s0, 0(s2)
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
  JAL zero, bb4
bb4:
  ADD s1, s3, zero
  ADD s4, s2, zero
  XOR s5, s1, zero
  SLTU s6, zero, s5
  BNE s6, zero, bb5
  JAL zero, bb6
bb5:
  MULW s5, s4, s0
  ADDI s6, zero, 1
  SUBW s7, s1, s6
  ADD s2, s5, zero
  ADD s3, s7, zero
  JAL zero, bb4
bb6:
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
  ADDI s1, zero, 4
  MULW s3, s2, s1
  LA s1, ints
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s3, zero, 10
  MULW s4, s1, s3
  SW s4, 0(s2)
  LA s1, intt
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  LA s1, ints
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDW s3, s1, s0
  SW s3, 0(s2)
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
  SD ra, 240(sp)
  SD s4, 248(sp)
  SD s2, 256(sp)
  SD s8, 264(sp)
  SD s11, 272(sp)
  SD s10, 280(sp)
  SD s7, 288(sp)
  SD s6, 296(sp)
  SD s1, 304(sp)
  SD s5, 312(sp)
  SD s0, 320(sp)
  SD s9, 328(sp)
  SD s3, 336(sp)
  LA a4, intt
  SW zero, 0(a4)
  LA a4, chat
  SW zero, 0(a4)
  CALL getch
  ADD s10, a0, zero
  ADD s6, zero, zero
  ADD s11, s10, zero
  JAL zero, bb159
bb9:
  LB t3, 36(sp)
  ADD t4, t3, zero
  SB t4, 37(sp)
  LB t3, 35(sp)
  ADD t4, t3, zero
  SB t4, 38(sp)
  LB t3, 34(sp)
  ADD t4, t3, zero
  SB t4, 39(sp)
  LB t3, 33(sp)
  ADD t4, t3, zero
  SB t4, 40(sp)
  LB t3, 32(sp)
  ADD t4, t3, zero
  SB t4, 41(sp)
  LB t3, 31(sp)
  ADD t4, t3, zero
  SB t4, 42(sp)
  LB t3, 30(sp)
  ADD t4, t3, zero
  SB t4, 43(sp)
  LB t3, 56(sp)
  ADD t4, t3, zero
  SB t4, 44(sp)
  LB t3, 57(sp)
  ADD t4, t3, zero
  SB t4, 45(sp)
  LB t3, 58(sp)
  ADD t4, t3, zero
  SB t4, 46(sp)
  LB t3, 64(sp)
  ADD t4, t3, zero
  SB t4, 47(sp)
  LB t3, 96(sp)
  ADD t4, t3, zero
  SB t4, 48(sp)
  LB t3, 98(sp)
  ADD t4, t3, zero
  SB t4, 49(sp)
  LB t3, 100(sp)
  ADD t4, t3, zero
  SB t4, 50(sp)
  ADD t4, s11, zero
  SB t4, 51(sp)
  ADD t4, s10, zero
  SB t4, 52(sp)
  ADD t4, s7, zero
  SB t4, 53(sp)
  ADD t4, s6, zero
  SB t4, 54(sp)
  ADD t4, s5, zero
  SB t4, 55(sp)
  LA s9, i
  LW s0, 0(s9)
  LW t4, 8(sp)
  SLT s9, s0, t4
  BNE s9, zero, bb10
  JAL zero, bb105
bb10:
  LA s0, i
  LW s9, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s9, s0
  LA s0, get
  ADD s9, s0, s3
  LW s0, 0(s9)
  SLTI s3, s0, 48
  XORI s9, s3, 1
  BNE s9, zero, bb165
  JAL zero, bb166
bb11:
  LW t4, 60(sp)
  ADD s9, t4, zero
  XORI s3, s9, 1
  SLTIU s9, s3, 1
  BNE s9, zero, bb12
  JAL zero, bb14
bb12:
  LA s3, ii
  LW s9, 0(s3)
  ADDI s3, zero, 4
  MULW s0, s9, s3
  LA s3, get2
  ADD s9, s3, s0
  LA s0, i
  LW s3, 0(s0)
  ADDI s0, zero, 4
  MULW s1, s3, s0
  LA s0, get
  ADD s3, s0, s1
  LW s0, 0(s3)
  SW s0, 0(s9)
  LA s0, ii
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, ii
  SW s0, 0(s1)
  LB t3, 55(sp)
  ADD t4, t3, zero
  SB t4, 83(sp)
  LB t3, 54(sp)
  ADD t4, t3, zero
  SB t4, 82(sp)
  LB t3, 53(sp)
  ADD t4, t3, zero
  SB t4, 81(sp)
  LB t3, 52(sp)
  ADD t4, t3, zero
  SB t4, 80(sp)
  LB t3, 51(sp)
  ADD t4, t3, zero
  SB t4, 65(sp)
  LB t3, 50(sp)
  ADD t4, t3, zero
  SB t4, 66(sp)
  LB t3, 49(sp)
  ADD t4, t3, zero
  SB t4, 67(sp)
  LB t3, 48(sp)
  ADD t4, t3, zero
  SB t4, 68(sp)
  LB t3, 47(sp)
  ADD t4, t3, zero
  SB t4, 69(sp)
  LB t3, 46(sp)
  ADD t4, t3, zero
  SB t4, 70(sp)
  LB t3, 45(sp)
  ADD t4, t3, zero
  SB t4, 71(sp)
  LB t3, 44(sp)
  ADD t4, t3, zero
  SB t4, 72(sp)
  LB t3, 43(sp)
  ADD t4, t3, zero
  SB t4, 73(sp)
  LB t3, 42(sp)
  ADD t4, t3, zero
  SB t4, 74(sp)
  LB t3, 41(sp)
  ADD t4, t3, zero
  SB t4, 75(sp)
  LB t3, 40(sp)
  ADD t4, t3, zero
  SB t4, 76(sp)
  LB t3, 39(sp)
  ADD t4, t3, zero
  SB t4, 77(sp)
  LB t3, 38(sp)
  ADD t4, t3, zero
  SB t4, 78(sp)
  LB t3, 37(sp)
  ADD t4, t3, zero
  SB t4, 79(sp)
  JAL zero, bb13
bb13:
  LB t3, 79(sp)
  ADD t4, t3, zero
  SB t4, 84(sp)
  LB t3, 78(sp)
  ADD t4, t3, zero
  SB t4, 85(sp)
  LB t3, 77(sp)
  ADD t4, t3, zero
  SB t4, 86(sp)
  LB t3, 76(sp)
  ADD t4, t3, zero
  SB t4, 87(sp)
  LB t3, 75(sp)
  ADD t4, t3, zero
  SB t4, 88(sp)
  LB t3, 74(sp)
  ADD t4, t3, zero
  SB t4, 89(sp)
  LB t3, 73(sp)
  ADD t4, t3, zero
  SB t4, 90(sp)
  LB t3, 72(sp)
  ADD t4, t3, zero
  SB t4, 91(sp)
  LB t3, 71(sp)
  ADD t4, t3, zero
  SB t4, 92(sp)
  LB t3, 70(sp)
  ADD t4, t3, zero
  SB t4, 93(sp)
  LB t3, 69(sp)
  ADD t4, t3, zero
  SB t4, 94(sp)
  LB t3, 68(sp)
  ADD t4, t3, zero
  SB t4, 95(sp)
  LB t3, 67(sp)
  ADD t4, t3, zero
  SB t4, 97(sp)
  LB t3, 66(sp)
  ADD t4, t3, zero
  SB t4, 99(sp)
  LB t4, 65(sp)
  ADD s1, t4, zero
  LB t4, 80(sp)
  ADD s0, t4, zero
  LB t4, 81(sp)
  ADD s8, t4, zero
  LB t4, 82(sp)
  ADD s9, t4, zero
  LB t4, 83(sp)
  ADD s2, t4, zero
  LA s3, i
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, i
  SW s3, 0(s4)
  ADD s5, s2, zero
  ADD s6, s9, zero
  ADD s7, s8, zero
  ADD s10, s0, zero
  ADD s11, s1, zero
  LB t3, 99(sp)
  ADD t4, t3, zero
  SB t4, 100(sp)
  LB t3, 97(sp)
  ADD t4, t3, zero
  SB t4, 98(sp)
  LB t3, 95(sp)
  ADD t4, t3, zero
  SB t4, 96(sp)
  LB t3, 94(sp)
  ADD t4, t3, zero
  SB t4, 64(sp)
  LB t3, 93(sp)
  ADD t4, t3, zero
  SB t4, 58(sp)
  LB t3, 92(sp)
  ADD t4, t3, zero
  SB t4, 57(sp)
  LB t3, 91(sp)
  ADD t4, t3, zero
  SB t4, 56(sp)
  LB t3, 90(sp)
  ADD t4, t3, zero
  SB t4, 30(sp)
  LB t3, 89(sp)
  ADD t4, t3, zero
  SB t4, 31(sp)
  LB t3, 88(sp)
  ADD t4, t3, zero
  SB t4, 32(sp)
  LB t3, 87(sp)
  ADD t4, t3, zero
  SB t4, 33(sp)
  LB t3, 86(sp)
  ADD t4, t3, zero
  SB t4, 34(sp)
  LB t3, 85(sp)
  ADD t4, t3, zero
  SB t4, 35(sp)
  LB t3, 84(sp)
  ADD t4, t3, zero
  SB t4, 36(sp)
  JAL zero, bb9
bb14:
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 40
  SLTIU s0, s1, 1
  BNE s0, zero, bb15
  JAL zero, bb16
bb15:
  LA s0, chat
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, chat
  SW s0, 0(s1)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, chas
  ADD s1, s0, s2
  ADDI s0, zero, 40
  SW s0, 0(s1)
  JAL zero, bb16
bb16:
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 94
  SLTIU s0, s1, 1
  BNE s0, zero, bb17
  JAL zero, bb18
bb17:
  LA s0, chat
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, chat
  SW s0, 0(s1)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, chas
  ADD s1, s0, s2
  ADDI s0, zero, 94
  SW s0, 0(s1)
  JAL zero, bb18
bb18:
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 41
  SLTIU s0, s1, 1
  BNE s0, zero, bb19
  JAL zero, bb20
bb19:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 1
  SUBW s2, s1, s0
  LA s0, chat
  SW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  LA s1, c
  SW s0, 0(s1)
  JAL zero, bb21
bb20:
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 43
  SLTIU s0, s1, 1
  BNE s0, zero, bb24
  JAL zero, bb170
bb21:
  LA s0, c
  LW s1, 0(s0)
  XORI s0, s1, 40
  SLTU s1, zero, s0
  BNE s1, zero, bb22
  JAL zero, bb20
bb22:
  LA s0, ii
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get2
  ADD s1, s0, s2
  ADDI s0, zero, 32
  SW s0, 0(s1)
  LA s0, ii
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, get2
  ADD s1, s0, s2
  LA s0, c
  LW s2, 0(s0)
  SW s2, 0(s1)
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
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  LA s1, c
  SW s0, 0(s1)
  JAL zero, bb21
bb23:
  LB t3, 101(sp)
  ADD t4, t3, zero
  SB t4, 120(sp)
  LB t3, 102(sp)
  ADD t4, t3, zero
  SB t4, 119(sp)
  LB t3, 103(sp)
  ADD t4, t3, zero
  SB t4, 118(sp)
  LB t3, 104(sp)
  ADD t4, t3, zero
  SB t4, 117(sp)
  LB t3, 105(sp)
  ADD t4, t3, zero
  SB t4, 116(sp)
  LA s6, i
  LW s0, 0(s6)
  ADDI s6, zero, 4
  MULW s1, s0, s6
  LA s0, get
  ADD s6, s0, s1
  LW s0, 0(s6)
  XORI s1, s0, 45
  SLTIU s0, s1, 1
  BNE s0, zero, bb44
  JAL zero, bb171
bb24:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 43
  SLTIU s0, s1, 1
  BNE s0, zero, bb28
  JAL zero, bb29
bb25:
  LA s5, chat
  LW s6, 0(s5)
  ADDI s5, zero, 1
  SUBW s7, s6, s5
  LA s5, chat
  SW s7, 0(s5)
  ADDI s5, zero, 4
  MULW s7, s6, s5
  LA s5, chas
  ADD s6, s5, s7
  LW s5, 0(s6)
  LA s6, c
  SW s5, 0(s6)
  LA s5, ii
  LW s6, 0(s5)
  ADDI s5, zero, 4
  MULW s7, s6, s5
  LA s5, get2
  ADD s6, s5, s7
  ADDI s5, zero, 32
  SW s5, 0(s6)
  LA s5, ii
  LW s6, 0(s5)
  ADDIW s5, s6, 1
  ADDI s6, zero, 4
  MULW s7, s5, s6
  LA s5, get2
  ADD s6, s5, s7
  LA s5, c
  LW s7, 0(s5)
  SW s7, 0(s6)
  LA s5, ii
  LW s6, 0(s5)
  ADDIW s5, s6, 2
  LA s6, ii
  SW s5, 0(s6)
  LA s5, chat
  LW s6, 0(s5)
  XOR s5, s6, zero
  SLTIU s6, s5, 1
  BNE s6, zero, bb149
  JAL zero, bb150
bb26:
  LW t4, 112(sp)
  ADD s6, t4, zero
  XOR s7, s6, zero
  SLTIU s6, s7, 1
  BNE s6, zero, bb27
  JAL zero, bb24
bb27:
  LA s6, chat
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, chat
  SW s6, 0(s7)
  ADDI s7, zero, 4
  MULW s8, s6, s7
  LA s6, chas
  ADD s7, s6, s8
  ADDI s6, zero, 43
  SW s6, 0(s7)
  LB t3, 12(sp)
  ADD t4, t3, zero
  SB t4, 105(sp)
  LB t3, 20(sp)
  ADD t4, t3, zero
  SB t4, 104(sp)
  LB t3, 22(sp)
  ADD t4, t3, zero
  SB t4, 103(sp)
  LB t3, 23(sp)
  ADD t4, t3, zero
  SB t4, 102(sp)
  LB t3, 13(sp)
  ADD t4, t3, zero
  SB t4, 101(sp)
  JAL zero, bb23
bb28:
  ADDI t4, zero, 1
  SB t4, 106(sp)
  JAL zero, bb30
bb29:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 45
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 106(sp)
  JAL zero, bb30
bb30:
  LB t3, 106(sp)
  ADD t4, t3, zero
  SB t4, 12(sp)
  LB t4, 12(sp)
  BNE t4, zero, bb31
  JAL zero, bb32
bb31:
  ADDI t4, zero, 1
  SB t4, 107(sp)
  JAL zero, bb33
bb32:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 42
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 107(sp)
  JAL zero, bb33
bb33:
  LB t3, 107(sp)
  ADD t4, t3, zero
  SB t4, 13(sp)
  LB t4, 13(sp)
  BNE t4, zero, bb34
  JAL zero, bb35
bb34:
  ADDI t4, zero, 1
  SB t4, 108(sp)
  JAL zero, bb36
bb35:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 47
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 108(sp)
  JAL zero, bb36
bb36:
  LB t3, 108(sp)
  ADD t4, t3, zero
  SB t4, 20(sp)
  LB t4, 20(sp)
  BNE t4, zero, bb37
  JAL zero, bb38
bb37:
  ADDI t4, zero, 1
  SB t4, 109(sp)
  JAL zero, bb39
bb38:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 37
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 109(sp)
  JAL zero, bb39
bb39:
  LB t3, 109(sp)
  ADD t4, t3, zero
  SB t4, 22(sp)
  LB t4, 22(sp)
  BNE t4, zero, bb40
  JAL zero, bb41
bb40:
  ADDI t4, zero, 1
  SB t4, 110(sp)
  JAL zero, bb42
bb41:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 94
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 110(sp)
  JAL zero, bb42
bb42:
  LB t3, 110(sp)
  ADD t4, t3, zero
  SB t4, 23(sp)
  LB t4, 23(sp)
  BNE t4, zero, bb25
  JAL zero, bb27
bb43:
  LB t3, 121(sp)
  ADD t4, t3, zero
  SB t4, 140(sp)
  LB t3, 122(sp)
  ADD t4, t3, zero
  SB t4, 139(sp)
  LB t3, 123(sp)
  ADD t4, t3, zero
  SB t4, 138(sp)
  LB t3, 124(sp)
  ADD t4, t3, zero
  SB t4, 137(sp)
  LB t3, 125(sp)
  ADD t4, t3, zero
  SB t4, 136(sp)
  LA s5, i
  LW s0, 0(s5)
  ADDI s5, zero, 4
  MULW s1, s0, s5
  LA s0, get
  ADD s5, s0, s1
  LW s0, 0(s5)
  XORI s1, s0, 42
  SLTIU s0, s1, 1
  BNE s0, zero, bb64
  JAL zero, bb172
bb44:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s6, s1, s0
  LA s0, chas
  ADD s1, s0, s6
  LW s0, 0(s1)
  XORI s1, s0, 43
  SLTIU s0, s1, 1
  BNE s0, zero, bb48
  JAL zero, bb49
bb45:
  LA s4, chat
  LW s5, 0(s4)
  ADDI s4, zero, 1
  SUBW s7, s5, s4
  LA s4, chat
  SW s7, 0(s4)
  ADDI s4, zero, 4
  MULW s7, s5, s4
  LA s4, chas
  ADD s5, s4, s7
  LW s4, 0(s5)
  LA s5, c
  SW s4, 0(s5)
  LA s4, ii
  LW s5, 0(s4)
  ADDI s4, zero, 4
  MULW s7, s5, s4
  LA s4, get2
  ADD s5, s4, s7
  ADDI s4, zero, 32
  SW s4, 0(s5)
  LA s4, ii
  LW s5, 0(s4)
  ADDIW s4, s5, 1
  ADDI s5, zero, 4
  MULW s7, s4, s5
  LA s4, get2
  ADD s5, s4, s7
  LA s4, c
  LW s7, 0(s4)
  SW s7, 0(s5)
  LA s4, ii
  LW s5, 0(s4)
  ADDIW s4, s5, 2
  LA s5, ii
  SW s4, 0(s5)
  LA s4, chat
  LW s5, 0(s4)
  XOR s4, s5, zero
  SLTIU s5, s4, 1
  BNE s5, zero, bb151
  JAL zero, bb152
bb46:
  LW t4, 132(sp)
  ADD s5, t4, zero
  XOR s7, s5, zero
  SLTIU s5, s7, 1
  BNE s5, zero, bb47
  JAL zero, bb44
bb47:
  LA s5, chat
  LW s7, 0(s5)
  ADDIW s5, s7, 1
  LA s7, chat
  SW s5, 0(s7)
  ADDI s7, zero, 4
  MULW s8, s5, s7
  LA s5, chas
  ADD s7, s5, s8
  ADDI s5, zero, 45
  SW s5, 0(s7)
  LB t3, 26(sp)
  ADD t4, t3, zero
  SB t4, 125(sp)
  LB t3, 25(sp)
  ADD t4, t3, zero
  SB t4, 124(sp)
  LB t3, 1(sp)
  ADD t4, t3, zero
  SB t4, 123(sp)
  LB t3, 3(sp)
  ADD t4, t3, zero
  SB t4, 122(sp)
  LB t3, 24(sp)
  ADD t4, t3, zero
  SB t4, 121(sp)
  JAL zero, bb43
bb48:
  ADDI t4, zero, 1
  SB t4, 126(sp)
  JAL zero, bb50
bb49:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 45
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 126(sp)
  JAL zero, bb50
bb50:
  LB t3, 126(sp)
  ADD t4, t3, zero
  SB t4, 24(sp)
  LB t4, 24(sp)
  BNE t4, zero, bb51
  JAL zero, bb52
bb51:
  ADDI t4, zero, 1
  SB t4, 127(sp)
  JAL zero, bb53
bb52:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 42
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 127(sp)
  JAL zero, bb53
bb53:
  LB t3, 127(sp)
  ADD t4, t3, zero
  SB t4, 3(sp)
  LB t4, 3(sp)
  BNE t4, zero, bb54
  JAL zero, bb55
bb54:
  ADDI t4, zero, 1
  SB t4, 128(sp)
  JAL zero, bb56
bb55:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 47
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 128(sp)
  JAL zero, bb56
bb56:
  LB t3, 128(sp)
  ADD t4, t3, zero
  SB t4, 1(sp)
  LB t4, 1(sp)
  BNE t4, zero, bb57
  JAL zero, bb58
bb57:
  ADDI t4, zero, 1
  SB t4, 129(sp)
  JAL zero, bb59
bb58:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 37
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 129(sp)
  JAL zero, bb59
bb59:
  LB t3, 129(sp)
  ADD t4, t3, zero
  SB t4, 25(sp)
  LB t4, 25(sp)
  BNE t4, zero, bb60
  JAL zero, bb61
bb60:
  ADDI t4, zero, 1
  SB t4, 130(sp)
  JAL zero, bb62
bb61:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 94
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 130(sp)
  JAL zero, bb62
bb62:
  LB t3, 130(sp)
  ADD t4, t3, zero
  SB t4, 26(sp)
  LB t4, 26(sp)
  BNE t4, zero, bb45
  JAL zero, bb47
bb63:
  LB t3, 141(sp)
  ADD t4, t3, zero
  SB t4, 154(sp)
  LB t3, 142(sp)
  ADD t4, t3, zero
  SB t4, 153(sp)
  LB t3, 143(sp)
  ADD t4, t3, zero
  SB t4, 152(sp)
  LA s10, i
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s6, s11, s10
  LA s10, get
  ADD s11, s10, s6
  LW s6, 0(s11)
  XORI s10, s6, 47
  SLTIU s6, s10, 1
  BNE s6, zero, bb78
  JAL zero, bb173
bb64:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s5, s1, s0
  LA s0, chas
  ADD s1, s0, s5
  LW s0, 0(s1)
  XORI s1, s0, 42
  SLTIU s0, s1, 1
  BNE s0, zero, bb68
  JAL zero, bb69
bb65:
  LA s6, chat
  LW s2, 0(s6)
  ADDI s6, zero, 1
  SUBW s3, s2, s6
  LA s6, chat
  SW s3, 0(s6)
  ADDI s3, zero, 4
  MULW s6, s2, s3
  LA s2, chas
  ADD s3, s2, s6
  LW s2, 0(s3)
  LA s3, c
  SW s2, 0(s3)
  LA s2, ii
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s6, s3, s2
  LA s2, get2
  ADD s3, s2, s6
  ADDI s2, zero, 32
  SW s2, 0(s3)
  LA s2, ii
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  ADDI s3, zero, 4
  MULW s6, s2, s3
  LA s2, get2
  ADD s3, s2, s6
  LA s2, c
  LW s6, 0(s2)
  SW s6, 0(s3)
  LA s2, ii
  LW s3, 0(s2)
  ADDIW s2, s3, 2
  LA s3, ii
  SW s2, 0(s3)
  LA s2, chat
  LW s3, 0(s2)
  XOR s2, s3, zero
  SLTIU s3, s2, 1
  BNE s3, zero, bb153
  JAL zero, bb154
bb66:
  LW t4, 148(sp)
  ADD s3, t4, zero
  XOR s6, s3, zero
  SLTIU s3, s6, 1
  BNE s3, zero, bb67
  JAL zero, bb64
bb67:
  LA s3, chat
  LW s6, 0(s3)
  ADDIW s3, s6, 1
  LA s6, chat
  SW s3, 0(s6)
  ADDI s6, zero, 4
  MULW s4, s3, s6
  LA s3, chas
  ADD s6, s3, s4
  ADDI s3, zero, 42
  SW s3, 0(s6)
  LB t3, 27(sp)
  ADD t4, t3, zero
  SB t4, 143(sp)
  LB t3, 0(sp)
  ADD t4, t3, zero
  SB t4, 142(sp)
  LB t3, 5(sp)
  ADD t4, t3, zero
  SB t4, 141(sp)
  JAL zero, bb63
bb68:
  ADDI t4, zero, 1
  SB t4, 144(sp)
  JAL zero, bb70
bb69:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 47
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 144(sp)
  JAL zero, bb70
bb70:
  LB t3, 144(sp)
  ADD t4, t3, zero
  SB t4, 5(sp)
  LB t4, 5(sp)
  BNE t4, zero, bb71
  JAL zero, bb72
bb71:
  ADDI t4, zero, 1
  SB t4, 145(sp)
  JAL zero, bb73
bb72:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 37
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 145(sp)
  JAL zero, bb73
bb73:
  LB t3, 145(sp)
  ADD t4, t3, zero
  SB t4, 0(sp)
  LB t4, 0(sp)
  BNE t4, zero, bb74
  JAL zero, bb75
bb74:
  ADDI t4, zero, 1
  SB t4, 146(sp)
  JAL zero, bb76
bb75:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 94
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 146(sp)
  JAL zero, bb76
bb76:
  LB t3, 146(sp)
  ADD t4, t3, zero
  SB t4, 27(sp)
  LB t4, 27(sp)
  BNE t4, zero, bb65
  JAL zero, bb67
bb77:
  LB t3, 155(sp)
  ADD t4, t3, zero
  SB t4, 170(sp)
  LB t3, 156(sp)
  ADD t4, t3, zero
  SB t4, 169(sp)
  LB t3, 157(sp)
  ADD t4, t3, zero
  SB t4, 168(sp)
  LA s8, i
  LW s7, 0(s8)
  ADDI s8, zero, 4
  MULW s4, s7, s8
  LA s7, get
  ADD s8, s7, s4
  LW s4, 0(s8)
  XORI s7, s4, 37
  SLTIU s4, s7, 1
  BNE s4, zero, bb92
  JAL zero, bb174
bb78:
  LA s6, chat
  LW s10, 0(s6)
  ADDI s6, zero, 4
  MULW s11, s10, s6
  LA s6, chas
  ADD s10, s6, s11
  LW s6, 0(s10)
  XORI s10, s6, 42
  SLTIU s6, s10, 1
  BNE s6, zero, bb82
  JAL zero, bb83
bb79:
  LA s4, chat
  LW s3, 0(s4)
  ADDI s4, zero, 1
  SUBW s0, s3, s4
  LA s4, chat
  SW s0, 0(s4)
  ADDI s0, zero, 4
  MULW s4, s3, s0
  LA s0, chas
  ADD s3, s0, s4
  LW s0, 0(s3)
  LA s3, c
  SW s0, 0(s3)
  LA s0, ii
  LW s3, 0(s0)
  ADDI s0, zero, 4
  MULW s4, s3, s0
  LA s0, get2
  ADD s3, s0, s4
  ADDI s0, zero, 32
  SW s0, 0(s3)
  LA s0, ii
  LW s3, 0(s0)
  ADDIW s0, s3, 1
  ADDI s3, zero, 4
  MULW s4, s0, s3
  LA s0, get2
  ADD s3, s0, s4
  LA s0, c
  LW s4, 0(s0)
  SW s4, 0(s3)
  LA s0, ii
  LW s3, 0(s0)
  ADDIW s0, s3, 2
  LA s3, ii
  SW s0, 0(s3)
  LA s0, chat
  LW s3, 0(s0)
  XOR s0, s3, zero
  SLTIU s3, s0, 1
  BNE s3, zero, bb155
  JAL zero, bb156
bb80:
  LW t4, 164(sp)
  ADD s3, t4, zero
  XOR s4, s3, zero
  SLTIU s3, s4, 1
  BNE s3, zero, bb81
  JAL zero, bb78
bb81:
  LA s3, chat
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LA s4, chat
  SW s3, 0(s4)
  ADDI s4, zero, 4
  MULW s1, s3, s4
  LA s3, chas
  ADD s4, s3, s1
  ADDI s1, zero, 47
  SW s1, 0(s4)
  LB t3, 4(sp)
  ADD t4, t3, zero
  SB t4, 157(sp)
  LB t3, 7(sp)
  ADD t4, t3, zero
  SB t4, 156(sp)
  LB t3, 28(sp)
  ADD t4, t3, zero
  SB t4, 155(sp)
  JAL zero, bb77
bb82:
  ADDI t4, zero, 1
  SB t4, 158(sp)
  JAL zero, bb84
bb83:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 47
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 158(sp)
  JAL zero, bb84
bb84:
  LB t3, 158(sp)
  ADD t4, t3, zero
  SB t4, 7(sp)
  LB t4, 7(sp)
  BNE t4, zero, bb85
  JAL zero, bb86
bb85:
  ADDI t4, zero, 1
  SB t4, 159(sp)
  JAL zero, bb87
bb86:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 37
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 159(sp)
  JAL zero, bb87
bb87:
  LB t3, 159(sp)
  ADD t4, t3, zero
  SB t4, 28(sp)
  LB t4, 28(sp)
  BNE t4, zero, bb88
  JAL zero, bb89
bb88:
  ADDI t4, zero, 1
  SB t4, 160(sp)
  JAL zero, bb90
bb89:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 94
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 160(sp)
  JAL zero, bb90
bb90:
  LB t3, 160(sp)
  ADD t4, t3, zero
  SB t4, 4(sp)
  LB t4, 4(sp)
  BNE t4, zero, bb79
  JAL zero, bb81
bb91:
  LB t4, 171(sp)
  ADD s11, t4, zero
  ADD s0, s6, zero
  ADD s9, s3, zero
  LA s2, ii
  LW s5, 0(s2)
  ADDI s2, zero, 4
  MULW s10, s5, s2
  LA s2, get2
  ADD s5, s2, s10
  ADDI s2, zero, 32
  SW s2, 0(s5)
  LA s2, ii
  LW s5, 0(s2)
  ADDIW s2, s5, 1
  LA s5, ii
  SW s2, 0(s5)
  LB t3, 168(sp)
  ADD t4, t3, zero
  SB t4, 83(sp)
  ADD t4, s9, zero
  SB t4, 82(sp)
  ADD t4, s0, zero
  SB t4, 81(sp)
  LB t3, 169(sp)
  ADD t4, t3, zero
  SB t4, 80(sp)
  ADD t4, s11, zero
  SB t4, 65(sp)
  LB t3, 116(sp)
  ADD t4, t3, zero
  SB t4, 66(sp)
  LB t3, 170(sp)
  ADD t4, t3, zero
  SB t4, 67(sp)
  LB t3, 152(sp)
  ADD t4, t3, zero
  SB t4, 68(sp)
  LB t3, 153(sp)
  ADD t4, t3, zero
  SB t4, 69(sp)
  LB t3, 154(sp)
  ADD t4, t3, zero
  SB t4, 70(sp)
  LB t3, 136(sp)
  ADD t4, t3, zero
  SB t4, 71(sp)
  LB t3, 117(sp)
  ADD t4, t3, zero
  SB t4, 72(sp)
  LB t3, 137(sp)
  ADD t4, t3, zero
  SB t4, 73(sp)
  LB t3, 138(sp)
  ADD t4, t3, zero
  SB t4, 74(sp)
  LB t3, 139(sp)
  ADD t4, t3, zero
  SB t4, 75(sp)
  LB t3, 118(sp)
  ADD t4, t3, zero
  SB t4, 76(sp)
  LB t3, 140(sp)
  ADD t4, t3, zero
  SB t4, 77(sp)
  LB t3, 119(sp)
  ADD t4, t3, zero
  SB t4, 78(sp)
  LB t3, 120(sp)
  ADD t4, t3, zero
  SB t4, 79(sp)
  JAL zero, bb13
bb92:
  LA s4, chat
  LW s7, 0(s4)
  ADDI s4, zero, 4
  MULW s8, s7, s4
  LA s4, chas
  ADD s7, s4, s8
  LW s4, 0(s7)
  XORI s7, s4, 42
  SLTIU s4, s7, 1
  BNE s4, zero, bb96
  JAL zero, bb97
bb93:
  LA s3, chat
  LW s1, 0(s3)
  ADDI s3, zero, 1
  SUBW s6, s1, s3
  LA s3, chat
  SW s6, 0(s3)
  ADDI s3, zero, 4
  MULW s6, s1, s3
  LA s1, chas
  ADD s3, s1, s6
  LW s1, 0(s3)
  LA s3, c
  SW s1, 0(s3)
  LA s1, ii
  LW s3, 0(s1)
  ADDI s1, zero, 4
  MULW s6, s3, s1
  LA s1, get2
  ADD s3, s1, s6
  ADDI s1, zero, 32
  SW s1, 0(s3)
  LA s1, ii
  LW s3, 0(s1)
  ADDIW s1, s3, 1
  ADDI s3, zero, 4
  MULW s6, s1, s3
  LA s1, get2
  ADD s3, s1, s6
  LA s1, c
  LW s6, 0(s1)
  SW s6, 0(s3)
  LA s1, ii
  LW s3, 0(s1)
  ADDIW s1, s3, 2
  LA s3, ii
  SW s1, 0(s3)
  LA s1, chat
  LW s3, 0(s1)
  XOR s1, s3, zero
  SLTIU s3, s1, 1
  BNE s3, zero, bb157
  JAL zero, bb158
bb94:
  ADD s3, s1, zero
  XOR s6, s3, zero
  SLTIU s3, s6, 1
  BNE s3, zero, bb95
  JAL zero, bb92
bb95:
  LA s3, chat
  LW s6, 0(s3)
  ADDIW s3, s6, 1
  LA s6, chat
  SW s3, 0(s6)
  ADDI s6, zero, 4
  MULW s10, s3, s6
  LA s3, chas
  ADD s6, s3, s10
  ADDI s3, zero, 37
  SW s3, 0(s6)
  LB t4, 6(sp)
  ADD s3, t4, zero
  LB t4, 2(sp)
  ADD s6, t4, zero
  LB t3, 29(sp)
  ADD t4, t3, zero
  SB t4, 171(sp)
  JAL zero, bb91
bb96:
  ADDI s4, zero, 1
  JAL zero, bb98
bb97:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 47
  SLTIU s0, s1, 1
  ADD s4, s0, zero
  JAL zero, bb98
bb98:
  ADD t4, s4, zero
  SB t4, 29(sp)
  LB t4, 29(sp)
  BNE t4, zero, bb99
  JAL zero, bb100
bb99:
  ADDI s7, zero, 1
  JAL zero, bb101
bb100:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 37
  SLTIU s0, s1, 1
  ADD s7, s0, zero
  JAL zero, bb101
bb101:
  ADD t4, s7, zero
  SB t4, 6(sp)
  LB t4, 6(sp)
  BNE t4, zero, bb102
  JAL zero, bb103
bb102:
  ADDI s8, zero, 1
  JAL zero, bb104
bb103:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 94
  SLTIU s0, s1, 1
  ADD s8, s0, zero
  JAL zero, bb104
bb104:
  ADD t4, s8, zero
  SB t4, 2(sp)
  LB t4, 2(sp)
  BNE t4, zero, bb93
  JAL zero, bb95
bb105:
  LA s0, chat
  LW s1, 0(s0)
  SLT s0, zero, s1
  BNE s0, zero, bb106
  JAL zero, bb107
bb106:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 1
  SUBW s2, s1, s0
  LA s0, chat
  SW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  LA s1, ii
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  LA s1, get2
  ADD s2, s1, s3
  ADDI s1, zero, 32
  SW s1, 0(s2)
  LA s1, ii
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, get2
  ADD s2, s1, s3
  SW s0, 0(s2)
  LA s0, ii
  LW s1, 0(s0)
  ADDIW s0, s1, 2
  LA s1, ii
  SW s0, 0(s1)
  JAL zero, bb105
bb107:
  LA s0, ii
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get2
  ADD s1, s0, s2
  ADDI s0, zero, 64
  SW s0, 0(s1)
  LA s0, i
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADD s0, zero, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  JAL zero, bb108
bb108:
  ADD t4, s2, zero
  SW t4, 180(sp)
  ADD t4, s1, zero
  SW t4, 176(sp)
  ADD t4, s0, zero
  SW t4, 172(sp)
  LA s6, i
  LW s7, 0(s6)
  ADDI s6, zero, 4
  MULW s8, s7, s6
  LA s6, get2
  ADD s7, s6, s8
  LW s6, 0(s7)
  XORI s7, s6, 64
  SLTU s6, zero, s7
  BNE s6, zero, bb109
  JAL zero, bb110
bb109:
  LA s6, i
  LW s7, 0(s6)
  ADDI s6, zero, 4
  MULW s8, s7, s6
  LA s6, get2
  ADD s7, s6, s8
  LW s6, 0(s7)
  XORI s7, s6, 43
  SLTIU s6, s7, 1
  BNE s6, zero, bb111
  JAL zero, bb112
bb110:
  LA s0, ints
  ADDI s1, s0, 4
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 240(sp)
  LD s4, 248(sp)
  LD s2, 256(sp)
  LD s8, 264(sp)
  LD s11, 272(sp)
  LD s10, 280(sp)
  LD s7, 288(sp)
  LD s6, 296(sp)
  LD s1, 304(sp)
  LD s5, 312(sp)
  LD s0, 320(sp)
  LD s9, 328(sp)
  LD s3, 336(sp)
  ADDI sp, sp, 352
  JALR zero, 0(ra)
bb111:
  ADDI t4, zero, 1
  SB t4, 184(sp)
  JAL zero, bb113
bb112:
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get2
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 45
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 184(sp)
  JAL zero, bb113
bb113:
  LB t4, 184(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb114
  JAL zero, bb115
bb114:
  ADDI t4, zero, 1
  SB t4, 185(sp)
  JAL zero, bb116
bb115:
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get2
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 42
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 185(sp)
  JAL zero, bb116
bb116:
  LB t4, 185(sp)
  ADD s8, t4, zero
  BNE s8, zero, bb117
  JAL zero, bb118
bb117:
  ADDI t4, zero, 1
  SB t4, 186(sp)
  JAL zero, bb119
bb118:
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get2
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 47
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 186(sp)
  JAL zero, bb119
bb119:
  LB t4, 186(sp)
  ADD s9, t4, zero
  BNE s9, zero, bb120
  JAL zero, bb121
bb120:
  ADDI t4, zero, 1
  SB t4, 187(sp)
  JAL zero, bb122
bb121:
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get2
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 37
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 187(sp)
  JAL zero, bb122
bb122:
  LB t4, 187(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb123
  JAL zero, bb124
bb123:
  ADDI t4, zero, 1
  SB t4, 188(sp)
  JAL zero, bb125
bb124:
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get2
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 94
  SLTIU s0, s1, 1
  ADD t4, s0, zero
  SB t4, 188(sp)
  JAL zero, bb125
bb125:
  LB t4, 188(sp)
  ADD s11, t4, zero
  BNE s11, zero, bb126
  JAL zero, bb128
bb126:
  LA s11, intt
  LW s5, 0(s11)
  ADDI s11, zero, 1
  SUBW s4, s5, s11
  LA s11, intt
  SW s4, 0(s11)
  ADDI s4, zero, 4
  MULW s11, s5, s4
  LA s4, ints
  ADD s5, s4, s11
  LW t4, 0(s5)
  SW t4, 196(sp)
  LA s5, intt
  LW s11, 0(s5)
  ADDI s5, zero, 1
  SUBW s3, s11, s5
  LA s5, intt
  SW s3, 0(s5)
  ADDI s3, zero, 4
  MULW s5, s11, s3
  LA s3, ints
  ADD s11, s3, s5
  LW t4, 0(s11)
  SW t4, 192(sp)
  LA s5, i
  LW s11, 0(s5)
  ADDI s5, zero, 4
  MULW s6, s11, s5
  LA s5, get2
  ADD s11, s5, s6
  LW s5, 0(s11)
  XORI s6, s5, 43
  SLTIU s5, s6, 1
  BNE s5, zero, bb129
  JAL zero, bb175
bb127:
  LW t4, 232(sp)
  ADD s5, t4, zero
  LW t4, 236(sp)
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
  JAL zero, bb108
bb128:
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get2
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 32
  SLTU s0, zero, s1
  BNE s0, zero, bb141
  JAL zero, bb142
bb129:
  LW t4, 196(sp)
  LW t3, 192(sp)
  ADDW s5, t4, t3
  ADD t4, s5, zero
  SW t4, 200(sp)
  JAL zero, bb130
bb130:
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 208(sp)
  LA s11, i
  LW s7, 0(s11)
  ADDI s11, zero, 4
  MULW s8, s7, s11
  LA s7, get2
  ADD s11, s7, s8
  LW s7, 0(s11)
  XORI s8, s7, 45
  SLTIU s7, s8, 1
  BNE s7, zero, bb131
  JAL zero, bb176
bb131:
  LW t4, 192(sp)
  LW t3, 196(sp)
  SUBW s7, t4, t3
  ADD t4, s7, zero
  SW t4, 204(sp)
  JAL zero, bb132
bb132:
  LW t3, 204(sp)
  ADD t4, t3, zero
  SW t4, 216(sp)
  LA s11, i
  LW s9, 0(s11)
  ADDI s11, zero, 4
  MULW s10, s9, s11
  LA s9, get2
  ADD s11, s9, s10
  LW s9, 0(s11)
  XORI s10, s9, 42
  SLTIU s9, s10, 1
  BNE s9, zero, bb133
  JAL zero, bb177
bb133:
  LW t4, 196(sp)
  LW t3, 192(sp)
  MULW s9, t4, t3
  ADD t4, s9, zero
  SW t4, 212(sp)
  JAL zero, bb134
bb134:
  LW t3, 212(sp)
  ADD t4, t3, zero
  SW t4, 224(sp)
  LA s11, i
  LW s3, 0(s11)
  ADDI s11, zero, 4
  MULW s4, s3, s11
  LA s3, get2
  ADD s11, s3, s4
  LW s3, 0(s11)
  XORI s4, s3, 47
  SLTIU s3, s4, 1
  BNE s3, zero, bb135
  JAL zero, bb178
bb135:
  LW t4, 192(sp)
  LW t3, 196(sp)
  DIVW s3, t4, t3
  ADD t4, s3, zero
  SW t4, 220(sp)
  JAL zero, bb136
bb136:
  LW t4, 220(sp)
  ADD s3, t4, zero
  LA s11, i
  LW s6, 0(s11)
  ADDI s11, zero, 4
  MULW s8, s6, s11
  LA s6, get2
  ADD s11, s6, s8
  LW s6, 0(s11)
  XORI s8, s6, 37
  SLTIU s6, s8, 1
  BNE s6, zero, bb137
  JAL zero, bb179
bb137:
  LW t4, 192(sp)
  LW t3, 196(sp)
  REMW s6, t4, t3
  ADD t4, s6, zero
  SW t4, 228(sp)
  JAL zero, bb138
bb138:
  LW t4, 228(sp)
  ADD s6, t4, zero
  LA s11, i
  LW s5, 0(s11)
  ADDI s11, zero, 4
  MULW s10, s5, s11
  LA s5, get2
  ADD s11, s5, s10
  LW s5, 0(s11)
  XORI s10, s5, 94
  SLTIU s5, s10, 1
  BNE s5, zero, bb139
  JAL zero, bb180
bb139:
  ADDI s5, zero, 1
  LW t4, 196(sp)
  ADD s10, t4, zero
  JAL zero, bb146
bb140:
  ADD s5, s4, zero
  LA s7, intt
  LW s8, 0(s7)
  ADDIW s7, s8, 1
  LA s8, intt
  SW s7, 0(s8)
  ADDI s8, zero, 4
  MULW s9, s7, s8
  LA s7, ints
  ADD s8, s7, s9
  SW s5, 0(s8)
  LW t4, 196(sp)
  ADD s7, t4, zero
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 236(sp)
  ADD t4, s5, zero
  SW t4, 232(sp)
  JAL zero, bb127
bb141:
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get2
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  LA s0, intt
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, intt
  SW s0, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s0, s1
  LA s0, ints
  ADD s1, s0, s3
  SW s2, 0(s1)
  LA s0, ii
  ADDI s1, zero, 1
  SW s1, 0(s0)
  JAL zero, bb143
bb142:
  LW t4, 172(sp)
  ADD s7, t4, zero
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 236(sp)
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 232(sp)
  JAL zero, bb127
bb143:
  LA s0, i
  LW s1, 0(s0)
  LA s0, ii
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, get2
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 32
  SLTU s0, zero, s1
  BNE s0, zero, bb144
  JAL zero, bb145
bb144:
  LA s0, i
  LW s1, 0(s0)
  LA s0, ii
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, get2
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  LA s0, intt
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s1, s0
  LA s0, ints
  ADD s1, s0, s3
  LW s0, 0(s1)
  ADDI s3, zero, 10
  MULW s4, s0, s3
  SW s4, 0(s1)
  LA s0, intt
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s1, s0
  LA s0, ints
  ADD s1, s0, s3
  LW s0, 0(s1)
  ADDW s3, s0, s2
  SW s3, 0(s1)
  LA s0, ii
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, ii
  SW s0, 0(s1)
  JAL zero, bb143
bb145:
  LA s0, i
  LW s1, 0(s0)
  LA s0, ii
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  LA s0, i
  SW s2, 0(s0)
  JAL zero, bb142
bb146:
  ADD s11, s10, zero
  ADD s7, s5, zero
  XOR s4, s11, zero
  SLTU s9, zero, s4
  BNE s9, zero, bb147
  JAL zero, bb148
bb147:
  LW t4, 192(sp)
  MULW s4, s7, t4
  ADDI s9, zero, 1
  SUBW s8, s11, s9
  ADD s5, s4, zero
  ADD s10, s8, zero
  JAL zero, bb146
bb148:
  ADD s4, s7, zero
  JAL zero, bb140
bb149:
  ADD t4, zero, zero
  SW t4, 112(sp)
  JAL zero, bb26
bb150:
  ADDI t4, zero, 1
  SW t4, 112(sp)
  JAL zero, bb26
bb151:
  ADD t4, zero, zero
  SW t4, 132(sp)
  JAL zero, bb46
bb152:
  ADDI t4, zero, 1
  SW t4, 132(sp)
  JAL zero, bb46
bb153:
  ADD t4, zero, zero
  SW t4, 148(sp)
  JAL zero, bb66
bb154:
  ADDI t4, zero, 1
  SW t4, 148(sp)
  JAL zero, bb66
bb155:
  ADD t4, zero, zero
  SW t4, 164(sp)
  JAL zero, bb80
bb156:
  ADDI t4, zero, 1
  SW t4, 164(sp)
  JAL zero, bb80
bb157:
  ADD s1, zero, zero
  JAL zero, bb94
bb158:
  ADDI s1, zero, 1
  JAL zero, bb94
bb159:
  ADD t4, s11, zero
  SW t4, 16(sp)
  ADD t4, s6, zero
  SW t4, 8(sp)
  LW t4, 16(sp)
  XORI s10, t4, 13
  SLTU s7, zero, s10
  BNE s7, zero, bb162
  JAL zero, bb163
bb160:
  ADDI s10, zero, 4
  LW t4, 8(sp)
  MULW s7, t4, s10
  LA s10, get
  ADD s5, s10, s7
  LW t4, 16(sp)
  SW t4, 0(s5)
  LW t4, 8(sp)
  ADDIW s5, t4, 1
  CALL getch
  ADD s7, a0, zero
  ADD s6, s5, zero
  ADD s11, s7, zero
  JAL zero, bb159
bb161:
  ADD s5, zero, zero
  ADD s6, zero, zero
  ADD s7, zero, zero
  ADD s10, zero, zero
  ADD s11, zero, zero
  ADD t4, zero, zero
  SB t4, 100(sp)
  ADD t4, zero, zero
  SB t4, 98(sp)
  ADD t4, zero, zero
  SB t4, 96(sp)
  ADD t4, zero, zero
  SB t4, 64(sp)
  ADD t4, zero, zero
  SB t4, 58(sp)
  ADD t4, zero, zero
  SB t4, 57(sp)
  ADD t4, zero, zero
  SB t4, 56(sp)
  ADD t4, zero, zero
  SB t4, 30(sp)
  ADD t4, zero, zero
  SB t4, 31(sp)
  ADD t4, zero, zero
  SB t4, 32(sp)
  ADD t4, zero, zero
  SB t4, 33(sp)
  ADD t4, zero, zero
  SB t4, 34(sp)
  ADD t4, zero, zero
  SB t4, 35(sp)
  ADD t4, zero, zero
  SB t4, 36(sp)
  JAL zero, bb9
bb162:
  LW t4, 16(sp)
  XORI s7, t4, 10
  SLTU s10, zero, s7
  ADD t4, s10, zero
  SB t4, 21(sp)
  JAL zero, bb164
bb163:
  ADD t4, zero, zero
  SB t4, 21(sp)
  JAL zero, bb164
bb164:
  LB t4, 21(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb160
  JAL zero, bb161
bb165:
  ADDI s3, zero, 57
  SLT s9, s3, s0
  XORI s0, s9, 1
  ADD t4, s0, zero
  SB t4, 59(sp)
  JAL zero, bb167
bb166:
  ADD t4, zero, zero
  SB t4, 59(sp)
  JAL zero, bb167
bb167:
  LB t4, 59(sp)
  ADD s0, t4, zero
  BNE s0, zero, bb168
  JAL zero, bb169
bb168:
  ADDI t4, zero, 1
  SW t4, 60(sp)
  JAL zero, bb11
bb169:
  ADD t4, zero, zero
  SW t4, 60(sp)
  JAL zero, bb11
bb170:
  LB t3, 50(sp)
  ADD t4, t3, zero
  SB t4, 105(sp)
  LB t3, 44(sp)
  ADD t4, t3, zero
  SB t4, 104(sp)
  LB t3, 40(sp)
  ADD t4, t3, zero
  SB t4, 103(sp)
  LB t3, 38(sp)
  ADD t4, t3, zero
  SB t4, 102(sp)
  LB t3, 37(sp)
  ADD t4, t3, zero
  SB t4, 101(sp)
  JAL zero, bb23
bb171:
  LB t3, 45(sp)
  ADD t4, t3, zero
  SB t4, 125(sp)
  LB t3, 43(sp)
  ADD t4, t3, zero
  SB t4, 124(sp)
  LB t3, 42(sp)
  ADD t4, t3, zero
  SB t4, 123(sp)
  LB t3, 41(sp)
  ADD t4, t3, zero
  SB t4, 122(sp)
  LB t3, 39(sp)
  ADD t4, t3, zero
  SB t4, 121(sp)
  JAL zero, bb43
bb172:
  LB t3, 48(sp)
  ADD t4, t3, zero
  SB t4, 143(sp)
  LB t3, 47(sp)
  ADD t4, t3, zero
  SB t4, 142(sp)
  LB t3, 46(sp)
  ADD t4, t3, zero
  SB t4, 141(sp)
  JAL zero, bb63
bb173:
  LB t3, 55(sp)
  ADD t4, t3, zero
  SB t4, 157(sp)
  LB t3, 52(sp)
  ADD t4, t3, zero
  SB t4, 156(sp)
  LB t3, 49(sp)
  ADD t4, t3, zero
  SB t4, 155(sp)
  JAL zero, bb77
bb174:
  LB t4, 54(sp)
  ADD s3, t4, zero
  LB t4, 53(sp)
  ADD s6, t4, zero
  LB t3, 51(sp)
  ADD t4, t3, zero
  SB t4, 171(sp)
  JAL zero, bb91
bb175:
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 200(sp)
  JAL zero, bb130
bb176:
  LW t3, 208(sp)
  ADD t4, t3, zero
  SW t4, 204(sp)
  JAL zero, bb132
bb177:
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 212(sp)
  JAL zero, bb134
bb178:
  LW t3, 224(sp)
  ADD t4, t3, zero
  SW t4, 220(sp)
  JAL zero, bb136
bb179:
  ADD t4, s3, zero
  SW t4, 228(sp)
  JAL zero, bb138
bb180:
  ADD s4, s6, zero
  JAL zero, bb140
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
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  LA s1, c
  SW s0, 0(s1)
  LA s0, ii
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get2
  ADD s1, s0, s2
  ADDI s0, zero, 32
  SW s0, 0(s1)
  LA s0, ii
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, get2
  ADD s1, s0, s2
  LA s0, c
  LW s2, 0(s0)
  SW s2, 0(s1)
  LA s0, ii
  LW s1, 0(s0)
  ADDIW s0, s1, 2
  LA s1, ii
  SW s0, 0(s1)
  LA s0, chat
  LW s1, 0(s0)
  XOR s0, s1, zero
  SLTIU s1, s0, 1
  BNE s1, zero, bb182
  JAL zero, bb183
bb182:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb183:
  ADDI a0, zero, 1
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
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, ints
  ADD s1, s0, s2
  LW s0, 0(s1)
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
  JAL zero, bb186
bb186:
  ADD s1, s3, zero
  ADD s4, s2, zero
  XORI s5, s1, 13
  SLTU s6, zero, s5
  BNE s6, zero, bb189
  JAL zero, bb190
bb187:
  ADDI s6, zero, 4
  MULW s7, s4, s6
  ADD s6, s0, s7
  SW s1, 0(s6)
  ADDIW s6, s4, 1
  CALL getch
  ADD s7, a0, zero
  ADD s2, s6, zero
  ADD s3, s7, zero
  JAL zero, bb186
bb188:
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
bb189:
  XORI s5, s1, 10
  SLTU s6, zero, s5
  ADD s5, s6, zero
  JAL zero, bb191
bb190:
  ADD s5, zero, zero
  JAL zero, bb191
bb191:
  ADD s6, s5, zero
  BNE s6, zero, bb187
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
  BNE s2, zero, bb193
  JAL zero, bb194
bb193:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XORI s0, s2, 1
  ADD s1, s0, zero
  JAL zero, bb195
bb194:
  ADD s1, zero, zero
  JAL zero, bb195
bb195:
  ADD s0, s1, zero
  BNE s0, zero, bb196
  JAL zero, bb197
bb196:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb197:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
