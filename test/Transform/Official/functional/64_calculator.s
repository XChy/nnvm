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
  SD ra, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  SW s0, 0(sp)
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
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
intpush:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  SW s0, 0(sp)
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
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
power:
  ADDI sp, sp, -64
  SD ra, 24(sp)
  SD s2, 32(sp)
  SD s1, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 16(sp)
  SW s1, 8(sp)
  ADDI s0, zero, 1
  SW s0, 0(sp)
  JAL zero, bb4
bb4:
  LW s0, 8(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb5
  JAL zero, bb6
bb5:
  LW s0, 0(sp)
  LW s1, 16(sp)
  MULW s2, s0, s1
  SW s2, 0(sp)
  LW s0, 8(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 8(sp)
  JAL zero, bb4
bb6:
  LW s0, 0(sp)
  ADD a0, s0, zero
  LD ra, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
intadd:
  ADDI sp, sp, -64
  SD ra, 8(sp)
  SD s4, 16(sp)
  SD s3, 24(sp)
  SD s2, 32(sp)
  SD s1, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  SW s0, 0(sp)
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
  LD ra, 8(sp)
  LD s4, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -272
  SD ra, 232(sp)
  SD s3, 240(sp)
  SD s2, 248(sp)
  SD s1, 256(sp)
  SD s0, 264(sp)
  LA s0, intt
  SW zero, 0(s0)
  LA s0, chat
  SW zero, 0(s0)
  LA s0, get
  ADD a0, s0, zero
  CALL getstr
  ADD s0, a0, zero
  SW s0, 224(sp)
  JAL zero, bb9
bb9:
  LA s0, i
  LW s1, 0(s0)
  LW s0, 224(sp)
  SLT s2, s1, s0
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb10
  JAL zero, bb11
bb10:
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL isdigit
  ADD s0, a0, zero
  XORI s1, s0, 1
  SLTIU s0, s1, 1
  BNE s0, zero, bb12
  JAL zero, bb14
bb11:
  JAL zero, bb116
bb12:
  LA s0, ii
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get2
  ADD s1, s0, s2
  LA s0, i
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  LA s0, get
  ADD s2, s0, s3
  LW s0, 0(s2)
  SW s0, 0(s1)
  LA s0, ii
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, ii
  SW s0, 0(s1)
  JAL zero, bb13
bb13:
  LA s0, i
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, i
  SW s0, 0(s1)
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
  JAL zero, bb25
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
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 45
  SLTIU s0, s1, 1
  BNE s0, zero, bb46
  JAL zero, bb47
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
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTIU s0, s1, 1
  BNE s0, zero, bb44
  JAL zero, bb45
bb28:
  ADDI a0, zero, 43
  CALL chapush
  JAL zero, bb25
bb29:
  ADDI s0, zero, 1
  SB s0, 216(sp)
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
  SB s0, 216(sp)
  JAL zero, bb31
bb31:
  LB s0, 216(sp)
  BNE s0, zero, bb32
  JAL zero, bb33
bb32:
  ADDI s0, zero, 1
  SB s0, 208(sp)
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
  SB s0, 208(sp)
  JAL zero, bb34
bb34:
  LB s0, 208(sp)
  BNE s0, zero, bb35
  JAL zero, bb36
bb35:
  ADDI s0, zero, 1
  SB s0, 200(sp)
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
  SB s0, 200(sp)
  JAL zero, bb37
bb37:
  LB s0, 200(sp)
  BNE s0, zero, bb38
  JAL zero, bb39
bb38:
  ADDI s0, zero, 1
  SB s0, 192(sp)
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
  SB s0, 192(sp)
  JAL zero, bb40
bb40:
  LB s0, 192(sp)
  BNE s0, zero, bb41
  JAL zero, bb42
bb41:
  ADDI s0, zero, 1
  SB s0, 184(sp)
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
  SB s0, 184(sp)
  JAL zero, bb43
bb43:
  LB s0, 184(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb27
  JAL zero, bb28
bb44:
  JAL zero, bb28
bb45:
  JAL zero, bb26
bb46:
  JAL zero, bb48
bb47:
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 42
  SLTIU s0, s1, 1
  BNE s0, zero, bb68
  JAL zero, bb69
bb48:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 43
  SLTIU s0, s1, 1
  BNE s0, zero, bb51
  JAL zero, bb52
bb49:
  CALL find
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTIU s0, s1, 1
  BNE s0, zero, bb66
  JAL zero, bb67
bb50:
  ADDI a0, zero, 45
  CALL chapush
  JAL zero, bb47
bb51:
  ADDI s0, zero, 1
  SB s0, 176(sp)
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
  SB s0, 176(sp)
  JAL zero, bb53
bb53:
  LB s0, 176(sp)
  BNE s0, zero, bb54
  JAL zero, bb55
bb54:
  ADDI s0, zero, 1
  SB s0, 168(sp)
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
  SB s0, 168(sp)
  JAL zero, bb56
bb56:
  LB s0, 168(sp)
  BNE s0, zero, bb57
  JAL zero, bb58
bb57:
  ADDI s0, zero, 1
  SB s0, 160(sp)
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
  SB s0, 160(sp)
  JAL zero, bb59
bb59:
  LB s0, 160(sp)
  BNE s0, zero, bb60
  JAL zero, bb61
bb60:
  ADDI s0, zero, 1
  SB s0, 152(sp)
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
  SB s0, 152(sp)
  JAL zero, bb62
bb62:
  LB s0, 152(sp)
  BNE s0, zero, bb63
  JAL zero, bb64
bb63:
  ADDI s0, zero, 1
  SB s0, 144(sp)
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
  SB s0, 144(sp)
  JAL zero, bb65
bb65:
  LB s0, 144(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb49
  JAL zero, bb50
bb66:
  JAL zero, bb50
bb67:
  JAL zero, bb48
bb68:
  JAL zero, bb70
bb69:
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 47
  SLTIU s0, s1, 1
  BNE s0, zero, bb84
  JAL zero, bb85
bb70:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 42
  SLTIU s0, s1, 1
  BNE s0, zero, bb73
  JAL zero, bb74
bb71:
  CALL find
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTIU s0, s1, 1
  BNE s0, zero, bb82
  JAL zero, bb83
bb72:
  ADDI a0, zero, 42
  CALL chapush
  JAL zero, bb69
bb73:
  ADDI s0, zero, 1
  SB s0, 136(sp)
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
  SB s0, 136(sp)
  JAL zero, bb75
bb75:
  LB s0, 136(sp)
  BNE s0, zero, bb76
  JAL zero, bb77
bb76:
  ADDI s0, zero, 1
  SB s0, 128(sp)
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
  SB s0, 128(sp)
  JAL zero, bb78
bb78:
  LB s0, 128(sp)
  BNE s0, zero, bb79
  JAL zero, bb80
bb79:
  ADDI s0, zero, 1
  SB s0, 120(sp)
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
  SB s0, 120(sp)
  JAL zero, bb81
bb81:
  LB s0, 120(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb71
  JAL zero, bb72
bb82:
  JAL zero, bb72
bb83:
  JAL zero, bb70
bb84:
  JAL zero, bb86
bb85:
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 37
  SLTIU s0, s1, 1
  BNE s0, zero, bb100
  JAL zero, bb101
bb86:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 42
  SLTIU s0, s1, 1
  BNE s0, zero, bb89
  JAL zero, bb90
bb87:
  CALL find
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTIU s0, s1, 1
  BNE s0, zero, bb98
  JAL zero, bb99
bb88:
  ADDI a0, zero, 47
  CALL chapush
  JAL zero, bb85
bb89:
  ADDI s0, zero, 1
  SB s0, 112(sp)
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
  SB s0, 112(sp)
  JAL zero, bb91
bb91:
  LB s0, 112(sp)
  BNE s0, zero, bb92
  JAL zero, bb93
bb92:
  ADDI s0, zero, 1
  SB s0, 104(sp)
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
  SB s0, 104(sp)
  JAL zero, bb94
bb94:
  LB s0, 104(sp)
  BNE s0, zero, bb95
  JAL zero, bb96
bb95:
  ADDI s0, zero, 1
  SB s0, 96(sp)
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
  SB s0, 96(sp)
  JAL zero, bb97
bb97:
  LB s0, 96(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb87
  JAL zero, bb88
bb98:
  JAL zero, bb88
bb99:
  JAL zero, bb86
bb100:
  JAL zero, bb102
bb101:
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
  LA s1, ii
  SW s0, 0(s1)
  JAL zero, bb13
bb102:
  LA s0, chat
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, chas
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 42
  SLTIU s0, s1, 1
  BNE s0, zero, bb105
  JAL zero, bb106
bb103:
  CALL find
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTIU s0, s1, 1
  BNE s0, zero, bb114
  JAL zero, bb115
bb104:
  ADDI a0, zero, 37
  CALL chapush
  JAL zero, bb101
bb105:
  ADDI s0, zero, 1
  SB s0, 88(sp)
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
  SB s0, 88(sp)
  JAL zero, bb107
bb107:
  LB s0, 88(sp)
  BNE s0, zero, bb108
  JAL zero, bb109
bb108:
  ADDI s0, zero, 1
  SB s0, 80(sp)
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
  SB s0, 80(sp)
  JAL zero, bb110
bb110:
  LB s0, 80(sp)
  BNE s0, zero, bb111
  JAL zero, bb112
bb111:
  ADDI s0, zero, 1
  SB s0, 72(sp)
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
  SB s0, 72(sp)
  JAL zero, bb113
bb113:
  LB s0, 72(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb103
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
  SW s0, 64(sp)
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
  JAL zero, bb119
bb119:
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get2
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 64
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb120
  JAL zero, bb121
bb120:
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get2
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 43
  SLTIU s0, s1, 1
  BNE s0, zero, bb122
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
  LD ra, 232(sp)
  LD s3, 240(sp)
  LD s2, 248(sp)
  LD s1, 256(sp)
  LD s0, 264(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb122:
  ADDI s0, zero, 1
  SB s0, 56(sp)
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
  SB s0, 56(sp)
  JAL zero, bb124
bb124:
  LB s0, 56(sp)
  BNE s0, zero, bb125
  JAL zero, bb126
bb125:
  ADDI s0, zero, 1
  SB s0, 48(sp)
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
  SB s0, 48(sp)
  JAL zero, bb127
bb127:
  LB s0, 48(sp)
  BNE s0, zero, bb128
  JAL zero, bb129
bb128:
  ADDI s0, zero, 1
  SB s0, 40(sp)
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
  SB s0, 40(sp)
  JAL zero, bb130
bb130:
  LB s0, 40(sp)
  BNE s0, zero, bb131
  JAL zero, bb132
bb131:
  ADDI s0, zero, 1
  SB s0, 32(sp)
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
  SB s0, 32(sp)
  JAL zero, bb133
bb133:
  LB s0, 32(sp)
  BNE s0, zero, bb134
  JAL zero, bb135
bb134:
  ADDI s0, zero, 1
  SB s0, 24(sp)
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
  SB s0, 24(sp)
  JAL zero, bb136
bb136:
  LB s0, 24(sp)
  BNE s0, zero, bb137
  JAL zero, bb139
bb137:
  CALL intpop
  ADD s0, a0, zero
  SW s0, 16(sp)
  CALL intpop
  ADD s0, a0, zero
  SW s0, 8(sp)
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get2
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 43
  SLTIU s0, s1, 1
  BNE s0, zero, bb140
  JAL zero, bb141
bb138:
  LA s0, i
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, i
  SW s0, 0(s1)
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
  LW s0, 16(sp)
  LW s1, 8(sp)
  ADDW s2, s0, s1
  SW s2, 0(sp)
  JAL zero, bb141
bb141:
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get2
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 45
  SLTIU s0, s1, 1
  BNE s0, zero, bb142
  JAL zero, bb143
bb142:
  LW s0, 8(sp)
  LW s1, 16(sp)
  SUBW s2, s0, s1
  SW s2, 0(sp)
  JAL zero, bb143
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
  BNE s0, zero, bb144
  JAL zero, bb145
bb144:
  LW s0, 16(sp)
  LW s1, 8(sp)
  MULW s2, s0, s1
  SW s2, 0(sp)
  JAL zero, bb145
bb145:
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get2
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 47
  SLTIU s0, s1, 1
  BNE s0, zero, bb146
  JAL zero, bb147
bb146:
  LW s0, 8(sp)
  LW s1, 16(sp)
  DIVW s2, s0, s1
  SW s2, 0(sp)
  JAL zero, bb147
bb147:
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get2
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 37
  SLTIU s0, s1, 1
  BNE s0, zero, bb148
  JAL zero, bb149
bb148:
  LW s0, 8(sp)
  LW s1, 16(sp)
  REMW s2, s0, s1
  SW s2, 0(sp)
  JAL zero, bb149
bb149:
  LA s0, i
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, get2
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 94
  SLTIU s0, s1, 1
  BNE s0, zero, bb150
  JAL zero, bb151
bb150:
  LW s0, 8(sp)
  LW s1, 16(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL power
  ADD s0, a0, zero
  SW s0, 0(sp)
  JAL zero, bb151
bb151:
  LW s0, 0(sp)
  ADD a0, s0, zero
  CALL intpush
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
find:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  CALL chapop
  ADD s0, a0, zero
  LA s1, c
  SW s0, 0(s1)
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
  LA s0, chat
  LW s1, 0(s0)
  XOR s0, s1, zero
  SLTIU s1, s0, 1
  BNE s1, zero, bb158
  JAL zero, bb159
bb158:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb159:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
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
  SD ra, 24(sp)
  SD s3, 32(sp)
  SD s2, 40(sp)
  SD s1, 48(sp)
  SD s0, 56(sp)
  ADD s0, a0, zero
  CALL getch
  ADD s1, a0, zero
  SW s1, 16(sp)
  SW zero, 8(sp)
  JAL zero, bb162
bb162:
  LW s1, 16(sp)
  XORI s2, s1, 13
  SLTU s1, zero, s2
  BNE s1, zero, bb165
  JAL zero, bb166
bb163:
  LW s1, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 16(sp)
  SW s2, 0(s1)
  LW s1, 8(sp)
  ADDIW s2, s1, 1
  SW s2, 8(sp)
  CALL getch
  ADD s1, a0, zero
  SW s1, 16(sp)
  JAL zero, bb162
bb164:
  LW s1, 8(sp)
  ADD a0, s1, zero
  LD ra, 24(sp)
  LD s3, 32(sp)
  LD s2, 40(sp)
  LD s1, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb165:
  LW s1, 16(sp)
  XORI s2, s1, 10
  SLTU s1, zero, s2
  SB s1, 0(sp)
  JAL zero, bb167
bb166:
  SB zero, 0(sp)
  JAL zero, bb167
bb167:
  LB s1, 0(sp)
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb163
  JAL zero, bb164
isdigit:
  ADDI sp, sp, -48
  SD ra, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  SW s0, 8(sp)
  SLTI s1, s0, 48
  XORI s0, s1, 1
  BNE s0, zero, bb169
  JAL zero, bb170
bb169:
  LW s0, 8(sp)
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XORI s0, s2, 1
  SB s0, 0(sp)
  JAL zero, bb171
bb170:
  SB zero, 0(sp)
  JAL zero, bb171
bb171:
  LB s0, 0(sp)
  BNE s0, zero, bb172
  JAL zero, bb173
bb172:
  ADDI a0, zero, 1
  LD ra, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb173:
  ADD a0, zero, zero
  LD ra, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
