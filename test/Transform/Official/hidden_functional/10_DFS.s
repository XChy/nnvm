.global same
.global main
.section .bss
vis:
.space 4020
head:
.space 4020
next:
.space 20020
to:
.space 20020



.section .data




cnt:
.word 0x00000000
m:
.word 0x00000000
n:
.word 0x00000000
.section .text
same:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SLLIW s2, s0, 2
  LA s3, vis
  ADD s3, s3, s2
  ADDI s4, zero, 1
  SW s4, 0(s3)
  XOR s0, s0, s1
  SLTIU s0, s0, 1
  BNE s0, zero, bb10
  # implict jump to bb1
bb1:
  LA s0, head
  ADD s0, s0, s2
  LW s0, 0(s0)
  # implict jump to bb2
bb2:
  ADD s2, s0, zero
  XORI s3, s2, -1
  BNE s3, zero, bb4
  # implict jump to bb3
bb3:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb4:
  SLLIW s2, s2, 2
  LA s3, to
  ADD s3, s3, s2
  LW s3, 0(s3)
  SLLIW s4, s3, 2
  LA s5, vis
  ADD s4, s5, s4
  LW s4, 0(s4)
  SLTU s4, zero, s4
  XORI s4, s4, 1
  BNE s4, zero, bb9
  # implict jump to bb5
bb5:
  ADD s4, zero, zero
  # implict jump to bb6
bb6:
  BNE s4, zero, bb8
  # implict jump to bb7
bb7:
  LA s3, next
  ADD s2, s3, s2
  LW s2, 0(s2)
  ADD s0, s2, zero
  JAL zero, bb2
bb8:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb9:
  ADD a0, s3, zero
  ADD a1, s1, zero
  CALL same
  ADD s3, a0, zero
  SLTU s3, zero, s3
  ADD s4, s3, zero
  JAL zero, bb6
bb10:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -320
  SD ra, 208(sp)
  SD s0, 216(sp)
  SD s1, 224(sp)
  SD s7, 232(sp)
  SD s2, 240(sp)
  SD s3, 248(sp)
  SD s4, 256(sp)
  SD s6, 264(sp)
  SD s5, 272(sp)
  SD s8, 280(sp)
  SD s9, 288(sp)
  SD s10, 296(sp)
  SD s11, 304(sp)
  CALL getch
  ADD s0, a0, zero
  ADD t4, s0, zero
  SW t4, 200(sp)
  ADD t4, zero, zero
  SW t4, 196(sp)
  # implict jump to bb12
bb12:
  LW t3, 196(sp)
  ADD t4, t3, zero
  SW t4, 204(sp)
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t4, 112(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb139
  # implict jump to bb13
bb13:
  ADDI s4, zero, 57
  LW t4, 112(sp)
  SLT s4, s4, t4
  # implict jump to bb14
bb14:
  BNE s4, zero, bb135
  # implict jump to bb15
bb15:
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  ADD t4, zero, zero
  SW t4, 56(sp)
  # implict jump to bb16
bb16:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 8(sp)
  SLTI s8, t4, 48
  XORI s8, s8, 1
  BNE s8, zero, bb134
  # implict jump to bb17
bb17:
  ADD s8, zero, zero
  # implict jump to bb18
bb18:
  BNE s8, zero, bb133
  # implict jump to bb19
bb19:
  LW t4, 204(sp)
  BNE t4, zero, bb132
  # implict jump to bb20
bb20:
  LW t4, 12(sp)
  ADD s8, t4, zero
  # implict jump to bb21
bb21:
  LA s9, n
  SW s8, 0(s9)
  CALL getch
  ADD s8, a0, zero
  ADD t4, s8, zero
  SW t4, 20(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  # implict jump to bb22
bb22:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t4, 28(sp)
  SLTI s1, t4, 48
  BNE s1, zero, bb131
  # implict jump to bb23
bb23:
  ADDI s1, zero, 57
  LW t4, 28(sp)
  SLT s1, s1, t4
  # implict jump to bb24
bb24:
  BNE s1, zero, bb127
  # implict jump to bb25
bb25:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  # implict jump to bb26
bb26:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t4, 40(sp)
  SLTI s5, t4, 48
  XORI s5, s5, 1
  BNE s5, zero, bb126
  # implict jump to bb27
bb27:
  ADD s5, zero, zero
  # implict jump to bb28
bb28:
  BNE s5, zero, bb125
  # implict jump to bb29
bb29:
  LW t4, 24(sp)
  BNE t4, zero, bb124
  # implict jump to bb30
bb30:
  LW t4, 44(sp)
  ADD s4, t4, zero
  # implict jump to bb31
bb31:
  LA s5, m
  SW s4, 0(s5)
  ADD t4, zero, zero
  SW t4, 48(sp)
  # implict jump to bb32
bb32:
  LW t4, 48(sp)
  ADD s5, t4, zero
  SLLIW s7, s5, 2
  LA s6, head
  ADD s6, s6, s7
  ADDI s7, zero, -1
  SW s7, 0(s6)
  ADDIW t4, s5, 1
  SW t4, 52(sp)
  LW t4, 52(sp)
  SLTI s6, t4, 1005
  BNE s6, zero, bb123
  # implict jump to bb33
bb33:
  LA s6, m
  LW s6, 0(s6)
  BNE s6, zero, bb35
  # implict jump to bb34
bb34:
  ADD a0, zero, zero
  LD ra, 208(sp)
  LD s0, 216(sp)
  LD s1, 224(sp)
  LD s7, 232(sp)
  LD s2, 240(sp)
  LD s3, 248(sp)
  LD s4, 256(sp)
  LD s6, 264(sp)
  LD s5, 272(sp)
  LD s8, 280(sp)
  LD s9, 288(sp)
  LD s10, 296(sp)
  LD s11, 304(sp)
  ADDI sp, sp, 320
  JALR zero, 0(ra)
bb35:
  ADD t4, zero, zero
  SW t4, 88(sp)
  ADD t4, zero, zero
  SW t4, 84(sp)
  ADD t4, zero, zero
  SW t4, 80(sp)
  ADD t4, zero, zero
  SW t4, 76(sp)
  # implict jump to bb36
bb36:
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  CALL getch
  ADD s3, a0, zero
  ADD t4, s3, zero
  SW t4, 72(sp)
  # implict jump to bb37
bb37:
  LW t4, 72(sp)
  ADD s2, t4, zero
  XORI s4, s2, 81
  BNE s4, zero, bb122
  # implict jump to bb38
bb38:
  ADD s4, zero, zero
  # implict jump to bb39
bb39:
  BNE s4, zero, bb121
  # implict jump to bb40
bb40:
  XORI s2, s2, 81
  SLTIU s2, s2, 1
  BNE s2, zero, bb80
  # implict jump to bb41
bb41:
  CALL getch
  ADD s2, a0, zero
  ADD t4, s2, zero
  SW t4, 96(sp)
  ADD t4, zero, zero
  SW t4, 92(sp)
  # implict jump to bb42
bb42:
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t4, 104(sp)
  SLTI s11, t4, 48
  BNE s11, zero, bb79
  # implict jump to bb43
bb43:
  ADDI s11, zero, 57
  LW t4, 104(sp)
  SLT s11, s11, t4
  # implict jump to bb44
bb44:
  BNE s11, zero, bb75
  # implict jump to bb45
bb45:
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 192(sp)
  ADD t4, zero, zero
  SW t4, 108(sp)
  # implict jump to bb46
bb46:
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 188(sp)
  LW t4, 188(sp)
  SLTI s8, t4, 48
  XORI s8, s8, 1
  BNE s8, zero, bb74
  # implict jump to bb47
bb47:
  ADD s8, zero, zero
  # implict jump to bb48
bb48:
  BNE s8, zero, bb73
  # implict jump to bb49
bb49:
  LW t4, 100(sp)
  BNE t4, zero, bb72
  # implict jump to bb50
bb50:
  LW t4, 184(sp)
  ADD s8, t4, zero
  # implict jump to bb51
bb51:
  ADD t4, s8, zero
  SW t4, 180(sp)
  CALL getch
  ADD s9, a0, zero
  ADD t4, s9, zero
  SW t4, 172(sp)
  ADD t4, zero, zero
  SW t4, 176(sp)
  # implict jump to bb52
bb52:
  LW t4, 176(sp)
  ADD s6, t4, zero
  LW t4, 172(sp)
  ADD s4, t4, zero
  SLTI s2, s4, 48
  BNE s2, zero, bb71
  # implict jump to bb53
bb53:
  ADDI s2, zero, 57
  SLT s2, s2, s4
  # implict jump to bb54
bb54:
  BNE s2, zero, bb67
  # implict jump to bb55
bb55:
  ADD s2, s4, zero
  ADD s5, zero, zero
  # implict jump to bb56
bb56:
  ADD s10, s5, zero
  ADD s0, s2, zero
  SLTI s11, s0, 48
  XORI s11, s11, 1
  BNE s11, zero, bb66
  # implict jump to bb57
bb57:
  ADD s11, zero, zero
  # implict jump to bb58
bb58:
  BNE s11, zero, bb65
  # implict jump to bb59
bb59:
  BNE s6, zero, bb64
  # implict jump to bb60
bb60:
  ADD s3, s10, zero
  # implict jump to bb61
bb61:
  LA s11, cnt
  LW s11, 0(s11)
  SLLIW s1, s11, 2
  LA s8, to
  ADD s8, s8, s1
  SW s3, 0(s8)
  LA s8, next
  ADD s1, s8, s1
  LW t4, 180(sp)
  SLLIW s8, t4, 2
  LA s7, head
  ADD s7, s7, s8
  LW s8, 0(s7)
  SW s8, 0(s1)
  SW s11, 0(s7)
  ADDIW s1, s11, 1
  LA s7, cnt
  SW s1, 0(s7)
  SLLIW s7, s1, 2
  LA s8, to
  ADD s8, s8, s7
  LW t4, 180(sp)
  SW t4, 0(s8)
  LA s8, next
  ADD s7, s8, s7
  SLLIW s8, s3, 2
  LA s9, head
  ADD s8, s9, s8
  LW s9, 0(s8)
  SW s9, 0(s7)
  SW s1, 0(s8)
  ADDIW s1, s11, 2
  LA s7, cnt
  SW s1, 0(s7)
  ADD s1, s3, zero
  LW t4, 60(sp)
  ADD s3, t4, zero
  LW t4, 180(sp)
  ADD s7, t4, zero
  LW t4, 68(sp)
  ADD s8, t4, zero
  # implict jump to bb62
bb62:
  LA s9, m
  LW s9, 0(s9)
  ADDI s11, zero, 1
  SUBW s9, s9, s11
  LA s11, m
  SW s9, 0(s11)
  LA s9, m
  LW s9, 0(s9)
  BNE s9, zero, bb63
  JAL zero, bb34
bb63:
  ADD t4, s8, zero
  SW t4, 88(sp)
  ADD t4, s7, zero
  SW t4, 84(sp)
  ADD t4, s3, zero
  SW t4, 80(sp)
  ADD t4, s1, zero
  SW t4, 76(sp)
  JAL zero, bb36
bb64:
  SUB s11, zero, s10
  ADD s3, s11, zero
  JAL zero, bb61
bb65:
  ADDI s9, zero, 10
  MULW s9, s10, s9
  ADDW s0, s9, s0
  ADDI s9, zero, 48
  SUBW s0, s0, s9
  CALL getch
  ADD s9, a0, zero
  ADD s2, s9, zero
  ADD s5, s0, zero
  JAL zero, bb56
bb66:
  ADDI s3, zero, 57
  SLT s3, s3, s0
  XORI s3, s3, 1
  ADD s11, s3, zero
  JAL zero, bb58
bb67:
  XORI s0, s4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb70
  # implict jump to bb68
bb68:
  ADD s0, s6, zero
  # implict jump to bb69
bb69:
  CALL getch
  ADD s2, a0, zero
  ADD t4, s2, zero
  SW t4, 172(sp)
  ADD t4, s0, zero
  SW t4, 176(sp)
  JAL zero, bb52
bb70:
  ADDI s0, zero, 1
  JAL zero, bb69
bb71:
  ADDI s2, zero, 1
  JAL zero, bb54
bb72:
  LW t4, 184(sp)
  SUB s9, zero, t4
  ADD s8, s9, zero
  JAL zero, bb51
bb73:
  ADDI s0, zero, 10
  LW t4, 184(sp)
  MULW s0, t4, s0
  LW t4, 188(sp)
  ADDW s0, s0, t4
  ADDI s2, zero, 48
  SUBW s0, s0, s2
  CALL getch
  ADD s2, a0, zero
  ADD t4, s2, zero
  SW t4, 192(sp)
  ADD t4, s0, zero
  SW t4, 108(sp)
  JAL zero, bb46
bb74:
  ADDI s9, zero, 57
  LW t4, 188(sp)
  SLT s9, s9, t4
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb48
bb75:
  LW t4, 104(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb78
  # implict jump to bb76
bb76:
  LW t4, 100(sp)
  ADD s0, t4, zero
  # implict jump to bb77
bb77:
  CALL getch
  ADD s2, a0, zero
  ADD t4, s2, zero
  SW t4, 96(sp)
  ADD t4, s0, zero
  SW t4, 92(sp)
  JAL zero, bb42
bb78:
  ADDI s0, zero, 1
  JAL zero, bb77
bb79:
  ADDI s11, zero, 1
  JAL zero, bb44
bb80:
  CALL getch
  ADD s0, a0, zero
  ADD t4, s0, zero
  SW t4, 164(sp)
  ADD t4, zero, zero
  SW t4, 168(sp)
  # implict jump to bb81
bb81:
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  LW t4, 156(sp)
  SLTI s6, t4, 48
  BNE s6, zero, bb120
  # implict jump to bb82
bb82:
  ADDI s6, zero, 57
  LW t4, 156(sp)
  SLT s6, s6, t4
  # implict jump to bb83
bb83:
  BNE s6, zero, bb116
  # implict jump to bb84
bb84:
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 148(sp)
  ADD t4, zero, zero
  SW t4, 152(sp)
  # implict jump to bb85
bb85:
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LW t4, 144(sp)
  SLTI s2, t4, 48
  XORI s2, s2, 1
  BNE s2, zero, bb115
  # implict jump to bb86
bb86:
  ADD s2, zero, zero
  # implict jump to bb87
bb87:
  BNE s2, zero, bb114
  # implict jump to bb88
bb88:
  LW t4, 160(sp)
  BNE t4, zero, bb113
  # implict jump to bb89
bb89:
  LW t4, 140(sp)
  ADD s0, t4, zero
  # implict jump to bb90
bb90:
  ADD t4, s0, zero
  SW t4, 136(sp)
  CALL getch
  ADD s2, a0, zero
  ADD t4, s2, zero
  SW t4, 128(sp)
  ADD t4, zero, zero
  SW t4, 132(sp)
  # implict jump to bb91
bb91:
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t4, 120(sp)
  SLTI s6, t4, 48
  BNE s6, zero, bb112
  # implict jump to bb92
bb92:
  ADDI s6, zero, 57
  LW t4, 120(sp)
  SLT s6, s6, t4
  # implict jump to bb93
bb93:
  BNE s6, zero, bb108
  # implict jump to bb94
bb94:
  LW t4, 120(sp)
  ADD s6, t4, zero
  ADD t4, zero, zero
  SW t4, 116(sp)
  # implict jump to bb95
bb95:
  LW t4, 116(sp)
  ADD s10, t4, zero
  ADD s0, s6, zero
  SLTI s4, s0, 48
  XORI s4, s4, 1
  BNE s4, zero, bb107
  # implict jump to bb96
bb96:
  ADD s4, zero, zero
  # implict jump to bb97
bb97:
  BNE s4, zero, bb106
  # implict jump to bb98
bb98:
  LW t4, 124(sp)
  BNE t4, zero, bb105
  # implict jump to bb99
bb99:
  ADD s2, s10, zero
  # implict jump to bb100
bb100:
  LA s4, n
  LW s4, 0(s4)
  SLTI s4, s4, 1
  XORI s4, s4, 1
  BNE s4, zero, bb102
  # implict jump to bb101
bb101:
  LW t4, 136(sp)
  ADD a0, t4, zero
  ADD a1, s2, zero
  CALL same
  ADD s9, a0, zero
  ADD a0, s9, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t4, 0(sp)
  ADD s1, t4, zero
  LW t4, 136(sp)
  ADD s3, t4, zero
  LW t4, 64(sp)
  ADD s7, t4, zero
  ADD s8, s2, zero
  JAL zero, bb62
bb102:
  ADDI s4, zero, 1
  # implict jump to bb103
bb103:
  ADD s5, s4, zero
  SLLIW s9, s5, 2
  LA s11, vis
  ADD s9, s11, s9
  SW zero, 0(s9)
  ADDIW s5, s5, 1
  LA s9, n
  LW s9, 0(s9)
  SLT s9, s9, s5
  XORI s9, s9, 1
  BNE s9, zero, bb104
  JAL zero, bb101
bb104:
  ADD s4, s5, zero
  JAL zero, bb103
bb105:
  SUB s4, zero, s10
  ADD s2, s4, zero
  JAL zero, bb100
bb106:
  ADDI s1, zero, 10
  MULW s1, s10, s1
  ADDW s0, s1, s0
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD s6, s1, zero
  ADD t4, s0, zero
  SW t4, 116(sp)
  JAL zero, bb95
bb107:
  ADDI s2, zero, 57
  SLT s2, s2, s0
  XORI s2, s2, 1
  ADD s4, s2, zero
  JAL zero, bb97
bb108:
  LW t4, 120(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb111
  # implict jump to bb109
bb109:
  LW t4, 124(sp)
  ADD s0, t4, zero
  # implict jump to bb110
bb110:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s1, zero
  SW t4, 128(sp)
  ADD t4, s0, zero
  SW t4, 132(sp)
  JAL zero, bb91
bb111:
  ADDI s0, zero, 1
  JAL zero, bb110
bb112:
  ADDI s6, zero, 1
  JAL zero, bb93
bb113:
  LW t4, 140(sp)
  SUB s2, zero, t4
  ADD s0, s2, zero
  JAL zero, bb90
bb114:
  ADDI s0, zero, 10
  LW t4, 140(sp)
  MULW s0, t4, s0
  LW t4, 144(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s1, zero
  SW t4, 148(sp)
  ADD t4, s0, zero
  SW t4, 152(sp)
  JAL zero, bb85
bb115:
  ADDI s0, zero, 57
  LW t4, 144(sp)
  SLT s0, s0, t4
  XORI s0, s0, 1
  ADD s2, s0, zero
  JAL zero, bb87
bb116:
  LW t4, 156(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb119
  # implict jump to bb117
bb117:
  LW t4, 160(sp)
  ADD s0, t4, zero
  # implict jump to bb118
bb118:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s1, zero
  SW t4, 164(sp)
  ADD t4, s0, zero
  SW t4, 168(sp)
  JAL zero, bb81
bb119:
  ADDI s0, zero, 1
  JAL zero, bb118
bb120:
  ADDI s6, zero, 1
  JAL zero, bb83
bb121:
  CALL getch
  ADD s0, a0, zero
  ADD t4, s0, zero
  SW t4, 72(sp)
  JAL zero, bb37
bb122:
  XORI s5, s2, 85
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb39
bb123:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb32
bb124:
  LW t4, 44(sp)
  SUB s5, zero, t4
  ADD s4, s5, zero
  JAL zero, bb31
bb125:
  ADDI s0, zero, 10
  LW t4, 44(sp)
  MULW s0, t4, s0
  LW t4, 40(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s1, zero
  SW t4, 36(sp)
  ADD t4, s0, zero
  SW t4, 32(sp)
  JAL zero, bb26
bb126:
  ADDI s4, zero, 57
  LW t4, 40(sp)
  SLT s4, s4, t4
  XORI s4, s4, 1
  ADD s5, s4, zero
  JAL zero, bb28
bb127:
  LW t4, 28(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb130
  # implict jump to bb128
bb128:
  LW t4, 24(sp)
  ADD s0, t4, zero
  # implict jump to bb129
bb129:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s1, zero
  SW t4, 20(sp)
  ADD t4, s0, zero
  SW t4, 16(sp)
  JAL zero, bb22
bb130:
  ADDI s0, zero, 1
  JAL zero, bb129
bb131:
  ADDI s1, zero, 1
  JAL zero, bb24
bb132:
  LW t4, 12(sp)
  SUB s9, zero, t4
  ADD s8, s9, zero
  JAL zero, bb21
bb133:
  ADDI s0, zero, 10
  LW t4, 12(sp)
  MULW s0, t4, s0
  LW t4, 8(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s1, zero
  SW t4, 4(sp)
  ADD t4, s0, zero
  SW t4, 56(sp)
  JAL zero, bb16
bb134:
  ADDI s9, zero, 57
  LW t4, 8(sp)
  SLT s9, s9, t4
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb18
bb135:
  LW t4, 112(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb138
  # implict jump to bb136
bb136:
  LW t4, 204(sp)
  ADD s0, t4, zero
  # implict jump to bb137
bb137:
  CALL getch
  ADD t4, a0, zero
  SW t4, 200(sp)
  ADD t4, s0, zero
  SW t4, 196(sp)
  JAL zero, bb12
bb138:
  ADDI s0, zero, 1
  JAL zero, bb137
bb139:
  ADDI s4, zero, 1
  JAL zero, bb14
