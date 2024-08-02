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
  ADD s2, a0, zero
  CALL getint
  ADD s3, a0, zero
  ADD s4, zero, zero
  # implict jump to bb1
bb1:
  SLLIW s5, s4, 2
  ADDI t5, sp, 0
  ADD s5, t5, s5
  CALL getint
  ADD s6, a0, zero
  SW s6, 0(s5)
  ADDIW s4, s4, 1
  SLTI s5, s4, 10
  BNE s5, zero, bb93
  # implict jump to bb2
bb2:
  SLTU t0, zero, s0
  XORI t0, t0, 1
  BNE t0, zero, bb92
  # implict jump to bb3
bb3:
  ADD t0, zero, zero
  # implict jump to bb4
bb4:
  SUBW t1, zero, s1
  BNE t0, zero, bb91
  # implict jump to bb5
bb5:
  ADD t0, zero, zero
  # implict jump to bb6
bb6:
  BNE t0, zero, bb90
  # implict jump to bb7
bb7:
  ADD t0, zero, zero
  # implict jump to bb8
bb8:
  SLTU t1, zero, s2
  BNE s2, zero, bb89
  # implict jump to bb9
bb9:
  # implict jump to bb10
bb10:
  SLTIU a3, s3, 1
  BNE a3, zero, bb88
  # implict jump to bb11
bb11:
  ADDW t0, t0, s3
  # implict jump to bb12
bb12:
  ADDIW t0, t0, 1
  SUBW t3, zero, t0
  LW a4, 0(sp)
  LW a6, 4(sp)
  SUBW a2, zero, a6
  LW a7, 8(sp)
  LW a5, 12(sp)
  SLTU t0, zero, a5
  XORI t0, t0, 1
  BNE t0, zero, bb87
  # implict jump to bb13
bb13:
  ADD t0, zero, zero
  # implict jump to bb14
bb14:
  BNE a7, zero, bb86
  # implict jump to bb15
bb15:
  ADD t0, zero, zero
  # implict jump to bb16
bb16:
  BNE t0, zero, bb85
  # implict jump to bb17
bb17:
  ADD t0, zero, zero
  # implict jump to bb18
bb18:
  LW t2, 16(sp)
  LW a0, 20(sp)
  SLTU a1, zero, a0
  XORI a1, a1, 1
  BNE a1, zero, bb84
  # implict jump to bb19
bb19:
  ADD a1, zero, zero
  # implict jump to bb20
bb20:
  BNE a1, zero, bb83
  # implict jump to bb21
bb21:
  ADD a1, t2, zero
  # implict jump to bb22
bb22:
  BNE a2, zero, bb82
  # implict jump to bb23
bb23:
  ADD t0, a1, zero
  # implict jump to bb24
bb24:
  LW a1, 24(sp)
  SLTIU a2, a1, 1
  BNE a2, zero, bb81
  # implict jump to bb25
bb25:
  ADDW t0, t0, a1
  # implict jump to bb26
bb26:
  ADDIW t0, t0, 1
  LW s2, 28(sp)
  BNE s2, zero, bb80
  # implict jump to bb27
bb27:
  # implict jump to bb28
bb28:
  ADD t4, t0, zero
  LW t5, 32(sp)
  LW t6, 36(sp)
  SLTU t0, zero, t6
  XORI t0, t0, 1
  BNE t0, zero, bb79
  # implict jump to bb29
bb29:
  ADD t0, zero, zero
  # implict jump to bb30
bb30:
  SLTIU a2, t0, 1
  BNE a2, zero, bb78
  # implict jump to bb31
bb31:
  ADDW t0, t5, t0
  # implict jump to bb32
bb32:
  ADDIW t0, t0, 1
  SLTIU s4, s0, 1
  BNE s4, zero, bb77
  # implict jump to bb33
bb33:
  SUBW t0, t0, s0
  # implict jump to bb34
bb34:
  ADD a2, t0, zero
  ADD t0, t4, zero
  MULW t0, t0, a2
  BNE t3, zero, bb76
  # implict jump to bb35
bb35:
  # implict jump to bb36
bb36:
  XORI t1, t1, 1
  BNE t1, zero, bb75
  # implict jump to bb37
bb37:
  ADD t1, zero, zero
  # implict jump to bb38
bb38:
  BNE a3, zero, bb74
  # implict jump to bb39
bb39:
  ADDW t1, t1, s3
  # implict jump to bb40
bb40:
  ADDIW t1, t1, 1
  BNE t1, zero, bb73
  # implict jump to bb41
bb41:
  ADD t1, s1, zero
  # implict jump to bb42
bb42:
  SLTIU a2, t1, 1
  BNE a2, zero, bb72
  # implict jump to bb43
bb43:
  ADDW t0, t0, t1
  # implict jump to bb44
bb44:
  ADDIW t0, t0, 1
  SLTIU t1, a6, 1
  BNE t1, zero, bb71
  # implict jump to bb45
bb45:
  SUBW t1, a4, a6
  # implict jump to bb46
bb46:
  MULW t0, t0, t1
  BNE a7, zero, bb70
  # implict jump to bb47
bb47:
  # implict jump to bb48
bb48:
  ADD a2, t0, zero
  SUBW t0, zero, a0
  SLTIU t1, t0, 1
  BNE t1, zero, bb69
  # implict jump to bb49
bb49:
  ADDW t0, t2, t0
  # implict jump to bb50
bb50:
  ADDIW t0, t0, 1
  SUBW t1, zero, a1
  BNE t1, zero, bb68
  # implict jump to bb51
bb51:
  # implict jump to bb52
bb52:
  ADD t2, t0, zero
  SLTU t0, zero, t5
  XORI t0, t0, 1
  BNE t0, zero, bb67
  # implict jump to bb53
bb53:
  ADD t0, zero, zero
  # implict jump to bb54
bb54:
  SLTIU t1, t0, 1
  BNE t1, zero, bb66
  # implict jump to bb55
bb55:
  SUBW t0, s2, t0
  # implict jump to bb56
bb56:
  ADD t1, t0, zero
  ADD t0, t2, zero
  MULW t0, t0, t1
  SUBW t1, zero, t6
  BNE t1, zero, bb65
  # implict jump to bb57
bb57:
  # implict jump to bb58
bb58:
  BNE s4, zero, bb64
  # implict jump to bb59
bb59:
  ADDW t0, t0, s0
  # implict jump to bb60
bb60:
  ADDIW t0, t0, 1
  SLTIU t1, t0, 1
  BNE t1, zero, bb63
  # implict jump to bb61
bb61:
  SUBW t0, a5, t0
  ADD t2, a2, zero
  # implict jump to bb62
bb62:
  ADD t1, t0, zero
  ADD t0, t2, zero
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
bb63:
  ADD t2, a2, zero
  ADD t0, a5, zero
  JAL zero, bb62
bb64:
  JAL zero, bb60
bb65:
  REMW t0, t0, t1
  JAL zero, bb58
bb66:
  ADD t0, s2, zero
  JAL zero, bb56
bb67:
  ADDI t0, zero, 1
  JAL zero, bb54
bb68:
  REMW t0, t0, t1
  JAL zero, bb52
bb69:
  ADD t0, t2, zero
  JAL zero, bb50
bb70:
  REMW t0, t0, a7
  JAL zero, bb48
bb71:
  ADD t1, a4, zero
  JAL zero, bb46
bb72:
  JAL zero, bb44
bb73:
  REMW t1, s1, t1
  JAL zero, bb42
bb74:
  JAL zero, bb40
bb75:
  ADDI t1, zero, 1
  JAL zero, bb38
bb76:
  ADD t0, a4, zero
  JAL zero, bb36
bb77:
  JAL zero, bb34
bb78:
  ADD t0, t5, zero
  JAL zero, bb32
bb79:
  ADDI t0, zero, 1
  JAL zero, bb30
bb80:
  REMW t0, t0, s2
  JAL zero, bb28
bb81:
  JAL zero, bb26
bb82:
  JAL zero, bb24
bb83:
  REMW a1, t2, a1
  JAL zero, bb22
bb84:
  ADDI a1, zero, 1
  JAL zero, bb20
bb85:
  ADDI t0, zero, 1
  JAL zero, bb18
bb86:
  SLTU t0, zero, t0
  JAL zero, bb16
bb87:
  ADDI t0, zero, 1
  JAL zero, bb14
bb88:
  JAL zero, bb12
bb89:
  REMW t0, t0, s2
  JAL zero, bb10
bb90:
  ADDI t0, zero, 1
  JAL zero, bb8
bb91:
  SLTU t0, zero, t1
  JAL zero, bb6
bb92:
  ADDI t0, zero, 1
  JAL zero, bb4
bb93:
  JAL zero, bb1
