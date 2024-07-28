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
  ADDI sp, sp, -368
  SD s4, 192(sp)
  SD ra, 200(sp)
  SD s0, 208(sp)
  SD s1, 216(sp)
  SD s3, 224(sp)
  SD s2, 240(sp)
  SD s5, 248(sp)
  SD s6, 256(sp)
  SD s7, 264(sp)
  SD s8, 272(sp)
  SD s9, 280(sp)
  SD s10, 288(sp)
  SD s11, 296(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 184(sp)
  ADDI s9, zero, 0
  LW t4, 184(sp)
  BLT s9, t4, bb98
  # implict jump to bb1
bb1:
  ADDI s4, zero, 0
  LW t4, 184(sp)
  BLT s4, t4, bb87
  # implict jump to bb2
bb2:
  ADDI a0, zero, 65
  CALL _sysy_starttime
  ADDI s4, zero, 0
  SLTI s4, s4, 5
  BNE s4, zero, bb20
  # implict jump to bb3
bb3:
  ADDI s2, zero, 0
  LW t4, 184(sp)
  BLT s2, t4, bb6
  # implict jump to bb4
bb4:
  ADD s2, zero, zero
  # implict jump to bb5
bb5:
  ADDI a0, zero, 84
  CALL _sysy_stoptime
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD s4, 192(sp)
  LD ra, 200(sp)
  LD s0, 208(sp)
  LD s1, 216(sp)
  LD s3, 224(sp)
  LD s2, 240(sp)
  LD s5, 248(sp)
  LD s6, 256(sp)
  LD s7, 264(sp)
  LD s8, 272(sp)
  LD s9, 280(sp)
  LD s10, 288(sp)
  LD s11, 296(sp)
  ADDI sp, sp, 368
  JALR zero, 0(ra)
bb6:
  # implict jump to bb7
bb7:
  ADDI t4, zero, 0
  SW t4, 100(sp)
  ADD s3, zero, zero
  ADD s0, zero, zero
  # implict jump to bb8
bb8:
  ADD s1, s0, zero
  ADD s9, s3, zero
  LW t4, 100(sp)
  LW t3, 184(sp)
  BLT t4, t3, bb14
  # implict jump to bb9
bb9:
  ADD s7, s1, zero
  # implict jump to bb10
bb10:
  ADD t4, s7, zero
  SW t4, 152(sp)
  ADDIW s6, s9, 1
  # implict jump to bb11
bb11:
  LW t4, 184(sp)
  BLT s6, t4, bb13
  # implict jump to bb12
bb12:
  LW t4, 152(sp)
  ADD s2, t4, zero
  JAL zero, bb5
bb13:
  ADD s3, s6, zero
  LW t4, 152(sp)
  ADD s0, t4, zero
  JAL zero, bb8
bb14:
  # implict jump to bb15
bb15:
  SLLIW s4, s9, 12
  LA s5, B
  ADD t4, s5, s4
  SD t4, 232(sp)
  ADD s4, zero, zero
  # implict jump to bb16
bb16:
  ADD s5, s1, zero
  ADD s10, s4, zero
  SLLIW s8, s10, 2
  LD t4, 232(sp)
  ADD s8, t4, s8
  LW s8, 0(s8)
  ADDW t4, s5, s8
  SW t4, 164(sp)
  ADDIW s11, s10, 1
  # implict jump to bb17
bb17:
  LW t4, 184(sp)
  BLT s11, t4, bb19
  # implict jump to bb18
bb18:
  LW t4, 164(sp)
  ADD s7, t4, zero
  JAL zero, bb10
bb19:
  ADD s4, s11, zero
  LW t4, 164(sp)
  ADD s1, t4, zero
  JAL zero, bb16
bb20:
  # implict jump to bb21
bb21:
  ADDI t4, zero, 0
  SW t4, 144(sp)
  ADD t4, zero, zero
  SW t4, 116(sp)
  # implict jump to bb22
bb22:
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t4, 144(sp)
  LW t3, 184(sp)
  BLT t4, t3, bb76
  # implict jump to bb23
bb23:
  LW t4, 184(sp)
  BLT zero, t4, bb58
  # implict jump to bb24
bb24:
  LW t4, 184(sp)
  BLT zero, t4, bb47
  # implict jump to bb25
bb25:
  LW t4, 184(sp)
  BLT zero, t4, bb29
  # implict jump to bb26
bb26:
  LW t3, 32(sp)
  ADDIW t4, t3, 1
  SW t4, 120(sp)
  # implict jump to bb27
bb27:
  LW t4, 120(sp)
  SLTI s2, t4, 5
  BNE s2, zero, bb28
  JAL zero, bb3
bb28:
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  JAL zero, bb22
bb29:
  # implict jump to bb30
bb30:
  ADD t4, zero, zero
  SW t4, 112(sp)
  ADD t4, zero, zero
  SW t4, 108(sp)
  # implict jump to bb31
bb31:
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t4, 112(sp)
  ADD s2, t4, zero
  ADD t4, s2, zero
  SW t4, 92(sp)
  ADD t4, zero, zero
  SW t4, 88(sp)
  # implict jump to bb32
bb32:
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  LW t4, 96(sp)
  LW t3, 184(sp)
  BLT t4, t3, bb36
  # implict jump to bb33
bb33:
  LW t3, 80(sp)
  ADDIW t4, t3, 1
  SW t4, 172(sp)
  # implict jump to bb34
bb34:
  LW t4, 172(sp)
  LW t3, 184(sp)
  BLT t4, t3, bb35
  JAL zero, bb26
bb35:
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t3, 172(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  JAL zero, bb31
bb36:
  LW t4, 96(sp)
  SLLIW s0, t4, 12
  LA s1, A
  ADD s1, s1, s0
  LW t4, 80(sp)
  SLLIW s2, t4, 2
  ADD s1, s1, s2
  LW s1, 0(s1)
  SLTIU s2, s1, 1
  BNE s2, zero, bb46
  # implict jump to bb37
bb37:
  LW t4, 184(sp)
  BLT zero, t4, bb40
  # implict jump to bb38
bb38:
  ADD s2, zero, zero
  # implict jump to bb39
bb39:
  LW t4, 96(sp)
  ADDIW s3, t4, 1
  ADD t4, s2, zero
  SW t4, 92(sp)
  ADD t4, s3, zero
  SW t4, 88(sp)
  JAL zero, bb32
bb40:
  # implict jump to bb41
bb41:
  LA s3, B
  ADD t4, s3, s0
  SD t4, 304(sp)
  LW t4, 80(sp)
  SLLIW s0, t4, 12
  LA s3, C
  ADD t4, s3, s0
  SD t4, 312(sp)
  ADD s0, zero, zero
  # implict jump to bb42
bb42:
  ADD s3, s0, zero
  SLLIW s4, s3, 2
  LD t4, 304(sp)
  ADD s5, t4, s4
  LW s6, 0(s5)
  LD t4, 312(sp)
  ADD s4, t4, s4
  LW s4, 0(s4)
  MULW s4, s1, s4
  ADDW s4, s6, s4
  SW s4, 0(s5)
  ADDIW t4, s3, 1
  SW t4, 104(sp)
  # implict jump to bb43
bb43:
  LW t4, 104(sp)
  LW t3, 184(sp)
  BLT t4, t3, bb45
  # implict jump to bb44
bb44:
  LW t4, 104(sp)
  ADD s2, t4, zero
  JAL zero, bb39
bb45:
  LW t4, 104(sp)
  ADD s0, t4, zero
  JAL zero, bb42
bb46:
  LW t4, 96(sp)
  ADDIW s0, t4, 1
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  ADD t4, s0, zero
  SW t4, 88(sp)
  JAL zero, bb32
bb47:
  # implict jump to bb48
bb48:
  ADD t4, zero, zero
  SW t4, 72(sp)
  # implict jump to bb49
bb49:
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LW t4, 184(sp)
  BLT zero, t4, bb53
  # implict jump to bb50
bb50:
  LW t3, 68(sp)
  ADDIW t4, t3, 1
  SW t4, 12(sp)
  # implict jump to bb51
bb51:
  LW t4, 12(sp)
  LW t3, 184(sp)
  BLT t4, t3, bb52
  JAL zero, bb25
bb52:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  JAL zero, bb49
bb53:
  # implict jump to bb54
bb54:
  LW t4, 68(sp)
  SLLIW s7, t4, 12
  LA s9, B
  ADD t4, s9, s7
  SD t4, 320(sp)
  ADD t4, zero, zero
  SW t4, 76(sp)
  # implict jump to bb55
bb55:
  LW t4, 76(sp)
  ADD s9, t4, zero
  SLLIW s7, s9, 2
  LD t4, 320(sp)
  ADD s7, t4, s7
  SW zero, 0(s7)
  ADDIW t4, s9, 1
  SW t4, 4(sp)
  # implict jump to bb56
bb56:
  LW t4, 4(sp)
  LW t3, 184(sp)
  BLT t4, t3, bb57
  JAL zero, bb50
bb57:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  JAL zero, bb55
bb58:
  # implict jump to bb59
bb59:
  ADD t4, zero, zero
  SW t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  # implict jump to bb60
bb60:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t4, 0(sp)
  ADD s9, t4, zero
  ADD t4, s9, zero
  SW t4, 56(sp)
  ADD t4, zero, zero
  SW t4, 52(sp)
  # implict jump to bb61
bb61:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 188(sp)
  LW t4, 60(sp)
  LW t3, 184(sp)
  BLT t4, t3, bb65
  # implict jump to bb62
bb62:
  LW t3, 44(sp)
  ADDIW t4, t3, 1
  SW t4, 180(sp)
  # implict jump to bb63
bb63:
  LW t4, 180(sp)
  LW t3, 184(sp)
  BLT t4, t3, bb64
  JAL zero, bb24
bb64:
  LW t3, 188(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb60
bb65:
  LW t4, 60(sp)
  SLLIW s0, t4, 12
  LA s1, A
  ADD s1, s1, s0
  LW t4, 44(sp)
  SLLIW s2, t4, 2
  ADD s1, s1, s2
  LW s1, 0(s1)
  SLTIU s2, s1, 1
  BNE s2, zero, bb75
  # implict jump to bb66
bb66:
  LW t4, 184(sp)
  BLT zero, t4, bb69
  # implict jump to bb67
bb67:
  ADD s2, zero, zero
  # implict jump to bb68
bb68:
  LW t4, 60(sp)
  ADDIW s3, t4, 1
  ADD t4, s2, zero
  SW t4, 56(sp)
  ADD t4, s3, zero
  SW t4, 52(sp)
  JAL zero, bb61
bb69:
  # implict jump to bb70
bb70:
  LA s3, C
  ADD t4, s3, s0
  SD t4, 344(sp)
  LW t4, 44(sp)
  SLLIW s0, t4, 12
  LA s3, B
  ADD t4, s3, s0
  SD t4, 328(sp)
  ADD s0, zero, zero
  # implict jump to bb71
bb71:
  ADD s3, s0, zero
  SLLIW s4, s3, 2
  LD t4, 344(sp)
  ADD s5, t4, s4
  LW s6, 0(s5)
  LD t4, 328(sp)
  ADD s4, t4, s4
  LW s4, 0(s4)
  MULW s4, s1, s4
  ADDW s4, s6, s4
  SW s4, 0(s5)
  ADDIW t4, s3, 1
  SW t4, 176(sp)
  # implict jump to bb72
bb72:
  LW t4, 176(sp)
  LW t3, 184(sp)
  BLT t4, t3, bb74
  # implict jump to bb73
bb73:
  LW t4, 176(sp)
  ADD s2, t4, zero
  JAL zero, bb68
bb74:
  LW t4, 176(sp)
  ADD s0, t4, zero
  JAL zero, bb71
bb75:
  LW t4, 60(sp)
  ADDIW s0, t4, 1
  LW t3, 188(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  ADD t4, s0, zero
  SW t4, 52(sp)
  JAL zero, bb61
bb76:
  # implict jump to bb77
bb77:
  ADD t4, zero, zero
  SW t4, 36(sp)
  # implict jump to bb78
bb78:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t4, 184(sp)
  BLT zero, t4, bb82
  # implict jump to bb79
bb79:
  LW t3, 28(sp)
  ADDIW t4, t3, 1
  SW t4, 132(sp)
  # implict jump to bb80
bb80:
  LW t4, 132(sp)
  LW t3, 184(sp)
  BLT t4, t3, bb81
  JAL zero, bb23
bb81:
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  JAL zero, bb78
bb82:
  # implict jump to bb83
bb83:
  LW t4, 28(sp)
  SLLIW s7, t4, 12
  LA s9, C
  ADD t4, s9, s7
  SD t4, 336(sp)
  ADD t4, zero, zero
  SW t4, 40(sp)
  # implict jump to bb84
bb84:
  LW t4, 40(sp)
  ADD s9, t4, zero
  SLLIW s7, s9, 2
  LD t4, 336(sp)
  ADD s7, t4, s7
  SW zero, 0(s7)
  ADDIW t4, s9, 1
  SW t4, 160(sp)
  # implict jump to bb85
bb85:
  LW t4, 160(sp)
  LW t3, 184(sp)
  BLT t4, t3, bb86
  JAL zero, bb79
bb86:
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb84
bb87:
  # implict jump to bb88
bb88:
  ADDI t4, zero, 0
  SW t4, 140(sp)
  ADD t4, zero, zero
  SW t4, 24(sp)
  # implict jump to bb89
bb89:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t4, 140(sp)
  LW t3, 184(sp)
  BLT t4, t3, bb93
  # implict jump to bb90
bb90:
  LW t3, 16(sp)
  ADDIW t4, t3, 1
  SW t4, 156(sp)
  # implict jump to bb91
bb91:
  LW t4, 156(sp)
  LW t3, 184(sp)
  BLT t4, t3, bb92
  JAL zero, bb2
bb92:
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  JAL zero, bb89
bb93:
  # implict jump to bb94
bb94:
  LW t4, 16(sp)
  SLLIW s9, t4, 12
  LA s7, B
  ADD t4, s7, s9
  SD t4, 352(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb95
bb95:
  LW t4, 20(sp)
  ADD s9, t4, zero
  SLLIW s7, s9, 2
  LD t4, 352(sp)
  ADD s7, t4, s7
  CALL getint
  ADD s4, a0, zero
  SW s4, 0(s7)
  ADDIW t4, s9, 1
  SW t4, 148(sp)
  # implict jump to bb96
bb96:
  LW t4, 148(sp)
  LW t3, 184(sp)
  BLT t4, t3, bb97
  JAL zero, bb90
bb97:
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb95
bb98:
  # implict jump to bb99
bb99:
  ADDI t4, zero, 0
  SW t4, 128(sp)
  ADD t4, zero, zero
  SW t4, 64(sp)
  # implict jump to bb100
bb100:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LW t4, 128(sp)
  LW t3, 184(sp)
  BLT t4, t3, bb104
  # implict jump to bb101
bb101:
  LW t3, 124(sp)
  ADDIW t4, t3, 1
  SW t4, 136(sp)
  # implict jump to bb102
bb102:
  LW t4, 136(sp)
  LW t3, 184(sp)
  BLT t4, t3, bb103
  JAL zero, bb1
bb103:
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  JAL zero, bb100
bb104:
  # implict jump to bb105
bb105:
  LW t4, 124(sp)
  SLLIW s9, t4, 12
  LA s7, A
  ADD t4, s7, s9
  SD t4, 360(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb106
bb106:
  LW t4, 8(sp)
  ADD s9, t4, zero
  SLLIW s7, s9, 2
  LD t4, 360(sp)
  ADD s7, t4, s7
  CALL getint
  ADD s4, a0, zero
  SW s4, 0(s7)
  ADDIW t4, s9, 1
  SW t4, 168(sp)
  # implict jump to bb107
bb107:
  LW t4, 168(sp)
  LW t3, 184(sp)
  BLT t4, t3, bb108
  JAL zero, bb101
bb108:
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  JAL zero, bb106
mm:
  ADDI sp, sp, -128
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  SD s10, 104(sp)
  SD s11, 112(sp)
  ADD t4, a2, zero
  SD t4, 8(sp)
  ADD t4, a3, zero
  SD t4, 0(sp)
  BLT zero, a0, bb130
  # implict jump to bb110
bb110:
  BLT zero, a0, bb112
  # implict jump to bb111
bb111:
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  LD s10, 104(sp)
  LD s11, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb112:
  # implict jump to bb113
bb113:
  ADD s11, zero, zero
  ADD t0, zero, zero
  # implict jump to bb114
bb114:
  ADD t1, t0, zero
  ADD t2, s11, zero
  ADD a4, zero, zero
  # implict jump to bb115
bb115:
  ADD a5, a4, zero
  ADD s4, t2, zero
  BLT a5, a0, bb119
  # implict jump to bb116
bb116:
  ADDIW s6, t1, 1
  # implict jump to bb117
bb117:
  BLT s6, a0, bb118
  JAL zero, bb111
bb118:
  ADD s11, s4, zero
  ADD t0, s6, zero
  JAL zero, bb114
bb119:
  SLLIW s6, a5, 12
  ADD s11, a1, s6
  SLLIW t0, t1, 2
  ADD s11, s11, t0
  LW t0, 0(s11)
  SLTIU t0, t0, 1
  BNE t0, zero, bb129
  # implict jump to bb120
bb120:
  BLT zero, a0, bb123
  # implict jump to bb121
bb121:
  ADD t0, zero, zero
  # implict jump to bb122
bb122:
  ADDIW a2, a5, 1
  ADD t2, t0, zero
  ADD a4, a2, zero
  JAL zero, bb115
bb123:
  # implict jump to bb124
bb124:
  LD t4, 0(sp)
  ADD s7, t4, s6
  SLLIW s6, t1, 12
  LD t4, 8(sp)
  ADD s1, t4, s6
  ADD s6, zero, zero
  # implict jump to bb125
bb125:
  ADD a6, s6, zero
  SLLIW a7, a6, 2
  ADD t6, s7, a7
  LW a3, 0(t6)
  LW a2, 0(s11)
  ADD a7, s1, a7
  LW a7, 0(a7)
  MULW a2, a2, a7
  ADDW a2, a3, a2
  SW a2, 0(t6)
  ADDIW s0, a6, 1
  # implict jump to bb126
bb126:
  BLT s0, a0, bb128
  # implict jump to bb127
bb127:
  ADD t0, s0, zero
  JAL zero, bb122
bb128:
  ADD s6, s0, zero
  JAL zero, bb125
bb129:
  ADDIW s0, a5, 1
  ADD t2, s4, zero
  ADD a4, s0, zero
  JAL zero, bb115
bb130:
  # implict jump to bb131
bb131:
  ADD s8, zero, zero
  # implict jump to bb132
bb132:
  ADD s9, s8, zero
  BLT zero, a0, bb136
  # implict jump to bb133
bb133:
  ADDIW s5, s9, 1
  # implict jump to bb134
bb134:
  BLT s5, a0, bb135
  JAL zero, bb110
bb135:
  ADD s8, s5, zero
  JAL zero, bb132
bb136:
  # implict jump to bb137
bb137:
  SLLIW s10, s9, 12
  LD t4, 0(sp)
  ADD s2, t4, s10
  ADD s10, zero, zero
  # implict jump to bb138
bb138:
  ADD s11, s10, zero
  SLLIW t0, s11, 2
  ADD t0, s2, t0
  SW zero, 0(t0)
  ADDIW s3, s11, 1
  # implict jump to bb139
bb139:
  BLT s3, a0, bb140
  JAL zero, bb133
bb140:
  ADD s10, s3, zero
  JAL zero, bb138
