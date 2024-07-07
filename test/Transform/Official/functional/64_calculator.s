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
  XOR s5, s6, zero
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
  ADDI sp, sp, -1344
  SD ra, 1232(sp)
  SD s9, 1240(sp)
  SD s10, 1248(sp)
  SD s8, 1256(sp)
  SD s7, 1264(sp)
  SD s3, 1272(sp)
  SD s2, 1280(sp)
  SD s6, 1288(sp)
  SD s1, 1296(sp)
  SD s5, 1304(sp)
  SD s0, 1312(sp)
  SD s11, 1320(sp)
  SD s4, 1328(sp)
  LA s8, intt
  SW zero, 0(s8)
  LA s8, chat
  SW zero, 0(s8)
  LA s8, get
  ADD a0, s8, zero
  CALL getstr
  ADD t4, a0, zero
  SW t4, 64(sp)
  ADD s8, zero, zero
  ADD s7, zero, zero
  ADD s3, zero, zero
  ADD s2, zero, zero
  ADD s6, zero, zero
  ADD t4, zero, zero
  SB t4, 680(sp)
  ADD t4, zero, zero
  SB t4, 664(sp)
  ADD t4, zero, zero
  SB t4, 648(sp)
  ADD t4, zero, zero
  SB t4, 392(sp)
  ADD t4, zero, zero
  SB t4, 384(sp)
  ADD t4, zero, zero
  SB t4, 376(sp)
  ADD t4, zero, zero
  SB t4, 368(sp)
  ADD t4, zero, zero
  SB t4, 160(sp)
  ADD t4, zero, zero
  SB t4, 168(sp)
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
  JAL zero, bb9
bb9:
  LB t3, 208(sp)
  ADD t4, t3, zero
  SB t4, 216(sp)
  LB t3, 200(sp)
  ADD t4, t3, zero
  SB t4, 224(sp)
  LB t3, 192(sp)
  ADD t4, t3, zero
  SB t4, 232(sp)
  LB t3, 184(sp)
  ADD t4, t3, zero
  SB t4, 240(sp)
  LB t3, 176(sp)
  ADD t4, t3, zero
  SB t4, 248(sp)
  LB t3, 168(sp)
  ADD t4, t3, zero
  SB t4, 256(sp)
  LB t3, 160(sp)
  ADD t4, t3, zero
  SB t4, 264(sp)
  LB t3, 368(sp)
  ADD t4, t3, zero
  SB t4, 272(sp)
  LB t3, 376(sp)
  ADD t4, t3, zero
  SB t4, 280(sp)
  LB t3, 384(sp)
  ADD t4, t3, zero
  SB t4, 288(sp)
  LB t3, 392(sp)
  ADD t4, t3, zero
  SB t4, 296(sp)
  LB t3, 648(sp)
  ADD t4, t3, zero
  SB t4, 304(sp)
  LB t3, 664(sp)
  ADD t4, t3, zero
  SB t4, 312(sp)
  LB t3, 680(sp)
  ADD t4, t3, zero
  SB t4, 320(sp)
  ADD t4, s6, zero
  SB t4, 328(sp)
  ADD t4, s2, zero
  SB t4, 336(sp)
  ADD t4, s3, zero
  SB t4, 344(sp)
  ADD t4, s7, zero
  SB t4, 352(sp)
  ADD t4, s8, zero
  SB t4, 360(sp)
  LA s5, i
  LW s11, 0(s5)
  LW t4, 64(sp)
  SLT s5, s11, t4
  XOR s11, s5, zero
  SLTU s5, zero, s11
  BNE s5, zero, bb10
  JAL zero, bb11
bb10:
  LA s5, i
  LW s11, 0(s5)
  ADDI s5, zero, 4
  MULW s4, s11, s5
  LA s5, get
  ADD s11, s5, s4
  LW s4, 0(s11)
  ADD a0, s4, zero
  CALL isdigit
  ADD s4, a0, zero
  XORI s5, s4, 1
  SLTIU s4, s5, 1
  BNE s4, zero, bb12
  JAL zero, bb14
bb11:
  JAL zero, bb116
bb12:
  LA s4, ii
  LW s5, 0(s4)
  ADDI s4, zero, 4
  MULW s11, s5, s4
  LA s4, get2
  ADD s5, s4, s11
  LA s4, i
  LW s11, 0(s4)
  ADDI s4, zero, 4
  MULW s0, s11, s4
  LA s4, get
  ADD s11, s4, s0
  LW s0, 0(s11)
  SW s0, 0(s5)
  LA s0, ii
  LW s4, 0(s0)
  ADDIW s0, s4, 1
  LA s4, ii
  SW s0, 0(s4)
  LB t3, 360(sp)
  ADD t4, t3, zero
  SB t4, 544(sp)
  LB t3, 352(sp)
  ADD t4, t3, zero
  SB t4, 536(sp)
  LB t3, 344(sp)
  ADD t4, t3, zero
  SB t4, 528(sp)
  LB t3, 336(sp)
  ADD t4, t3, zero
  SB t4, 520(sp)
  LB t3, 328(sp)
  ADD t4, t3, zero
  SB t4, 400(sp)
  LB t3, 320(sp)
  ADD t4, t3, zero
  SB t4, 408(sp)
  LB t3, 312(sp)
  ADD t4, t3, zero
  SB t4, 416(sp)
  LB t3, 304(sp)
  ADD t4, t3, zero
  SB t4, 424(sp)
  LB t3, 296(sp)
  ADD t4, t3, zero
  SB t4, 432(sp)
  LB t3, 288(sp)
  ADD t4, t3, zero
  SB t4, 440(sp)
  LB t3, 280(sp)
  ADD t4, t3, zero
  SB t4, 448(sp)
  LB t3, 272(sp)
  ADD t4, t3, zero
  SB t4, 456(sp)
  LB t3, 264(sp)
  ADD t4, t3, zero
  SB t4, 464(sp)
  LB t3, 256(sp)
  ADD t4, t3, zero
  SB t4, 472(sp)
  LB t3, 248(sp)
  ADD t4, t3, zero
  SB t4, 480(sp)
  LB t3, 240(sp)
  ADD t4, t3, zero
  SB t4, 488(sp)
  LB t3, 232(sp)
  ADD t4, t3, zero
  SB t4, 496(sp)
  LB t3, 224(sp)
  ADD t4, t3, zero
  SB t4, 504(sp)
  LB t3, 216(sp)
  ADD t4, t3, zero
  SB t4, 512(sp)
  JAL zero, bb13
bb13:
  LB t3, 512(sp)
  ADD t4, t3, zero
  SB t4, 552(sp)
  LB t3, 504(sp)
  ADD t4, t3, zero
  SB t4, 560(sp)
  LB t3, 496(sp)
  ADD t4, t3, zero
  SB t4, 568(sp)
  LB t3, 488(sp)
  ADD t4, t3, zero
  SB t4, 576(sp)
  LB t3, 480(sp)
  ADD t4, t3, zero
  SB t4, 584(sp)
  LB t3, 472(sp)
  ADD t4, t3, zero
  SB t4, 592(sp)
  LB t3, 464(sp)
  ADD t4, t3, zero
  SB t4, 600(sp)
  LB t3, 456(sp)
  ADD t4, t3, zero
  SB t4, 608(sp)
  LB t3, 448(sp)
  ADD t4, t3, zero
  SB t4, 616(sp)
  LB t3, 440(sp)
  ADD t4, t3, zero
  SB t4, 624(sp)
  LB t3, 432(sp)
  ADD t4, t3, zero
  SB t4, 632(sp)
  LB t3, 424(sp)
  ADD t4, t3, zero
  SB t4, 640(sp)
  LB t3, 416(sp)
  ADD t4, t3, zero
  SB t4, 656(sp)
  LB t3, 408(sp)
  ADD t4, t3, zero
  SB t4, 672(sp)
  LB t4, 400(sp)
  ADD s4, t4, zero
  LB t4, 520(sp)
  ADD s0, t4, zero
  LB t4, 528(sp)
  ADD s1, t4, zero
  LB t4, 536(sp)
  ADD s11, t4, zero
  LB t4, 544(sp)
  ADD s10, t4, zero
  LA s5, i
  LW s9, 0(s5)
  ADDIW s5, s9, 1
  LA s9, i
  SW s5, 0(s9)
  ADD s8, s10, zero
  ADD s7, s11, zero
  ADD s3, s1, zero
  ADD s2, s0, zero
  ADD s6, s4, zero
  LB t3, 672(sp)
  ADD t4, t3, zero
  SB t4, 680(sp)
  LB t3, 656(sp)
  ADD t4, t3, zero
  SB t4, 664(sp)
  LB t3, 640(sp)
  ADD t4, t3, zero
  SB t4, 648(sp)
  LB t3, 632(sp)
  ADD t4, t3, zero
  SB t4, 392(sp)
  LB t3, 624(sp)
  ADD t4, t3, zero
  SB t4, 384(sp)
  LB t3, 616(sp)
  ADD t4, t3, zero
  SB t4, 376(sp)
  LB t3, 608(sp)
  ADD t4, t3, zero
  SB t4, 368(sp)
  LB t3, 600(sp)
  ADD t4, t3, zero
  SB t4, 160(sp)
  LB t3, 592(sp)
  ADD t4, t3, zero
  SB t4, 168(sp)
  LB t3, 584(sp)
  ADD t4, t3, zero
  SB t4, 176(sp)
  LB t3, 576(sp)
  ADD t4, t3, zero
  SB t4, 184(sp)
  LB t3, 568(sp)
  ADD t4, t3, zero
  SB t4, 192(sp)
  LB t3, 560(sp)
  ADD t4, t3, zero
  SB t4, 200(sp)
  LB t3, 552(sp)
  ADD t4, t3, zero
  SB t4, 208(sp)
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
  ADDI a0, zero, 40
  CALL chapush
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
  ADDI a0, zero, 94
  CALL chapush
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
  CALL chapop
  ADD s0, a0, zero
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
  JAL zero, bb157
bb21:
  LA s0, c
  LW s1, 0(s0)
  XORI s0, s1, 40
  SLTU s1, zero, s0
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb22
  JAL zero, bb23
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
  CALL chapop
  ADD s0, a0, zero
  LA s1, c
  SW s0, 0(s1)
  JAL zero, bb21
bb23:
  JAL zero, bb20
bb24:
  JAL zero, bb26
bb25:
  LB t3, 688(sp)
  ADD t4, t3, zero
  SB t4, 800(sp)
  LB t3, 696(sp)
  ADD t4, t3, zero
  SB t4, 792(sp)
  LB t3, 704(sp)
  ADD t4, t3, zero
  SB t4, 784(sp)
  LB t3, 712(sp)
  ADD t4, t3, zero
  SB t4, 776(sp)
  LB t3, 720(sp)
  ADD t4, t3, zero
  SB t4, 768(sp)
  LA s6, i
  LW s5, 0(s6)
  ADDI s6, zero, 4
  MULW s0, s5, s6
  LA s5, get
  ADD s6, s5, s0
  LW s0, 0(s6)
  XORI s5, s0, 45
  SLTIU s0, s5, 1
  BNE s0, zero, bb46
  JAL zero, bb158
bb26:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 43
  SLTIU s0, s1, 1
  BNE s0, zero, bb29
  JAL zero, bb30
bb27:
  CALL find
  ADD s5, a0, zero
  XOR s6, s5, zero
  SLTIU s5, s6, 1
  BNE s5, zero, bb44
  JAL zero, bb45
bb28:
  ADDI a0, zero, 43
  CALL chapush
  LB t3, 72(sp)
  ADD t4, t3, zero
  SB t4, 720(sp)
  LB t3, 88(sp)
  ADD t4, t3, zero
  SB t4, 712(sp)
  LB t3, 16(sp)
  ADD t4, t3, zero
  SB t4, 704(sp)
  LB t3, 152(sp)
  ADD t4, t3, zero
  SB t4, 696(sp)
  LB t3, 80(sp)
  ADD t4, t3, zero
  SB t4, 688(sp)
  JAL zero, bb25
bb29:
  ADDI t4, zero, 1
  SB t4, 728(sp)
  JAL zero, bb31
bb30:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 45
  SLTIU s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 728(sp)
  JAL zero, bb31
bb31:
  LB t3, 728(sp)
  ADD t4, t3, zero
  SB t4, 72(sp)
  LB t4, 72(sp)
  BNE t4, zero, bb32
  JAL zero, bb33
bb32:
  ADDI t4, zero, 1
  SB t4, 736(sp)
  JAL zero, bb34
bb33:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 42
  SLTIU s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 736(sp)
  JAL zero, bb34
bb34:
  LB t3, 736(sp)
  ADD t4, t3, zero
  SB t4, 80(sp)
  LB t4, 80(sp)
  BNE t4, zero, bb35
  JAL zero, bb36
bb35:
  ADDI t4, zero, 1
  SB t4, 744(sp)
  JAL zero, bb37
bb36:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 47
  SLTIU s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 744(sp)
  JAL zero, bb37
bb37:
  LB t3, 744(sp)
  ADD t4, t3, zero
  SB t4, 88(sp)
  LB t4, 88(sp)
  BNE t4, zero, bb38
  JAL zero, bb39
bb38:
  ADDI t4, zero, 1
  SB t4, 752(sp)
  JAL zero, bb40
bb39:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 37
  SLTIU s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 752(sp)
  JAL zero, bb40
bb40:
  LB t3, 752(sp)
  ADD t4, t3, zero
  SB t4, 16(sp)
  LB t4, 16(sp)
  BNE t4, zero, bb41
  JAL zero, bb42
bb41:
  ADDI t4, zero, 1
  SB t4, 760(sp)
  JAL zero, bb43
bb42:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 94
  SLTIU s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 760(sp)
  JAL zero, bb43
bb43:
  LB t3, 760(sp)
  ADD t4, t3, zero
  SB t4, 152(sp)
  LB t4, 152(sp)
  XOR s5, t4, zero
  SLTU s6, zero, s5
  BNE s6, zero, bb27
  JAL zero, bb28
bb44:
  JAL zero, bb28
bb45:
  JAL zero, bb26
bb46:
  JAL zero, bb48
bb47:
  LB t3, 808(sp)
  ADD t4, t3, zero
  SB t4, 920(sp)
  LB t3, 816(sp)
  ADD t4, t3, zero
  SB t4, 912(sp)
  LB t3, 824(sp)
  ADD t4, t3, zero
  SB t4, 904(sp)
  LB t3, 832(sp)
  ADD t4, t3, zero
  SB t4, 896(sp)
  LB t3, 840(sp)
  ADD t4, t3, zero
  SB t4, 888(sp)
  LA s4, i
  LW s3, 0(s4)
  ADDI s4, zero, 4
  MULW s0, s3, s4
  LA s3, get
  ADD s4, s3, s0
  LW s0, 0(s4)
  XORI s3, s0, 42
  SLTIU s0, s3, 1
  BNE s0, zero, bb68
  JAL zero, bb159
bb48:
  LA s0, chat
  LW s5, 0(s0)
  ADDI s0, zero, 4
  MULW s6, s5, s0
  LA s0, chas
  ADD s5, s0, s6
  LW s0, 0(s5)
  XORI s5, s0, 43
  SLTIU s0, s5, 1
  BNE s0, zero, bb51
  JAL zero, bb52
bb49:
  CALL find
  ADD s3, a0, zero
  XOR s4, s3, zero
  SLTIU s3, s4, 1
  BNE s3, zero, bb66
  JAL zero, bb67
bb50:
  ADDI a0, zero, 45
  CALL chapush
  LB t3, 56(sp)
  ADD t4, t3, zero
  SB t4, 840(sp)
  LB t3, 32(sp)
  ADD t4, t3, zero
  SB t4, 832(sp)
  LB t3, 24(sp)
  ADD t4, t3, zero
  SB t4, 824(sp)
  LB t3, 96(sp)
  ADD t4, t3, zero
  SB t4, 816(sp)
  LB t3, 8(sp)
  ADD t4, t3, zero
  SB t4, 808(sp)
  JAL zero, bb47
bb51:
  ADDI t4, zero, 1
  SB t4, 848(sp)
  JAL zero, bb53
bb52:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 45
  SLTIU s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 848(sp)
  JAL zero, bb53
bb53:
  LB t3, 848(sp)
  ADD t4, t3, zero
  SB t4, 8(sp)
  LB t4, 8(sp)
  BNE t4, zero, bb54
  JAL zero, bb55
bb54:
  ADDI t4, zero, 1
  SB t4, 856(sp)
  JAL zero, bb56
bb55:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 42
  SLTIU s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 856(sp)
  JAL zero, bb56
bb56:
  LB t3, 856(sp)
  ADD t4, t3, zero
  SB t4, 96(sp)
  LB t4, 96(sp)
  BNE t4, zero, bb57
  JAL zero, bb58
bb57:
  ADDI t4, zero, 1
  SB t4, 864(sp)
  JAL zero, bb59
bb58:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 47
  SLTIU s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 864(sp)
  JAL zero, bb59
bb59:
  LB t3, 864(sp)
  ADD t4, t3, zero
  SB t4, 24(sp)
  LB t4, 24(sp)
  BNE t4, zero, bb60
  JAL zero, bb61
bb60:
  ADDI t4, zero, 1
  SB t4, 872(sp)
  JAL zero, bb62
bb61:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 37
  SLTIU s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 872(sp)
  JAL zero, bb62
bb62:
  LB t3, 872(sp)
  ADD t4, t3, zero
  SB t4, 32(sp)
  LB t4, 32(sp)
  BNE t4, zero, bb63
  JAL zero, bb64
bb63:
  ADDI t4, zero, 1
  SB t4, 880(sp)
  JAL zero, bb65
bb64:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 94
  SLTIU s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 880(sp)
  JAL zero, bb65
bb65:
  LB t3, 880(sp)
  ADD t4, t3, zero
  SB t4, 56(sp)
  LB t4, 56(sp)
  XOR s3, t4, zero
  SLTU s4, zero, s3
  BNE s4, zero, bb49
  JAL zero, bb50
bb66:
  JAL zero, bb50
bb67:
  JAL zero, bb48
bb68:
  JAL zero, bb70
bb69:
  LB t3, 928(sp)
  ADD t4, t3, zero
  SB t4, 992(sp)
  LB t3, 936(sp)
  ADD t4, t3, zero
  SB t4, 984(sp)
  LB t3, 944(sp)
  ADD t4, t3, zero
  SB t4, 976(sp)
  LA s9, i
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  LA s9, get
  ADD s10, s9, s11
  LW s9, 0(s10)
  XORI s10, s9, 47
  SLTIU s9, s10, 1
  BNE s9, zero, bb84
  JAL zero, bb160
bb70:
  LA s0, chat
  LW s3, 0(s0)
  ADDI s0, zero, 4
  MULW s4, s3, s0
  LA s0, chas
  ADD s3, s0, s4
  LW s0, 0(s3)
  XORI s3, s0, 42
  SLTIU s0, s3, 1
  BNE s0, zero, bb73
  JAL zero, bb74
bb71:
  CALL find
  ADD s5, a0, zero
  XOR s6, s5, zero
  SLTIU s5, s6, 1
  BNE s5, zero, bb82
  JAL zero, bb83
bb72:
  ADDI a0, zero, 42
  CALL chapush
  LB t3, 144(sp)
  ADD t4, t3, zero
  SB t4, 944(sp)
  LB t3, 40(sp)
  ADD t4, t3, zero
  SB t4, 936(sp)
  LB t3, 0(sp)
  ADD t4, t3, zero
  SB t4, 928(sp)
  JAL zero, bb69
bb73:
  ADDI t4, zero, 1
  SB t4, 952(sp)
  JAL zero, bb75
bb74:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 47
  SLTIU s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 952(sp)
  JAL zero, bb75
bb75:
  LB t3, 952(sp)
  ADD t4, t3, zero
  SB t4, 0(sp)
  LB t4, 0(sp)
  BNE t4, zero, bb76
  JAL zero, bb77
bb76:
  ADDI t4, zero, 1
  SB t4, 960(sp)
  JAL zero, bb78
bb77:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 37
  SLTIU s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 960(sp)
  JAL zero, bb78
bb78:
  LB t3, 960(sp)
  ADD t4, t3, zero
  SB t4, 40(sp)
  LB t4, 40(sp)
  BNE t4, zero, bb79
  JAL zero, bb80
bb79:
  ADDI t4, zero, 1
  SB t4, 968(sp)
  JAL zero, bb81
bb80:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 94
  SLTIU s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 968(sp)
  JAL zero, bb81
bb81:
  LB t3, 968(sp)
  ADD t4, t3, zero
  SB t4, 144(sp)
  LB t4, 144(sp)
  XOR s5, t4, zero
  SLTU s6, zero, s5
  BNE s6, zero, bb71
  JAL zero, bb72
bb82:
  JAL zero, bb72
bb83:
  JAL zero, bb70
bb84:
  JAL zero, bb86
bb85:
  LB t3, 1000(sp)
  ADD t4, t3, zero
  SB t4, 1064(sp)
  LB t3, 1008(sp)
  ADD t4, t3, zero
  SB t4, 1056(sp)
  LB t3, 1016(sp)
  ADD t4, t3, zero
  SB t4, 1048(sp)
  LA s8, i
  LW s7, 0(s8)
  ADDI s8, zero, 4
  MULW s2, s7, s8
  LA s7, get
  ADD s8, s7, s2
  LW s2, 0(s8)
  XORI s7, s2, 37
  SLTIU s2, s7, 1
  BNE s2, zero, bb100
  JAL zero, bb161
bb86:
  LA s9, chat
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  LA s9, chas
  ADD s10, s9, s11
  LW s9, 0(s10)
  XORI s10, s9, 42
  SLTIU s9, s10, 1
  BNE s9, zero, bb89
  JAL zero, bb90
bb87:
  CALL find
  ADD s1, a0, zero
  XOR s6, s1, zero
  SLTIU s1, s6, 1
  BNE s1, zero, bb98
  JAL zero, bb99
bb88:
  ADDI a0, zero, 47
  CALL chapush
  LB t3, 48(sp)
  ADD t4, t3, zero
  SB t4, 1016(sp)
  LB t3, 104(sp)
  ADD t4, t3, zero
  SB t4, 1008(sp)
  LB t3, 112(sp)
  ADD t4, t3, zero
  SB t4, 1000(sp)
  JAL zero, bb85
bb89:
  ADDI t4, zero, 1
  SB t4, 1024(sp)
  JAL zero, bb91
bb90:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 47
  SLTIU s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 1024(sp)
  JAL zero, bb91
bb91:
  LB t3, 1024(sp)
  ADD t4, t3, zero
  SB t4, 104(sp)
  LB t4, 104(sp)
  BNE t4, zero, bb92
  JAL zero, bb93
bb92:
  ADDI t4, zero, 1
  SB t4, 1032(sp)
  JAL zero, bb94
bb93:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 37
  SLTIU s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 1032(sp)
  JAL zero, bb94
bb94:
  LB t3, 1032(sp)
  ADD t4, t3, zero
  SB t4, 112(sp)
  LB t4, 112(sp)
  BNE t4, zero, bb95
  JAL zero, bb96
bb95:
  ADDI t4, zero, 1
  SB t4, 1040(sp)
  JAL zero, bb97
bb96:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 94
  SLTIU s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 1040(sp)
  JAL zero, bb97
bb97:
  LB t3, 1040(sp)
  ADD t4, t3, zero
  SB t4, 48(sp)
  LB t4, 48(sp)
  XOR s1, t4, zero
  SLTU s6, zero, s1
  BNE s6, zero, bb87
  JAL zero, bb88
bb98:
  JAL zero, bb88
bb99:
  JAL zero, bb86
bb100:
  JAL zero, bb102
bb101:
  ADD s9, s1, zero
  ADD s10, s6, zero
  ADD s11, s5, zero
  LA s4, ii
  LW s3, 0(s4)
  ADDI s4, zero, 4
  MULW s0, s3, s4
  LA s3, get2
  ADD s4, s3, s0
  ADDI s0, zero, 32
  SW s0, 0(s4)
  LA s0, ii
  LW s3, 0(s0)
  ADDIW s0, s3, 1
  LA s3, ii
  SW s0, 0(s3)
  LB t3, 1048(sp)
  ADD t4, t3, zero
  SB t4, 544(sp)
  ADD t4, s11, zero
  SB t4, 536(sp)
  ADD t4, s10, zero
  SB t4, 528(sp)
  LB t3, 1056(sp)
  ADD t4, t3, zero
  SB t4, 520(sp)
  ADD t4, s9, zero
  SB t4, 400(sp)
  LB t3, 768(sp)
  ADD t4, t3, zero
  SB t4, 408(sp)
  LB t3, 1064(sp)
  ADD t4, t3, zero
  SB t4, 416(sp)
  LB t3, 976(sp)
  ADD t4, t3, zero
  SB t4, 424(sp)
  LB t3, 984(sp)
  ADD t4, t3, zero
  SB t4, 432(sp)
  LB t3, 992(sp)
  ADD t4, t3, zero
  SB t4, 440(sp)
  LB t3, 888(sp)
  ADD t4, t3, zero
  SB t4, 448(sp)
  LB t3, 776(sp)
  ADD t4, t3, zero
  SB t4, 456(sp)
  LB t3, 896(sp)
  ADD t4, t3, zero
  SB t4, 464(sp)
  LB t3, 904(sp)
  ADD t4, t3, zero
  SB t4, 472(sp)
  LB t3, 912(sp)
  ADD t4, t3, zero
  SB t4, 480(sp)
  LB t3, 784(sp)
  ADD t4, t3, zero
  SB t4, 488(sp)
  LB t3, 920(sp)
  ADD t4, t3, zero
  SB t4, 496(sp)
  LB t3, 792(sp)
  ADD t4, t3, zero
  SB t4, 504(sp)
  LB t3, 800(sp)
  ADD t4, t3, zero
  SB t4, 512(sp)
  JAL zero, bb13
bb102:
  LA s2, chat
  LW s7, 0(s2)
  ADDI s2, zero, 4
  MULW s8, s7, s2
  LA s2, chas
  ADD s7, s2, s8
  LW s2, 0(s7)
  XORI s7, s2, 42
  SLTIU s2, s7, 1
  BNE s2, zero, bb105
  JAL zero, bb106
bb103:
  CALL find
  ADD s5, a0, zero
  XOR s6, s5, zero
  SLTIU s5, s6, 1
  BNE s5, zero, bb114
  JAL zero, bb115
bb104:
  ADDI a0, zero, 37
  CALL chapush
  LB t4, 128(sp)
  ADD s5, t4, zero
  LB t4, 136(sp)
  ADD s6, t4, zero
  LB t4, 120(sp)
  ADD s1, t4, zero
  JAL zero, bb101
bb105:
  ADDI s2, zero, 1
  JAL zero, bb107
bb106:
  LA s0, chat
  LW s3, 0(s0)
  ADDI s0, zero, 4
  MULW s4, s3, s0
  LA s0, chas
  ADD s3, s0, s4
  LW s0, 0(s3)
  XORI s3, s0, 47
  SLTIU s0, s3, 1
  XOR s3, s0, zero
  SLTU s0, zero, s3
  ADD s2, s0, zero
  JAL zero, bb107
bb107:
  ADD t4, s2, zero
  SB t4, 120(sp)
  LB t4, 120(sp)
  BNE t4, zero, bb108
  JAL zero, bb109
bb108:
  ADDI s7, zero, 1
  JAL zero, bb110
bb109:
  LA s0, chat
  LW s3, 0(s0)
  ADDI s0, zero, 4
  MULW s4, s3, s0
  LA s0, chas
  ADD s3, s0, s4
  LW s0, 0(s3)
  XORI s3, s0, 37
  SLTIU s0, s3, 1
  XOR s3, s0, zero
  SLTU s0, zero, s3
  ADD s7, s0, zero
  JAL zero, bb110
bb110:
  ADD t4, s7, zero
  SB t4, 128(sp)
  LB t4, 128(sp)
  BNE t4, zero, bb111
  JAL zero, bb112
bb111:
  ADDI s8, zero, 1
  JAL zero, bb113
bb112:
  LA s0, chat
  LW s3, 0(s0)
  ADDI s0, zero, 4
  MULW s4, s3, s0
  LA s0, chas
  ADD s3, s0, s4
  LW s0, 0(s3)
  XORI s3, s0, 94
  SLTIU s0, s3, 1
  XOR s3, s0, zero
  SLTU s0, zero, s3
  ADD s8, s0, zero
  JAL zero, bb113
bb113:
  ADD t4, s8, zero
  SB t4, 136(sp)
  LB t4, 136(sp)
  XOR s5, t4, zero
  SLTU s6, zero, s5
  BNE s6, zero, bb103
  JAL zero, bb104
bb114:
  JAL zero, bb104
bb115:
  JAL zero, bb102
bb116:
  LA s0, chat
  LW s1, 0(s0)
  SLT s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb117
  JAL zero, bb118
bb117:
  CALL chapop
  ADD s0, a0, zero
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
  JAL zero, bb116
bb118:
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
  JAL zero, bb119
bb119:
  ADD t4, s2, zero
  SW t4, 1088(sp)
  ADD t4, s1, zero
  SW t4, 1080(sp)
  ADD t4, s0, zero
  SW t4, 1072(sp)
  LA s6, i
  LW s7, 0(s6)
  ADDI s6, zero, 4
  MULW s8, s7, s6
  LA s6, get2
  ADD s7, s6, s8
  LW s6, 0(s7)
  XORI s7, s6, 64
  SLTU s6, zero, s7
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb120
  JAL zero, bb121
bb120:
  LA s6, i
  LW s7, 0(s6)
  ADDI s6, zero, 4
  MULW s8, s7, s6
  LA s6, get2
  ADD s7, s6, s8
  LW s6, 0(s7)
  XORI s7, s6, 43
  SLTIU s6, s7, 1
  BNE s6, zero, bb122
  JAL zero, bb123
bb121:
  LA s0, ints
  ADDI s1, s0, 4
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 1232(sp)
  LD s9, 1240(sp)
  LD s10, 1248(sp)
  LD s8, 1256(sp)
  LD s7, 1264(sp)
  LD s3, 1272(sp)
  LD s2, 1280(sp)
  LD s6, 1288(sp)
  LD s1, 1296(sp)
  LD s5, 1304(sp)
  LD s0, 1312(sp)
  LD s11, 1320(sp)
  LD s4, 1328(sp)
  ADDI sp, sp, 1344
  JALR zero, 0(ra)
bb122:
  ADDI t4, zero, 1
  SB t4, 1096(sp)
  JAL zero, bb124
bb123:
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get2
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 45
  SLTIU s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 1096(sp)
  JAL zero, bb124
bb124:
  LB t4, 1096(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb125
  JAL zero, bb126
bb125:
  ADDI t4, zero, 1
  SB t4, 1104(sp)
  JAL zero, bb127
bb126:
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get2
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 42
  SLTIU s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 1104(sp)
  JAL zero, bb127
bb127:
  LB t4, 1104(sp)
  ADD s8, t4, zero
  BNE s8, zero, bb128
  JAL zero, bb129
bb128:
  ADDI t4, zero, 1
  SB t4, 1112(sp)
  JAL zero, bb130
bb129:
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get2
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 47
  SLTIU s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 1112(sp)
  JAL zero, bb130
bb130:
  LB t4, 1112(sp)
  ADD s9, t4, zero
  BNE s9, zero, bb131
  JAL zero, bb132
bb131:
  ADDI t4, zero, 1
  SB t4, 1120(sp)
  JAL zero, bb133
bb132:
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get2
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 37
  SLTIU s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 1120(sp)
  JAL zero, bb133
bb133:
  LB t4, 1120(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb134
  JAL zero, bb135
bb134:
  ADDI t4, zero, 1
  SB t4, 1128(sp)
  JAL zero, bb136
bb135:
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get2
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 94
  SLTIU s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD t4, s0, zero
  SB t4, 1128(sp)
  JAL zero, bb136
bb136:
  LB t4, 1128(sp)
  ADD s11, t4, zero
  BNE s11, zero, bb137
  JAL zero, bb139
bb137:
  CALL intpop
  ADD t4, a0, zero
  SW t4, 1144(sp)
  CALL intpop
  ADD t4, a0, zero
  SW t4, 1136(sp)
  LA s4, i
  LW s3, 0(s4)
  ADDI s4, zero, 4
  MULW s6, s3, s4
  LA s3, get2
  ADD s4, s3, s6
  LW s3, 0(s4)
  XORI s4, s3, 43
  SLTIU s3, s4, 1
  BNE s3, zero, bb140
  JAL zero, bb162
bb138:
  LW t4, 1192(sp)
  ADD s3, t4, zero
  LW t4, 1184(sp)
  ADD s11, t4, zero
  LW t4, 1200(sp)
  ADD s6, t4, zero
  LA s10, i
  LW s8, 0(s10)
  ADDIW s10, s8, 1
  LA s8, i
  SW s10, 0(s8)
  ADD s0, s6, zero
  ADD s1, s11, zero
  ADD s2, s3, zero
  JAL zero, bb119
bb139:
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get2
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 32
  SLTU s0, zero, s1
  BNE s0, zero, bb152
  JAL zero, bb153
bb140:
  LW t4, 1144(sp)
  LW t3, 1136(sp)
  ADDW s3, t4, t3
  ADD t4, s3, zero
  SW t4, 1152(sp)
  JAL zero, bb141
bb141:
  LW t3, 1152(sp)
  ADD t4, t3, zero
  SW t4, 1168(sp)
  LA s6, i
  LW s7, 0(s6)
  ADDI s6, zero, 4
  MULW s8, s7, s6
  LA s6, get2
  ADD s7, s6, s8
  LW s6, 0(s7)
  XORI s7, s6, 45
  SLTIU s6, s7, 1
  BNE s6, zero, bb142
  JAL zero, bb163
bb142:
  LW t4, 1136(sp)
  LW t3, 1144(sp)
  SUBW s6, t4, t3
  ADD t4, s6, zero
  SW t4, 1160(sp)
  JAL zero, bb143
bb143:
  LW t3, 1160(sp)
  ADD t4, t3, zero
  SW t4, 1208(sp)
  LA s8, i
  LW s9, 0(s8)
  ADDI s8, zero, 4
  MULW s10, s9, s8
  LA s8, get2
  ADD s9, s8, s10
  LW s8, 0(s9)
  XORI s9, s8, 42
  SLTIU s8, s9, 1
  BNE s8, zero, bb144
  JAL zero, bb164
bb144:
  LW t4, 1144(sp)
  LW t3, 1136(sp)
  MULW s8, t4, t3
  ADD t4, s8, zero
  SW t4, 1176(sp)
  JAL zero, bb145
bb145:
  LW t3, 1176(sp)
  ADD t4, t3, zero
  SW t4, 1224(sp)
  LA s10, i
  LW s5, 0(s10)
  ADDI s10, zero, 4
  MULW s11, s5, s10
  LA s5, get2
  ADD s10, s5, s11
  LW s5, 0(s10)
  XORI s10, s5, 47
  SLTIU s5, s10, 1
  BNE s5, zero, bb146
  JAL zero, bb165
bb146:
  LW t4, 1136(sp)
  LW t3, 1144(sp)
  DIVW s5, t4, t3
  ADD t4, s5, zero
  SW t4, 1216(sp)
  JAL zero, bb147
bb147:
  LW t4, 1216(sp)
  ADD s5, t4, zero
  LA s11, i
  LW s4, 0(s11)
  ADDI s11, zero, 4
  MULW s7, s4, s11
  LA s4, get2
  ADD s11, s4, s7
  LW s4, 0(s11)
  XORI s7, s4, 37
  SLTIU s4, s7, 1
  BNE s4, zero, bb148
  JAL zero, bb166
bb148:
  LW t4, 1136(sp)
  LW t3, 1144(sp)
  REMW s4, t4, t3
  ADD s7, s4, zero
  JAL zero, bb149
bb149:
  ADD s4, s7, zero
  LA s11, i
  LW s3, 0(s11)
  ADDI s11, zero, 4
  MULW s9, s3, s11
  LA s3, get2
  ADD s11, s3, s9
  LW s3, 0(s11)
  XORI s9, s3, 94
  SLTIU s3, s9, 1
  BNE s3, zero, bb150
  JAL zero, bb167
bb150:
  LW t4, 1136(sp)
  ADD a0, t4, zero
  LW t4, 1144(sp)
  ADD a1, t4, zero
  CALL power
  ADD s3, a0, zero
  ADD s9, s3, zero
  JAL zero, bb151
bb151:
  ADD s3, s9, zero
  ADD a0, s3, zero
  CALL intpush
  LW t3, 1144(sp)
  ADD t4, t3, zero
  SW t4, 1200(sp)
  LW t3, 1136(sp)
  ADD t4, t3, zero
  SW t4, 1184(sp)
  ADD t4, s3, zero
  SW t4, 1192(sp)
  JAL zero, bb138
bb152:
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get2
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  ADD a0, s2, zero
  CALL intpush
  LA s0, ii
  ADDI s1, zero, 1
  SW s1, 0(s0)
  JAL zero, bb154
bb153:
  LW t3, 1072(sp)
  ADD t4, t3, zero
  SW t4, 1200(sp)
  LW t3, 1080(sp)
  ADD t4, t3, zero
  SW t4, 1184(sp)
  LW t3, 1088(sp)
  ADD t4, t3, zero
  SW t4, 1192(sp)
  JAL zero, bb138
bb154:
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
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb155
  JAL zero, bb156
bb155:
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
  ADD a0, s2, zero
  CALL intadd
  LA s0, ii
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, ii
  SW s0, 0(s1)
  JAL zero, bb154
bb156:
  LA s0, i
  LW s1, 0(s0)
  LA s0, ii
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  LA s0, i
  SW s2, 0(s0)
  JAL zero, bb153
bb157:
  LB t3, 320(sp)
  ADD t4, t3, zero
  SB t4, 720(sp)
  LB t3, 272(sp)
  ADD t4, t3, zero
  SB t4, 712(sp)
  LB t3, 240(sp)
  ADD t4, t3, zero
  SB t4, 704(sp)
  LB t3, 224(sp)
  ADD t4, t3, zero
  SB t4, 696(sp)
  LB t3, 216(sp)
  ADD t4, t3, zero
  SB t4, 688(sp)
  JAL zero, bb25
bb158:
  LB t3, 280(sp)
  ADD t4, t3, zero
  SB t4, 840(sp)
  LB t3, 264(sp)
  ADD t4, t3, zero
  SB t4, 832(sp)
  LB t3, 256(sp)
  ADD t4, t3, zero
  SB t4, 824(sp)
  LB t3, 248(sp)
  ADD t4, t3, zero
  SB t4, 816(sp)
  LB t3, 232(sp)
  ADD t4, t3, zero
  SB t4, 808(sp)
  JAL zero, bb47
bb159:
  LB t3, 304(sp)
  ADD t4, t3, zero
  SB t4, 944(sp)
  LB t3, 296(sp)
  ADD t4, t3, zero
  SB t4, 936(sp)
  LB t3, 288(sp)
  ADD t4, t3, zero
  SB t4, 928(sp)
  JAL zero, bb69
bb160:
  LB t3, 360(sp)
  ADD t4, t3, zero
  SB t4, 1016(sp)
  LB t3, 336(sp)
  ADD t4, t3, zero
  SB t4, 1008(sp)
  LB t3, 312(sp)
  ADD t4, t3, zero
  SB t4, 1000(sp)
  JAL zero, bb85
bb161:
  LB t4, 352(sp)
  ADD s5, t4, zero
  LB t4, 344(sp)
  ADD s6, t4, zero
  LB t4, 328(sp)
  ADD s1, t4, zero
  JAL zero, bb101
bb162:
  LW t3, 1088(sp)
  ADD t4, t3, zero
  SW t4, 1152(sp)
  JAL zero, bb141
bb163:
  LW t3, 1168(sp)
  ADD t4, t3, zero
  SW t4, 1160(sp)
  JAL zero, bb143
bb164:
  LW t3, 1208(sp)
  ADD t4, t3, zero
  SW t4, 1176(sp)
  JAL zero, bb145
bb165:
  LW t3, 1224(sp)
  ADD t4, t3, zero
  SW t4, 1216(sp)
  JAL zero, bb147
bb166:
  ADD s7, s5, zero
  JAL zero, bb149
bb167:
  ADD s9, s4, zero
  JAL zero, bb151
find:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  CALL chapop
  ADD s0, a0, zero
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
  BNE s1, zero, bb169
  JAL zero, bb170
bb169:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb170:
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
  JAL zero, bb173
bb173:
  ADD s1, s3, zero
  ADD s4, s2, zero
  XORI s5, s1, 13
  SLTU s6, zero, s5
  BNE s6, zero, bb176
  JAL zero, bb177
bb174:
  ADDI s6, zero, 4
  MULW s7, s4, s6
  ADD s6, s0, s7
  SW s1, 0(s6)
  ADDIW s6, s4, 1
  CALL getch
  ADD s7, a0, zero
  ADD s2, s6, zero
  ADD s3, s7, zero
  JAL zero, bb173
bb175:
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
bb176:
  XORI s5, s1, 10
  SLTU s6, zero, s5
  ADD s5, s6, zero
  JAL zero, bb178
bb177:
  ADD s5, zero, zero
  JAL zero, bb178
bb178:
  ADD s6, s5, zero
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb174
  JAL zero, bb175
isdigit:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  SLTI s1, s0, 48
  XORI s2, s1, 1
  BNE s2, zero, bb180
  JAL zero, bb181
bb180:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XORI s0, s2, 1
  ADD s1, s0, zero
  JAL zero, bb182
bb181:
  ADD s1, zero, zero
  JAL zero, bb182
bb182:
  ADD s0, s1, zero
  BNE s0, zero, bb183
  JAL zero, bb184
bb183:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb184:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
