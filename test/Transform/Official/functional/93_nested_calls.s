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
  ADD s2, a0, zero
  CALL getint
  ADD s3, a0, zero
  CALL getint
  ADD s1, a0, zero
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
  SUBW t1, zero, s2
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
  SLTU t3, zero, s3
  BNE s3, zero, bb87
  # implict jump to bb7
bb7:
  # implict jump to bb8
bb8:
  SLTIU t5, s1, 1
  BNE t5, zero, bb86
  # implict jump to bb9
bb9:
  ADDW t0, t0, s1
  # implict jump to bb10
bb10:
  ADDIW t0, t0, 1
  SUBW s3, zero, t0
  LW t2, 48(sp)
  LW t4, 52(sp)
  SUBW a3, zero, t4
  LW a7, 56(sp)
  LW t0, 60(sp)
  SLTU t1, zero, t0
  XORI t1, t1, 1
  BNE t1, zero, bb85
  # implict jump to bb11
bb11:
  ADD t1, zero, zero
  # implict jump to bb12
bb12:
  BNE a7, zero, bb84
  # implict jump to bb13
bb13:
  ADD t1, zero, zero
  # implict jump to bb14
bb14:
  BNE t1, zero, bb83
  # implict jump to bb15
bb15:
  ADD t1, zero, zero
  # implict jump to bb16
bb16:
  LW a2, 64(sp)
  LW a6, 68(sp)
  SLTU a1, zero, a6
  XORI a1, a1, 1
  BNE a1, zero, bb82
  # implict jump to bb17
bb17:
  ADD a1, zero, zero
  # implict jump to bb18
bb18:
  BNE a1, zero, bb81
  # implict jump to bb19
bb19:
  ADD a1, a2, zero
  # implict jump to bb20
bb20:
  BNE a3, zero, bb80
  # implict jump to bb21
bb21:
  ADD t1, a1, zero
  # implict jump to bb22
bb22:
  LW a4, 72(sp)
  SLTIU a1, a4, 1
  BNE a1, zero, bb79
  # implict jump to bb23
bb23:
  ADDW t1, t1, a4
  # implict jump to bb24
bb24:
  ADDIW s4, t1, 1
  LW t1, 76(sp)
  BNE t1, zero, bb78
  # implict jump to bb25
bb25:
  # implict jump to bb26
bb26:
  LW a5, 80(sp)
  SLTU a1, zero, a0
  XORI a1, a1, 1
  BNE a1, zero, bb77
  # implict jump to bb27
bb27:
  ADD a1, zero, zero
  # implict jump to bb28
bb28:
  SLTIU a3, a1, 1
  BNE a3, zero, bb76
  # implict jump to bb29
bb29:
  ADDW a1, a5, a1
  # implict jump to bb30
bb30:
  ADDIW a1, a1, 1
  SLTIU a3, s0, 1
  BNE a3, zero, bb75
  # implict jump to bb31
bb31:
  SUBW a1, a1, s0
  # implict jump to bb32
bb32:
  MULW a1, s4, a1
  BNE s3, zero, bb74
  # implict jump to bb33
bb33:
  # implict jump to bb34
bb34:
  XORI t3, t3, 1
  BNE t3, zero, bb73
  # implict jump to bb35
bb35:
  ADD t3, zero, zero
  # implict jump to bb36
bb36:
  BNE t5, zero, bb72
  # implict jump to bb37
bb37:
  ADDW t3, t3, s1
  # implict jump to bb38
bb38:
  ADDIW t3, t3, 1
  BNE t3, zero, bb71
  # implict jump to bb39
bb39:
  # implict jump to bb40
bb40:
  SLTIU t3, s2, 1
  BNE t3, zero, bb70
  # implict jump to bb41
bb41:
  ADDW a1, a1, s2
  # implict jump to bb42
bb42:
  ADDIW a1, a1, 1
  SLTIU t3, t4, 1
  BNE t3, zero, bb69
  # implict jump to bb43
bb43:
  SUBW t2, t2, t4
  # implict jump to bb44
bb44:
  MULW t2, a1, t2
  BNE a7, zero, bb68
  # implict jump to bb45
bb45:
  # implict jump to bb46
bb46:
  SUBW a1, zero, a6
  SLTIU a6, a1, 1
  BNE a6, zero, bb67
  # implict jump to bb47
bb47:
  ADDW a2, a2, a1
  # implict jump to bb48
bb48:
  ADDIW a1, a2, 1
  SUBW a2, zero, a4
  BNE a2, zero, bb66
  # implict jump to bb49
bb49:
  # implict jump to bb50
bb50:
  SLTU a2, zero, a5
  XORI a2, a2, 1
  BNE a2, zero, bb65
  # implict jump to bb51
bb51:
  ADD a2, zero, zero
  # implict jump to bb52
bb52:
  SLTIU a4, a2, 1
  BNE a4, zero, bb64
  # implict jump to bb53
bb53:
  SUBW t1, t1, a2
  # implict jump to bb54
bb54:
  MULW t1, a1, t1
  SUBW a0, zero, a0
  BNE a0, zero, bb63
  # implict jump to bb55
bb55:
  # implict jump to bb56
bb56:
  BNE a3, zero, bb62
  # implict jump to bb57
bb57:
  ADDW t1, t1, s0
  # implict jump to bb58
bb58:
  ADDIW t1, t1, 1
  SLTIU a0, t1, 1
  BNE a0, zero, bb61
  # implict jump to bb59
bb59:
  SUBW t0, t0, t1
  # implict jump to bb60
bb60:
  MULW a0, t2, t0
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
  REMW t1, t1, a0
  JAL zero, bb56
bb64:
  JAL zero, bb54
bb65:
  ADDI a2, zero, 1
  JAL zero, bb52
bb66:
  REMW a1, a1, a2
  JAL zero, bb50
bb67:
  JAL zero, bb48
bb68:
  REMW t2, t2, a7
  JAL zero, bb46
bb69:
  JAL zero, bb44
bb70:
  JAL zero, bb42
bb71:
  REMW s2, s2, t3
  JAL zero, bb40
bb72:
  JAL zero, bb38
bb73:
  ADDI t3, zero, 1
  JAL zero, bb36
bb74:
  ADD a1, t2, zero
  JAL zero, bb34
bb75:
  JAL zero, bb32
bb76:
  ADD a1, a5, zero
  JAL zero, bb30
bb77:
  ADDI a1, zero, 1
  JAL zero, bb28
bb78:
  REMW s4, s4, t1
  JAL zero, bb26
bb79:
  JAL zero, bb24
bb80:
  JAL zero, bb22
bb81:
  REMW a1, a2, a1
  JAL zero, bb20
bb82:
  ADDI a1, zero, 1
  JAL zero, bb18
bb83:
  ADDI t1, zero, 1
  JAL zero, bb16
bb84:
  SLTU t1, zero, t1
  JAL zero, bb14
bb85:
  ADDI t1, zero, 1
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
