.global same
.global main
.global find
.global prim
.global quick_read
.section .bss
c:
.space 4020
v:
.space 4020
fa:
.space 4020

u:
.space 4020



.section .data



n:
.word 0x00000000

m:
.word 0x00000000
maxn:
.word 0x00000069
maxm:
.word 0x000003ed
.section .text
same:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD a0, s0, zero
  CALL find
  ADD s0, a0, zero
  ADD a0, s1, zero
  CALL find
  ADD s1, a0, zero
  XOR s2, s0, s1
  SLTIU s0, s2, 1
  BNE s0, zero, bb1
  JAL zero, bb2
bb1:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -400
  SD s11, 296(sp)
  SD ra, 304(sp)
  SD s3, 312(sp)
  SD s0, 320(sp)
  SD s5, 328(sp)
  SD s7, 336(sp)
  SD s10, 344(sp)
  SD s1, 352(sp)
  SD s6, 360(sp)
  SD s2, 368(sp)
  SD s4, 376(sp)
  SD s8, 384(sp)
  SD s9, 392(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb33
bb4:
  CALL getch
  ADD s1, a0, zero
  ADD s2, zero, zero
  ADD s7, s1, zero
  JAL zero, bb49
bb5:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  ADD s4, zero, zero
  JAL zero, bb6
bb6:
  ADD t4, s4, zero
  SW t4, 136(sp)
  LW t4, 136(sp)
  LW t3, 144(sp)
  SLT s6, t4, t3
  BNE s6, zero, bb7
  JAL zero, bb11
bb7:
  ADDI s6, zero, 4
  LW t3, 136(sp)
  MULW t4, t3, s6
  SW t4, 128(sp)
  LA s6, u
  LW t3, 128(sp)
  ADD t4, s6, t3
  SD t4, 120(sp)
  CALL getch
  ADD s6, a0, zero
  ADD s1, zero, zero
  ADD s10, s6, zero
  JAL zero, bb65
bb8:
  LW t4, 184(sp)
  ADD s1, t4, zero
  LD t4, 120(sp)
  SW s1, 0(t4)
  LA s1, v
  LW t3, 128(sp)
  ADD t4, s1, t3
  SD t4, 208(sp)
  CALL getch
  ADD s1, a0, zero
  ADD s8, zero, zero
  ADD s9, s1, zero
  JAL zero, bb81
bb9:
  LW t4, 248(sp)
  ADD s2, t4, zero
  LD t4, 208(sp)
  SW s2, 0(t4)
  LA s2, c
  LW t4, 128(sp)
  ADD s5, s2, t4
  CALL getch
  ADD s2, a0, zero
  ADD s7, zero, zero
  ADD s10, s2, zero
  JAL zero, bb97
bb10:
  ADD s0, s1, zero
  SW s0, 0(s5)
  LW t4, 136(sp)
  ADDIW s0, t4, 1
  ADD s4, s0, zero
  JAL zero, bb6
bb11:
  JAL zero, bb13
bb12:
  ADD a0, s3, zero
  LD s11, 296(sp)
  LD ra, 304(sp)
  LD s3, 312(sp)
  LD s0, 320(sp)
  LD s5, 328(sp)
  LD s7, 336(sp)
  LD s10, 344(sp)
  LD s1, 352(sp)
  LD s6, 360(sp)
  LD s2, 368(sp)
  LD s4, 376(sp)
  LD s8, 384(sp)
  LD s9, 392(sp)
  ADDI sp, sp, 400
  JALR zero, 0(ra)
bb13:
  ADD t4, zero, zero
  SW t4, 288(sp)
  ADD t4, zero, zero
  SW t4, 272(sp)
  JAL zero, bb14
bb14:
  LW t4, 272(sp)
  ADD s2, t4, zero
  LW t4, 288(sp)
  ADD s3, t4, zero
  LA s4, m
  LW s5, 0(s4)
  SLT s4, s2, s5
  BNE s4, zero, bb15
  JAL zero, bb16
bb15:
  ADDIW t4, s2, 1
  SW t4, 264(sp)
  ADD s5, s3, zero
  LW t4, 264(sp)
  ADD s3, t4, zero
  JAL zero, bb17
bb16:
  ADDI s0, zero, 1
  JAL zero, bb22
bb17:
  ADD s6, s3, zero
  ADD t4, s5, zero
  SW t4, 280(sp)
  LA s8, m
  LW s9, 0(s8)
  SLT s8, s6, s9
  BNE s8, zero, bb18
  JAL zero, bb19
bb18:
  ADDI s8, zero, 4
  MULW s9, s2, s8
  LA s8, c
  ADD s10, s8, s9
  LW s8, 0(s10)
  ADDI s11, zero, 4
  MULW s4, s6, s11
  LA s11, c
  ADD s1, s11, s4
  LW s11, 0(s1)
  SLT s7, s11, s8
  BNE s7, zero, bb20
  JAL zero, bb113
bb19:
  LW t3, 280(sp)
  ADD t4, t3, zero
  SW t4, 288(sp)
  LW t3, 264(sp)
  ADD t4, t3, zero
  SW t4, 272(sp)
  JAL zero, bb14
bb20:
  LA s7, u
  ADD s8, s7, s9
  LW s7, 0(s8)
  LA s11, u
  ADD s0, s11, s4
  LW s11, 0(s0)
  SW s11, 0(s8)
  SW s7, 0(s0)
  LA s0, v
  ADD s7, s0, s9
  LW s0, 0(s7)
  LA s8, v
  ADD s9, s8, s4
  LW s4, 0(s9)
  SW s4, 0(s7)
  SW s0, 0(s9)
  LW s0, 0(s10)
  LW s4, 0(s1)
  SW s4, 0(s10)
  SW s0, 0(s1)
  ADD s1, s0, zero
  JAL zero, bb21
bb21:
  ADD s0, s1, zero
  ADDIW s4, s6, 1
  ADD s5, s0, zero
  ADD s3, s4, zero
  JAL zero, bb17
bb22:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  BNE s3, zero, bb23
  JAL zero, bb24
bb23:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, fa
  ADD s4, s2, s3
  SW s1, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb22
bb24:
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb25
bb25:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, m
  LW s5, 0(s4)
  SLT s4, s2, s5
  BNE s4, zero, bb26
  JAL zero, bb28
bb26:
  ADDI s4, zero, 4
  MULW s5, s2, s4
  LA s4, u
  ADD s6, s4, s5
  LW s4, 0(s6)
  LA s7, v
  ADD s8, s7, s5
  LW s7, 0(s8)
  ADD a0, s4, zero
  CALL find
  ADD s4, a0, zero
  ADD a0, s7, zero
  CALL find
  ADD s7, a0, zero
  XOR s9, s4, s7
  SLTIU s4, s9, 1
  BNE s4, zero, bb31
  JAL zero, bb32
bb27:
  ADD s7, s4, zero
  XOR s9, s7, zero
  SLTU s7, zero, s9
  BNE s7, zero, bb29
  JAL zero, bb30
bb28:
  JAL zero, bb12
bb29:
  ADD s0, s3, zero
  ADD s1, s2, zero
  JAL zero, bb25
bb30:
  LA s7, c
  ADD s9, s7, s5
  LW s7, 0(s9)
  ADDW s9, s3, s7
  LW s7, 0(s6)
  ADD a0, s7, zero
  CALL find
  ADD s7, a0, zero
  ADDI s10, zero, 4
  MULW s11, s7, s10
  LA s7, fa
  ADD s10, s7, s11
  LW s7, 0(s8)
  SW s7, 0(s10)
  ADDIW s7, s2, 1
  ADD s0, s9, zero
  ADD s1, s7, zero
  JAL zero, bb25
bb31:
  ADDI s4, zero, 1
  JAL zero, bb27
bb32:
  ADD s4, zero, zero
  JAL zero, bb27
bb33:
  ADD t4, s2, zero
  SW t4, 8(sp)
  ADD t4, s1, zero
  SW t4, 0(sp)
  LW t4, 8(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb36
  JAL zero, bb37
bb34:
  LW t4, 8(sp)
  XORI s5, t4, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb39
  JAL zero, bb114
bb35:
  ADD s1, zero, zero
  LW t4, 8(sp)
  ADD s2, t4, zero
  JAL zero, bb41
bb36:
  ADDI t4, zero, 1
  SB t4, 16(sp)
  JAL zero, bb38
bb37:
  ADDI s0, zero, 57
  LW t4, 8(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 16(sp)
  JAL zero, bb38
bb38:
  LB t4, 16(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb34
  JAL zero, bb35
bb39:
  ADDI s5, zero, 1
  JAL zero, bb40
bb40:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb33
bb41:
  ADD t4, s2, zero
  SW t4, 32(sp)
  ADD t4, s1, zero
  SW t4, 24(sp)
  LW t4, 32(sp)
  SLTI s7, t4, 48
  XORI s8, s7, 1
  BNE s8, zero, bb44
  JAL zero, bb45
bb42:
  ADDI s7, zero, 10
  LW t4, 24(sp)
  MULW s9, t4, s7
  LW t4, 32(sp)
  ADDW s7, s9, t4
  ADDI s9, zero, 48
  SUBW s10, s7, s9
  CALL getch
  ADD s7, a0, zero
  ADD s1, s10, zero
  ADD s2, s7, zero
  JAL zero, bb41
bb43:
  LW t4, 0(sp)
  XOR s1, t4, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb47
  JAL zero, bb48
bb44:
  ADDI s7, zero, 57
  LW t4, 32(sp)
  SLT s8, s7, t4
  XORI s7, s8, 1
  ADD t4, s7, zero
  SB t4, 40(sp)
  JAL zero, bb46
bb45:
  ADD t4, zero, zero
  SB t4, 40(sp)
  JAL zero, bb46
bb46:
  LB t4, 40(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb42
  JAL zero, bb43
bb47:
  JAL zero, bb4
bb48:
  JAL zero, bb4
bb49:
  ADD t4, s7, zero
  SW t4, 56(sp)
  ADD t4, s2, zero
  SW t4, 48(sp)
  LW t4, 56(sp)
  SLTI s10, t4, 48
  BNE s10, zero, bb52
  JAL zero, bb53
bb50:
  LW t4, 56(sp)
  XORI s11, t4, 45
  SLTIU s3, s11, 1
  BNE s3, zero, bb55
  JAL zero, bb115
bb51:
  ADD s0, zero, zero
  LW t4, 56(sp)
  ADD s2, t4, zero
  JAL zero, bb57
bb52:
  ADDI t4, zero, 1
  SB t4, 64(sp)
  JAL zero, bb54
bb53:
  ADDI s0, zero, 57
  LW t4, 56(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 64(sp)
  JAL zero, bb54
bb54:
  LB t4, 64(sp)
  ADD s11, t4, zero
  BNE s11, zero, bb50
  JAL zero, bb51
bb55:
  ADDI s3, zero, 1
  JAL zero, bb56
bb56:
  ADD s11, s3, zero
  CALL getch
  ADD s0, a0, zero
  ADD s2, s11, zero
  ADD s7, s0, zero
  JAL zero, bb49
bb57:
  ADD t4, s2, zero
  SW t4, 80(sp)
  ADD t4, s0, zero
  SW t4, 72(sp)
  LW t4, 80(sp)
  SLTI s11, t4, 48
  XORI s4, s11, 1
  BNE s4, zero, bb60
  JAL zero, bb61
bb58:
  ADDI s4, zero, 10
  LW t4, 72(sp)
  MULW s6, t4, s4
  LW t4, 80(sp)
  ADDW s4, s6, t4
  ADDI s6, zero, 48
  SUBW s5, s4, s6
  CALL getch
  ADD s4, a0, zero
  ADD s0, s5, zero
  ADD s2, s4, zero
  JAL zero, bb57
bb59:
  LW t4, 48(sp)
  XOR s0, t4, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb63
  JAL zero, bb64
bb60:
  ADDI s4, zero, 57
  LW t4, 80(sp)
  SLT s11, s4, t4
  XORI s4, s11, 1
  ADD t4, s4, zero
  SB t4, 88(sp)
  JAL zero, bb62
bb61:
  ADD t4, zero, zero
  SB t4, 88(sp)
  JAL zero, bb62
bb62:
  LB t4, 88(sp)
  ADD s4, t4, zero
  BNE s4, zero, bb58
  JAL zero, bb59
bb63:
  LW t4, 72(sp)
  SUB s0, zero, t4
  ADD t4, s0, zero
  SW t4, 96(sp)
  JAL zero, bb5
bb64:
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  JAL zero, bb5
bb65:
  ADD t4, s10, zero
  SW t4, 112(sp)
  ADD t4, s1, zero
  SW t4, 104(sp)
  LW t4, 112(sp)
  SLTI s3, t4, 48
  BNE s3, zero, bb68
  JAL zero, bb69
bb66:
  LW t4, 112(sp)
  XORI s11, t4, 45
  SLTIU s2, s11, 1
  BNE s2, zero, bb71
  JAL zero, bb116
bb67:
  ADD s1, zero, zero
  LW t4, 112(sp)
  ADD s2, t4, zero
  JAL zero, bb73
bb68:
  ADDI t4, zero, 1
  SB t4, 152(sp)
  JAL zero, bb70
bb69:
  ADDI s0, zero, 57
  LW t4, 112(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 152(sp)
  JAL zero, bb70
bb70:
  LB t4, 152(sp)
  ADD s11, t4, zero
  BNE s11, zero, bb66
  JAL zero, bb67
bb71:
  ADDI s2, zero, 1
  JAL zero, bb72
bb72:
  ADD s11, s2, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s11, zero
  ADD s10, s7, zero
  JAL zero, bb65
bb73:
  ADD t4, s2, zero
  SW t4, 168(sp)
  ADD t4, s1, zero
  SW t4, 160(sp)
  LW t4, 168(sp)
  SLTI s11, t4, 48
  XORI s6, s11, 1
  BNE s6, zero, bb76
  JAL zero, bb77
bb74:
  ADDI s6, zero, 10
  LW t4, 160(sp)
  MULW s9, t4, s6
  LW t4, 168(sp)
  ADDW s6, s9, t4
  ADDI s9, zero, 48
  SUBW s8, s6, s9
  CALL getch
  ADD s6, a0, zero
  ADD s1, s8, zero
  ADD s2, s6, zero
  JAL zero, bb73
bb75:
  LW t4, 104(sp)
  XOR s1, t4, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb79
  JAL zero, bb80
bb76:
  ADDI s6, zero, 57
  LW t4, 168(sp)
  SLT s11, s6, t4
  XORI s6, s11, 1
  ADD t4, s6, zero
  SB t4, 176(sp)
  JAL zero, bb78
bb77:
  ADD t4, zero, zero
  SB t4, 176(sp)
  JAL zero, bb78
bb78:
  LB t4, 176(sp)
  ADD s6, t4, zero
  BNE s6, zero, bb74
  JAL zero, bb75
bb79:
  LW t4, 160(sp)
  SUB s1, zero, t4
  ADD t4, s1, zero
  SW t4, 184(sp)
  JAL zero, bb8
bb80:
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  JAL zero, bb8
bb81:
  ADD t4, s9, zero
  SW t4, 200(sp)
  ADD t4, s8, zero
  SW t4, 192(sp)
  LW t4, 200(sp)
  SLTI s0, t4, 48
  BNE s0, zero, bb84
  JAL zero, bb85
bb82:
  LW t4, 200(sp)
  XORI s3, t4, 45
  SLTIU s10, s3, 1
  BNE s10, zero, bb87
  JAL zero, bb117
bb83:
  ADD s3, zero, zero
  LW t4, 200(sp)
  ADD s7, t4, zero
  JAL zero, bb89
bb84:
  ADDI t4, zero, 1
  SB t4, 216(sp)
  JAL zero, bb86
bb85:
  ADDI s0, zero, 57
  LW t4, 200(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 216(sp)
  JAL zero, bb86
bb86:
  LB t4, 216(sp)
  ADD s3, t4, zero
  BNE s3, zero, bb82
  JAL zero, bb83
bb87:
  ADDI s3, zero, 1
  JAL zero, bb88
bb88:
  ADD s10, s3, zero
  CALL getch
  ADD s7, a0, zero
  ADD s8, s10, zero
  ADD s9, s7, zero
  JAL zero, bb81
bb89:
  ADD t4, s7, zero
  SW t4, 232(sp)
  ADD t4, s3, zero
  SW t4, 224(sp)
  LW t4, 232(sp)
  SLTI s10, t4, 48
  XORI s11, s10, 1
  BNE s11, zero, bb92
  JAL zero, bb93
bb90:
  ADDI s10, zero, 10
  LW t4, 224(sp)
  MULW s2, t4, s10
  LW t4, 232(sp)
  ADDW s10, s2, t4
  ADDI s2, zero, 48
  SUBW s5, s10, s2
  CALL getch
  ADD s2, a0, zero
  ADD s3, s5, zero
  ADD s7, s2, zero
  JAL zero, bb89
bb91:
  LW t4, 192(sp)
  XOR s2, t4, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb95
  JAL zero, bb96
bb92:
  ADDI s10, zero, 57
  LW t4, 232(sp)
  SLT s11, s10, t4
  XORI s10, s11, 1
  ADD t4, s10, zero
  SB t4, 240(sp)
  JAL zero, bb94
bb93:
  ADD t4, zero, zero
  SB t4, 240(sp)
  JAL zero, bb94
bb94:
  LB t4, 240(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb90
  JAL zero, bb91
bb95:
  LW t4, 224(sp)
  SUB s2, zero, t4
  ADD t4, s2, zero
  SW t4, 248(sp)
  JAL zero, bb9
bb96:
  LW t3, 224(sp)
  ADD t4, t3, zero
  SW t4, 248(sp)
  JAL zero, bb9
bb97:
  ADD s2, s10, zero
  ADD t4, s7, zero
  SW t4, 256(sp)
  SLTI s6, s2, 48
  BNE s6, zero, bb100
  JAL zero, bb101
bb98:
  XORI s0, s2, 45
  SLTIU s9, s0, 1
  BNE s9, zero, bb103
  JAL zero, bb118
bb99:
  ADD s0, zero, zero
  ADD s7, s2, zero
  JAL zero, bb105
bb100:
  ADDI s6, zero, 1
  JAL zero, bb102
bb101:
  ADDI s0, zero, 57
  SLT s1, s0, s2
  ADD s6, s1, zero
  JAL zero, bb102
bb102:
  ADD s0, s6, zero
  BNE s0, zero, bb98
  JAL zero, bb99
bb103:
  ADDI s0, zero, 1
  JAL zero, bb104
bb104:
  ADD s9, s0, zero
  CALL getch
  ADD s8, a0, zero
  ADD s7, s9, zero
  ADD s10, s8, zero
  JAL zero, bb97
bb105:
  ADD s8, s7, zero
  ADD s9, s0, zero
  SLTI s10, s8, 48
  XORI s11, s10, 1
  BNE s11, zero, bb108
  JAL zero, bb109
bb106:
  ADDI s10, zero, 10
  MULW s3, s9, s10
  ADDW s10, s3, s8
  ADDI s3, zero, 48
  SUBW s1, s10, s3
  CALL getch
  ADD s3, a0, zero
  ADD s0, s1, zero
  ADD s7, s3, zero
  JAL zero, bb105
bb107:
  LW t4, 256(sp)
  XOR s0, t4, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb111
  JAL zero, bb112
bb108:
  ADDI s10, zero, 57
  SLT s11, s10, s8
  XORI s10, s11, 1
  ADD s11, s10, zero
  JAL zero, bb110
bb109:
  ADD s11, zero, zero
  JAL zero, bb110
bb110:
  ADD s10, s11, zero
  BNE s10, zero, bb106
  JAL zero, bb107
bb111:
  SUB s0, zero, s9
  ADD s1, s0, zero
  JAL zero, bb10
bb112:
  ADD s1, s9, zero
  JAL zero, bb10
bb113:
  LW t4, 280(sp)
  ADD s1, t4, zero
  JAL zero, bb21
bb114:
  LW t4, 0(sp)
  ADD s5, t4, zero
  JAL zero, bb40
bb115:
  LW t4, 48(sp)
  ADD s3, t4, zero
  JAL zero, bb56
bb116:
  LW t4, 104(sp)
  ADD s2, t4, zero
  JAL zero, bb72
bb117:
  LW t4, 192(sp)
  ADD s3, t4, zero
  JAL zero, bb88
bb118:
  LW t4, 256(sp)
  ADD s0, t4, zero
  JAL zero, bb104
find:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, fa
  ADD s3, s1, s2
  LW s1, 0(s3)
  XOR s2, s0, s1
  SLTIU s1, s2, 1
  BNE s1, zero, bb120
  JAL zero, bb121
bb120:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb121:
  LW s0, 0(s3)
  ADD a0, s0, zero
  CALL find
  ADD s0, a0, zero
  SW s0, 0(s3)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
prim:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s10, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD s11, 96(sp)
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb123
bb123:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, m
  LW s5, 0(s4)
  SLT s4, s2, s5
  BNE s4, zero, bb124
  JAL zero, bb125
bb124:
  ADDIW s4, s2, 1
  ADD s5, s3, zero
  ADD s3, s4, zero
  JAL zero, bb126
bb125:
  ADDI s0, zero, 1
  JAL zero, bb131
bb126:
  ADD s6, s3, zero
  ADD s7, s5, zero
  LA s8, m
  LW s9, 0(s8)
  SLT s8, s6, s9
  BNE s8, zero, bb127
  JAL zero, bb128
bb127:
  ADDI s8, zero, 4
  MULW s9, s2, s8
  LA s8, c
  ADD s10, s8, s9
  LW s8, 0(s10)
  ADDI s11, zero, 4
  MULW t0, s6, s11
  LA s11, c
  ADD t1, s11, t0
  LW s11, 0(t1)
  SLT t2, s11, s8
  BNE t2, zero, bb129
  JAL zero, bb142
bb128:
  ADD s0, s7, zero
  ADD s1, s4, zero
  JAL zero, bb123
bb129:
  LA s8, u
  ADD s11, s8, s9
  LW s8, 0(s11)
  LA t2, u
  ADD a0, t2, t0
  LW t2, 0(a0)
  SW t2, 0(s11)
  SW s8, 0(a0)
  LA s8, v
  ADD s11, s8, s9
  LW s8, 0(s11)
  LA s9, v
  ADD t2, s9, t0
  LW s9, 0(t2)
  SW s9, 0(s11)
  SW s8, 0(t2)
  LW s8, 0(s10)
  LW s9, 0(t1)
  SW s9, 0(s10)
  SW s8, 0(t1)
  ADD s9, s8, zero
  JAL zero, bb130
bb130:
  ADD s8, s9, zero
  ADDIW s10, s6, 1
  ADD s5, s8, zero
  ADD s3, s10, zero
  JAL zero, bb126
bb131:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  BNE s3, zero, bb132
  JAL zero, bb133
bb132:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, fa
  ADD s4, s2, s3
  SW s1, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb131
bb133:
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb134
bb134:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, m
  LW s5, 0(s4)
  SLT s4, s2, s5
  BNE s4, zero, bb135
  JAL zero, bb137
bb135:
  ADDI s4, zero, 4
  MULW s5, s2, s4
  LA s4, u
  ADD s6, s4, s5
  LW s4, 0(s6)
  LA s7, v
  ADD s8, s7, s5
  LW s7, 0(s8)
  ADD a0, s4, zero
  CALL find
  ADD s4, a0, zero
  ADD a0, s7, zero
  CALL find
  ADD s7, a0, zero
  XOR s9, s4, s7
  SLTIU s4, s9, 1
  BNE s4, zero, bb140
  JAL zero, bb141
bb136:
  ADD s7, s4, zero
  XOR s9, s7, zero
  SLTU s7, zero, s9
  BNE s7, zero, bb138
  JAL zero, bb139
bb137:
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s10, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb138:
  ADD s0, s3, zero
  ADD s1, s2, zero
  JAL zero, bb134
bb139:
  LA s7, c
  ADD s9, s7, s5
  LW s7, 0(s9)
  ADDW s9, s3, s7
  LW s7, 0(s6)
  ADD a0, s7, zero
  CALL find
  ADD s7, a0, zero
  ADDI s10, zero, 4
  MULW s11, s7, s10
  LA s7, fa
  ADD s10, s7, s11
  LW s7, 0(s8)
  SW s7, 0(s10)
  ADDIW s7, s2, 1
  ADD s0, s9, zero
  ADD s1, s7, zero
  JAL zero, bb134
bb140:
  ADDI s4, zero, 1
  JAL zero, bb136
bb141:
  ADD s4, zero, zero
  JAL zero, bb136
bb142:
  ADD s9, s7, zero
  JAL zero, bb130
quick_read:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s7, 24(sp)
  SD s10, 32(sp)
  SD s1, 40(sp)
  SD s6, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb144
bb144:
  ADD s0, s2, zero
  ADD s3, s1, zero
  SLTI s4, s0, 48
  BNE s4, zero, bb147
  JAL zero, bb148
bb145:
  XORI s5, s0, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb150
  JAL zero, bb160
bb146:
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb152
bb147:
  ADDI s4, zero, 1
  JAL zero, bb149
bb148:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  ADD s4, s2, zero
  JAL zero, bb149
bb149:
  ADD s5, s4, zero
  BNE s5, zero, bb145
  JAL zero, bb146
bb150:
  ADDI s5, zero, 1
  JAL zero, bb151
bb151:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb144
bb152:
  ADD s5, s2, zero
  ADD s6, s1, zero
  SLTI s7, s5, 48
  XORI s8, s7, 1
  BNE s8, zero, bb155
  JAL zero, bb156
bb153:
  ADDI s7, zero, 10
  MULW s9, s6, s7
  ADDW s7, s9, s5
  ADDI s9, zero, 48
  SUBW s10, s7, s9
  CALL getch
  ADD s7, a0, zero
  ADD s1, s10, zero
  ADD s2, s7, zero
  JAL zero, bb152
bb154:
  XOR s1, s3, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb158
  JAL zero, bb159
bb155:
  ADDI s7, zero, 57
  SLT s8, s7, s5
  XORI s7, s8, 1
  ADD s8, s7, zero
  JAL zero, bb157
bb156:
  ADD s8, zero, zero
  JAL zero, bb157
bb157:
  ADD s7, s8, zero
  BNE s7, zero, bb153
  JAL zero, bb154
bb158:
  SUB s1, zero, s6
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s10, 32(sp)
  LD s1, 40(sp)
  LD s6, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb159:
  ADD a0, s6, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s10, 32(sp)
  LD s1, 40(sp)
  LD s6, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb160:
  ADD s5, s3, zero
  JAL zero, bb151
