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
  ADDI sp, sp, -160
  SD s11, 56(sp)
  SD ra, 64(sp)
  SD s10, 72(sp)
  SD s2, 80(sp)
  SD s1, 88(sp)
  SD s0, 96(sp)
  SD s5, 104(sp)
  SD s7, 112(sp)
  SD s8, 120(sp)
  SD s9, 128(sp)
  SD s3, 136(sp)
  SD s4, 144(sp)
  SD s6, 152(sp)
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
  SB t4, 25(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
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
  BNE s7, zero, bb37
  JAL zero, bb38
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
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t4, 20(sp)
  ADD s6, t4, zero
  LB t4, 25(sp)
  ADD s7, t4, zero
  LW t4, 28(sp)
  LW t3, 8(sp)
  SLT s8, t4, t3
  BNE s8, zero, bb13
  JAL zero, bb14
bb13:
  ADD t4, s7, zero
  SB t4, 45(sp)
  ADD t4, zero, zero
  SW t4, 40(sp)
  ADD t4, s6, zero
  SW t4, 36(sp)
  JAL zero, bb15
bb14:
  LW t4, 8(sp)
  LW t3, 8(sp)
  MULW s0, t4, t3
  ADD s1, zero, zero
  JAL zero, bb34
bb15:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LB t3, 45(sp)
  ADD t4, t3, zero
  SB t4, 24(sp)
  LW t4, 48(sp)
  LW t3, 8(sp)
  SLT t0, t4, t3
  BNE t0, zero, bb16
  JAL zero, bb17
bb16:
  LB t4, 24(sp)
  ADD t0, t4, zero
  ADD t1, zero, zero
  JAL zero, bb18
bb17:
  LW t4, 28(sp)
  ADDIW s0, t4, 1
  LB t3, 24(sp)
  ADD t4, t3, zero
  SB t4, 25(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  ADD t4, s0, zero
  SW t4, 12(sp)
  JAL zero, bb12
bb18:
  ADD t4, t1, zero
  SW t4, 32(sp)
  ADD t4, t0, zero
  SB t4, 44(sp)
  LW t4, 32(sp)
  LW t3, 8(sp)
  SLT a1, t4, t3
  BNE a1, zero, bb19
  JAL zero, bb21
bb19:
  LW t3, 48(sp)
  SLT t4, t3, zero
  SB t4, 52(sp)
  LB t4, 52(sp)
  BNE t4, zero, bb48
  JAL zero, bb49
bb20:
  ADD a6, a5, zero
  SLT a7, a6, zero
  XORI t6, a7, 1
  BNE t6, zero, bb22
  JAL zero, bb24
bb21:
  LW t4, 48(sp)
  ADDIW s0, t4, 1
  LB t3, 44(sp)
  ADD t4, t3, zero
  SB t4, 45(sp)
  ADD t4, s0, zero
  SW t4, 40(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  JAL zero, bb15
bb22:
  LW t4, 28(sp)
  SLT a7, t4, zero
  BNE a7, zero, bb59
  JAL zero, bb60
bb23:
  ADD s4, s2, zero
  SLT s6, s4, zero
  XORI s4, s6, 1
  ADD s6, s4, zero
  JAL zero, bb25
bb24:
  ADD s6, zero, zero
  JAL zero, bb25
bb25:
  ADD s4, s6, zero
  BNE s4, zero, bb26
  JAL zero, bb28
bb26:
  LB t4, 52(sp)
  BNE t4, zero, bb70
  JAL zero, bb71
bb27:
  ADD t2, s5, zero
  SLT s9, t2, zero
  BNE s9, zero, bb29
  JAL zero, bb31
bb28:
  LW t4, 32(sp)
  ADDIW s10, t4, 1
  ADD t0, s4, zero
  ADD t1, s10, zero
  JAL zero, bb18
bb29:
  LW t4, 48(sp)
  LW t3, 8(sp)
  MULW s9, t4, t3
  LW t4, 32(sp)
  ADDW t2, s9, t4
  ADDI s9, zero, 4
  MULW s7, t2, s9
  LA s9, temp
  ADD t2, s9, s7
  LW t4, 28(sp)
  SLT s7, t4, zero
  BNE s7, zero, bb81
  JAL zero, bb82
bb30:
  ADD s10, s8, zero
  ADDW a1, a6, s10
  SW a1, 0(t2)
  JAL zero, bb28
bb31:
  LW t4, 48(sp)
  LW t3, 8(sp)
  MULW s7, t4, t3
  LW t4, 32(sp)
  ADDW s8, s7, t4
  ADDI s7, zero, 4
  MULW s9, s8, s7
  LA s7, temp
  ADD s8, s7, s9
  LW s7, 0(s8)
  LW t4, 28(sp)
  SLT s9, t4, zero
  BNE s9, zero, bb92
  JAL zero, bb93
bb32:
  ADD t2, t1, zero
  ADDW a0, a6, t2
  SLT t2, a0, s7
  BNE t2, zero, bb33
  JAL zero, bb28
bb33:
  SW a0, 0(s8)
  JAL zero, bb28
bb34:
  ADD s2, s1, zero
  SLT s3, s2, s0
  BNE s3, zero, bb35
  JAL zero, bb36
bb35:
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
  JAL zero, bb34
bb36:
  LD s11, 56(sp)
  LD ra, 64(sp)
  LD s10, 72(sp)
  LD s2, 80(sp)
  LD s1, 88(sp)
  LD s0, 96(sp)
  LD s5, 104(sp)
  LD s7, 112(sp)
  LD s8, 120(sp)
  LD s9, 128(sp)
  LD s3, 136(sp)
  LD s4, 144(sp)
  LD s6, 152(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb37:
  ADDI s7, zero, 1
  JAL zero, bb39
bb38:
  LW t4, 8(sp)
  SLT s5, s6, t4
  XORI s10, s5, 1
  ADD s7, s10, zero
  JAL zero, bb39
bb39:
  ADD s10, s7, zero
  BNE s10, zero, bb40
  JAL zero, bb41
bb40:
  ADDI s10, zero, 1
  JAL zero, bb42
bb41:
  SLT s5, s4, zero
  ADD s10, s5, zero
  JAL zero, bb42
bb42:
  ADD s11, s10, zero
  BNE s11, zero, bb43
  JAL zero, bb44
bb43:
  ADDI s11, zero, 1
  JAL zero, bb45
bb44:
  LW t4, 8(sp)
  SLT s5, s4, t4
  XORI t0, s5, 1
  ADD s11, t0, zero
  JAL zero, bb45
bb45:
  ADD t0, s11, zero
  BNE t0, zero, bb46
  JAL zero, bb47
bb46:
  ADDI t0, zero, -1
  JAL zero, bb10
bb47:
  ADD s5, s0, s9
  LW t1, 0(s5)
  ADD t0, t1, zero
  JAL zero, bb10
bb48:
  ADDI a2, zero, 1
  JAL zero, bb50
bb49:
  LW t4, 48(sp)
  LW t3, 8(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD a2, s1, zero
  JAL zero, bb50
bb50:
  ADD a3, a2, zero
  BNE a3, zero, bb51
  JAL zero, bb52
bb51:
  ADDI a3, zero, 1
  JAL zero, bb53
bb52:
  LW t4, 28(sp)
  SLT s0, t4, zero
  ADD a3, s0, zero
  JAL zero, bb53
bb53:
  ADD a4, a3, zero
  BNE a4, zero, bb54
  JAL zero, bb55
bb54:
  ADDI a4, zero, 1
  JAL zero, bb56
bb55:
  LW t4, 28(sp)
  LW t3, 8(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD a4, s1, zero
  JAL zero, bb56
bb56:
  ADD a5, a4, zero
  BNE a5, zero, bb57
  JAL zero, bb58
bb57:
  ADDI a5, zero, -1
  JAL zero, bb20
bb58:
  LW t4, 48(sp)
  LW t3, 8(sp)
  MULW s0, t4, t3
  LW t4, 28(sp)
  ADDW s1, s0, t4
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, temp
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a5, s0, zero
  JAL zero, bb20
bb59:
  ADDI a7, zero, 1
  JAL zero, bb61
bb60:
  LW t4, 28(sp)
  LW t3, 8(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD a7, s1, zero
  JAL zero, bb61
bb61:
  ADD t6, a7, zero
  BNE t6, zero, bb62
  JAL zero, bb63
bb62:
  ADDI t6, zero, 1
  JAL zero, bb64
bb63:
  LW t4, 32(sp)
  SLT s0, t4, zero
  ADD t6, s0, zero
  JAL zero, bb64
bb64:
  ADD s1, t6, zero
  BNE s1, zero, bb65
  JAL zero, bb66
bb65:
  ADDI s1, zero, 1
  JAL zero, bb67
bb66:
  LW t4, 32(sp)
  LW t3, 8(sp)
  SLT s0, t4, t3
  XORI s2, s0, 1
  ADD s1, s2, zero
  JAL zero, bb67
bb67:
  ADD s2, s1, zero
  BNE s2, zero, bb68
  JAL zero, bb69
bb68:
  ADDI s2, zero, -1
  JAL zero, bb23
bb69:
  LW t4, 28(sp)
  LW t3, 8(sp)
  MULW s0, t4, t3
  LW t4, 32(sp)
  ADDW s3, s0, t4
  ADDI s0, zero, 4
  MULW s4, s3, s0
  LA s0, temp
  ADD s3, s0, s4
  LW s0, 0(s3)
  ADD s2, s0, zero
  JAL zero, bb23
bb70:
  ADDI s3, zero, 1
  JAL zero, bb72
bb71:
  LW t4, 48(sp)
  LW t3, 8(sp)
  SLT s0, t4, t3
  XORI s5, s0, 1
  ADD s3, s5, zero
  JAL zero, bb72
bb72:
  ADD s11, s3, zero
  BNE s11, zero, bb73
  JAL zero, bb74
bb73:
  ADDI s11, zero, 1
  JAL zero, bb75
bb74:
  LW t4, 32(sp)
  SLT s0, t4, zero
  ADD s11, s0, zero
  JAL zero, bb75
bb75:
  ADD s0, s11, zero
  BNE s0, zero, bb76
  JAL zero, bb77
bb76:
  ADDI s0, zero, 1
  JAL zero, bb78
bb77:
  LW t4, 32(sp)
  LW t3, 8(sp)
  SLT s5, t4, t3
  XORI s7, s5, 1
  ADD s0, s7, zero
  JAL zero, bb78
bb78:
  ADD s5, s0, zero
  BNE s5, zero, bb79
  JAL zero, bb80
bb79:
  ADDI s5, zero, -1
  JAL zero, bb27
bb80:
  LW t4, 48(sp)
  LW t3, 8(sp)
  MULW s7, t4, t3
  LW t4, 32(sp)
  ADDW s8, s7, t4
  ADDI s7, zero, 4
  MULW s9, s8, s7
  LA s7, temp
  ADD s8, s7, s9
  LW s7, 0(s8)
  ADD s5, s7, zero
  JAL zero, bb27
bb81:
  ADDI s7, zero, 1
  JAL zero, bb83
bb82:
  LW t4, 28(sp)
  LW t3, 8(sp)
  SLT s8, t4, t3
  XORI s9, s8, 1
  ADD s7, s9, zero
  JAL zero, bb83
bb83:
  ADD s9, s7, zero
  BNE s9, zero, bb84
  JAL zero, bb85
bb84:
  ADDI s9, zero, 1
  JAL zero, bb86
bb85:
  LW t4, 32(sp)
  SLT s8, t4, zero
  ADD s9, s8, zero
  JAL zero, bb86
bb86:
  ADD a0, s9, zero
  BNE a0, zero, bb87
  JAL zero, bb88
bb87:
  ADDI a0, zero, 1
  JAL zero, bb89
bb88:
  LW t4, 32(sp)
  LW t3, 8(sp)
  SLT s8, t4, t3
  XORI s10, s8, 1
  ADD a0, s10, zero
  JAL zero, bb89
bb89:
  ADD s8, a0, zero
  BNE s8, zero, bb90
  JAL zero, bb91
bb90:
  ADDI s8, zero, -1
  JAL zero, bb30
bb91:
  LW t4, 28(sp)
  LW t3, 8(sp)
  MULW s10, t4, t3
  LW t4, 32(sp)
  ADDW t0, s10, t4
  ADDI s10, zero, 4
  MULW t1, t0, s10
  LA s10, temp
  ADD t0, s10, t1
  LW s10, 0(t0)
  ADD s8, s10, zero
  JAL zero, bb30
bb92:
  ADDI s9, zero, 1
  JAL zero, bb94
bb93:
  LW t4, 28(sp)
  LW t3, 8(sp)
  SLT s10, t4, t3
  XORI t0, s10, 1
  ADD s9, t0, zero
  JAL zero, bb94
bb94:
  ADD s10, s9, zero
  BNE s10, zero, bb95
  JAL zero, bb96
bb95:
  ADDI s10, zero, 1
  JAL zero, bb97
bb96:
  LW t4, 32(sp)
  SLT t0, t4, zero
  ADD s10, t0, zero
  JAL zero, bb97
bb97:
  ADD t0, s10, zero
  BNE t0, zero, bb98
  JAL zero, bb99
bb98:
  ADDI t0, zero, 1
  JAL zero, bb100
bb99:
  LW t4, 32(sp)
  LW t3, 8(sp)
  SLT t1, t4, t3
  XORI t2, t1, 1
  ADD t0, t2, zero
  JAL zero, bb100
bb100:
  ADD t1, t0, zero
  BNE t1, zero, bb101
  JAL zero, bb102
bb101:
  ADDI t1, zero, -1
  JAL zero, bb32
bb102:
  LW t4, 28(sp)
  LW t3, 8(sp)
  MULW t2, t4, t3
  LW t4, 32(sp)
  ADDW a0, t2, t4
  ADDI t2, zero, 4
  MULW a1, a0, t2
  LA t2, temp
  ADD a0, t2, a1
  LW t2, 0(a0)
  ADD t1, t2, zero
  JAL zero, bb32
main:
  ADDI sp, sp, -176
  SD ra, 72(sp)
  SD s9, 80(sp)
  SD s8, 88(sp)
  SD s7, 96(sp)
  SD s10, 104(sp)
  SD s1, 112(sp)
  SD s6, 120(sp)
  SD s2, 128(sp)
  SD s3, 136(sp)
  SD s4, 144(sp)
  SD s5, 152(sp)
  SD s0, 160(sp)
  SD s11, 168(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 0(sp)
  LA s1, w
  ADD a0, s1, zero
  CALL getarray
  ADD s1, a0, zero
  ADDI a0, zero, 62
  CALL _sysy_starttime
  ADD s1, zero, zero
  JAL zero, bb104
bb104:
  ADD s2, s1, zero
  LW t4, 0(sp)
  SLT s3, s2, t4
  BNE s3, zero, bb105
  JAL zero, bb106
bb105:
  ADD s3, zero, zero
  JAL zero, bb107
bb106:
  ADD t4, zero, zero
  SB t4, 17(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  ADD t4, zero, zero
  SW t4, 4(sp)
  JAL zero, bb111
bb107:
  ADD s4, s3, zero
  LW t4, 0(sp)
  SLT s5, s4, t4
  BNE s5, zero, bb108
  JAL zero, bb110
bb108:
  LW t4, 0(sp)
  MULW s5, s4, t4
  ADDW s6, s5, s2
  ADDI s5, zero, 4
  MULW s7, s6, s5
  LA s5, temp
  ADD s6, s5, s7
  SLT s5, s4, zero
  BNE s5, zero, bb136
  JAL zero, bb137
bb109:
  ADD s11, s10, zero
  SW s11, 0(s6)
  ADDIW s11, s4, 1
  ADD s3, s11, zero
  JAL zero, bb107
bb110:
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb104
bb111:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t4, 12(sp)
  ADD s5, t4, zero
  LB t4, 17(sp)
  ADD s6, t4, zero
  LW t4, 20(sp)
  LW t3, 0(sp)
  SLT s7, t4, t3
  BNE s7, zero, bb112
  JAL zero, bb113
bb112:
  ADD t4, s6, zero
  SB t4, 37(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  ADD t4, s5, zero
  SW t4, 28(sp)
  JAL zero, bb114
bb113:
  LW t4, 0(sp)
  LW t3, 0(sp)
  MULW s0, t4, t3
  ADD s1, zero, zero
  JAL zero, bb133
bb114:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LB t3, 37(sp)
  ADD t4, t3, zero
  SB t4, 16(sp)
  LW t4, 40(sp)
  LW t3, 0(sp)
  SLT s11, t4, t3
  BNE s11, zero, bb115
  JAL zero, bb116
bb115:
  LB t4, 16(sp)
  ADD s11, t4, zero
  ADD s0, zero, zero
  JAL zero, bb117
bb116:
  LW t4, 20(sp)
  ADDIW s0, t4, 1
  LB t3, 16(sp)
  ADD t4, t3, zero
  SB t4, 17(sp)
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  ADD t4, s0, zero
  SW t4, 4(sp)
  JAL zero, bb111
bb117:
  ADD t4, s0, zero
  SW t4, 24(sp)
  ADD t4, s11, zero
  SB t4, 36(sp)
  LW t4, 24(sp)
  LW t3, 0(sp)
  SLT s2, t4, t3
  BNE s2, zero, bb118
  JAL zero, bb120
bb118:
  LW t3, 40(sp)
  SLT t4, t3, zero
  SB t4, 44(sp)
  LB t4, 44(sp)
  BNE t4, zero, bb147
  JAL zero, bb148
bb119:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t4, 52(sp)
  SLT s6, t4, zero
  XORI s5, s6, 1
  BNE s5, zero, bb121
  JAL zero, bb123
bb120:
  LW t4, 40(sp)
  ADDIW s0, t4, 1
  LB t3, 36(sp)
  ADD t4, t3, zero
  SB t4, 37(sp)
  ADD t4, s0, zero
  SW t4, 32(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  JAL zero, bb114
bb121:
  LW t4, 20(sp)
  SLT s5, t4, zero
  BNE s5, zero, bb158
  JAL zero, bb159
bb122:
  LW t4, 60(sp)
  ADD s2, t4, zero
  SLT s10, s2, zero
  XORI s2, s10, 1
  ADD t4, s2, zero
  SB t4, 56(sp)
  JAL zero, bb124
bb123:
  ADD t4, zero, zero
  SB t4, 56(sp)
  JAL zero, bb124
bb124:
  LB t3, 56(sp)
  ADD t4, t3, zero
  SB t4, 64(sp)
  LB t4, 64(sp)
  BNE t4, zero, bb125
  JAL zero, bb127
bb125:
  LB t4, 44(sp)
  BNE t4, zero, bb169
  JAL zero, bb170
bb126:
  ADD s10, s8, zero
  SLT s5, s10, zero
  BNE s5, zero, bb128
  JAL zero, bb130
bb127:
  LW t4, 24(sp)
  ADDIW s1, t4, 1
  LB t4, 64(sp)
  ADD s11, t4, zero
  ADD s0, s1, zero
  JAL zero, bb117
bb128:
  LW t4, 40(sp)
  LW t3, 0(sp)
  MULW s5, t4, t3
  LW t4, 24(sp)
  ADDW s10, s5, t4
  ADDI s5, zero, 4
  MULW s6, s10, s5
  LA s5, temp
  ADD s10, s5, s6
  LW t4, 20(sp)
  SLT s5, t4, zero
  BNE s5, zero, bb180
  JAL zero, bb181
bb129:
  ADD s2, s9, zero
  LW t4, 52(sp)
  ADDW s1, t4, s2
  SW s1, 0(s10)
  JAL zero, bb127
bb130:
  LW t4, 40(sp)
  LW t3, 0(sp)
  MULW s0, t4, t3
  LW t4, 24(sp)
  ADDW s1, s0, t4
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, temp
  ADD s1, s0, s2
  LW s0, 0(s1)
  LW t4, 20(sp)
  SLT s2, t4, zero
  BNE s2, zero, bb191
  JAL zero, bb192
bb131:
  ADD s9, s7, zero
  LW t4, 52(sp)
  ADDW s10, t4, s9
  SLT s9, s10, s0
  BNE s9, zero, bb132
  JAL zero, bb127
bb132:
  SW s10, 0(s1)
  JAL zero, bb127
bb133:
  ADD s2, s1, zero
  SLT s3, s2, s0
  BNE s3, zero, bb134
  JAL zero, bb135
bb134:
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
  JAL zero, bb133
bb135:
  ADDI a0, zero, 64
  CALL _sysy_stoptime
  ADD a0, s0, zero
  LA s0, dst
  ADD a1, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 72(sp)
  LD s9, 80(sp)
  LD s8, 88(sp)
  LD s7, 96(sp)
  LD s10, 104(sp)
  LD s1, 112(sp)
  LD s6, 120(sp)
  LD s2, 128(sp)
  LD s3, 136(sp)
  LD s4, 144(sp)
  LD s5, 152(sp)
  LD s0, 160(sp)
  LD s11, 168(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb136:
  ADDI s5, zero, 1
  JAL zero, bb138
bb137:
  LW t4, 0(sp)
  SLT s3, s4, t4
  XORI s8, s3, 1
  ADD s5, s8, zero
  JAL zero, bb138
bb138:
  ADD s8, s5, zero
  BNE s8, zero, bb139
  JAL zero, bb140
bb139:
  ADDI s8, zero, 1
  JAL zero, bb141
bb140:
  SLT s3, s2, zero
  ADD s8, s3, zero
  JAL zero, bb141
bb141:
  ADD s9, s8, zero
  BNE s9, zero, bb142
  JAL zero, bb143
bb142:
  ADDI s9, zero, 1
  JAL zero, bb144
bb143:
  LW t4, 0(sp)
  SLT s3, s2, t4
  XORI s10, s3, 1
  ADD s9, s10, zero
  JAL zero, bb144
bb144:
  ADD s10, s9, zero
  BNE s10, zero, bb145
  JAL zero, bb146
bb145:
  ADDI s10, zero, -1
  JAL zero, bb109
bb146:
  LA s3, w
  ADD s11, s3, s7
  LW s3, 0(s11)
  ADD s10, s3, zero
  JAL zero, bb109
bb147:
  ADDI t4, zero, 1
  SB t4, 45(sp)
  JAL zero, bb149
bb148:
  LW t4, 40(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 45(sp)
  JAL zero, bb149
bb149:
  LB t4, 45(sp)
  ADD s1, t4, zero
  BNE s1, zero, bb150
  JAL zero, bb151
bb150:
  ADDI t4, zero, 1
  SB t4, 46(sp)
  JAL zero, bb152
bb151:
  LW t4, 20(sp)
  SLT s0, t4, zero
  ADD t4, s0, zero
  SB t4, 46(sp)
  JAL zero, bb152
bb152:
  LB t4, 46(sp)
  ADD s4, t4, zero
  BNE s4, zero, bb153
  JAL zero, bb154
bb153:
  ADDI t4, zero, 1
  SB t4, 47(sp)
  JAL zero, bb155
bb154:
  LW t4, 20(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 47(sp)
  JAL zero, bb155
bb155:
  LB t4, 47(sp)
  ADD s3, t4, zero
  BNE s3, zero, bb156
  JAL zero, bb157
bb156:
  ADDI t4, zero, -1
  SW t4, 48(sp)
  JAL zero, bb119
bb157:
  LW t4, 40(sp)
  LW t3, 0(sp)
  MULW s0, t4, t3
  LW t4, 20(sp)
  ADDW s1, s0, t4
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, temp
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 48(sp)
  JAL zero, bb119
bb158:
  ADDI t4, zero, 1
  SB t4, 57(sp)
  JAL zero, bb160
bb159:
  LW t4, 20(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 57(sp)
  JAL zero, bb160
bb160:
  LB t4, 57(sp)
  ADD s6, t4, zero
  BNE s6, zero, bb161
  JAL zero, bb162
bb161:
  ADDI t4, zero, 1
  SB t4, 58(sp)
  JAL zero, bb163
bb162:
  LW t4, 24(sp)
  SLT s0, t4, zero
  ADD t4, s0, zero
  SB t4, 58(sp)
  JAL zero, bb163
bb163:
  LB t4, 58(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb164
  JAL zero, bb165
bb164:
  ADDI t4, zero, 1
  SB t4, 59(sp)
  JAL zero, bb166
bb165:
  LW t4, 24(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 59(sp)
  JAL zero, bb166
bb166:
  LB t4, 59(sp)
  ADD s9, t4, zero
  BNE s9, zero, bb167
  JAL zero, bb168
bb167:
  ADDI t4, zero, -1
  SW t4, 60(sp)
  JAL zero, bb122
bb168:
  LW t4, 20(sp)
  LW t3, 0(sp)
  MULW s0, t4, t3
  LW t4, 24(sp)
  ADDW s1, s0, t4
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, temp
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD t4, s0, zero
  SW t4, 60(sp)
  JAL zero, bb122
bb169:
  ADDI t4, zero, 1
  SB t4, 65(sp)
  JAL zero, bb171
bb170:
  LW t4, 40(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 65(sp)
  JAL zero, bb171
bb171:
  LB t4, 65(sp)
  ADD s4, t4, zero
  BNE s4, zero, bb172
  JAL zero, bb173
bb172:
  ADDI s4, zero, 1
  JAL zero, bb174
bb173:
  LW t4, 24(sp)
  SLT s0, t4, zero
  ADD s4, s0, zero
  JAL zero, bb174
bb174:
  ADD s3, s4, zero
  BNE s3, zero, bb175
  JAL zero, bb176
bb175:
  ADDI s3, zero, 1
  JAL zero, bb177
bb176:
  LW t4, 24(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD s3, s1, zero
  JAL zero, bb177
bb177:
  ADD s8, s3, zero
  BNE s8, zero, bb178
  JAL zero, bb179
bb178:
  ADDI s8, zero, -1
  JAL zero, bb126
bb179:
  LW t4, 40(sp)
  LW t3, 0(sp)
  MULW s0, t4, t3
  LW t4, 24(sp)
  ADDW s1, s0, t4
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, temp
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD s8, s0, zero
  JAL zero, bb126
bb180:
  ADDI s5, zero, 1
  JAL zero, bb182
bb181:
  LW t4, 20(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD s5, s1, zero
  JAL zero, bb182
bb182:
  ADD s6, s5, zero
  BNE s6, zero, bb183
  JAL zero, bb184
bb183:
  ADDI s6, zero, 1
  JAL zero, bb185
bb184:
  LW t4, 24(sp)
  SLT s0, t4, zero
  ADD s6, s0, zero
  JAL zero, bb185
bb185:
  ADD s7, s6, zero
  BNE s7, zero, bb186
  JAL zero, bb187
bb186:
  ADDI s7, zero, 1
  JAL zero, bb188
bb187:
  LW t4, 24(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD s7, s1, zero
  JAL zero, bb188
bb188:
  ADD s9, s7, zero
  BNE s9, zero, bb189
  JAL zero, bb190
bb189:
  ADDI s9, zero, -1
  JAL zero, bb129
bb190:
  LW t4, 20(sp)
  LW t3, 0(sp)
  MULW s0, t4, t3
  LW t4, 24(sp)
  ADDW s1, s0, t4
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, temp
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD s9, s0, zero
  JAL zero, bb129
bb191:
  ADDI s2, zero, 1
  JAL zero, bb193
bb192:
  LW t4, 20(sp)
  LW t3, 0(sp)
  SLT s5, t4, t3
  XORI s6, s5, 1
  ADD s2, s6, zero
  JAL zero, bb193
bb193:
  ADD s5, s2, zero
  BNE s5, zero, bb194
  JAL zero, bb195
bb194:
  ADDI s5, zero, 1
  JAL zero, bb196
bb195:
  LW t4, 24(sp)
  SLT s6, t4, zero
  ADD s5, s6, zero
  JAL zero, bb196
bb196:
  ADD s6, s5, zero
  BNE s6, zero, bb197
  JAL zero, bb198
bb197:
  ADDI s6, zero, 1
  JAL zero, bb199
bb198:
  LW t4, 24(sp)
  LW t3, 0(sp)
  SLT s7, t4, t3
  XORI s9, s7, 1
  ADD s6, s9, zero
  JAL zero, bb199
bb199:
  ADD s7, s6, zero
  BNE s7, zero, bb200
  JAL zero, bb201
bb200:
  ADDI s7, zero, -1
  JAL zero, bb131
bb201:
  LW t4, 20(sp)
  LW t3, 0(sp)
  MULW s9, t4, t3
  LW t4, 24(sp)
  ADDW s10, s9, t4
  ADDI s9, zero, 4
  MULW s11, s10, s9
  LA s9, temp
  ADD s10, s9, s11
  LW s9, 0(s10)
  ADD s7, s9, zero
  JAL zero, bb131
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
  BNE s4, zero, bb203
  JAL zero, bb204
bb203:
  ADDI s4, zero, 1
  JAL zero, bb205
bb204:
  SLT s5, s2, s1
  XORI s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb205
bb205:
  ADD s5, s4, zero
  BNE s5, zero, bb206
  JAL zero, bb207
bb206:
  ADDI s5, zero, 1
  JAL zero, bb208
bb207:
  SLT s6, s3, zero
  ADD s5, s6, zero
  JAL zero, bb208
bb208:
  ADD s6, s5, zero
  BNE s6, zero, bb209
  JAL zero, bb210
bb209:
  ADDI s6, zero, 1
  JAL zero, bb211
bb210:
  SLT s7, s3, s1
  XORI s8, s7, 1
  ADD s6, s8, zero
  JAL zero, bb211
bb211:
  ADD s7, s6, zero
  BNE s7, zero, bb212
  JAL zero, bb213
bb212:
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
bb213:
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
