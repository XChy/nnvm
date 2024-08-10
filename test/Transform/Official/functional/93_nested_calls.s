.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -112
  SD ra, 24(sp)
  SD s0, 32(sp)
  SD s1, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD s10, 96(sp)
  SD s11, 104(sp)
  CALL getint
  ADD s10, a0, zero
  CALL getint
  SLTU s1, zero, s10
  ADD s8, a0, zero
  XORI s1, s1, 1
  SW s1, 4(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 16(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 12(sp)
  CALL getint
  ADD s6, a0, zero
  CALL getint
  ADD s11, a0, zero
  CALL getint
  ADD s0, a0, zero
  SW s0, 8(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s3, a0, zero
  CALL getint
  ADD s4, a0, zero
  SW s4, 0(sp)
  CALL getint
  ADD s9, a0, zero
  CALL getint
  ADD s1, a0, zero
  CALL getint
  ADD s7, a0, zero
  CALL getint
  LW t0, 4(sp)
  BNE t0, zero, bb90
  # implict jump to bb1
bb1:   # loop depth 0
  ADD t1, zero, zero
  # implict jump to bb2
bb2:   # loop depth 0
  SUBW t2, zero, s8
  BNE t1, zero, bb89
  # implict jump to bb3
bb3:   # loop depth 0
  ADD t1, zero, zero
  # implict jump to bb4
bb4:   # loop depth 0
  BNE t1, zero, bb88
  # implict jump to bb5
bb5:   # loop depth 0
  ADD t1, zero, zero
  # implict jump to bb6
bb6:   # loop depth 0
  LW t0, 16(sp)
  SLTU a1, zero, t0
  LW t0, 16(sp)
  BNE t0, zero, bb87
  # implict jump to bb7
bb7:   # loop depth 0
  # implict jump to bb8
bb8:   # loop depth 0
  LW t0, 12(sp)
  SLTIU a3, t0, 1
  BNE a3, zero, bb86
  # implict jump to bb9
bb9:   # loop depth 0
  LW t0, 12(sp)
  ADDW t1, t1, t0
  # implict jump to bb10
bb10:   # loop depth 0
  SLTU t2, zero, s0
  ADDIW t1, t1, 1
  XORI t2, t2, 1
  SUBW a2, zero, s11
  SUBW a4, zero, t1
  BNE t2, zero, bb85
  # implict jump to bb11
bb11:   # loop depth 0
  ADD t1, zero, zero
  # implict jump to bb12
bb12:   # loop depth 0
  LW t0, 8(sp)
  BNE t0, zero, bb84
  # implict jump to bb13
bb13:   # loop depth 0
  ADD t1, zero, zero
  # implict jump to bb14
bb14:   # loop depth 0
  BNE t1, zero, bb83
  # implict jump to bb15
bb15:   # loop depth 0
  ADD t1, zero, zero
  # implict jump to bb16
bb16:   # loop depth 0
  LW t0, 0(sp)
  SLTU t2, zero, t0
  XORI t2, t2, 1
  BNE t2, zero, bb82
  # implict jump to bb17
bb17:   # loop depth 0
  ADD t2, zero, zero
  # implict jump to bb18
bb18:   # loop depth 0
  BNE t2, zero, bb81
  # implict jump to bb19
bb19:   # loop depth 0
  ADD t2, s3, zero
  # implict jump to bb20
bb20:   # loop depth 0
  BNE a2, zero, bb80
  # implict jump to bb21
bb21:   # loop depth 0
  ADD t1, t2, zero
  # implict jump to bb22
bb22:   # loop depth 0
  SLTIU t2, s9, 1
  BNE t2, zero, bb79
  # implict jump to bb23
bb23:   # loop depth 0
  ADDW t1, t1, s9
  # implict jump to bb24
bb24:   # loop depth 0
  ADDIW t2, t1, 1
  BNE s1, zero, bb78
  # implict jump to bb25
bb25:   # loop depth 0
  # implict jump to bb26
bb26:   # loop depth 0
  SLTU a2, zero, a0
  XORI t1, a2, 1
  BNE t1, zero, bb77
  # implict jump to bb27
bb27:   # loop depth 0
  ADD t1, zero, zero
  # implict jump to bb28
bb28:   # loop depth 0
  SLTIU a2, t1, 1
  BNE a2, zero, bb76
  # implict jump to bb29
bb29:   # loop depth 0
  ADDW t1, s7, t1
  # implict jump to bb30
bb30:   # loop depth 0
  SLTIU a5, s10, 1
  ADDIW t1, t1, 1
  BNE a5, zero, bb75
  # implict jump to bb31
bb31:   # loop depth 0
  SUBW t1, t1, s10
  # implict jump to bb32
bb32:   # loop depth 0
  MULW t1, t2, t1
  BNE a4, zero, bb74
  # implict jump to bb33
bb33:   # loop depth 0
  # implict jump to bb34
bb34:   # loop depth 0
  XORI t2, a1, 1
  BNE t2, zero, bb73
  # implict jump to bb35
bb35:   # loop depth 0
  ADD t2, zero, zero
  # implict jump to bb36
bb36:   # loop depth 0
  BNE a3, zero, bb72
  # implict jump to bb37
bb37:   # loop depth 0
  LW t0, 12(sp)
  ADDW t2, t2, t0
  # implict jump to bb38
bb38:   # loop depth 0
  ADDIW t2, t2, 1
  BNE t2, zero, bb71
  # implict jump to bb39
bb39:   # loop depth 0
  # implict jump to bb40
bb40:   # loop depth 0
  SLTIU t2, s8, 1
  BNE t2, zero, bb70
  # implict jump to bb41
bb41:   # loop depth 0
  ADDW t1, t1, s8
  # implict jump to bb42
bb42:   # loop depth 0
  SLTIU a1, s11, 1
  ADDIW t2, t1, 1
  BNE a1, zero, bb69
  # implict jump to bb43
bb43:   # loop depth 0
  SUBW s6, s6, s11
  # implict jump to bb44
bb44:   # loop depth 0
  MULW a1, t2, s6
  LW t0, 8(sp)
  BNE t0, zero, bb68
  # implict jump to bb45
bb45:   # loop depth 0
  # implict jump to bb46
bb46:   # loop depth 0
  LW t0, 0(sp)
  SUBW t2, zero, t0
  SLTIU t1, t2, 1
  BNE t1, zero, bb67
  # implict jump to bb47
bb47:   # loop depth 0
  ADDW s3, s3, t2
  # implict jump to bb48
bb48:   # loop depth 0
  SUBW a2, zero, s9
  ADDIW t2, s3, 1
  BNE a2, zero, bb66
  # implict jump to bb49
bb49:   # loop depth 0
  # implict jump to bb50
bb50:   # loop depth 0
  SLTU a2, zero, s7
  XORI t1, a2, 1
  BNE t1, zero, bb65
  # implict jump to bb51
bb51:   # loop depth 0
  ADD t1, zero, zero
  # implict jump to bb52
bb52:   # loop depth 0
  SLTIU a2, t1, 1
  BNE a2, zero, bb64
  # implict jump to bb53
bb53:   # loop depth 0
  SUBW s1, s1, t1
  # implict jump to bb54
bb54:   # loop depth 0
  SUBW t1, zero, a0
  MULW t0, t2, s1
  BNE t1, zero, bb63
  # implict jump to bb55
bb55:   # loop depth 0
  # implict jump to bb56
bb56:   # loop depth 0
  BNE a5, zero, bb62
  # implict jump to bb57
bb57:   # loop depth 0
  ADDW t0, t0, s10
  # implict jump to bb58
bb58:   # loop depth 0
  ADDIW t0, t0, 1
  SLTIU t1, t0, 1
  BNE t1, zero, bb61
  # implict jump to bb59
bb59:   # loop depth 0
  SUBW s0, s0, t0
  # implict jump to bb60
bb60:   # loop depth 0
  MULW a0, a1, s0
  LD ra, 24(sp)
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb61:   # loop depth 0
  JAL zero, bb60
bb62:   # loop depth 0
  JAL zero, bb58
bb63:   # loop depth 0
  REMW t0, t0, t1
  JAL zero, bb56
bb64:   # loop depth 0
  JAL zero, bb54
bb65:   # loop depth 0
  ADDI t1, zero, 1
  JAL zero, bb52
bb66:   # loop depth 0
  REMW t2, t2, a2
  JAL zero, bb50
bb67:   # loop depth 0
  JAL zero, bb48
bb68:   # loop depth 0
  LW t0, 8(sp)
  REMW a1, a1, t0
  JAL zero, bb46
bb69:   # loop depth 0
  JAL zero, bb44
bb70:   # loop depth 0
  JAL zero, bb42
bb71:   # loop depth 0
  REMW s8, s8, t2
  JAL zero, bb40
bb72:   # loop depth 0
  JAL zero, bb38
bb73:   # loop depth 0
  ADDI t2, zero, 1
  JAL zero, bb36
bb74:   # loop depth 0
  ADD t1, s6, zero
  JAL zero, bb34
bb75:   # loop depth 0
  JAL zero, bb32
bb76:   # loop depth 0
  ADD t1, s7, zero
  JAL zero, bb30
bb77:   # loop depth 0
  ADDI t1, zero, 1
  JAL zero, bb28
bb78:   # loop depth 0
  REMW t2, t2, s1
  JAL zero, bb26
bb79:   # loop depth 0
  JAL zero, bb24
bb80:   # loop depth 0
  JAL zero, bb22
bb81:   # loop depth 0
  REMW t2, s3, t2
  JAL zero, bb20
bb82:   # loop depth 0
  ADDI t2, zero, 1
  JAL zero, bb18
bb83:   # loop depth 0
  ADDI t1, zero, 1
  JAL zero, bb16
bb84:   # loop depth 0
  SLTU t1, zero, t1
  JAL zero, bb14
bb85:   # loop depth 0
  ADDI t1, zero, 1
  JAL zero, bb12
bb86:   # loop depth 0
  JAL zero, bb10
bb87:   # loop depth 0
  LW t0, 16(sp)
  REMW t1, t1, t0
  JAL zero, bb8
bb88:   # loop depth 0
  ADDI t1, zero, 1
  JAL zero, bb6
bb89:   # loop depth 0
  SLTU t1, zero, t2
  JAL zero, bb4
bb90:   # loop depth 0
  ADDI t1, zero, 1
  JAL zero, bb2
