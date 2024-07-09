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
  ADDI sp, sp, -352
  SD s11, 248(sp)
  SD s1, 256(sp)
  SD s2, 264(sp)
  SD s10, 272(sp)
  SD ra, 280(sp)
  SD s0, 288(sp)
  SD s5, 296(sp)
  SD s7, 304(sp)
  SD s8, 312(sp)
  SD s9, 320(sp)
  SD s3, 328(sp)
  SD s4, 336(sp)
  SD s6, 344(sp)
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
  BNE s7, zero, bb45
  JAL zero, bb46
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
  JAL zero, bb41
bb15:
  LD s11, 248(sp)
  LD s1, 256(sp)
  LD s2, 264(sp)
  LD s10, 272(sp)
  LD ra, 280(sp)
  LD s0, 288(sp)
  LD s5, 296(sp)
  LD s7, 304(sp)
  LD s8, 312(sp)
  LD s9, 320(sp)
  LD s3, 328(sp)
  LD s4, 336(sp)
  LD s6, 344(sp)
  ADDI sp, sp, 352
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
  BNE t4, zero, bb56
  JAL zero, bb57
bb21:
  LW t4, 144(sp)
  ADD a6, t4, zero
  SLT a7, a6, zero
  XORI a6, a7, 1
  BNE a6, zero, bb23
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
  SLT a6, t4, zero
  BNE a6, zero, bb67
  JAL zero, bb68
bb24:
  LW t4, 184(sp)
  ADD s4, t4, zero
  SLT s6, s4, zero
  XORI s4, s6, 1
  ADD t4, s4, zero
  SB t4, 152(sp)
  JAL zero, bb26
bb25:
  ADD t4, zero, zero
  SB t4, 152(sp)
  JAL zero, bb26
bb26:
  LB t3, 152(sp)
  ADD t4, t3, zero
  SB t4, 192(sp)
  LB t4, 192(sp)
  BNE t4, zero, bb27
  JAL zero, bb29
bb27:
  LB t4, 112(sp)
  BNE t4, zero, bb78
  JAL zero, bb79
bb28:
  LW t4, 224(sp)
  ADD t2, t4, zero
  SLT s9, t2, zero
  BNE s9, zero, bb30
  JAL zero, bb34
bb29:
  LW t4, 64(sp)
  ADDIW s6, t4, 1
  LB t4, 192(sp)
  ADD t0, t4, zero
  ADD t1, s6, zero
  JAL zero, bb19
bb30:
  LW t4, 104(sp)
  LW t3, 8(sp)
  MULW s9, t4, t3
  LW t4, 64(sp)
  ADDW t2, s9, t4
  ADDI s7, zero, 4
  MULW a0, t2, s7
  LA s7, temp
  ADD t2, s7, a0
  LB t4, 112(sp)
  BNE t4, zero, bb89
  JAL zero, bb90
bb31:
  ADD a1, s10, zero
  LW t4, 56(sp)
  SLT a2, t4, zero
  BNE a2, zero, bb100
  JAL zero, bb101
bb32:
  ADD s6, a5, zero
  ADDW a6, a1, s6
  SW a6, 0(t2)
  JAL zero, bb33
bb33:
  JAL zero, bb29
bb34:
  LW t4, 104(sp)
  LW t3, 8(sp)
  MULW s6, t4, t3
  LW t4, 64(sp)
  ADDW s7, s6, t4
  ADDI s8, zero, 4
  MULW s9, s7, s8
  LA s7, temp
  ADD t4, s7, s9
  SD t4, 240(sp)
  LD t3, 240(sp)
  LW t4, 0(t3)
  SW t4, 232(sp)
  LB t4, 112(sp)
  BNE t4, zero, bb111
  JAL zero, bb112
bb35:
  ADD t2, t1, zero
  LW t4, 56(sp)
  SLT a0, t4, zero
  BNE a0, zero, bb122
  JAL zero, bb123
bb36:
  ADD a5, a4, zero
  ADDW a6, t2, a5
  LW t4, 232(sp)
  SLT a5, a6, t4
  BNE a5, zero, bb37
  JAL zero, bb40
bb37:
  LB t4, 112(sp)
  BNE t4, zero, bb133
  JAL zero, bb134
bb38:
  ADD s2, s1, zero
  BNE a0, zero, bb144
  JAL zero, bb145
bb39:
  ADD s5, s0, zero
  ADDW s7, s2, s5
  LD t4, 240(sp)
  SW s7, 0(t4)
  JAL zero, bb40
bb40:
  JAL zero, bb33
bb41:
  ADD s1, zero, zero
  JAL zero, bb42
bb42:
  ADD s2, s1, zero
  SLT s3, s2, s0
  BNE s3, zero, bb43
  JAL zero, bb44
bb43:
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
  JAL zero, bb42
bb44:
  JAL zero, bb15
bb45:
  ADDI s7, zero, 1
  JAL zero, bb47
bb46:
  LW t4, 8(sp)
  SLT s5, s6, t4
  XORI s10, s5, 1
  ADD s7, s10, zero
  JAL zero, bb47
bb47:
  ADD s10, s7, zero
  BNE s10, zero, bb48
  JAL zero, bb49
bb48:
  ADDI s10, zero, 1
  JAL zero, bb50
bb49:
  SLT s5, s4, zero
  ADD s10, s5, zero
  JAL zero, bb50
bb50:
  ADD s11, s10, zero
  BNE s11, zero, bb51
  JAL zero, bb52
bb51:
  ADDI s11, zero, 1
  JAL zero, bb53
bb52:
  LW t4, 8(sp)
  SLT s5, s4, t4
  XORI t0, s5, 1
  ADD s11, t0, zero
  JAL zero, bb53
bb53:
  ADD t0, s11, zero
  BNE t0, zero, bb54
  JAL zero, bb55
bb54:
  ADDI t0, zero, -1
  JAL zero, bb10
bb55:
  ADD s5, s0, s9
  LW t1, 0(s5)
  ADD t0, t1, zero
  JAL zero, bb10
bb56:
  ADDI t4, zero, 1
  SB t4, 120(sp)
  JAL zero, bb58
bb57:
  LW t4, 104(sp)
  LW t3, 8(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 120(sp)
  JAL zero, bb58
bb58:
  LB t4, 120(sp)
  ADD a3, t4, zero
  BNE a3, zero, bb59
  JAL zero, bb60
bb59:
  ADDI t4, zero, 1
  SB t4, 128(sp)
  JAL zero, bb61
bb60:
  LW t4, 56(sp)
  SLT s0, t4, zero
  ADD t4, s0, zero
  SB t4, 128(sp)
  JAL zero, bb61
bb61:
  LB t4, 128(sp)
  ADD a4, t4, zero
  BNE a4, zero, bb62
  JAL zero, bb63
bb62:
  ADDI t4, zero, 1
  SB t4, 136(sp)
  JAL zero, bb64
bb63:
  LW t4, 56(sp)
  LW t3, 8(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 136(sp)
  JAL zero, bb64
bb64:
  LB t4, 136(sp)
  ADD a5, t4, zero
  BNE a5, zero, bb65
  JAL zero, bb66
bb65:
  ADDI t4, zero, -1
  SW t4, 144(sp)
  JAL zero, bb21
bb66:
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
  ADD t4, s0, zero
  SW t4, 144(sp)
  JAL zero, bb21
bb67:
  ADDI t4, zero, 1
  SB t4, 160(sp)
  JAL zero, bb69
bb68:
  LW t4, 56(sp)
  LW t3, 8(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 160(sp)
  JAL zero, bb69
bb69:
  LB t4, 160(sp)
  ADD a7, t4, zero
  BNE a7, zero, bb70
  JAL zero, bb71
bb70:
  ADDI t4, zero, 1
  SB t4, 168(sp)
  JAL zero, bb72
bb71:
  LW t4, 64(sp)
  SLT s0, t4, zero
  ADD t4, s0, zero
  SB t4, 168(sp)
  JAL zero, bb72
bb72:
  LB t4, 168(sp)
  ADD s1, t4, zero
  BNE s1, zero, bb73
  JAL zero, bb74
bb73:
  ADDI t4, zero, 1
  SB t4, 176(sp)
  JAL zero, bb75
bb74:
  LW t4, 64(sp)
  LW t3, 8(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 176(sp)
  JAL zero, bb75
bb75:
  LB t4, 176(sp)
  ADD s2, t4, zero
  BNE s2, zero, bb76
  JAL zero, bb77
bb76:
  ADDI t4, zero, -1
  SW t4, 184(sp)
  JAL zero, bb24
bb77:
  LW t4, 56(sp)
  LW t3, 8(sp)
  MULW s0, t4, t3
  LW t4, 64(sp)
  ADDW s1, s0, t4
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, temp
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 184(sp)
  JAL zero, bb24
bb78:
  ADDI t4, zero, 1
  SB t4, 200(sp)
  JAL zero, bb80
bb79:
  LW t4, 104(sp)
  LW t3, 8(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 200(sp)
  JAL zero, bb80
bb80:
  LB t4, 200(sp)
  ADD s11, t4, zero
  BNE s11, zero, bb81
  JAL zero, bb82
bb81:
  ADDI t4, zero, 1
  SB t4, 208(sp)
  JAL zero, bb83
bb82:
  LW t4, 64(sp)
  SLT s0, t4, zero
  ADD t4, s0, zero
  SB t4, 208(sp)
  JAL zero, bb83
bb83:
  LB t4, 208(sp)
  ADD s0, t4, zero
  BNE s0, zero, bb84
  JAL zero, bb85
bb84:
  ADDI t4, zero, 1
  SB t4, 216(sp)
  JAL zero, bb86
bb85:
  LW t4, 64(sp)
  LW t3, 8(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 216(sp)
  JAL zero, bb86
bb86:
  LB t4, 216(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb87
  JAL zero, bb88
bb87:
  ADDI t4, zero, -1
  SW t4, 224(sp)
  JAL zero, bb28
bb88:
  LW t4, 104(sp)
  LW t3, 8(sp)
  MULW s0, t4, t3
  LW t4, 64(sp)
  ADDW s1, s0, t4
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, temp
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 224(sp)
  JAL zero, bb28
bb89:
  ADDI s7, zero, 1
  JAL zero, bb91
bb90:
  LW t4, 104(sp)
  LW t3, 8(sp)
  SLT s6, t4, t3
  XORI s8, s6, 1
  ADD s7, s8, zero
  JAL zero, bb91
bb91:
  ADD a0, s7, zero
  BNE a0, zero, bb92
  JAL zero, bb93
bb92:
  ADDI a0, zero, 1
  JAL zero, bb94
bb93:
  LW t4, 56(sp)
  SLT s6, t4, zero
  ADD a0, s6, zero
  JAL zero, bb94
bb94:
  ADD s8, a0, zero
  BNE s8, zero, bb95
  JAL zero, bb96
bb95:
  ADDI s8, zero, 1
  JAL zero, bb97
bb96:
  LW t4, 56(sp)
  LW t3, 8(sp)
  SLT s6, t4, t3
  XORI s10, s6, 1
  ADD s8, s10, zero
  JAL zero, bb97
bb97:
  ADD s10, s8, zero
  BNE s10, zero, bb98
  JAL zero, bb99
bb98:
  ADDI s10, zero, -1
  JAL zero, bb31
bb99:
  LW t4, 56(sp)
  ADDW s6, s9, t4
  ADDI t0, zero, 4
  MULW t1, s6, t0
  LA s6, temp
  ADD t0, s6, t1
  LW s6, 0(t0)
  ADD s10, s6, zero
  JAL zero, bb31
bb100:
  ADDI a2, zero, 1
  JAL zero, bb102
bb101:
  LW t4, 56(sp)
  LW t3, 8(sp)
  SLT s6, t4, t3
  XORI t0, s6, 1
  ADD a2, t0, zero
  JAL zero, bb102
bb102:
  ADD a3, a2, zero
  BNE a3, zero, bb103
  JAL zero, bb104
bb103:
  ADDI a3, zero, 1
  JAL zero, bb105
bb104:
  LW t4, 64(sp)
  SLT s6, t4, zero
  ADD a3, s6, zero
  JAL zero, bb105
bb105:
  ADD a4, a3, zero
  BNE a4, zero, bb106
  JAL zero, bb107
bb106:
  ADDI a4, zero, 1
  JAL zero, bb108
bb107:
  LW t4, 64(sp)
  LW t3, 8(sp)
  SLT s6, t4, t3
  XORI t0, s6, 1
  ADD a4, t0, zero
  JAL zero, bb108
bb108:
  ADD a5, a4, zero
  BNE a5, zero, bb109
  JAL zero, bb110
bb109:
  ADDI a5, zero, -1
  JAL zero, bb32
bb110:
  LW t4, 56(sp)
  LW t3, 8(sp)
  MULW s6, t4, t3
  LW t4, 64(sp)
  ADDW t0, s6, t4
  ADDI s6, zero, 4
  MULW t1, t0, s6
  LA s6, temp
  ADD t0, s6, t1
  LW s6, 0(t0)
  ADD a5, s6, zero
  JAL zero, bb32
bb111:
  ADDI s9, zero, 1
  JAL zero, bb113
bb112:
  LW t4, 104(sp)
  LW t3, 8(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD s9, s1, zero
  JAL zero, bb113
bb113:
  ADD s10, s9, zero
  BNE s10, zero, bb114
  JAL zero, bb115
bb114:
  ADDI s10, zero, 1
  JAL zero, bb116
bb115:
  LW t4, 56(sp)
  SLT s0, t4, zero
  ADD s10, s0, zero
  JAL zero, bb116
bb116:
  ADD t0, s10, zero
  BNE t0, zero, bb117
  JAL zero, bb118
bb117:
  ADDI t0, zero, 1
  JAL zero, bb119
bb118:
  LW t4, 56(sp)
  LW t3, 8(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t0, s1, zero
  JAL zero, bb119
bb119:
  ADD t1, t0, zero
  BNE t1, zero, bb120
  JAL zero, bb121
bb120:
  ADDI t1, zero, -1
  JAL zero, bb35
bb121:
  LW t4, 56(sp)
  ADDW s0, s6, t4
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, temp
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD t1, s0, zero
  JAL zero, bb35
bb122:
  ADDI a1, zero, 1
  JAL zero, bb124
bb123:
  LW t4, 56(sp)
  LW t3, 8(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD a1, s1, zero
  JAL zero, bb124
bb124:
  ADD a2, a1, zero
  BNE a2, zero, bb125
  JAL zero, bb126
bb125:
  ADDI a2, zero, 1
  JAL zero, bb127
bb126:
  LW t4, 64(sp)
  SLT s0, t4, zero
  ADD a2, s0, zero
  JAL zero, bb127
bb127:
  ADD a3, a2, zero
  BNE a3, zero, bb128
  JAL zero, bb129
bb128:
  ADDI a3, zero, 1
  JAL zero, bb130
bb129:
  LW t4, 64(sp)
  LW t3, 8(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD a3, s1, zero
  JAL zero, bb130
bb130:
  ADD a4, a3, zero
  BNE a4, zero, bb131
  JAL zero, bb132
bb131:
  ADDI a4, zero, -1
  JAL zero, bb36
bb132:
  LW t4, 56(sp)
  LW t3, 8(sp)
  MULW s0, t4, t3
  LW t4, 64(sp)
  ADDW s1, s0, t4
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, temp
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a4, s0, zero
  JAL zero, bb36
bb133:
  ADDI a5, zero, 1
  JAL zero, bb135
bb134:
  LW t4, 104(sp)
  LW t3, 8(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD a5, s1, zero
  JAL zero, bb135
bb135:
  ADD a6, a5, zero
  BNE a6, zero, bb136
  JAL zero, bb137
bb136:
  ADDI a6, zero, 1
  JAL zero, bb138
bb137:
  ADD a6, a0, zero
  JAL zero, bb138
bb138:
  ADD a7, a6, zero
  BNE a7, zero, bb139
  JAL zero, bb140
bb139:
  ADDI a7, zero, 1
  JAL zero, bb141
bb140:
  LW t4, 56(sp)
  LW t3, 8(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD a7, s1, zero
  JAL zero, bb141
bb141:
  ADD s1, a7, zero
  BNE s1, zero, bb142
  JAL zero, bb143
bb142:
  ADDI s1, zero, -1
  JAL zero, bb38
bb143:
  LW t4, 56(sp)
  ADDW s0, s6, t4
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, temp
  ADD s2, s0, s3
  LW s0, 0(s2)
  ADD s1, s0, zero
  JAL zero, bb38
bb144:
  ADDI s4, zero, 1
  JAL zero, bb146
bb145:
  LW t4, 56(sp)
  LW t3, 8(sp)
  SLT s0, t4, t3
  XORI s3, s0, 1
  ADD s4, s3, zero
  JAL zero, bb146
bb146:
  ADD s3, s4, zero
  BNE s3, zero, bb147
  JAL zero, bb148
bb147:
  ADDI s3, zero, 1
  JAL zero, bb149
bb148:
  LW t4, 64(sp)
  SLT s0, t4, zero
  ADD s3, s0, zero
  JAL zero, bb149
bb149:
  ADD s11, s3, zero
  BNE s11, zero, bb150
  JAL zero, bb151
bb150:
  ADDI s11, zero, 1
  JAL zero, bb152
bb151:
  LW t4, 64(sp)
  LW t3, 8(sp)
  SLT s0, t4, t3
  XORI s5, s0, 1
  ADD s11, s5, zero
  JAL zero, bb152
bb152:
  ADD s0, s11, zero
  BNE s0, zero, bb153
  JAL zero, bb154
bb153:
  ADDI s0, zero, -1
  JAL zero, bb39
bb154:
  LW t4, 56(sp)
  LW t3, 8(sp)
  MULW s5, t4, t3
  LW t4, 64(sp)
  ADDW s7, s5, t4
  ADDI s5, zero, 4
  MULW s8, s7, s5
  LA s5, temp
  ADD s7, s5, s8
  LW s5, 0(s7)
  ADD s0, s5, zero
  JAL zero, bb39
main:
  ADDI sp, sp, -464
  SD ra, 352(sp)
  SD s9, 360(sp)
  SD s8, 368(sp)
  SD s7, 376(sp)
  SD s10, 384(sp)
  SD s1, 392(sp)
  SD s6, 400(sp)
  SD s2, 408(sp)
  SD s3, 416(sp)
  SD s4, 424(sp)
  SD s5, 432(sp)
  SD s0, 440(sp)
  SD s11, 448(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 0(sp)
  LA s1, w
  ADD a0, s1, zero
  CALL getarray
  ADD s1, a0, zero
  ADDI a0, zero, 62
  CALL _sysy_starttime
  JAL zero, bb156
bb156:
  ADD s1, zero, zero
  JAL zero, bb157
bb157:
  ADD s2, s1, zero
  LW t4, 0(sp)
  SLT s3, s2, t4
  BNE s3, zero, bb158
  JAL zero, bb159
bb158:
  ADD s3, zero, zero
  JAL zero, bb160
bb159:
  ADD t4, zero, zero
  SB t4, 40(sp)
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  JAL zero, bb164
bb160:
  ADD s4, s3, zero
  LW t4, 0(sp)
  SLT s5, s4, t4
  BNE s5, zero, bb161
  JAL zero, bb163
bb161:
  LW t4, 0(sp)
  MULW s5, s4, t4
  ADDW s6, s5, s2
  ADDI s5, zero, 4
  MULW s7, s6, s5
  LA s5, temp
  ADD s6, s5, s7
  SLT s5, s4, zero
  BNE s5, zero, bb196
  JAL zero, bb197
bb162:
  ADD s11, s10, zero
  SW s11, 0(s6)
  ADDIW s11, s4, 1
  ADD s3, s11, zero
  JAL zero, bb160
bb163:
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb157
bb164:
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
  BNE s7, zero, bb165
  JAL zero, bb166
bb165:
  ADD t4, s6, zero
  SB t4, 88(sp)
  ADD t4, zero, zero
  SW t4, 72(sp)
  ADD t4, s5, zero
  SW t4, 64(sp)
  JAL zero, bb167
bb166:
  LW t4, 0(sp)
  LW t3, 0(sp)
  MULW s0, t4, t3
  JAL zero, bb192
bb167:
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
  BNE s11, zero, bb168
  JAL zero, bb169
bb168:
  LB t4, 32(sp)
  ADD s11, t4, zero
  ADD s0, zero, zero
  JAL zero, bb170
bb169:
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
  JAL zero, bb164
bb170:
  ADD t4, s0, zero
  SW t4, 56(sp)
  ADD t4, s11, zero
  SB t4, 80(sp)
  LW t4, 56(sp)
  LW t3, 0(sp)
  SLT s2, t4, t3
  BNE s2, zero, bb171
  JAL zero, bb173
bb171:
  LW t3, 96(sp)
  SLT t4, t3, zero
  SB t4, 104(sp)
  LB t4, 104(sp)
  BNE t4, zero, bb207
  JAL zero, bb208
bb172:
  LW t4, 136(sp)
  ADD s8, t4, zero
  SLT s6, s8, zero
  XORI s8, s6, 1
  BNE s8, zero, bb174
  JAL zero, bb176
bb173:
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
  JAL zero, bb167
bb174:
  LW t4, 48(sp)
  SLT s6, t4, zero
  BNE s6, zero, bb218
  JAL zero, bb219
bb175:
  LW t4, 176(sp)
  ADD s9, t4, zero
  SLT s2, s9, zero
  XORI s9, s2, 1
  ADD t4, s9, zero
  SB t4, 144(sp)
  JAL zero, bb177
bb176:
  ADD t4, zero, zero
  SB t4, 144(sp)
  JAL zero, bb177
bb177:
  LB t3, 144(sp)
  ADD t4, t3, zero
  SB t4, 184(sp)
  LB t4, 184(sp)
  BNE t4, zero, bb178
  JAL zero, bb180
bb178:
  LB t4, 104(sp)
  BNE t4, zero, bb229
  JAL zero, bb230
bb179:
  LW t4, 216(sp)
  ADD s2, t4, zero
  SLT s6, s2, zero
  BNE s6, zero, bb181
  JAL zero, bb185
bb180:
  LW t4, 56(sp)
  ADDIW s2, t4, 1
  LB t4, 184(sp)
  ADD s11, t4, zero
  ADD s0, s2, zero
  JAL zero, bb170
bb181:
  LW t3, 96(sp)
  LW t4, 0(sp)
  MULW t4, t3, t4
  SW t4, 232(sp)
  LW t4, 232(sp)
  LW t3, 56(sp)
  ADDW s6, t4, t3
  ADDI s8, zero, 4
  MULW s5, s6, s8
  LA s6, temp
  ADD t4, s6, s5
  SD t4, 224(sp)
  LB t4, 104(sp)
  BNE t4, zero, bb240
  JAL zero, bb241
bb182:
  ADD s10, s9, zero
  LW t4, 48(sp)
  SLT s1, t4, zero
  BNE s1, zero, bb251
  JAL zero, bb252
bb183:
  ADD s2, s8, zero
  ADDW s5, s10, s2
  LD t4, 224(sp)
  SW s5, 0(t4)
  JAL zero, bb184
bb184:
  JAL zero, bb180
bb185:
  LW t3, 96(sp)
  LW t4, 0(sp)
  MULW t4, t3, t4
  SW t4, 264(sp)
  LW t4, 264(sp)
  LW t3, 56(sp)
  ADDW s1, t4, t3
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, temp
  ADD t4, s1, s3
  SD t4, 256(sp)
  LD t3, 256(sp)
  LW t4, 0(t3)
  SW t4, 248(sp)
  LB t4, 104(sp)
  BNE t4, zero, bb262
  JAL zero, bb263
bb186:
  LW t3, 296(sp)
  ADD t4, t3, zero
  SW t4, 312(sp)
  LW t3, 48(sp)
  SLT t4, t3, zero
  SB t4, 304(sp)
  LB t4, 304(sp)
  BNE t4, zero, bb273
  JAL zero, bb274
bb187:
  LW t4, 344(sp)
  ADD s2, t4, zero
  LW t4, 312(sp)
  ADDW s0, t4, s2
  LW t4, 248(sp)
  SLT s2, s0, t4
  BNE s2, zero, bb188
  JAL zero, bb191
bb188:
  LB t4, 104(sp)
  BNE t4, zero, bb284
  JAL zero, bb285
bb189:
  ADD s5, s4, zero
  LB t4, 304(sp)
  BNE t4, zero, bb295
  JAL zero, bb296
bb190:
  ADD s10, s9, zero
  ADDW s11, s5, s10
  LD t4, 256(sp)
  SW s11, 0(t4)
  JAL zero, bb191
bb191:
  JAL zero, bb184
bb192:
  ADD s1, zero, zero
  JAL zero, bb193
bb193:
  ADD s2, s1, zero
  SLT s3, s2, s0
  BNE s3, zero, bb194
  JAL zero, bb195
bb194:
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
  JAL zero, bb193
bb195:
  ADDI a0, zero, 64
  CALL _sysy_stoptime
  ADD a0, s0, zero
  LA s0, dst
  ADD a1, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 352(sp)
  LD s9, 360(sp)
  LD s8, 368(sp)
  LD s7, 376(sp)
  LD s10, 384(sp)
  LD s1, 392(sp)
  LD s6, 400(sp)
  LD s2, 408(sp)
  LD s3, 416(sp)
  LD s4, 424(sp)
  LD s5, 432(sp)
  LD s0, 440(sp)
  LD s11, 448(sp)
  ADDI sp, sp, 464
  JALR zero, 0(ra)
bb196:
  ADDI s5, zero, 1
  JAL zero, bb198
bb197:
  LW t4, 0(sp)
  SLT s3, s4, t4
  XORI s8, s3, 1
  ADD s5, s8, zero
  JAL zero, bb198
bb198:
  ADD s8, s5, zero
  BNE s8, zero, bb199
  JAL zero, bb200
bb199:
  ADDI s8, zero, 1
  JAL zero, bb201
bb200:
  SLT s3, s2, zero
  ADD s8, s3, zero
  JAL zero, bb201
bb201:
  ADD s9, s8, zero
  BNE s9, zero, bb202
  JAL zero, bb203
bb202:
  ADDI s9, zero, 1
  JAL zero, bb204
bb203:
  LW t4, 0(sp)
  SLT s3, s2, t4
  XORI s10, s3, 1
  ADD s9, s10, zero
  JAL zero, bb204
bb204:
  ADD s10, s9, zero
  BNE s10, zero, bb205
  JAL zero, bb206
bb205:
  ADDI s10, zero, -1
  JAL zero, bb162
bb206:
  LA s3, w
  ADD s11, s3, s7
  LW s3, 0(s11)
  ADD s10, s3, zero
  JAL zero, bb162
bb207:
  ADDI t4, zero, 1
  SB t4, 112(sp)
  JAL zero, bb209
bb208:
  LW t4, 96(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 112(sp)
  JAL zero, bb209
bb209:
  LB t4, 112(sp)
  ADD s1, t4, zero
  BNE s1, zero, bb210
  JAL zero, bb211
bb210:
  ADDI t4, zero, 1
  SB t4, 120(sp)
  JAL zero, bb212
bb211:
  LW t4, 48(sp)
  SLT s0, t4, zero
  ADD t4, s0, zero
  SB t4, 120(sp)
  JAL zero, bb212
bb212:
  LB t4, 120(sp)
  ADD s4, t4, zero
  BNE s4, zero, bb213
  JAL zero, bb214
bb213:
  ADDI t4, zero, 1
  SB t4, 128(sp)
  JAL zero, bb215
bb214:
  LW t4, 48(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 128(sp)
  JAL zero, bb215
bb215:
  LB t4, 128(sp)
  ADD s3, t4, zero
  BNE s3, zero, bb216
  JAL zero, bb217
bb216:
  ADDI t4, zero, -1
  SW t4, 136(sp)
  JAL zero, bb172
bb217:
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
  JAL zero, bb172
bb218:
  ADDI t4, zero, 1
  SB t4, 152(sp)
  JAL zero, bb220
bb219:
  LW t4, 48(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 152(sp)
  JAL zero, bb220
bb220:
  LB t4, 152(sp)
  ADD s8, t4, zero
  BNE s8, zero, bb221
  JAL zero, bb222
bb221:
  ADDI t4, zero, 1
  SB t4, 160(sp)
  JAL zero, bb223
bb222:
  LW t4, 56(sp)
  SLT s0, t4, zero
  ADD t4, s0, zero
  SB t4, 160(sp)
  JAL zero, bb223
bb223:
  LB t4, 160(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb224
  JAL zero, bb225
bb224:
  ADDI t4, zero, 1
  SB t4, 168(sp)
  JAL zero, bb226
bb225:
  LW t4, 56(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 168(sp)
  JAL zero, bb226
bb226:
  LB t4, 168(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb227
  JAL zero, bb228
bb227:
  ADDI t4, zero, -1
  SW t4, 176(sp)
  JAL zero, bb175
bb228:
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
  SW t4, 176(sp)
  JAL zero, bb175
bb229:
  ADDI t4, zero, 1
  SB t4, 192(sp)
  JAL zero, bb231
bb230:
  LW t4, 96(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 192(sp)
  JAL zero, bb231
bb231:
  LB t4, 192(sp)
  ADD s1, t4, zero
  BNE s1, zero, bb232
  JAL zero, bb233
bb232:
  ADDI t4, zero, 1
  SB t4, 200(sp)
  JAL zero, bb234
bb233:
  LW t4, 56(sp)
  SLT s0, t4, zero
  ADD t4, s0, zero
  SB t4, 200(sp)
  JAL zero, bb234
bb234:
  LB t4, 200(sp)
  ADD s4, t4, zero
  BNE s4, zero, bb235
  JAL zero, bb236
bb235:
  ADDI t4, zero, 1
  SB t4, 208(sp)
  JAL zero, bb237
bb236:
  LW t4, 56(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 208(sp)
  JAL zero, bb237
bb237:
  LB t4, 208(sp)
  ADD s3, t4, zero
  BNE s3, zero, bb238
  JAL zero, bb239
bb238:
  ADDI t4, zero, -1
  SW t4, 216(sp)
  JAL zero, bb179
bb239:
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
  ADD t4, s0, zero
  SW t4, 216(sp)
  JAL zero, bb179
bb240:
  ADDI t4, zero, 1
  SB t4, 240(sp)
  JAL zero, bb242
bb241:
  LW t4, 96(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 240(sp)
  JAL zero, bb242
bb242:
  LB t4, 240(sp)
  ADD s6, t4, zero
  BNE s6, zero, bb243
  JAL zero, bb244
bb243:
  ADDI s6, zero, 1
  JAL zero, bb245
bb244:
  LW t4, 48(sp)
  SLT s0, t4, zero
  ADD s6, s0, zero
  JAL zero, bb245
bb245:
  ADD s7, s6, zero
  BNE s7, zero, bb246
  JAL zero, bb247
bb246:
  ADDI s7, zero, 1
  JAL zero, bb248
bb247:
  LW t4, 48(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD s7, s1, zero
  JAL zero, bb248
bb248:
  ADD s9, s7, zero
  BNE s9, zero, bb249
  JAL zero, bb250
bb249:
  ADDI s9, zero, -1
  JAL zero, bb182
bb250:
  LW t4, 232(sp)
  LW t3, 48(sp)
  ADDW s0, t4, t3
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, temp
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD s9, s0, zero
  JAL zero, bb182
bb251:
  ADDI s1, zero, 1
  JAL zero, bb253
bb252:
  LW t4, 48(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s2, s0, 1
  ADD s1, s2, zero
  JAL zero, bb253
bb253:
  ADD s4, s1, zero
  BNE s4, zero, bb254
  JAL zero, bb255
bb254:
  ADDI s4, zero, 1
  JAL zero, bb256
bb255:
  LW t4, 56(sp)
  SLT s0, t4, zero
  ADD s4, s0, zero
  JAL zero, bb256
bb256:
  ADD s3, s4, zero
  BNE s3, zero, bb257
  JAL zero, bb258
bb257:
  ADDI s3, zero, 1
  JAL zero, bb259
bb258:
  LW t4, 56(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s2, s0, 1
  ADD s3, s2, zero
  JAL zero, bb259
bb259:
  ADD s8, s3, zero
  BNE s8, zero, bb260
  JAL zero, bb261
bb260:
  ADDI s8, zero, -1
  JAL zero, bb183
bb261:
  LW t4, 48(sp)
  LW t3, 0(sp)
  MULW s0, t4, t3
  LW t4, 56(sp)
  ADDW s2, s0, t4
  ADDI s0, zero, 4
  MULW s5, s2, s0
  LA s0, temp
  ADD s2, s0, s5
  LW s0, 0(s2)
  ADD s8, s0, zero
  JAL zero, bb183
bb262:
  ADDI t4, zero, 1
  SB t4, 272(sp)
  JAL zero, bb264
bb263:
  LW t4, 96(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 272(sp)
  JAL zero, bb264
bb264:
  LB t4, 272(sp)
  ADD s4, t4, zero
  BNE s4, zero, bb265
  JAL zero, bb266
bb265:
  ADDI t4, zero, 1
  SB t4, 280(sp)
  JAL zero, bb267
bb266:
  LW t4, 48(sp)
  SLT s0, t4, zero
  ADD t4, s0, zero
  SB t4, 280(sp)
  JAL zero, bb267
bb267:
  LB t4, 280(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb268
  JAL zero, bb269
bb268:
  ADDI t4, zero, 1
  SB t4, 288(sp)
  JAL zero, bb270
bb269:
  LW t4, 48(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 288(sp)
  JAL zero, bb270
bb270:
  LB t4, 288(sp)
  ADD s6, t4, zero
  BNE s6, zero, bb271
  JAL zero, bb272
bb271:
  ADDI t4, zero, -1
  SW t4, 296(sp)
  JAL zero, bb186
bb272:
  LW t4, 264(sp)
  LW t3, 48(sp)
  ADDW s0, t4, t3
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, temp
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 296(sp)
  JAL zero, bb186
bb273:
  ADDI t4, zero, 1
  SB t4, 320(sp)
  JAL zero, bb275
bb274:
  LW t4, 48(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 320(sp)
  JAL zero, bb275
bb275:
  LB t4, 320(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb276
  JAL zero, bb277
bb276:
  ADDI t4, zero, 1
  SB t4, 328(sp)
  JAL zero, bb278
bb277:
  LW t4, 56(sp)
  SLT s0, t4, zero
  ADD t4, s0, zero
  SB t4, 328(sp)
  JAL zero, bb278
bb278:
  LB t4, 328(sp)
  ADD s11, t4, zero
  BNE s11, zero, bb279
  JAL zero, bb280
bb279:
  ADDI t4, zero, 1
  SB t4, 336(sp)
  JAL zero, bb281
bb280:
  LW t4, 56(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 336(sp)
  JAL zero, bb281
bb281:
  LB t4, 336(sp)
  ADD s1, t4, zero
  BNE s1, zero, bb282
  JAL zero, bb283
bb282:
  ADDI t4, zero, -1
  SW t4, 344(sp)
  JAL zero, bb187
bb283:
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
  SW t4, 344(sp)
  JAL zero, bb187
bb284:
  ADDI s0, zero, 1
  JAL zero, bb286
bb285:
  LW t4, 96(sp)
  LW t3, 0(sp)
  SLT s1, t4, t3
  XORI s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb286
bb286:
  ADD s2, s0, zero
  BNE s2, zero, bb287
  JAL zero, bb288
bb287:
  ADDI s2, zero, 1
  JAL zero, bb289
bb288:
  LB t4, 304(sp)
  ADD s2, t4, zero
  JAL zero, bb289
bb289:
  ADD s3, s2, zero
  BNE s3, zero, bb290
  JAL zero, bb291
bb290:
  ADDI s3, zero, 1
  JAL zero, bb292
bb291:
  LW t4, 48(sp)
  LW t3, 0(sp)
  SLT s1, t4, t3
  XORI s4, s1, 1
  ADD s3, s4, zero
  JAL zero, bb292
bb292:
  ADD s4, s3, zero
  BNE s4, zero, bb293
  JAL zero, bb294
bb293:
  ADDI s4, zero, -1
  JAL zero, bb189
bb294:
  LW t4, 264(sp)
  LW t3, 48(sp)
  ADDW s1, t4, t3
  ADDI s5, zero, 4
  MULW s6, s1, s5
  LA s1, temp
  ADD s5, s1, s6
  LW s1, 0(s5)
  ADD s4, s1, zero
  JAL zero, bb189
bb295:
  ADDI s6, zero, 1
  JAL zero, bb297
bb296:
  LW t4, 48(sp)
  LW t3, 0(sp)
  SLT s1, t4, t3
  XORI s7, s1, 1
  ADD s6, s7, zero
  JAL zero, bb297
bb297:
  ADD s8, s6, zero
  BNE s8, zero, bb298
  JAL zero, bb299
bb298:
  ADDI s8, zero, 1
  JAL zero, bb300
bb299:
  LW t4, 56(sp)
  SLT s1, t4, zero
  ADD s8, s1, zero
  JAL zero, bb300
bb300:
  ADD s7, s8, zero
  BNE s7, zero, bb301
  JAL zero, bb302
bb301:
  ADDI s7, zero, 1
  JAL zero, bb303
bb302:
  LW t4, 56(sp)
  LW t3, 0(sp)
  SLT s1, t4, t3
  XORI s9, s1, 1
  ADD s7, s9, zero
  JAL zero, bb303
bb303:
  ADD s9, s7, zero
  BNE s9, zero, bb304
  JAL zero, bb305
bb304:
  ADDI s9, zero, -1
  JAL zero, bb190
bb305:
  LW t4, 48(sp)
  LW t3, 0(sp)
  MULW s10, t4, t3
  LW t4, 56(sp)
  ADDW s11, s10, t4
  ADDI s10, zero, 4
  MULW s1, s11, s10
  LA s10, temp
  ADD s11, s10, s1
  LW s1, 0(s11)
  ADD s9, s1, zero
  JAL zero, bb190
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
  BNE s4, zero, bb307
  JAL zero, bb308
bb307:
  ADDI s4, zero, 1
  JAL zero, bb309
bb308:
  SLT s5, s2, s1
  XORI s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb309
bb309:
  ADD s5, s4, zero
  BNE s5, zero, bb310
  JAL zero, bb311
bb310:
  ADDI s5, zero, 1
  JAL zero, bb312
bb311:
  SLT s6, s3, zero
  ADD s5, s6, zero
  JAL zero, bb312
bb312:
  ADD s6, s5, zero
  BNE s6, zero, bb313
  JAL zero, bb314
bb313:
  ADDI s6, zero, 1
  JAL zero, bb315
bb314:
  SLT s7, s3, s1
  XORI s8, s7, 1
  ADD s6, s8, zero
  JAL zero, bb315
bb315:
  ADD s7, s6, zero
  BNE s7, zero, bb316
  JAL zero, bb317
bb316:
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
bb317:
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
