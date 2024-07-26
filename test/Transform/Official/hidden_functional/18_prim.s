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
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD a0, s0, zero
  CALL find
  ADD s0, a0, zero
  ADD a0, s1, zero
  CALL find
  ADD s1, a0, zero
  XOR s0, s0, s1
  SLTIU s0, s0, 1
  BNE s0, zero, bb2
  # implict jump to bb1
bb1:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -352
  SD ra, 224(sp)
  SD s0, 232(sp)
  SD s1, 240(sp)
  SD s2, 248(sp)
  SD s3, 256(sp)
  SD s11, 264(sp)
  SD s7, 272(sp)
  SD s8, 280(sp)
  SD s9, 288(sp)
  SD s10, 296(sp)
  SD s4, 304(sp)
  SD s5, 312(sp)
  SD s6, 320(sp)
  CALL getch
  ADD s6, a0, zero
  ADD t4, zero, zero
  SW t4, 212(sp)
  ADD t4, s6, zero
  SW t4, 216(sp)
  # implict jump to bb4
bb4:
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 204(sp)
  LW t3, 212(sp)
  ADD t4, t3, zero
  SW t4, 208(sp)
  LW t4, 204(sp)
  SLTI s10, t4, 48
  BNE s10, zero, bb123
  # implict jump to bb5
bb5:
  ADDI s10, zero, 57
  LW t4, 204(sp)
  SLT s10, s10, t4
  # implict jump to bb6
bb6:
  BNE s10, zero, bb119
  # implict jump to bb7
bb7:
  ADD t4, zero, zero
  SW t4, 196(sp)
  LW t3, 204(sp)
  ADD t4, t3, zero
  SW t4, 200(sp)
  # implict jump to bb8
bb8:
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 192(sp)
  LW t3, 196(sp)
  ADD t4, t3, zero
  SW t4, 188(sp)
  LW t4, 192(sp)
  SLTI s9, t4, 48
  XORI s9, s9, 1
  BNE s9, zero, bb118
  # implict jump to bb9
bb9:
  ADD s9, zero, zero
  # implict jump to bb10
bb10:
  BNE s9, zero, bb117
  # implict jump to bb11
bb11:
  CALL getch
  ADD s8, a0, zero
  ADD t4, zero, zero
  SW t4, 180(sp)
  ADD t4, s8, zero
  SW t4, 184(sp)
  # implict jump to bb12
bb12:
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LW t4, 64(sp)
  SLTI s6, t4, 48
  BNE s6, zero, bb116
  # implict jump to bb13
bb13:
  ADDI s6, zero, 57
  LW t4, 64(sp)
  SLT s6, s6, t4
  # implict jump to bb14
bb14:
  BNE s6, zero, bb112
  # implict jump to bb15
bb15:
  ADD t4, zero, zero
  SW t4, 8(sp)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  # implict jump to bb16
bb16:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t4, 12(sp)
  SLTI s10, t4, 48
  XORI s10, s10, 1
  BNE s10, zero, bb111
  # implict jump to bb17
bb17:
  ADD s10, zero, zero
  # implict jump to bb18
bb18:
  BNE s10, zero, bb110
  # implict jump to bb19
bb19:
  LW t4, 124(sp)
  BNE t4, zero, bb109
  # implict jump to bb20
bb20:
  LW t4, 16(sp)
  ADD s10, t4, zero
  # implict jump to bb21
bb21:
  ADD t4, s10, zero
  SW t4, 32(sp)
  LW t4, 32(sp)
  BLT zero, t4, bb51
  # implict jump to bb22
bb22:
  LA s9, m
  LW s9, 0(s9)
  BLT zero, s9, bb37
  # implict jump to bb23
bb23:
  LA s1, n
  LW s1, 0(s1)
  SLTI s1, s1, 1
  XORI s1, s1, 1
  BNE s1, zero, bb33
  # implict jump to bb24
bb24:
  ADD s2, zero, zero
  ADD s3, zero, zero
  # implict jump to bb25
bb25:
  ADD s4, s3, zero
  ADD s6, s2, zero
  LA s7, m
  LW s7, 0(s7)
  BLT s4, s7, bb27
  # implict jump to bb26
bb26:
  ADD a0, s6, zero
  LD ra, 224(sp)
  LD s0, 232(sp)
  LD s1, 240(sp)
  LD s2, 248(sp)
  LD s3, 256(sp)
  LD s11, 264(sp)
  LD s7, 272(sp)
  LD s8, 280(sp)
  LD s9, 288(sp)
  LD s10, 296(sp)
  LD s4, 304(sp)
  LD s5, 312(sp)
  LD s6, 320(sp)
  ADDI sp, sp, 352
  JALR zero, 0(ra)
bb27:
  SLLIW s7, s4, 2
  LA s8, u
  ADD s8, s8, s7
  LW s9, 0(s8)
  LA s10, v
  ADD s10, s10, s7
  LW s11, 0(s10)
  ADD a0, s9, zero
  CALL find
  ADD s9, a0, zero
  ADD a0, s11, zero
  CALL find
  ADD s11, a0, zero
  XOR s9, s9, s11
  SLTIU s9, s9, 1
  BNE s9, zero, bb32
  # implict jump to bb28
bb28:
  ADD s9, zero, zero
  # implict jump to bb29
bb29:
  BNE s9, zero, bb31
  # implict jump to bb30
bb30:
  LA s9, c
  ADD s7, s9, s7
  LW s7, 0(s7)
  ADDW s7, s6, s7
  LW s8, 0(s8)
  ADD a0, s8, zero
  CALL find
  ADD s8, a0, zero
  SLLIW s8, s8, 2
  LA s9, fa
  ADD s8, s9, s8
  LW s9, 0(s10)
  SW s9, 0(s8)
  ADDIW s8, s4, 1
  ADD s2, s7, zero
  ADD s3, s8, zero
  JAL zero, bb25
bb31:
  ADD s2, s6, zero
  ADD s3, s4, zero
  JAL zero, bb25
bb32:
  ADDI s9, zero, 1
  JAL zero, bb29
bb33:
  ADDI s1, zero, 1
  # implict jump to bb34
bb34:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  LA s4, fa
  ADD s3, s4, s3
  SW s2, 0(s3)
  ADDIW s5, s2, 1
  # implict jump to bb35
bb35:
  LA s2, n
  LW s2, 0(s2)
  SLT s2, s2, s5
  XORI s2, s2, 1
  BNE s2, zero, bb36
  JAL zero, bb24
bb36:
  ADD s1, s5, zero
  JAL zero, bb34
bb37:
  ADD t4, s9, zero
  SW t4, 128(sp)
  ADD t4, zero, zero
  SW t4, 132(sp)
  ADD t4, zero, zero
  SW t4, 140(sp)
  # implict jump to bb38
bb38:
  LW t4, 140(sp)
  ADD s6, t4, zero
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 164(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  LW t3, 164(sp)
  ADDIW t4, t3, 1
  SW t4, 168(sp)
  LW t4, 168(sp)
  LW t3, 160(sp)
  BLT t4, t3, bb43
  # implict jump to bb39
bb39:
  ADD s4, s6, zero
  # implict jump to bb40
bb40:
  ADD t4, s4, zero
  SW t4, 136(sp)
  # implict jump to bb41
bb41:
  LA s0, m
  LW s0, 0(s0)
  LW t4, 168(sp)
  BLT t4, s0, bb42
  JAL zero, bb23
bb42:
  ADD t4, s0, zero
  SW t4, 128(sp)
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  JAL zero, bb38
bb43:
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 148(sp)
  ADD t4, s6, zero
  SW t4, 156(sp)
  # implict jump to bb44
bb44:
  LW t4, 156(sp)
  ADD s7, t4, zero
  LW t4, 148(sp)
  ADD s11, t4, zero
  LW t4, 164(sp)
  SLLIW s6, t4, 2
  LA s3, c
  ADD s3, s3, s6
  LW s1, 0(s3)
  SLLIW s2, s11, 2
  LA s8, c
  ADD s8, s8, s2
  LW s0, 0(s8)
  BLT s0, s1, bb50
  # implict jump to bb45
bb45:
  ADD s0, s7, zero
  # implict jump to bb46
bb46:
  ADD t4, s0, zero
  SW t4, 152(sp)
  ADDIW t4, s11, 1
  SW t4, 144(sp)
  # implict jump to bb47
bb47:
  LW t4, 144(sp)
  LW t3, 160(sp)
  BLT t4, t3, bb49
  # implict jump to bb48
bb48:
  LW t4, 152(sp)
  ADD s4, t4, zero
  JAL zero, bb40
bb49:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 148(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  JAL zero, bb44
bb50:
  LA s1, u
  ADD s1, s1, s6
  LW s7, 0(s1)
  LA s10, u
  ADD s10, s10, s2
  LW s9, 0(s10)
  SW s9, 0(s1)
  SW s7, 0(s10)
  LA s1, v
  ADD s1, s1, s6
  LW s6, 0(s1)
  LA s7, v
  ADD s2, s7, s2
  LW s7, 0(s2)
  SW s7, 0(s1)
  SW s6, 0(s2)
  LW s1, 0(s3)
  LW s2, 0(s8)
  SW s2, 0(s3)
  SW s1, 0(s8)
  ADD s0, s1, zero
  JAL zero, bb46
bb51:
  ADD t4, zero, zero
  SW t4, 220(sp)
  # implict jump to bb52
bb52:
  LW t3, 220(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t3, 28(sp)
  SLLIW t4, t3, 2
  SW t4, 24(sp)
  LA s8, u
  LW t3, 24(sp)
  ADD t4, s8, t3
  SD t4, 336(sp)
  CALL getch
  ADD s9, a0, zero
  ADD t4, zero, zero
  SW t4, 40(sp)
  ADD t4, s9, zero
  SW t4, 36(sp)
  # implict jump to bb53
bb53:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t4, 48(sp)
  SLTI s10, t4, 48
  BNE s10, zero, bb108
  # implict jump to bb54
bb54:
  ADDI s10, zero, 57
  LW t4, 48(sp)
  SLT s10, s10, t4
  # implict jump to bb55
bb55:
  BNE s10, zero, bb104
  # implict jump to bb56
bb56:
  ADD t4, zero, zero
  SW t4, 56(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  # implict jump to bb57
bb57:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t4, 60(sp)
  SLTI s6, t4, 48
  XORI s6, s6, 1
  BNE s6, zero, bb103
  # implict jump to bb58
bb58:
  ADD s6, zero, zero
  # implict jump to bb59
bb59:
  BNE s6, zero, bb102
  # implict jump to bb60
bb60:
  LW t4, 44(sp)
  BNE t4, zero, bb101
  # implict jump to bb61
bb61:
  LW t4, 0(sp)
  ADD s6, t4, zero
  # implict jump to bb62
bb62:
  LD t4, 336(sp)
  SW s6, 0(t4)
  LA s6, v
  LW t3, 24(sp)
  ADD t4, s6, t3
  SD t4, 344(sp)
  CALL getch
  ADD s9, a0, zero
  ADD t4, zero, zero
  SW t4, 76(sp)
  ADD t4, s9, zero
  SW t4, 72(sp)
  # implict jump to bb63
bb63:
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t4, 84(sp)
  SLTI s6, t4, 48
  BNE s6, zero, bb100
  # implict jump to bb64
bb64:
  ADDI s6, zero, 57
  LW t4, 84(sp)
  SLT s6, s6, t4
  # implict jump to bb65
bb65:
  BNE s6, zero, bb96
  # implict jump to bb66
bb66:
  ADD t4, zero, zero
  SW t4, 92(sp)
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  # implict jump to bb67
bb67:
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  LW t4, 96(sp)
  SLTI s8, t4, 48
  XORI s8, s8, 1
  BNE s8, zero, bb95
  # implict jump to bb68
bb68:
  ADD s8, zero, zero
  # implict jump to bb69
bb69:
  BNE s8, zero, bb94
  # implict jump to bb70
bb70:
  LW t4, 80(sp)
  BNE t4, zero, bb93
  # implict jump to bb71
bb71:
  LW t4, 100(sp)
  ADD s8, t4, zero
  # implict jump to bb72
bb72:
  LD t4, 344(sp)
  SW s8, 0(t4)
  LA s8, c
  LW t3, 24(sp)
  ADD t4, s8, t3
  SD t4, 328(sp)
  CALL getch
  ADD s9, a0, zero
  ADD t4, zero, zero
  SW t4, 112(sp)
  ADD t4, s9, zero
  SW t4, 108(sp)
  # implict jump to bb73
bb73:
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  LW t4, 120(sp)
  SLTI s8, t4, 48
  BNE s8, zero, bb92
  # implict jump to bb74
bb74:
  ADDI s8, zero, 57
  LW t4, 120(sp)
  SLT s8, s8, t4
  # implict jump to bb75
bb75:
  BNE s8, zero, bb88
  # implict jump to bb76
bb76:
  ADD t4, zero, zero
  SW t4, 68(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  # implict jump to bb77
bb77:
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  LW t4, 20(sp)
  SLTI s10, t4, 48
  XORI s10, s10, 1
  BNE s10, zero, bb87
  # implict jump to bb78
bb78:
  ADD s10, zero, zero
  # implict jump to bb79
bb79:
  BNE s10, zero, bb86
  # implict jump to bb80
bb80:
  LW t4, 116(sp)
  BNE t4, zero, bb85
  # implict jump to bb81
bb81:
  LW t4, 176(sp)
  ADD s9, t4, zero
  # implict jump to bb82
bb82:
  LD t4, 328(sp)
  SW s9, 0(t4)
  LW t3, 28(sp)
  ADDIW t4, t3, 1
  SW t4, 172(sp)
  # implict jump to bb83
bb83:
  LW t4, 172(sp)
  LW t3, 32(sp)
  BLT t4, t3, bb84
  JAL zero, bb22
bb84:
  LW t3, 172(sp)
  ADD t4, t3, zero
  SW t4, 220(sp)
  JAL zero, bb52
bb85:
  LW t4, 176(sp)
  SUB s10, zero, t4
  ADD s9, s10, zero
  JAL zero, bb82
bb86:
  ADDI s0, zero, 10
  LW t4, 176(sp)
  MULW s0, t4, s0
  LW t4, 20(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 68(sp)
  ADD t4, s1, zero
  SW t4, 104(sp)
  JAL zero, bb77
bb87:
  ADDI s9, zero, 57
  LW t4, 20(sp)
  SLT s9, s9, t4
  XORI s9, s9, 1
  ADD s10, s9, zero
  JAL zero, bb79
bb88:
  LW t4, 120(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb91
  # implict jump to bb89
bb89:
  LW t4, 116(sp)
  ADD s0, t4, zero
  # implict jump to bb90
bb90:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 112(sp)
  ADD t4, s1, zero
  SW t4, 108(sp)
  JAL zero, bb73
bb91:
  ADDI s0, zero, 1
  JAL zero, bb90
bb92:
  ADDI s8, zero, 1
  JAL zero, bb75
bb93:
  LW t4, 100(sp)
  SUB s9, zero, t4
  ADD s8, s9, zero
  JAL zero, bb72
bb94:
  ADDI s0, zero, 10
  LW t4, 100(sp)
  MULW s0, t4, s0
  LW t4, 96(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 92(sp)
  ADD t4, s1, zero
  SW t4, 88(sp)
  JAL zero, bb67
bb95:
  ADDI s9, zero, 57
  LW t4, 96(sp)
  SLT s9, s9, t4
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb69
bb96:
  LW t4, 84(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb99
  # implict jump to bb97
bb97:
  LW t4, 80(sp)
  ADD s0, t4, zero
  # implict jump to bb98
bb98:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 76(sp)
  ADD t4, s1, zero
  SW t4, 72(sp)
  JAL zero, bb63
bb99:
  ADDI s0, zero, 1
  JAL zero, bb98
bb100:
  ADDI s6, zero, 1
  JAL zero, bb65
bb101:
  LW t4, 0(sp)
  SUB s9, zero, t4
  ADD s6, s9, zero
  JAL zero, bb62
bb102:
  ADDI s0, zero, 10
  LW t4, 0(sp)
  MULW s0, t4, s0
  LW t4, 60(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 56(sp)
  ADD t4, s1, zero
  SW t4, 52(sp)
  JAL zero, bb57
bb103:
  ADDI s9, zero, 57
  LW t4, 60(sp)
  SLT s9, s9, t4
  XORI s9, s9, 1
  ADD s6, s9, zero
  JAL zero, bb59
bb104:
  LW t4, 48(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb107
  # implict jump to bb105
bb105:
  LW t4, 44(sp)
  ADD s0, t4, zero
  # implict jump to bb106
bb106:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 40(sp)
  ADD t4, s1, zero
  SW t4, 36(sp)
  JAL zero, bb53
bb107:
  ADDI s0, zero, 1
  JAL zero, bb106
bb108:
  ADDI s10, zero, 1
  JAL zero, bb55
bb109:
  LW t4, 16(sp)
  SUB s11, zero, t4
  ADD s10, s11, zero
  JAL zero, bb21
bb110:
  ADDI s0, zero, 10
  LW t4, 16(sp)
  MULW s0, t4, s0
  LW t4, 12(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 8(sp)
  ADD t4, s1, zero
  SW t4, 4(sp)
  JAL zero, bb16
bb111:
  ADDI s11, zero, 57
  LW t4, 12(sp)
  SLT s11, s11, t4
  XORI s11, s11, 1
  ADD s10, s11, zero
  JAL zero, bb18
bb112:
  LW t4, 64(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb115
  # implict jump to bb113
bb113:
  LW t4, 124(sp)
  ADD s0, t4, zero
  # implict jump to bb114
bb114:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 180(sp)
  ADD t4, s1, zero
  SW t4, 184(sp)
  JAL zero, bb12
bb115:
  ADDI s0, zero, 1
  JAL zero, bb114
bb116:
  ADDI s6, zero, 1
  JAL zero, bb14
bb117:
  ADDI s0, zero, 10
  LW t4, 188(sp)
  MULW s0, t4, s0
  LW t4, 192(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 196(sp)
  ADD t4, s1, zero
  SW t4, 200(sp)
  JAL zero, bb8
bb118:
  ADDI s8, zero, 57
  LW t4, 192(sp)
  SLT s8, s8, t4
  XORI s8, s8, 1
  ADD s9, s8, zero
  JAL zero, bb10
bb119:
  LW t4, 204(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb122
  # implict jump to bb120
bb120:
  LW t4, 208(sp)
  ADD s0, t4, zero
  # implict jump to bb121
bb121:
  CALL getch
  ADD t4, s0, zero
  SW t4, 212(sp)
  ADD t4, a0, zero
  SW t4, 216(sp)
  JAL zero, bb4
bb122:
  ADDI s0, zero, 1
  JAL zero, bb121
bb123:
  ADDI s10, zero, 1
  JAL zero, bb6
find:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD s0, a0, zero
  SLLIW s1, s0, 2
  LA s2, fa
  ADD s1, s2, s1
  LW s2, 0(s1)
  XOR s2, s0, s2
  SLTIU s2, s2, 1
  BNE s2, zero, bb126
  # implict jump to bb125
bb125:
  LW s2, 0(s1)
  ADD a0, s2, zero
  CALL find
  ADD s2, a0, zero
  SW s2, 0(s1)
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb126:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
prim:
  ADDI sp, sp, -160
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s9, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  SD s4, 104(sp)
  SD s5, 112(sp)
  SD s6, 120(sp)
  SD s7, 128(sp)
  SD s8, 136(sp)
  SD s10, 144(sp)
  SD s11, 152(sp)
  LA s5, m
  LW s5, 0(s5)
  BLT zero, s5, bb142
  # implict jump to bb128
bb128:
  LA t1, n
  LW t1, 0(t1)
  SLTI t1, t1, 1
  XORI t1, t1, 1
  BNE t1, zero, bb138
  # implict jump to bb129
bb129:
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 0(sp)
  # implict jump to bb130
bb130:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LA a3, m
  LW a3, 0(a3)
  LW t4, 20(sp)
  BLT t4, a3, bb132
  # implict jump to bb131
bb131:
  LW t4, 36(sp)
  ADD a0, t4, zero
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s9, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  LD s5, 112(sp)
  LD s6, 120(sp)
  LD s7, 128(sp)
  LD s8, 136(sp)
  LD s10, 144(sp)
  LD s11, 152(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb132:
  LW t3, 20(sp)
  SLLIW t4, t3, 2
  SW t4, 16(sp)
  LA a4, u
  LW t3, 16(sp)
  ADD t4, a4, t3
  SD t4, 64(sp)
  LD t4, 64(sp)
  LW a5, 0(t4)
  LA a6, v
  LW t3, 16(sp)
  ADD t4, a6, t3
  SD t4, 72(sp)
  LD t3, 72(sp)
  LW t4, 0(t3)
  SW t4, 4(sp)
  ADD a0, a5, zero
  CALL find
  ADD s0, a0, zero
  LW t4, 4(sp)
  ADD a0, t4, zero
  CALL find
  ADD s9, a0, zero
  XOR s0, s0, s9
  SLTIU s0, s0, 1
  BNE s0, zero, bb137
  # implict jump to bb133
bb133:
  ADD s0, zero, zero
  # implict jump to bb134
bb134:
  BNE s0, zero, bb136
  # implict jump to bb135
bb135:
  LA s0, c
  LW t4, 16(sp)
  ADD s0, s0, t4
  LW s0, 0(s0)
  LW t4, 36(sp)
  ADDW s0, t4, s0
  LD t4, 64(sp)
  LW s9, 0(t4)
  ADD a0, s9, zero
  CALL find
  SLLIW s9, a0, 2
  LA t0, fa
  ADD s9, t0, s9
  LD t4, 72(sp)
  LW t0, 0(t4)
  SW t0, 0(s9)
  LW t4, 20(sp)
  ADDIW s9, t4, 1
  ADD t4, s0, zero
  SW t4, 24(sp)
  ADD t4, s9, zero
  SW t4, 0(sp)
  JAL zero, bb130
bb136:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  JAL zero, bb130
bb137:
  ADDI s0, zero, 1
  JAL zero, bb134
bb138:
  ADDI t4, zero, 1
  SW t4, 28(sp)
  # implict jump to bb139
bb139:
  LW t4, 28(sp)
  ADD t2, t4, zero
  SLLIW a0, t2, 2
  LA a1, fa
  ADD a0, a1, a0
  SW t2, 0(a0)
  ADDIW s4, t2, 1
  # implict jump to bb140
bb140:
  LA t2, n
  LW t2, 0(t2)
  SLT t2, t2, s4
  XORI t2, t2, 1
  BNE t2, zero, bb141
  JAL zero, bb129
bb141:
  ADD t4, s4, zero
  SW t4, 28(sp)
  JAL zero, bb139
bb142:
  ADD s6, zero, zero
  ADD s7, zero, zero
  # implict jump to bb143
bb143:
  ADD s8, s7, zero
  ADD t4, s6, zero
  SW t4, 8(sp)
  ADD s10, s5, zero
  LW t3, 8(sp)
  ADDIW t4, t3, 1
  SW t4, 12(sp)
  LW t4, 12(sp)
  BLT t4, s10, bb148
  # implict jump to bb144
bb144:
  ADD s11, s8, zero
  # implict jump to bb145
bb145:
  ADD s3, s11, zero
  # implict jump to bb146
bb146:
  LA s11, m
  LW s11, 0(s11)
  LW t4, 12(sp)
  BLT t4, s11, bb147
  JAL zero, bb128
bb147:
  ADD s5, s11, zero
  LW t4, 12(sp)
  ADD s6, t4, zero
  ADD s7, s3, zero
  JAL zero, bb143
bb148:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  # implict jump to bb149
bb149:
  ADD t1, s8, zero
  LW t4, 32(sp)
  ADD t2, t4, zero
  LW t4, 8(sp)
  SLLIW a0, t4, 2
  LA a1, c
  ADD a1, a1, a0
  LW a2, 0(a1)
  SLLIW a3, t2, 2
  LA a4, c
  ADD a4, a4, a3
  LW a5, 0(a4)
  BLT a5, a2, bb155
  # implict jump to bb150
bb150:
  # implict jump to bb151
bb151:
  ADD s2, t1, zero
  ADDIW s1, t2, 1
  # implict jump to bb152
bb152:
  BLT s1, s10, bb154
  # implict jump to bb153
bb153:
  ADD s11, s2, zero
  JAL zero, bb145
bb154:
  ADD t4, s1, zero
  SW t4, 32(sp)
  ADD s8, s2, zero
  JAL zero, bb149
bb155:
  LA a2, u
  ADD a2, a2, a0
  LW a5, 0(a2)
  LA a6, u
  ADD a6, a6, a3
  LW a7, 0(a6)
  SW a7, 0(a2)
  SW a5, 0(a6)
  LA a2, v
  ADD a0, a2, a0
  LW a2, 0(a0)
  LA a5, v
  ADD a3, a5, a3
  LW a5, 0(a3)
  SW a5, 0(a0)
  SW a2, 0(a3)
  LW a0, 0(a1)
  LW a2, 0(a4)
  SW a2, 0(a1)
  SW a0, 0(a4)
  ADD t1, a0, zero
  JAL zero, bb151
quick_read:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  # implict jump to bb157
bb157:
  ADD s2, s0, zero
  ADD s3, s1, zero
  SLTI s4, s2, 48
  BNE s4, zero, bb173
  # implict jump to bb158
bb158:
  ADDI s4, zero, 57
  SLT s4, s4, s2
  # implict jump to bb159
bb159:
  BNE s4, zero, bb169
  # implict jump to bb160
bb160:
  ADD s4, zero, zero
  ADD s5, s2, zero
  # implict jump to bb161
bb161:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLTI s8, s6, 48
  XORI s8, s8, 1
  BNE s8, zero, bb168
  # implict jump to bb162
bb162:
  ADD s8, zero, zero
  # implict jump to bb163
bb163:
  BNE s8, zero, bb167
  # implict jump to bb164
bb164:
  BNE s3, zero, bb166
  # implict jump to bb165
bb165:
  ADD a0, s7, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb166:
  SUB s8, zero, s7
  ADD a0, s8, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb167:
  ADDI s8, zero, 10
  MULW s7, s7, s8
  ADDW s6, s7, s6
  ADDI s7, zero, 48
  SUBW s6, s6, s7
  CALL getch
  ADD s7, a0, zero
  ADD s4, s6, zero
  ADD s5, s7, zero
  JAL zero, bb161
bb168:
  ADDI s9, zero, 57
  SLT s9, s9, s6
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb163
bb169:
  XORI s2, s2, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb172
  # implict jump to bb170
bb170:
  ADD s2, s3, zero
  # implict jump to bb171
bb171:
  CALL getch
  ADD s1, s2, zero
  ADD s0, a0, zero
  JAL zero, bb157
bb172:
  ADDI s2, zero, 1
  JAL zero, bb171
bb173:
  ADDI s4, zero, 1
  JAL zero, bb159
