.global convn
.global getvalue
.global reduce
.global main
.global memmove
.global checkrange
.section .bss
kernelid:
.space 40000
b:
.space 40000000
a:
.space 40000000

.section .data



max:
.word 0x40000000
.section .text
convn:
  ADDI sp, sp, -144
  SD ra, 32(sp)
  SD s0, 40(sp)
  SD s1, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s5, 80(sp)
  SD s6, 88(sp)
  SD s7, 96(sp)
  SD s8, 104(sp)
  SD s9, 112(sp)
  SD s10, 120(sp)
  SD s11, 128(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD t4, a4, zero
  SW t4, 0(sp)
  ADD s5, a5, zero
  ADDI s6, zero, 2
  DIVW s5, s5, s6
  ADD s6, zero, zero
  # implict jump to bb1
bb1:
  ADD s7, s6, zero
  SUBW s8, s7, s5
  ADD s9, zero, zero
  # implict jump to bb2
bb2:
  ADD s10, s9, zero
  SUBW s11, s10, s5
  ADD t4, zero, zero
  SW t4, 12(sp)
  ADD t4, s8, zero
  SW t4, 16(sp)
  # implict jump to bb3
bb3:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t4, 12(sp)
  ADD t2, t4, zero
  ADD t4, t2, zero
  SW t4, 4(sp)
  ADD t4, s11, zero
  SW t4, 8(sp)
  # implict jump to bb4
bb4:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t4, 4(sp)
  ADD t6, t4, zero
  LW t4, 20(sp)
  BLT t4, zero, bb24
  # implict jump to bb5
bb5:
  LW t4, 24(sp)
  SLT s4, t4, zero
  # implict jump to bb6
bb6:
  BNE s4, zero, bb23
  # implict jump to bb7
bb7:
  LW t4, 20(sp)
  SLT s4, t4, s3
  XORI s4, s4, 1
  # implict jump to bb8
bb8:
  BNE s4, zero, bb22
  # implict jump to bb9
bb9:
  LW t4, 24(sp)
  LW t3, 0(sp)
  SLT s4, t4, t3
  XORI s4, s4, 1
  # implict jump to bb10
bb10:
  BNE s4, zero, bb21
  # implict jump to bb11
bb11:
  LW t4, 20(sp)
  LW t3, 0(sp)
  MULW s4, t4, t3
  LW t4, 24(sp)
  ADDW s4, s4, t4
  SLLIW s4, s4, 2
  ADD s4, s1, s4
  LW s4, 0(s4)
  # implict jump to bb12
bb12:
  ADD a0, s0, zero
  ADD a1, t6, zero
  ADD a2, s4, zero
  CALL reduce
  ADD s4, a0, zero
  LW t4, 24(sp)
  ADDIW t0, t4, 1
  ADDW t1, s10, s5
  SLT t1, t0, t1
  XORI t1, t1, 1
  BNE t1, zero, bb14
  # implict jump to bb13
bb13:
  ADD t4, s4, zero
  SW t4, 4(sp)
  ADD t4, t0, zero
  SW t4, 8(sp)
  JAL zero, bb4
bb14:
  LW t4, 20(sp)
  ADDIW t0, t4, 1
  ADDW t1, s7, s5
  SLT t1, t0, t1
  XORI t1, t1, 1
  BNE t1, zero, bb16
  # implict jump to bb15
bb15:
  ADD t4, s4, zero
  SW t4, 12(sp)
  ADD t4, t0, zero
  SW t4, 16(sp)
  JAL zero, bb3
bb16:
  LW t4, 0(sp)
  MULW s11, s7, t4
  ADDW s11, s11, s10
  SLLIW s11, s11, 2
  ADD s11, s2, s11
  SW s4, 0(s11)
  ADDIW s4, s10, 1
  LW t4, 0(sp)
  SLT s10, s4, t4
  XORI s10, s10, 1
  BNE s10, zero, bb18
  # implict jump to bb17
bb17:
  ADD s9, s4, zero
  JAL zero, bb2
bb18:
  ADDIW s4, s7, 1
  SLT s7, s4, s3
  XORI s7, s7, 1
  BNE s7, zero, bb20
  # implict jump to bb19
bb19:
  ADD s6, s4, zero
  JAL zero, bb1
bb20:
  ADD a0, zero, zero
  LD ra, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s5, 80(sp)
  LD s6, 88(sp)
  LD s7, 96(sp)
  LD s8, 104(sp)
  LD s9, 112(sp)
  LD s10, 120(sp)
  LD s11, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb21:
  ADD s4, zero, zero
  JAL zero, bb12
bb22:
  ADDI s4, zero, 1
  JAL zero, bb10
bb23:
  ADDI s4, zero, 1
  JAL zero, bb8
bb24:
  ADDI s4, zero, 1
  JAL zero, bb6
getvalue:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  BLT a3, zero, bb36
  # implict jump to bb26
bb26:
  SLT s1, a4, zero
  # implict jump to bb27
bb27:
  BNE s1, zero, bb35
  # implict jump to bb28
bb28:
  SLT s1, a3, a1
  XORI s1, s1, 1
  # implict jump to bb29
bb29:
  BNE s1, zero, bb34
  # implict jump to bb30
bb30:
  SLT s1, a4, a2
  XORI s1, s1, 1
  # implict jump to bb31
bb31:
  BNE s1, zero, bb33
  # implict jump to bb32
bb32:
  MULW s1, a3, a2
  ADDW s1, s1, a4
  SLLIW s1, s1, 2
  ADD s0, s0, s1
  LW s0, 0(s0)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb33:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb34:
  ADDI s1, zero, 1
  JAL zero, bb31
bb35:
  ADDI s1, zero, 1
  JAL zero, bb29
bb36:
  ADDI s1, zero, 1
  JAL zero, bb27
reduce:
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
  ADD s8, a0, zero
  SLTIU s9, s8, 1
  BNE s9, zero, bb88
  # implict jump to bb38
bb38:
  XORI s9, s8, 1
  SLTIU s9, s9, 1
  BNE s9, zero, bb76
  # implict jump to bb39
bb39:
  XORI s9, s8, 2
  SLTIU s9, s9, 1
  BNE s9, zero, bb73
  # implict jump to bb40
bb40:
  XORI s9, s8, 3
  SLTIU s9, s9, 1
  BNE s9, zero, bb58
  # implict jump to bb41
bb41:
  XORI s8, s8, 4
  SLTIU s8, s8, 1
  BNE s8, zero, bb43
  # implict jump to bb42
bb42:
  ADD a0, zero, zero
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
bb43:
  ADDI s8, zero, 1
  LUI s9, 262144
  ADDIW s9, s9, 0
  SLT s8, s8, s9
  BNE s8, zero, bb46
  # implict jump to bb44
bb44:
  ADD s8, zero, zero
  # implict jump to bb45
bb45:
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
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb46:
  ADDI s9, zero, 1
  # implict jump to bb47
bb47:
  ADD s10, zero, zero
  # implict jump to bb48
bb48:
  ADD s11, s9, zero
  ADD t0, s10, zero
  DIVW t1, a1, s11
  ADDI t2, zero, 2
  REMW t1, t1, t2
  XORI t1, t1, 1
  SLTIU t1, t1, 1
  BNE t1, zero, bb57
  # implict jump to bb49
bb49:
  ADD t1, zero, zero
  # implict jump to bb50
bb50:
  BNE t1, zero, bb56
  # implict jump to bb51
bb51:
  SLLIW t1, t0, 1
  # implict jump to bb52
bb52:
  ADD s2, t1, zero
  SLLIW s6, s11, 1
  # implict jump to bb53
bb53:
  LUI s11, 262144
  ADDIW s11, s11, 0
  SLT s11, s6, s11
  BNE s11, zero, bb55
  # implict jump to bb54
bb54:
  ADD s8, s2, zero
  JAL zero, bb45
bb55:
  ADD s10, s2, zero
  ADD s9, s6, zero
  JAL zero, bb48
bb56:
  SLLIW t0, t0, 1
  ADDIW t0, t0, 1
  ADD t1, t0, zero
  JAL zero, bb52
bb57:
  DIVW t2, a2, s11
  ADDI a3, zero, 2
  REMW t2, t2, a3
  XORI t2, t2, 1
  SLTIU t2, t2, 1
  ADD t1, t2, zero
  JAL zero, bb50
bb58:
  ADDI s2, zero, 1
  LUI s6, 262144
  ADDIW s6, s6, 0
  SLT s2, s2, s6
  BNE s2, zero, bb61
  # implict jump to bb59
bb59:
  ADD s2, zero, zero
  # implict jump to bb60
bb60:
  ADD a0, s2, zero
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
bb61:
  ADDI s6, zero, 1
  # implict jump to bb62
bb62:
  ADD s8, zero, zero
  # implict jump to bb63
bb63:
  ADD s9, s8, zero
  ADD s10, s6, zero
  DIVW s11, a1, s10
  ADDI t0, zero, 2
  REMW s11, s11, t0
  XORI s11, s11, 1
  SLTIU s11, s11, 1
  BNE s11, zero, bb72
  # implict jump to bb64
bb64:
  DIVW s11, a2, s10
  ADDI t0, zero, 2
  REMW s11, s11, t0
  XORI s11, s11, 1
  SLTIU s11, s11, 1
  # implict jump to bb65
bb65:
  BNE s11, zero, bb71
  # implict jump to bb66
bb66:
  SLLIW s11, s9, 1
  # implict jump to bb67
bb67:
  ADD s3, s11, zero
  SLLIW s7, s10, 1
  # implict jump to bb68
bb68:
  LUI s9, 262144
  ADDIW s9, s9, 0
  SLT s9, s7, s9
  BNE s9, zero, bb70
  # implict jump to bb69
bb69:
  ADD s2, s3, zero
  JAL zero, bb60
bb70:
  ADD s6, s7, zero
  ADD s8, s3, zero
  JAL zero, bb63
bb71:
  SLLIW s9, s9, 1
  ADDIW s9, s9, 1
  ADD s11, s9, zero
  JAL zero, bb67
bb72:
  ADDI s11, zero, 1
  JAL zero, bb65
bb73:
  BLT a2, a1, bb75
  # implict jump to bb74
bb74:
  ADD a0, a2, zero
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
bb75:
  ADD a0, a1, zero
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
bb76:
  ADDI s2, zero, 1
  LUI s3, 262144
  ADDIW s3, s3, 0
  SLT s2, s2, s3
  BNE s2, zero, bb79
  # implict jump to bb77
bb77:
  ADD s2, zero, zero
  # implict jump to bb78
bb78:
  ADD a0, s2, zero
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
bb79:
  ADDI s3, zero, 1
  # implict jump to bb80
bb80:
  ADD s6, zero, zero
  # implict jump to bb81
bb81:
  ADD s7, s3, zero
  ADD s8, s6, zero
  DIVW s9, a1, s7
  ADDI s10, zero, 2
  REMW s9, s9, s10
  DIVW s10, a2, s7
  ADDI s11, zero, 2
  REMW s10, s10, s11
  XOR s9, s9, s10
  SLTIU s9, s9, 1
  BNE s9, zero, bb87
  # implict jump to bb82
bb82:
  SLLIW s9, s8, 1
  ADDIW s9, s9, 1
  # implict jump to bb83
bb83:
  ADD s4, s9, zero
  SLLIW s5, s7, 1
  # implict jump to bb84
bb84:
  LUI s7, 262144
  ADDIW s7, s7, 0
  SLT s7, s5, s7
  BNE s7, zero, bb86
  # implict jump to bb85
bb85:
  ADD s2, s4, zero
  JAL zero, bb78
bb86:
  ADD s6, s4, zero
  ADD s3, s5, zero
  JAL zero, bb81
bb87:
  SLLIW s8, s8, 1
  ADD s9, s8, zero
  JAL zero, bb83
bb88:
  ADDW s2, a1, a2
  LUI s3, 262144
  ADDIW s3, s3, 0
  SLT s3, s3, s2
  BNE s3, zero, bb99
  # implict jump to bb89
bb89:
  ADD s3, s2, zero
  # implict jump to bb90
bb90:
  BLT s3, zero, bb93
  # implict jump to bb91
bb91:
  ADD s4, s3, zero
  # implict jump to bb92
bb92:
  ADD a0, s4, zero
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
bb93:
  # implict jump to bb94
bb94:
  # implict jump to bb95
bb95:
  ADD s5, s3, zero
  LUI s6, 262144
  ADDIW s6, s6, 0
  ADDW s0, s5, s6
  # implict jump to bb96
bb96:
  BLT s0, zero, bb98
  # implict jump to bb97
bb97:
  ADD s4, s0, zero
  JAL zero, bb92
bb98:
  ADD s3, s0, zero
  JAL zero, bb95
bb99:
  # implict jump to bb100
bb100:
  # implict jump to bb101
bb101:
  ADD s4, s2, zero
  LUI s5, 262144
  ADDIW s5, s5, 0
  SUBW s1, s4, s5
  # implict jump to bb102
bb102:
  LUI s4, 262144
  ADDIW s4, s4, 0
  SLT s4, s4, s1
  BNE s4, zero, bb104
  # implict jump to bb103
bb103:
  ADD s3, s1, zero
  JAL zero, bb90
bb104:
  ADD s2, s1, zero
  JAL zero, bb101
main:
  ADDI sp, sp, -160
  SD ra, 48(sp)
  SD s0, 56(sp)
  SD s1, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD s5, 96(sp)
  SD s10, 104(sp)
  SD s11, 112(sp)
  SD s6, 120(sp)
  SD s7, 128(sp)
  SD s8, 136(sp)
  SD s9, 144(sp)
  CALL getint
  ADD s3, a0, zero
  CALL getint
  ADD t4, a0, zero
  SW t4, 24(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 28(sp)
  LA s6, a
  ADD a0, s6, zero
  CALL getarray
  LA s6, kernelid
  ADD a0, s6, zero
  CALL getarray
  ADD t4, a0, zero
  SW t4, 32(sp)
  ADDI a0, zero, 109
  CALL _sysy_starttime
  LW t4, 32(sp)
  BLT zero, t4, bb107
  # implict jump to bb106
bb106:
  ADDI a0, zero, 116
  CALL _sysy_stoptime
  LW t4, 24(sp)
  LW t3, 28(sp)
  MULW s2, t4, t3
  ADD a0, s2, zero
  LA s2, a
  ADD a1, s2, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s5, 96(sp)
  LD s10, 104(sp)
  LD s11, 112(sp)
  LD s6, 120(sp)
  LD s7, 128(sp)
  LD s8, 136(sp)
  LD s9, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb107:
  # implict jump to bb108
bb108:
  ADDI s7, zero, 2
  DIVW t4, s3, s7
  SW t4, 36(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  # implict jump to bb109
bb109:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t4, 0(sp)
  SLLIW s8, t4, 2
  LA s9, kernelid
  ADD s8, s9, s8
  LW t4, 0(s8)
  SW t4, 8(sp)
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb110
bb110:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 40(sp)
  LW t4, 36(sp)
  SUBW t4, t3, t4
  SW t4, 44(sp)
  ADD s7, zero, zero
  # implict jump to bb111
bb111:
  ADD s1, s7, zero
  LW t4, 36(sp)
  SUBW s6, s1, t4
  ADD s5, zero, zero
  LW t4, 44(sp)
  ADD s4, t4, zero
  # implict jump to bb112
bb112:
  ADD s0, s4, zero
  ADD s3, s5, zero
  ADD s2, s6, zero
  # implict jump to bb113
bb113:
  ADD s8, s2, zero
  ADD s9, s3, zero
  BLT s0, zero, bb141
  # implict jump to bb114
bb114:
  SLT s10, s8, zero
  # implict jump to bb115
bb115:
  BNE s10, zero, bb140
  # implict jump to bb116
bb116:
  LW t4, 24(sp)
  SLT s10, s0, t4
  XORI s10, s10, 1
  # implict jump to bb117
bb117:
  BNE s10, zero, bb139
  # implict jump to bb118
bb118:
  LW t4, 28(sp)
  SLT s10, s8, t4
  XORI s10, s10, 1
  # implict jump to bb119
bb119:
  BNE s10, zero, bb138
  # implict jump to bb120
bb120:
  LW t4, 28(sp)
  MULW s10, s0, t4
  ADDW s10, s10, s8
  SLLIW s10, s10, 2
  LA s11, a
  ADD s10, s11, s10
  LW s10, 0(s10)
  # implict jump to bb121
bb121:
  LW t4, 8(sp)
  ADD a0, t4, zero
  ADD a1, s9, zero
  ADD a2, s10, zero
  CALL reduce
  ADD s9, a0, zero
  ADDIW s8, s8, 1
  LW t4, 36(sp)
  ADDW s10, s1, t4
  SLT s10, s8, s10
  XORI s10, s10, 1
  BNE s10, zero, bb123
  # implict jump to bb122
bb122:
  ADD s3, s9, zero
  ADD s2, s8, zero
  JAL zero, bb113
bb123:
  ADDIW s0, s0, 1
  LW t4, 40(sp)
  LW t3, 36(sp)
  ADDW s2, t4, t3
  SLT s2, s0, s2
  XORI s2, s2, 1
  BNE s2, zero, bb125
  # implict jump to bb124
bb124:
  ADD s5, s9, zero
  ADD s4, s0, zero
  JAL zero, bb112
bb125:
  LW t4, 40(sp)
  LW t3, 28(sp)
  MULW s0, t4, t3
  ADDW s0, s0, s1
  SLLIW s0, s0, 2
  LA s2, b
  ADD s0, s2, s0
  SW s9, 0(s0)
  ADDIW s0, s1, 1
  LW t4, 28(sp)
  SLT s1, s0, t4
  XORI s1, s1, 1
  BNE s1, zero, bb127
  # implict jump to bb126
bb126:
  ADD s7, s0, zero
  JAL zero, bb111
bb127:
  LW t4, 40(sp)
  ADDIW s0, t4, 1
  LW t4, 24(sp)
  SLT s1, s0, t4
  XORI s1, s1, 1
  BNE s1, zero, bb129
  # implict jump to bb128
bb128:
  ADD t4, s0, zero
  SW t4, 4(sp)
  JAL zero, bb110
bb129:
  LW t4, 24(sp)
  LW t3, 28(sp)
  MULW s0, t4, t3
  BLT zero, s0, bb133
  # implict jump to bb130
bb130:
  LW t3, 0(sp)
  ADDIW t4, t3, 1
  SW t4, 12(sp)
  # implict jump to bb131
bb131:
  LW t4, 12(sp)
  LW t3, 32(sp)
  BLT t4, t3, bb132
  JAL zero, bb106
bb132:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb109
bb133:
  # implict jump to bb134
bb134:
  ADD s1, zero, zero
  # implict jump to bb135
bb135:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  LA s4, a
  ADD s4, s4, s3
  LA s5, b
  ADD s3, s5, s3
  LW s3, 0(s3)
  SW s3, 0(s4)
  ADDIW t4, s2, 1
  SW t4, 20(sp)
  # implict jump to bb136
bb136:
  LW t4, 20(sp)
  BLT t4, s0, bb137
  JAL zero, bb130
bb137:
  LW t4, 20(sp)
  ADD s1, t4, zero
  JAL zero, bb135
bb138:
  ADD s10, zero, zero
  JAL zero, bb121
bb139:
  ADDI s10, zero, 1
  JAL zero, bb119
bb140:
  ADDI s10, zero, 1
  JAL zero, bb117
bb141:
  ADDI s10, zero, 1
  JAL zero, bb115
memmove:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  BLT zero, a2, bb144
  # implict jump to bb143
bb143:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb144:
  # implict jump to bb145
bb145:
  ADD s1, zero, zero
  # implict jump to bb146
bb146:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  ADD s4, a0, s3
  ADD s3, a1, s3
  LW s3, 0(s3)
  SW s3, 0(s4)
  ADDIW s0, s2, 1
  # implict jump to bb147
bb147:
  BLT s0, a2, bb148
  JAL zero, bb143
bb148:
  ADD s1, s0, zero
  JAL zero, bb146
checkrange:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  ADD s2, a0, zero
  LUI s3, 262144
  ADDIW s3, s3, 0
  SLT s3, s3, s2
  BNE s3, zero, bb160
  # implict jump to bb150
bb150:
  ADD s3, s2, zero
  # implict jump to bb151
bb151:
  BLT s3, zero, bb154
  # implict jump to bb152
bb152:
  ADD s4, s3, zero
  # implict jump to bb153
bb153:
  ADD a0, s4, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb154:
  # implict jump to bb155
bb155:
  # implict jump to bb156
bb156:
  ADD s5, s3, zero
  LUI s6, 262144
  ADDIW s6, s6, 0
  ADDW s0, s5, s6
  # implict jump to bb157
bb157:
  BLT s0, zero, bb159
  # implict jump to bb158
bb158:
  ADD s4, s0, zero
  JAL zero, bb153
bb159:
  ADD s3, s0, zero
  JAL zero, bb156
bb160:
  # implict jump to bb161
bb161:
  # implict jump to bb162
bb162:
  ADD s4, s2, zero
  LUI s5, 262144
  ADDIW s5, s5, 0
  SUBW s1, s4, s5
  # implict jump to bb163
bb163:
  LUI s4, 262144
  ADDIW s4, s4, 0
  SLT s4, s4, s1
  BNE s4, zero, bb165
  # implict jump to bb164
bb164:
  ADD s3, s1, zero
  JAL zero, bb151
bb165:
  ADD s2, s1, zero
  JAL zero, bb162
