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
  ADDI sp, sp, -272
  SD ra, 160(sp)
  SD s11, 168(sp)
  SD s3, 176(sp)
  SD s0, 184(sp)
  SD s5, 192(sp)
  SD s7, 200(sp)
  SD s10, 208(sp)
  SD s1, 216(sp)
  SD s6, 224(sp)
  SD s2, 232(sp)
  SD s4, 240(sp)
  SD s8, 248(sp)
  SD s9, 256(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb30
bb4:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  ADD s4, zero, zero
  JAL zero, bb5
bb5:
  ADD t4, s4, zero
  SW t4, 76(sp)
  LW t4, 76(sp)
  LW t3, 80(sp)
  SLT s6, t4, t3
  BNE s6, zero, bb6
  JAL zero, bb10
bb6:
  ADDI s6, zero, 4
  LW t3, 76(sp)
  MULW t4, t3, s6
  SW t4, 72(sp)
  LA s6, u
  LW t3, 72(sp)
  ADD t4, s6, t3
  SD t4, 64(sp)
  CALL getch
  ADD s6, a0, zero
  ADD s1, zero, zero
  ADD s10, s6, zero
  JAL zero, bb60
bb7:
  LW t4, 100(sp)
  ADD s1, t4, zero
  LD t4, 64(sp)
  SW s1, 0(t4)
  LA s1, v
  LW t3, 72(sp)
  ADD t4, s1, t3
  SD t4, 112(sp)
  CALL getch
  ADD s1, a0, zero
  ADD s8, zero, zero
  ADD s9, s1, zero
  JAL zero, bb76
bb8:
  LW t4, 136(sp)
  ADD s2, t4, zero
  LD t4, 112(sp)
  SW s2, 0(t4)
  LA s2, c
  LW t4, 72(sp)
  ADD s5, s2, t4
  CALL getch
  ADD s2, a0, zero
  ADD s7, zero, zero
  ADD s10, s2, zero
  JAL zero, bb92
bb9:
  ADD s0, s1, zero
  SW s0, 0(s5)
  LW t4, 76(sp)
  ADDIW s0, t4, 1
  ADD s4, s0, zero
  JAL zero, bb5
bb10:
  ADD t4, zero, zero
  SW t4, 156(sp)
  ADD t4, zero, zero
  SW t4, 148(sp)
  JAL zero, bb11
bb11:
  LW t4, 148(sp)
  ADD s2, t4, zero
  LW t4, 156(sp)
  ADD s3, t4, zero
  LA s4, m
  LW s5, 0(s4)
  SLT s4, s2, s5
  BNE s4, zero, bb12
  JAL zero, bb13
bb12:
  ADDIW t4, s2, 1
  SW t4, 144(sp)
  ADD s5, s3, zero
  LW t4, 144(sp)
  ADD s3, t4, zero
  JAL zero, bb14
bb13:
  ADDI s0, zero, 1
  JAL zero, bb19
bb14:
  ADD s6, s3, zero
  ADD t4, s5, zero
  SW t4, 152(sp)
  LA s8, m
  LW s9, 0(s8)
  SLT s8, s6, s9
  BNE s8, zero, bb15
  JAL zero, bb16
bb15:
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
  BNE s7, zero, bb17
  JAL zero, bb108
bb16:
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 148(sp)
  JAL zero, bb11
bb17:
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
  JAL zero, bb18
bb18:
  ADD s0, s1, zero
  ADDIW s4, s6, 1
  ADD s5, s0, zero
  ADD s3, s4, zero
  JAL zero, bb14
bb19:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  BNE s3, zero, bb20
  JAL zero, bb21
bb20:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, fa
  ADD s4, s2, s3
  SW s1, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb19
bb21:
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb22
bb22:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, m
  LW s5, 0(s4)
  SLT s4, s2, s5
  BNE s4, zero, bb23
  JAL zero, bb25
bb23:
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
  BNE s4, zero, bb28
  JAL zero, bb29
bb24:
  ADD s7, s4, zero
  XOR s9, s7, zero
  SLTU s7, zero, s9
  BNE s7, zero, bb26
  JAL zero, bb27
bb25:
  ADD a0, s3, zero
  LD ra, 160(sp)
  LD s11, 168(sp)
  LD s3, 176(sp)
  LD s0, 184(sp)
  LD s5, 192(sp)
  LD s7, 200(sp)
  LD s10, 208(sp)
  LD s1, 216(sp)
  LD s6, 224(sp)
  LD s2, 232(sp)
  LD s4, 240(sp)
  LD s8, 248(sp)
  LD s9, 256(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb26:
  ADD s0, s3, zero
  ADD s1, s2, zero
  JAL zero, bb22
bb27:
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
  JAL zero, bb22
bb28:
  ADDI s4, zero, 1
  JAL zero, bb24
bb29:
  ADD s4, zero, zero
  JAL zero, bb24
bb30:
  ADD t4, s2, zero
  SW t4, 4(sp)
  ADD t4, s1, zero
  SW t4, 0(sp)
  LW t4, 4(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb33
  JAL zero, bb34
bb31:
  LW t4, 4(sp)
  XORI s5, t4, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb36
  JAL zero, bb109
bb32:
  ADD s1, zero, zero
  LW t4, 4(sp)
  ADD s2, t4, zero
  JAL zero, bb38
bb33:
  ADDI t4, zero, 1
  SB t4, 8(sp)
  JAL zero, bb35
bb34:
  ADDI s0, zero, 57
  LW t4, 4(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 8(sp)
  JAL zero, bb35
bb35:
  LB t4, 8(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb31
  JAL zero, bb32
bb36:
  ADDI s5, zero, 1
  JAL zero, bb37
bb37:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb30
bb38:
  ADD t4, s2, zero
  SW t4, 16(sp)
  ADD t4, s1, zero
  SW t4, 12(sp)
  LW t4, 16(sp)
  SLTI s7, t4, 48
  XORI s8, s7, 1
  BNE s8, zero, bb41
  JAL zero, bb42
bb39:
  ADDI s7, zero, 10
  LW t4, 12(sp)
  MULW s9, t4, s7
  LW t4, 16(sp)
  ADDW s7, s9, t4
  ADDI s9, zero, 48
  SUBW s10, s7, s9
  CALL getch
  ADD s7, a0, zero
  ADD s1, s10, zero
  ADD s2, s7, zero
  JAL zero, bb38
bb40:
  CALL getch
  ADD s1, a0, zero
  ADD s2, zero, zero
  ADD s7, s1, zero
  JAL zero, bb44
bb41:
  ADDI s7, zero, 57
  LW t4, 16(sp)
  SLT s8, s7, t4
  XORI s7, s8, 1
  ADD t4, s7, zero
  SB t4, 20(sp)
  JAL zero, bb43
bb42:
  ADD t4, zero, zero
  SB t4, 20(sp)
  JAL zero, bb43
bb43:
  LB t4, 20(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb39
  JAL zero, bb40
bb44:
  ADD t4, s7, zero
  SW t4, 28(sp)
  ADD t4, s2, zero
  SW t4, 24(sp)
  LW t4, 28(sp)
  SLTI s10, t4, 48
  BNE s10, zero, bb47
  JAL zero, bb48
bb45:
  LW t4, 28(sp)
  XORI s11, t4, 45
  SLTIU s3, s11, 1
  BNE s3, zero, bb50
  JAL zero, bb110
bb46:
  ADD s0, zero, zero
  LW t4, 28(sp)
  ADD s2, t4, zero
  JAL zero, bb52
bb47:
  ADDI t4, zero, 1
  SB t4, 32(sp)
  JAL zero, bb49
bb48:
  ADDI s0, zero, 57
  LW t4, 28(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 32(sp)
  JAL zero, bb49
bb49:
  LB t4, 32(sp)
  ADD s11, t4, zero
  BNE s11, zero, bb45
  JAL zero, bb46
bb50:
  ADDI s3, zero, 1
  JAL zero, bb51
bb51:
  ADD s11, s3, zero
  CALL getch
  ADD s0, a0, zero
  ADD s2, s11, zero
  ADD s7, s0, zero
  JAL zero, bb44
bb52:
  ADD t4, s2, zero
  SW t4, 40(sp)
  ADD t4, s0, zero
  SW t4, 36(sp)
  LW t4, 40(sp)
  SLTI s11, t4, 48
  XORI s4, s11, 1
  BNE s4, zero, bb55
  JAL zero, bb56
bb53:
  ADDI s4, zero, 10
  LW t4, 36(sp)
  MULW s6, t4, s4
  LW t4, 40(sp)
  ADDW s4, s6, t4
  ADDI s6, zero, 48
  SUBW s5, s4, s6
  CALL getch
  ADD s4, a0, zero
  ADD s0, s5, zero
  ADD s2, s4, zero
  JAL zero, bb52
bb54:
  LW t4, 24(sp)
  XOR s0, t4, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb58
  JAL zero, bb59
bb55:
  ADDI s4, zero, 57
  LW t4, 40(sp)
  SLT s11, s4, t4
  XORI s4, s11, 1
  ADD t4, s4, zero
  SB t4, 44(sp)
  JAL zero, bb57
bb56:
  ADD t4, zero, zero
  SB t4, 44(sp)
  JAL zero, bb57
bb57:
  LB t4, 44(sp)
  ADD s4, t4, zero
  BNE s4, zero, bb53
  JAL zero, bb54
bb58:
  LW t4, 36(sp)
  SUB s0, zero, t4
  ADD t4, s0, zero
  SW t4, 48(sp)
  JAL zero, bb4
bb59:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb4
bb60:
  ADD t4, s10, zero
  SW t4, 56(sp)
  ADD t4, s1, zero
  SW t4, 52(sp)
  LW t4, 56(sp)
  SLTI s3, t4, 48
  BNE s3, zero, bb63
  JAL zero, bb64
bb61:
  LW t4, 56(sp)
  XORI s11, t4, 45
  SLTIU s2, s11, 1
  BNE s2, zero, bb66
  JAL zero, bb111
bb62:
  ADD s1, zero, zero
  LW t4, 56(sp)
  ADD s2, t4, zero
  JAL zero, bb68
bb63:
  ADDI t4, zero, 1
  SB t4, 84(sp)
  JAL zero, bb65
bb64:
  ADDI s0, zero, 57
  LW t4, 56(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 84(sp)
  JAL zero, bb65
bb65:
  LB t4, 84(sp)
  ADD s11, t4, zero
  BNE s11, zero, bb61
  JAL zero, bb62
bb66:
  ADDI s2, zero, 1
  JAL zero, bb67
bb67:
  ADD s11, s2, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s11, zero
  ADD s10, s7, zero
  JAL zero, bb60
bb68:
  ADD t4, s2, zero
  SW t4, 92(sp)
  ADD t4, s1, zero
  SW t4, 88(sp)
  LW t4, 92(sp)
  SLTI s11, t4, 48
  XORI s6, s11, 1
  BNE s6, zero, bb71
  JAL zero, bb72
bb69:
  ADDI s6, zero, 10
  LW t4, 88(sp)
  MULW s9, t4, s6
  LW t4, 92(sp)
  ADDW s6, s9, t4
  ADDI s9, zero, 48
  SUBW s8, s6, s9
  CALL getch
  ADD s6, a0, zero
  ADD s1, s8, zero
  ADD s2, s6, zero
  JAL zero, bb68
bb70:
  LW t4, 52(sp)
  XOR s1, t4, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb74
  JAL zero, bb75
bb71:
  ADDI s6, zero, 57
  LW t4, 92(sp)
  SLT s11, s6, t4
  XORI s6, s11, 1
  ADD t4, s6, zero
  SB t4, 96(sp)
  JAL zero, bb73
bb72:
  ADD t4, zero, zero
  SB t4, 96(sp)
  JAL zero, bb73
bb73:
  LB t4, 96(sp)
  ADD s6, t4, zero
  BNE s6, zero, bb69
  JAL zero, bb70
bb74:
  LW t4, 88(sp)
  SUB s1, zero, t4
  ADD t4, s1, zero
  SW t4, 100(sp)
  JAL zero, bb7
bb75:
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  JAL zero, bb7
bb76:
  ADD t4, s9, zero
  SW t4, 108(sp)
  ADD t4, s8, zero
  SW t4, 104(sp)
  LW t4, 108(sp)
  SLTI s0, t4, 48
  BNE s0, zero, bb79
  JAL zero, bb80
bb77:
  LW t4, 108(sp)
  XORI s3, t4, 45
  SLTIU s10, s3, 1
  BNE s10, zero, bb82
  JAL zero, bb112
bb78:
  ADD s3, zero, zero
  LW t4, 108(sp)
  ADD s7, t4, zero
  JAL zero, bb84
bb79:
  ADDI t4, zero, 1
  SB t4, 120(sp)
  JAL zero, bb81
bb80:
  ADDI s0, zero, 57
  LW t4, 108(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 120(sp)
  JAL zero, bb81
bb81:
  LB t4, 120(sp)
  ADD s3, t4, zero
  BNE s3, zero, bb77
  JAL zero, bb78
bb82:
  ADDI s3, zero, 1
  JAL zero, bb83
bb83:
  ADD s10, s3, zero
  CALL getch
  ADD s7, a0, zero
  ADD s8, s10, zero
  ADD s9, s7, zero
  JAL zero, bb76
bb84:
  ADD t4, s7, zero
  SW t4, 128(sp)
  ADD t4, s3, zero
  SW t4, 124(sp)
  LW t4, 128(sp)
  SLTI s10, t4, 48
  XORI s11, s10, 1
  BNE s11, zero, bb87
  JAL zero, bb88
bb85:
  ADDI s10, zero, 10
  LW t4, 124(sp)
  MULW s2, t4, s10
  LW t4, 128(sp)
  ADDW s10, s2, t4
  ADDI s2, zero, 48
  SUBW s5, s10, s2
  CALL getch
  ADD s2, a0, zero
  ADD s3, s5, zero
  ADD s7, s2, zero
  JAL zero, bb84
bb86:
  LW t4, 104(sp)
  XOR s2, t4, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb90
  JAL zero, bb91
bb87:
  ADDI s10, zero, 57
  LW t4, 128(sp)
  SLT s11, s10, t4
  XORI s10, s11, 1
  ADD t4, s10, zero
  SB t4, 132(sp)
  JAL zero, bb89
bb88:
  ADD t4, zero, zero
  SB t4, 132(sp)
  JAL zero, bb89
bb89:
  LB t4, 132(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb85
  JAL zero, bb86
bb90:
  LW t4, 124(sp)
  SUB s2, zero, t4
  ADD t4, s2, zero
  SW t4, 136(sp)
  JAL zero, bb8
bb91:
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  JAL zero, bb8
bb92:
  ADD s2, s10, zero
  ADD t4, s7, zero
  SW t4, 140(sp)
  SLTI s6, s2, 48
  BNE s6, zero, bb95
  JAL zero, bb96
bb93:
  XORI s0, s2, 45
  SLTIU s9, s0, 1
  BNE s9, zero, bb98
  JAL zero, bb113
bb94:
  ADD s0, zero, zero
  ADD s7, s2, zero
  JAL zero, bb100
bb95:
  ADDI s6, zero, 1
  JAL zero, bb97
bb96:
  ADDI s0, zero, 57
  SLT s1, s0, s2
  ADD s6, s1, zero
  JAL zero, bb97
bb97:
  ADD s0, s6, zero
  BNE s0, zero, bb93
  JAL zero, bb94
bb98:
  ADDI s0, zero, 1
  JAL zero, bb99
bb99:
  ADD s9, s0, zero
  CALL getch
  ADD s8, a0, zero
  ADD s7, s9, zero
  ADD s10, s8, zero
  JAL zero, bb92
bb100:
  ADD s8, s7, zero
  ADD s9, s0, zero
  SLTI s10, s8, 48
  XORI s11, s10, 1
  BNE s11, zero, bb103
  JAL zero, bb104
bb101:
  ADDI s10, zero, 10
  MULW s3, s9, s10
  ADDW s10, s3, s8
  ADDI s3, zero, 48
  SUBW s1, s10, s3
  CALL getch
  ADD s3, a0, zero
  ADD s0, s1, zero
  ADD s7, s3, zero
  JAL zero, bb100
bb102:
  LW t4, 140(sp)
  XOR s0, t4, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb106
  JAL zero, bb107
bb103:
  ADDI s10, zero, 57
  SLT s11, s10, s8
  XORI s10, s11, 1
  ADD s11, s10, zero
  JAL zero, bb105
bb104:
  ADD s11, zero, zero
  JAL zero, bb105
bb105:
  ADD s10, s11, zero
  BNE s10, zero, bb101
  JAL zero, bb102
bb106:
  SUB s0, zero, s9
  ADD s1, s0, zero
  JAL zero, bb9
bb107:
  ADD s1, s9, zero
  JAL zero, bb9
bb108:
  LW t4, 152(sp)
  ADD s1, t4, zero
  JAL zero, bb18
bb109:
  LW t4, 0(sp)
  ADD s5, t4, zero
  JAL zero, bb37
bb110:
  LW t4, 24(sp)
  ADD s3, t4, zero
  JAL zero, bb51
bb111:
  LW t4, 52(sp)
  ADD s2, t4, zero
  JAL zero, bb67
bb112:
  LW t4, 104(sp)
  ADD s3, t4, zero
  JAL zero, bb83
bb113:
  LW t4, 140(sp)
  ADD s0, t4, zero
  JAL zero, bb99
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
  BNE s1, zero, bb115
  JAL zero, bb116
bb115:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb116:
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
  JAL zero, bb118
bb118:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, m
  LW s5, 0(s4)
  SLT s4, s2, s5
  BNE s4, zero, bb119
  JAL zero, bb120
bb119:
  ADDIW s4, s2, 1
  ADD s5, s3, zero
  ADD s3, s4, zero
  JAL zero, bb121
bb120:
  ADDI s0, zero, 1
  JAL zero, bb126
bb121:
  ADD s6, s3, zero
  ADD s7, s5, zero
  LA s8, m
  LW s9, 0(s8)
  SLT s8, s6, s9
  BNE s8, zero, bb122
  JAL zero, bb123
bb122:
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
  BNE t2, zero, bb124
  JAL zero, bb137
bb123:
  ADD s0, s7, zero
  ADD s1, s4, zero
  JAL zero, bb118
bb124:
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
  JAL zero, bb125
bb125:
  ADD s8, s9, zero
  ADDIW s10, s6, 1
  ADD s5, s8, zero
  ADD s3, s10, zero
  JAL zero, bb121
bb126:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  BNE s3, zero, bb127
  JAL zero, bb128
bb127:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, fa
  ADD s4, s2, s3
  SW s1, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb126
bb128:
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb129
bb129:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, m
  LW s5, 0(s4)
  SLT s4, s2, s5
  BNE s4, zero, bb130
  JAL zero, bb132
bb130:
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
  BNE s4, zero, bb135
  JAL zero, bb136
bb131:
  ADD s7, s4, zero
  XOR s9, s7, zero
  SLTU s7, zero, s9
  BNE s7, zero, bb133
  JAL zero, bb134
bb132:
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
bb133:
  ADD s0, s3, zero
  ADD s1, s2, zero
  JAL zero, bb129
bb134:
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
  JAL zero, bb129
bb135:
  ADDI s4, zero, 1
  JAL zero, bb131
bb136:
  ADD s4, zero, zero
  JAL zero, bb131
bb137:
  ADD s9, s7, zero
  JAL zero, bb125
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
  JAL zero, bb139
bb139:
  ADD s0, s2, zero
  ADD s3, s1, zero
  SLTI s4, s0, 48
  BNE s4, zero, bb142
  JAL zero, bb143
bb140:
  XORI s5, s0, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb145
  JAL zero, bb155
bb141:
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb147
bb142:
  ADDI s4, zero, 1
  JAL zero, bb144
bb143:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  ADD s4, s2, zero
  JAL zero, bb144
bb144:
  ADD s5, s4, zero
  BNE s5, zero, bb140
  JAL zero, bb141
bb145:
  ADDI s5, zero, 1
  JAL zero, bb146
bb146:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb139
bb147:
  ADD s5, s2, zero
  ADD s6, s1, zero
  SLTI s7, s5, 48
  XORI s8, s7, 1
  BNE s8, zero, bb150
  JAL zero, bb151
bb148:
  ADDI s7, zero, 10
  MULW s9, s6, s7
  ADDW s7, s9, s5
  ADDI s9, zero, 48
  SUBW s10, s7, s9
  CALL getch
  ADD s7, a0, zero
  ADD s1, s10, zero
  ADD s2, s7, zero
  JAL zero, bb147
bb149:
  XOR s1, s3, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb153
  JAL zero, bb154
bb150:
  ADDI s7, zero, 57
  SLT s8, s7, s5
  XORI s7, s8, 1
  ADD s8, s7, zero
  JAL zero, bb152
bb151:
  ADD s8, zero, zero
  JAL zero, bb152
bb152:
  ADD s7, s8, zero
  BNE s7, zero, bb148
  JAL zero, bb149
bb153:
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
bb154:
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
bb155:
  ADD s5, s3, zero
  JAL zero, bb146
