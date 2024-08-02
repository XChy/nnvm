.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -112
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD s6, 96(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s1, a0, zero
  CALL getint
  ADD s5, a0, zero
  CALL getint
  ADD s2, a0, zero
  ADD s3, zero, zero
  # implict jump to bb1
bb1:
  ADD s4, s3, zero
  SLLIW s3, s4, 2
  ADDI t5, sp, 0
  ADD s3, t5, s3
  CALL getint
  ADD s6, a0, zero
  SW s6, 0(s3)
  ADDIW s3, s4, 1
  SLTI s4, s3, 10
  BNE s4, zero, bb115
  # implict jump to bb2
bb2:
  SLTU t0, zero, s0
  XORI t0, t0, 1
  BNE t0, zero, bb114
  # implict jump to bb3
bb3:
  ADD t0, zero, zero
  # implict jump to bb4
bb4:
  SUBW t1, zero, s1
  BNE t0, zero, bb113
  # implict jump to bb5
bb5:
  ADD t0, zero, zero
  # implict jump to bb6
bb6:
  BNE t0, zero, bb112
  # implict jump to bb7
bb7:
  ADD t0, zero, zero
  # implict jump to bb8
bb8:
  SLTU t4, zero, s5
  BNE s5, zero, bb110
  # implict jump to bb9
bb9:
  # implict jump to bb10
bb10:
  SLTIU t5, s2, 1
  BNE t5, zero, bb109
  # implict jump to bb11
bb11:
  # implict jump to bb12
bb12:
  ADDW t0, t0, s2
  # implict jump to bb13
bb13:
  ADDIW t0, t0, 1
  SUBW t6, zero, t0
  LW a5, 0(sp)
  LW t1, 4(sp)
  SUBW a0, zero, t1
  LW a3, 8(sp)
  LW t2, 12(sp)
  SLTU t0, zero, t2
  XORI t0, t0, 1
  BNE t0, zero, bb108
  # implict jump to bb14
bb14:
  ADD t0, zero, zero
  # implict jump to bb15
bb15:
  BNE a3, zero, bb107
  # implict jump to bb16
bb16:
  ADD t0, zero, zero
  # implict jump to bb17
bb17:
  BNE t0, zero, bb106
  # implict jump to bb18
bb18:
  ADD t0, zero, zero
  # implict jump to bb19
bb19:
  ADD a1, t0, zero
  LW a7, 16(sp)
  LW a6, 20(sp)
  SLTU t0, zero, a6
  XORI t0, t0, 1
  BNE t0, zero, bb105
  # implict jump to bb20
bb20:
  ADD t0, zero, zero
  # implict jump to bb21
bb21:
  BNE t0, zero, bb103
  # implict jump to bb22
bb22:
  ADD t0, a7, zero
  # implict jump to bb23
bb23:
  BNE a0, zero, bb102
  # implict jump to bb24
bb24:
  # implict jump to bb25
bb25:
  LW t3, 24(sp)
  SLTIU a0, t3, 1
  BNE a0, zero, bb101
  # implict jump to bb26
bb26:
  # implict jump to bb27
bb27:
  ADDW t0, t0, t3
  # implict jump to bb28
bb28:
  ADDIW t0, t0, 1
  LW a2, 28(sp)
  BNE a2, zero, bb99
  # implict jump to bb29
bb29:
  # implict jump to bb30
bb30:
  ADD s4, t0, zero
  LW a1, 32(sp)
  LW a0, 36(sp)
  SLTU t0, zero, a0
  XORI t0, t0, 1
  BNE t0, zero, bb98
  # implict jump to bb31
bb31:
  ADD t0, zero, zero
  # implict jump to bb32
bb32:
  SLTIU a4, t0, 1
  BNE a4, zero, bb97
  # implict jump to bb33
bb33:
  # implict jump to bb34
bb34:
  ADDW t0, a1, t0
  # implict jump to bb35
bb35:
  ADDIW s3, t0, 1
  SLTIU a4, s0, 1
  BNE a4, zero, bb96
  # implict jump to bb36
bb36:
  # implict jump to bb37
bb37:
  SUBW s3, s3, s0
  # implict jump to bb38
bb38:
  ADD t0, s4, zero
  # implict jump to bb39
bb39:
  MULW t0, t0, s3
  BNE t6, zero, bb95
  # implict jump to bb40
bb40:
  # implict jump to bb41
bb41:
  ADD t6, t0, zero
  XORI t0, t4, 1
  BNE t0, zero, bb94
  # implict jump to bb42
bb42:
  ADD t0, zero, zero
  # implict jump to bb43
bb43:
  BNE t5, zero, bb93
  # implict jump to bb44
bb44:
  # implict jump to bb45
bb45:
  ADDW t0, t0, s2
  # implict jump to bb46
bb46:
  ADDIW t0, t0, 1
  BNE t0, zero, bb91
  # implict jump to bb47
bb47:
  ADD t0, s1, zero
  # implict jump to bb48
bb48:
  ADD t4, t0, zero
  SLTIU t0, t4, 1
  BNE t0, zero, bb90
  # implict jump to bb49
bb49:
  # implict jump to bb50
bb50:
  ADDW t0, t6, t4
  # implict jump to bb51
bb51:
  ADDIW t4, t0, 1
  SLTIU t0, t1, 1
  BNE t0, zero, bb89
  # implict jump to bb52
bb52:
  # implict jump to bb53
bb53:
  SUBW t1, a5, t1
  # implict jump to bb54
bb54:
  ADD t0, t4, zero
  # implict jump to bb55
bb55:
  MULW t0, t0, t1
  BNE a3, zero, bb87
  # implict jump to bb56
bb56:
  # implict jump to bb57
bb57:
  ADD a3, t0, zero
  SUBW t0, zero, a6
  SLTIU t1, t0, 1
  BNE t1, zero, bb86
  # implict jump to bb58
bb58:
  # implict jump to bb59
bb59:
  ADDW t0, a7, t0
  # implict jump to bb60
bb60:
  ADDIW t0, t0, 1
  SUBW t1, zero, t3
  BNE t1, zero, bb84
  # implict jump to bb61
bb61:
  # implict jump to bb62
bb62:
  ADD a5, t0, zero
  SLTU t0, zero, a1
  XORI t0, t0, 1
  BNE t0, zero, bb83
  # implict jump to bb63
bb63:
  ADD t0, zero, zero
  # implict jump to bb64
bb64:
  ADD t1, t0, zero
  SLTIU t0, t1, 1
  BNE t0, zero, bb82
  # implict jump to bb65
bb65:
  # implict jump to bb66
bb66:
  SUBW t1, a2, t1
  # implict jump to bb67
bb67:
  ADD t0, a5, zero
  # implict jump to bb68
bb68:
  MULW t1, t0, t1
  SUBW t0, zero, a0
  BNE t0, zero, bb80
  # implict jump to bb69
bb69:
  ADD t0, t1, zero
  # implict jump to bb70
bb70:
  BNE a4, zero, bb79
  # implict jump to bb71
bb71:
  # implict jump to bb72
bb72:
  ADDW t0, t0, s0
  # implict jump to bb73
bb73:
  ADDIW t1, t0, 1
  SLTIU t0, t1, 1
  BNE t0, zero, bb78
  # implict jump to bb74
bb74:
  # implict jump to bb75
bb75:
  SUBW t1, t2, t1
  # implict jump to bb76
bb76:
  ADD t0, a3, zero
  # implict jump to bb77
bb77:
  MULW t0, t0, t1
  ADD a0, t0, zero
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb78:
  ADD t0, a3, zero
  ADD t1, t2, zero
  JAL zero, bb77
bb79:
  JAL zero, bb73
bb80:
  # implict jump to bb81
bb81:
  REMW t0, t1, t0
  JAL zero, bb70
bb82:
  ADD t0, a5, zero
  ADD t1, a2, zero
  JAL zero, bb68
bb83:
  ADDI t0, zero, 1
  JAL zero, bb64
bb84:
  # implict jump to bb85
bb85:
  REMW t0, t0, t1
  JAL zero, bb62
bb86:
  ADD t0, a7, zero
  JAL zero, bb60
bb87:
  # implict jump to bb88
bb88:
  REMW t0, t0, a3
  JAL zero, bb57
bb89:
  ADD t0, t4, zero
  ADD t1, a5, zero
  JAL zero, bb55
bb90:
  ADD t0, t6, zero
  JAL zero, bb51
bb91:
  # implict jump to bb92
bb92:
  REMW t0, s1, t0
  JAL zero, bb48
bb93:
  JAL zero, bb46
bb94:
  ADDI t0, zero, 1
  JAL zero, bb43
bb95:
  ADD t0, a5, zero
  JAL zero, bb41
bb96:
  ADD t0, s4, zero
  JAL zero, bb39
bb97:
  ADD t0, a1, zero
  JAL zero, bb35
bb98:
  ADDI t0, zero, 1
  JAL zero, bb32
bb99:
  # implict jump to bb100
bb100:
  REMW t0, t0, a2
  JAL zero, bb30
bb101:
  JAL zero, bb28
bb102:
  ADD t0, a1, zero
  JAL zero, bb25
bb103:
  # implict jump to bb104
bb104:
  REMW t0, a7, t0
  JAL zero, bb23
bb105:
  ADDI t0, zero, 1
  JAL zero, bb21
bb106:
  ADDI t0, zero, 1
  JAL zero, bb19
bb107:
  SLTU t0, zero, t0
  JAL zero, bb17
bb108:
  ADDI t0, zero, 1
  JAL zero, bb15
bb109:
  JAL zero, bb13
bb110:
  # implict jump to bb111
bb111:
  REMW t0, t0, s5
  JAL zero, bb10
bb112:
  ADDI t0, zero, 1
  JAL zero, bb8
bb113:
  SLTU t0, zero, t1
  JAL zero, bb6
bb114:
  ADDI t0, zero, 1
  JAL zero, bb4
bb115:
  JAL zero, bb1
