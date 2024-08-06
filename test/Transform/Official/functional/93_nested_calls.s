.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
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
bb1:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb2
bb2:   # loop depth 0
  SUBW t1, zero, s1
  BNE t0, zero, bb89
  # implict jump to bb3
bb3:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb4
bb4:   # loop depth 0
  BNE t0, zero, bb88
  # implict jump to bb5
bb5:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb6
bb6:   # loop depth 0
  SLTU t2, zero, s3
  BNE s3, zero, bb87
  # implict jump to bb7
bb7:   # loop depth 1433760752
  # implict jump to bb8
bb8:   # loop depth 0
  SLTIU t5, s2, 1
  BNE t5, zero, bb86
  # implict jump to bb9
bb9:   # loop depth 0
  ADDW t0, t0, s2
  # implict jump to bb10
bb10:   # loop depth 0
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
bb11:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb12
bb12:   # loop depth 0
  BNE t3, zero, bb84
  # implict jump to bb13
bb13:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb14
bb14:   # loop depth 0
  BNE t0, zero, bb83
  # implict jump to bb15
bb15:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb16
bb16:   # loop depth 0
  LW t1, 64(sp)
  LW a1, 68(sp)
  SLTU a3, zero, a1
  XORI a3, a3, 1
  BNE a3, zero, bb82
  # implict jump to bb17
bb17:   # loop depth 0
  ADD a3, zero, zero
  # implict jump to bb18
bb18:   # loop depth 0
  BNE a3, zero, bb81
  # implict jump to bb19
bb19:   # loop depth 1433577264
  ADD a3, t1, zero
  # implict jump to bb20
bb20:   # loop depth 0
  BNE a4, zero, bb80
  # implict jump to bb21
bb21:   # loop depth 0
  ADD t0, a3, zero
  # implict jump to bb22
bb22:   # loop depth 0
  LW a3, 72(sp)
  SLTIU a4, a3, 1
  BNE a4, zero, bb79
  # implict jump to bb23
bb23:   # loop depth 0
  ADDW t0, t0, a3
  # implict jump to bb24
bb24:   # loop depth 0
  ADDIW s4, t0, 1
  LW a6, 76(sp)
  BNE a6, zero, bb78
  # implict jump to bb25
bb25:   # loop depth 1433701040
  # implict jump to bb26
bb26:   # loop depth 0
  LW a4, 80(sp)
  SLTU t0, zero, a0
  XORI t0, t0, 1
  BNE t0, zero, bb77
  # implict jump to bb27
bb27:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb28
bb28:   # loop depth 0
  SLTIU a5, t0, 1
  BNE a5, zero, bb76
  # implict jump to bb29
bb29:   # loop depth 0
  ADDW t0, a4, t0
  # implict jump to bb30
bb30:   # loop depth 0
  ADDIW t0, t0, 1
  SLTIU a5, s0, 1
  BNE a5, zero, bb75
  # implict jump to bb31
bb31:   # loop depth 0
  SUBW t0, t0, s0
  # implict jump to bb32
bb32:   # loop depth 0
  MULW t0, s4, t0
  BNE s3, zero, bb74
  # implict jump to bb33
bb33:   # loop depth 0
  # implict jump to bb34
bb34:   # loop depth 0
  XORI t2, t2, 1
  BNE t2, zero, bb73
  # implict jump to bb35
bb35:   # loop depth 0
  ADD t2, zero, zero
  # implict jump to bb36
bb36:   # loop depth 0
  BNE t5, zero, bb72
  # implict jump to bb37
bb37:   # loop depth 0
  ADDW t2, t2, s2
  # implict jump to bb38
bb38:   # loop depth 0
  ADDIW t2, t2, 1
  BNE t2, zero, bb71
  # implict jump to bb39
bb39:   # loop depth 1433774976
  # implict jump to bb40
bb40:   # loop depth 0
  SLTIU t2, s1, 1
  BNE t2, zero, bb70
  # implict jump to bb41
bb41:   # loop depth 0
  ADDW t0, t0, s1
  # implict jump to bb42
bb42:   # loop depth 0
  ADDIW t0, t0, 1
  SLTIU t2, a7, 1
  BNE t2, zero, bb69
  # implict jump to bb43
bb43:   # loop depth 0
  SUBW t4, t4, a7
  # implict jump to bb44
bb44:   # loop depth 0
  MULW t2, t0, t4
  BNE t3, zero, bb68
  # implict jump to bb45
bb45:   # loop depth 1433777104
  # implict jump to bb46
bb46:   # loop depth 0
  SUBW t0, zero, a1
  SLTIU a1, t0, 1
  BNE a1, zero, bb67
  # implict jump to bb47
bb47:   # loop depth 0
  ADDW t1, t1, t0
  # implict jump to bb48
bb48:   # loop depth 0
  ADDIW t0, t1, 1
  SUBW t1, zero, a3
  BNE t1, zero, bb66
  # implict jump to bb49
bb49:   # loop depth 1433778416
  # implict jump to bb50
bb50:   # loop depth 0
  SLTU t1, zero, a4
  XORI t1, t1, 1
  BNE t1, zero, bb65
  # implict jump to bb51
bb51:   # loop depth 0
  ADD t1, zero, zero
  # implict jump to bb52
bb52:   # loop depth 0
  SLTIU a1, t1, 1
  BNE a1, zero, bb64
  # implict jump to bb53
bb53:   # loop depth 0
  SUBW a6, a6, t1
  # implict jump to bb54
bb54:   # loop depth 0
  MULW t0, t0, a6
  SUBW t1, zero, a0
  BNE t1, zero, bb63
  # implict jump to bb55
bb55:   # loop depth 1433779936
  # implict jump to bb56
bb56:   # loop depth 0
  BNE a5, zero, bb62
  # implict jump to bb57
bb57:   # loop depth 0
  ADDW t0, t0, s0
  # implict jump to bb58
bb58:   # loop depth 0
  ADDIW t0, t0, 1
  SLTIU t1, t0, 1
  BNE t1, zero, bb61
  # implict jump to bb59
bb59:   # loop depth 0
  SUBW a2, a2, t0
  # implict jump to bb60
bb60:   # loop depth 0
  MULW a0, t2, a2
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb61:   # loop depth 1433491200
  JAL zero, bb60
bb62:   # loop depth 1433792096
  JAL zero, bb58
bb63:   # loop depth 0
  REMW t0, t0, t1
  JAL zero, bb56
bb64:   # loop depth 1433590496
  JAL zero, bb54
bb65:   # loop depth 0
  ADDI t1, zero, 1
  JAL zero, bb52
bb66:   # loop depth 0
  REMW t0, t0, t1
  JAL zero, bb50
bb67:   # loop depth 1433790576
  JAL zero, bb48
bb68:   # loop depth 0
  REMW t2, t2, t3
  JAL zero, bb46
bb69:   # loop depth 32
  JAL zero, bb44
bb70:   # loop depth 1433789056
  JAL zero, bb42
bb71:   # loop depth 0
  REMW s1, s1, t2
  JAL zero, bb40
bb72:   # loop depth 1433787536
  JAL zero, bb38
bb73:   # loop depth 0
  ADDI t2, zero, 1
  JAL zero, bb36
bb74:   # loop depth 0
  ADD t0, t4, zero
  JAL zero, bb34
bb75:   # loop depth 1433793824
  JAL zero, bb32
bb76:   # loop depth 1433785840
  ADD t0, a4, zero
  JAL zero, bb30
bb77:   # loop depth 0
  ADDI t0, zero, 1
  JAL zero, bb28
bb78:   # loop depth 0
  REMW s4, s4, a6
  JAL zero, bb26
bb79:   # loop depth 1433782560
  JAL zero, bb24
bb80:   # loop depth 0
  JAL zero, bb22
bb81:   # loop depth 0
  REMW a3, t1, a3
  JAL zero, bb20
bb82:   # loop depth 0
  ADDI a3, zero, 1
  JAL zero, bb18
bb83:   # loop depth 0
  ADDI t0, zero, 1
  JAL zero, bb16
bb84:   # loop depth 0
  SLTU t0, zero, t0
  JAL zero, bb14
bb85:   # loop depth 0
  ADDI t0, zero, 1
  JAL zero, bb12
bb86:   # loop depth 1433781888
  JAL zero, bb10
bb87:   # loop depth 0
  REMW t0, t0, s3
  JAL zero, bb8
bb88:   # loop depth 0
  ADDI t0, zero, 1
  JAL zero, bb6
bb89:   # loop depth 0
  SLTU t0, zero, t1
  JAL zero, bb4
bb90:   # loop depth 0
  ADDI t0, zero, 1
  JAL zero, bb2
