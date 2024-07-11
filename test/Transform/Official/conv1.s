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
  SW t4, 4(sp)
  ADD s5, a5, zero
  ADDI s6, zero, 2
  DIVW s5, s5, s6
  ADD s6, zero, zero
  # implict jump to bb1
bb1:
  ADD s7, s6, zero
  ADD s8, zero, zero
  # implict jump to bb2
bb2:
  ADD s9, s8, zero
  SUBW s10, s7, s5
  SUBW s11, s9, s5
  ADD t4, zero, zero
  SW t4, 12(sp)
  # implict jump to bb3
bb3:
  ADD t4, s10, zero
  SW t4, 8(sp)
  LW t4, 12(sp)
  ADD t1, t4, zero
  LW t3, 8(sp)
  SLT t4, t3, zero
  SB t4, 0(sp)
  ADD t4, t1, zero
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
  LB t4, 0(sp)
  BNE t4, zero, bb24
  # implict jump to bb5
bb5:
  LW t4, 24(sp)
  SLT s4, t4, zero
  # implict jump to bb6
bb6:
  BNE s4, zero, bb23
  # implict jump to bb7
bb7:
  LW t4, 8(sp)
  SLT s4, t4, s3
  XORI s4, s4, 1
  # implict jump to bb8
bb8:
  BNE s4, zero, bb22
  # implict jump to bb9
bb9:
  LW t4, 24(sp)
  LW t3, 4(sp)
  SLT s4, t4, t3
  XORI s4, s4, 1
  # implict jump to bb10
bb10:
  BNE s4, zero, bb21
  # implict jump to bb11
bb11:
  LW t4, 8(sp)
  LW t3, 4(sp)
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
  ADDW t1, s9, s5
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
  LW t4, 8(sp)
  ADDIW t0, t4, 1
  ADDW t1, s7, s5
  SLT t1, t0, t1
  XORI t1, t1, 1
  BNE t1, zero, bb16
  # implict jump to bb15
bb15:
  ADD t4, s4, zero
  SW t4, 12(sp)
  ADD s10, t0, zero
  JAL zero, bb3
bb16:
  LW t4, 4(sp)
  MULW s10, s7, t4
  ADDW s10, s10, s9
  SLLIW s10, s10, 2
  ADD s10, s2, s10
  SW s4, 0(s10)
  ADDIW s4, s9, 1
  LW t4, 4(sp)
  SLT s9, s4, t4
  XORI s9, s9, 1
  BNE s9, zero, bb18
  # implict jump to bb17
bb17:
  ADD s8, s4, zero
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
  SLT s1, a3, zero
  BNE s1, zero, bb36
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
  XOR s1, s0, zero
  SLTIU s1, s1, 1
  BNE s1, zero, bb73
  # implict jump to bb38
bb38:
  XORI s1, s0, 1
  SLTIU s1, s1, 1
  BNE s1, zero, bb66
  # implict jump to bb39
bb39:
  XORI s1, s0, 2
  SLTIU s1, s1, 1
  BNE s1, zero, bb63
  # implict jump to bb40
bb40:
  XORI s1, s0, 3
  SLTIU s1, s1, 1
  BNE s1, zero, bb53
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
  ADDI s0, zero, 1
  ADD s1, zero, zero
  # implict jump to bb44
bb44:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LUI s4, 262144
  ADDIW s4, s4, 0
  SLT s4, s3, s4
  BNE s4, zero, bb46
  # implict jump to bb45
bb45:
  ADD a0, s2, zero
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
bb46:
  DIVW s4, a1, s3
  ADDI s5, zero, 2
  REMW s4, s4, s5
  XORI s4, s4, 1
  SLTIU s4, s4, 1
  BNE s4, zero, bb52
  # implict jump to bb47
bb47:
  ADD s4, zero, zero
  # implict jump to bb48
bb48:
  BNE s4, zero, bb51
  # implict jump to bb49
bb49:
  SLLIW s4, s2, 1
  # implict jump to bb50
bb50:
  SLLIW s2, s3, 1
  ADD s0, s2, zero
  ADD s1, s4, zero
  JAL zero, bb44
bb51:
  SLLIW s2, s2, 1
  ADDIW s2, s2, 1
  ADD s4, s2, zero
  JAL zero, bb50
bb52:
  DIVW s5, a2, s3
  ADDI s6, zero, 2
  REMW s5, s5, s6
  XORI s5, s5, 1
  SLTIU s5, s5, 1
  ADD s4, s5, zero
  JAL zero, bb48
bb53:
  ADD s0, zero, zero
  ADDI s1, zero, 1
  # implict jump to bb54
bb54:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LUI s4, 262144
  ADDIW s4, s4, 0
  SLT s4, s2, s4
  BNE s4, zero, bb56
  # implict jump to bb55
bb55:
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
bb56:
  DIVW s4, a1, s2
  ADDI s5, zero, 2
  REMW s4, s4, s5
  XORI s4, s4, 1
  SLTIU s4, s4, 1
  BNE s4, zero, bb62
  # implict jump to bb57
bb57:
  DIVW s4, a2, s2
  ADDI s5, zero, 2
  REMW s4, s4, s5
  XORI s4, s4, 1
  SLTIU s4, s4, 1
  # implict jump to bb58
bb58:
  BNE s4, zero, bb61
  # implict jump to bb59
bb59:
  SLLIW s4, s3, 1
  # implict jump to bb60
bb60:
  SLLIW s2, s2, 1
  ADD s0, s4, zero
  ADD s1, s2, zero
  JAL zero, bb54
bb61:
  SLLIW s3, s3, 1
  ADDIW s3, s3, 1
  ADD s4, s3, zero
  JAL zero, bb60
bb62:
  ADDI s4, zero, 1
  JAL zero, bb58
bb63:
  SLT s0, a2, a1
  BNE s0, zero, bb65
  # implict jump to bb64
bb64:
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
bb65:
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
bb66:
  ADDI s0, zero, 1
  ADD s1, zero, zero
  # implict jump to bb67
bb67:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LUI s4, 262144
  ADDIW s4, s4, 0
  SLT s4, s3, s4
  BNE s4, zero, bb69
  # implict jump to bb68
bb68:
  ADD a0, s2, zero
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
bb69:
  DIVW s4, a1, s3
  ADDI s5, zero, 2
  REMW s4, s4, s5
  DIVW s5, a2, s3
  ADDI s6, zero, 2
  REMW s5, s5, s6
  XOR s4, s4, s5
  SLTIU s4, s4, 1
  BNE s4, zero, bb72
  # implict jump to bb70
bb70:
  SLLIW s4, s2, 1
  ADDIW s4, s4, 1
  # implict jump to bb71
bb71:
  SLLIW s2, s3, 1
  ADD s0, s2, zero
  ADD s1, s4, zero
  JAL zero, bb67
bb72:
  SLLIW s2, s2, 1
  ADD s4, s2, zero
  JAL zero, bb71
bb73:
  ADDW s0, a1, a2
  # implict jump to bb74
bb74:
  ADD s1, s0, zero
  LUI s2, 262144
  ADDIW s2, s2, 0
  SLT s2, s2, s1
  BNE s2, zero, bb79
  # implict jump to bb75
bb75:
  ADD s2, s1, zero
  # implict jump to bb76
bb76:
  ADD s3, s2, zero
  SLT s4, s3, zero
  BNE s4, zero, bb78
  # implict jump to bb77
bb77:
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
bb78:
  LUI s4, 262144
  ADDIW s4, s4, 0
  ADDW s3, s3, s4
  ADD s2, s3, zero
  JAL zero, bb76
bb79:
  LUI s2, 262144
  ADDIW s2, s2, 0
  SUBW s1, s1, s2
  ADD s0, s1, zero
  JAL zero, bb74
main:
  ADDI sp, sp, -160
  SD ra, 48(sp)
  SD s0, 56(sp)
  SD s2, 64(sp)
  SD s1, 72(sp)
  SD s7, 80(sp)
  SD s5, 88(sp)
  SD s3, 96(sp)
  SD s4, 104(sp)
  SD s6, 112(sp)
  SD s8, 120(sp)
  SD s9, 128(sp)
  SD s10, 136(sp)
  SD s11, 144(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 36(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 32(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 28(sp)
  LA s3, a
  ADD a0, s3, zero
  CALL getarray
  LA s3, kernelid
  ADD a0, s3, zero
  CALL getarray
  ADD t4, a0, zero
  SW t4, 24(sp)
  ADDI a0, zero, 109
  CALL _sysy_starttime
  ADD t4, zero, zero
  SW t4, 40(sp)
  # implict jump to bb81
bb81:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t4, 20(sp)
  LW t3, 24(sp)
  SLT s6, t4, t3
  BNE s6, zero, bb83
  # implict jump to bb82
bb82:
  ADDI a0, zero, 116
  CALL _sysy_stoptime
  LW t4, 32(sp)
  LW t3, 28(sp)
  MULW s6, t4, t3
  ADD a0, s6, zero
  LA s6, a
  ADD a1, s6, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 48(sp)
  LD s0, 56(sp)
  LD s2, 64(sp)
  LD s1, 72(sp)
  LD s7, 80(sp)
  LD s5, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  LD s6, 112(sp)
  LD s8, 120(sp)
  LD s9, 128(sp)
  LD s10, 136(sp)
  LD s11, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb83:
  LW t4, 20(sp)
  SLLIW s6, t4, 2
  LA s7, kernelid
  ADD s6, s7, s6
  LW t4, 0(s6)
  SW t4, 12(sp)
  ADDI s7, zero, 2
  LW t3, 36(sp)
  DIVW t4, t3, s7
  SW t4, 16(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb84
bb84:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  ADD t4, zero, zero
  SW t4, 0(sp)
  # implict jump to bb85
bb85:
  LW t4, 0(sp)
  ADD s11, t4, zero
  LW t4, 4(sp)
  LW t3, 16(sp)
  SUBW s5, t4, t3
  LW t4, 16(sp)
  SUBW s3, s11, t4
  ADD s2, zero, zero
  # implict jump to bb86
bb86:
  ADD s1, s5, zero
  ADD s0, s2, zero
  SLT s4, s1, zero
  ADD s7, s3, zero
  # implict jump to bb87
bb87:
  ADD s6, s7, zero
  ADD s8, s0, zero
  BNE s4, zero, bb110
  # implict jump to bb88
bb88:
  SLT s9, s6, zero
  # implict jump to bb89
bb89:
  BNE s9, zero, bb109
  # implict jump to bb90
bb90:
  LW t4, 32(sp)
  SLT s9, s1, t4
  XORI s9, s9, 1
  # implict jump to bb91
bb91:
  BNE s9, zero, bb108
  # implict jump to bb92
bb92:
  LW t4, 28(sp)
  SLT s9, s6, t4
  XORI s9, s9, 1
  # implict jump to bb93
bb93:
  BNE s9, zero, bb107
  # implict jump to bb94
bb94:
  LW t4, 28(sp)
  MULW s9, s1, t4
  ADDW s9, s9, s6
  SLLIW s9, s9, 2
  LA s10, a
  ADD s9, s10, s9
  LW s9, 0(s9)
  # implict jump to bb95
bb95:
  LW t4, 12(sp)
  ADD a0, t4, zero
  ADD a1, s8, zero
  ADD a2, s9, zero
  CALL reduce
  ADDIW s6, s6, 1
  LW t4, 16(sp)
  ADDW s8, s11, t4
  SLT s8, s6, s8
  XORI s8, s8, 1
  BNE s8, zero, bb97
  # implict jump to bb96
bb96:
  ADD s0, a0, zero
  ADD s7, s6, zero
  JAL zero, bb87
bb97:
  ADDIW s0, s1, 1
  LW t4, 4(sp)
  LW t3, 16(sp)
  ADDW s1, t4, t3
  SLT s1, s0, s1
  XORI s1, s1, 1
  BNE s1, zero, bb99
  # implict jump to bb98
bb98:
  ADD s2, a0, zero
  ADD s5, s0, zero
  JAL zero, bb86
bb99:
  LW t4, 4(sp)
  LW t3, 28(sp)
  MULW s0, t4, t3
  ADDW s0, s0, s11
  SLLIW s0, s0, 2
  LA s1, b
  ADD s0, s1, s0
  SW a0, 0(s0)
  ADDIW s0, s11, 1
  LW t4, 28(sp)
  SLT s1, s0, t4
  XORI s1, s1, 1
  BNE s1, zero, bb101
  # implict jump to bb100
bb100:
  ADD t4, s0, zero
  SW t4, 0(sp)
  JAL zero, bb85
bb101:
  LW t4, 4(sp)
  ADDIW s0, t4, 1
  LW t4, 32(sp)
  SLT s1, s0, t4
  XORI s1, s1, 1
  BNE s1, zero, bb103
  # implict jump to bb102
bb102:
  ADD t4, s0, zero
  SW t4, 8(sp)
  JAL zero, bb84
bb103:
  LW t4, 32(sp)
  LW t3, 28(sp)
  MULW s0, t4, t3
  ADD s1, zero, zero
  # implict jump to bb104
bb104:
  ADD s2, s1, zero
  SLT s3, s2, s0
  BNE s3, zero, bb106
  # implict jump to bb105
bb105:
  LW t4, 20(sp)
  ADDIW s3, t4, 1
  ADD t4, s3, zero
  SW t4, 40(sp)
  JAL zero, bb81
bb106:
  SLLIW s3, s2, 2
  LA s4, a
  ADD s4, s4, s3
  LA s5, b
  ADD s3, s5, s3
  LW s3, 0(s3)
  SW s3, 0(s4)
  ADDIW s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb104
bb107:
  ADD s9, zero, zero
  JAL zero, bb95
bb108:
  ADDI s9, zero, 1
  JAL zero, bb93
bb109:
  ADDI s9, zero, 1
  JAL zero, bb91
bb110:
  ADDI s9, zero, 1
  JAL zero, bb89
memmove:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD s0, zero, zero
  # implict jump to bb112
bb112:
  ADD s1, s0, zero
  SLT s2, s1, a2
  BNE s2, zero, bb114
  # implict jump to bb113
bb113:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb114:
  SLLIW s2, s1, 2
  ADD s3, a0, s2
  ADD s2, a1, s2
  LW s2, 0(s2)
  SW s2, 0(s3)
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb112
checkrange:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  ADD s0, a0, zero
  # implict jump to bb116
bb116:
  ADD s1, s0, zero
  LUI s2, 262144
  ADDIW s2, s2, 0
  SLT s2, s2, s1
  BNE s2, zero, bb121
  # implict jump to bb117
bb117:
  ADD s2, s1, zero
  # implict jump to bb118
bb118:
  ADD s3, s2, zero
  SLT s4, s3, zero
  BNE s4, zero, bb120
  # implict jump to bb119
bb119:
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb120:
  LUI s4, 262144
  ADDIW s4, s4, 0
  ADDW s3, s3, s4
  ADD s2, s3, zero
  JAL zero, bb118
bb121:
  LUI s2, 262144
  ADDIW s2, s2, 0
  SUBW s1, s1, s2
  ADD s0, s1, zero
  JAL zero, bb116
