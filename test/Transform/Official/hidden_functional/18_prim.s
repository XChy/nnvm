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
  BNE s0, zero, bb2
  # implict jump to bb1
bb1:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:
  ADDI a0, zero, 1
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
  # implict jump to bb4
bb4:
  ADD t4, s2, zero
  SW t4, 4(sp)
  ADD t4, s1, zero
  SW t4, 0(sp)
  LW t4, 4(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb113
  # implict jump to bb5
bb5:
  ADDI s0, zero, 57
  LW t4, 4(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 8(sp)
  # implict jump to bb6
bb6:
  LB t4, 8(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb109
  # implict jump to bb7
bb7:
  ADD s1, zero, zero
  LW t4, 4(sp)
  ADD s2, t4, zero
  # implict jump to bb8
bb8:
  ADD t4, s2, zero
  SW t4, 16(sp)
  ADD t4, s1, zero
  SW t4, 12(sp)
  LW t4, 16(sp)
  SLTI s7, t4, 48
  XORI s8, s7, 1
  BNE s8, zero, bb108
  # implict jump to bb9
bb9:
  ADD t4, zero, zero
  SB t4, 20(sp)
  # implict jump to bb10
bb10:
  LB t4, 20(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb107
  # implict jump to bb11
bb11:
  CALL getch
  ADD s1, a0, zero
  ADD s2, zero, zero
  ADD s7, s1, zero
  # implict jump to bb12
bb12:
  ADD t4, s7, zero
  SW t4, 28(sp)
  ADD t4, s2, zero
  SW t4, 24(sp)
  LW t4, 28(sp)
  SLTI s10, t4, 48
  BNE s10, zero, bb106
  # implict jump to bb13
bb13:
  ADDI s0, zero, 57
  LW t4, 28(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 32(sp)
  # implict jump to bb14
bb14:
  LB t4, 32(sp)
  ADD s11, t4, zero
  BNE s11, zero, bb102
  # implict jump to bb15
bb15:
  ADD s0, zero, zero
  LW t4, 28(sp)
  ADD s2, t4, zero
  # implict jump to bb16
bb16:
  ADD t4, s2, zero
  SW t4, 40(sp)
  ADD t4, s0, zero
  SW t4, 36(sp)
  LW t4, 40(sp)
  SLTI s11, t4, 48
  XORI s4, s11, 1
  BNE s4, zero, bb101
  # implict jump to bb17
bb17:
  ADD t4, zero, zero
  SB t4, 44(sp)
  # implict jump to bb18
bb18:
  LB t4, 44(sp)
  ADD s4, t4, zero
  BNE s4, zero, bb100
  # implict jump to bb19
bb19:
  LW t4, 24(sp)
  XOR s0, t4, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb99
  # implict jump to bb20
bb20:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  # implict jump to bb21
bb21:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  ADD s4, zero, zero
  # implict jump to bb22
bb22:
  ADD t4, s4, zero
  SW t4, 76(sp)
  LW t4, 76(sp)
  LW t3, 80(sp)
  SLT s6, t4, t3
  BNE s6, zero, bb44
  # implict jump to bb23
bb23:
  ADD t4, zero, zero
  SW t4, 156(sp)
  ADD t4, zero, zero
  SW t4, 148(sp)
  # implict jump to bb24
bb24:
  LW t4, 148(sp)
  ADD s2, t4, zero
  LW t4, 156(sp)
  ADD s3, t4, zero
  LA s4, m
  LW s5, 0(s4)
  SLT s4, s2, s5
  BNE s4, zero, bb37
  # implict jump to bb25
bb25:
  ADDI s0, zero, 1
  # implict jump to bb26
bb26:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  BNE s3, zero, bb36
  # implict jump to bb27
bb27:
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb28
bb28:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, m
  LW s5, 0(s4)
  SLT s4, s2, s5
  BNE s4, zero, bb30
  # implict jump to bb29
bb29:
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
bb30:
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
  BNE s4, zero, bb35
  # implict jump to bb31
bb31:
  ADD s4, zero, zero
  # implict jump to bb32
bb32:
  ADD s7, s4, zero
  XOR s9, s7, zero
  SLTU s7, zero, s9
  BNE s7, zero, bb34
  # implict jump to bb33
bb33:
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
  JAL zero, bb28
bb34:
  ADD s0, s3, zero
  ADD s1, s2, zero
  JAL zero, bb28
bb35:
  ADDI s4, zero, 1
  JAL zero, bb32
bb36:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, fa
  ADD s4, s2, s3
  SW s1, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb26
bb37:
  ADDIW t4, s2, 1
  SW t4, 144(sp)
  ADD s5, s3, zero
  LW t4, 144(sp)
  ADD s3, t4, zero
  # implict jump to bb38
bb38:
  ADD s6, s3, zero
  ADD t4, s5, zero
  SW t4, 152(sp)
  LA s8, m
  LW s9, 0(s8)
  SLT s8, s6, s9
  BNE s8, zero, bb40
  # implict jump to bb39
bb39:
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 148(sp)
  JAL zero, bb24
bb40:
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
  BNE s7, zero, bb43
  # implict jump to bb41
bb41:
  LW t4, 152(sp)
  ADD s1, t4, zero
  # implict jump to bb42
bb42:
  ADD s0, s1, zero
  ADDIW s4, s6, 1
  ADD s5, s0, zero
  ADD s3, s4, zero
  JAL zero, bb38
bb43:
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
  JAL zero, bb42
bb44:
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
  # implict jump to bb45
bb45:
  ADD t4, s10, zero
  SW t4, 56(sp)
  ADD t4, s1, zero
  SW t4, 52(sp)
  LW t4, 56(sp)
  SLTI s3, t4, 48
  BNE s3, zero, bb98
  # implict jump to bb46
bb46:
  ADDI s0, zero, 57
  LW t4, 56(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 84(sp)
  # implict jump to bb47
bb47:
  LB t4, 84(sp)
  ADD s11, t4, zero
  BNE s11, zero, bb94
  # implict jump to bb48
bb48:
  ADD s1, zero, zero
  LW t4, 56(sp)
  ADD s2, t4, zero
  # implict jump to bb49
bb49:
  ADD t4, s2, zero
  SW t4, 92(sp)
  ADD t4, s1, zero
  SW t4, 88(sp)
  LW t4, 92(sp)
  SLTI s11, t4, 48
  XORI s6, s11, 1
  BNE s6, zero, bb93
  # implict jump to bb50
bb50:
  ADD t4, zero, zero
  SB t4, 96(sp)
  # implict jump to bb51
bb51:
  LB t4, 96(sp)
  ADD s6, t4, zero
  BNE s6, zero, bb92
  # implict jump to bb52
bb52:
  LW t4, 52(sp)
  XOR s1, t4, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb91
  # implict jump to bb53
bb53:
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  # implict jump to bb54
bb54:
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
  # implict jump to bb55
bb55:
  ADD t4, s9, zero
  SW t4, 108(sp)
  ADD t4, s8, zero
  SW t4, 104(sp)
  LW t4, 108(sp)
  SLTI s0, t4, 48
  BNE s0, zero, bb90
  # implict jump to bb56
bb56:
  ADDI s0, zero, 57
  LW t4, 108(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 120(sp)
  # implict jump to bb57
bb57:
  LB t4, 120(sp)
  ADD s3, t4, zero
  BNE s3, zero, bb86
  # implict jump to bb58
bb58:
  ADD s3, zero, zero
  LW t4, 108(sp)
  ADD s7, t4, zero
  # implict jump to bb59
bb59:
  ADD t4, s7, zero
  SW t4, 128(sp)
  ADD t4, s3, zero
  SW t4, 124(sp)
  LW t4, 128(sp)
  SLTI s10, t4, 48
  XORI s11, s10, 1
  BNE s11, zero, bb85
  # implict jump to bb60
bb60:
  ADD t4, zero, zero
  SB t4, 132(sp)
  # implict jump to bb61
bb61:
  LB t4, 132(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb84
  # implict jump to bb62
bb62:
  LW t4, 104(sp)
  XOR s2, t4, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb83
  # implict jump to bb63
bb63:
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  # implict jump to bb64
bb64:
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
  # implict jump to bb65
bb65:
  ADD s2, s10, zero
  ADD t4, s7, zero
  SW t4, 140(sp)
  SLTI s6, s2, 48
  BNE s6, zero, bb82
  # implict jump to bb66
bb66:
  ADDI s0, zero, 57
  SLT s1, s0, s2
  ADD s6, s1, zero
  # implict jump to bb67
bb67:
  ADD s0, s6, zero
  BNE s0, zero, bb78
  # implict jump to bb68
bb68:
  ADD s0, zero, zero
  ADD s7, s2, zero
  # implict jump to bb69
bb69:
  ADD s8, s7, zero
  ADD s9, s0, zero
  SLTI s10, s8, 48
  XORI s11, s10, 1
  BNE s11, zero, bb77
  # implict jump to bb70
bb70:
  ADD s11, zero, zero
  # implict jump to bb71
bb71:
  ADD s10, s11, zero
  BNE s10, zero, bb76
  # implict jump to bb72
bb72:
  LW t4, 140(sp)
  XOR s0, t4, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb75
  # implict jump to bb73
bb73:
  ADD s1, s9, zero
  # implict jump to bb74
bb74:
  ADD s0, s1, zero
  SW s0, 0(s5)
  LW t4, 76(sp)
  ADDIW s0, t4, 1
  ADD s4, s0, zero
  JAL zero, bb22
bb75:
  SUB s0, zero, s9
  ADD s1, s0, zero
  JAL zero, bb74
bb76:
  ADDI s10, zero, 10
  MULW s3, s9, s10
  ADDW s10, s3, s8
  ADDI s3, zero, 48
  SUBW s1, s10, s3
  CALL getch
  ADD s3, a0, zero
  ADD s0, s1, zero
  ADD s7, s3, zero
  JAL zero, bb69
bb77:
  ADDI s10, zero, 57
  SLT s11, s10, s8
  XORI s10, s11, 1
  ADD s11, s10, zero
  JAL zero, bb71
bb78:
  XORI s0, s2, 45
  SLTIU s9, s0, 1
  BNE s9, zero, bb81
  # implict jump to bb79
bb79:
  LW t4, 140(sp)
  ADD s0, t4, zero
  # implict jump to bb80
bb80:
  ADD s9, s0, zero
  CALL getch
  ADD s8, a0, zero
  ADD s7, s9, zero
  ADD s10, s8, zero
  JAL zero, bb65
bb81:
  ADDI s0, zero, 1
  JAL zero, bb80
bb82:
  ADDI s6, zero, 1
  JAL zero, bb67
bb83:
  LW t4, 124(sp)
  SUB s2, zero, t4
  ADD t4, s2, zero
  SW t4, 136(sp)
  JAL zero, bb64
bb84:
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
  JAL zero, bb59
bb85:
  ADDI s10, zero, 57
  LW t4, 128(sp)
  SLT s11, s10, t4
  XORI s10, s11, 1
  ADD t4, s10, zero
  SB t4, 132(sp)
  JAL zero, bb61
bb86:
  LW t4, 108(sp)
  XORI s3, t4, 45
  SLTIU s10, s3, 1
  BNE s10, zero, bb89
  # implict jump to bb87
bb87:
  LW t4, 104(sp)
  ADD s3, t4, zero
  # implict jump to bb88
bb88:
  ADD s10, s3, zero
  CALL getch
  ADD s7, a0, zero
  ADD s8, s10, zero
  ADD s9, s7, zero
  JAL zero, bb55
bb89:
  ADDI s3, zero, 1
  JAL zero, bb88
bb90:
  ADDI t4, zero, 1
  SB t4, 120(sp)
  JAL zero, bb57
bb91:
  LW t4, 88(sp)
  SUB s1, zero, t4
  ADD t4, s1, zero
  SW t4, 100(sp)
  JAL zero, bb54
bb92:
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
  JAL zero, bb49
bb93:
  ADDI s6, zero, 57
  LW t4, 92(sp)
  SLT s11, s6, t4
  XORI s6, s11, 1
  ADD t4, s6, zero
  SB t4, 96(sp)
  JAL zero, bb51
bb94:
  LW t4, 56(sp)
  XORI s11, t4, 45
  SLTIU s2, s11, 1
  BNE s2, zero, bb97
  # implict jump to bb95
bb95:
  LW t4, 52(sp)
  ADD s2, t4, zero
  # implict jump to bb96
bb96:
  ADD s11, s2, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s11, zero
  ADD s10, s7, zero
  JAL zero, bb45
bb97:
  ADDI s2, zero, 1
  JAL zero, bb96
bb98:
  ADDI t4, zero, 1
  SB t4, 84(sp)
  JAL zero, bb47
bb99:
  LW t4, 36(sp)
  SUB s0, zero, t4
  ADD t4, s0, zero
  SW t4, 48(sp)
  JAL zero, bb21
bb100:
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
  JAL zero, bb16
bb101:
  ADDI s4, zero, 57
  LW t4, 40(sp)
  SLT s11, s4, t4
  XORI s4, s11, 1
  ADD t4, s4, zero
  SB t4, 44(sp)
  JAL zero, bb18
bb102:
  LW t4, 28(sp)
  XORI s11, t4, 45
  SLTIU s3, s11, 1
  BNE s3, zero, bb105
  # implict jump to bb103
bb103:
  LW t4, 24(sp)
  ADD s3, t4, zero
  # implict jump to bb104
bb104:
  ADD s11, s3, zero
  CALL getch
  ADD s0, a0, zero
  ADD s2, s11, zero
  ADD s7, s0, zero
  JAL zero, bb12
bb105:
  ADDI s3, zero, 1
  JAL zero, bb104
bb106:
  ADDI t4, zero, 1
  SB t4, 32(sp)
  JAL zero, bb14
bb107:
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
  JAL zero, bb8
bb108:
  ADDI s7, zero, 57
  LW t4, 16(sp)
  SLT s8, s7, t4
  XORI s7, s8, 1
  ADD t4, s7, zero
  SB t4, 20(sp)
  JAL zero, bb10
bb109:
  LW t4, 4(sp)
  XORI s5, t4, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb112
  # implict jump to bb110
bb110:
  LW t4, 0(sp)
  ADD s5, t4, zero
  # implict jump to bb111
bb111:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb4
bb112:
  ADDI s5, zero, 1
  JAL zero, bb111
bb113:
  ADDI t4, zero, 1
  SB t4, 8(sp)
  JAL zero, bb6
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
  BNE s1, zero, bb116
  # implict jump to bb115
bb115:
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
bb116:
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
  # implict jump to bb118
bb118:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, m
  LW s5, 0(s4)
  SLT s4, s2, s5
  BNE s4, zero, bb131
  # implict jump to bb119
bb119:
  ADDI s0, zero, 1
  # implict jump to bb120
bb120:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  BNE s3, zero, bb130
  # implict jump to bb121
bb121:
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb122
bb122:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, m
  LW s5, 0(s4)
  SLT s4, s2, s5
  BNE s4, zero, bb124
  # implict jump to bb123
bb123:
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
bb124:
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
  BNE s4, zero, bb129
  # implict jump to bb125
bb125:
  ADD s4, zero, zero
  # implict jump to bb126
bb126:
  ADD s7, s4, zero
  XOR s9, s7, zero
  SLTU s7, zero, s9
  BNE s7, zero, bb128
  # implict jump to bb127
bb127:
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
  JAL zero, bb122
bb128:
  ADD s0, s3, zero
  ADD s1, s2, zero
  JAL zero, bb122
bb129:
  ADDI s4, zero, 1
  JAL zero, bb126
bb130:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, fa
  ADD s4, s2, s3
  SW s1, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb120
bb131:
  ADDIW s4, s2, 1
  ADD s5, s3, zero
  ADD s3, s4, zero
  # implict jump to bb132
bb132:
  ADD s6, s3, zero
  ADD s7, s5, zero
  LA s8, m
  LW s9, 0(s8)
  SLT s8, s6, s9
  BNE s8, zero, bb134
  # implict jump to bb133
bb133:
  ADD s0, s7, zero
  ADD s1, s4, zero
  JAL zero, bb118
bb134:
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
  BNE t2, zero, bb137
  # implict jump to bb135
bb135:
  ADD s9, s7, zero
  # implict jump to bb136
bb136:
  ADD s8, s9, zero
  ADDIW s10, s6, 1
  ADD s5, s8, zero
  ADD s3, s10, zero
  JAL zero, bb132
bb137:
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
  JAL zero, bb136
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
  # implict jump to bb139
bb139:
  ADD s0, s2, zero
  ADD s3, s1, zero
  SLTI s4, s0, 48
  BNE s4, zero, bb155
  # implict jump to bb140
bb140:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  ADD s4, s2, zero
  # implict jump to bb141
bb141:
  ADD s5, s4, zero
  BNE s5, zero, bb151
  # implict jump to bb142
bb142:
  ADD s1, zero, zero
  ADD s2, s0, zero
  # implict jump to bb143
bb143:
  ADD s5, s2, zero
  ADD s6, s1, zero
  SLTI s7, s5, 48
  XORI s8, s7, 1
  BNE s8, zero, bb150
  # implict jump to bb144
bb144:
  ADD s8, zero, zero
  # implict jump to bb145
bb145:
  ADD s7, s8, zero
  BNE s7, zero, bb149
  # implict jump to bb146
bb146:
  XOR s1, s3, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb148
  # implict jump to bb147
bb147:
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
bb148:
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
bb149:
  ADDI s7, zero, 10
  MULW s9, s6, s7
  ADDW s7, s9, s5
  ADDI s9, zero, 48
  SUBW s10, s7, s9
  CALL getch
  ADD s7, a0, zero
  ADD s1, s10, zero
  ADD s2, s7, zero
  JAL zero, bb143
bb150:
  ADDI s7, zero, 57
  SLT s8, s7, s5
  XORI s7, s8, 1
  ADD s8, s7, zero
  JAL zero, bb145
bb151:
  XORI s5, s0, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb154
  # implict jump to bb152
bb152:
  ADD s5, s3, zero
  # implict jump to bb153
bb153:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb139
bb154:
  ADDI s5, zero, 1
  JAL zero, bb153
bb155:
  ADDI s4, zero, 1
  JAL zero, bb141
