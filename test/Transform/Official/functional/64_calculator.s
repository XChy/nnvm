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
  ADDIW s0, s2, 1
  ADDI s1, zero, 4
  MULW s2, s0, s1
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
  ADDI sp, sp, -1424
  SD ra, 1312(sp)
  SD s4, 1320(sp)
  SD s7, 1328(sp)
  SD s11, 1336(sp)
  SD s2, 1344(sp)
  SD s10, 1352(sp)
  SD s6, 1360(sp)
  SD s1, 1368(sp)
  SD s5, 1376(sp)
  SD s0, 1384(sp)
  SD s9, 1392(sp)
  SD s8, 1400(sp)
  SD s3, 1408(sp)
  LA t0, intt
  SW zero, 0(t0)
  LA t0, chat
  SW zero, 0(t0)
  CALL getch
  ADD s10, a0, zero
  ADD s2, zero, zero
  ADD s6, s10, zero
  JAL zero, bb197
bb9:
  ADD t4, s1, zero
  SW t4, 120(sp)
  ADD s1, zero, zero
  ADD s5, zero, zero
  ADD s6, zero, zero
  ADD s10, zero, zero
  ADD s2, zero, zero
  ADD t4, zero, zero
  SB t4, 720(sp)
  ADD t4, zero, zero
  SB t4, 704(sp)
  ADD t4, zero, zero
  SB t4, 688(sp)
  ADD t4, zero, zero
  SB t4, 432(sp)
  ADD t4, zero, zero
  SB t4, 408(sp)
  ADD t4, zero, zero
  SB t4, 400(sp)
  ADD t4, zero, zero
  SB t4, 392(sp)
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
  ADD t4, zero, zero
  SB t4, 232(sp)
  JAL zero, bb10
bb10:
  LB t3, 232(sp)
  ADD t4, t3, zero
  SB t4, 240(sp)
  LB t3, 224(sp)
  ADD t4, t3, zero
  SB t4, 248(sp)
  LB t3, 216(sp)
  ADD t4, t3, zero
  SB t4, 256(sp)
  LB t3, 208(sp)
  ADD t4, t3, zero
  SB t4, 264(sp)
  LB t3, 200(sp)
  ADD t4, t3, zero
  SB t4, 272(sp)
  LB t3, 192(sp)
  ADD t4, t3, zero
  SB t4, 280(sp)
  LB t3, 184(sp)
  ADD t4, t3, zero
  SB t4, 288(sp)
  LB t3, 392(sp)
  ADD t4, t3, zero
  SB t4, 296(sp)
  LB t3, 400(sp)
  ADD t4, t3, zero
  SB t4, 304(sp)
  LB t3, 408(sp)
  ADD t4, t3, zero
  SB t4, 312(sp)
  LB t3, 432(sp)
  ADD t4, t3, zero
  SB t4, 320(sp)
  LB t3, 688(sp)
  ADD t4, t3, zero
  SB t4, 328(sp)
  LB t3, 704(sp)
  ADD t4, t3, zero
  SB t4, 336(sp)
  LB t3, 720(sp)
  ADD t4, t3, zero
  SB t4, 344(sp)
  ADD t4, s2, zero
  SB t4, 352(sp)
  ADD t4, s10, zero
  SB t4, 360(sp)
  ADD t4, s6, zero
  SB t4, 368(sp)
  ADD t4, s5, zero
  SB t4, 376(sp)
  ADD t4, s1, zero
  SB t4, 384(sp)
  LA s9, i
  LW s0, 0(s9)
  LW t4, 120(sp)
  SLT s9, s0, t4
  BNE s9, zero, bb11
  JAL zero, bb13
bb11:
  LA s0, i
  LW s9, 0(s0)
  ADDI s0, zero, 4
  MULW s8, s9, s0
  LA s0, get
  ADD s9, s0, s8
  LW s0, 0(s9)
  SLTI s8, s0, 48
  XORI s9, s8, 1
  BNE s9, zero, bb203
  JAL zero, bb204
bb12:
  LW t4, 424(sp)
  ADD s9, t4, zero
  XORI s8, s9, 1
  SLTIU s9, s8, 1
  BNE s9, zero, bb14
  JAL zero, bb16
bb13:
  JAL zero, bb132
bb14:
  LA s8, ii
  LW s9, 0(s8)
  ADDI s8, zero, 4
  MULW s0, s9, s8
  LA s8, get2
  ADD s9, s8, s0
  LA s0, i
  LW s8, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s8, s0
  LA s0, get
  ADD s8, s0, s3
  LW s0, 0(s8)
  SW s0, 0(s9)
  LA s0, ii
  LW s3, 0(s0)
  ADDIW s0, s3, 1
  LA s3, ii
  SW s0, 0(s3)
  LB t3, 384(sp)
  ADD t4, t3, zero
  SB t4, 584(sp)
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
  SB t4, 440(sp)
  LB t3, 344(sp)
  ADD t4, t3, zero
  SB t4, 448(sp)
  LB t3, 336(sp)
  ADD t4, t3, zero
  SB t4, 456(sp)
  LB t3, 328(sp)
  ADD t4, t3, zero
  SB t4, 464(sp)
  LB t3, 320(sp)
  ADD t4, t3, zero
  SB t4, 472(sp)
  LB t3, 312(sp)
  ADD t4, t3, zero
  SB t4, 480(sp)
  LB t3, 304(sp)
  ADD t4, t3, zero
  SB t4, 488(sp)
  LB t3, 296(sp)
  ADD t4, t3, zero
  SB t4, 496(sp)
  LB t3, 288(sp)
  ADD t4, t3, zero
  SB t4, 504(sp)
  LB t3, 280(sp)
  ADD t4, t3, zero
  SB t4, 512(sp)
  LB t3, 272(sp)
  ADD t4, t3, zero
  SB t4, 520(sp)
  LB t3, 264(sp)
  ADD t4, t3, zero
  SB t4, 528(sp)
  LB t3, 256(sp)
  ADD t4, t3, zero
  SB t4, 536(sp)
  LB t3, 248(sp)
  ADD t4, t3, zero
  SB t4, 544(sp)
  LB t3, 240(sp)
  ADD t4, t3, zero
  SB t4, 552(sp)
  JAL zero, bb15
bb15:
  LB t3, 552(sp)
  ADD t4, t3, zero
  SB t4, 592(sp)
  LB t3, 544(sp)
  ADD t4, t3, zero
  SB t4, 600(sp)
  LB t3, 536(sp)
  ADD t4, t3, zero
  SB t4, 608(sp)
  LB t3, 528(sp)
  ADD t4, t3, zero
  SB t4, 616(sp)
  LB t3, 520(sp)
  ADD t4, t3, zero
  SB t4, 624(sp)
  LB t3, 512(sp)
  ADD t4, t3, zero
  SB t4, 632(sp)
  LB t3, 504(sp)
  ADD t4, t3, zero
  SB t4, 640(sp)
  LB t3, 496(sp)
  ADD t4, t3, zero
  SB t4, 648(sp)
  LB t3, 488(sp)
  ADD t4, t3, zero
  SB t4, 656(sp)
  LB t3, 480(sp)
  ADD t4, t3, zero
  SB t4, 664(sp)
  LB t3, 472(sp)
  ADD t4, t3, zero
  SB t4, 672(sp)
  LB t3, 464(sp)
  ADD t4, t3, zero
  SB t4, 680(sp)
  LB t3, 456(sp)
  ADD t4, t3, zero
  SB t4, 696(sp)
  LB t3, 448(sp)
  ADD t4, t3, zero
  SB t4, 712(sp)
  LB t4, 440(sp)
  ADD s3, t4, zero
  LB t4, 560(sp)
  ADD s0, t4, zero
  LB t4, 568(sp)
  ADD s11, t4, zero
  LB t4, 576(sp)
  ADD s9, t4, zero
  LB t4, 584(sp)
  ADD s7, t4, zero
  LA s8, i
  LW s4, 0(s8)
  ADDIW s8, s4, 1
  LA s4, i
  SW s8, 0(s4)
  ADD s1, s7, zero
  ADD s5, s9, zero
  ADD s6, s11, zero
  ADD s10, s0, zero
  ADD s2, s3, zero
  LB t3, 712(sp)
  ADD t4, t3, zero
  SB t4, 720(sp)
  LB t3, 696(sp)
  ADD t4, t3, zero
  SB t4, 704(sp)
  LB t3, 680(sp)
  ADD t4, t3, zero
  SB t4, 688(sp)
  LB t3, 672(sp)
  ADD t4, t3, zero
  SB t4, 432(sp)
  LB t3, 664(sp)
  ADD t4, t3, zero
  SB t4, 408(sp)
  LB t3, 656(sp)
  ADD t4, t3, zero
  SB t4, 400(sp)
  LB t3, 648(sp)
  ADD t4, t3, zero
  SB t4, 392(sp)
  LB t3, 640(sp)
  ADD t4, t3, zero
  SB t4, 184(sp)
  LB t3, 632(sp)
  ADD t4, t3, zero
  SB t4, 192(sp)
  LB t3, 624(sp)
  ADD t4, t3, zero
  SB t4, 200(sp)
  LB t3, 616(sp)
  ADD t4, t3, zero
  SB t4, 208(sp)
  LB t3, 608(sp)
  ADD t4, t3, zero
  SB t4, 216(sp)
  LB t3, 600(sp)
  ADD t4, t3, zero
  SB t4, 224(sp)
  LB t3, 592(sp)
  ADD t4, t3, zero
  SB t4, 232(sp)
  JAL zero, bb10
bb16:
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 40
  SLTIU s0, s1, 1
  BNE s0, zero, bb17
  JAL zero, bb19
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
  ADDI s0, zero, 40
  SW s0, 0(s1)
  JAL zero, bb18
bb18:
  JAL zero, bb19
bb19:
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 94
  SLTIU s0, s1, 1
  BNE s0, zero, bb20
  JAL zero, bb22
bb20:
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
  JAL zero, bb21
bb21:
  JAL zero, bb22
bb22:
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 41
  SLTIU s0, s1, 1
  BNE s0, zero, bb23
  JAL zero, bb25
bb23:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 1
  SUBW s2, s1, s0
  LA s0, chat
  SW s2, 0(s0)
  ADDIW s0, s2, 1
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD s1, s0, zero
  JAL zero, bb24
bb24:
  ADD s0, s1, zero
  LA s1, c
  SW s0, 0(s1)
  JAL zero, bb26
bb25:
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 43
  SLTIU s0, s1, 1
  BNE s0, zero, bb30
  JAL zero, bb208
bb26:
  LA s0, c
  LW s1, 0(s0)
  XORI s0, s1, 40
  SLTU s1, zero, s0
  BNE s1, zero, bb27
  JAL zero, bb29
bb27:
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
  ADDIW s0, s2, 1
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD s1, s0, zero
  JAL zero, bb28
bb28:
  ADD s0, s1, zero
  LA s1, c
  SW s0, 0(s1)
  JAL zero, bb26
bb29:
  JAL zero, bb25
bb30:
  JAL zero, bb32
bb31:
  LB t3, 728(sp)
  ADD t4, t3, zero
  SB t4, 848(sp)
  LB t3, 736(sp)
  ADD t4, t3, zero
  SB t4, 840(sp)
  LB t3, 744(sp)
  ADD t4, t3, zero
  SB t4, 832(sp)
  LB t3, 752(sp)
  ADD t4, t3, zero
  SB t4, 824(sp)
  LB t3, 760(sp)
  ADD t4, t3, zero
  SB t4, 816(sp)
  LA s6, i
  LW s0, 0(s6)
  ADDI s6, zero, 4
  MULW s1, s0, s6
  LA s0, get
  ADD s6, s0, s1
  LW s0, 0(s6)
  XORI s1, s0, 45
  SLTIU s0, s1, 1
  BNE s0, zero, bb54
  JAL zero, bb209
bb32:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 43
  SLTIU s0, s1, 1
  BNE s0, zero, bb37
  JAL zero, bb38
bb33:
  LA s5, chat
  LW s6, 0(s5)
  ADDI s5, zero, 1
  SUBW s7, s6, s5
  LA s5, chat
  SW s7, 0(s5)
  ADDIW s5, s7, 1
  ADDI s6, zero, 4
  MULW s7, s5, s6
  LA s5, chas
  ADD s6, s5, s7
  LW s5, 0(s6)
  ADD s6, s5, zero
  JAL zero, bb182
bb34:
  LW t4, 808(sp)
  ADD s6, t4, zero
  XOR s7, s6, zero
  SLTIU s6, s7, 1
  BNE s6, zero, bb52
  JAL zero, bb53
bb35:
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
  JAL zero, bb36
bb36:
  LB t3, 56(sp)
  ADD t4, t3, zero
  SB t4, 760(sp)
  LB t3, 72(sp)
  ADD t4, t3, zero
  SB t4, 752(sp)
  LB t3, 96(sp)
  ADD t4, t3, zero
  SB t4, 744(sp)
  LB t3, 112(sp)
  ADD t4, t3, zero
  SB t4, 736(sp)
  LB t3, 64(sp)
  ADD t4, t3, zero
  SB t4, 728(sp)
  JAL zero, bb31
bb37:
  ADDI t4, zero, 1
  SB t4, 768(sp)
  JAL zero, bb39
bb38:
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
  SB t4, 768(sp)
  JAL zero, bb39
bb39:
  LB t3, 768(sp)
  ADD t4, t3, zero
  SB t4, 56(sp)
  LB t4, 56(sp)
  BNE t4, zero, bb40
  JAL zero, bb41
bb40:
  ADDI t4, zero, 1
  SB t4, 776(sp)
  JAL zero, bb42
bb41:
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
  SB t4, 776(sp)
  JAL zero, bb42
bb42:
  LB t3, 776(sp)
  ADD t4, t3, zero
  SB t4, 64(sp)
  LB t4, 64(sp)
  BNE t4, zero, bb43
  JAL zero, bb44
bb43:
  ADDI t4, zero, 1
  SB t4, 784(sp)
  JAL zero, bb45
bb44:
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
  SB t4, 784(sp)
  JAL zero, bb45
bb45:
  LB t3, 784(sp)
  ADD t4, t3, zero
  SB t4, 72(sp)
  LB t4, 72(sp)
  BNE t4, zero, bb46
  JAL zero, bb47
bb46:
  ADDI t4, zero, 1
  SB t4, 792(sp)
  JAL zero, bb48
bb47:
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
  SB t4, 792(sp)
  JAL zero, bb48
bb48:
  LB t3, 792(sp)
  ADD t4, t3, zero
  SB t4, 96(sp)
  LB t4, 96(sp)
  BNE t4, zero, bb49
  JAL zero, bb50
bb49:
  ADDI t4, zero, 1
  SB t4, 800(sp)
  JAL zero, bb51
bb50:
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
  SB t4, 800(sp)
  JAL zero, bb51
bb51:
  LB t3, 800(sp)
  ADD t4, t3, zero
  SB t4, 112(sp)
  LB t4, 112(sp)
  BNE t4, zero, bb33
  JAL zero, bb35
bb52:
  JAL zero, bb35
bb53:
  JAL zero, bb32
bb54:
  JAL zero, bb56
bb55:
  LB t3, 856(sp)
  ADD t4, t3, zero
  SB t4, 976(sp)
  LB t3, 864(sp)
  ADD t4, t3, zero
  SB t4, 968(sp)
  LB t3, 872(sp)
  ADD t4, t3, zero
  SB t4, 960(sp)
  LB t3, 880(sp)
  ADD t4, t3, zero
  SB t4, 952(sp)
  LB t3, 888(sp)
  ADD t4, t3, zero
  SB t4, 944(sp)
  LA s5, i
  LW s0, 0(s5)
  ADDI s5, zero, 4
  MULW s1, s0, s5
  LA s0, get
  ADD s5, s0, s1
  LW s0, 0(s5)
  XORI s1, s0, 42
  SLTIU s0, s1, 1
  BNE s0, zero, bb78
  JAL zero, bb210
bb56:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s6, s1, s0
  LA s0, chas
  ADD s1, s0, s6
  LW s0, 0(s1)
  XORI s1, s0, 43
  SLTIU s0, s1, 1
  BNE s0, zero, bb61
  JAL zero, bb62
bb57:
  LA s4, chat
  LW s5, 0(s4)
  ADDI s4, zero, 1
  SUBW s7, s5, s4
  LA s4, chat
  SW s7, 0(s4)
  ADDIW s4, s7, 1
  ADDI s5, zero, 4
  MULW s7, s4, s5
  LA s4, chas
  ADD s5, s4, s7
  LW s4, 0(s5)
  ADD s5, s4, zero
  JAL zero, bb185
bb58:
  LW t4, 936(sp)
  ADD s5, t4, zero
  XOR s7, s5, zero
  SLTIU s5, s7, 1
  BNE s5, zero, bb76
  JAL zero, bb77
bb59:
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
  JAL zero, bb60
bb60:
  LB t3, 152(sp)
  ADD t4, t3, zero
  SB t4, 888(sp)
  LB t3, 144(sp)
  ADD t4, t3, zero
  SB t4, 880(sp)
  LB t3, 40(sp)
  ADD t4, t3, zero
  SB t4, 872(sp)
  LB t3, 136(sp)
  ADD t4, t3, zero
  SB t4, 864(sp)
  LB t3, 128(sp)
  ADD t4, t3, zero
  SB t4, 856(sp)
  JAL zero, bb55
bb61:
  ADDI t4, zero, 1
  SB t4, 896(sp)
  JAL zero, bb63
bb62:
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
  SB t4, 896(sp)
  JAL zero, bb63
bb63:
  LB t3, 896(sp)
  ADD t4, t3, zero
  SB t4, 128(sp)
  LB t4, 128(sp)
  BNE t4, zero, bb64
  JAL zero, bb65
bb64:
  ADDI t4, zero, 1
  SB t4, 904(sp)
  JAL zero, bb66
bb65:
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
  SB t4, 904(sp)
  JAL zero, bb66
bb66:
  LB t3, 904(sp)
  ADD t4, t3, zero
  SB t4, 136(sp)
  LB t4, 136(sp)
  BNE t4, zero, bb67
  JAL zero, bb68
bb67:
  ADDI t4, zero, 1
  SB t4, 912(sp)
  JAL zero, bb69
bb68:
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
  SB t4, 912(sp)
  JAL zero, bb69
bb69:
  LB t3, 912(sp)
  ADD t4, t3, zero
  SB t4, 40(sp)
  LB t4, 40(sp)
  BNE t4, zero, bb70
  JAL zero, bb71
bb70:
  ADDI t4, zero, 1
  SB t4, 920(sp)
  JAL zero, bb72
bb71:
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
  SB t4, 920(sp)
  JAL zero, bb72
bb72:
  LB t3, 920(sp)
  ADD t4, t3, zero
  SB t4, 144(sp)
  LB t4, 144(sp)
  BNE t4, zero, bb73
  JAL zero, bb74
bb73:
  ADDI t4, zero, 1
  SB t4, 928(sp)
  JAL zero, bb75
bb74:
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
  SB t4, 928(sp)
  JAL zero, bb75
bb75:
  LB t3, 928(sp)
  ADD t4, t3, zero
  SB t4, 152(sp)
  LB t4, 152(sp)
  BNE t4, zero, bb57
  JAL zero, bb59
bb76:
  JAL zero, bb59
bb77:
  JAL zero, bb56
bb78:
  JAL zero, bb80
bb79:
  LB t3, 984(sp)
  ADD t4, t3, zero
  SB t4, 1056(sp)
  LB t3, 992(sp)
  ADD t4, t3, zero
  SB t4, 1048(sp)
  LB t3, 1000(sp)
  ADD t4, t3, zero
  SB t4, 1040(sp)
  LA s10, i
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s6, s11, s10
  LA s10, get
  ADD s11, s10, s6
  LW s6, 0(s11)
  XORI s10, s6, 47
  SLTIU s6, s10, 1
  BNE s6, zero, bb96
  JAL zero, bb211
bb80:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s5, s1, s0
  LA s0, chas
  ADD s1, s0, s5
  LW s0, 0(s1)
  XORI s1, s0, 42
  SLTIU s0, s1, 1
  BNE s0, zero, bb85
  JAL zero, bb86
bb81:
  LA s6, chat
  LW s2, 0(s6)
  ADDI s6, zero, 1
  SUBW s3, s2, s6
  LA s2, chat
  SW s3, 0(s2)
  ADDIW s2, s3, 1
  ADDI s3, zero, 4
  MULW s6, s2, s3
  LA s2, chas
  ADD s3, s2, s6
  LW s2, 0(s3)
  ADD s3, s2, zero
  JAL zero, bb188
bb82:
  LW t4, 1032(sp)
  ADD s3, t4, zero
  XOR s6, s3, zero
  SLTIU s3, s6, 1
  BNE s3, zero, bb94
  JAL zero, bb95
bb83:
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
  JAL zero, bb84
bb84:
  LB t3, 168(sp)
  ADD t4, t3, zero
  SB t4, 1000(sp)
  LB t3, 24(sp)
  ADD t4, t3, zero
  SB t4, 992(sp)
  LB t3, 160(sp)
  ADD t4, t3, zero
  SB t4, 984(sp)
  JAL zero, bb79
bb85:
  ADDI t4, zero, 1
  SB t4, 1008(sp)
  JAL zero, bb87
bb86:
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
  SB t4, 1008(sp)
  JAL zero, bb87
bb87:
  LB t3, 1008(sp)
  ADD t4, t3, zero
  SB t4, 160(sp)
  LB t4, 160(sp)
  BNE t4, zero, bb88
  JAL zero, bb89
bb88:
  ADDI t4, zero, 1
  SB t4, 1016(sp)
  JAL zero, bb90
bb89:
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
  SB t4, 1016(sp)
  JAL zero, bb90
bb90:
  LB t3, 1016(sp)
  ADD t4, t3, zero
  SB t4, 24(sp)
  LB t4, 24(sp)
  BNE t4, zero, bb91
  JAL zero, bb92
bb91:
  ADDI t4, zero, 1
  SB t4, 1024(sp)
  JAL zero, bb93
bb92:
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
  SB t4, 1024(sp)
  JAL zero, bb93
bb93:
  LB t3, 1024(sp)
  ADD t4, t3, zero
  SB t4, 168(sp)
  LB t4, 168(sp)
  BNE t4, zero, bb81
  JAL zero, bb83
bb94:
  JAL zero, bb83
bb95:
  JAL zero, bb80
bb96:
  JAL zero, bb98
bb97:
  LB t3, 1064(sp)
  ADD t4, t3, zero
  SB t4, 1136(sp)
  LB t3, 1072(sp)
  ADD t4, t3, zero
  SB t4, 1128(sp)
  LB t3, 1080(sp)
  ADD t4, t3, zero
  SB t4, 1120(sp)
  LA s8, i
  LW s7, 0(s8)
  ADDI s8, zero, 4
  MULW s4, s7, s8
  LA s7, get
  ADD s8, s7, s4
  LW s4, 0(s8)
  XORI s7, s4, 37
  SLTIU s4, s7, 1
  BNE s4, zero, bb114
  JAL zero, bb212
bb98:
  LA s6, chat
  LW s10, 0(s6)
  ADDI s6, zero, 4
  MULW s11, s10, s6
  LA s6, chas
  ADD s10, s6, s11
  LW s6, 0(s10)
  XORI s10, s6, 42
  SLTIU s6, s10, 1
  BNE s6, zero, bb103
  JAL zero, bb104
bb99:
  LA s4, chat
  LW s3, 0(s4)
  ADDI s4, zero, 1
  SUBW s0, s3, s4
  LA s3, chat
  SW s0, 0(s3)
  ADDIW s3, s0, 1
  ADDI s0, zero, 4
  MULW s4, s3, s0
  LA s0, chas
  ADD s3, s0, s4
  LW s0, 0(s3)
  ADD s3, s0, zero
  JAL zero, bb191
bb100:
  LW t4, 1112(sp)
  ADD s3, t4, zero
  XOR s4, s3, zero
  SLTIU s3, s4, 1
  BNE s3, zero, bb112
  JAL zero, bb113
bb101:
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
  JAL zero, bb102
bb102:
  LB t3, 176(sp)
  ADD t4, t3, zero
  SB t4, 1080(sp)
  LB t3, 32(sp)
  ADD t4, t3, zero
  SB t4, 1072(sp)
  LB t3, 8(sp)
  ADD t4, t3, zero
  SB t4, 1064(sp)
  JAL zero, bb97
bb103:
  ADDI t4, zero, 1
  SB t4, 1088(sp)
  JAL zero, bb105
bb104:
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
  SB t4, 1088(sp)
  JAL zero, bb105
bb105:
  LB t3, 1088(sp)
  ADD t4, t3, zero
  SB t4, 32(sp)
  LB t4, 32(sp)
  BNE t4, zero, bb106
  JAL zero, bb107
bb106:
  ADDI t4, zero, 1
  SB t4, 1096(sp)
  JAL zero, bb108
bb107:
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
  SB t4, 1096(sp)
  JAL zero, bb108
bb108:
  LB t3, 1096(sp)
  ADD t4, t3, zero
  SB t4, 8(sp)
  LB t4, 8(sp)
  BNE t4, zero, bb109
  JAL zero, bb110
bb109:
  ADDI t4, zero, 1
  SB t4, 1104(sp)
  JAL zero, bb111
bb110:
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
  SB t4, 1104(sp)
  JAL zero, bb111
bb111:
  LB t3, 1104(sp)
  ADD t4, t3, zero
  SB t4, 176(sp)
  LB t4, 176(sp)
  BNE t4, zero, bb99
  JAL zero, bb101
bb112:
  JAL zero, bb101
bb113:
  JAL zero, bb98
bb114:
  JAL zero, bb116
bb115:
  LB t4, 1144(sp)
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
  LB t3, 1120(sp)
  ADD t4, t3, zero
  SB t4, 584(sp)
  ADD t4, s9, zero
  SB t4, 576(sp)
  ADD t4, s0, zero
  SB t4, 568(sp)
  LB t3, 1128(sp)
  ADD t4, t3, zero
  SB t4, 560(sp)
  ADD t4, s11, zero
  SB t4, 440(sp)
  LB t3, 816(sp)
  ADD t4, t3, zero
  SB t4, 448(sp)
  LB t3, 1136(sp)
  ADD t4, t3, zero
  SB t4, 456(sp)
  LB t3, 1040(sp)
  ADD t4, t3, zero
  SB t4, 464(sp)
  LB t3, 1048(sp)
  ADD t4, t3, zero
  SB t4, 472(sp)
  LB t3, 1056(sp)
  ADD t4, t3, zero
  SB t4, 480(sp)
  LB t3, 944(sp)
  ADD t4, t3, zero
  SB t4, 488(sp)
  LB t3, 824(sp)
  ADD t4, t3, zero
  SB t4, 496(sp)
  LB t3, 952(sp)
  ADD t4, t3, zero
  SB t4, 504(sp)
  LB t3, 960(sp)
  ADD t4, t3, zero
  SB t4, 512(sp)
  LB t3, 968(sp)
  ADD t4, t3, zero
  SB t4, 520(sp)
  LB t3, 832(sp)
  ADD t4, t3, zero
  SB t4, 528(sp)
  LB t3, 976(sp)
  ADD t4, t3, zero
  SB t4, 536(sp)
  LB t3, 840(sp)
  ADD t4, t3, zero
  SB t4, 544(sp)
  LB t3, 848(sp)
  ADD t4, t3, zero
  SB t4, 552(sp)
  JAL zero, bb15
bb116:
  LA s4, chat
  LW s7, 0(s4)
  ADDI s4, zero, 4
  MULW s8, s7, s4
  LA s4, chas
  ADD s7, s4, s8
  LW s4, 0(s7)
  XORI s7, s4, 42
  SLTIU s4, s7, 1
  BNE s4, zero, bb121
  JAL zero, bb122
bb117:
  LA s3, chat
  LW s1, 0(s3)
  ADDI s3, zero, 1
  SUBW s6, s1, s3
  LA s1, chat
  SW s6, 0(s1)
  ADDIW s1, s6, 1
  ADDI s3, zero, 4
  MULW s6, s1, s3
  LA s1, chas
  ADD s3, s1, s6
  LW s1, 0(s3)
  ADD s3, s1, zero
  JAL zero, bb194
bb118:
  ADD s3, s1, zero
  XOR s6, s3, zero
  SLTIU s3, s6, 1
  BNE s3, zero, bb130
  JAL zero, bb131
bb119:
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
  JAL zero, bb120
bb120:
  LB t4, 48(sp)
  ADD s3, t4, zero
  LB t4, 16(sp)
  ADD s6, t4, zero
  LB t3, 0(sp)
  ADD t4, t3, zero
  SB t4, 1144(sp)
  JAL zero, bb115
bb121:
  ADDI s4, zero, 1
  JAL zero, bb123
bb122:
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
  JAL zero, bb123
bb123:
  ADD t4, s4, zero
  SB t4, 0(sp)
  LB t4, 0(sp)
  BNE t4, zero, bb124
  JAL zero, bb125
bb124:
  ADDI s7, zero, 1
  JAL zero, bb126
bb125:
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
  JAL zero, bb126
bb126:
  ADD t4, s7, zero
  SB t4, 48(sp)
  LB t4, 48(sp)
  BNE t4, zero, bb127
  JAL zero, bb128
bb127:
  ADDI s8, zero, 1
  JAL zero, bb129
bb128:
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
  JAL zero, bb129
bb129:
  ADD t4, s8, zero
  SB t4, 16(sp)
  LB t4, 16(sp)
  BNE t4, zero, bb117
  JAL zero, bb119
bb130:
  JAL zero, bb119
bb131:
  JAL zero, bb116
bb132:
  LA s0, chat
  LW s1, 0(s0)
  SLT s0, zero, s1
  BNE s0, zero, bb133
  JAL zero, bb135
bb133:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 1
  SUBW s2, s1, s0
  LA s0, chat
  SW s2, 0(s0)
  ADDIW s0, s2, 1
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD s1, s0, zero
  JAL zero, bb134
bb134:
  ADD s0, s1, zero
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
  JAL zero, bb132
bb135:
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
  JAL zero, bb136
bb136:
  ADD t4, s2, zero
  SW t4, 1168(sp)
  ADD t4, s1, zero
  SW t4, 1160(sp)
  ADD t4, s0, zero
  SW t4, 1152(sp)
  LA s6, i
  LW s7, 0(s6)
  ADDI s6, zero, 4
  MULW s8, s7, s6
  LA s6, get2
  ADD s7, s6, s8
  LW s6, 0(s7)
  XORI s7, s6, 64
  SLTU s6, zero, s7
  BNE s6, zero, bb137
  JAL zero, bb138
bb137:
  LA s6, i
  LW s7, 0(s6)
  ADDI s6, zero, 4
  MULW s8, s7, s6
  LA s6, get2
  ADD s7, s6, s8
  LW s6, 0(s7)
  XORI s7, s6, 43
  SLTIU s6, s7, 1
  BNE s6, zero, bb139
  JAL zero, bb140
bb138:
  LA s0, ints
  ADDI s1, s0, 4
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 1312(sp)
  LD s4, 1320(sp)
  LD s7, 1328(sp)
  LD s11, 1336(sp)
  LD s2, 1344(sp)
  LD s10, 1352(sp)
  LD s6, 1360(sp)
  LD s1, 1368(sp)
  LD s5, 1376(sp)
  LD s0, 1384(sp)
  LD s9, 1392(sp)
  LD s8, 1400(sp)
  LD s3, 1408(sp)
  ADDI sp, sp, 1424
  JALR zero, 0(ra)
bb139:
  ADDI t4, zero, 1
  SB t4, 1176(sp)
  JAL zero, bb141
bb140:
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
  SB t4, 1176(sp)
  JAL zero, bb141
bb141:
  LB t4, 1176(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb142
  JAL zero, bb143
bb142:
  ADDI t4, zero, 1
  SB t4, 1184(sp)
  JAL zero, bb144
bb143:
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
  SB t4, 1184(sp)
  JAL zero, bb144
bb144:
  LB t4, 1184(sp)
  ADD s8, t4, zero
  BNE s8, zero, bb145
  JAL zero, bb146
bb145:
  ADDI t4, zero, 1
  SB t4, 1192(sp)
  JAL zero, bb147
bb146:
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
  SB t4, 1192(sp)
  JAL zero, bb147
bb147:
  LB t4, 1192(sp)
  ADD s9, t4, zero
  BNE s9, zero, bb148
  JAL zero, bb149
bb148:
  ADDI t4, zero, 1
  SB t4, 1200(sp)
  JAL zero, bb150
bb149:
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
  SB t4, 1200(sp)
  JAL zero, bb150
bb150:
  LB t4, 1200(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb151
  JAL zero, bb152
bb151:
  ADDI t4, zero, 1
  SB t4, 1208(sp)
  JAL zero, bb153
bb152:
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
  SB t4, 1208(sp)
  JAL zero, bb153
bb153:
  LB t4, 1208(sp)
  ADD s11, t4, zero
  BNE s11, zero, bb154
  JAL zero, bb158
bb154:
  LA s11, intt
  LW s5, 0(s11)
  ADDI s11, zero, 1
  SUBW s4, s5, s11
  LA s5, intt
  SW s4, 0(s5)
  ADDIW s5, s4, 1
  ADDI s4, zero, 4
  MULW s11, s5, s4
  LA s4, ints
  ADD s5, s4, s11
  LW s4, 0(s5)
  ADD s5, s4, zero
  JAL zero, bb155
bb155:
  ADD t4, s5, zero
  SW t4, 1224(sp)
  LA s5, intt
  LW s11, 0(s5)
  ADDI s5, zero, 1
  SUBW s3, s11, s5
  LA s5, intt
  SW s3, 0(s5)
  ADDIW s5, s3, 1
  ADDI s3, zero, 4
  MULW s11, s5, s3
  LA s3, ints
  ADD s5, s3, s11
  LW s3, 0(s5)
  ADD s5, s3, zero
  JAL zero, bb156
bb156:
  ADD t4, s5, zero
  SW t4, 1216(sp)
  LA s5, i
  LW s11, 0(s5)
  ADDI s5, zero, 4
  MULW s6, s11, s5
  LA s5, get2
  ADD s11, s5, s6
  LW s5, 0(s11)
  XORI s6, s5, 43
  SLTIU s5, s6, 1
  BNE s5, zero, bb159
  JAL zero, bb213
bb157:
  LW t4, 1296(sp)
  ADD s5, t4, zero
  LW t4, 1304(sp)
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
  JAL zero, bb136
bb158:
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get2
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 32
  SLTU s0, zero, s1
  BNE s0, zero, bb173
  JAL zero, bb174
bb159:
  LW t4, 1224(sp)
  LW t3, 1216(sp)
  ADDW s5, t4, t3
  ADD t4, s5, zero
  SW t4, 1232(sp)
  JAL zero, bb160
bb160:
  LW t3, 1232(sp)
  ADD t4, t3, zero
  SW t4, 1248(sp)
  LA s11, i
  LW s7, 0(s11)
  ADDI s11, zero, 4
  MULW s8, s7, s11
  LA s7, get2
  ADD s11, s7, s8
  LW s7, 0(s11)
  XORI s8, s7, 45
  SLTIU s7, s8, 1
  BNE s7, zero, bb161
  JAL zero, bb214
bb161:
  LW t4, 1216(sp)
  LW t3, 1224(sp)
  SUBW s7, t4, t3
  ADD t4, s7, zero
  SW t4, 1240(sp)
  JAL zero, bb162
bb162:
  LW t3, 1240(sp)
  ADD t4, t3, zero
  SW t4, 1264(sp)
  LA s11, i
  LW s9, 0(s11)
  ADDI s11, zero, 4
  MULW s10, s9, s11
  LA s9, get2
  ADD s11, s9, s10
  LW s9, 0(s11)
  XORI s10, s9, 42
  SLTIU s9, s10, 1
  BNE s9, zero, bb163
  JAL zero, bb215
bb163:
  LW t4, 1224(sp)
  LW t3, 1216(sp)
  MULW s9, t4, t3
  ADD t4, s9, zero
  SW t4, 1256(sp)
  JAL zero, bb164
bb164:
  LW t3, 1256(sp)
  ADD t4, t3, zero
  SW t4, 1280(sp)
  LA s11, i
  LW s3, 0(s11)
  ADDI s11, zero, 4
  MULW s4, s3, s11
  LA s3, get2
  ADD s11, s3, s4
  LW s3, 0(s11)
  XORI s4, s3, 47
  SLTIU s3, s4, 1
  BNE s3, zero, bb165
  JAL zero, bb216
bb165:
  LW t4, 1216(sp)
  LW t3, 1224(sp)
  DIVW s3, t4, t3
  ADD t4, s3, zero
  SW t4, 1272(sp)
  JAL zero, bb166
bb166:
  LW t4, 1272(sp)
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
  BNE s6, zero, bb167
  JAL zero, bb217
bb167:
  LW t4, 1216(sp)
  LW t3, 1224(sp)
  REMW s6, t4, t3
  ADD t4, s6, zero
  SW t4, 1288(sp)
  JAL zero, bb168
bb168:
  LW t4, 1288(sp)
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
  BNE s5, zero, bb169
  JAL zero, bb218
bb169:
  JAL zero, bb178
bb170:
  ADD s5, s4, zero
  ADD s4, s5, zero
  JAL zero, bb171
bb171:
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
  JAL zero, bb172
bb172:
  LW t4, 1224(sp)
  ADD s7, t4, zero
  LW t3, 1216(sp)
  ADD t4, t3, zero
  SW t4, 1304(sp)
  ADD t4, s5, zero
  SW t4, 1296(sp)
  JAL zero, bb157
bb173:
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
  JAL zero, bb175
bb174:
  LW t4, 1152(sp)
  ADD s7, t4, zero
  LW t3, 1160(sp)
  ADD t4, t3, zero
  SW t4, 1304(sp)
  LW t3, 1168(sp)
  ADD t4, t3, zero
  SW t4, 1296(sp)
  JAL zero, bb157
bb175:
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
  BNE s0, zero, bb176
  JAL zero, bb177
bb176:
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
  JAL zero, bb175
bb177:
  LA s0, i
  LW s1, 0(s0)
  LA s0, ii
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  LA s0, i
  SW s2, 0(s0)
  JAL zero, bb174
bb178:
  ADDI s5, zero, 1
  LW t4, 1224(sp)
  ADD s10, t4, zero
  JAL zero, bb179
bb179:
  ADD s11, s10, zero
  ADD s7, s5, zero
  XOR s4, s11, zero
  SLTU s9, zero, s4
  BNE s9, zero, bb180
  JAL zero, bb181
bb180:
  LW t4, 1216(sp)
  MULW s4, s7, t4
  ADDI s9, zero, 1
  SUBW s8, s11, s9
  ADD s5, s4, zero
  ADD s10, s8, zero
  JAL zero, bb179
bb181:
  ADD s4, s7, zero
  JAL zero, bb170
bb182:
  ADD s5, s6, zero
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
  BNE s6, zero, bb183
  JAL zero, bb184
bb183:
  ADD t4, zero, zero
  SW t4, 808(sp)
  JAL zero, bb34
bb184:
  ADDI t4, zero, 1
  SW t4, 808(sp)
  JAL zero, bb34
bb185:
  ADD s4, s5, zero
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
  BNE s5, zero, bb186
  JAL zero, bb187
bb186:
  ADD t4, zero, zero
  SW t4, 936(sp)
  JAL zero, bb58
bb187:
  ADDI t4, zero, 1
  SW t4, 936(sp)
  JAL zero, bb58
bb188:
  ADD s2, s3, zero
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
  BNE s3, zero, bb189
  JAL zero, bb190
bb189:
  ADD t4, zero, zero
  SW t4, 1032(sp)
  JAL zero, bb82
bb190:
  ADDI t4, zero, 1
  SW t4, 1032(sp)
  JAL zero, bb82
bb191:
  ADD s0, s3, zero
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
  BNE s3, zero, bb192
  JAL zero, bb193
bb192:
  ADD t4, zero, zero
  SW t4, 1112(sp)
  JAL zero, bb100
bb193:
  ADDI t4, zero, 1
  SW t4, 1112(sp)
  JAL zero, bb100
bb194:
  ADD s1, s3, zero
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
  BNE s3, zero, bb195
  JAL zero, bb196
bb195:
  ADD s1, zero, zero
  JAL zero, bb118
bb196:
  ADDI s1, zero, 1
  JAL zero, bb118
bb197:
  ADD t4, s6, zero
  SW t4, 88(sp)
  ADD t4, s2, zero
  SW t4, 80(sp)
  LW t4, 88(sp)
  XORI s10, t4, 13
  SLTU s1, zero, s10
  BNE s1, zero, bb200
  JAL zero, bb201
bb198:
  ADDI s10, zero, 4
  LW t4, 80(sp)
  MULW s1, t4, s10
  LA s10, get
  ADD s5, s10, s1
  LW t4, 88(sp)
  SW t4, 0(s5)
  LW t4, 80(sp)
  ADDIW s1, t4, 1
  CALL getch
  ADD s5, a0, zero
  ADD s2, s1, zero
  ADD s6, s5, zero
  JAL zero, bb197
bb199:
  LW t4, 80(sp)
  ADD s1, t4, zero
  JAL zero, bb9
bb200:
  LW t4, 88(sp)
  XORI s1, t4, 10
  SLTU s10, zero, s1
  ADD t4, s10, zero
  SB t4, 104(sp)
  JAL zero, bb202
bb201:
  ADD t4, zero, zero
  SB t4, 104(sp)
  JAL zero, bb202
bb202:
  LB t4, 104(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb198
  JAL zero, bb199
bb203:
  ADDI s8, zero, 57
  SLT s9, s8, s0
  XORI s0, s9, 1
  ADD t4, s0, zero
  SB t4, 416(sp)
  JAL zero, bb205
bb204:
  ADD t4, zero, zero
  SB t4, 416(sp)
  JAL zero, bb205
bb205:
  LB t4, 416(sp)
  ADD s0, t4, zero
  BNE s0, zero, bb206
  JAL zero, bb207
bb206:
  ADDI t4, zero, 1
  SW t4, 424(sp)
  JAL zero, bb12
bb207:
  ADD t4, zero, zero
  SW t4, 424(sp)
  JAL zero, bb12
bb208:
  LB t3, 344(sp)
  ADD t4, t3, zero
  SB t4, 760(sp)
  LB t3, 296(sp)
  ADD t4, t3, zero
  SB t4, 752(sp)
  LB t3, 264(sp)
  ADD t4, t3, zero
  SB t4, 744(sp)
  LB t3, 248(sp)
  ADD t4, t3, zero
  SB t4, 736(sp)
  LB t3, 240(sp)
  ADD t4, t3, zero
  SB t4, 728(sp)
  JAL zero, bb31
bb209:
  LB t3, 304(sp)
  ADD t4, t3, zero
  SB t4, 888(sp)
  LB t3, 288(sp)
  ADD t4, t3, zero
  SB t4, 880(sp)
  LB t3, 280(sp)
  ADD t4, t3, zero
  SB t4, 872(sp)
  LB t3, 272(sp)
  ADD t4, t3, zero
  SB t4, 864(sp)
  LB t3, 256(sp)
  ADD t4, t3, zero
  SB t4, 856(sp)
  JAL zero, bb55
bb210:
  LB t3, 328(sp)
  ADD t4, t3, zero
  SB t4, 1000(sp)
  LB t3, 320(sp)
  ADD t4, t3, zero
  SB t4, 992(sp)
  LB t3, 312(sp)
  ADD t4, t3, zero
  SB t4, 984(sp)
  JAL zero, bb79
bb211:
  LB t3, 384(sp)
  ADD t4, t3, zero
  SB t4, 1080(sp)
  LB t3, 360(sp)
  ADD t4, t3, zero
  SB t4, 1072(sp)
  LB t3, 336(sp)
  ADD t4, t3, zero
  SB t4, 1064(sp)
  JAL zero, bb97
bb212:
  LB t4, 376(sp)
  ADD s3, t4, zero
  LB t4, 368(sp)
  ADD s6, t4, zero
  LB t3, 352(sp)
  ADD t4, t3, zero
  SB t4, 1144(sp)
  JAL zero, bb115
bb213:
  LW t3, 1168(sp)
  ADD t4, t3, zero
  SW t4, 1232(sp)
  JAL zero, bb160
bb214:
  LW t3, 1248(sp)
  ADD t4, t3, zero
  SW t4, 1240(sp)
  JAL zero, bb162
bb215:
  LW t3, 1264(sp)
  ADD t4, t3, zero
  SW t4, 1256(sp)
  JAL zero, bb164
bb216:
  LW t3, 1280(sp)
  ADD t4, t3, zero
  SW t4, 1272(sp)
  JAL zero, bb166
bb217:
  ADD t4, s3, zero
  SW t4, 1288(sp)
  JAL zero, bb168
bb218:
  ADD s4, s6, zero
  JAL zero, bb171
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
  ADDIW s0, s2, 1
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD s1, s0, zero
  JAL zero, bb220
bb220:
  ADD s0, s1, zero
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
  BNE s1, zero, bb221
  JAL zero, bb222
bb221:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb222:
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
  ADDIW s0, s2, 1
  ADDI s1, zero, 4
  MULW s2, s0, s1
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
  JAL zero, bb225
bb225:
  ADD s1, s3, zero
  ADD s4, s2, zero
  XORI s5, s1, 13
  SLTU s6, zero, s5
  BNE s6, zero, bb228
  JAL zero, bb229
bb226:
  ADDI s6, zero, 4
  MULW s7, s4, s6
  ADD s6, s0, s7
  SW s1, 0(s6)
  ADDIW s6, s4, 1
  CALL getch
  ADD s7, a0, zero
  ADD s2, s6, zero
  ADD s3, s7, zero
  JAL zero, bb225
bb227:
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
bb228:
  XORI s5, s1, 10
  SLTU s6, zero, s5
  ADD s5, s6, zero
  JAL zero, bb230
bb229:
  ADD s5, zero, zero
  JAL zero, bb230
bb230:
  ADD s6, s5, zero
  BNE s6, zero, bb226
  JAL zero, bb227
isdigit:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  SLTI s1, s0, 48
  XORI s2, s1, 1
  BNE s2, zero, bb232
  JAL zero, bb233
bb232:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XORI s0, s2, 1
  ADD s1, s0, zero
  JAL zero, bb234
bb233:
  ADD s1, zero, zero
  JAL zero, bb234
bb234:
  ADD s0, s1, zero
  BNE s0, zero, bb235
  JAL zero, bb236
bb235:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb236:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
