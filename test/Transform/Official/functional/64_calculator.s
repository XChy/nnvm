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
  LA s1, intt
  LW s3, 0(s1)
  ADDI s1, zero, 4
  MULW s4, s3, s1
  LA s1, ints
  ADD s3, s1, s4
  LW s1, 0(s3)
  ADDI s3, zero, 10
  MULW s4, s1, s3
  SW s4, 0(s2)
  LA s1, intt
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  LA s1, ints
  ADD s2, s1, s3
  LA s1, intt
  LW s3, 0(s1)
  ADDI s1, zero, 4
  MULW s4, s3, s1
  LA s1, ints
  ADD s3, s1, s4
  LW s1, 0(s3)
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
  ADDI sp, sp, -1408
  SD ra, 1304(sp)
  SD s3, 1312(sp)
  SD s2, 1320(sp)
  SD s1, 1328(sp)
  SD s4, 1336(sp)
  SD s10, 1344(sp)
  SD s11, 1352(sp)
  SD s7, 1360(sp)
  SD s9, 1368(sp)
  SD s8, 1376(sp)
  SD s6, 1384(sp)
  SD s0, 1392(sp)
  SD s5, 1400(sp)
  LA t2, intt
  SW zero, 0(t2)
  LA t2, chat
  SW zero, 0(t2)
  CALL getch
  ADD s11, a0, zero
  ADD s9, zero, zero
  ADD s8, s11, zero
  JAL zero, bb159
bb9:
  LB t3, 224(sp)
  ADD t4, t3, zero
  SB t4, 232(sp)
  LB t3, 216(sp)
  ADD t4, t3, zero
  SB t4, 240(sp)
  LB t3, 208(sp)
  ADD t4, t3, zero
  SB t4, 248(sp)
  LB t3, 200(sp)
  ADD t4, t3, zero
  SB t4, 256(sp)
  LB t3, 192(sp)
  ADD t4, t3, zero
  SB t4, 264(sp)
  LB t3, 184(sp)
  ADD t4, t3, zero
  SB t4, 272(sp)
  LB t3, 176(sp)
  ADD t4, t3, zero
  SB t4, 280(sp)
  LB t3, 384(sp)
  ADD t4, t3, zero
  SB t4, 288(sp)
  LB t3, 392(sp)
  ADD t4, t3, zero
  SB t4, 296(sp)
  LB t3, 400(sp)
  ADD t4, t3, zero
  SB t4, 304(sp)
  LB t3, 424(sp)
  ADD t4, t3, zero
  SB t4, 312(sp)
  LB t3, 680(sp)
  ADD t4, t3, zero
  SB t4, 320(sp)
  LB t3, 696(sp)
  ADD t4, t3, zero
  SB t4, 328(sp)
  LB t3, 712(sp)
  ADD t4, t3, zero
  SB t4, 336(sp)
  ADD t4, s11, zero
  SB t4, 344(sp)
  ADD t4, s9, zero
  SB t4, 352(sp)
  ADD t4, s8, zero
  SB t4, 360(sp)
  ADD t4, s7, zero
  SB t4, 368(sp)
  ADD t4, s4, zero
  SB t4, 376(sp)
  LA s10, i
  LW s6, 0(s10)
  LW t4, 64(sp)
  SLT s10, s6, t4
  BNE s10, zero, bb10
  JAL zero, bb105
bb10:
  LA s6, i
  LW s10, 0(s6)
  ADDI s6, zero, 4
  MULW s0, s10, s6
  LA s6, get
  ADD s10, s6, s0
  LW s0, 0(s10)
  SLTI s6, s0, 48
  XORI s10, s6, 1
  BNE s10, zero, bb165
  JAL zero, bb166
bb11:
  LW t4, 416(sp)
  ADD s10, t4, zero
  XORI s6, s10, 1
  SLTIU s10, s6, 1
  BNE s10, zero, bb12
  JAL zero, bb14
bb12:
  LA s6, ii
  LW s10, 0(s6)
  ADDI s6, zero, 4
  MULW s0, s10, s6
  LA s6, get2
  ADD s10, s6, s0
  LA s0, i
  LW s6, 0(s0)
  ADDI s0, zero, 4
  MULW s5, s6, s0
  LA s0, get
  ADD s6, s0, s5
  LW s0, 0(s6)
  SW s0, 0(s10)
  LA s0, ii
  LW s5, 0(s0)
  ADDIW s0, s5, 1
  LA s5, ii
  SW s0, 0(s5)
  LB t3, 376(sp)
  ADD t4, t3, zero
  SB t4, 576(sp)
  LB t3, 368(sp)
  ADD t4, t3, zero
  SB t4, 568(sp)
  LB t3, 360(sp)
  ADD t4, t3, zero
  SB t4, 560(sp)
  LB t3, 352(sp)
  ADD t4, t3, zero
  SB t4, 552(sp)
  LB t3, 344(sp)
  ADD t4, t3, zero
  SB t4, 432(sp)
  LB t3, 336(sp)
  ADD t4, t3, zero
  SB t4, 440(sp)
  LB t3, 328(sp)
  ADD t4, t3, zero
  SB t4, 448(sp)
  LB t3, 320(sp)
  ADD t4, t3, zero
  SB t4, 456(sp)
  LB t3, 312(sp)
  ADD t4, t3, zero
  SB t4, 464(sp)
  LB t3, 304(sp)
  ADD t4, t3, zero
  SB t4, 472(sp)
  LB t3, 296(sp)
  ADD t4, t3, zero
  SB t4, 480(sp)
  LB t3, 288(sp)
  ADD t4, t3, zero
  SB t4, 488(sp)
  LB t3, 280(sp)
  ADD t4, t3, zero
  SB t4, 496(sp)
  LB t3, 272(sp)
  ADD t4, t3, zero
  SB t4, 504(sp)
  LB t3, 264(sp)
  ADD t4, t3, zero
  SB t4, 512(sp)
  LB t3, 256(sp)
  ADD t4, t3, zero
  SB t4, 520(sp)
  LB t3, 248(sp)
  ADD t4, t3, zero
  SB t4, 528(sp)
  LB t3, 240(sp)
  ADD t4, t3, zero
  SB t4, 536(sp)
  LB t3, 232(sp)
  ADD t4, t3, zero
  SB t4, 544(sp)
  JAL zero, bb13
bb13:
  LB t3, 544(sp)
  ADD t4, t3, zero
  SB t4, 584(sp)
  LB t3, 536(sp)
  ADD t4, t3, zero
  SB t4, 592(sp)
  LB t3, 528(sp)
  ADD t4, t3, zero
  SB t4, 600(sp)
  LB t3, 520(sp)
  ADD t4, t3, zero
  SB t4, 608(sp)
  LB t3, 512(sp)
  ADD t4, t3, zero
  SB t4, 616(sp)
  LB t3, 504(sp)
  ADD t4, t3, zero
  SB t4, 624(sp)
  LB t3, 496(sp)
  ADD t4, t3, zero
  SB t4, 632(sp)
  LB t3, 488(sp)
  ADD t4, t3, zero
  SB t4, 640(sp)
  LB t3, 480(sp)
  ADD t4, t3, zero
  SB t4, 648(sp)
  LB t3, 472(sp)
  ADD t4, t3, zero
  SB t4, 656(sp)
  LB t3, 464(sp)
  ADD t4, t3, zero
  SB t4, 664(sp)
  LB t3, 456(sp)
  ADD t4, t3, zero
  SB t4, 672(sp)
  LB t3, 448(sp)
  ADD t4, t3, zero
  SB t4, 688(sp)
  LB t3, 440(sp)
  ADD t4, t3, zero
  SB t4, 704(sp)
  LB t4, 432(sp)
  ADD s5, t4, zero
  LB t4, 552(sp)
  ADD s0, t4, zero
  LB t4, 560(sp)
  ADD s1, t4, zero
  LB t4, 568(sp)
  ADD s10, t4, zero
  LB t4, 576(sp)
  ADD s2, t4, zero
  LA s6, i
  LW s3, 0(s6)
  ADDIW s6, s3, 1
  LA s3, i
  SW s6, 0(s3)
  ADD s4, s2, zero
  ADD s7, s10, zero
  ADD s8, s1, zero
  ADD s9, s0, zero
  ADD s11, s5, zero
  LB t3, 704(sp)
  ADD t4, t3, zero
  SB t4, 712(sp)
  LB t3, 688(sp)
  ADD t4, t3, zero
  SB t4, 696(sp)
  LB t3, 672(sp)
  ADD t4, t3, zero
  SB t4, 680(sp)
  LB t3, 664(sp)
  ADD t4, t3, zero
  SB t4, 424(sp)
  LB t3, 656(sp)
  ADD t4, t3, zero
  SB t4, 400(sp)
  LB t3, 648(sp)
  ADD t4, t3, zero
  SB t4, 392(sp)
  LB t3, 640(sp)
  ADD t4, t3, zero
  SB t4, 384(sp)
  LB t3, 632(sp)
  ADD t4, t3, zero
  SB t4, 176(sp)
  LB t3, 624(sp)
  ADD t4, t3, zero
  SB t4, 184(sp)
  LB t3, 616(sp)
  ADD t4, t3, zero
  SB t4, 192(sp)
  LB t3, 608(sp)
  ADD t4, t3, zero
  SB t4, 200(sp)
  LB t3, 600(sp)
  ADD t4, t3, zero
  SB t4, 208(sp)
  LB t3, 592(sp)
  ADD t4, t3, zero
  SB t4, 216(sp)
  LB t3, 584(sp)
  ADD t4, t3, zero
  SB t4, 224(sp)
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
  LB t3, 720(sp)
  ADD t4, t3, zero
  SB t4, 840(sp)
  LB t3, 728(sp)
  ADD t4, t3, zero
  SB t4, 832(sp)
  LB t3, 736(sp)
  ADD t4, t3, zero
  SB t4, 824(sp)
  LB t3, 744(sp)
  ADD t4, t3, zero
  SB t4, 816(sp)
  LB t3, 752(sp)
  ADD t4, t3, zero
  SB t4, 808(sp)
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
  LW t4, 800(sp)
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
  LB t3, 56(sp)
  ADD t4, t3, zero
  SB t4, 752(sp)
  LB t3, 80(sp)
  ADD t4, t3, zero
  SB t4, 744(sp)
  LB t3, 96(sp)
  ADD t4, t3, zero
  SB t4, 736(sp)
  LB t3, 24(sp)
  ADD t4, t3, zero
  SB t4, 728(sp)
  LB t3, 72(sp)
  ADD t4, t3, zero
  SB t4, 720(sp)
  JAL zero, bb23
bb28:
  ADDI t4, zero, 1
  SB t4, 760(sp)
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
  SB t4, 760(sp)
  JAL zero, bb30
bb30:
  LB t3, 760(sp)
  ADD t4, t3, zero
  SB t4, 56(sp)
  LB t4, 56(sp)
  BNE t4, zero, bb31
  JAL zero, bb32
bb31:
  ADDI t4, zero, 1
  SB t4, 768(sp)
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
  SB t4, 768(sp)
  JAL zero, bb33
bb33:
  LB t3, 768(sp)
  ADD t4, t3, zero
  SB t4, 72(sp)
  LB t4, 72(sp)
  BNE t4, zero, bb34
  JAL zero, bb35
bb34:
  ADDI t4, zero, 1
  SB t4, 776(sp)
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
  SB t4, 776(sp)
  JAL zero, bb36
bb36:
  LB t3, 776(sp)
  ADD t4, t3, zero
  SB t4, 80(sp)
  LB t4, 80(sp)
  BNE t4, zero, bb37
  JAL zero, bb38
bb37:
  ADDI t4, zero, 1
  SB t4, 784(sp)
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
  SB t4, 784(sp)
  JAL zero, bb39
bb39:
  LB t3, 784(sp)
  ADD t4, t3, zero
  SB t4, 96(sp)
  LB t4, 96(sp)
  BNE t4, zero, bb40
  JAL zero, bb41
bb40:
  ADDI t4, zero, 1
  SB t4, 792(sp)
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
  SB t4, 792(sp)
  JAL zero, bb42
bb42:
  LB t3, 792(sp)
  ADD t4, t3, zero
  SB t4, 24(sp)
  LB t4, 24(sp)
  BNE t4, zero, bb25
  JAL zero, bb27
bb43:
  LB t3, 848(sp)
  ADD t4, t3, zero
  SB t4, 968(sp)
  LB t3, 856(sp)
  ADD t4, t3, zero
  SB t4, 960(sp)
  LB t3, 864(sp)
  ADD t4, t3, zero
  SB t4, 952(sp)
  LB t3, 872(sp)
  ADD t4, t3, zero
  SB t4, 944(sp)
  LB t3, 880(sp)
  ADD t4, t3, zero
  SB t4, 936(sp)
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
  LW t4, 928(sp)
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
  LB t3, 136(sp)
  ADD t4, t3, zero
  SB t4, 880(sp)
  LB t3, 128(sp)
  ADD t4, t3, zero
  SB t4, 872(sp)
  LB t3, 120(sp)
  ADD t4, t3, zero
  SB t4, 864(sp)
  LB t3, 0(sp)
  ADD t4, t3, zero
  SB t4, 856(sp)
  LB t3, 112(sp)
  ADD t4, t3, zero
  SB t4, 848(sp)
  JAL zero, bb43
bb48:
  ADDI t4, zero, 1
  SB t4, 888(sp)
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
  SB t4, 888(sp)
  JAL zero, bb50
bb50:
  LB t3, 888(sp)
  ADD t4, t3, zero
  SB t4, 112(sp)
  LB t4, 112(sp)
  BNE t4, zero, bb51
  JAL zero, bb52
bb51:
  ADDI t4, zero, 1
  SB t4, 896(sp)
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
  SB t4, 896(sp)
  JAL zero, bb53
bb53:
  LB t3, 896(sp)
  ADD t4, t3, zero
  SB t4, 0(sp)
  LB t4, 0(sp)
  BNE t4, zero, bb54
  JAL zero, bb55
bb54:
  ADDI t4, zero, 1
  SB t4, 904(sp)
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
  SB t4, 904(sp)
  JAL zero, bb56
bb56:
  LB t3, 904(sp)
  ADD t4, t3, zero
  SB t4, 120(sp)
  LB t4, 120(sp)
  BNE t4, zero, bb57
  JAL zero, bb58
bb57:
  ADDI t4, zero, 1
  SB t4, 912(sp)
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
  SB t4, 912(sp)
  JAL zero, bb59
bb59:
  LB t3, 912(sp)
  ADD t4, t3, zero
  SB t4, 128(sp)
  LB t4, 128(sp)
  BNE t4, zero, bb60
  JAL zero, bb61
bb60:
  ADDI t4, zero, 1
  SB t4, 920(sp)
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
  SB t4, 920(sp)
  JAL zero, bb62
bb62:
  LB t3, 920(sp)
  ADD t4, t3, zero
  SB t4, 136(sp)
  LB t4, 136(sp)
  BNE t4, zero, bb45
  JAL zero, bb47
bb63:
  LB t3, 976(sp)
  ADD t4, t3, zero
  SB t4, 1048(sp)
  LB t3, 984(sp)
  ADD t4, t3, zero
  SB t4, 1040(sp)
  LB t3, 992(sp)
  ADD t4, t3, zero
  SB t4, 1032(sp)
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
  LW t4, 1024(sp)
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
  LB t3, 40(sp)
  ADD t4, t3, zero
  SB t4, 992(sp)
  LB t3, 32(sp)
  ADD t4, t3, zero
  SB t4, 984(sp)
  LB t3, 144(sp)
  ADD t4, t3, zero
  SB t4, 976(sp)
  JAL zero, bb63
bb68:
  ADDI t4, zero, 1
  SB t4, 1000(sp)
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
  SB t4, 1000(sp)
  JAL zero, bb70
bb70:
  LB t3, 1000(sp)
  ADD t4, t3, zero
  SB t4, 144(sp)
  LB t4, 144(sp)
  BNE t4, zero, bb71
  JAL zero, bb72
bb71:
  ADDI t4, zero, 1
  SB t4, 1008(sp)
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
  SB t4, 1008(sp)
  JAL zero, bb73
bb73:
  LB t3, 1008(sp)
  ADD t4, t3, zero
  SB t4, 32(sp)
  LB t4, 32(sp)
  BNE t4, zero, bb74
  JAL zero, bb75
bb74:
  ADDI t4, zero, 1
  SB t4, 1016(sp)
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
  SB t4, 1016(sp)
  JAL zero, bb76
bb76:
  LB t3, 1016(sp)
  ADD t4, t3, zero
  SB t4, 40(sp)
  LB t4, 40(sp)
  BNE t4, zero, bb65
  JAL zero, bb67
bb77:
  LB t3, 1056(sp)
  ADD t4, t3, zero
  SB t4, 1128(sp)
  LB t3, 1064(sp)
  ADD t4, t3, zero
  SB t4, 1120(sp)
  LB t3, 1072(sp)
  ADD t4, t3, zero
  SB t4, 1112(sp)
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
  LW t4, 1104(sp)
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
  LB t3, 48(sp)
  ADD t4, t3, zero
  SB t4, 1072(sp)
  LB t3, 16(sp)
  ADD t4, t3, zero
  SB t4, 1064(sp)
  LB t3, 152(sp)
  ADD t4, t3, zero
  SB t4, 1056(sp)
  JAL zero, bb77
bb82:
  ADDI t4, zero, 1
  SB t4, 1080(sp)
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
  SB t4, 1080(sp)
  JAL zero, bb84
bb84:
  LB t3, 1080(sp)
  ADD t4, t3, zero
  SB t4, 16(sp)
  LB t4, 16(sp)
  BNE t4, zero, bb85
  JAL zero, bb86
bb85:
  ADDI t4, zero, 1
  SB t4, 1088(sp)
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
  SB t4, 1088(sp)
  JAL zero, bb87
bb87:
  LB t3, 1088(sp)
  ADD t4, t3, zero
  SB t4, 152(sp)
  LB t4, 152(sp)
  BNE t4, zero, bb88
  JAL zero, bb89
bb88:
  ADDI t4, zero, 1
  SB t4, 1096(sp)
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
  SB t4, 1096(sp)
  JAL zero, bb90
bb90:
  LB t3, 1096(sp)
  ADD t4, t3, zero
  SB t4, 48(sp)
  LB t4, 48(sp)
  BNE t4, zero, bb79
  JAL zero, bb81
bb91:
  LB t4, 1136(sp)
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
  LB t3, 1112(sp)
  ADD t4, t3, zero
  SB t4, 576(sp)
  ADD t4, s9, zero
  SB t4, 568(sp)
  ADD t4, s0, zero
  SB t4, 560(sp)
  LB t3, 1120(sp)
  ADD t4, t3, zero
  SB t4, 552(sp)
  ADD t4, s11, zero
  SB t4, 432(sp)
  LB t3, 808(sp)
  ADD t4, t3, zero
  SB t4, 440(sp)
  LB t3, 1128(sp)
  ADD t4, t3, zero
  SB t4, 448(sp)
  LB t3, 1032(sp)
  ADD t4, t3, zero
  SB t4, 456(sp)
  LB t3, 1040(sp)
  ADD t4, t3, zero
  SB t4, 464(sp)
  LB t3, 1048(sp)
  ADD t4, t3, zero
  SB t4, 472(sp)
  LB t3, 936(sp)
  ADD t4, t3, zero
  SB t4, 480(sp)
  LB t3, 816(sp)
  ADD t4, t3, zero
  SB t4, 488(sp)
  LB t3, 944(sp)
  ADD t4, t3, zero
  SB t4, 496(sp)
  LB t3, 952(sp)
  ADD t4, t3, zero
  SB t4, 504(sp)
  LB t3, 960(sp)
  ADD t4, t3, zero
  SB t4, 512(sp)
  LB t3, 824(sp)
  ADD t4, t3, zero
  SB t4, 520(sp)
  LB t3, 968(sp)
  ADD t4, t3, zero
  SB t4, 528(sp)
  LB t3, 832(sp)
  ADD t4, t3, zero
  SB t4, 536(sp)
  LB t3, 840(sp)
  ADD t4, t3, zero
  SB t4, 544(sp)
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
  LB t4, 160(sp)
  ADD s3, t4, zero
  LB t4, 168(sp)
  ADD s6, t4, zero
  LB t3, 8(sp)
  ADD t4, t3, zero
  SB t4, 1136(sp)
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
  SB t4, 8(sp)
  LB t4, 8(sp)
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
  SB t4, 160(sp)
  LB t4, 160(sp)
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
  SB t4, 168(sp)
  LB t4, 168(sp)
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
  SW t4, 1160(sp)
  ADD t4, s1, zero
  SW t4, 1152(sp)
  ADD t4, s0, zero
  SW t4, 1144(sp)
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
  LD ra, 1304(sp)
  LD s3, 1312(sp)
  LD s2, 1320(sp)
  LD s1, 1328(sp)
  LD s4, 1336(sp)
  LD s10, 1344(sp)
  LD s11, 1352(sp)
  LD s7, 1360(sp)
  LD s9, 1368(sp)
  LD s8, 1376(sp)
  LD s6, 1384(sp)
  LD s0, 1392(sp)
  LD s5, 1400(sp)
  ADDI sp, sp, 1408
  JALR zero, 0(ra)
bb111:
  ADDI t4, zero, 1
  SB t4, 1168(sp)
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
  SB t4, 1168(sp)
  JAL zero, bb113
bb113:
  LB t4, 1168(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb114
  JAL zero, bb115
bb114:
  ADDI t4, zero, 1
  SB t4, 1176(sp)
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
  SB t4, 1176(sp)
  JAL zero, bb116
bb116:
  LB t4, 1176(sp)
  ADD s8, t4, zero
  BNE s8, zero, bb117
  JAL zero, bb118
bb117:
  ADDI t4, zero, 1
  SB t4, 1184(sp)
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
  SB t4, 1184(sp)
  JAL zero, bb119
bb119:
  LB t4, 1184(sp)
  ADD s9, t4, zero
  BNE s9, zero, bb120
  JAL zero, bb121
bb120:
  ADDI t4, zero, 1
  SB t4, 1192(sp)
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
  SB t4, 1192(sp)
  JAL zero, bb122
bb122:
  LB t4, 1192(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb123
  JAL zero, bb124
bb123:
  ADDI t4, zero, 1
  SB t4, 1200(sp)
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
  SB t4, 1200(sp)
  JAL zero, bb125
bb125:
  LB t4, 1200(sp)
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
  SW t4, 1216(sp)
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
  SW t4, 1208(sp)
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
  LW t4, 1288(sp)
  ADD s5, t4, zero
  LW t4, 1296(sp)
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
  LW t4, 1216(sp)
  LW t3, 1208(sp)
  ADDW s5, t4, t3
  ADD t4, s5, zero
  SW t4, 1224(sp)
  JAL zero, bb130
bb130:
  LW t3, 1224(sp)
  ADD t4, t3, zero
  SW t4, 1240(sp)
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
  LW t4, 1208(sp)
  LW t3, 1216(sp)
  SUBW s7, t4, t3
  ADD t4, s7, zero
  SW t4, 1232(sp)
  JAL zero, bb132
bb132:
  LW t3, 1232(sp)
  ADD t4, t3, zero
  SW t4, 1256(sp)
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
  LW t4, 1216(sp)
  LW t3, 1208(sp)
  MULW s9, t4, t3
  ADD t4, s9, zero
  SW t4, 1248(sp)
  JAL zero, bb134
bb134:
  LW t3, 1248(sp)
  ADD t4, t3, zero
  SW t4, 1272(sp)
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
  LW t4, 1208(sp)
  LW t3, 1216(sp)
  DIVW s3, t4, t3
  ADD t4, s3, zero
  SW t4, 1264(sp)
  JAL zero, bb136
bb136:
  LW t4, 1264(sp)
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
  LW t4, 1208(sp)
  LW t3, 1216(sp)
  REMW s6, t4, t3
  ADD t4, s6, zero
  SW t4, 1280(sp)
  JAL zero, bb138
bb138:
  LW t4, 1280(sp)
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
  LW t4, 1216(sp)
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
  LW t4, 1216(sp)
  ADD s7, t4, zero
  LW t3, 1208(sp)
  ADD t4, t3, zero
  SW t4, 1296(sp)
  ADD t4, s5, zero
  SW t4, 1288(sp)
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
  LW t4, 1144(sp)
  ADD s7, t4, zero
  LW t3, 1152(sp)
  ADD t4, t3, zero
  SW t4, 1296(sp)
  LW t3, 1160(sp)
  ADD t4, t3, zero
  SW t4, 1288(sp)
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
  LA s0, intt
  LW s3, 0(s0)
  ADDI s0, zero, 4
  MULW s4, s3, s0
  LA s0, ints
  ADD s3, s0, s4
  LW s0, 0(s3)
  ADDI s3, zero, 10
  MULW s4, s0, s3
  SW s4, 0(s1)
  LA s0, intt
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s1, s0
  LA s0, ints
  ADD s1, s0, s3
  LA s0, intt
  LW s3, 0(s0)
  ADDI s0, zero, 4
  MULW s4, s3, s0
  LA s0, ints
  ADD s3, s0, s4
  LW s0, 0(s3)
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
  LW t4, 1208(sp)
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
  SW t4, 800(sp)
  JAL zero, bb26
bb150:
  ADDI t4, zero, 1
  SW t4, 800(sp)
  JAL zero, bb26
bb151:
  ADD t4, zero, zero
  SW t4, 928(sp)
  JAL zero, bb46
bb152:
  ADDI t4, zero, 1
  SW t4, 928(sp)
  JAL zero, bb46
bb153:
  ADD t4, zero, zero
  SW t4, 1024(sp)
  JAL zero, bb66
bb154:
  ADDI t4, zero, 1
  SW t4, 1024(sp)
  JAL zero, bb66
bb155:
  ADD t4, zero, zero
  SW t4, 1104(sp)
  JAL zero, bb80
bb156:
  ADDI t4, zero, 1
  SW t4, 1104(sp)
  JAL zero, bb80
bb157:
  ADD s1, zero, zero
  JAL zero, bb94
bb158:
  ADDI s1, zero, 1
  JAL zero, bb94
bb159:
  ADD t4, s8, zero
  SW t4, 88(sp)
  ADD t4, s9, zero
  SW t4, 64(sp)
  LW t4, 88(sp)
  XORI s11, t4, 13
  SLTU s7, zero, s11
  BNE s7, zero, bb162
  JAL zero, bb163
bb160:
  ADDI s11, zero, 4
  LW t4, 64(sp)
  MULW s7, t4, s11
  LA s11, get
  ADD s4, s11, s7
  LW t4, 88(sp)
  SW t4, 0(s4)
  LW t4, 64(sp)
  ADDIW s4, t4, 1
  CALL getch
  ADD s7, a0, zero
  ADD s9, s4, zero
  ADD s8, s7, zero
  JAL zero, bb159
bb161:
  ADD s4, zero, zero
  ADD s7, zero, zero
  ADD s8, zero, zero
  ADD s9, zero, zero
  ADD s11, zero, zero
  ADD t4, zero, zero
  SB t4, 712(sp)
  ADD t4, zero, zero
  SB t4, 696(sp)
  ADD t4, zero, zero
  SB t4, 680(sp)
  ADD t4, zero, zero
  SB t4, 424(sp)
  ADD t4, zero, zero
  SB t4, 400(sp)
  ADD t4, zero, zero
  SB t4, 392(sp)
  ADD t4, zero, zero
  SB t4, 384(sp)
  ADD t4, zero, zero
  SB t4, 176(sp)
  ADD t4, zero, zero
  SB t4, 184(sp)
  ADD t4, zero, zero
  SB t4, 192(sp)
  ADD t4, zero, zero
  SB t4, 200(sp)
  ADD t4, zero, zero
  SB t4, 208(sp)
  ADD t4, zero, zero
  SB t4, 216(sp)
  ADD t4, zero, zero
  SB t4, 224(sp)
  JAL zero, bb9
bb162:
  LW t4, 88(sp)
  XORI s7, t4, 10
  SLTU s11, zero, s7
  ADD t4, s11, zero
  SB t4, 104(sp)
  JAL zero, bb164
bb163:
  ADD t4, zero, zero
  SB t4, 104(sp)
  JAL zero, bb164
bb164:
  LB t4, 104(sp)
  ADD s11, t4, zero
  BNE s11, zero, bb160
  JAL zero, bb161
bb165:
  ADDI s6, zero, 57
  SLT s10, s6, s0
  XORI s0, s10, 1
  ADD t4, s0, zero
  SB t4, 408(sp)
  JAL zero, bb167
bb166:
  ADD t4, zero, zero
  SB t4, 408(sp)
  JAL zero, bb167
bb167:
  LB t4, 408(sp)
  ADD s0, t4, zero
  BNE s0, zero, bb168
  JAL zero, bb169
bb168:
  ADDI t4, zero, 1
  SW t4, 416(sp)
  JAL zero, bb11
bb169:
  ADD t4, zero, zero
  SW t4, 416(sp)
  JAL zero, bb11
bb170:
  LB t3, 336(sp)
  ADD t4, t3, zero
  SB t4, 752(sp)
  LB t3, 288(sp)
  ADD t4, t3, zero
  SB t4, 744(sp)
  LB t3, 256(sp)
  ADD t4, t3, zero
  SB t4, 736(sp)
  LB t3, 240(sp)
  ADD t4, t3, zero
  SB t4, 728(sp)
  LB t3, 232(sp)
  ADD t4, t3, zero
  SB t4, 720(sp)
  JAL zero, bb23
bb171:
  LB t3, 296(sp)
  ADD t4, t3, zero
  SB t4, 880(sp)
  LB t3, 280(sp)
  ADD t4, t3, zero
  SB t4, 872(sp)
  LB t3, 272(sp)
  ADD t4, t3, zero
  SB t4, 864(sp)
  LB t3, 264(sp)
  ADD t4, t3, zero
  SB t4, 856(sp)
  LB t3, 248(sp)
  ADD t4, t3, zero
  SB t4, 848(sp)
  JAL zero, bb43
bb172:
  LB t3, 320(sp)
  ADD t4, t3, zero
  SB t4, 992(sp)
  LB t3, 312(sp)
  ADD t4, t3, zero
  SB t4, 984(sp)
  LB t3, 304(sp)
  ADD t4, t3, zero
  SB t4, 976(sp)
  JAL zero, bb63
bb173:
  LB t3, 376(sp)
  ADD t4, t3, zero
  SB t4, 1072(sp)
  LB t3, 352(sp)
  ADD t4, t3, zero
  SB t4, 1064(sp)
  LB t3, 328(sp)
  ADD t4, t3, zero
  SB t4, 1056(sp)
  JAL zero, bb77
bb174:
  LB t4, 368(sp)
  ADD s3, t4, zero
  LB t4, 360(sp)
  ADD s6, t4, zero
  LB t3, 344(sp)
  ADD t4, t3, zero
  SB t4, 1136(sp)
  JAL zero, bb91
bb175:
  LW t3, 1160(sp)
  ADD t4, t3, zero
  SW t4, 1224(sp)
  JAL zero, bb130
bb176:
  LW t3, 1240(sp)
  ADD t4, t3, zero
  SW t4, 1232(sp)
  JAL zero, bb132
bb177:
  LW t3, 1256(sp)
  ADD t4, t3, zero
  SW t4, 1248(sp)
  JAL zero, bb134
bb178:
  LW t3, 1272(sp)
  ADD t4, t3, zero
  SW t4, 1264(sp)
  JAL zero, bb136
bb179:
  ADD t4, s3, zero
  SW t4, 1280(sp)
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
