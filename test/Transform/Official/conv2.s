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
  ADDI sp, sp, -128
  SD ra, 24(sp)
  SD s0, 32(sp)
  SD s1, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s5, 72(sp)
  SD s6, 80(sp)
  SD s7, 88(sp)
  SD s8, 96(sp)
  SD s9, 104(sp)
  SD s10, 112(sp)
  SD s11, 120(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  ADD s6, zero, zero
  # implict jump to bb1
bb1:
  ADD s7, s6, zero
  ADD s8, zero, zero
  # implict jump to bb2
bb2:
  ADD s9, s8, zero
  ADDI s10, zero, 2
  DIVW s10, s5, s10
  SUBW s11, s7, s10
  ADD t4, zero, zero
  SW t4, 12(sp)
  # implict jump to bb3
bb3:
  ADD t4, s11, zero
  SW t4, 8(sp)
  LW t4, 12(sp)
  ADD t1, t4, zero
  SUBW t2, s9, s10
  ADD t4, t1, zero
  SW t4, 16(sp)
  ADD t4, t2, zero
  SW t4, 0(sp)
  # implict jump to bb4
bb4:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t4, 16(sp)
  ADD a7, t4, zero
  LW t4, 8(sp)
  BLT t4, zero, bb24
  # implict jump to bb5
bb5:
  LW t4, 4(sp)
  SLT t6, t4, zero
  # implict jump to bb6
bb6:
  BNE t6, zero, bb23
  # implict jump to bb7
bb7:
  LW t4, 8(sp)
  SLT t6, t4, s3
  XORI t6, t6, 1
  # implict jump to bb8
bb8:
  BNE t6, zero, bb22
  # implict jump to bb9
bb9:
  LW t4, 4(sp)
  SLT t6, t4, s4
  XORI t6, t6, 1
  # implict jump to bb10
bb10:
  BNE t6, zero, bb21
  # implict jump to bb11
bb11:
  LW t4, 8(sp)
  MULW t6, t4, s4
  LW t4, 4(sp)
  ADDW t6, t6, t4
  SLLIW t6, t6, 2
  ADD t6, s1, t6
  LW t6, 0(t6)
  # implict jump to bb12
bb12:
  ADD a0, s0, zero
  ADD a1, a7, zero
  ADD a2, t6, zero
  CALL reduce
  ADD t0, a0, zero
  LW t4, 4(sp)
  ADDIW t1, t4, 1
  ADDW t2, s9, s10
  SLT t2, t1, t2
  XORI t2, t2, 1
  BNE t2, zero, bb14
  # implict jump to bb13
bb13:
  ADD t4, t0, zero
  SW t4, 16(sp)
  ADD t4, t1, zero
  SW t4, 0(sp)
  JAL zero, bb4
bb14:
  LW t4, 8(sp)
  ADDIW t1, t4, 1
  ADDW t2, s7, s10
  SLT t2, t1, t2
  XORI t2, t2, 1
  BNE t2, zero, bb16
  # implict jump to bb15
bb15:
  ADD t4, t0, zero
  SW t4, 12(sp)
  ADD s11, t1, zero
  JAL zero, bb3
bb16:
  MULW s10, s7, s4
  ADDW s10, s10, s9
  SLLIW s10, s10, 2
  ADD s10, s2, s10
  SW t0, 0(s10)
  ADDIW s9, s9, 1
  SLT s10, s9, s4
  XORI s10, s10, 1
  BNE s10, zero, bb18
  # implict jump to bb17
bb17:
  ADD s8, s9, zero
  JAL zero, bb2
bb18:
  ADDIW s7, s7, 1
  SLT s8, s7, s3
  XORI s8, s8, 1
  BNE s8, zero, bb20
  # implict jump to bb19
bb19:
  ADD s6, s7, zero
  JAL zero, bb1
bb20:
  ADD a0, zero, zero
  LD ra, 24(sp)
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s5, 72(sp)
  LD s6, 80(sp)
  LD s7, 88(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  LD s10, 112(sp)
  LD s11, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb21:
  ADD t6, zero, zero
  JAL zero, bb12
bb22:
  ADDI t6, zero, 1
  JAL zero, bb10
bb23:
  ADDI t6, zero, 1
  JAL zero, bb8
bb24:
  ADDI t6, zero, 1
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
  BNE s9, zero, bb85
  # implict jump to bb38
bb38:
  XORI s9, s8, 1
  SLTIU s9, s9, 1
  BNE s9, zero, bb74
  # implict jump to bb39
bb39:
  XORI s9, s8, 2
  SLTIU s9, s9, 1
  BNE s9, zero, bb71
  # implict jump to bb40
bb40:
  XORI s9, s8, 3
  SLTIU s9, s9, 1
  BNE s9, zero, bb57
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
  ADD s9, zero, zero
  ADDI s10, zero, 1
  # implict jump to bb47
bb47:
  ADD s11, s10, zero
  ADD t0, s9, zero
  DIVW t1, a1, s11
  ADDI t2, zero, 2
  REMW t1, t1, t2
  XORI t1, t1, 1
  SLTIU t1, t1, 1
  BNE t1, zero, bb56
  # implict jump to bb48
bb48:
  ADD t1, zero, zero
  # implict jump to bb49
bb49:
  BNE t1, zero, bb55
  # implict jump to bb50
bb50:
  SLLIW t1, t0, 1
  # implict jump to bb51
bb51:
  ADD s2, t1, zero
  SLLIW s1, s11, 1
  # implict jump to bb52
bb52:
  LUI s11, 262144
  ADDIW s11, s11, 0
  SLT s11, s1, s11
  BNE s11, zero, bb54
  # implict jump to bb53
bb53:
  ADD s8, s2, zero
  JAL zero, bb45
bb54:
  ADD s9, s2, zero
  ADD s10, s1, zero
  JAL zero, bb47
bb55:
  SLLIW t0, t0, 1
  ADDIW t0, t0, 1
  ADD t1, t0, zero
  JAL zero, bb51
bb56:
  DIVW t2, a2, s11
  ADDI a3, zero, 2
  REMW t2, t2, a3
  XORI t2, t2, 1
  SLTIU t2, t2, 1
  ADD t1, t2, zero
  JAL zero, bb49
bb57:
  ADDI s1, zero, 1
  LUI s2, 262144
  ADDIW s2, s2, 0
  SLT s1, s1, s2
  BNE s1, zero, bb60
  # implict jump to bb58
bb58:
  ADD s1, zero, zero
  # implict jump to bb59
bb59:
  ADD a0, s1, zero
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
bb60:
  ADDI s2, zero, 1
  ADD s8, zero, zero
  # implict jump to bb61
bb61:
  ADD s9, s8, zero
  ADD s10, s2, zero
  DIVW s11, a1, s10
  ADDI t0, zero, 2
  REMW s11, s11, t0
  XORI s11, s11, 1
  SLTIU s11, s11, 1
  BNE s11, zero, bb70
  # implict jump to bb62
bb62:
  DIVW s11, a2, s10
  ADDI t0, zero, 2
  REMW s11, s11, t0
  XORI s11, s11, 1
  SLTIU s11, s11, 1
  # implict jump to bb63
bb63:
  BNE s11, zero, bb69
  # implict jump to bb64
bb64:
  SLLIW s11, s9, 1
  # implict jump to bb65
bb65:
  ADD s6, s11, zero
  SLLIW s7, s10, 1
  # implict jump to bb66
bb66:
  LUI s9, 262144
  ADDIW s9, s9, 0
  SLT s9, s7, s9
  BNE s9, zero, bb68
  # implict jump to bb67
bb67:
  ADD s1, s6, zero
  JAL zero, bb59
bb68:
  ADD s2, s7, zero
  ADD s8, s6, zero
  JAL zero, bb61
bb69:
  SLLIW s9, s9, 1
  ADDIW s9, s9, 1
  ADD s11, s9, zero
  JAL zero, bb65
bb70:
  ADDI s11, zero, 1
  JAL zero, bb63
bb71:
  BLT a2, a1, bb73
  # implict jump to bb72
bb72:
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
bb73:
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
bb74:
  ADDI s1, zero, 1
  LUI s2, 262144
  ADDIW s2, s2, 0
  SLT s1, s1, s2
  BNE s1, zero, bb77
  # implict jump to bb75
bb75:
  ADD s1, zero, zero
  # implict jump to bb76
bb76:
  ADD a0, s1, zero
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
bb77:
  ADD s2, zero, zero
  ADDI s6, zero, 1
  # implict jump to bb78
bb78:
  ADD s7, s6, zero
  ADD s8, s2, zero
  DIVW s9, a1, s7
  ADDI s10, zero, 2
  REMW s9, s9, s10
  DIVW s10, a2, s7
  ADDI s11, zero, 2
  REMW s10, s10, s11
  XOR s9, s9, s10
  SLTIU s9, s9, 1
  BNE s9, zero, bb84
  # implict jump to bb79
bb79:
  SLLIW s9, s8, 1
  ADDIW s9, s9, 1
  # implict jump to bb80
bb80:
  ADD s5, s9, zero
  SLLIW s3, s7, 1
  # implict jump to bb81
bb81:
  LUI s7, 262144
  ADDIW s7, s7, 0
  SLT s7, s3, s7
  BNE s7, zero, bb83
  # implict jump to bb82
bb82:
  ADD s1, s5, zero
  JAL zero, bb76
bb83:
  ADD s2, s5, zero
  ADD s6, s3, zero
  JAL zero, bb78
bb84:
  SLLIW s8, s8, 1
  ADD s9, s8, zero
  JAL zero, bb80
bb85:
  ADDW s1, a1, a2
  LUI s2, 262144
  ADDIW s2, s2, 0
  SLT s2, s2, s1
  BNE s2, zero, bb95
  # implict jump to bb86
bb86:
  ADD s2, s1, zero
  # implict jump to bb87
bb87:
  BLT s2, zero, bb90
  # implict jump to bb88
bb88:
  ADD s3, s2, zero
  # implict jump to bb89
bb89:
  ADD a0, s3, zero
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
bb90:
  # implict jump to bb91
bb91:
  ADD s5, s2, zero
  LUI s6, 262144
  ADDIW s6, s6, 0
  ADDW s0, s5, s6
  # implict jump to bb92
bb92:
  BLT s0, zero, bb94
  # implict jump to bb93
bb93:
  ADD s3, s0, zero
  JAL zero, bb89
bb94:
  ADD s2, s0, zero
  JAL zero, bb91
bb95:
  # implict jump to bb96
bb96:
  ADD s3, s1, zero
  LUI s5, 262144
  ADDIW s5, s5, 0
  SUBW s4, s3, s5
  # implict jump to bb97
bb97:
  LUI s3, 262144
  ADDIW s3, s3, 0
  SLT s3, s3, s4
  BNE s3, zero, bb99
  # implict jump to bb98
bb98:
  ADD s2, s4, zero
  JAL zero, bb87
bb99:
  ADD s1, s4, zero
  JAL zero, bb96
main:
  ADDI sp, sp, -160
  SD ra, 48(sp)
  SD s0, 56(sp)
  SD s1, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s7, 88(sp)
  SD s4, 96(sp)
  SD s5, 104(sp)
  SD s6, 112(sp)
  SD s8, 120(sp)
  SD s9, 128(sp)
  SD s10, 136(sp)
  SD s11, 144(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 12(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 16(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 20(sp)
  LA s5, a
  ADD a0, s5, zero
  CALL getarray
  LA s5, kernelid
  ADD a0, s5, zero
  CALL getarray
  ADD t4, a0, zero
  SW t4, 24(sp)
  ADDI a0, zero, 109
  CALL _sysy_starttime
  LW t4, 24(sp)
  BLT zero, t4, bb102
  # implict jump to bb101
bb101:
  ADDI a0, zero, 116
  CALL _sysy_stoptime
  LW t4, 16(sp)
  LW t3, 20(sp)
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
  LD s7, 88(sp)
  LD s4, 96(sp)
  LD s5, 104(sp)
  LD s6, 112(sp)
  LD s8, 120(sp)
  LD s9, 128(sp)
  LD s10, 136(sp)
  LD s11, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb102:
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb103
bb103:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t4, 28(sp)
  SLLIW s8, t4, 2
  LA s9, kernelid
  ADD s8, s9, s8
  LW t4, 0(s8)
  SW t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 36(sp)
  # implict jump to bb104
bb104:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  ADD s11, zero, zero
  # implict jump to bb105
bb105:
  ADD s7, s11, zero
  ADDI s5, zero, 2
  LW t4, 12(sp)
  DIVW s5, t4, s5
  LW t4, 40(sp)
  SUBW s4, t4, s5
  ADD s3, zero, zero
  # implict jump to bb106
bb106:
  ADD s2, s4, zero
  ADD s0, s3, zero
  SUBW s6, s7, s5
  # implict jump to bb107
bb107:
  ADD s1, s6, zero
  ADD s8, s0, zero
  BLT s2, zero, bb134
  # implict jump to bb108
bb108:
  SLT s9, s1, zero
  # implict jump to bb109
bb109:
  BNE s9, zero, bb133
  # implict jump to bb110
bb110:
  LW t4, 16(sp)
  SLT s9, s2, t4
  XORI s9, s9, 1
  # implict jump to bb111
bb111:
  BNE s9, zero, bb132
  # implict jump to bb112
bb112:
  LW t4, 20(sp)
  SLT s9, s1, t4
  XORI s9, s9, 1
  # implict jump to bb113
bb113:
  BNE s9, zero, bb131
  # implict jump to bb114
bb114:
  LW t4, 20(sp)
  MULW s9, s2, t4
  ADDW s9, s9, s1
  SLLIW s9, s9, 2
  LA s10, a
  ADD s9, s10, s9
  LW s9, 0(s9)
  # implict jump to bb115
bb115:
  LW t4, 0(sp)
  ADD a0, t4, zero
  ADD a1, s8, zero
  ADD a2, s9, zero
  CALL reduce
  ADD s8, a0, zero
  ADDIW s1, s1, 1
  ADDW s9, s7, s5
  SLT s9, s1, s9
  XORI s9, s9, 1
  BNE s9, zero, bb117
  # implict jump to bb116
bb116:
  ADD s0, s8, zero
  ADD s6, s1, zero
  JAL zero, bb107
bb117:
  ADDIW s0, s2, 1
  LW t4, 40(sp)
  ADDW s1, t4, s5
  SLT s1, s0, s1
  XORI s1, s1, 1
  BNE s1, zero, bb119
  # implict jump to bb118
bb118:
  ADD s3, s8, zero
  ADD s4, s0, zero
  JAL zero, bb106
bb119:
  LW t4, 40(sp)
  LW t3, 20(sp)
  MULW s0, t4, t3
  ADDW s0, s0, s7
  SLLIW s0, s0, 2
  LA s1, b
  ADD s0, s1, s0
  SW s8, 0(s0)
  ADDIW s0, s7, 1
  LW t4, 20(sp)
  SLT s1, s0, t4
  XORI s1, s1, 1
  BNE s1, zero, bb121
  # implict jump to bb120
bb120:
  ADD s11, s0, zero
  JAL zero, bb105
bb121:
  LW t4, 40(sp)
  ADDIW s0, t4, 1
  LW t4, 16(sp)
  SLT s1, s0, t4
  XORI s1, s1, 1
  BNE s1, zero, bb123
  # implict jump to bb122
bb122:
  ADD t4, s0, zero
  SW t4, 36(sp)
  JAL zero, bb104
bb123:
  LW t4, 16(sp)
  LW t3, 20(sp)
  MULW s0, t4, t3
  BLT zero, s0, bb127
  # implict jump to bb124
bb124:
  LW t3, 28(sp)
  ADDIW t4, t3, 1
  SW t4, 32(sp)
  # implict jump to bb125
bb125:
  LW t4, 32(sp)
  LW t3, 24(sp)
  BLT t4, t3, bb126
  JAL zero, bb101
bb126:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  JAL zero, bb103
bb127:
  ADD s1, zero, zero
  # implict jump to bb128
bb128:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  LA s4, a
  ADD s4, s4, s3
  LA s5, b
  ADD s3, s5, s3
  LW s3, 0(s3)
  SW s3, 0(s4)
  ADDIW t4, s2, 1
  SW t4, 8(sp)
  # implict jump to bb129
bb129:
  LW t4, 8(sp)
  BLT t4, s0, bb130
  JAL zero, bb124
bb130:
  LW t4, 8(sp)
  ADD s1, t4, zero
  JAL zero, bb128
bb131:
  ADD s9, zero, zero
  JAL zero, bb115
bb132:
  ADDI s9, zero, 1
  JAL zero, bb113
bb133:
  ADDI s9, zero, 1
  JAL zero, bb111
bb134:
  ADDI s9, zero, 1
  JAL zero, bb109
memmove:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  BLT zero, a2, bb137
  # implict jump to bb136
bb136:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb137:
  ADD s1, zero, zero
  # implict jump to bb138
bb138:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  ADD s4, a0, s3
  ADD s3, a1, s3
  LW s3, 0(s3)
  SW s3, 0(s4)
  ADDIW s0, s2, 1
  # implict jump to bb139
bb139:
  BLT s0, a2, bb140
  JAL zero, bb136
bb140:
  ADD s1, s0, zero
  JAL zero, bb138
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
  BNE s3, zero, bb151
  # implict jump to bb142
bb142:
  ADD s3, s2, zero
  # implict jump to bb143
bb143:
  BLT s3, zero, bb146
  # implict jump to bb144
bb144:
  ADD s4, s3, zero
  # implict jump to bb145
bb145:
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
bb146:
  # implict jump to bb147
bb147:
  ADD s5, s3, zero
  LUI s6, 262144
  ADDIW s6, s6, 0
  ADDW s0, s5, s6
  # implict jump to bb148
bb148:
  BLT s0, zero, bb150
  # implict jump to bb149
bb149:
  ADD s4, s0, zero
  JAL zero, bb145
bb150:
  ADD s3, s0, zero
  JAL zero, bb147
bb151:
  # implict jump to bb152
bb152:
  ADD s4, s2, zero
  LUI s5, 262144
  ADDIW s5, s5, 0
  SUBW s1, s4, s5
  # implict jump to bb153
bb153:
  LUI s4, 262144
  ADDIW s4, s4, 0
  SLT s4, s4, s1
  BNE s4, zero, bb155
  # implict jump to bb154
bb154:
  ADD s3, s1, zero
  JAL zero, bb143
bb155:
  ADD s2, s1, zero
  JAL zero, bb152
