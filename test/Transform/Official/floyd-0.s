.global mem_move
.global floyd
.global main
.global getvalue
.section .bss
c:
.space 8388608
dst:
.space 8388608
w:
.space 8388608
temp:
.space 8388608

.section .data




maxlen:
.word 0x00200000
.section .text
mem_move:
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
  ADD s2, a2, zero
  ADD s3, zero, zero
  JAL zero, bb1
bb1:
  ADD s4, s3, zero
  SLT s5, s4, s2
  BNE s5, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s5, s1, s6
  ADD s7, s0, s6
  LW s6, 0(s7)
  SW s6, 0(s5)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb1
bb3:
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
floyd:
  ADDI sp, sp, -240
  SD s11, 128(sp)
  SD s2, 136(sp)
  SD s10, 144(sp)
  SD s1, 152(sp)
  SD ra, 160(sp)
  SD s0, 168(sp)
  SD s5, 176(sp)
  SD s7, 184(sp)
  SD s8, 192(sp)
  SD s9, 200(sp)
  SD s3, 208(sp)
  SD s4, 216(sp)
  SD s6, 224(sp)
  ADD s0, a0, zero
  ADD t4, a1, zero
  SD t4, 0(sp)
  ADD t4, a2, zero
  SW t4, 8(sp)
  ADD s3, zero, zero
  JAL zero, bb5
bb5:
  ADD s4, s3, zero
  LW t4, 8(sp)
  SLT s5, s4, t4
  BNE s5, zero, bb6
  JAL zero, bb7
bb6:
  ADD s5, zero, zero
  JAL zero, bb8
bb7:
  ADD t4, zero, zero
  SB t4, 48(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  JAL zero, bb12
bb8:
  ADD s6, s5, zero
  LW t4, 8(sp)
  SLT s7, s6, t4
  BNE s7, zero, bb9
  JAL zero, bb11
bb9:
  LW t4, 8(sp)
  MULW s7, s6, t4
  ADDW s8, s7, s4
  ADDI s7, zero, 4
  MULW s9, s8, s7
  LA s7, temp
  ADD s8, s7, s9
  SLT s7, s6, zero
  BNE s7, zero, bb41
  JAL zero, bb42
bb10:
  ADD t1, t0, zero
  SW t1, 0(s8)
  ADDIW t1, s6, 1
  ADD s5, t1, zero
  JAL zero, bb8
bb11:
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb5
bb12:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t4, 32(sp)
  ADD s6, t4, zero
  LB t4, 48(sp)
  ADD s7, t4, zero
  LW t4, 56(sp)
  LW t3, 8(sp)
  SLT s8, t4, t3
  BNE s8, zero, bb13
  JAL zero, bb14
bb13:
  ADD t4, s7, zero
  SB t4, 96(sp)
  ADD t4, zero, zero
  SW t4, 80(sp)
  ADD t4, s6, zero
  SW t4, 72(sp)
  JAL zero, bb16
bb14:
  LW t4, 8(sp)
  LW t3, 8(sp)
  MULW s0, t4, t3
  JAL zero, bb37
bb15:
  LD s11, 128(sp)
  LD s2, 136(sp)
  LD s10, 144(sp)
  LD s1, 152(sp)
  LD ra, 160(sp)
  LD s0, 168(sp)
  LD s5, 176(sp)
  LD s7, 184(sp)
  LD s8, 192(sp)
  LD s9, 200(sp)
  LD s3, 208(sp)
  LD s4, 216(sp)
  LD s6, 224(sp)
  ADDI sp, sp, 240
  JALR zero, 0(ra)
bb16:
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LB t3, 96(sp)
  ADD t4, t3, zero
  SB t4, 40(sp)
  LW t4, 104(sp)
  LW t3, 8(sp)
  SLT t0, t4, t3
  BNE t0, zero, bb17
  JAL zero, bb18
bb17:
  LB t4, 40(sp)
  ADD t0, t4, zero
  ADD t1, zero, zero
  JAL zero, bb19
bb18:
  LW t4, 56(sp)
  ADDIW s0, t4, 1
  LB t3, 40(sp)
  ADD t4, t3, zero
  SB t4, 48(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  ADD t4, s0, zero
  SW t4, 16(sp)
  JAL zero, bb12
bb19:
  ADD t4, t1, zero
  SW t4, 64(sp)
  ADD t4, t0, zero
  SB t4, 88(sp)
  LW t4, 64(sp)
  LW t3, 8(sp)
  SLT a1, t4, t3
  BNE a1, zero, bb20
  JAL zero, bb22
bb20:
  LW t3, 104(sp)
  SLT t4, t3, zero
  SB t4, 112(sp)
  LB t4, 112(sp)
  BNE t4, zero, bb52
  JAL zero, bb53
bb21:
  ADD a6, a5, zero
  SLT a7, a6, zero
  XORI s1, a7, 1
  BNE s1, zero, bb23
  JAL zero, bb25
bb22:
  LW t4, 104(sp)
  ADDIW s0, t4, 1
  LB t3, 88(sp)
  ADD t4, t3, zero
  SB t4, 96(sp)
  ADD t4, s0, zero
  SW t4, 80(sp)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  JAL zero, bb16
bb23:
  LW t4, 56(sp)
  SLT s1, t4, zero
  BNE s1, zero, bb63
  JAL zero, bb64
bb24:
  ADD s6, s4, zero
  SLT s3, s6, zero
  XORI s6, s3, 1
  ADD s3, s6, zero
  JAL zero, bb26
bb25:
  ADD s3, zero, zero
  JAL zero, bb26
bb26:
  ADD s6, s3, zero
  BNE s6, zero, bb27
  JAL zero, bb29
bb27:
  LB t4, 112(sp)
  BNE t4, zero, bb74
  JAL zero, bb75
bb28:
  ADD s9, t2, zero
  SLT s7, s9, zero
  BNE s7, zero, bb30
  JAL zero, bb33
bb29:
  LW t4, 64(sp)
  ADDIW a1, t4, 1
  ADD t0, s6, zero
  ADD t1, a1, zero
  JAL zero, bb19
bb30:
  LW t4, 104(sp)
  LW t3, 8(sp)
  MULW s7, t4, t3
  LW t4, 64(sp)
  ADDW s9, s7, t4
  ADDI s7, zero, 4
  MULW a0, s9, s7
  LA s7, temp
  ADD s9, s7, a0
  LW t4, 56(sp)
  SLT s7, t4, zero
  BNE s7, zero, bb85
  JAL zero, bb86
bb31:
  ADD a1, s10, zero
  ADDW a2, a6, a1
  SW a2, 0(s9)
  JAL zero, bb32
bb32:
  JAL zero, bb29
bb33:
  LW t4, 104(sp)
  LW t3, 8(sp)
  MULW s7, t4, t3
  LW t4, 64(sp)
  ADDW s8, s7, t4
  ADDI s7, zero, 4
  MULW s9, s8, s7
  LA s7, temp
  ADD s8, s7, s9
  LW s7, 0(s8)
  LW t4, 56(sp)
  SLT s9, t4, zero
  BNE s9, zero, bb96
  JAL zero, bb97
bb34:
  ADD a0, t1, zero
  ADDW a1, a6, a0
  SLT a0, a1, s7
  BNE a0, zero, bb35
  JAL zero, bb36
bb35:
  SW a1, 0(s8)
  JAL zero, bb36
bb36:
  JAL zero, bb32
bb37:
  ADD s1, zero, zero
  JAL zero, bb38
bb38:
  ADD s2, s1, zero
  SLT s3, s2, s0
  BNE s3, zero, bb39
  JAL zero, bb40
bb39:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LD t4, 0(sp)
  ADD s3, t4, s4
  LA s5, temp
  ADD s6, s5, s4
  LW s4, 0(s6)
  SW s4, 0(s3)
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb38
bb40:
  JAL zero, bb15
bb41:
  ADDI s7, zero, 1
  JAL zero, bb43
bb42:
  LW t4, 8(sp)
  SLT s5, s6, t4
  XORI s10, s5, 1
  ADD s7, s10, zero
  JAL zero, bb43
bb43:
  ADD s10, s7, zero
  BNE s10, zero, bb44
  JAL zero, bb45
bb44:
  ADDI s10, zero, 1
  JAL zero, bb46
bb45:
  SLT s5, s4, zero
  ADD s10, s5, zero
  JAL zero, bb46
bb46:
  ADD s11, s10, zero
  BNE s11, zero, bb47
  JAL zero, bb48
bb47:
  ADDI s11, zero, 1
  JAL zero, bb49
bb48:
  LW t4, 8(sp)
  SLT s5, s4, t4
  XORI t0, s5, 1
  ADD s11, t0, zero
  JAL zero, bb49
bb49:
  ADD t0, s11, zero
  BNE t0, zero, bb50
  JAL zero, bb51
bb50:
  ADDI t0, zero, -1
  JAL zero, bb10
bb51:
  ADD s5, s0, s9
  LW t1, 0(s5)
  ADD t0, t1, zero
  JAL zero, bb10
bb52:
  ADDI t4, zero, 1
  SB t4, 120(sp)
  JAL zero, bb54
bb53:
  LW t4, 104(sp)
  LW t3, 8(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 120(sp)
  JAL zero, bb54
bb54:
  LB t4, 120(sp)
  ADD a3, t4, zero
  BNE a3, zero, bb55
  JAL zero, bb56
bb55:
  ADDI a3, zero, 1
  JAL zero, bb57
bb56:
  LW t4, 56(sp)
  SLT s0, t4, zero
  ADD a3, s0, zero
  JAL zero, bb57
bb57:
  ADD a4, a3, zero
  BNE a4, zero, bb58
  JAL zero, bb59
bb58:
  ADDI a4, zero, 1
  JAL zero, bb60
bb59:
  LW t4, 56(sp)
  LW t3, 8(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD a4, s1, zero
  JAL zero, bb60
bb60:
  ADD a5, a4, zero
  BNE a5, zero, bb61
  JAL zero, bb62
bb61:
  ADDI a5, zero, -1
  JAL zero, bb21
bb62:
  LW t4, 104(sp)
  LW t3, 8(sp)
  MULW s0, t4, t3
  LW t4, 56(sp)
  ADDW s1, s0, t4
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, temp
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a5, s0, zero
  JAL zero, bb21
bb63:
  ADDI s1, zero, 1
  JAL zero, bb65
bb64:
  LW t4, 56(sp)
  LW t3, 8(sp)
  SLT s0, t4, t3
  XORI s2, s0, 1
  ADD s1, s2, zero
  JAL zero, bb65
bb65:
  ADD a7, s1, zero
  BNE a7, zero, bb66
  JAL zero, bb67
bb66:
  ADDI a7, zero, 1
  JAL zero, bb68
bb67:
  LW t4, 64(sp)
  SLT s0, t4, zero
  ADD a7, s0, zero
  JAL zero, bb68
bb68:
  ADD s2, a7, zero
  BNE s2, zero, bb69
  JAL zero, bb70
bb69:
  ADDI s2, zero, 1
  JAL zero, bb71
bb70:
  LW t4, 64(sp)
  LW t3, 8(sp)
  SLT s0, t4, t3
  XORI s4, s0, 1
  ADD s2, s4, zero
  JAL zero, bb71
bb71:
  ADD s4, s2, zero
  BNE s4, zero, bb72
  JAL zero, bb73
bb72:
  ADDI s4, zero, -1
  JAL zero, bb24
bb73:
  LW t4, 56(sp)
  LW t3, 8(sp)
  MULW s0, t4, t3
  LW t4, 64(sp)
  ADDW s5, s0, t4
  ADDI s0, zero, 4
  MULW s6, s5, s0
  LA s0, temp
  ADD s5, s0, s6
  LW s0, 0(s5)
  ADD s4, s0, zero
  JAL zero, bb24
bb74:
  ADDI s11, zero, 1
  JAL zero, bb76
bb75:
  LW t4, 104(sp)
  LW t3, 8(sp)
  SLT s0, t4, t3
  XORI s5, s0, 1
  ADD s11, s5, zero
  JAL zero, bb76
bb76:
  ADD s0, s11, zero
  BNE s0, zero, bb77
  JAL zero, bb78
bb77:
  ADDI s0, zero, 1
  JAL zero, bb79
bb78:
  LW t4, 64(sp)
  SLT s5, t4, zero
  ADD s0, s5, zero
  JAL zero, bb79
bb79:
  ADD s5, s0, zero
  BNE s5, zero, bb80
  JAL zero, bb81
bb80:
  ADDI s5, zero, 1
  JAL zero, bb82
bb81:
  LW t4, 64(sp)
  LW t3, 8(sp)
  SLT s7, t4, t3
  XORI s8, s7, 1
  ADD s5, s8, zero
  JAL zero, bb82
bb82:
  ADD t2, s5, zero
  BNE t2, zero, bb83
  JAL zero, bb84
bb83:
  ADDI t2, zero, -1
  JAL zero, bb28
bb84:
  LW t4, 104(sp)
  LW t3, 8(sp)
  MULW s7, t4, t3
  LW t4, 64(sp)
  ADDW s8, s7, t4
  ADDI s7, zero, 4
  MULW s9, s8, s7
  LA s7, temp
  ADD s8, s7, s9
  LW s7, 0(s8)
  ADD t2, s7, zero
  JAL zero, bb28
bb85:
  ADDI s7, zero, 1
  JAL zero, bb87
bb86:
  LW t4, 56(sp)
  LW t3, 8(sp)
  SLT s8, t4, t3
  XORI s10, s8, 1
  ADD s7, s10, zero
  JAL zero, bb87
bb87:
  ADD a0, s7, zero
  BNE a0, zero, bb88
  JAL zero, bb89
bb88:
  ADDI a0, zero, 1
  JAL zero, bb90
bb89:
  LW t4, 64(sp)
  SLT s8, t4, zero
  ADD a0, s8, zero
  JAL zero, bb90
bb90:
  ADD s8, a0, zero
  BNE s8, zero, bb91
  JAL zero, bb92
bb91:
  ADDI s8, zero, 1
  JAL zero, bb93
bb92:
  LW t4, 64(sp)
  LW t3, 8(sp)
  SLT s10, t4, t3
  XORI t0, s10, 1
  ADD s8, t0, zero
  JAL zero, bb93
bb93:
  ADD s10, s8, zero
  BNE s10, zero, bb94
  JAL zero, bb95
bb94:
  ADDI s10, zero, -1
  JAL zero, bb31
bb95:
  LW t4, 56(sp)
  LW t3, 8(sp)
  MULW t0, t4, t3
  LW t4, 64(sp)
  ADDW t1, t0, t4
  ADDI t0, zero, 4
  MULW a1, t1, t0
  LA t0, temp
  ADD t1, t0, a1
  LW t0, 0(t1)
  ADD s10, t0, zero
  JAL zero, bb31
bb96:
  ADDI s9, zero, 1
  JAL zero, bb98
bb97:
  LW t4, 56(sp)
  LW t3, 8(sp)
  SLT s10, t4, t3
  XORI t0, s10, 1
  ADD s9, t0, zero
  JAL zero, bb98
bb98:
  ADD s10, s9, zero
  BNE s10, zero, bb99
  JAL zero, bb100
bb99:
  ADDI s10, zero, 1
  JAL zero, bb101
bb100:
  LW t4, 64(sp)
  SLT t0, t4, zero
  ADD s10, t0, zero
  JAL zero, bb101
bb101:
  ADD t0, s10, zero
  BNE t0, zero, bb102
  JAL zero, bb103
bb102:
  ADDI t0, zero, 1
  JAL zero, bb104
bb103:
  LW t4, 64(sp)
  LW t3, 8(sp)
  SLT t1, t4, t3
  XORI a0, t1, 1
  ADD t0, a0, zero
  JAL zero, bb104
bb104:
  ADD t1, t0, zero
  BNE t1, zero, bb105
  JAL zero, bb106
bb105:
  ADDI t1, zero, -1
  JAL zero, bb34
bb106:
  LW t4, 56(sp)
  LW t3, 8(sp)
  MULW a0, t4, t3
  LW t4, 64(sp)
  ADDW a1, a0, t4
  ADDI a0, zero, 4
  MULW a2, a1, a0
  LA a0, temp
  ADD a1, a0, a2
  LW a0, 0(a1)
  ADD t1, a0, zero
  JAL zero, bb34
main:
  ADDI sp, sp, -320
  SD ra, 208(sp)
  SD s9, 216(sp)
  SD s8, 224(sp)
  SD s7, 232(sp)
  SD s10, 240(sp)
  SD s1, 248(sp)
  SD s6, 256(sp)
  SD s2, 264(sp)
  SD s3, 272(sp)
  SD s4, 280(sp)
  SD s5, 288(sp)
  SD s0, 296(sp)
  SD s11, 304(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 0(sp)
  LA s1, w
  ADD a0, s1, zero
  CALL getarray
  ADD s1, a0, zero
  ADDI a0, zero, 62
  CALL _sysy_starttime
  JAL zero, bb108
bb108:
  ADD s1, zero, zero
  JAL zero, bb109
bb109:
  ADD s2, s1, zero
  LW t4, 0(sp)
  SLT s3, s2, t4
  BNE s3, zero, bb110
  JAL zero, bb111
bb110:
  ADD s3, zero, zero
  JAL zero, bb112
bb111:
  ADD t4, zero, zero
  SB t4, 40(sp)
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  JAL zero, bb116
bb112:
  ADD s4, s3, zero
  LW t4, 0(sp)
  SLT s5, s4, t4
  BNE s5, zero, bb113
  JAL zero, bb115
bb113:
  LW t4, 0(sp)
  MULW s5, s4, t4
  ADDW s6, s5, s2
  ADDI s5, zero, 4
  MULW s7, s6, s5
  LA s5, temp
  ADD s6, s5, s7
  SLT s5, s4, zero
  BNE s5, zero, bb144
  JAL zero, bb145
bb114:
  ADD s11, s10, zero
  SW s11, 0(s6)
  ADDIW s11, s4, 1
  ADD s3, s11, zero
  JAL zero, bb112
bb115:
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb109
bb116:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t4, 24(sp)
  ADD s5, t4, zero
  LB t4, 40(sp)
  ADD s6, t4, zero
  LW t4, 48(sp)
  LW t3, 0(sp)
  SLT s7, t4, t3
  BNE s7, zero, bb117
  JAL zero, bb118
bb117:
  ADD t4, s6, zero
  SB t4, 88(sp)
  ADD t4, zero, zero
  SW t4, 72(sp)
  ADD t4, s5, zero
  SW t4, 64(sp)
  JAL zero, bb119
bb118:
  LW t4, 0(sp)
  LW t3, 0(sp)
  MULW s0, t4, t3
  JAL zero, bb140
bb119:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LB t3, 88(sp)
  ADD t4, t3, zero
  SB t4, 32(sp)
  LW t4, 96(sp)
  LW t3, 0(sp)
  SLT s11, t4, t3
  BNE s11, zero, bb120
  JAL zero, bb121
bb120:
  LB t4, 32(sp)
  ADD s11, t4, zero
  ADD s0, zero, zero
  JAL zero, bb122
bb121:
  LW t4, 48(sp)
  ADDIW s0, t4, 1
  LB t3, 32(sp)
  ADD t4, t3, zero
  SB t4, 40(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  ADD t4, s0, zero
  SW t4, 8(sp)
  JAL zero, bb116
bb122:
  ADD t4, s0, zero
  SW t4, 56(sp)
  ADD t4, s11, zero
  SB t4, 80(sp)
  LW t4, 56(sp)
  LW t3, 0(sp)
  SLT s2, t4, t3
  BNE s2, zero, bb123
  JAL zero, bb125
bb123:
  LW t3, 96(sp)
  SLT t4, t3, zero
  SB t4, 104(sp)
  LB t4, 104(sp)
  BNE t4, zero, bb155
  JAL zero, bb156
bb124:
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LW t4, 144(sp)
  SLT s6, t4, zero
  XORI s5, s6, 1
  BNE s5, zero, bb126
  JAL zero, bb128
bb125:
  LW t4, 96(sp)
  ADDIW s0, t4, 1
  LB t3, 80(sp)
  ADD t4, t3, zero
  SB t4, 88(sp)
  ADD t4, s0, zero
  SW t4, 72(sp)
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  JAL zero, bb119
bb126:
  LW t4, 48(sp)
  SLT s5, t4, zero
  BNE s5, zero, bb166
  JAL zero, bb167
bb127:
  LW t4, 184(sp)
  ADD s2, t4, zero
  SLT s10, s2, zero
  XORI s2, s10, 1
  ADD t4, s2, zero
  SB t4, 152(sp)
  JAL zero, bb129
bb128:
  ADD t4, zero, zero
  SB t4, 152(sp)
  JAL zero, bb129
bb129:
  LB t3, 152(sp)
  ADD t4, t3, zero
  SB t4, 192(sp)
  LB t4, 192(sp)
  BNE t4, zero, bb130
  JAL zero, bb132
bb130:
  LB t4, 104(sp)
  BNE t4, zero, bb177
  JAL zero, bb178
bb131:
  ADD s10, s8, zero
  SLT s5, s10, zero
  BNE s5, zero, bb133
  JAL zero, bb136
bb132:
  LW t4, 56(sp)
  ADDIW s1, t4, 1
  LB t4, 192(sp)
  ADD s11, t4, zero
  ADD s0, s1, zero
  JAL zero, bb122
bb133:
  LW t4, 96(sp)
  LW t3, 0(sp)
  MULW s5, t4, t3
  LW t4, 56(sp)
  ADDW s10, s5, t4
  ADDI s5, zero, 4
  MULW s6, s10, s5
  LA s5, temp
  ADD s10, s5, s6
  LW t4, 48(sp)
  SLT s5, t4, zero
  BNE s5, zero, bb188
  JAL zero, bb189
bb134:
  ADD s2, s9, zero
  LW t4, 144(sp)
  ADDW s1, t4, s2
  SW s1, 0(s10)
  JAL zero, bb135
bb135:
  JAL zero, bb132
bb136:
  LW t4, 96(sp)
  LW t3, 0(sp)
  MULW s0, t4, t3
  LW t4, 56(sp)
  ADDW s1, s0, t4
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, temp
  ADD s1, s0, s2
  LW s0, 0(s1)
  LW t4, 48(sp)
  SLT s2, t4, zero
  BNE s2, zero, bb199
  JAL zero, bb200
bb137:
  ADD s9, s7, zero
  LW t4, 144(sp)
  ADDW s10, t4, s9
  SLT s9, s10, s0
  BNE s9, zero, bb138
  JAL zero, bb139
bb138:
  SW s10, 0(s1)
  JAL zero, bb139
bb139:
  JAL zero, bb135
bb140:
  ADD s1, zero, zero
  JAL zero, bb141
bb141:
  ADD s2, s1, zero
  SLT s3, s2, s0
  BNE s3, zero, bb142
  JAL zero, bb143
bb142:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s3, dst
  ADD s5, s3, s4
  LA s3, temp
  ADD s6, s3, s4
  LW s3, 0(s6)
  SW s3, 0(s5)
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb141
bb143:
  ADDI a0, zero, 64
  CALL _sysy_stoptime
  ADD a0, s0, zero
  LA s0, dst
  ADD a1, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 208(sp)
  LD s9, 216(sp)
  LD s8, 224(sp)
  LD s7, 232(sp)
  LD s10, 240(sp)
  LD s1, 248(sp)
  LD s6, 256(sp)
  LD s2, 264(sp)
  LD s3, 272(sp)
  LD s4, 280(sp)
  LD s5, 288(sp)
  LD s0, 296(sp)
  LD s11, 304(sp)
  ADDI sp, sp, 320
  JALR zero, 0(ra)
bb144:
  ADDI s5, zero, 1
  JAL zero, bb146
bb145:
  LW t4, 0(sp)
  SLT s3, s4, t4
  XORI s8, s3, 1
  ADD s5, s8, zero
  JAL zero, bb146
bb146:
  ADD s8, s5, zero
  BNE s8, zero, bb147
  JAL zero, bb148
bb147:
  ADDI s8, zero, 1
  JAL zero, bb149
bb148:
  SLT s3, s2, zero
  ADD s8, s3, zero
  JAL zero, bb149
bb149:
  ADD s9, s8, zero
  BNE s9, zero, bb150
  JAL zero, bb151
bb150:
  ADDI s9, zero, 1
  JAL zero, bb152
bb151:
  LW t4, 0(sp)
  SLT s3, s2, t4
  XORI s10, s3, 1
  ADD s9, s10, zero
  JAL zero, bb152
bb152:
  ADD s10, s9, zero
  BNE s10, zero, bb153
  JAL zero, bb154
bb153:
  ADDI s10, zero, -1
  JAL zero, bb114
bb154:
  LA s3, w
  ADD s11, s3, s7
  LW s3, 0(s11)
  ADD s10, s3, zero
  JAL zero, bb114
bb155:
  ADDI t4, zero, 1
  SB t4, 112(sp)
  JAL zero, bb157
bb156:
  LW t4, 96(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 112(sp)
  JAL zero, bb157
bb157:
  LB t4, 112(sp)
  ADD s1, t4, zero
  BNE s1, zero, bb158
  JAL zero, bb159
bb158:
  ADDI t4, zero, 1
  SB t4, 120(sp)
  JAL zero, bb160
bb159:
  LW t4, 48(sp)
  SLT s0, t4, zero
  ADD t4, s0, zero
  SB t4, 120(sp)
  JAL zero, bb160
bb160:
  LB t4, 120(sp)
  ADD s4, t4, zero
  BNE s4, zero, bb161
  JAL zero, bb162
bb161:
  ADDI t4, zero, 1
  SB t4, 128(sp)
  JAL zero, bb163
bb162:
  LW t4, 48(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 128(sp)
  JAL zero, bb163
bb163:
  LB t4, 128(sp)
  ADD s3, t4, zero
  BNE s3, zero, bb164
  JAL zero, bb165
bb164:
  ADDI t4, zero, -1
  SW t4, 136(sp)
  JAL zero, bb124
bb165:
  LW t4, 96(sp)
  LW t3, 0(sp)
  MULW s0, t4, t3
  LW t4, 48(sp)
  ADDW s1, s0, t4
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, temp
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 136(sp)
  JAL zero, bb124
bb166:
  ADDI t4, zero, 1
  SB t4, 160(sp)
  JAL zero, bb168
bb167:
  LW t4, 48(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 160(sp)
  JAL zero, bb168
bb168:
  LB t4, 160(sp)
  ADD s6, t4, zero
  BNE s6, zero, bb169
  JAL zero, bb170
bb169:
  ADDI t4, zero, 1
  SB t4, 168(sp)
  JAL zero, bb171
bb170:
  LW t4, 56(sp)
  SLT s0, t4, zero
  ADD t4, s0, zero
  SB t4, 168(sp)
  JAL zero, bb171
bb171:
  LB t4, 168(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb172
  JAL zero, bb173
bb172:
  ADDI t4, zero, 1
  SB t4, 176(sp)
  JAL zero, bb174
bb173:
  LW t4, 56(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 176(sp)
  JAL zero, bb174
bb174:
  LB t4, 176(sp)
  ADD s9, t4, zero
  BNE s9, zero, bb175
  JAL zero, bb176
bb175:
  ADDI t4, zero, -1
  SW t4, 184(sp)
  JAL zero, bb127
bb176:
  LW t4, 48(sp)
  LW t3, 0(sp)
  MULW s0, t4, t3
  LW t4, 56(sp)
  ADDW s1, s0, t4
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, temp
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 184(sp)
  JAL zero, bb127
bb177:
  ADDI t4, zero, 1
  SB t4, 200(sp)
  JAL zero, bb179
bb178:
  LW t4, 96(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 200(sp)
  JAL zero, bb179
bb179:
  LB t4, 200(sp)
  ADD s4, t4, zero
  BNE s4, zero, bb180
  JAL zero, bb181
bb180:
  ADDI s4, zero, 1
  JAL zero, bb182
bb181:
  LW t4, 56(sp)
  SLT s0, t4, zero
  ADD s4, s0, zero
  JAL zero, bb182
bb182:
  ADD s3, s4, zero
  BNE s3, zero, bb183
  JAL zero, bb184
bb183:
  ADDI s3, zero, 1
  JAL zero, bb185
bb184:
  LW t4, 56(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD s3, s1, zero
  JAL zero, bb185
bb185:
  ADD s8, s3, zero
  BNE s8, zero, bb186
  JAL zero, bb187
bb186:
  ADDI s8, zero, -1
  JAL zero, bb131
bb187:
  LW t4, 96(sp)
  LW t3, 0(sp)
  MULW s0, t4, t3
  LW t4, 56(sp)
  ADDW s1, s0, t4
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, temp
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD s8, s0, zero
  JAL zero, bb131
bb188:
  ADDI s5, zero, 1
  JAL zero, bb190
bb189:
  LW t4, 48(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD s5, s1, zero
  JAL zero, bb190
bb190:
  ADD s6, s5, zero
  BNE s6, zero, bb191
  JAL zero, bb192
bb191:
  ADDI s6, zero, 1
  JAL zero, bb193
bb192:
  LW t4, 56(sp)
  SLT s0, t4, zero
  ADD s6, s0, zero
  JAL zero, bb193
bb193:
  ADD s7, s6, zero
  BNE s7, zero, bb194
  JAL zero, bb195
bb194:
  ADDI s7, zero, 1
  JAL zero, bb196
bb195:
  LW t4, 56(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD s7, s1, zero
  JAL zero, bb196
bb196:
  ADD s9, s7, zero
  BNE s9, zero, bb197
  JAL zero, bb198
bb197:
  ADDI s9, zero, -1
  JAL zero, bb134
bb198:
  LW t4, 48(sp)
  LW t3, 0(sp)
  MULW s0, t4, t3
  LW t4, 56(sp)
  ADDW s1, s0, t4
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, temp
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD s9, s0, zero
  JAL zero, bb134
bb199:
  ADDI s2, zero, 1
  JAL zero, bb201
bb200:
  LW t4, 48(sp)
  LW t3, 0(sp)
  SLT s5, t4, t3
  XORI s6, s5, 1
  ADD s2, s6, zero
  JAL zero, bb201
bb201:
  ADD s5, s2, zero
  BNE s5, zero, bb202
  JAL zero, bb203
bb202:
  ADDI s5, zero, 1
  JAL zero, bb204
bb203:
  LW t4, 56(sp)
  SLT s6, t4, zero
  ADD s5, s6, zero
  JAL zero, bb204
bb204:
  ADD s6, s5, zero
  BNE s6, zero, bb205
  JAL zero, bb206
bb205:
  ADDI s6, zero, 1
  JAL zero, bb207
bb206:
  LW t4, 56(sp)
  LW t3, 0(sp)
  SLT s7, t4, t3
  XORI s9, s7, 1
  ADD s6, s9, zero
  JAL zero, bb207
bb207:
  ADD s7, s6, zero
  BNE s7, zero, bb208
  JAL zero, bb209
bb208:
  ADDI s7, zero, -1
  JAL zero, bb137
bb209:
  LW t4, 48(sp)
  LW t3, 0(sp)
  MULW s9, t4, t3
  LW t4, 56(sp)
  ADDW s10, s9, t4
  ADDI s9, zero, 4
  MULW s11, s10, s9
  LA s9, temp
  ADD s10, s9, s11
  LW s9, 0(s10)
  ADD s7, s9, zero
  JAL zero, bb137
getvalue:
  ADDI sp, sp, -96
  SD s9, 0(sp)
  SD ra, 8(sp)
  SD s8, 16(sp)
  SD s0, 24(sp)
  SD s5, 32(sp)
  SD s7, 40(sp)
  SD s1, 48(sp)
  SD s6, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  SLT s4, s2, zero
  BNE s4, zero, bb211
  JAL zero, bb212
bb211:
  ADDI s4, zero, 1
  JAL zero, bb213
bb212:
  SLT s5, s2, s1
  XORI s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb213
bb213:
  ADD s5, s4, zero
  BNE s5, zero, bb214
  JAL zero, bb215
bb214:
  ADDI s5, zero, 1
  JAL zero, bb216
bb215:
  SLT s6, s3, zero
  ADD s5, s6, zero
  JAL zero, bb216
bb216:
  ADD s6, s5, zero
  BNE s6, zero, bb217
  JAL zero, bb218
bb217:
  ADDI s6, zero, 1
  JAL zero, bb219
bb218:
  SLT s7, s3, s1
  XORI s8, s7, 1
  ADD s6, s8, zero
  JAL zero, bb219
bb219:
  ADD s7, s6, zero
  BNE s7, zero, bb220
  JAL zero, bb221
bb220:
  ADDI a0, zero, -1
  LD s9, 0(sp)
  LD ra, 8(sp)
  LD s8, 16(sp)
  LD s0, 24(sp)
  LD s5, 32(sp)
  LD s7, 40(sp)
  LD s1, 48(sp)
  LD s6, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb221:
  MULW s7, s2, s1
  ADDW s8, s7, s3
  ADDI s7, zero, 4
  MULW s9, s8, s7
  ADD s7, s0, s9
  LW s8, 0(s7)
  ADD a0, s8, zero
  LD s9, 0(sp)
  LD ra, 8(sp)
  LD s8, 16(sp)
  LD s0, 24(sp)
  LD s5, 32(sp)
  LD s7, 40(sp)
  LD s1, 48(sp)
  LD s6, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
