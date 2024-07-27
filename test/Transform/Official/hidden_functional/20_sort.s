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
  ADD s4, t2, zero
  ADDIW s2, t0, 1
  # implict jump to bb9
bb9:
  SLT t2, s6, s2
  XORI t2, t2, 1
  BNE t2, zero, bb10
  JAL zero, bb3
bb10:
  ADD s9, s2, zero
  ADD s10, s4, zero
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
  ADDIW s0, a2, 1
  ADDI a2, zero, 1
  SUBW s1, a1, a2
  # implict jump to bb14
bb14:
  BNE s1, zero, bb16
  # implict jump to bb15
bb15:
  ADD t2, s0, zero
  JAL zero, bb8
bb16:
  ADD s11, s0, zero
  ADD t1, s1, zero
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
  ADD s5, s9, zero
  ADDIW s3, s10, 1
  # implict jump to bb22
bb22:
  LA s9, n
  LW s9, 0(s9)
  BLT s3, s9, bb24
  # implict jump to bb23
bb23:
  ADD s6, s5, zero
  JAL zero, bb2
bb24:
  ADD s8, s3, zero
  ADD s7, s5, zero
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
  ADDIW s2, s5, 1
  BLT s2, s6, bb35
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
  BLT s2, s7, bb34
  JAL zero, bb27
bb34:
  ADD s3, s7, zero
  ADD s4, s2, zero
  JAL zero, bb30
bb35:
  # implict jump to bb36
bb36:
  ADD s8, s5, zero
  ADD s9, s2, zero
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
  ADD s0, s11, zero
  ADDIW s1, s10, 1
  # implict jump to bb40
bb40:
  BLT s1, s6, bb42
  # implict jump to bb41
bb41:
  ADD s7, s0, zero
  JAL zero, bb32
bb42:
  ADD s8, s0, zero
  ADD s9, s1, zero
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
  SD s7, 232(sp)
  SD s5, 240(sp)
  SD s6, 248(sp)
  SD s8, 256(sp)
  SD s9, 264(sp)
  SD s10, 280(sp)
  SD s11, 288(sp)
  CALL getch
  ADD s6, a0, zero
  ADD t4, zero, zero
  SW t4, 132(sp)
  ADD t4, s6, zero
  SW t4, 96(sp)
  # implict jump to bb45
bb45:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t4, 140(sp)
  SLTI s6, t4, 48
  BNE s6, zero, bb158
  # implict jump to bb46
bb46:
  ADDI s6, zero, 57
  LW t4, 140(sp)
  SLT s6, s6, t4
  # implict jump to bb47
bb47:
  BNE s6, zero, bb154
  # implict jump to bb48
bb48:
  ADD t4, zero, zero
  SW t4, 148(sp)
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  # implict jump to bb49
bb49:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  LW t4, 152(sp)
  SLTI s6, t4, 48
  XORI s6, s6, 1
  BNE s6, zero, bb153
  # implict jump to bb50
bb50:
  ADD s6, zero, zero
  # implict jump to bb51
bb51:
  BNE s6, zero, bb152
  # implict jump to bb52
bb52:
  LW t4, 136(sp)
  BNE t4, zero, bb151
  # implict jump to bb53
bb53:
  LW t4, 156(sp)
  ADD s6, t4, zero
  # implict jump to bb54
bb54:
  LA s11, n
  SW s6, 0(s11)
  LA s6, n
  LW s6, 0(s6)
  BNE zero, s6, bb128
  # implict jump to bb55
bb55:
  LA s6, n
  LW s6, 0(s6)
  BLT zero, s6, bb112
  # implict jump to bb56
bb56:
  LA s1, n
  LW s1, 0(s1)
  BLT zero, s1, bb103
  # implict jump to bb57
bb57:
  ADDI s1, zero, -100
  # implict jump to bb58
bb58:
  ADD t4, s1, zero
  SW t4, 84(sp)
  LW t4, 84(sp)
  SLT s2, t4, zero
  XORI s2, s2, 1
  BNE s2, zero, bb90
  # implict jump to bb59
bb59:
  LA s1, n
  LW s1, 0(s1)
  BLT zero, s1, bb74
  # implict jump to bb60
bb60:
  LA s0, n
  LW s0, 0(s0)
  SUBW s0, s0, zero
  BNE s0, zero, bb69
  # implict jump to bb61
bb61:
  ADD s2, zero, zero
  # implict jump to bb62
bb62:
  ADD s3, s2, zero
  LA s4, n
  LW s4, 0(s4)
  SUBW s4, s3, s4
  BNE s4, zero, bb64
  # implict jump to bb63
bb63:
  ADDI a0, zero, -123
  LD ra, 184(sp)
  LD s0, 192(sp)
  LD s1, 200(sp)
  LD s2, 208(sp)
  LD s3, 216(sp)
  LD s4, 224(sp)
  LD s7, 232(sp)
  LD s5, 240(sp)
  LD s6, 248(sp)
  LD s8, 256(sp)
  LD s9, 264(sp)
  LD s10, 280(sp)
  LD s11, 288(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
bb64:
  SLLIW s4, s3, 2
  LA s6, b
  ADD s6, s6, s4
  LW s6, 0(s6)
  BNE s6, zero, bb68
  # implict jump to bb65
bb65:
  LA s6, c
  ADD s4, s6, s4
  LW s4, 0(s4)
  BNE s4, zero, bb67
  # implict jump to bb66
bb66:
  ADDIW s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb62
bb67:
  ADDI a0, zero, 2
  LD ra, 184(sp)
  LD s0, 192(sp)
  LD s1, 200(sp)
  LD s2, 208(sp)
  LD s3, 216(sp)
  LD s4, 224(sp)
  LD s7, 232(sp)
  LD s5, 240(sp)
  LD s6, 248(sp)
  LD s8, 256(sp)
  LD s9, 264(sp)
  LD s10, 280(sp)
  LD s11, 288(sp)
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
  LD s7, 232(sp)
  LD s5, 240(sp)
  LD s6, 248(sp)
  LD s8, 256(sp)
  LD s9, 264(sp)
  LD s10, 280(sp)
  LD s11, 288(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
bb69:
  # implict jump to bb70
bb70:
  ADD s0, zero, zero
  # implict jump to bb71
bb71:
  ADD s2, s0, zero
  SLLIW s3, s2, 2
  LA s4, b
  ADD s4, s4, s3
  LW s6, 0(s4)
  LA s8, a
  ADD s8, s8, s3
  LW s8, 0(s8)
  SUBW s6, s6, s8
  SW s6, 0(s4)
  LA s4, c
  ADD s3, s4, s3
  LW s4, 0(s3)
  SUBW s4, s4, s6
  SUBW s4, s4, s8
  SW s4, 0(s3)
  ADDIW s10, s2, 1
  # implict jump to bb72
bb72:
  LA s2, n
  LW s2, 0(s2)
  SUBW s2, s2, s10
  BNE s2, zero, bb73
  JAL zero, bb61
bb73:
  ADD s0, s10, zero
  JAL zero, bb71
bb74:
  # implict jump to bb75
bb75:
  ADD s1, zero, zero
  # implict jump to bb76
bb76:
  ADD t4, s1, zero
  SW t4, 100(sp)
  LW t3, 100(sp)
  ADDIW t4, t3, 1
  SW t4, 104(sp)
  LA s6, n
  LW s6, 0(s6)
  LW t4, 104(sp)
  BLT t4, s6, bb81
  # implict jump to bb77
bb77:
  LW t4, 100(sp)
  ADD s6, t4, zero
  # implict jump to bb78
bb78:
  LW t4, 100(sp)
  SLLIW s0, t4, 2
  LA s2, c
  ADD s0, s2, s0
  LW s2, 0(s0)
  SLLIW s3, s6, 2
  LA s4, c
  ADD s3, s4, s3
  LW s4, 0(s3)
  SW s4, 0(s0)
  SW s2, 0(s3)
  # implict jump to bb79
bb79:
  LA s0, n
  LW s0, 0(s0)
  LW t4, 104(sp)
  BLT t4, s0, bb80
  JAL zero, bb60
bb80:
  LW t4, 104(sp)
  ADD s1, t4, zero
  JAL zero, bb76
bb81:
  # implict jump to bb82
bb82:
  LW t4, 100(sp)
  ADD s7, t4, zero
  LW t4, 104(sp)
  ADD s11, t4, zero
  # implict jump to bb83
bb83:
  ADD s4, s11, zero
  ADD s2, s7, zero
  SLLIW s0, s4, 2
  LA s8, c
  ADD s0, s8, s0
  LW s0, 0(s0)
  SLLIW s8, s2, 2
  LA s3, c
  ADD s3, s3, s8
  LW s3, 0(s3)
  BLT s0, s3, bb89
  # implict jump to bb84
bb84:
  ADD s0, s2, zero
  # implict jump to bb85
bb85:
  ADD s9, s0, zero
  ADDIW s5, s4, 1
  # implict jump to bb86
bb86:
  LA s0, n
  LW s0, 0(s0)
  BLT s5, s0, bb88
  # implict jump to bb87
bb87:
  ADD s6, s9, zero
  JAL zero, bb78
bb88:
  ADD s7, s9, zero
  ADD s11, s5, zero
  JAL zero, bb83
bb89:
  ADD s0, s4, zero
  JAL zero, bb85
bb90:
  # implict jump to bb91
bb91:
  ADD t4, zero, zero
  SW t4, 112(sp)
  ADD t4, zero, zero
  SW t4, 172(sp)
  # implict jump to bb92
bb92:
  LW t4, 172(sp)
  ADD s6, t4, zero
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t4, 80(sp)
  SLLIW s11, t4, 2
  LA s3, cnt
  ADD s3, s3, s11
  LW s3, 0(s3)
  BNE s3, zero, bb97
  # implict jump to bb93
bb93:
  ADD s11, s6, zero
  # implict jump to bb94
bb94:
  ADD t4, s11, zero
  SW t4, 68(sp)
  LW t3, 80(sp)
  ADDIW t4, t3, 1
  SW t4, 108(sp)
  # implict jump to bb95
bb95:
  LW t4, 84(sp)
  LW t3, 108(sp)
  SLT s1, t4, t3
  XORI s1, s1, 1
  BNE s1, zero, bb96
  JAL zero, bb59
bb96:
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  JAL zero, bb92
bb97:
  # implict jump to bb98
bb98:
  ADD t4, s6, zero
  SW t4, 92(sp)
  ADD t4, s3, zero
  SW t4, 88(sp)
  # implict jump to bb99
bb99:
  LW t4, 88(sp)
  ADD s7, t4, zero
  LW t4, 92(sp)
  ADD s1, t4, zero
  SLLIW s3, s1, 2
  LA s6, b
  ADD s3, s6, s3
  LW t4, 80(sp)
  SW t4, 0(s3)
  ADDIW t4, s1, 1
  SW t4, 64(sp)
  ADDI s1, zero, 1
  SUBW t4, s7, s1
  SW t4, 60(sp)
  # implict jump to bb100
bb100:
  LW t4, 60(sp)
  BNE t4, zero, bb102
  # implict jump to bb101
bb101:
  LW t4, 64(sp)
  ADD s11, t4, zero
  JAL zero, bb94
bb102:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  JAL zero, bb99
bb103:
  ADDI s2, zero, -100
  # implict jump to bb104
bb104:
  ADD t4, zero, zero
  SW t4, 76(sp)
  ADD t4, s2, zero
  SW t4, 72(sp)
  # implict jump to bb105
bb105:
  LW t4, 72(sp)
  ADD s4, t4, zero
  LW t4, 76(sp)
  ADD s6, t4, zero
  SLLIW s7, s6, 2
  LA s11, b
  ADD s7, s11, s7
  LW s7, 0(s7)
  SLLIW s11, s7, 2
  LA s2, cnt
  ADD s2, s2, s11
  LW s11, 0(s2)
  ADDIW s11, s11, 1
  SW s11, 0(s2)
  BLT s4, s7, bb111
  # implict jump to bb106
bb106:
  ADD s2, s4, zero
  # implict jump to bb107
bb107:
  ADD t4, s2, zero
  SW t4, 52(sp)
  ADDIW t4, s6, 1
  SW t4, 56(sp)
  # implict jump to bb108
bb108:
  LA s2, n
  LW s2, 0(s2)
  LW t4, 56(sp)
  BLT t4, s2, bb110
  # implict jump to bb109
bb109:
  LW t4, 52(sp)
  ADD s1, t4, zero
  JAL zero, bb58
bb110:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  JAL zero, bb105
bb111:
  ADD s2, s7, zero
  JAL zero, bb107
bb112:
  # implict jump to bb113
bb113:
  ADD t4, zero, zero
  SW t4, 40(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  # implict jump to bb114
bb114:
  LW t4, 32(sp)
  ADD s11, t4, zero
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t3, 36(sp)
  ADDIW t4, t3, 1
  SW t4, 124(sp)
  LA s6, n
  LW s6, 0(s6)
  LW t4, 124(sp)
  BLT t4, s6, bb119
  # implict jump to bb115
bb115:
  ADD s6, s11, zero
  # implict jump to bb116
bb116:
  ADD t4, s6, zero
  SW t4, 160(sp)
  # implict jump to bb117
bb117:
  LA s1, n
  LW s1, 0(s1)
  LW t4, 124(sp)
  BLT t4, s1, bb118
  JAL zero, bb56
bb118:
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  JAL zero, bb114
bb119:
  # implict jump to bb120
bb120:
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  ADD t4, s11, zero
  SW t4, 0(sp)
  # implict jump to bb121
bb121:
  LW t4, 0(sp)
  ADD s11, t4, zero
  LW t4, 44(sp)
  ADD s4, t4, zero
  LW t4, 36(sp)
  SLLIW s3, t4, 2
  LA s2, a
  ADD s2, s2, s3
  LW s3, 0(s2)
  SLLIW s7, s4, 2
  LA s1, a
  ADD s1, s1, s7
  LW s7, 0(s1)
  BLT s7, s3, bb127
  # implict jump to bb122
bb122:
  ADD s3, s11, zero
  # implict jump to bb123
bb123:
  ADD t4, s3, zero
  SW t4, 116(sp)
  ADDIW t4, s4, 1
  SW t4, 128(sp)
  # implict jump to bb124
bb124:
  LA s1, n
  LW s1, 0(s1)
  LW t4, 128(sp)
  BLT t4, s1, bb126
  # implict jump to bb125
bb125:
  LW t4, 116(sp)
  ADD s6, t4, zero
  JAL zero, bb116
bb126:
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  JAL zero, bb121
bb127:
  LW s7, 0(s2)
  LW s11, 0(s1)
  SW s11, 0(s2)
  SW s7, 0(s1)
  ADD s3, s7, zero
  JAL zero, bb123
bb128:
  # implict jump to bb129
bb129:
  ADD t4, zero, zero
  SW t4, 28(sp)
  # implict jump to bb130
bb130:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LW t3, 168(sp)
  SLLIW t4, t3, 2
  SW t4, 164(sp)
  LA s11, a
  LW t3, 164(sp)
  ADD t4, s11, t3
  SD t4, 272(sp)
  CALL getch
  ADD s11, a0, zero
  ADD t4, zero, zero
  SW t4, 176(sp)
  ADD t4, s11, zero
  SW t4, 48(sp)
  # implict jump to bb131
bb131:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t4, 8(sp)
  SLTI s11, t4, 48
  BNE s11, zero, bb150
  # implict jump to bb132
bb132:
  ADDI s11, zero, 57
  LW t4, 8(sp)
  SLT s11, s11, t4
  # implict jump to bb133
bb133:
  BNE s11, zero, bb146
  # implict jump to bb134
bb134:
  ADD t4, zero, zero
  SW t4, 16(sp)
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  # implict jump to bb135
bb135:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t4, 20(sp)
  SLTI s11, t4, 48
  XORI s11, s11, 1
  BNE s11, zero, bb145
  # implict jump to bb136
bb136:
  ADD s11, zero, zero
  # implict jump to bb137
bb137:
  BNE s11, zero, bb144
  # implict jump to bb138
bb138:
  LW t4, 4(sp)
  BNE t4, zero, bb143
  # implict jump to bb139
bb139:
  LW t4, 24(sp)
  ADD s6, t4, zero
  # implict jump to bb140
bb140:
  LD t4, 272(sp)
  SW s6, 0(t4)
  LA s11, b
  LW t4, 164(sp)
  ADD s11, s11, t4
  SW s6, 0(s11)
  LA s11, c
  LW t4, 164(sp)
  ADD s11, s11, t4
  SW s6, 0(s11)
  LW t3, 168(sp)
  ADDIW t4, t3, 1
  SW t4, 120(sp)
  # implict jump to bb141
bb141:
  LA s6, n
  LW s6, 0(s6)
  LW t4, 120(sp)
  BNE t4, s6, bb142
  JAL zero, bb55
bb142:
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  JAL zero, bb130
bb143:
  LW t4, 24(sp)
  SUB s11, zero, t4
  ADD s6, s11, zero
  JAL zero, bb140
bb144:
  ADDI s0, zero, 10
  LW t4, 24(sp)
  MULW s0, t4, s0
  LW t4, 20(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 16(sp)
  ADD t4, s1, zero
  SW t4, 12(sp)
  JAL zero, bb135
bb145:
  ADDI s6, zero, 57
  LW t4, 20(sp)
  SLT s6, s6, t4
  XORI s6, s6, 1
  ADD s11, s6, zero
  JAL zero, bb137
bb146:
  LW t4, 8(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb149
  # implict jump to bb147
bb147:
  LW t4, 4(sp)
  ADD s0, t4, zero
  # implict jump to bb148
bb148:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 176(sp)
  ADD t4, s1, zero
  SW t4, 48(sp)
  JAL zero, bb131
bb149:
  ADDI s0, zero, 1
  JAL zero, bb148
bb150:
  ADDI s11, zero, 1
  JAL zero, bb133
bb151:
  LW t4, 156(sp)
  SUB s11, zero, t4
  ADD s6, s11, zero
  JAL zero, bb54
bb152:
  ADDI s0, zero, 10
  LW t4, 156(sp)
  MULW s0, t4, s0
  LW t4, 152(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 148(sp)
  ADD t4, s1, zero
  SW t4, 144(sp)
  JAL zero, bb49
bb153:
  ADDI s11, zero, 57
  LW t4, 152(sp)
  SLT s11, s11, t4
  XORI s11, s11, 1
  ADD s6, s11, zero
  JAL zero, bb51
bb154:
  LW t4, 140(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb157
  # implict jump to bb155
bb155:
  LW t4, 136(sp)
  ADD s0, t4, zero
  # implict jump to bb156
bb156:
  CALL getch
  ADD t4, s0, zero
  SW t4, 132(sp)
  ADD t4, a0, zero
  SW t4, 96(sp)
  JAL zero, bb45
bb157:
  ADDI s0, zero, 1
  JAL zero, bb156
bb158:
  ADDI s6, zero, 1
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
  LA s4, n
  LW s4, 0(s4)
  BLT zero, s4, bb161
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
  ADD s4, zero, zero
  ADD s5, zero, zero
  # implict jump to bb163
bb163:
  ADD s6, s5, zero
  ADD s7, s4, zero
  ADDIW s3, s7, 1
  LA s8, n
  LW s8, 0(s8)
  BLT s3, s8, bb168
  # implict jump to bb164
bb164:
  ADD s8, s6, zero
  # implict jump to bb165
bb165:
  ADD s0, s8, zero
  # implict jump to bb166
bb166:
  LA s8, n
  LW s8, 0(s8)
  BLT s3, s8, bb167
  JAL zero, bb160
bb167:
  ADD s4, s3, zero
  ADD s5, s0, zero
  JAL zero, bb163
bb168:
  # implict jump to bb169
bb169:
  ADD s9, s3, zero
  # implict jump to bb170
bb170:
  ADD s10, s6, zero
  ADD s11, s9, zero
  SLLIW t0, s7, 2
  ADD t0, a0, t0
  LW t1, 0(t0)
  SLLIW t2, s11, 2
  ADD t2, a0, t2
  LW a1, 0(t2)
  BLT a1, t1, bb176
  # implict jump to bb171
bb171:
  # implict jump to bb172
bb172:
  ADD s2, s10, zero
  ADDIW s1, s11, 1
  # implict jump to bb173
bb173:
  LA s10, n
  LW s10, 0(s10)
  BLT s1, s10, bb175
  # implict jump to bb174
bb174:
  ADD s8, s2, zero
  JAL zero, bb165
bb175:
  ADD s9, s1, zero
  ADD s6, s2, zero
  JAL zero, bb170
bb176:
  LW t1, 0(t0)
  LW a1, 0(t2)
  SW a1, 0(t0)
  SW t1, 0(t2)
  ADD s10, t1, zero
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
