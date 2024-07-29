.global sortB
.global sortC
.global main
.global sortA
.global quick_read
.section .bss
c:
.space 400020
b:
.space 400020
a:
.space 400020
x:
.space 400020
cnt:
.space 1600080


.section .data





maxn:
.word 0x000186a5
n:
.word 0x00000000
.section .text
sortB:
  ADDI sp, sp, -112
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
  SD s10, 88(sp)
  SD s11, 96(sp)
  LA s6, n
  LW s6, 0(s6)
  ADDI s7, zero, 0
  BLT s7, s6, bb17
  # implict jump to bb1
bb1:
  ADDI s6, zero, -100
  # implict jump to bb2
bb2:
  SLT s9, s6, zero
  XORI s9, s9, 1
  BNE s9, zero, bb4
  # implict jump to bb3
bb3:
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
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb4:
  # implict jump to bb5
bb5:
  ADD s9, zero, zero
  ADD s10, zero, zero
  # implict jump to bb6
bb6:
  ADD s11, s10, zero
  ADD t0, s9, zero
  SLLIW t1, t0, 2
  LA t2, cnt
  ADD t1, t2, t1
  LW t1, 0(t1)
  BNE t1, zero, bb11
  # implict jump to bb7
bb7:
  ADD t2, s11, zero
  # implict jump to bb8
bb8:
  ADD s2, t2, zero
  ADDIW s3, t0, 1
  # implict jump to bb9
bb9:
  SLT t2, s6, s3
  XORI t2, t2, 1
  BNE t2, zero, bb10
  JAL zero, bb3
bb10:
  ADD s9, s3, zero
  ADD s10, s2, zero
  JAL zero, bb6
bb11:
  # implict jump to bb12
bb12:
  # implict jump to bb13
bb13:
  ADD a1, t1, zero
  ADD a2, s11, zero
  SLLIW a3, a2, 2
  ADD a3, a0, a3
  SW t0, 0(a3)
  ADDIW s1, a2, 1
  ADDI a2, zero, 1
  SUBW s0, a1, a2
  # implict jump to bb14
bb14:
  BNE s0, zero, bb16
  # implict jump to bb15
bb15:
  ADD t2, s1, zero
  JAL zero, bb8
bb16:
  ADD s11, s1, zero
  ADD t1, s0, zero
  JAL zero, bb13
bb17:
  ADDI s7, zero, -100
  # implict jump to bb18
bb18:
  ADD s8, zero, zero
  # implict jump to bb19
bb19:
  ADD s9, s7, zero
  ADD s10, s8, zero
  SLLIW s11, s10, 2
  ADD s11, a0, s11
  LW t0, 0(s11)
  SLLIW t0, t0, 2
  LA t1, cnt
  ADD t0, t1, t0
  LW t1, 0(t0)
  ADDIW t1, t1, 1
  SW t1, 0(t0)
  LW s11, 0(s11)
  BLT s9, s11, bb25
  # implict jump to bb20
bb20:
  # implict jump to bb21
bb21:
  ADD s4, s9, zero
  ADDIW s5, s10, 1
  # implict jump to bb22
bb22:
  LA s9, n
  LW s9, 0(s9)
  BLT s5, s9, bb24
  # implict jump to bb23
bb23:
  ADD s6, s4, zero
  JAL zero, bb2
bb24:
  ADD s8, s5, zero
  ADD s7, s4, zero
  JAL zero, bb19
bb25:
  ADD s9, s11, zero
  JAL zero, bb21
sortC:
  ADDI sp, sp, -112
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
  SD s10, 88(sp)
  SD s11, 96(sp)
  LA s3, n
  LW s3, 0(s3)
  BLT zero, s3, bb28
  # implict jump to bb27
bb27:
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
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb28:
  # implict jump to bb29
bb29:
  ADD s4, zero, zero
  # implict jump to bb30
bb30:
  ADD s5, s4, zero
  ADD s6, s3, zero
  ADDIW s1, s5, 1
  BLT s1, s6, bb35
  # implict jump to bb31
bb31:
  ADD s7, s5, zero
  # implict jump to bb32
bb32:
  SLLIW s10, s5, 2
  ADD s10, a0, s10
  LW s11, 0(s10)
  SLLIW s7, s7, 2
  ADD s7, a0, s7
  LW t0, 0(s7)
  SW t0, 0(s10)
  SW s11, 0(s7)
  # implict jump to bb33
bb33:
  LA s7, n
  LW s7, 0(s7)
  BLT s1, s7, bb34
  JAL zero, bb27
bb34:
  ADD s3, s7, zero
  ADD s4, s1, zero
  JAL zero, bb30
bb35:
  # implict jump to bb36
bb36:
  ADD s8, s5, zero
  ADD s9, s1, zero
  # implict jump to bb37
bb37:
  ADD s10, s9, zero
  ADD s11, s8, zero
  SLLIW t0, s10, 2
  ADD t0, a0, t0
  LW t0, 0(t0)
  SLLIW t1, s11, 2
  ADD t1, a0, t1
  LW t1, 0(t1)
  BLT t0, t1, bb43
  # implict jump to bb38
bb38:
  # implict jump to bb39
bb39:
  ADD s2, s11, zero
  ADDIW s0, s10, 1
  # implict jump to bb40
bb40:
  BLT s0, s6, bb42
  # implict jump to bb41
bb41:
  ADD s7, s2, zero
  JAL zero, bb32
bb42:
  ADD s8, s2, zero
  ADD s9, s0, zero
  JAL zero, bb37
bb43:
  ADD s11, s10, zero
  JAL zero, bb39
main:
  ADDI sp, sp, -304
  SD ra, 184(sp)
  SD s0, 192(sp)
  SD s1, 200(sp)
  SD s2, 208(sp)
  SD s3, 216(sp)
  SD s4, 224(sp)
  SD s5, 232(sp)
  SD s6, 240(sp)
  SD s7, 248(sp)
  SD s8, 256(sp)
  SD s11, 264(sp)
  SD s9, 288(sp)
  SD s10, 296(sp)
  CALL getch
  ADD s3, a0, zero
  ADD t4, zero, zero
  SW t4, 144(sp)
  ADD t4, s3, zero
  SW t4, 148(sp)
  # implict jump to bb45
bb45:
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LW t4, 156(sp)
  SLTI s3, t4, 48
  BNE s3, zero, bb158
  # implict jump to bb46
bb46:
  ADDI s3, zero, 57
  LW t4, 156(sp)
  SLT s3, s3, t4
  # implict jump to bb47
bb47:
  BNE s3, zero, bb154
  # implict jump to bb48
bb48:
  ADD t4, zero, zero
  SW t4, 164(sp)
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  # implict jump to bb49
bb49:
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  LW t4, 168(sp)
  SLTI s3, t4, 48
  XORI s3, s3, 1
  BNE s3, zero, bb153
  # implict jump to bb50
bb50:
  ADD s3, zero, zero
  # implict jump to bb51
bb51:
  BNE s3, zero, bb152
  # implict jump to bb52
bb52:
  LW t4, 152(sp)
  BNE t4, zero, bb151
  # implict jump to bb53
bb53:
  LW t4, 172(sp)
  ADD s3, t4, zero
  # implict jump to bb54
bb54:
  LA s7, n
  SW s3, 0(s7)
  LA s3, n
  LW s3, 0(s3)
  BNE zero, s3, bb128
  # implict jump to bb55
bb55:
  LA s3, n
  LW s3, 0(s3)
  BLT zero, s3, bb112
  # implict jump to bb56
bb56:
  LA s0, n
  LW s0, 0(s0)
  BLT zero, s0, bb103
  # implict jump to bb57
bb57:
  ADDI s0, zero, -100
  # implict jump to bb58
bb58:
  ADD t4, s0, zero
  SW t4, 84(sp)
  LW t4, 84(sp)
  SLT s1, t4, zero
  XORI s1, s1, 1
  BNE s1, zero, bb90
  # implict jump to bb59
bb59:
  LA s0, n
  LW s0, 0(s0)
  BLT zero, s0, bb74
  # implict jump to bb60
bb60:
  LA s1, n
  LW s1, 0(s1)
  SUBW s1, s1, zero
  BNE s1, zero, bb69
  # implict jump to bb61
bb61:
  LA s3, n
  LW s3, 0(s3)
  ADD s4, zero, zero
  # implict jump to bb62
bb62:
  ADD s5, s4, zero
  SUBW s6, s5, s3
  BNE s6, zero, bb64
  # implict jump to bb63
bb63:
  ADDI a0, zero, -123
  LD ra, 184(sp)
  LD s0, 192(sp)
  LD s1, 200(sp)
  LD s2, 208(sp)
  LD s3, 216(sp)
  LD s4, 224(sp)
  LD s5, 232(sp)
  LD s6, 240(sp)
  LD s7, 248(sp)
  LD s8, 256(sp)
  LD s11, 264(sp)
  LD s9, 288(sp)
  LD s10, 296(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
bb64:
  SLLIW s6, s5, 2
  LA s10, b
  ADD s10, s10, s6
  LW s10, 0(s10)
  BNE s10, zero, bb68
  # implict jump to bb65
bb65:
  LA s10, c
  ADD s6, s10, s6
  LW s6, 0(s6)
  BNE s6, zero, bb67
  # implict jump to bb66
bb66:
  ADDIW s5, s5, 1
  ADD s4, s5, zero
  JAL zero, bb62
bb67:
  ADDI a0, zero, 2
  LD ra, 184(sp)
  LD s0, 192(sp)
  LD s1, 200(sp)
  LD s2, 208(sp)
  LD s3, 216(sp)
  LD s4, 224(sp)
  LD s5, 232(sp)
  LD s6, 240(sp)
  LD s7, 248(sp)
  LD s8, 256(sp)
  LD s11, 264(sp)
  LD s9, 288(sp)
  LD s10, 296(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
bb68:
  ADDI a0, zero, 1
  LD ra, 184(sp)
  LD s0, 192(sp)
  LD s1, 200(sp)
  LD s2, 208(sp)
  LD s3, 216(sp)
  LD s4, 224(sp)
  LD s5, 232(sp)
  LD s6, 240(sp)
  LD s7, 248(sp)
  LD s8, 256(sp)
  LD s11, 264(sp)
  LD s9, 288(sp)
  LD s10, 296(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
bb69:
  # implict jump to bb70
bb70:
  ADD s1, zero, zero
  # implict jump to bb71
bb71:
  ADD s3, s1, zero
  SLLIW s4, s3, 2
  LA s5, b
  ADD s5, s5, s4
  LW s6, 0(s5)
  LA s10, a
  ADD s10, s10, s4
  LW s10, 0(s10)
  SUBW s6, s6, s10
  SW s6, 0(s5)
  LA s5, c
  ADD s4, s5, s4
  LW s5, 0(s4)
  SUBW s5, s5, s6
  SUBW s5, s5, s10
  SW s5, 0(s4)
  ADDIW s9, s3, 1
  # implict jump to bb72
bb72:
  LA s3, n
  LW s3, 0(s3)
  SUBW s3, s3, s9
  BNE s3, zero, bb73
  JAL zero, bb61
bb73:
  ADD s1, s9, zero
  JAL zero, bb71
bb74:
  # implict jump to bb75
bb75:
  LA s0, n
  LW s2, 0(s0)
  ADD s0, zero, zero
  # implict jump to bb76
bb76:
  ADD t4, s0, zero
  SW t4, 104(sp)
  LW t3, 104(sp)
  ADDIW t4, t3, 1
  SW t4, 108(sp)
  LW t4, 108(sp)
  BLT t4, s2, bb81
  # implict jump to bb77
bb77:
  LW t4, 104(sp)
  ADD s4, t4, zero
  # implict jump to bb78
bb78:
  LW t4, 104(sp)
  SLLIW s1, t4, 2
  LA s3, c
  ADD s1, s3, s1
  LW s3, 0(s1)
  SLLIW s4, s4, 2
  LA s5, c
  ADD s4, s5, s4
  LW s5, 0(s4)
  SW s5, 0(s1)
  SW s3, 0(s4)
  # implict jump to bb79
bb79:
  LA s1, n
  LW s1, 0(s1)
  LW t4, 108(sp)
  BLT t4, s1, bb80
  JAL zero, bb60
bb80:
  LW t4, 108(sp)
  ADD s0, t4, zero
  JAL zero, bb76
bb81:
  # implict jump to bb82
bb82:
  LW t4, 104(sp)
  ADD s7, t4, zero
  LW t4, 108(sp)
  ADD s8, t4, zero
  # implict jump to bb83
bb83:
  ADD s6, s8, zero
  ADD s1, s7, zero
  SLLIW s5, s6, 2
  LA s10, c
  ADD s5, s10, s5
  LW s5, 0(s5)
  SLLIW s10, s1, 2
  LA s3, c
  ADD s3, s3, s10
  LW s3, 0(s3)
  BLT s5, s3, bb89
  # implict jump to bb84
bb84:
  # implict jump to bb85
bb85:
  ADD s11, s1, zero
  ADDIW t4, s6, 1
  SW t4, 120(sp)
  # implict jump to bb86
bb86:
  LA s1, n
  LW s1, 0(s1)
  LW t4, 120(sp)
  BLT t4, s1, bb88
  # implict jump to bb87
bb87:
  ADD s4, s11, zero
  JAL zero, bb78
bb88:
  ADD s7, s11, zero
  LW t4, 120(sp)
  ADD s8, t4, zero
  JAL zero, bb83
bb89:
  ADD s1, s6, zero
  JAL zero, bb85
bb90:
  # implict jump to bb91
bb91:
  ADD t4, zero, zero
  SW t4, 124(sp)
  ADD t4, zero, zero
  SW t4, 96(sp)
  # implict jump to bb92
bb92:
  LW t4, 96(sp)
  ADD s4, t4, zero
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t4, 80(sp)
  SLLIW s8, t4, 2
  LA s7, cnt
  ADD s7, s7, s8
  LW s7, 0(s7)
  BNE s7, zero, bb97
  # implict jump to bb93
bb93:
  ADD s8, s4, zero
  # implict jump to bb94
bb94:
  ADD t4, s8, zero
  SW t4, 52(sp)
  LW t3, 80(sp)
  ADDIW t4, t3, 1
  SW t4, 112(sp)
  # implict jump to bb95
bb95:
  LW t4, 84(sp)
  LW t3, 112(sp)
  SLT s0, t4, t3
  XORI s0, s0, 1
  BNE s0, zero, bb96
  JAL zero, bb59
bb96:
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  JAL zero, bb92
bb97:
  # implict jump to bb98
bb98:
  ADD t4, s4, zero
  SW t4, 92(sp)
  ADD t4, s7, zero
  SW t4, 88(sp)
  # implict jump to bb99
bb99:
  LW t4, 88(sp)
  ADD s0, t4, zero
  LW t4, 92(sp)
  ADD s7, t4, zero
  SLLIW s4, s7, 2
  LA s3, b
  ADD s3, s3, s4
  LW t4, 80(sp)
  SW t4, 0(s3)
  ADDIW t4, s7, 1
  SW t4, 68(sp)
  ADDI s3, zero, 1
  SUBW t4, s0, s3
  SW t4, 64(sp)
  # implict jump to bb100
bb100:
  LW t4, 64(sp)
  BNE t4, zero, bb102
  # implict jump to bb101
bb101:
  LW t4, 68(sp)
  ADD s8, t4, zero
  JAL zero, bb94
bb102:
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  JAL zero, bb99
bb103:
  ADDI s1, zero, -100
  # implict jump to bb104
bb104:
  ADD t4, zero, zero
  SW t4, 76(sp)
  ADD t4, s1, zero
  SW t4, 72(sp)
  # implict jump to bb105
bb105:
  LW t4, 72(sp)
  ADD s4, t4, zero
  LW t4, 76(sp)
  ADD s7, t4, zero
  SLLIW s8, s7, 2
  LA s1, b
  ADD s1, s1, s8
  LW s1, 0(s1)
  SLLIW s8, s1, 2
  LA s3, cnt
  ADD s3, s3, s8
  LW s8, 0(s3)
  ADDIW s8, s8, 1
  SW s8, 0(s3)
  BLT s4, s1, bb111
  # implict jump to bb106
bb106:
  ADD s3, s4, zero
  # implict jump to bb107
bb107:
  ADD t4, s3, zero
  SW t4, 48(sp)
  ADDIW t4, s7, 1
  SW t4, 0(sp)
  # implict jump to bb108
bb108:
  LA s1, n
  LW s1, 0(s1)
  LW t4, 0(sp)
  BLT t4, s1, bb110
  # implict jump to bb109
bb109:
  LW t4, 48(sp)
  ADD s0, t4, zero
  JAL zero, bb58
bb110:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  JAL zero, bb105
bb111:
  ADD s3, s1, zero
  JAL zero, bb107
bb112:
  # implict jump to bb113
bb113:
  LA s3, n
  LW t4, 0(s3)
  SW t4, 132(sp)
  ADD t4, zero, zero
  SW t4, 44(sp)
  ADD t4, zero, zero
  SW t4, 40(sp)
  # implict jump to bb114
bb114:
  LW t4, 40(sp)
  ADD s7, t4, zero
  LW t4, 44(sp)
  ADD s3, t4, zero
  ADDIW t4, s3, 1
  SW t4, 128(sp)
  LW t4, 128(sp)
  LW t3, 132(sp)
  BLT t4, t3, bb119
  # implict jump to bb115
bb115:
  ADD s0, s7, zero
  # implict jump to bb116
bb116:
  ADD t4, s0, zero
  SW t4, 176(sp)
  # implict jump to bb117
bb117:
  LA s0, n
  LW s0, 0(s0)
  LW t4, 128(sp)
  BLT t4, s0, bb118
  JAL zero, bb56
bb118:
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb114
bb119:
  # implict jump to bb120
bb120:
  SLLIW s3, s3, 2
  LA s1, a
  ADD t4, s1, s3
  SD t4, 280(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  ADD t4, s7, zero
  SW t4, 56(sp)
  # implict jump to bb121
bb121:
  LW t4, 56(sp)
  ADD s7, t4, zero
  LW t4, 60(sp)
  ADD s3, t4, zero
  LD t4, 280(sp)
  LW s1, 0(t4)
  SLLIW s4, s3, 2
  LA s8, a
  ADD s4, s8, s4
  LW s8, 0(s4)
  BLT s8, s1, bb127
  # implict jump to bb122
bb122:
  ADD s1, s7, zero
  # implict jump to bb123
bb123:
  ADD t4, s1, zero
  SW t4, 136(sp)
  ADDIW t4, s3, 1
  SW t4, 140(sp)
  # implict jump to bb124
bb124:
  LA s1, n
  LW s1, 0(s1)
  LW t4, 140(sp)
  BLT t4, s1, bb126
  # implict jump to bb125
bb125:
  LW t4, 136(sp)
  ADD s0, t4, zero
  JAL zero, bb116
bb126:
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  JAL zero, bb121
bb127:
  LD t4, 280(sp)
  LW s7, 0(t4)
  LW s8, 0(s4)
  LD t4, 280(sp)
  SW s8, 0(t4)
  SW s7, 0(s4)
  ADD s1, s7, zero
  JAL zero, bb123
bb128:
  # implict jump to bb129
bb129:
  ADD t4, zero, zero
  SW t4, 36(sp)
  # implict jump to bb130
bb130:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  LW t3, 100(sp)
  SLLIW t4, t3, 2
  SW t4, 180(sp)
  LA s7, a
  LW t3, 180(sp)
  ADD t4, s7, t3
  SD t4, 272(sp)
  CALL getch
  ADD s7, a0, zero
  ADD t4, zero, zero
  SW t4, 4(sp)
  ADD t4, s7, zero
  SW t4, 8(sp)
  # implict jump to bb131
bb131:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t4, 16(sp)
  SLTI s7, t4, 48
  BNE s7, zero, bb150
  # implict jump to bb132
bb132:
  ADDI s7, zero, 57
  LW t4, 16(sp)
  SLT s7, s7, t4
  # implict jump to bb133
bb133:
  BNE s7, zero, bb146
  # implict jump to bb134
bb134:
  ADD t4, zero, zero
  SW t4, 24(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  # implict jump to bb135
bb135:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t4, 28(sp)
  SLTI s7, t4, 48
  XORI s7, s7, 1
  BNE s7, zero, bb145
  # implict jump to bb136
bb136:
  ADD s7, zero, zero
  # implict jump to bb137
bb137:
  BNE s7, zero, bb144
  # implict jump to bb138
bb138:
  LW t4, 12(sp)
  BNE t4, zero, bb143
  # implict jump to bb139
bb139:
  LW t4, 32(sp)
  ADD s3, t4, zero
  # implict jump to bb140
bb140:
  LD t4, 272(sp)
  SW s3, 0(t4)
  LA s7, b
  LW t4, 180(sp)
  ADD s7, s7, t4
  SW s3, 0(s7)
  LA s7, c
  LW t4, 180(sp)
  ADD s7, s7, t4
  SW s3, 0(s7)
  LW t3, 100(sp)
  ADDIW t4, t3, 1
  SW t4, 116(sp)
  # implict jump to bb141
bb141:
  LA s3, n
  LW s3, 0(s3)
  LW t4, 116(sp)
  BNE t4, s3, bb142
  JAL zero, bb55
bb142:
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  JAL zero, bb130
bb143:
  LW t4, 32(sp)
  SUB s7, zero, t4
  ADD s3, s7, zero
  JAL zero, bb140
bb144:
  ADDI s0, zero, 10
  LW t4, 32(sp)
  MULW s0, t4, s0
  LW t4, 28(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 24(sp)
  ADD t4, s1, zero
  SW t4, 20(sp)
  JAL zero, bb135
bb145:
  ADDI s3, zero, 57
  LW t4, 28(sp)
  SLT s3, s3, t4
  XORI s3, s3, 1
  ADD s7, s3, zero
  JAL zero, bb137
bb146:
  LW t4, 16(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb149
  # implict jump to bb147
bb147:
  LW t4, 12(sp)
  ADD s0, t4, zero
  # implict jump to bb148
bb148:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 4(sp)
  ADD t4, s1, zero
  SW t4, 8(sp)
  JAL zero, bb131
bb149:
  ADDI s0, zero, 1
  JAL zero, bb148
bb150:
  ADDI s7, zero, 1
  JAL zero, bb133
bb151:
  LW t4, 172(sp)
  SUB s7, zero, t4
  ADD s3, s7, zero
  JAL zero, bb54
bb152:
  ADDI s0, zero, 10
  LW t4, 172(sp)
  MULW s0, t4, s0
  LW t4, 168(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 164(sp)
  ADD t4, s1, zero
  SW t4, 160(sp)
  JAL zero, bb49
bb153:
  ADDI s7, zero, 57
  LW t4, 168(sp)
  SLT s7, s7, t4
  XORI s7, s7, 1
  ADD s3, s7, zero
  JAL zero, bb51
bb154:
  LW t4, 156(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb157
  # implict jump to bb155
bb155:
  LW t4, 152(sp)
  ADD s0, t4, zero
  # implict jump to bb156
bb156:
  CALL getch
  ADD t4, s0, zero
  SW t4, 144(sp)
  ADD t4, a0, zero
  SW t4, 148(sp)
  JAL zero, bb45
bb157:
  ADDI s0, zero, 1
  JAL zero, bb156
bb158:
  ADDI s3, zero, 1
  JAL zero, bb47
sortA:
  ADDI sp, sp, -112
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
  SD s10, 88(sp)
  SD s11, 96(sp)
  LA s5, n
  LW s5, 0(s5)
  BLT zero, s5, bb161
  # implict jump to bb160
bb160:
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
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb161:
  # implict jump to bb162
bb162:
  ADD s5, zero, zero
  ADD s6, zero, zero
  # implict jump to bb163
bb163:
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADDIW s0, s8, 1
  LA s9, n
  LW s9, 0(s9)
  BLT s0, s9, bb168
  # implict jump to bb164
bb164:
  ADD s9, s7, zero
  # implict jump to bb165
bb165:
  ADD s1, s9, zero
  # implict jump to bb166
bb166:
  LA s9, n
  LW s9, 0(s9)
  BLT s0, s9, bb167
  JAL zero, bb160
bb167:
  ADD s5, s0, zero
  ADD s6, s1, zero
  JAL zero, bb163
bb168:
  # implict jump to bb169
bb169:
  SLLIW s8, s8, 2
  ADD s4, a0, s8
  ADD s8, s0, zero
  # implict jump to bb170
bb170:
  ADD s10, s7, zero
  ADD s11, s8, zero
  LW t0, 0(s4)
  SLLIW t1, s11, 2
  ADD t1, a0, t1
  LW t2, 0(t1)
  BLT t2, t0, bb176
  # implict jump to bb171
bb171:
  # implict jump to bb172
bb172:
  ADD s3, s10, zero
  ADDIW s2, s11, 1
  # implict jump to bb173
bb173:
  LA s10, n
  LW s10, 0(s10)
  BLT s2, s10, bb175
  # implict jump to bb174
bb174:
  ADD s9, s3, zero
  JAL zero, bb165
bb175:
  ADD s8, s2, zero
  ADD s7, s3, zero
  JAL zero, bb170
bb176:
  LW t0, 0(s4)
  LW t2, 0(t1)
  SW t2, 0(s4)
  SW t0, 0(t1)
  ADD s10, t0, zero
  JAL zero, bb172
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
  # implict jump to bb178
bb178:
  ADD s2, s0, zero
  ADD s3, s1, zero
  SLTI s4, s2, 48
  BNE s4, zero, bb194
  # implict jump to bb179
bb179:
  ADDI s4, zero, 57
  SLT s4, s4, s2
  # implict jump to bb180
bb180:
  BNE s4, zero, bb190
  # implict jump to bb181
bb181:
  ADD s4, zero, zero
  ADD s5, s2, zero
  # implict jump to bb182
bb182:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLTI s8, s6, 48
  XORI s8, s8, 1
  BNE s8, zero, bb189
  # implict jump to bb183
bb183:
  ADD s8, zero, zero
  # implict jump to bb184
bb184:
  BNE s8, zero, bb188
  # implict jump to bb185
bb185:
  BNE s3, zero, bb187
  # implict jump to bb186
bb186:
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
bb187:
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
bb188:
  ADDI s8, zero, 10
  MULW s7, s7, s8
  ADDW s6, s7, s6
  ADDI s7, zero, 48
  SUBW s6, s6, s7
  CALL getch
  ADD s7, a0, zero
  ADD s4, s6, zero
  ADD s5, s7, zero
  JAL zero, bb182
bb189:
  ADDI s9, zero, 57
  SLT s9, s9, s6
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb184
bb190:
  XORI s2, s2, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb193
  # implict jump to bb191
bb191:
  ADD s2, s3, zero
  # implict jump to bb192
bb192:
  CALL getch
  ADD s1, s2, zero
  ADD s0, a0, zero
  JAL zero, bb178
bb193:
  ADDI s2, zero, 1
  JAL zero, bb192
bb194:
  ADDI s4, zero, 1
  JAL zero, bb180
