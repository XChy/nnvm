.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s1, a0, zero
  CALL getint
  ADD s3, a0, zero
  CALL getint
  ADD s2, a0, zero
  CALL getint
  ADD s4, a0, zero
  SW s4, 48(sp)
  CALL getint
  ADD s4, a0, zero
  SW s4, 52(sp)
  CALL getint
  ADD s4, a0, zero
  SW s4, 56(sp)
  CALL getint
  ADD s4, a0, zero
  SW s4, 60(sp)
  CALL getint
  ADD s4, a0, zero
  SW s4, 64(sp)
  CALL getint
  ADD s4, a0, zero
  SW s4, 68(sp)
  CALL getint
  ADD s4, a0, zero
  SW s4, 72(sp)
  CALL getint
  ADD s4, a0, zero
  SW s4, 76(sp)
  CALL getint
  ADD s4, a0, zero
  SW s4, 80(sp)
  CALL getint
  SW a0, 84(sp)
  SLTU t0, zero, s0
  XORI t0, t0, 1
  BNE t0, zero, bb90
  # implict jump to bb1
bb1:
  ADD t0, zero, zero
  # implict jump to bb2
bb2:
  SUBW t1, zero, s1
  BNE t0, zero, bb89
  # implict jump to bb3
bb3:
  ADD t0, zero, zero
  # implict jump to bb4
bb4:
  BNE t0, zero, bb88
  # implict jump to bb5
bb5:
  ADD t0, zero, zero
  # implict jump to bb6
bb6:
  SLTU t2, zero, s3
  BNE s3, zero, bb87
  # implict jump to bb7
bb7:
  # implict jump to bb8
bb8:
  SLTIU t5, s2, 1
  BNE t5, zero, bb86
  # implict jump to bb9
bb9:
  ADDW t0, t0, s2
  # implict jump to bb10
bb10:
  ADDIW t0, t0, 1
  SUBW s3, zero, t0
  LW t4, 48(sp)
  LW a7, 52(sp)
  SUBW a4, zero, a7
  LW t3, 56(sp)
  LW a2, 60(sp)
  SLTU t0, zero, a2
  XORI t0, t0, 1
  BNE t0, zero, bb85
  # implict jump to bb11
bb11:
  ADD t0, zero, zero
  # implict jump to bb12
bb12:
  BNE t3, zero, bb84
  # implict jump to bb13
bb13:
  ADD t0, zero, zero
  # implict jump to bb14
bb14:
  BNE t0, zero, bb83
  # implict jump to bb15
bb15:
  ADD t0, zero, zero
  # implict jump to bb16
bb16:
  LW t1, 64(sp)
  LW a1, 68(sp)
  SLTU a3, zero, a1
  XORI a3, a3, 1
  BNE a3, zero, bb82
  # implict jump to bb17
bb17:
  ADD a3, zero, zero
  # implict jump to bb18
bb18:
  BNE a3, zero, bb81
  # implict jump to bb19
bb19:
  ADD a3, t1, zero
  # implict jump to bb20
bb20:
  BNE a4, zero, bb80
  # implict jump to bb21
bb21:
  ADD t0, a3, zero
  # implict jump to bb22
bb22:
  LW a3, 72(sp)
  SLTIU a4, a3, 1
  BNE a4, zero, bb79
  # implict jump to bb23
bb23:
  ADDW t0, t0, a3
  # implict jump to bb24
bb24:
  ADDIW s4, t0, 1
  LW a6, 76(sp)
  BNE a6, zero, bb78
  # implict jump to bb25
bb25:
  # implict jump to bb26
bb26:
  LW a4, 80(sp)
  SLTU t0, zero, a0
  XORI t0, t0, 1
  BNE t0, zero, bb77
  # implict jump to bb27
bb27:
  ADD t0, zero, zero
  # implict jump to bb28
bb28:
  SLTIU a5, t0, 1
  BNE a5, zero, bb76
  # implict jump to bb29
bb29:
  ADDW t0, a4, t0
  # implict jump to bb30
bb30:
  ADDIW t0, t0, 1
  SLTIU a5, s0, 1
  BNE a5, zero, bb75
  # implict jump to bb31
bb31:
  SUBW t0, t0, s0
  # implict jump to bb32
bb32:
  MULW t0, s4, t0
  BNE s3, zero, bb74
  # implict jump to bb33
bb33:
  # implict jump to bb34
bb34:
  XORI t2, t2, 1
  BNE t2, zero, bb73
  # implict jump to bb35
bb35:
  ADD t2, zero, zero
  # implict jump to bb36
bb36:
  BNE t5, zero, bb72
  # implict jump to bb37
bb37:
  ADDW t2, t2, s2
  # implict jump to bb38
bb38:
  ADDIW t2, t2, 1
  BNE t2, zero, bb71
  # implict jump to bb39
bb39:
  # implict jump to bb40
bb40:
  SLTIU t2, s1, 1
  BNE t2, zero, bb70
  # implict jump to bb41
bb41:
  ADDW t0, t0, s1
  # implict jump to bb42
bb42:
  ADDIW t0, t0, 1
  SLTIU t2, a7, 1
  BNE t2, zero, bb69
  # implict jump to bb43
bb43:
  SUBW t4, t4, a7
  # implict jump to bb44
bb44:
  MULW t2, t0, t4
  BNE t3, zero, bb68
  # implict jump to bb45
bb45:
  # implict jump to bb46
bb46:
  SUBW t0, zero, a1
  SLTIU a1, t0, 1
  BNE a1, zero, bb67
  # implict jump to bb47
bb47:
  ADDW t1, t1, t0
  # implict jump to bb48
bb48:
  ADDIW t0, t1, 1
  SUBW t1, zero, a3
  BNE t1, zero, bb66
  # implict jump to bb49
bb49:
  # implict jump to bb50
bb50:
  SLTU t1, zero, a4
  XORI t1, t1, 1
  BNE t1, zero, bb65
  # implict jump to bb51
bb51:
  ADD t1, zero, zero
  # implict jump to bb52
bb52:
  SLTIU a1, t1, 1
  BNE a1, zero, bb64
  # implict jump to bb53
bb53:
  SUBW a6, a6, t1
  # implict jump to bb54
bb54:
  MULW t0, t0, a6
  SUBW t1, zero, a0
  BNE t1, zero, bb63
  # implict jump to bb55
bb55:
  # implict jump to bb56
bb56:
  BNE a5, zero, bb62
  # implict jump to bb57
bb57:
  ADDW t0, t0, s0
  # implict jump to bb58
bb58:
  ADDIW t0, t0, 1
  SLTIU t1, t0, 1
  BNE t1, zero, bb61
  # implict jump to bb59
bb59:
  SUBW a2, a2, t0
  # implict jump to bb60
bb60:
  MULW a0, t2, a2
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb61:
  JAL zero, bb60
bb62:
  JAL zero, bb58
bb63:
  REMW t0, t0, t1
  JAL zero, bb56
bb64:
  JAL zero, bb54
bb65:
  ADDI t1, zero, 1
  JAL zero, bb52
bb66:
  REMW t0, t0, t1
  JAL zero, bb50
bb67:
  JAL zero, bb48
bb68:
  REMW t2, t2, t3
  JAL zero, bb46
bb69:
  JAL zero, bb44
bb70:
  JAL zero, bb42
bb71:
  REMW s1, s1, t2
  JAL zero, bb40
bb72:
  JAL zero, bb38
bb73:
  ADDI t2, zero, 1
  JAL zero, bb36
bb74:
  ADD t0, t4, zero
  JAL zero, bb34
bb75:
  JAL zero, bb32
bb76:
  ADD t0, a4, zero
  JAL zero, bb30
bb77:
  ADDI t0, zero, 1
  JAL zero, bb28
bb78:
  REMW s4, s4, a6
  JAL zero, bb26
bb79:
  JAL zero, bb24
bb80:
  JAL zero, bb22
bb81:
  REMW a3, t1, a3
  JAL zero, bb20
bb82:
  ADDI a3, zero, 1
  JAL zero, bb18
bb83:
  ADDI t0, zero, 1
  JAL zero, bb16
bb84:
  SLTU t0, zero, t0
  JAL zero, bb14
bb85:
  ADDI t0, zero, 1
  JAL zero, bb12
bb86:
  JAL zero, bb10
bb87:
  REMW t0, t0, s3
  JAL zero, bb8
bb88:
  ADDI t0, zero, 1
  JAL zero, bb6
bb89:
  SLTU t0, zero, t1
  JAL zero, bb4
bb90:
  ADDI t0, zero, 1
  JAL zero, bb2
