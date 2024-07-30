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
  SW t4, 8(sp)
  # implict jump to bb3
bb3:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t4, 12(sp)
  ADD t2, t4, zero
  ADD t4, t2, zero
  SW t4, 16(sp)
  ADD t4, s11, zero
  SW t4, 20(sp)
  # implict jump to bb4
bb4:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t4, 16(sp)
  ADD t6, t4, zero
  LW t4, 4(sp)
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
  LW t4, 4(sp)
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
  LW t4, 4(sp)
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
  SW t4, 16(sp)
  ADD t4, t0, zero
  SW t4, 20(sp)
  JAL zero, bb4
bb14:
  LW t4, 4(sp)
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
  SW t4, 8(sp)
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
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  ADD s0, a0, zero
  SLTIU s1, s0, 1
  BNE s1, zero, bb76
  # implict jump to bb38
bb38:
  XORI s1, s0, 1
  SLTIU s1, s1, 1
  BNE s1, zero, bb68
  # implict jump to bb39
bb39:
  XORI s1, s0, 2
  SLTIU s1, s1, 1
  BNE s1, zero, bb65
  # implict jump to bb40
bb40:
  XORI s1, s0, 3
  SLTIU s1, s1, 1
  BNE s1, zero, bb54
  # implict jump to bb41
bb41:
  XORI s0, s0, 4
  SLTIU s0, s0, 1
  BNE s0, zero, bb43
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
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb43:
  ADD s0, zero, zero
  ADDI s1, zero, 1
  # implict jump to bb44
bb44:
  ADD s2, s1, zero
  ADD s3, s0, zero
  DIVW s4, a1, s2
  ADDI s5, zero, 2
  REMW s4, s4, s5
  XORI s4, s4, 1
  SLTIU s4, s4, 1
  BNE s4, zero, bb53
  # implict jump to bb45
bb45:
  ADD s4, zero, zero
  # implict jump to bb46
bb46:
  BNE s4, zero, bb52
  # implict jump to bb47
bb47:
  SLLIW s4, s3, 1
  # implict jump to bb48
bb48:
  SLLIW s2, s2, 1
  LUI s3, 262144
  ADDIW s3, s3, 0
  SLT s3, s2, s3
  BNE s3, zero, bb51
  # implict jump to bb49
bb49:
  # implict jump to bb50
bb50:
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
bb51:
  ADD s0, s4, zero
  ADD s1, s2, zero
  JAL zero, bb44
bb52:
  SLLIW s3, s3, 1
  ADDIW s3, s3, 1
  ADD s4, s3, zero
  JAL zero, bb48
bb53:
  DIVW s5, a2, s2
  ADDI s6, zero, 2
  REMW s5, s5, s6
  XORI s5, s5, 1
  SLTIU s5, s5, 1
  ADD s4, s5, zero
  JAL zero, bb46
bb54:
  ADD s0, zero, zero
  ADDI s1, zero, 1
  # implict jump to bb55
bb55:
  ADD s2, s1, zero
  ADD s3, s0, zero
  DIVW s4, a1, s2
  ADDI s5, zero, 2
  REMW s4, s4, s5
  XORI s4, s4, 1
  SLTIU s4, s4, 1
  BNE s4, zero, bb64
  # implict jump to bb56
bb56:
  DIVW s4, a2, s2
  ADDI s5, zero, 2
  REMW s4, s4, s5
  XORI s4, s4, 1
  SLTIU s4, s4, 1
  # implict jump to bb57
bb57:
  BNE s4, zero, bb63
  # implict jump to bb58
bb58:
  SLLIW s4, s3, 1
  # implict jump to bb59
bb59:
  SLLIW s2, s2, 1
  LUI s3, 262144
  ADDIW s3, s3, 0
  SLT s3, s2, s3
  BNE s3, zero, bb62
  # implict jump to bb60
bb60:
  # implict jump to bb61
bb61:
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
bb62:
  ADD s0, s4, zero
  ADD s1, s2, zero
  JAL zero, bb55
bb63:
  SLLIW s3, s3, 1
  ADDIW s3, s3, 1
  ADD s4, s3, zero
  JAL zero, bb59
bb64:
  ADDI s4, zero, 1
  JAL zero, bb57
bb65:
  BLT a2, a1, bb67
  # implict jump to bb66
bb66:
  ADD a0, a2, zero
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
bb67:
  ADD a0, a1, zero
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
bb68:
  ADDI s0, zero, 1
  ADD s1, zero, zero
  # implict jump to bb69
bb69:
  ADD s2, s1, zero
  ADD s3, s0, zero
  DIVW s4, a1, s3
  ADDI s5, zero, 2
  REMW s4, s4, s5
  DIVW s5, a2, s3
  ADDI s6, zero, 2
  REMW s5, s5, s6
  XOR s4, s4, s5
  SLTIU s4, s4, 1
  BNE s4, zero, bb75
  # implict jump to bb70
bb70:
  SLLIW s4, s2, 1
  ADDIW s4, s4, 1
  # implict jump to bb71
bb71:
  SLLIW s2, s3, 1
  LUI s3, 262144
  ADDIW s3, s3, 0
  SLT s3, s2, s3
  BNE s3, zero, bb74
  # implict jump to bb72
bb72:
  # implict jump to bb73
bb73:
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
bb74:
  ADD s0, s2, zero
  ADD s1, s4, zero
  JAL zero, bb69
bb75:
  SLLIW s2, s2, 1
  ADD s4, s2, zero
  JAL zero, bb71
bb76:
  ADDW s0, a1, a2
  LUI s1, 262144
  ADDIW s1, s1, 0
  SLT s1, s1, s0
  BNE s1, zero, bb85
  # implict jump to bb77
bb77:
  ADD s1, s0, zero
  # implict jump to bb78
bb78:
  BLT s1, zero, bb81
  # implict jump to bb79
bb79:
  ADD s3, s1, zero
  # implict jump to bb80
bb80:
  ADD a0, s3, zero
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
bb81:
  # implict jump to bb82
bb82:
  ADD s4, s1, zero
  LUI s5, 262144
  ADDIW s5, s5, 0
  ADDW s4, s4, s5
  BLT s4, zero, bb84
  # implict jump to bb83
bb83:
  ADD s3, s4, zero
  JAL zero, bb80
bb84:
  ADD s1, s4, zero
  JAL zero, bb82
bb85:
  # implict jump to bb86
bb86:
  ADD s2, s0, zero
  LUI s3, 262144
  ADDIW s3, s3, 0
  SUBW s2, s2, s3
  LUI s3, 262144
  ADDIW s3, s3, 0
  SLT s3, s3, s2
  BNE s3, zero, bb88
  # implict jump to bb87
bb87:
  ADD s1, s2, zero
  JAL zero, bb78
bb88:
  ADD s0, s2, zero
  JAL zero, bb86
main:
  ADDI sp, sp, -144
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD s6, 96(sp)
  SD s7, 104(sp)
  SD s8, 112(sp)
  SD s9, 120(sp)
  SD s10, 128(sp)
  SD s11, 136(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD t4, a0, zero
  SW t4, 20(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 36(sp)
  LA s3, a
  ADD a0, s3, zero
  CALL getarray
  LA s3, kernelid
  ADD a0, s3, zero
  CALL getarray
  ADD t4, a0, zero
  SW t4, 32(sp)
  ADDI a0, zero, 109
  CALL _sysy_starttime
  LW t4, 32(sp)
  BLT zero, t4, bb91
  # implict jump to bb90
bb90:
  ADDI a0, zero, 116
  CALL _sysy_stoptime
  LW t4, 20(sp)
  LW t3, 36(sp)
  MULW s4, t4, t3
  ADD a0, s4, zero
  LA s4, a
  ADD a1, s4, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  LD s7, 104(sp)
  LD s8, 112(sp)
  LD s9, 120(sp)
  LD s10, 128(sp)
  LD s11, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb91:
  ADDI s4, zero, 2
  DIVW t4, s0, s4
  SW t4, 28(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  # implict jump to bb92
bb92:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t4, 24(sp)
  SLLIW s6, t4, 2
  LA s7, kernelid
  ADD s6, s7, s6
  LW t4, 0(s6)
  SW t4, 12(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb93
bb93:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t3, 4(sp)
  LW t4, 28(sp)
  SUBW t4, t3, t4
  SW t4, 0(sp)
  ADD s10, zero, zero
  # implict jump to bb94
bb94:
  ADD s11, s10, zero
  LW t4, 28(sp)
  SUBW s5, s11, t4
  ADD s0, zero, zero
  LW t4, 0(sp)
  ADD s3, t4, zero
  # implict jump to bb95
bb95:
  ADD s2, s3, zero
  ADD s1, s0, zero
  ADD s4, s5, zero
  # implict jump to bb96
bb96:
  ADD s6, s4, zero
  ADD s7, s1, zero
  BLT s2, zero, bb121
  # implict jump to bb97
bb97:
  SLT s8, s6, zero
  # implict jump to bb98
bb98:
  BNE s8, zero, bb120
  # implict jump to bb99
bb99:
  LW t4, 20(sp)
  SLT s8, s2, t4
  XORI s8, s8, 1
  # implict jump to bb100
bb100:
  BNE s8, zero, bb119
  # implict jump to bb101
bb101:
  LW t4, 36(sp)
  SLT s8, s6, t4
  XORI s8, s8, 1
  # implict jump to bb102
bb102:
  BNE s8, zero, bb118
  # implict jump to bb103
bb103:
  LW t4, 36(sp)
  MULW s8, s2, t4
  ADDW s8, s8, s6
  SLLIW s8, s8, 2
  LA s9, a
  ADD s8, s9, s8
  LW s8, 0(s8)
  # implict jump to bb104
bb104:
  LW t4, 12(sp)
  ADD a0, t4, zero
  ADD a1, s7, zero
  ADD a2, s8, zero
  CALL reduce
  ADD s7, a0, zero
  ADDIW s6, s6, 1
  LW t4, 28(sp)
  ADDW s8, s11, t4
  SLT s8, s6, s8
  XORI s8, s8, 1
  BNE s8, zero, bb106
  # implict jump to bb105
bb105:
  ADD s1, s7, zero
  ADD s4, s6, zero
  JAL zero, bb96
bb106:
  ADDIW s1, s2, 1
  LW t4, 4(sp)
  LW t3, 28(sp)
  ADDW s2, t4, t3
  SLT s2, s1, s2
  XORI s2, s2, 1
  BNE s2, zero, bb108
  # implict jump to bb107
bb107:
  ADD s0, s7, zero
  ADD s3, s1, zero
  JAL zero, bb95
bb108:
  LW t4, 4(sp)
  LW t3, 36(sp)
  MULW s0, t4, t3
  ADDW s0, s0, s11
  SLLIW s0, s0, 2
  LA s1, b
  ADD s0, s1, s0
  SW s7, 0(s0)
  ADDIW s0, s11, 1
  LW t4, 36(sp)
  SLT s1, s0, t4
  XORI s1, s1, 1
  BNE s1, zero, bb110
  # implict jump to bb109
bb109:
  ADD s10, s0, zero
  JAL zero, bb94
bb110:
  LW t4, 4(sp)
  ADDIW s0, t4, 1
  LW t4, 20(sp)
  SLT s1, s0, t4
  XORI s1, s1, 1
  BNE s1, zero, bb112
  # implict jump to bb111
bb111:
  ADD t4, s0, zero
  SW t4, 8(sp)
  JAL zero, bb93
bb112:
  LW t4, 20(sp)
  LW t3, 36(sp)
  MULW s0, t4, t3
  BLT zero, s0, bb115
  # implict jump to bb113
bb113:
  LW t4, 24(sp)
  ADDIW s3, t4, 1
  LW t4, 32(sp)
  BLT s3, t4, bb114
  JAL zero, bb90
bb114:
  ADD t4, s3, zero
  SW t4, 16(sp)
  JAL zero, bb92
bb115:
  ADD s1, zero, zero
  # implict jump to bb116
bb116:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  LA s4, a
  ADD s4, s4, s3
  LA s5, b
  ADD s3, s5, s3
  LW s3, 0(s3)
  SW s3, 0(s4)
  ADDIW s2, s2, 1
  BLT s2, s0, bb117
  JAL zero, bb113
bb117:
  ADD s1, s2, zero
  JAL zero, bb116
bb118:
  ADD s8, zero, zero
  JAL zero, bb104
bb119:
  ADDI s8, zero, 1
  JAL zero, bb102
bb120:
  ADDI s8, zero, 1
  JAL zero, bb100
bb121:
  ADDI s8, zero, 1
  JAL zero, bb98
memmove:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  BLT zero, a2, bb124
  # implict jump to bb123
bb123:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb124:
  ADD s0, zero, zero
  # implict jump to bb125
bb125:
  ADD s1, s0, zero
  SLLIW s2, s1, 2
  ADD s3, a0, s2
  ADD s2, a1, s2
  LW s2, 0(s2)
  SW s2, 0(s3)
  ADDIW s1, s1, 1
  BLT s1, a2, bb126
  JAL zero, bb123
bb126:
  ADD s0, s1, zero
  JAL zero, bb125
checkrange:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  ADD s0, a0, zero
  LUI s1, 262144
  ADDIW s1, s1, 0
  SLT s1, s1, s0
  BNE s1, zero, bb136
  # implict jump to bb128
bb128:
  ADD s1, s0, zero
  # implict jump to bb129
bb129:
  BLT s1, zero, bb132
  # implict jump to bb130
bb130:
  ADD s3, s1, zero
  # implict jump to bb131
bb131:
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb132:
  # implict jump to bb133
bb133:
  ADD s4, s1, zero
  LUI s5, 262144
  ADDIW s5, s5, 0
  ADDW s4, s4, s5
  BLT s4, zero, bb135
  # implict jump to bb134
bb134:
  ADD s3, s4, zero
  JAL zero, bb131
bb135:
  ADD s1, s4, zero
  JAL zero, bb133
bb136:
  # implict jump to bb137
bb137:
  ADD s2, s0, zero
  LUI s3, 262144
  ADDIW s3, s3, 0
  SUBW s2, s2, s3
  LUI s3, 262144
  ADDIW s3, s3, 0
  SLT s3, s3, s2
  BNE s3, zero, bb139
  # implict jump to bb138
bb138:
  ADD s1, s2, zero
  JAL zero, bb129
bb139:
  ADD s0, s2, zero
  JAL zero, bb137
