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
  # implict jump to bb1
bb1:
  ADD s4, s3, zero
  SLT s5, s4, s2
  BNE s5, zero, bb3
  # implict jump to bb2
bb2:
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
bb3:
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s5, s1, s6
  ADD s7, s0, s6
  LW s6, 0(s7)
  SW s6, 0(s5)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb1
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
  # implict jump to bb5
bb5:
  ADD s4, s3, zero
  LW t4, 8(sp)
  SLT s5, s4, t4
  BNE s5, zero, bb87
  # implict jump to bb6
bb6:
  ADD t4, zero, zero
  SB t4, 25(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  # implict jump to bb7
bb7:
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
  BNE s8, zero, bb12
  # implict jump to bb8
bb8:
  LW t4, 8(sp)
  LW t3, 8(sp)
  MULW s0, t4, t3
  ADD s1, zero, zero
  # implict jump to bb9
bb9:
  ADD s2, s1, zero
  SLT s3, s2, s0
  BNE s3, zero, bb11
  # implict jump to bb10
bb10:
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
bb11:
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
  JAL zero, bb9
bb12:
  ADD t4, s7, zero
  SB t4, 45(sp)
  ADD t4, zero, zero
  SW t4, 40(sp)
  ADD t4, s6, zero
  SW t4, 36(sp)
  # implict jump to bb13
bb13:
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
  BNE t0, zero, bb15
  # implict jump to bb14
bb14:
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
  JAL zero, bb7
bb15:
  LB t4, 24(sp)
  ADD t0, t4, zero
  ADD t1, zero, zero
  # implict jump to bb16
bb16:
  ADD t4, t1, zero
  SW t4, 32(sp)
  ADD t4, t0, zero
  SB t4, 44(sp)
  LW t4, 32(sp)
  LW t3, 8(sp)
  SLT a1, t4, t3
  BNE a1, zero, bb18
  # implict jump to bb17
bb17:
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
  JAL zero, bb13
bb18:
  LW t3, 48(sp)
  SLT t4, t3, zero
  SB t4, 52(sp)
  LB t4, 52(sp)
  BNE t4, zero, bb86
  # implict jump to bb19
bb19:
  LW t4, 48(sp)
  LW t3, 8(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD a2, s1, zero
  # implict jump to bb20
bb20:
  ADD a3, a2, zero
  BNE a3, zero, bb85
  # implict jump to bb21
bb21:
  LW t4, 28(sp)
  SLT s0, t4, zero
  ADD a3, s0, zero
  # implict jump to bb22
bb22:
  ADD a4, a3, zero
  BNE a4, zero, bb84
  # implict jump to bb23
bb23:
  LW t4, 28(sp)
  LW t3, 8(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD a4, s1, zero
  # implict jump to bb24
bb24:
  ADD a5, a4, zero
  BNE a5, zero, bb83
  # implict jump to bb25
bb25:
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
  # implict jump to bb26
bb26:
  ADD a6, a5, zero
  SLT a7, a6, zero
  XORI t6, a7, 1
  BNE t6, zero, bb70
  # implict jump to bb27
bb27:
  ADD s6, zero, zero
  # implict jump to bb28
bb28:
  ADD s4, s6, zero
  BNE s4, zero, bb30
  # implict jump to bb29
bb29:
  LW t4, 32(sp)
  ADDIW s10, t4, 1
  ADD t0, s4, zero
  ADD t1, s10, zero
  JAL zero, bb16
bb30:
  LB t4, 52(sp)
  BNE t4, zero, bb69
  # implict jump to bb31
bb31:
  LW t4, 48(sp)
  LW t3, 8(sp)
  SLT s0, t4, t3
  XORI s5, s0, 1
  ADD s3, s5, zero
  # implict jump to bb32
bb32:
  ADD s11, s3, zero
  BNE s11, zero, bb68
  # implict jump to bb33
bb33:
  LW t4, 32(sp)
  SLT s0, t4, zero
  ADD s11, s0, zero
  # implict jump to bb34
bb34:
  ADD s0, s11, zero
  BNE s0, zero, bb67
  # implict jump to bb35
bb35:
  LW t4, 32(sp)
  LW t3, 8(sp)
  SLT s5, t4, t3
  XORI s7, s5, 1
  ADD s0, s7, zero
  # implict jump to bb36
bb36:
  ADD s5, s0, zero
  BNE s5, zero, bb66
  # implict jump to bb37
bb37:
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
  # implict jump to bb38
bb38:
  ADD t2, s5, zero
  SLT s9, t2, zero
  BNE s9, zero, bb53
  # implict jump to bb39
bb39:
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
  BNE s9, zero, bb52
  # implict jump to bb40
bb40:
  LW t4, 28(sp)
  LW t3, 8(sp)
  SLT s10, t4, t3
  XORI t0, s10, 1
  ADD s9, t0, zero
  # implict jump to bb41
bb41:
  ADD s10, s9, zero
  BNE s10, zero, bb51
  # implict jump to bb42
bb42:
  LW t4, 32(sp)
  SLT t0, t4, zero
  ADD s10, t0, zero
  # implict jump to bb43
bb43:
  ADD t0, s10, zero
  BNE t0, zero, bb50
  # implict jump to bb44
bb44:
  LW t4, 32(sp)
  LW t3, 8(sp)
  SLT t1, t4, t3
  XORI t2, t1, 1
  ADD t0, t2, zero
  # implict jump to bb45
bb45:
  ADD t1, t0, zero
  BNE t1, zero, bb49
  # implict jump to bb46
bb46:
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
  # implict jump to bb47
bb47:
  ADD t2, t1, zero
  ADDW a0, a6, t2
  SLT t2, a0, s7
  BNE t2, zero, bb48
  JAL zero, bb29
bb48:
  SW a0, 0(s8)
  JAL zero, bb29
bb49:
  ADDI t1, zero, -1
  JAL zero, bb47
bb50:
  ADDI t0, zero, 1
  JAL zero, bb45
bb51:
  ADDI s10, zero, 1
  JAL zero, bb43
bb52:
  ADDI s9, zero, 1
  JAL zero, bb41
bb53:
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
  BNE s7, zero, bb65
  # implict jump to bb54
bb54:
  LW t4, 28(sp)
  LW t3, 8(sp)
  SLT s8, t4, t3
  XORI s9, s8, 1
  ADD s7, s9, zero
  # implict jump to bb55
bb55:
  ADD s9, s7, zero
  BNE s9, zero, bb64
  # implict jump to bb56
bb56:
  LW t4, 32(sp)
  SLT s8, t4, zero
  ADD s9, s8, zero
  # implict jump to bb57
bb57:
  ADD a0, s9, zero
  BNE a0, zero, bb63
  # implict jump to bb58
bb58:
  LW t4, 32(sp)
  LW t3, 8(sp)
  SLT s8, t4, t3
  XORI s10, s8, 1
  ADD a0, s10, zero
  # implict jump to bb59
bb59:
  ADD s8, a0, zero
  BNE s8, zero, bb62
  # implict jump to bb60
bb60:
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
  # implict jump to bb61
bb61:
  ADD s10, s8, zero
  ADDW a1, a6, s10
  SW a1, 0(t2)
  JAL zero, bb29
bb62:
  ADDI s8, zero, -1
  JAL zero, bb61
bb63:
  ADDI a0, zero, 1
  JAL zero, bb59
bb64:
  ADDI s9, zero, 1
  JAL zero, bb57
bb65:
  ADDI s7, zero, 1
  JAL zero, bb55
bb66:
  ADDI s5, zero, -1
  JAL zero, bb38
bb67:
  ADDI s0, zero, 1
  JAL zero, bb36
bb68:
  ADDI s11, zero, 1
  JAL zero, bb34
bb69:
  ADDI s3, zero, 1
  JAL zero, bb32
bb70:
  LW t4, 28(sp)
  SLT a7, t4, zero
  BNE a7, zero, bb82
  # implict jump to bb71
bb71:
  LW t4, 28(sp)
  LW t3, 8(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD a7, s1, zero
  # implict jump to bb72
bb72:
  ADD t6, a7, zero
  BNE t6, zero, bb81
  # implict jump to bb73
bb73:
  LW t4, 32(sp)
  SLT s0, t4, zero
  ADD t6, s0, zero
  # implict jump to bb74
bb74:
  ADD s1, t6, zero
  BNE s1, zero, bb80
  # implict jump to bb75
bb75:
  LW t4, 32(sp)
  LW t3, 8(sp)
  SLT s0, t4, t3
  XORI s2, s0, 1
  ADD s1, s2, zero
  # implict jump to bb76
bb76:
  ADD s2, s1, zero
  BNE s2, zero, bb79
  # implict jump to bb77
bb77:
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
  # implict jump to bb78
bb78:
  ADD s4, s2, zero
  SLT s6, s4, zero
  XORI s4, s6, 1
  ADD s6, s4, zero
  JAL zero, bb28
bb79:
  ADDI s2, zero, -1
  JAL zero, bb78
bb80:
  ADDI s1, zero, 1
  JAL zero, bb76
bb81:
  ADDI t6, zero, 1
  JAL zero, bb74
bb82:
  ADDI a7, zero, 1
  JAL zero, bb72
bb83:
  ADDI a5, zero, -1
  JAL zero, bb26
bb84:
  ADDI a4, zero, 1
  JAL zero, bb24
bb85:
  ADDI a3, zero, 1
  JAL zero, bb22
bb86:
  ADDI a2, zero, 1
  JAL zero, bb20
bb87:
  ADD s5, zero, zero
  # implict jump to bb88
bb88:
  ADD s6, s5, zero
  LW t4, 8(sp)
  SLT s7, s6, t4
  BNE s7, zero, bb90
  # implict jump to bb89
bb89:
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb5
bb90:
  LW t4, 8(sp)
  MULW s7, s6, t4
  ADDW s8, s7, s4
  ADDI s7, zero, 4
  MULW s9, s8, s7
  LA s7, temp
  ADD s8, s7, s9
  SLT s7, s6, zero
  BNE s7, zero, bb102
  # implict jump to bb91
bb91:
  LW t4, 8(sp)
  SLT s5, s6, t4
  XORI s10, s5, 1
  ADD s7, s10, zero
  # implict jump to bb92
bb92:
  ADD s10, s7, zero
  BNE s10, zero, bb101
  # implict jump to bb93
bb93:
  SLT s5, s4, zero
  ADD s10, s5, zero
  # implict jump to bb94
bb94:
  ADD s11, s10, zero
  BNE s11, zero, bb100
  # implict jump to bb95
bb95:
  LW t4, 8(sp)
  SLT s5, s4, t4
  XORI t0, s5, 1
  ADD s11, t0, zero
  # implict jump to bb96
bb96:
  ADD t0, s11, zero
  BNE t0, zero, bb99
  # implict jump to bb97
bb97:
  ADD s5, s0, s9
  LW t1, 0(s5)
  ADD t0, t1, zero
  # implict jump to bb98
bb98:
  ADD t1, t0, zero
  SW t1, 0(s8)
  ADDIW t1, s6, 1
  ADD s5, t1, zero
  JAL zero, bb88
bb99:
  ADDI t0, zero, -1
  JAL zero, bb98
bb100:
  ADDI s11, zero, 1
  JAL zero, bb96
bb101:
  ADDI s10, zero, 1
  JAL zero, bb94
bb102:
  ADDI s7, zero, 1
  JAL zero, bb92
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
  # implict jump to bb104
bb104:
  ADD s2, s1, zero
  LW t4, 0(sp)
  SLT s3, s2, t4
  BNE s3, zero, bb186
  # implict jump to bb105
bb105:
  ADD t4, zero, zero
  SB t4, 17(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb106
bb106:
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
  BNE s7, zero, bb111
  # implict jump to bb107
bb107:
  LW t4, 0(sp)
  LW t3, 0(sp)
  MULW s0, t4, t3
  ADD s1, zero, zero
  # implict jump to bb108
bb108:
  ADD s2, s1, zero
  SLT s3, s2, s0
  BNE s3, zero, bb110
  # implict jump to bb109
bb109:
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
bb110:
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
  JAL zero, bb108
bb111:
  ADD t4, s6, zero
  SB t4, 37(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  ADD t4, s5, zero
  SW t4, 28(sp)
  # implict jump to bb112
bb112:
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
  BNE s11, zero, bb114
  # implict jump to bb113
bb113:
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
  JAL zero, bb106
bb114:
  LB t4, 16(sp)
  ADD s11, t4, zero
  ADD s0, zero, zero
  # implict jump to bb115
bb115:
  ADD t4, s0, zero
  SW t4, 24(sp)
  ADD t4, s11, zero
  SB t4, 36(sp)
  LW t4, 24(sp)
  LW t3, 0(sp)
  SLT s2, t4, t3
  BNE s2, zero, bb117
  # implict jump to bb116
bb116:
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
  JAL zero, bb112
bb117:
  LW t3, 40(sp)
  SLT t4, t3, zero
  SB t4, 44(sp)
  LB t4, 44(sp)
  BNE t4, zero, bb185
  # implict jump to bb118
bb118:
  LW t4, 40(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 45(sp)
  # implict jump to bb119
bb119:
  LB t4, 45(sp)
  ADD s1, t4, zero
  BNE s1, zero, bb184
  # implict jump to bb120
bb120:
  LW t4, 20(sp)
  SLT s0, t4, zero
  ADD t4, s0, zero
  SB t4, 46(sp)
  # implict jump to bb121
bb121:
  LB t4, 46(sp)
  ADD s4, t4, zero
  BNE s4, zero, bb183
  # implict jump to bb122
bb122:
  LW t4, 20(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 47(sp)
  # implict jump to bb123
bb123:
  LB t4, 47(sp)
  ADD s3, t4, zero
  BNE s3, zero, bb182
  # implict jump to bb124
bb124:
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
  # implict jump to bb125
bb125:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t4, 52(sp)
  SLT s6, t4, zero
  XORI s5, s6, 1
  BNE s5, zero, bb169
  # implict jump to bb126
bb126:
  ADD t4, zero, zero
  SB t4, 56(sp)
  # implict jump to bb127
bb127:
  LB t3, 56(sp)
  ADD t4, t3, zero
  SB t4, 64(sp)
  LB t4, 64(sp)
  BNE t4, zero, bb129
  # implict jump to bb128
bb128:
  LW t4, 24(sp)
  ADDIW s1, t4, 1
  LB t4, 64(sp)
  ADD s11, t4, zero
  ADD s0, s1, zero
  JAL zero, bb115
bb129:
  LB t4, 44(sp)
  BNE t4, zero, bb168
  # implict jump to bb130
bb130:
  LW t4, 40(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 65(sp)
  # implict jump to bb131
bb131:
  LB t4, 65(sp)
  ADD s4, t4, zero
  BNE s4, zero, bb167
  # implict jump to bb132
bb132:
  LW t4, 24(sp)
  SLT s0, t4, zero
  ADD s4, s0, zero
  # implict jump to bb133
bb133:
  ADD s3, s4, zero
  BNE s3, zero, bb166
  # implict jump to bb134
bb134:
  LW t4, 24(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD s3, s1, zero
  # implict jump to bb135
bb135:
  ADD s8, s3, zero
  BNE s8, zero, bb165
  # implict jump to bb136
bb136:
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
  # implict jump to bb137
bb137:
  ADD s10, s8, zero
  SLT s5, s10, zero
  BNE s5, zero, bb152
  # implict jump to bb138
bb138:
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
  BNE s2, zero, bb151
  # implict jump to bb139
bb139:
  LW t4, 20(sp)
  LW t3, 0(sp)
  SLT s5, t4, t3
  XORI s6, s5, 1
  ADD s2, s6, zero
  # implict jump to bb140
bb140:
  ADD s5, s2, zero
  BNE s5, zero, bb150
  # implict jump to bb141
bb141:
  LW t4, 24(sp)
  SLT s6, t4, zero
  ADD s5, s6, zero
  # implict jump to bb142
bb142:
  ADD s6, s5, zero
  BNE s6, zero, bb149
  # implict jump to bb143
bb143:
  LW t4, 24(sp)
  LW t3, 0(sp)
  SLT s7, t4, t3
  XORI s9, s7, 1
  ADD s6, s9, zero
  # implict jump to bb144
bb144:
  ADD s7, s6, zero
  BNE s7, zero, bb148
  # implict jump to bb145
bb145:
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
  # implict jump to bb146
bb146:
  ADD s9, s7, zero
  LW t4, 52(sp)
  ADDW s10, t4, s9
  SLT s9, s10, s0
  BNE s9, zero, bb147
  JAL zero, bb128
bb147:
  SW s10, 0(s1)
  JAL zero, bb128
bb148:
  ADDI s7, zero, -1
  JAL zero, bb146
bb149:
  ADDI s6, zero, 1
  JAL zero, bb144
bb150:
  ADDI s5, zero, 1
  JAL zero, bb142
bb151:
  ADDI s2, zero, 1
  JAL zero, bb140
bb152:
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
  BNE s5, zero, bb164
  # implict jump to bb153
bb153:
  LW t4, 20(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD s5, s1, zero
  # implict jump to bb154
bb154:
  ADD s6, s5, zero
  BNE s6, zero, bb163
  # implict jump to bb155
bb155:
  LW t4, 24(sp)
  SLT s0, t4, zero
  ADD s6, s0, zero
  # implict jump to bb156
bb156:
  ADD s7, s6, zero
  BNE s7, zero, bb162
  # implict jump to bb157
bb157:
  LW t4, 24(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD s7, s1, zero
  # implict jump to bb158
bb158:
  ADD s9, s7, zero
  BNE s9, zero, bb161
  # implict jump to bb159
bb159:
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
  # implict jump to bb160
bb160:
  ADD s2, s9, zero
  LW t4, 52(sp)
  ADDW s1, t4, s2
  SW s1, 0(s10)
  JAL zero, bb128
bb161:
  ADDI s9, zero, -1
  JAL zero, bb160
bb162:
  ADDI s7, zero, 1
  JAL zero, bb158
bb163:
  ADDI s6, zero, 1
  JAL zero, bb156
bb164:
  ADDI s5, zero, 1
  JAL zero, bb154
bb165:
  ADDI s8, zero, -1
  JAL zero, bb137
bb166:
  ADDI s3, zero, 1
  JAL zero, bb135
bb167:
  ADDI s4, zero, 1
  JAL zero, bb133
bb168:
  ADDI t4, zero, 1
  SB t4, 65(sp)
  JAL zero, bb131
bb169:
  LW t4, 20(sp)
  SLT s5, t4, zero
  BNE s5, zero, bb181
  # implict jump to bb170
bb170:
  LW t4, 20(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 57(sp)
  # implict jump to bb171
bb171:
  LB t4, 57(sp)
  ADD s6, t4, zero
  BNE s6, zero, bb180
  # implict jump to bb172
bb172:
  LW t4, 24(sp)
  SLT s0, t4, zero
  ADD t4, s0, zero
  SB t4, 58(sp)
  # implict jump to bb173
bb173:
  LB t4, 58(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb179
  # implict jump to bb174
bb174:
  LW t4, 24(sp)
  LW t3, 0(sp)
  SLT s0, t4, t3
  XORI s1, s0, 1
  ADD t4, s1, zero
  SB t4, 59(sp)
  # implict jump to bb175
bb175:
  LB t4, 59(sp)
  ADD s9, t4, zero
  BNE s9, zero, bb178
  # implict jump to bb176
bb176:
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
  # implict jump to bb177
bb177:
  LW t4, 60(sp)
  ADD s2, t4, zero
  SLT s10, s2, zero
  XORI s2, s10, 1
  ADD t4, s2, zero
  SB t4, 56(sp)
  JAL zero, bb127
bb178:
  ADDI t4, zero, -1
  SW t4, 60(sp)
  JAL zero, bb177
bb179:
  ADDI t4, zero, 1
  SB t4, 59(sp)
  JAL zero, bb175
bb180:
  ADDI t4, zero, 1
  SB t4, 58(sp)
  JAL zero, bb173
bb181:
  ADDI t4, zero, 1
  SB t4, 57(sp)
  JAL zero, bb171
bb182:
  ADDI t4, zero, -1
  SW t4, 48(sp)
  JAL zero, bb125
bb183:
  ADDI t4, zero, 1
  SB t4, 47(sp)
  JAL zero, bb123
bb184:
  ADDI t4, zero, 1
  SB t4, 46(sp)
  JAL zero, bb121
bb185:
  ADDI t4, zero, 1
  SB t4, 45(sp)
  JAL zero, bb119
bb186:
  ADD s3, zero, zero
  # implict jump to bb187
bb187:
  ADD s4, s3, zero
  LW t4, 0(sp)
  SLT s5, s4, t4
  BNE s5, zero, bb189
  # implict jump to bb188
bb188:
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb104
bb189:
  LW t4, 0(sp)
  MULW s5, s4, t4
  ADDW s6, s5, s2
  ADDI s5, zero, 4
  MULW s7, s6, s5
  LA s5, temp
  ADD s6, s5, s7
  SLT s5, s4, zero
  BNE s5, zero, bb201
  # implict jump to bb190
bb190:
  LW t4, 0(sp)
  SLT s3, s4, t4
  XORI s8, s3, 1
  ADD s5, s8, zero
  # implict jump to bb191
bb191:
  ADD s8, s5, zero
  BNE s8, zero, bb200
  # implict jump to bb192
bb192:
  SLT s3, s2, zero
  ADD s8, s3, zero
  # implict jump to bb193
bb193:
  ADD s9, s8, zero
  BNE s9, zero, bb199
  # implict jump to bb194
bb194:
  LW t4, 0(sp)
  SLT s3, s2, t4
  XORI s10, s3, 1
  ADD s9, s10, zero
  # implict jump to bb195
bb195:
  ADD s10, s9, zero
  BNE s10, zero, bb198
  # implict jump to bb196
bb196:
  LA s3, w
  ADD s11, s3, s7
  LW s3, 0(s11)
  ADD s10, s3, zero
  # implict jump to bb197
bb197:
  ADD s11, s10, zero
  SW s11, 0(s6)
  ADDIW s11, s4, 1
  ADD s3, s11, zero
  JAL zero, bb187
bb198:
  ADDI s10, zero, -1
  JAL zero, bb197
bb199:
  ADDI s9, zero, 1
  JAL zero, bb195
bb200:
  ADDI s8, zero, 1
  JAL zero, bb193
bb201:
  ADDI s5, zero, 1
  JAL zero, bb191
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
  BNE s4, zero, bb213
  # implict jump to bb203
bb203:
  SLT s5, s2, s1
  XORI s6, s5, 1
  ADD s4, s6, zero
  # implict jump to bb204
bb204:
  ADD s5, s4, zero
  BNE s5, zero, bb212
  # implict jump to bb205
bb205:
  SLT s6, s3, zero
  ADD s5, s6, zero
  # implict jump to bb206
bb206:
  ADD s6, s5, zero
  BNE s6, zero, bb211
  # implict jump to bb207
bb207:
  SLT s7, s3, s1
  XORI s8, s7, 1
  ADD s6, s8, zero
  # implict jump to bb208
bb208:
  ADD s7, s6, zero
  BNE s7, zero, bb210
  # implict jump to bb209
bb209:
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
bb210:
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
bb211:
  ADDI s6, zero, 1
  JAL zero, bb208
bb212:
  ADDI s5, zero, 1
  JAL zero, bb206
bb213:
  ADDI s4, zero, 1
  JAL zero, bb204
