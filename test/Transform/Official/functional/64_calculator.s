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
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADDI s2, zero, 1
  ADD s3, s1, zero
  JAL zero, bb4
bb4:
  XOR s1, s3, zero
  SLTU s4, zero, s1
  XOR s1, s4, zero
  SLTU s4, zero, s1
  BNE s4, zero, bb5
  JAL zero, bb6
bb5:
  MULW s1, s2, s0
  ADDI s4, zero, 1
  SUBW s5, s3, s4
  ADD s2, s1, zero
  ADD s3, s5, zero
  JAL zero, bb4
bb6:
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
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
  ADDI sp, sp, -720
  SD ra, 616(sp)
  SD s8, 624(sp)
  SD s2, 632(sp)
  SD s9, 640(sp)
  SD s10, 648(sp)
  SD s7, 656(sp)
  SD s11, 664(sp)
  SD s6, 672(sp)
  SD s1, 680(sp)
  SD s5, 688(sp)
  SD s0, 696(sp)
  SD s3, 704(sp)
  SD s4, 712(sp)
  LA s9, intt
  SW zero, 0(s9)
  LA s9, chat
  SW zero, 0(s9)
  LA s9, get
  ADD a0, s9, zero
  CALL getstr
  ADD t4, a0, zero
  SW t4, 232(sp)
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
  SB t4, 344(sp)
  ADD t4, zero, zero
  SB t4, 240(sp)
  ADD t4, zero, zero
  SB t4, 248(sp)
  ADD t4, zero, zero
  SB t4, 256(sp)
  ADD t4, zero, zero
  SB t4, 264(sp)
  ADD t4, zero, zero
  SB t4, 272(sp)
  ADD t4, zero, zero
  SB t4, 280(sp)
  ADD t4, zero, zero
  SB t4, 288(sp)
  ADD t4, zero, zero
  SB t4, 296(sp)
  ADD t4, zero, zero
  SB t4, 304(sp)
  ADD t4, zero, zero
  SB t4, 312(sp)
  ADD t4, zero, zero
  SB t4, 320(sp)
  ADD t4, zero, zero
  SB t4, 328(sp)
  ADD t4, zero, zero
  SB t4, 336(sp)
  JAL zero, bb9
bb9:
  LA s9, i
  LW s7, 0(s9)
  LW t4, 232(sp)
  SLT s9, s7, t4
  XOR s7, s9, zero
  SLTU s9, zero, s7
  BNE s9, zero, bb10
  JAL zero, bb11
bb10:
  LA s7, i
  LW s9, 0(s7)
  ADDI s7, zero, 4
  MULW s11, s9, s7
  LA s7, get
  ADD s9, s7, s11
  LW s7, 0(s9)
  ADD a0, s7, zero
  CALL isdigit
  ADD s7, a0, zero
  XORI s9, s7, 1
  SLTIU s7, s9, 1
  BNE s7, zero, bb12
  JAL zero, bb14
bb11:
  JAL zero, bb116
bb12:
  LA s7, ii
  LW s9, 0(s7)
  ADDI s7, zero, 4
  MULW s11, s9, s7
  LA s7, get2
  ADD s9, s7, s11
  LA s7, i
  LW s11, 0(s7)
  ADDI s7, zero, 4
  MULW s6, s11, s7
  LA s7, get
  ADD s11, s7, s6
  LW s6, 0(s11)
  SW s6, 0(s9)
  LA s6, ii
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, ii
  SW s6, 0(s7)
  LB t4, 192(sp)
  ADD s6, t4, zero
  LB t4, 200(sp)
  ADD s7, t4, zero
  LB t4, 208(sp)
  ADD s9, t4, zero
  LB t4, 216(sp)
  ADD s11, t4, zero
  LB t4, 224(sp)
  ADD s5, t4, zero
  LB t4, 344(sp)
  ADD s1, t4, zero
  LB t4, 240(sp)
  ADD s0, t4, zero
  LB t4, 248(sp)
  ADD s3, t4, zero
  LB t4, 256(sp)
  ADD s10, t4, zero
  LB t3, 264(sp)
  ADD t4, t3, zero
  SB t4, 512(sp)
  LB t3, 272(sp)
  ADD t4, t3, zero
  SB t4, 504(sp)
  LB t3, 280(sp)
  ADD t4, t3, zero
  SB t4, 496(sp)
  LB t3, 288(sp)
  ADD t4, t3, zero
  SB t4, 440(sp)
  LB t3, 296(sp)
  ADD t4, t3, zero
  SB t4, 448(sp)
  LB t3, 304(sp)
  ADD t4, t3, zero
  SB t4, 456(sp)
  LB t3, 312(sp)
  ADD t4, t3, zero
  SB t4, 464(sp)
  LB t3, 320(sp)
  ADD t4, t3, zero
  SB t4, 472(sp)
  LB t3, 328(sp)
  ADD t4, t3, zero
  SB t4, 480(sp)
  LB t3, 336(sp)
  ADD t4, t3, zero
  SB t4, 488(sp)
  JAL zero, bb13
bb13:
  LA s4, i
  LW s2, 0(s4)
  ADDIW s4, s2, 1
  LA s2, i
  SW s4, 0(s2)
  ADD t4, s6, zero
  SB t4, 192(sp)
  ADD t4, s7, zero
  SB t4, 200(sp)
  ADD t4, s9, zero
  SB t4, 208(sp)
  ADD t4, s11, zero
  SB t4, 216(sp)
  ADD t4, s5, zero
  SB t4, 224(sp)
  ADD t4, s1, zero
  SB t4, 344(sp)
  ADD t4, s0, zero
  SB t4, 240(sp)
  ADD t4, s3, zero
  SB t4, 248(sp)
  ADD t4, s10, zero
  SB t4, 256(sp)
  LB t3, 512(sp)
  ADD t4, t3, zero
  SB t4, 264(sp)
  LB t3, 504(sp)
  ADD t4, t3, zero
  SB t4, 272(sp)
  LB t3, 496(sp)
  ADD t4, t3, zero
  SB t4, 280(sp)
  LB t3, 440(sp)
  ADD t4, t3, zero
  SB t4, 288(sp)
  LB t3, 448(sp)
  ADD t4, t3, zero
  SB t4, 296(sp)
  LB t3, 456(sp)
  ADD t4, t3, zero
  SB t4, 304(sp)
  LB t3, 464(sp)
  ADD t4, t3, zero
  SB t4, 312(sp)
  LB t3, 472(sp)
  ADD t4, t3, zero
  SB t4, 320(sp)
  LB t3, 480(sp)
  ADD t4, t3, zero
  SB t4, 328(sp)
  LB t3, 488(sp)
  ADD t4, t3, zero
  SB t4, 336(sp)
  JAL zero, bb9
bb14:
  LA s2, i
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s8, s4, s2
  LA s2, get
  ADD s4, s2, s8
  LW s2, 0(s4)
  XORI s4, s2, 40
  SLTIU s2, s4, 1
  BNE s2, zero, bb15
  JAL zero, bb16
bb15:
  ADDI a0, zero, 40
  CALL chapush
  JAL zero, bb16
bb16:
  LA s2, i
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s8, s4, s2
  LA s2, get
  ADD s4, s2, s8
  LW s2, 0(s4)
  XORI s4, s2, 94
  SLTIU s2, s4, 1
  BNE s2, zero, bb17
  JAL zero, bb18
bb17:
  ADDI a0, zero, 94
  CALL chapush
  JAL zero, bb18
bb18:
  LA s2, i
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s8, s4, s2
  LA s2, get
  ADD s4, s2, s8
  LW s2, 0(s4)
  XORI s4, s2, 41
  SLTIU s2, s4, 1
  BNE s2, zero, bb19
  JAL zero, bb20
bb19:
  CALL chapop
  ADD s2, a0, zero
  LA s4, c
  SW s2, 0(s4)
  JAL zero, bb21
bb20:
  LA s2, i
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s8, s4, s2
  LA s2, get
  ADD s4, s2, s8
  LW s2, 0(s4)
  XORI s4, s2, 43
  SLTIU s2, s4, 1
  BNE s2, zero, bb24
  JAL zero, bb157
bb21:
  LA s2, c
  LW s4, 0(s2)
  XORI s2, s4, 40
  SLTU s4, zero, s2
  XOR s2, s4, zero
  SLTU s4, zero, s2
  BNE s4, zero, bb22
  JAL zero, bb23
bb22:
  LA s2, ii
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s8, s4, s2
  LA s2, get2
  ADD s4, s2, s8
  ADDI s2, zero, 32
  SW s2, 0(s4)
  LA s2, ii
  LW s4, 0(s2)
  ADDIW s2, s4, 1
  ADDI s4, zero, 4
  MULW s8, s2, s4
  LA s2, get2
  ADD s4, s2, s8
  LA s2, c
  LW s8, 0(s2)
  SW s8, 0(s4)
  LA s2, ii
  LW s4, 0(s2)
  ADDIW s2, s4, 2
  LA s4, ii
  SW s2, 0(s4)
  CALL chapop
  ADD s2, a0, zero
  LA s4, c
  SW s2, 0(s4)
  JAL zero, bb21
bb23:
  JAL zero, bb20
bb24:
  JAL zero, bb26
bb25:
  LA s2, i
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s8, s4, s2
  LA s2, get
  ADD s4, s2, s8
  LW s2, 0(s4)
  XORI s4, s2, 45
  SLTIU s2, s4, 1
  BNE s2, zero, bb46
  JAL zero, bb158
bb26:
  LA s2, chat
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s8, s4, s2
  LA s2, chas
  ADD s4, s2, s8
  LW s2, 0(s4)
  XORI s4, s2, 43
  SLTIU s2, s4, 1
  BNE s2, zero, bb29
  JAL zero, bb30
bb27:
  CALL find
  ADD s2, a0, zero
  XOR s4, s2, zero
  SLTIU s2, s4, 1
  BNE s2, zero, bb44
  JAL zero, bb45
bb28:
  ADDI a0, zero, 43
  CALL chapush
  LB t3, 16(sp)
  ADD t4, t3, zero
  SB t4, 8(sp)
  LB t3, 32(sp)
  ADD t4, t3, zero
  SB t4, 0(sp)
  LB t3, 40(sp)
  ADD t4, t3, zero
  SB t4, 56(sp)
  LB t3, 48(sp)
  ADD t4, t3, zero
  SB t4, 64(sp)
  LB t3, 24(sp)
  ADD t4, t3, zero
  SB t4, 72(sp)
  JAL zero, bb25
bb29:
  ADDI t4, zero, 1
  SB t4, 16(sp)
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
  SB t4, 16(sp)
  JAL zero, bb31
bb31:
  LB t4, 16(sp)
  BNE t4, zero, bb32
  JAL zero, bb33
bb32:
  ADDI t4, zero, 1
  SB t4, 24(sp)
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
  SB t4, 24(sp)
  JAL zero, bb34
bb34:
  LB t4, 24(sp)
  BNE t4, zero, bb35
  JAL zero, bb36
bb35:
  ADDI t4, zero, 1
  SB t4, 32(sp)
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
  SB t4, 32(sp)
  JAL zero, bb37
bb37:
  LB t4, 32(sp)
  BNE t4, zero, bb38
  JAL zero, bb39
bb38:
  ADDI t4, zero, 1
  SB t4, 40(sp)
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
  SB t4, 40(sp)
  JAL zero, bb40
bb40:
  LB t4, 40(sp)
  BNE t4, zero, bb41
  JAL zero, bb42
bb41:
  ADDI t4, zero, 1
  SB t4, 48(sp)
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
  SB t4, 48(sp)
  JAL zero, bb43
bb43:
  LB t4, 48(sp)
  XOR s2, t4, zero
  SLTU s4, zero, s2
  BNE s4, zero, bb27
  JAL zero, bb28
bb44:
  JAL zero, bb28
bb45:
  JAL zero, bb26
bb46:
  JAL zero, bb48
bb47:
  LA s2, i
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s8, s4, s2
  LA s2, get
  ADD s4, s2, s8
  LW s2, 0(s4)
  XORI s4, s2, 42
  SLTIU s2, s4, 1
  BNE s2, zero, bb68
  JAL zero, bb159
bb48:
  LA s2, chat
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s8, s4, s2
  LA s2, chas
  ADD s4, s2, s8
  LW s2, 0(s4)
  XORI s4, s2, 43
  SLTIU s2, s4, 1
  BNE s2, zero, bb51
  JAL zero, bb52
bb49:
  CALL find
  ADD s2, a0, zero
  XOR s4, s2, zero
  SLTIU s2, s4, 1
  BNE s2, zero, bb66
  JAL zero, bb67
bb50:
  ADDI a0, zero, 45
  CALL chapush
  LB t3, 184(sp)
  ADD t4, t3, zero
  SB t4, 104(sp)
  LB t3, 360(sp)
  ADD t4, t3, zero
  SB t4, 152(sp)
  LB t3, 176(sp)
  ADD t4, t3, zero
  SB t4, 144(sp)
  LB t3, 352(sp)
  ADD t4, t3, zero
  SB t4, 88(sp)
  LB t3, 168(sp)
  ADD t4, t3, zero
  SB t4, 80(sp)
  JAL zero, bb47
bb51:
  ADDI t4, zero, 1
  SB t4, 168(sp)
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
  SB t4, 168(sp)
  JAL zero, bb53
bb53:
  LB t4, 168(sp)
  BNE t4, zero, bb54
  JAL zero, bb55
bb54:
  ADDI t4, zero, 1
  SB t4, 352(sp)
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
  SB t4, 352(sp)
  JAL zero, bb56
bb56:
  LB t4, 352(sp)
  BNE t4, zero, bb57
  JAL zero, bb58
bb57:
  ADDI t4, zero, 1
  SB t4, 176(sp)
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
  SB t4, 176(sp)
  JAL zero, bb59
bb59:
  LB t4, 176(sp)
  BNE t4, zero, bb60
  JAL zero, bb61
bb60:
  ADDI t4, zero, 1
  SB t4, 360(sp)
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
  SB t4, 360(sp)
  JAL zero, bb62
bb62:
  LB t4, 360(sp)
  BNE t4, zero, bb63
  JAL zero, bb64
bb63:
  ADDI t4, zero, 1
  SB t4, 184(sp)
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
  SB t4, 184(sp)
  JAL zero, bb65
bb65:
  LB t4, 184(sp)
  XOR s2, t4, zero
  SLTU s4, zero, s2
  BNE s4, zero, bb49
  JAL zero, bb50
bb66:
  JAL zero, bb50
bb67:
  JAL zero, bb48
bb68:
  JAL zero, bb70
bb69:
  LA s2, i
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s8, s4, s2
  LA s2, get
  ADD s4, s2, s8
  LW s2, 0(s4)
  XORI s4, s2, 47
  SLTIU s2, s4, 1
  BNE s2, zero, bb84
  JAL zero, bb160
bb70:
  LA s2, chat
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s8, s4, s2
  LA s2, chas
  ADD s4, s2, s8
  LW s2, 0(s4)
  XORI s4, s2, 42
  SLTIU s2, s4, 1
  BNE s2, zero, bb73
  JAL zero, bb74
bb71:
  CALL find
  ADD s2, a0, zero
  XOR s4, s2, zero
  SLTIU s2, s4, 1
  BNE s2, zero, bb82
  JAL zero, bb83
bb72:
  ADDI a0, zero, 42
  CALL chapush
  LB t3, 392(sp)
  ADD t4, t3, zero
  SB t4, 112(sp)
  LB t3, 384(sp)
  ADD t4, t3, zero
  SB t4, 368(sp)
  LB t3, 376(sp)
  ADD t4, t3, zero
  SB t4, 160(sp)
  JAL zero, bb69
bb73:
  ADDI t4, zero, 1
  SB t4, 376(sp)
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
  SB t4, 376(sp)
  JAL zero, bb75
bb75:
  LB t4, 376(sp)
  BNE t4, zero, bb76
  JAL zero, bb77
bb76:
  ADDI t4, zero, 1
  SB t4, 384(sp)
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
  SB t4, 384(sp)
  JAL zero, bb78
bb78:
  LB t4, 384(sp)
  BNE t4, zero, bb79
  JAL zero, bb80
bb79:
  ADDI t4, zero, 1
  SB t4, 392(sp)
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
  SB t4, 392(sp)
  JAL zero, bb81
bb81:
  LB t4, 392(sp)
  XOR s2, t4, zero
  SLTU s4, zero, s2
  BNE s4, zero, bb71
  JAL zero, bb72
bb82:
  JAL zero, bb72
bb83:
  JAL zero, bb70
bb84:
  JAL zero, bb86
bb85:
  LA s2, i
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s8, s4, s2
  LA s2, get
  ADD s4, s2, s8
  LW s2, 0(s4)
  XORI s4, s2, 37
  SLTIU s2, s4, 1
  BNE s2, zero, bb100
  JAL zero, bb161
bb86:
  LA s2, chat
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s8, s4, s2
  LA s2, chas
  ADD s4, s2, s8
  LW s2, 0(s4)
  XORI s4, s2, 42
  SLTIU s2, s4, 1
  BNE s2, zero, bb89
  JAL zero, bb90
bb87:
  CALL find
  ADD s2, a0, zero
  XOR s4, s2, zero
  SLTIU s2, s4, 1
  BNE s2, zero, bb98
  JAL zero, bb99
bb88:
  ADDI a0, zero, 47
  CALL chapush
  LB t3, 424(sp)
  ADD t4, t3, zero
  SB t4, 136(sp)
  LB t3, 416(sp)
  ADD t4, t3, zero
  SB t4, 408(sp)
  LB t3, 128(sp)
  ADD t4, t3, zero
  SB t4, 400(sp)
  JAL zero, bb85
bb89:
  ADDI t4, zero, 1
  SB t4, 416(sp)
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
  SB t4, 416(sp)
  JAL zero, bb91
bb91:
  LB t4, 416(sp)
  BNE t4, zero, bb92
  JAL zero, bb93
bb92:
  ADDI t4, zero, 1
  SB t4, 128(sp)
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
  SB t4, 128(sp)
  JAL zero, bb94
bb94:
  LB t4, 128(sp)
  BNE t4, zero, bb95
  JAL zero, bb96
bb95:
  ADDI t4, zero, 1
  SB t4, 424(sp)
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
  SB t4, 424(sp)
  JAL zero, bb97
bb97:
  LB t4, 424(sp)
  XOR s2, t4, zero
  SLTU s4, zero, s2
  BNE s4, zero, bb87
  JAL zero, bb88
bb98:
  JAL zero, bb88
bb99:
  JAL zero, bb86
bb100:
  JAL zero, bb102
bb101:
  LA s8, ii
  LW s4, 0(s8)
  ADDI s8, zero, 4
  MULW s2, s4, s8
  LA s4, get2
  ADD s8, s4, s2
  ADDI s2, zero, 32
  SW s2, 0(s8)
  LA s2, ii
  LW s4, 0(s2)
  ADDIW s2, s4, 1
  LA s4, ii
  SW s2, 0(s4)
  LB t4, 136(sp)
  ADD s6, t4, zero
  LB t4, 536(sp)
  ADD s7, t4, zero
  LB t4, 528(sp)
  ADD s9, t4, zero
  LB t4, 408(sp)
  ADD s11, t4, zero
  LB t4, 520(sp)
  ADD s5, t4, zero
  LB t4, 8(sp)
  ADD s1, t4, zero
  LB t4, 400(sp)
  ADD s0, t4, zero
  LB t4, 112(sp)
  ADD s3, t4, zero
  LB t4, 368(sp)
  ADD s10, t4, zero
  LB t3, 160(sp)
  ADD t4, t3, zero
  SB t4, 512(sp)
  LB t3, 104(sp)
  ADD t4, t3, zero
  SB t4, 504(sp)
  LB t3, 0(sp)
  ADD t4, t3, zero
  SB t4, 496(sp)
  LB t3, 152(sp)
  ADD t4, t3, zero
  SB t4, 440(sp)
  LB t3, 144(sp)
  ADD t4, t3, zero
  SB t4, 448(sp)
  LB t3, 88(sp)
  ADD t4, t3, zero
  SB t4, 456(sp)
  LB t3, 56(sp)
  ADD t4, t3, zero
  SB t4, 464(sp)
  LB t3, 80(sp)
  ADD t4, t3, zero
  SB t4, 472(sp)
  LB t3, 64(sp)
  ADD t4, t3, zero
  SB t4, 480(sp)
  LB t3, 72(sp)
  ADD t4, t3, zero
  SB t4, 488(sp)
  JAL zero, bb13
bb102:
  LA s2, chat
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s8, s4, s2
  LA s2, chas
  ADD s4, s2, s8
  LW s2, 0(s4)
  XORI s4, s2, 42
  SLTIU s2, s4, 1
  BNE s2, zero, bb105
  JAL zero, bb106
bb103:
  CALL find
  ADD s2, a0, zero
  XOR s4, s2, zero
  SLTIU s2, s4, 1
  BNE s2, zero, bb114
  JAL zero, bb115
bb104:
  ADDI a0, zero, 37
  CALL chapush
  LB t3, 96(sp)
  ADD t4, t3, zero
  SB t4, 536(sp)
  LB t3, 432(sp)
  ADD t4, t3, zero
  SB t4, 528(sp)
  LB t3, 120(sp)
  ADD t4, t3, zero
  SB t4, 520(sp)
  JAL zero, bb101
bb105:
  ADDI t4, zero, 1
  SB t4, 120(sp)
  JAL zero, bb107
bb106:
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
  SB t4, 120(sp)
  JAL zero, bb107
bb107:
  LB t4, 120(sp)
  BNE t4, zero, bb108
  JAL zero, bb109
bb108:
  ADDI t4, zero, 1
  SB t4, 96(sp)
  JAL zero, bb110
bb109:
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
  SB t4, 96(sp)
  JAL zero, bb110
bb110:
  LB t4, 96(sp)
  BNE t4, zero, bb111
  JAL zero, bb112
bb111:
  ADDI t4, zero, 1
  SB t4, 432(sp)
  JAL zero, bb113
bb112:
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
  SB t4, 432(sp)
  JAL zero, bb113
bb113:
  LB t4, 432(sp)
  XOR s2, t4, zero
  SLTU s4, zero, s2
  BNE s4, zero, bb103
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
  ADD t4, zero, zero
  SW t4, 560(sp)
  ADD t4, zero, zero
  SW t4, 552(sp)
  ADD t4, zero, zero
  SW t4, 544(sp)
  JAL zero, bb119
bb119:
  LA s3, i
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  LA s3, get2
  ADD s4, s3, s5
  LW s3, 0(s4)
  XORI s4, s3, 64
  SLTU s3, zero, s4
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb120
  JAL zero, bb121
bb120:
  LA s3, i
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  LA s3, get2
  ADD s4, s3, s5
  LW s3, 0(s4)
  XORI s4, s3, 43
  SLTIU s3, s4, 1
  BNE s3, zero, bb122
  JAL zero, bb123
bb121:
  ADDI s0, zero, 4
  ADDI s1, zero, 1
  MULW s2, s0, s1
  LA s0, ints
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 616(sp)
  LD s8, 624(sp)
  LD s2, 632(sp)
  LD s9, 640(sp)
  LD s10, 648(sp)
  LD s7, 656(sp)
  LD s11, 664(sp)
  LD s6, 672(sp)
  LD s1, 680(sp)
  LD s5, 688(sp)
  LD s0, 696(sp)
  LD s3, 704(sp)
  LD s4, 712(sp)
  ADDI sp, sp, 720
  JALR zero, 0(ra)
bb122:
  ADDI t4, zero, 1
  SB t4, 568(sp)
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
  SB t4, 568(sp)
  JAL zero, bb124
bb124:
  LB t4, 568(sp)
  BNE t4, zero, bb125
  JAL zero, bb126
bb125:
  ADDI t4, zero, 1
  SB t4, 576(sp)
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
  SB t4, 576(sp)
  JAL zero, bb127
bb127:
  LB t4, 576(sp)
  BNE t4, zero, bb128
  JAL zero, bb129
bb128:
  ADDI t4, zero, 1
  SB t4, 584(sp)
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
  SB t4, 584(sp)
  JAL zero, bb130
bb130:
  LB t4, 584(sp)
  BNE t4, zero, bb131
  JAL zero, bb132
bb131:
  ADDI t4, zero, 1
  SB t4, 592(sp)
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
  SB t4, 592(sp)
  JAL zero, bb133
bb133:
  LB t4, 592(sp)
  BNE t4, zero, bb134
  JAL zero, bb135
bb134:
  ADDI t4, zero, 1
  SB t4, 600(sp)
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
  SB t4, 600(sp)
  JAL zero, bb136
bb136:
  LB t4, 600(sp)
  BNE t4, zero, bb137
  JAL zero, bb139
bb137:
  CALL intpop
  ADD s8, a0, zero
  CALL intpop
  ADD s9, a0, zero
  LA s10, i
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW s2, s11, s10
  LA s10, get2
  ADD s11, s10, s2
  LW s2, 0(s11)
  XORI s10, s2, 43
  SLTIU s2, s10, 1
  BNE s2, zero, bb140
  JAL zero, bb162
bb138:
  LA s7, i
  LW s6, 0(s7)
  ADDIW s7, s6, 1
  LA s6, i
  SW s7, 0(s6)
  ADD t4, s0, zero
  SW t4, 560(sp)
  ADD t4, s11, zero
  SW t4, 552(sp)
  LW t3, 608(sp)
  ADD t4, t3, zero
  SW t4, 544(sp)
  JAL zero, bb119
bb139:
  LA s1, i
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  LA s1, get2
  ADD s2, s1, s3
  LW s1, 0(s2)
  XORI s2, s1, 32
  SLTU s1, zero, s2
  BNE s1, zero, bb152
  JAL zero, bb153
bb140:
  ADDW s2, s8, s9
  ADD s10, s2, zero
  JAL zero, bb141
bb141:
  LA s2, i
  LW s11, 0(s2)
  ADDI s2, zero, 4
  MULW s1, s11, s2
  LA s2, get2
  ADD s11, s2, s1
  LW s1, 0(s11)
  XORI s2, s1, 45
  SLTIU s1, s2, 1
  BNE s1, zero, bb142
  JAL zero, bb163
bb142:
  SUBW s1, s9, s8
  ADD s2, s1, zero
  JAL zero, bb143
bb143:
  LA s1, i
  LW s11, 0(s1)
  ADDI s1, zero, 4
  MULW s0, s11, s1
  LA s1, get2
  ADD s11, s1, s0
  LW s0, 0(s11)
  XORI s1, s0, 42
  SLTIU s0, s1, 1
  BNE s0, zero, bb144
  JAL zero, bb164
bb144:
  MULW s0, s8, s9
  ADD s1, s0, zero
  JAL zero, bb145
bb145:
  LA s0, i
  LW s11, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s11, s0
  LA s0, get2
  ADD s11, s0, s3
  LW s0, 0(s11)
  XORI s3, s0, 47
  SLTIU s0, s3, 1
  BNE s0, zero, bb146
  JAL zero, bb165
bb146:
  DIVW s0, s9, s8
  ADD s3, s0, zero
  JAL zero, bb147
bb147:
  LA s0, i
  LW s11, 0(s0)
  ADDI s0, zero, 4
  MULW s4, s11, s0
  LA s0, get2
  ADD s11, s0, s4
  LW s0, 0(s11)
  XORI s4, s0, 37
  SLTIU s0, s4, 1
  BNE s0, zero, bb148
  JAL zero, bb166
bb148:
  REMW s0, s9, s8
  ADD s4, s0, zero
  JAL zero, bb149
bb149:
  LA s0, i
  LW s11, 0(s0)
  ADDI s0, zero, 4
  MULW s5, s11, s0
  LA s0, get2
  ADD s11, s0, s5
  LW s0, 0(s11)
  XORI s5, s0, 94
  SLTIU s0, s5, 1
  BNE s0, zero, bb150
  JAL zero, bb167
bb150:
  ADD a0, s9, zero
  ADD a1, s8, zero
  CALL power
  ADD s0, a0, zero
  ADD s5, s0, zero
  JAL zero, bb151
bb151:
  ADD a0, s5, zero
  CALL intpush
  ADD s0, s8, zero
  ADD s11, s9, zero
  ADD t4, s5, zero
  SW t4, 608(sp)
  JAL zero, bb138
bb152:
  LA s1, i
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  LA s1, get2
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 48
  SUBW s3, s1, s2
  ADD a0, s3, zero
  CALL intpush
  LA s1, ii
  ADDI s2, zero, 1
  SW s2, 0(s1)
  JAL zero, bb154
bb153:
  LW t4, 560(sp)
  ADD s0, t4, zero
  LW t4, 552(sp)
  ADD s11, t4, zero
  LW t3, 544(sp)
  ADD t4, t3, zero
  SW t4, 608(sp)
  JAL zero, bb138
bb154:
  LA s1, i
  LW s2, 0(s1)
  LA s1, ii
  LW s3, 0(s1)
  ADDW s1, s2, s3
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, get2
  ADD s2, s1, s3
  LW s1, 0(s2)
  XORI s2, s1, 32
  SLTU s1, zero, s2
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb155
  JAL zero, bb156
bb155:
  LA s1, i
  LW s2, 0(s1)
  LA s1, ii
  LW s3, 0(s1)
  ADDW s1, s2, s3
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, get2
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 48
  SUBW s3, s1, s2
  ADD a0, s3, zero
  CALL intadd
  LA s1, ii
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, ii
  SW s1, 0(s2)
  JAL zero, bb154
bb156:
  LA s1, i
  LW s2, 0(s1)
  LA s1, ii
  LW s3, 0(s1)
  ADDW s1, s2, s3
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  LA s1, i
  SW s3, 0(s1)
  JAL zero, bb153
bb157:
  LB t3, 344(sp)
  ADD t4, t3, zero
  SB t4, 8(sp)
  LB t3, 280(sp)
  ADD t4, t3, zero
  SB t4, 0(sp)
  LB t3, 312(sp)
  ADD t4, t3, zero
  SB t4, 56(sp)
  LB t3, 328(sp)
  ADD t4, t3, zero
  SB t4, 64(sp)
  LB t3, 336(sp)
  ADD t4, t3, zero
  SB t4, 72(sp)
  JAL zero, bb25
bb158:
  LB t3, 272(sp)
  ADD t4, t3, zero
  SB t4, 104(sp)
  LB t3, 288(sp)
  ADD t4, t3, zero
  SB t4, 152(sp)
  LB t3, 296(sp)
  ADD t4, t3, zero
  SB t4, 144(sp)
  LB t3, 304(sp)
  ADD t4, t3, zero
  SB t4, 88(sp)
  LB t3, 320(sp)
  ADD t4, t3, zero
  SB t4, 80(sp)
  JAL zero, bb47
bb159:
  LB t3, 248(sp)
  ADD t4, t3, zero
  SB t4, 112(sp)
  LB t3, 256(sp)
  ADD t4, t3, zero
  SB t4, 368(sp)
  LB t3, 264(sp)
  ADD t4, t3, zero
  SB t4, 160(sp)
  JAL zero, bb69
bb160:
  LB t3, 192(sp)
  ADD t4, t3, zero
  SB t4, 136(sp)
  LB t3, 216(sp)
  ADD t4, t3, zero
  SB t4, 408(sp)
  LB t3, 240(sp)
  ADD t4, t3, zero
  SB t4, 400(sp)
  JAL zero, bb85
bb161:
  LB t3, 200(sp)
  ADD t4, t3, zero
  SB t4, 536(sp)
  LB t3, 208(sp)
  ADD t4, t3, zero
  SB t4, 528(sp)
  LB t3, 224(sp)
  ADD t4, t3, zero
  SB t4, 520(sp)
  JAL zero, bb101
bb162:
  LW t4, 544(sp)
  ADD s10, t4, zero
  JAL zero, bb141
bb163:
  ADD s2, s10, zero
  JAL zero, bb143
bb164:
  ADD s1, s2, zero
  JAL zero, bb145
bb165:
  ADD s3, s1, zero
  JAL zero, bb147
bb166:
  ADD s4, s3, zero
  JAL zero, bb149
bb167:
  ADD s5, s4, zero
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
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  CALL getch
  ADD s1, a0, zero
  ADD s2, zero, zero
  ADD s3, s1, zero
  JAL zero, bb173
bb173:
  XORI s1, s3, 13
  SLTU s4, zero, s1
  BNE s4, zero, bb176
  JAL zero, bb177
bb174:
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s4, s0, s5
  SW s3, 0(s4)
  ADDIW s4, s2, 1
  CALL getch
  ADD s5, a0, zero
  ADD s2, s4, zero
  ADD s3, s5, zero
  JAL zero, bb173
bb175:
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb176:
  XORI s1, s3, 10
  SLTU s4, zero, s1
  ADD s1, s4, zero
  JAL zero, bb178
bb177:
  ADD s1, zero, zero
  JAL zero, bb178
bb178:
  XOR s4, s1, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb174
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
  BNE s1, zero, bb183
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
