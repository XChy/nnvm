.global main
.global mm
.section .bss
B:
.space 4194304
C:
.space 4194304
A:
.space 4194304

.section .data



N:
.word 0x00000400
.section .text
main:
  ADDI sp, sp, -288
  SD ra, 184(sp)
  SD s7, 192(sp)
  SD s0, 200(sp)
  SD s1, 208(sp)
  SD s2, 216(sp)
  SD s3, 224(sp)
  SD s4, 232(sp)
  SD s5, 240(sp)
  SD s6, 248(sp)
  SD s8, 256(sp)
  SD s9, 264(sp)
  SD s10, 272(sp)
  SD s11, 280(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 152(sp)
  ADDI s6, zero, 0
  LW t4, 152(sp)
  BLT s6, t4, bb98
  # implict jump to bb1
bb1:
  ADDI s6, zero, 0
  LW t4, 152(sp)
  BLT s6, t4, bb87
  # implict jump to bb2
bb2:
  ADDI a0, zero, 65
  CALL _sysy_starttime
  ADDI s6, zero, 0
  SLTI s6, s6, 5
  BNE s6, zero, bb20
  # implict jump to bb3
bb3:
  ADDI s4, zero, 0
  LW t4, 152(sp)
  BLT s4, t4, bb6
  # implict jump to bb4
bb4:
  ADD s4, zero, zero
  # implict jump to bb5
bb5:
  ADDI a0, zero, 84
  CALL _sysy_stoptime
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 184(sp)
  LD s7, 192(sp)
  LD s0, 200(sp)
  LD s1, 208(sp)
  LD s2, 216(sp)
  LD s3, 224(sp)
  LD s4, 232(sp)
  LD s5, 240(sp)
  LD s6, 248(sp)
  LD s8, 256(sp)
  LD s9, 264(sp)
  LD s10, 272(sp)
  LD s11, 280(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
bb6:
  # implict jump to bb7
bb7:
  ADD s2, zero, zero
  ADD s9, zero, zero
  # implict jump to bb8
bb8:
  ADD s0, s9, zero
  ADD t4, s2, zero
  SW t4, 108(sp)
  ADDI s1, zero, 0
  LW t4, 152(sp)
  BLT s1, t4, bb14
  # implict jump to bb9
bb9:
  ADD s1, s0, zero
  # implict jump to bb10
bb10:
  ADD s11, s1, zero
  LW t4, 108(sp)
  ADDIW s5, t4, 1
  # implict jump to bb11
bb11:
  LW t4, 152(sp)
  BLT s5, t4, bb13
  # implict jump to bb12
bb12:
  ADD s4, s11, zero
  JAL zero, bb5
bb13:
  ADD s2, s5, zero
  ADD s9, s11, zero
  JAL zero, bb8
bb14:
  # implict jump to bb15
bb15:
  ADD s3, zero, zero
  ADD t4, s0, zero
  SW t4, 104(sp)
  # implict jump to bb16
bb16:
  LW t4, 104(sp)
  ADD s6, t4, zero
  ADD s7, s3, zero
  LW t4, 108(sp)
  SLLIW s0, t4, 12
  LA s8, B
  ADD s0, s8, s0
  SLLIW s8, s7, 2
  ADD s0, s0, s8
  LW s0, 0(s0)
  ADDW t4, s6, s0
  SW t4, 100(sp)
  ADDIW s10, s7, 1
  # implict jump to bb17
bb17:
  LW t4, 152(sp)
  BLT s10, t4, bb19
  # implict jump to bb18
bb18:
  LW t4, 100(sp)
  ADD s1, t4, zero
  JAL zero, bb10
bb19:
  ADD s3, s10, zero
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  JAL zero, bb16
bb20:
  # implict jump to bb21
bb21:
  ADD t4, zero, zero
  SW t4, 112(sp)
  # implict jump to bb22
bb22:
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  ADDI s9, zero, 0
  LW t4, 152(sp)
  BLT s9, t4, bb76
  # implict jump to bb23
bb23:
  LW t4, 152(sp)
  BLT zero, t4, bb58
  # implict jump to bb24
bb24:
  LW t4, 152(sp)
  BLT zero, t4, bb47
  # implict jump to bb25
bb25:
  LW t4, 152(sp)
  BLT zero, t4, bb29
  # implict jump to bb26
bb26:
  LW t3, 12(sp)
  ADDIW t4, t3, 1
  SW t4, 140(sp)
  # implict jump to bb27
bb27:
  LW t4, 140(sp)
  SLTI s4, t4, 5
  BNE s4, zero, bb28
  JAL zero, bb3
bb28:
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  JAL zero, bb22
bb29:
  # implict jump to bb30
bb30:
  ADD t4, zero, zero
  SW t4, 116(sp)
  ADD t4, zero, zero
  SW t4, 92(sp)
  # implict jump to bb31
bb31:
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LW t4, 116(sp)
  ADD s4, t4, zero
  ADD t4, s4, zero
  SW t4, 76(sp)
  ADD t4, zero, zero
  SW t4, 72(sp)
  # implict jump to bb32
bb32:
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t4, 84(sp)
  LW t3, 152(sp)
  BLT t4, t3, bb36
  # implict jump to bb33
bb33:
  LW t3, 68(sp)
  ADDIW t4, t3, 1
  SW t4, 120(sp)
  # implict jump to bb34
bb34:
  LW t4, 120(sp)
  LW t3, 152(sp)
  BLT t4, t3, bb35
  JAL zero, bb26
bb35:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  JAL zero, bb31
bb36:
  LW t4, 84(sp)
  SLLIW s0, t4, 12
  LA s1, A
  ADD s1, s1, s0
  LW t4, 68(sp)
  SLLIW s2, t4, 2
  ADD s1, s1, s2
  LW s1, 0(s1)
  SLTIU s2, s1, 1
  BNE s2, zero, bb46
  # implict jump to bb37
bb37:
  LW t4, 152(sp)
  BLT zero, t4, bb40
  # implict jump to bb38
bb38:
  ADD s2, zero, zero
  # implict jump to bb39
bb39:
  LW t4, 84(sp)
  ADDIW s4, t4, 1
  ADD t4, s2, zero
  SW t4, 76(sp)
  ADD t4, s4, zero
  SW t4, 72(sp)
  JAL zero, bb32
bb40:
  # implict jump to bb41
bb41:
  ADD s3, zero, zero
  # implict jump to bb42
bb42:
  ADD s4, s3, zero
  LA s5, B
  ADD s5, s5, s0
  SLLIW s6, s4, 2
  ADD s5, s5, s6
  LW s7, 0(s5)
  LW t4, 68(sp)
  SLLIW s8, t4, 12
  LA s9, C
  ADD s8, s9, s8
  ADD s6, s8, s6
  LW s6, 0(s6)
  MULW s6, s1, s6
  ADDW s6, s7, s6
  SW s6, 0(s5)
  ADDIW t4, s4, 1
  SW t4, 88(sp)
  # implict jump to bb43
bb43:
  LW t4, 88(sp)
  LW t3, 152(sp)
  BLT t4, t3, bb45
  # implict jump to bb44
bb44:
  LW t4, 88(sp)
  ADD s2, t4, zero
  JAL zero, bb39
bb45:
  LW t4, 88(sp)
  ADD s3, t4, zero
  JAL zero, bb42
bb46:
  LW t4, 84(sp)
  ADDIW s0, t4, 1
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  ADD t4, s0, zero
  SW t4, 72(sp)
  JAL zero, bb32
bb47:
  # implict jump to bb48
bb48:
  ADD t4, zero, zero
  SW t4, 60(sp)
  # implict jump to bb49
bb49:
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t4, 152(sp)
  BLT zero, t4, bb53
  # implict jump to bb50
bb50:
  LW t3, 52(sp)
  ADDIW t4, t3, 1
  SW t4, 64(sp)
  # implict jump to bb51
bb51:
  LW t4, 64(sp)
  LW t3, 152(sp)
  BLT t4, t3, bb52
  JAL zero, bb25
bb52:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  JAL zero, bb49
bb53:
  # implict jump to bb54
bb54:
  ADD t4, zero, zero
  SW t4, 56(sp)
  # implict jump to bb55
bb55:
  LW t4, 56(sp)
  ADD s7, t4, zero
  LW t4, 52(sp)
  SLLIW s3, t4, 12
  LA s9, B
  ADD s3, s9, s3
  SLLIW s9, s7, 2
  ADD s3, s3, s9
  SW zero, 0(s3)
  ADDIW t4, s7, 1
  SW t4, 24(sp)
  # implict jump to bb56
bb56:
  LW t4, 24(sp)
  LW t3, 152(sp)
  BLT t4, t3, bb57
  JAL zero, bb50
bb57:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  JAL zero, bb55
bb58:
  # implict jump to bb59
bb59:
  ADD t4, zero, zero
  SW t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 44(sp)
  # implict jump to bb60
bb60:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t4, 0(sp)
  ADD s9, t4, zero
  ADD t4, s9, zero
  SW t4, 36(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  # implict jump to bb61
bb61:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  LW t4, 40(sp)
  LW t3, 152(sp)
  BLT t4, t3, bb65
  # implict jump to bb62
bb62:
  LW t3, 28(sp)
  ADDIW t4, t3, 1
  SW t4, 176(sp)
  # implict jump to bb63
bb63:
  LW t4, 176(sp)
  LW t3, 152(sp)
  BLT t4, t3, bb64
  JAL zero, bb24
bb64:
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  JAL zero, bb60
bb65:
  LW t4, 40(sp)
  SLLIW s0, t4, 12
  LA s1, A
  ADD s1, s1, s0
  LW t4, 28(sp)
  SLLIW s2, t4, 2
  ADD s1, s1, s2
  LW s1, 0(s1)
  SLTIU s2, s1, 1
  BNE s2, zero, bb75
  # implict jump to bb66
bb66:
  LW t4, 152(sp)
  BLT zero, t4, bb69
  # implict jump to bb67
bb67:
  ADD s2, zero, zero
  # implict jump to bb68
bb68:
  LW t4, 40(sp)
  ADDIW s4, t4, 1
  ADD t4, s2, zero
  SW t4, 36(sp)
  ADD t4, s4, zero
  SW t4, 32(sp)
  JAL zero, bb61
bb69:
  # implict jump to bb70
bb70:
  ADD s3, zero, zero
  # implict jump to bb71
bb71:
  ADD s4, s3, zero
  LA s5, C
  ADD s5, s5, s0
  SLLIW s6, s4, 2
  ADD s5, s5, s6
  LW s7, 0(s5)
  LW t4, 28(sp)
  SLLIW s8, t4, 12
  LA s9, B
  ADD s8, s9, s8
  ADD s6, s8, s6
  LW s6, 0(s6)
  MULW s6, s1, s6
  ADDW s6, s7, s6
  SW s6, 0(s5)
  ADDIW t4, s4, 1
  SW t4, 172(sp)
  # implict jump to bb72
bb72:
  LW t4, 172(sp)
  LW t3, 152(sp)
  BLT t4, t3, bb74
  # implict jump to bb73
bb73:
  LW t4, 172(sp)
  ADD s2, t4, zero
  JAL zero, bb68
bb74:
  LW t4, 172(sp)
  ADD s3, t4, zero
  JAL zero, bb71
bb75:
  LW t4, 40(sp)
  ADDIW s0, t4, 1
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  ADD t4, s0, zero
  SW t4, 32(sp)
  JAL zero, bb61
bb76:
  # implict jump to bb77
bb77:
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb78
bb78:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 152(sp)
  BLT zero, t4, bb82
  # implict jump to bb79
bb79:
  LW t3, 8(sp)
  ADDIW t4, t3, 1
  SW t4, 148(sp)
  # implict jump to bb80
bb80:
  LW t4, 148(sp)
  LW t3, 152(sp)
  BLT t4, t3, bb81
  JAL zero, bb23
bb81:
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb78
bb82:
  # implict jump to bb83
bb83:
  ADD t4, zero, zero
  SW t4, 16(sp)
  # implict jump to bb84
bb84:
  LW t4, 16(sp)
  ADD s7, t4, zero
  LW t4, 8(sp)
  SLLIW s9, t4, 12
  LA s3, C
  ADD s3, s3, s9
  SLLIW s9, s7, 2
  ADD s3, s3, s9
  SW zero, 0(s3)
  ADDIW t4, s7, 1
  SW t4, 144(sp)
  # implict jump to bb85
bb85:
  LW t4, 144(sp)
  LW t3, 152(sp)
  BLT t4, t3, bb86
  JAL zero, bb79
bb86:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb84
bb87:
  # implict jump to bb88
bb88:
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb89
bb89:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  ADDI s9, zero, 0
  LW t4, 152(sp)
  BLT s9, t4, bb93
  # implict jump to bb90
bb90:
  LW t3, 96(sp)
  ADDIW t4, t3, 1
  SW t4, 136(sp)
  # implict jump to bb91
bb91:
  LW t4, 136(sp)
  LW t3, 152(sp)
  BLT t4, t3, bb92
  JAL zero, bb2
bb92:
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  JAL zero, bb89
bb93:
  # implict jump to bb94
bb94:
  ADD t4, zero, zero
  SW t4, 48(sp)
  # implict jump to bb95
bb95:
  LW t4, 48(sp)
  ADD s7, t4, zero
  LW t4, 96(sp)
  SLLIW s9, t4, 12
  LA s6, B
  ADD s6, s6, s9
  SLLIW s9, s7, 2
  ADD s6, s6, s9
  CALL getint
  ADD s9, a0, zero
  SW s9, 0(s6)
  ADDIW t4, s7, 1
  SW t4, 132(sp)
  # implict jump to bb96
bb96:
  LW t4, 132(sp)
  LW t3, 152(sp)
  BLT t4, t3, bb97
  JAL zero, bb90
bb97:
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb95
bb98:
  # implict jump to bb99
bb99:
  ADD t4, zero, zero
  SW t4, 164(sp)
  # implict jump to bb100
bb100:
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  ADDI s6, zero, 0
  LW t4, 152(sp)
  BLT s6, t4, bb104
  # implict jump to bb101
bb101:
  LW t3, 160(sp)
  ADDIW t4, t3, 1
  SW t4, 128(sp)
  # implict jump to bb102
bb102:
  LW t4, 128(sp)
  LW t3, 152(sp)
  BLT t4, t3, bb103
  JAL zero, bb1
bb103:
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 164(sp)
  JAL zero, bb100
bb104:
  # implict jump to bb105
bb105:
  ADD t4, zero, zero
  SW t4, 168(sp)
  # implict jump to bb106
bb106:
  LW t4, 168(sp)
  ADD s6, t4, zero
  LW t4, 160(sp)
  SLLIW s9, t4, 12
  LA s7, A
  ADD s7, s7, s9
  SLLIW s9, s6, 2
  ADD s7, s7, s9
  CALL getint
  ADD s9, a0, zero
  SW s9, 0(s7)
  ADDIW t4, s6, 1
  SW t4, 124(sp)
  # implict jump to bb107
bb107:
  LW t4, 124(sp)
  LW t3, 152(sp)
  BLT t4, t3, bb108
  JAL zero, bb101
bb108:
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  JAL zero, bb106
mm:
  ADDI sp, sp, -112
  SD ra, 8(sp)
  SD s0, 16(sp)
  SD s1, 24(sp)
  SD s2, 32(sp)
  SD s3, 40(sp)
  SD s4, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD s10, 96(sp)
  SD s11, 104(sp)
  ADD t4, a3, zero
  SD t4, 0(sp)
  BLT zero, a0, bb130
  # implict jump to bb110
bb110:
  BLT zero, a0, bb112
  # implict jump to bb111
bb111:
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s3, 40(sp)
  LD s4, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb112:
  # implict jump to bb113
bb113:
  ADD s8, zero, zero
  ADD s9, zero, zero
  # implict jump to bb114
bb114:
  ADD s10, s9, zero
  ADD s11, s8, zero
  ADD t0, zero, zero
  # implict jump to bb115
bb115:
  ADD t1, t0, zero
  ADD s1, s11, zero
  BLT t1, a0, bb119
  # implict jump to bb116
bb116:
  ADDIW s4, s10, 1
  # implict jump to bb117
bb117:
  BLT s4, a0, bb118
  JAL zero, bb111
bb118:
  ADD s8, s1, zero
  ADD s9, s4, zero
  JAL zero, bb114
bb119:
  SLLIW s4, t1, 12
  ADD s8, a1, s4
  SLLIW s9, s10, 2
  ADD s8, s8, s9
  LW s9, 0(s8)
  SLTIU s9, s9, 1
  BNE s9, zero, bb129
  # implict jump to bb120
bb120:
  BLT zero, a0, bb123
  # implict jump to bb121
bb121:
  ADD s9, zero, zero
  # implict jump to bb122
bb122:
  ADDIW a3, t1, 1
  ADD s11, s9, zero
  ADD t0, a3, zero
  JAL zero, bb115
bb123:
  # implict jump to bb124
bb124:
  ADD t2, zero, zero
  # implict jump to bb125
bb125:
  ADD a4, t2, zero
  LD t4, 0(sp)
  ADD a5, t4, s4
  SLLIW a6, a4, 2
  ADD a5, a5, a6
  LW a7, 0(a5)
  LW t6, 0(s8)
  SLLIW a3, s10, 12
  ADD a3, a2, a3
  ADD a3, a3, a6
  LW a3, 0(a3)
  MULW a3, t6, a3
  ADDW a3, a7, a3
  SW a3, 0(a5)
  ADDIW s0, a4, 1
  # implict jump to bb126
bb126:
  BLT s0, a0, bb128
  # implict jump to bb127
bb127:
  ADD s9, s0, zero
  JAL zero, bb122
bb128:
  ADD t2, s0, zero
  JAL zero, bb125
bb129:
  ADDIW s0, t1, 1
  ADD s11, s1, zero
  ADD t0, s0, zero
  JAL zero, bb115
bb130:
  # implict jump to bb131
bb131:
  ADD s5, zero, zero
  # implict jump to bb132
bb132:
  ADD s6, s5, zero
  BLT zero, a0, bb136
  # implict jump to bb133
bb133:
  ADDIW s2, s6, 1
  # implict jump to bb134
bb134:
  BLT s2, a0, bb135
  JAL zero, bb110
bb135:
  ADD s5, s2, zero
  JAL zero, bb132
bb136:
  # implict jump to bb137
bb137:
  ADD s7, zero, zero
  # implict jump to bb138
bb138:
  ADD s8, s7, zero
  SLLIW s9, s6, 12
  LD t4, 0(sp)
  ADD s9, t4, s9
  SLLIW s10, s8, 2
  ADD s9, s9, s10
  SW zero, 0(s9)
  ADDIW s3, s8, 1
  # implict jump to bb139
bb139:
  BLT s3, a0, bb140
  JAL zero, bb133
bb140:
  ADD s7, s3, zero
  JAL zero, bb138
