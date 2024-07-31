.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -208
  SD ra, 64(sp)
  SD s0, 72(sp)
  SD s9, 80(sp)
  SD s1, 128(sp)
  SD s2, 136(sp)
  SD s3, 144(sp)
  SD s4, 152(sp)
  SD s5, 160(sp)
  SD s6, 168(sp)
  SD s7, 176(sp)
  SD s8, 184(sp)
  SD s10, 192(sp)
  SD s11, 200(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 12(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 8(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 4(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 44(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  # implict jump to bb1
bb1:
  LW t4, 48(sp)
  ADD s2, t4, zero
  SLLIW s3, s2, 2
  ADDI t0, sp, 88
  ADD s3, t0, s3
  CALL getint
  ADD t0, a0, zero
  SW t0, 0(s3)
  ADDIW s2, s2, 1
  SLTI s3, s2, 10
  BNE s3, zero, bb115
  # implict jump to bb2
bb2:
  LW t4, 12(sp)
  SLTU s3, zero, t4
  XORI s3, s3, 1
  BNE s3, zero, bb114
  # implict jump to bb3
bb3:
  ADD s3, zero, zero
  # implict jump to bb4
bb4:
  LW t4, 8(sp)
  SUBW t0, zero, t4
  BNE s3, zero, bb113
  # implict jump to bb5
bb5:
  ADD s3, zero, zero
  # implict jump to bb6
bb6:
  BNE s3, zero, bb112
  # implict jump to bb7
bb7:
  ADD s3, zero, zero
  # implict jump to bb8
bb8:
  LW t4, 4(sp)
  SLTU t0, zero, t4
  LW t4, 4(sp)
  BNE t4, zero, bb110
  # implict jump to bb9
bb9:
  ADD t1, s3, zero
  # implict jump to bb10
bb10:
  LW t3, 44(sp)
  SLTIU t4, t3, 1
  SB t4, 0(sp)
  LB t4, 0(sp)
  BNE t4, zero, bb109
  # implict jump to bb11
bb11:
  # implict jump to bb12
bb12:
  LW t4, 44(sp)
  ADDW s3, t1, t4
  # implict jump to bb13
bb13:
  ADDIW s3, s3, 1
  SUBW s11, zero, s3
  LW s6, 88(sp)
  LW s7, 92(sp)
  SUBW s8, zero, s7
  LW t4, 96(sp)
  SW t4, 28(sp)
  LW t4, 100(sp)
  SW t4, 40(sp)
  LW t4, 40(sp)
  SLTU s3, zero, t4
  XORI s3, s3, 1
  BNE s3, zero, bb108
  # implict jump to bb14
bb14:
  ADD s3, zero, zero
  # implict jump to bb15
bb15:
  LW t4, 28(sp)
  BNE t4, zero, bb107
  # implict jump to bb16
bb16:
  ADD t1, zero, zero
  # implict jump to bb17
bb17:
  BNE t1, zero, bb106
  # implict jump to bb18
bb18:
  ADD s3, zero, zero
  # implict jump to bb19
bb19:
  LW t1, 104(sp)
  LW t2, 108(sp)
  SLTU a1, zero, t2
  XORI a1, a1, 1
  BNE a1, zero, bb105
  # implict jump to bb20
bb20:
  ADD a1, zero, zero
  # implict jump to bb21
bb21:
  BNE a1, zero, bb103
  # implict jump to bb22
bb22:
  ADD a2, t1, zero
  # implict jump to bb23
bb23:
  BNE s8, zero, bb102
  # implict jump to bb24
bb24:
  ADD s8, a2, zero
  # implict jump to bb25
bb25:
  LW s3, 112(sp)
  SLTIU a1, s3, 1
  BNE a1, zero, bb101
  # implict jump to bb26
bb26:
  # implict jump to bb27
bb27:
  ADDW a1, s8, s3
  # implict jump to bb28
bb28:
  ADDIW s4, a1, 1
  LW t4, 116(sp)
  SW t4, 16(sp)
  LW t4, 16(sp)
  BNE t4, zero, bb99
  # implict jump to bb29
bb29:
  ADD s8, s4, zero
  # implict jump to bb30
bb30:
  ADD s1, s8, zero
  LW t4, 120(sp)
  SW t4, 56(sp)
  LW t4, 124(sp)
  SW t4, 20(sp)
  LW t4, 20(sp)
  SLTU s4, zero, t4
  XORI s4, s4, 1
  BNE s4, zero, bb98
  # implict jump to bb31
bb31:
  ADD s4, zero, zero
  # implict jump to bb32
bb32:
  SLTIU s8, s4, 1
  BNE s8, zero, bb97
  # implict jump to bb33
bb33:
  # implict jump to bb34
bb34:
  LW t4, 56(sp)
  ADDW s4, t4, s4
  # implict jump to bb35
bb35:
  ADDIW s4, s4, 1
  LW t3, 12(sp)
  SLTIU t4, t3, 1
  SB t4, 1(sp)
  LB t4, 1(sp)
  BNE t4, zero, bb96
  # implict jump to bb36
bb36:
  # implict jump to bb37
bb37:
  LW t4, 12(sp)
  SUBW s8, s4, t4
  # implict jump to bb38
bb38:
  ADD a1, s1, zero
  # implict jump to bb39
bb39:
  MULW s1, a1, s8
  BNE s11, zero, bb95
  # implict jump to bb40
bb40:
  # implict jump to bb41
bb41:
  XORI s4, t0, 1
  BNE s4, zero, bb94
  # implict jump to bb42
bb42:
  ADD s4, zero, zero
  # implict jump to bb43
bb43:
  LB t4, 0(sp)
  BNE t4, zero, bb93
  # implict jump to bb44
bb44:
  # implict jump to bb45
bb45:
  LW t4, 44(sp)
  ADDW s8, s4, t4
  # implict jump to bb46
bb46:
  ADDIW s0, s8, 1
  BNE s0, zero, bb91
  # implict jump to bb47
bb47:
  LW t4, 8(sp)
  ADD s4, t4, zero
  # implict jump to bb48
bb48:
  SLTIU s0, s4, 1
  BNE s0, zero, bb90
  # implict jump to bb49
bb49:
  # implict jump to bb50
bb50:
  ADDW s0, s1, s4
  # implict jump to bb51
bb51:
  ADDIW s0, s0, 1
  SLTIU s1, s7, 1
  BNE s1, zero, bb89
  # implict jump to bb52
bb52:
  # implict jump to bb53
bb53:
  SUBW s1, s6, s7
  # implict jump to bb54
bb54:
  ADD s4, s0, zero
  # implict jump to bb55
bb55:
  MULW s5, s4, s1
  LW t4, 28(sp)
  BNE t4, zero, bb87
  # implict jump to bb56
bb56:
  ADD s0, s5, zero
  # implict jump to bb57
bb57:
  ADD t4, s0, zero
  SW t4, 36(sp)
  SUBW s0, zero, t2
  SLTIU s1, s0, 1
  BNE s1, zero, bb86
  # implict jump to bb58
bb58:
  # implict jump to bb59
bb59:
  ADDW s0, t1, s0
  # implict jump to bb60
bb60:
  ADDIW s10, s0, 1
  SUBW s9, zero, s3
  BNE s9, zero, bb84
  # implict jump to bb61
bb61:
  ADD s0, s10, zero
  # implict jump to bb62
bb62:
  ADD t4, s0, zero
  SW t4, 52(sp)
  LW t4, 56(sp)
  SLTU s0, zero, t4
  XORI s0, s0, 1
  BNE s0, zero, bb83
  # implict jump to bb63
bb63:
  ADD s0, zero, zero
  # implict jump to bb64
bb64:
  SLTIU s1, s0, 1
  BNE s1, zero, bb82
  # implict jump to bb65
bb65:
  # implict jump to bb66
bb66:
  LW t4, 16(sp)
  SUBW s0, t4, s0
  # implict jump to bb67
bb67:
  LW t4, 52(sp)
  ADD s1, t4, zero
  # implict jump to bb68
bb68:
  MULW t4, s1, s0
  SW t4, 24(sp)
  LW t3, 20(sp)
  SUBW t4, zero, t3
  SW t4, 32(sp)
  LW t4, 32(sp)
  BNE t4, zero, bb80
  # implict jump to bb69
bb69:
  LW t4, 24(sp)
  ADD s0, t4, zero
  # implict jump to bb70
bb70:
  LB t4, 1(sp)
  BNE t4, zero, bb79
  # implict jump to bb71
bb71:
  # implict jump to bb72
bb72:
  LW t4, 12(sp)
  ADDW s1, s0, t4
  # implict jump to bb73
bb73:
  ADDIW s0, s1, 1
  SLTIU s1, s0, 1
  BNE s1, zero, bb78
  # implict jump to bb74
bb74:
  # implict jump to bb75
bb75:
  LW t4, 40(sp)
  SUBW s0, t4, s0
  # implict jump to bb76
bb76:
  LW t4, 36(sp)
  ADD s1, t4, zero
  # implict jump to bb77
bb77:
  MULW s0, s1, s0
  ADD a0, s0, zero
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s9, 80(sp)
  LD s1, 128(sp)
  LD s2, 136(sp)
  LD s3, 144(sp)
  LD s4, 152(sp)
  LD s5, 160(sp)
  LD s6, 168(sp)
  LD s7, 176(sp)
  LD s8, 184(sp)
  LD s10, 192(sp)
  LD s11, 200(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
bb78:
  LW t4, 36(sp)
  ADD s1, t4, zero
  LW t4, 40(sp)
  ADD s0, t4, zero
  JAL zero, bb77
bb79:
  ADD s1, s0, zero
  JAL zero, bb73
bb80:
  # implict jump to bb81
bb81:
  LW t4, 24(sp)
  LW t3, 32(sp)
  REMW s1, t4, t3
  ADD s0, s1, zero
  JAL zero, bb70
bb82:
  LW t4, 52(sp)
  ADD s1, t4, zero
  LW t4, 16(sp)
  ADD s0, t4, zero
  JAL zero, bb68
bb83:
  ADDI s0, zero, 1
  JAL zero, bb64
bb84:
  # implict jump to bb85
bb85:
  REMW s1, s10, s9
  ADD s0, s1, zero
  JAL zero, bb62
bb86:
  ADD s0, t1, zero
  JAL zero, bb60
bb87:
  # implict jump to bb88
bb88:
  LW t4, 28(sp)
  REMW s1, s5, t4
  ADD s0, s1, zero
  JAL zero, bb57
bb89:
  ADD s4, s0, zero
  ADD s1, s6, zero
  JAL zero, bb55
bb90:
  ADD s0, s1, zero
  JAL zero, bb51
bb91:
  # implict jump to bb92
bb92:
  LW t4, 8(sp)
  REMW s0, t4, s0
  ADD s4, s0, zero
  JAL zero, bb48
bb93:
  ADD s8, s4, zero
  JAL zero, bb46
bb94:
  ADDI s4, zero, 1
  JAL zero, bb43
bb95:
  ADD s1, s6, zero
  JAL zero, bb41
bb96:
  ADD a1, s1, zero
  ADD s8, s4, zero
  JAL zero, bb39
bb97:
  LW t4, 56(sp)
  ADD s4, t4, zero
  JAL zero, bb35
bb98:
  ADDI s4, zero, 1
  JAL zero, bb32
bb99:
  # implict jump to bb100
bb100:
  LW t4, 16(sp)
  REMW s4, s4, t4
  ADD s8, s4, zero
  JAL zero, bb30
bb101:
  ADD a1, s8, zero
  JAL zero, bb28
bb102:
  ADD s8, s3, zero
  JAL zero, bb25
bb103:
  # implict jump to bb104
bb104:
  REMW a1, t1, a1
  ADD a2, a1, zero
  JAL zero, bb23
bb105:
  ADDI a1, zero, 1
  JAL zero, bb21
bb106:
  ADDI s3, zero, 1
  JAL zero, bb19
bb107:
  SLTU s3, zero, s3
  ADD t1, s3, zero
  JAL zero, bb17
bb108:
  ADDI s3, zero, 1
  JAL zero, bb15
bb109:
  ADD s3, t1, zero
  JAL zero, bb13
bb110:
  # implict jump to bb111
bb111:
  LW t4, 4(sp)
  REMW s3, s3, t4
  ADD t1, s3, zero
  JAL zero, bb10
bb112:
  ADDI s3, zero, 1
  JAL zero, bb8
bb113:
  SLTU t0, zero, t0
  ADD s3, t0, zero
  JAL zero, bb6
bb114:
  ADDI s3, zero, 1
  JAL zero, bb4
bb115:
  ADD t4, s2, zero
  SW t4, 48(sp)
  JAL zero, bb1
