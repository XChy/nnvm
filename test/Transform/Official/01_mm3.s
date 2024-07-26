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
  SD s0, 192(sp)
  SD s1, 200(sp)
  SD s2, 208(sp)
  SD s3, 216(sp)
  SD s4, 224(sp)
  SD s5, 232(sp)
  SD s6, 240(sp)
  SD s7, 248(sp)
  SD s8, 256(sp)
  SD s9, 264(sp)
  SD s10, 272(sp)
  SD s11, 280(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 136(sp)
  ADDI s10, zero, 0
  LW t4, 136(sp)
  BLT s10, t4, bb85
  # implict jump to bb1
bb1:
  ADDI s2, zero, 0
  LW t4, 136(sp)
  BLT s2, t4, bb76
  # implict jump to bb2
bb2:
  ADDI a0, zero, 65
  CALL _sysy_starttime
  ADDI s2, zero, 0
  SLTI s2, s2, 5
  BNE s2, zero, bb18
  # implict jump to bb3
bb3:
  ADDI s1, zero, 0
  LW t4, 136(sp)
  BLT s1, t4, bb6
  # implict jump to bb4
bb4:
  ADD s1, zero, zero
  # implict jump to bb5
bb5:
  ADDI a0, zero, 84
  CALL _sysy_stoptime
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
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
  LD s9, 264(sp)
  LD s10, 272(sp)
  LD s11, 280(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
bb6:
  ADD s10, zero, zero
  ADD s0, zero, zero
  # implict jump to bb7
bb7:
  ADD s8, s0, zero
  ADD t4, s10, zero
  SW t4, 96(sp)
  ADDI s3, zero, 0
  LW t4, 136(sp)
  BLT s3, t4, bb13
  # implict jump to bb8
bb8:
  ADD s3, s8, zero
  # implict jump to bb9
bb9:
  ADD s5, s3, zero
  LW t4, 96(sp)
  ADDIW s7, t4, 1
  # implict jump to bb10
bb10:
  LW t4, 136(sp)
  BLT s7, t4, bb12
  # implict jump to bb11
bb11:
  ADD s1, s5, zero
  JAL zero, bb5
bb12:
  ADD s10, s7, zero
  ADD s0, s5, zero
  JAL zero, bb7
bb13:
  ADD s2, zero, zero
  ADD t4, s8, zero
  SW t4, 100(sp)
  # implict jump to bb14
bb14:
  LW t4, 100(sp)
  ADD s9, t4, zero
  ADD s6, s2, zero
  LW t4, 96(sp)
  SLLIW s8, t4, 12
  LA s4, B
  ADD s4, s4, s8
  SLLIW s8, s6, 2
  ADD s4, s4, s8
  LW s4, 0(s4)
  ADDW t4, s9, s4
  SW t4, 108(sp)
  ADDIW s11, s6, 1
  # implict jump to bb15
bb15:
  LW t4, 136(sp)
  BLT s11, t4, bb17
  # implict jump to bb16
bb16:
  LW t4, 108(sp)
  ADD s3, t4, zero
  JAL zero, bb9
bb17:
  ADD s2, s11, zero
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  JAL zero, bb14
bb18:
  ADD t4, zero, zero
  SW t4, 88(sp)
  # implict jump to bb19
bb19:
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  ADDI s10, zero, 0
  LW t4, 136(sp)
  BLT s10, t4, bb67
  # implict jump to bb20
bb20:
  LW t4, 136(sp)
  BLT zero, t4, bb51
  # implict jump to bb21
bb21:
  LW t4, 136(sp)
  BLT zero, t4, bb42
  # implict jump to bb22
bb22:
  LW t4, 136(sp)
  BLT zero, t4, bb26
  # implict jump to bb23
bb23:
  LW t3, 52(sp)
  ADDIW t4, t3, 1
  SW t4, 92(sp)
  # implict jump to bb24
bb24:
  LW t4, 92(sp)
  SLTI s1, t4, 5
  BNE s1, zero, bb25
  JAL zero, bb3
bb25:
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  JAL zero, bb19
bb26:
  ADD t4, zero, zero
  SW t4, 84(sp)
  ADD t4, zero, zero
  SW t4, 76(sp)
  # implict jump to bb27
bb27:
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t4, 84(sp)
  ADD s10, t4, zero
  ADD t4, s10, zero
  SW t4, 60(sp)
  ADD t4, zero, zero
  SW t4, 56(sp)
  # implict jump to bb28
bb28:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t4, 68(sp)
  LW t3, 136(sp)
  BLT t4, t3, bb32
  # implict jump to bb29
bb29:
  LW t3, 0(sp)
  ADDIW t4, t3, 1
  SW t4, 80(sp)
  # implict jump to bb30
bb30:
  LW t4, 80(sp)
  LW t3, 136(sp)
  BLT t4, t3, bb31
  JAL zero, bb23
bb31:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  JAL zero, bb27
bb32:
  LW t4, 68(sp)
  SLLIW s0, t4, 12
  LA s1, A
  ADD s1, s1, s0
  LW t4, 0(sp)
  SLLIW s2, t4, 2
  ADD s1, s1, s2
  LW s1, 0(s1)
  SLTIU s2, s1, 1
  BNE s2, zero, bb41
  # implict jump to bb33
bb33:
  LW t4, 136(sp)
  BLT zero, t4, bb36
  # implict jump to bb34
bb34:
  ADD s2, zero, zero
  # implict jump to bb35
bb35:
  LW t4, 68(sp)
  ADDIW s4, t4, 1
  ADD t4, s2, zero
  SW t4, 60(sp)
  ADD t4, s4, zero
  SW t4, 56(sp)
  JAL zero, bb28
bb36:
  ADD s3, zero, zero
  # implict jump to bb37
bb37:
  ADD s4, s3, zero
  LA s5, B
  ADD s5, s5, s0
  SLLIW s6, s4, 2
  ADD s5, s5, s6
  LW s7, 0(s5)
  LW t4, 0(sp)
  SLLIW s8, t4, 12
  LA s9, C
  ADD s8, s9, s8
  ADD s6, s8, s6
  LW s6, 0(s6)
  MULW s6, s1, s6
  ADDW s6, s7, s6
  SW s6, 0(s5)
  ADDIW t4, s4, 1
  SW t4, 72(sp)
  # implict jump to bb38
bb38:
  LW t4, 72(sp)
  LW t3, 136(sp)
  BLT t4, t3, bb40
  # implict jump to bb39
bb39:
  LW t4, 72(sp)
  ADD s2, t4, zero
  JAL zero, bb35
bb40:
  LW t4, 72(sp)
  ADD s3, t4, zero
  JAL zero, bb37
bb41:
  LW t4, 68(sp)
  ADDIW s0, t4, 1
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  ADD t4, s0, zero
  SW t4, 56(sp)
  JAL zero, bb28
bb42:
  ADD t4, zero, zero
  SW t4, 48(sp)
  # implict jump to bb43
bb43:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t4, 136(sp)
  BLT zero, t4, bb47
  # implict jump to bb44
bb44:
  LW t3, 40(sp)
  ADDIW t4, t3, 1
  SW t4, 12(sp)
  # implict jump to bb45
bb45:
  LW t4, 12(sp)
  LW t3, 136(sp)
  BLT t4, t3, bb46
  JAL zero, bb22
bb46:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb43
bb47:
  ADD t4, zero, zero
  SW t4, 44(sp)
  # implict jump to bb48
bb48:
  LW t4, 44(sp)
  ADD s8, t4, zero
  LW t4, 40(sp)
  SLLIW s3, t4, 12
  LA s10, B
  ADD s3, s10, s3
  SLLIW s10, s8, 2
  ADD s3, s3, s10
  SW zero, 0(s3)
  ADDIW t4, s8, 1
  SW t4, 160(sp)
  # implict jump to bb49
bb49:
  LW t4, 160(sp)
  LW t3, 136(sp)
  BLT t4, t3, bb50
  JAL zero, bb44
bb50:
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  JAL zero, bb48
bb51:
  ADD t4, zero, zero
  SW t4, 36(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  # implict jump to bb52
bb52:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t4, 36(sp)
  ADD s10, t4, zero
  ADD t4, s10, zero
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb53
bb53:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t4, 28(sp)
  LW t3, 136(sp)
  BLT t4, t3, bb57
  # implict jump to bb54
bb54:
  LW t3, 16(sp)
  ADDIW t4, t3, 1
  SW t4, 156(sp)
  # implict jump to bb55
bb55:
  LW t4, 156(sp)
  LW t3, 136(sp)
  BLT t4, t3, bb56
  JAL zero, bb21
bb56:
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  JAL zero, bb52
bb57:
  LW t4, 28(sp)
  SLLIW s0, t4, 12
  LA s1, A
  ADD s1, s1, s0
  LW t4, 16(sp)
  SLLIW s2, t4, 2
  ADD s1, s1, s2
  LW s1, 0(s1)
  SLTIU s2, s1, 1
  BNE s2, zero, bb66
  # implict jump to bb58
bb58:
  LW t4, 136(sp)
  BLT zero, t4, bb61
  # implict jump to bb59
bb59:
  ADD s2, zero, zero
  # implict jump to bb60
bb60:
  LW t4, 28(sp)
  ADDIW s4, t4, 1
  ADD t4, s2, zero
  SW t4, 24(sp)
  ADD t4, s4, zero
  SW t4, 20(sp)
  JAL zero, bb53
bb61:
  ADD s3, zero, zero
  # implict jump to bb62
bb62:
  ADD s4, s3, zero
  LA s5, C
  ADD s5, s5, s0
  SLLIW s6, s4, 2
  ADD s5, s5, s6
  LW s7, 0(s5)
  LW t4, 16(sp)
  SLLIW s8, t4, 12
  LA s9, B
  ADD s8, s9, s8
  ADD s6, s8, s6
  LW s6, 0(s6)
  MULW s6, s1, s6
  ADDW s6, s7, s6
  SW s6, 0(s5)
  ADDIW t4, s4, 1
  SW t4, 140(sp)
  # implict jump to bb63
bb63:
  LW t4, 140(sp)
  LW t3, 136(sp)
  BLT t4, t3, bb65
  # implict jump to bb64
bb64:
  LW t4, 140(sp)
  ADD s2, t4, zero
  JAL zero, bb60
bb65:
  LW t4, 140(sp)
  ADD s3, t4, zero
  JAL zero, bb62
bb66:
  LW t4, 28(sp)
  ADDIW s0, t4, 1
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  ADD t4, s0, zero
  SW t4, 20(sp)
  JAL zero, bb53
bb67:
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb68
bb68:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  LW t4, 136(sp)
  BLT zero, t4, bb72
  # implict jump to bb69
bb69:
  LW t3, 176(sp)
  ADDIW t4, t3, 1
  SW t4, 128(sp)
  # implict jump to bb70
bb70:
  LW t4, 128(sp)
  LW t3, 136(sp)
  BLT t4, t3, bb71
  JAL zero, bb20
bb71:
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  JAL zero, bb68
bb72:
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb73
bb73:
  LW t4, 4(sp)
  ADD s3, t4, zero
  LW t4, 176(sp)
  SLLIW s10, t4, 12
  LA s8, C
  ADD s8, s8, s10
  SLLIW s10, s3, 2
  ADD s8, s8, s10
  SW zero, 0(s8)
  ADDIW t4, s3, 1
  SW t4, 124(sp)
  # implict jump to bb74
bb74:
  LW t4, 124(sp)
  LW t3, 136(sp)
  BLT t4, t3, bb75
  JAL zero, bb69
bb75:
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  JAL zero, bb73
bb76:
  ADD t4, zero, zero
  SW t4, 172(sp)
  # implict jump to bb77
bb77:
  LW t3, 172(sp)
  ADD t4, t3, zero
  SW t4, 164(sp)
  ADDI s10, zero, 0
  LW t4, 136(sp)
  BLT s10, t4, bb81
  # implict jump to bb78
bb78:
  LW t3, 164(sp)
  ADDIW t4, t3, 1
  SW t4, 132(sp)
  # implict jump to bb79
bb79:
  LW t4, 132(sp)
  LW t3, 136(sp)
  BLT t4, t3, bb80
  JAL zero, bb2
bb80:
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  JAL zero, bb77
bb81:
  ADD t4, zero, zero
  SW t4, 168(sp)
  # implict jump to bb82
bb82:
  LW t4, 168(sp)
  ADD s3, t4, zero
  LW t4, 164(sp)
  SLLIW s10, t4, 12
  LA s2, B
  ADD s2, s2, s10
  SLLIW s10, s3, 2
  ADD s2, s2, s10
  CALL getint
  ADD s10, a0, zero
  SW s10, 0(s2)
  ADDIW t4, s3, 1
  SW t4, 112(sp)
  # implict jump to bb83
bb83:
  LW t4, 112(sp)
  LW t3, 136(sp)
  BLT t4, t3, bb84
  JAL zero, bb78
bb84:
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  JAL zero, bb82
bb85:
  ADD t4, zero, zero
  SW t4, 148(sp)
  # implict jump to bb86
bb86:
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  ADDI s10, zero, 0
  LW t4, 136(sp)
  BLT s10, t4, bb90
  # implict jump to bb87
bb87:
  LW t3, 144(sp)
  ADDIW t4, t3, 1
  SW t4, 120(sp)
  # implict jump to bb88
bb88:
  LW t4, 120(sp)
  LW t3, 136(sp)
  BLT t4, t3, bb89
  JAL zero, bb1
bb89:
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 148(sp)
  JAL zero, bb86
bb90:
  ADD t4, zero, zero
  SW t4, 152(sp)
  # implict jump to bb91
bb91:
  LW t4, 152(sp)
  ADD s10, t4, zero
  LW t4, 144(sp)
  SLLIW s3, t4, 12
  LA s2, A
  ADD s2, s2, s3
  SLLIW s3, s10, 2
  ADD s2, s2, s3
  CALL getint
  ADD s3, a0, zero
  SW s3, 0(s2)
  ADDIW t4, s10, 1
  SW t4, 116(sp)
  # implict jump to bb92
bb92:
  LW t4, 116(sp)
  LW t3, 136(sp)
  BLT t4, t3, bb93
  JAL zero, bb87
bb93:
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  JAL zero, bb91
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
  BLT zero, a0, bb113
  # implict jump to bb95
bb95:
  BLT zero, a0, bb97
  # implict jump to bb96
bb96:
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
bb97:
  ADD s8, zero, zero
  ADD s9, zero, zero
  # implict jump to bb98
bb98:
  ADD s10, s9, zero
  ADD s11, s8, zero
  ADD t0, zero, zero
  # implict jump to bb99
bb99:
  ADD t1, t0, zero
  ADD s2, s11, zero
  BLT t1, a0, bb103
  # implict jump to bb100
bb100:
  ADDIW s4, s10, 1
  # implict jump to bb101
bb101:
  BLT s4, a0, bb102
  JAL zero, bb96
bb102:
  ADD s8, s2, zero
  ADD s9, s4, zero
  JAL zero, bb98
bb103:
  SLLIW s4, t1, 12
  ADD s8, a1, s4
  SLLIW s9, s10, 2
  ADD s8, s8, s9
  LW s9, 0(s8)
  SLTIU s9, s9, 1
  BNE s9, zero, bb112
  # implict jump to bb104
bb104:
  BLT zero, a0, bb107
  # implict jump to bb105
bb105:
  ADD s9, zero, zero
  # implict jump to bb106
bb106:
  ADDIW a3, t1, 1
  ADD s11, s9, zero
  ADD t0, a3, zero
  JAL zero, bb99
bb107:
  ADD t2, zero, zero
  # implict jump to bb108
bb108:
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
  # implict jump to bb109
bb109:
  BLT s0, a0, bb111
  # implict jump to bb110
bb110:
  ADD s9, s0, zero
  JAL zero, bb106
bb111:
  ADD t2, s0, zero
  JAL zero, bb108
bb112:
  ADDIW s0, t1, 1
  ADD s11, s2, zero
  ADD t0, s0, zero
  JAL zero, bb99
bb113:
  ADD s5, zero, zero
  # implict jump to bb114
bb114:
  ADD s6, s5, zero
  BLT zero, a0, bb118
  # implict jump to bb115
bb115:
  ADDIW s1, s6, 1
  # implict jump to bb116
bb116:
  BLT s1, a0, bb117
  JAL zero, bb95
bb117:
  ADD s5, s1, zero
  JAL zero, bb114
bb118:
  ADD s7, zero, zero
  # implict jump to bb119
bb119:
  ADD s8, s7, zero
  SLLIW s9, s6, 12
  LD t4, 0(sp)
  ADD s9, t4, s9
  SLLIW s10, s8, 2
  ADD s9, s9, s10
  SW zero, 0(s9)
  ADDIW s3, s8, 1
  # implict jump to bb120
bb120:
  BLT s3, a0, bb121
  JAL zero, bb115
bb121:
  ADD s7, s3, zero
  JAL zero, bb119
