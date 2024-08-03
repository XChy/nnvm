.global loop3
.global main
.section .bss
arr2:
.space 107520
arr1:
.space 57600
.section .data


.section .text
loop3:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD t3, a0, zero
  ADD a7, a1, zero
  ADD t4, a2, zero
  ADD t5, a3, zero
  ADD t2, a4, zero
  ADD a2, a5, zero
  ADD a4, a6, zero
  ADD a6, zero, zero
  ADD a5, zero, zero
  ADD a3, zero, zero
  ADD a1, zero, zero
  ADD a0, zero, zero
  ADD t1, zero, zero
  ADD t0, zero, zero
  # implict jump to bb1
bb1:
  ADD s1, t0, zero
  ADD s2, t1, zero
  ADD s0, a0, zero
  ADD t1, a1, zero
  ADD t0, a3, zero
  ADD a1, a5, zero
  ADD a0, a6, zero
  SLTI a3, a1, 10
  BNE a3, zero, bb4
  # implict jump to bb2
bb2:
  ADD t0, s1, zero
  # implict jump to bb3
bb3:
  ADD a0, t0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb4:
  ADD t6, a0, zero
  ADD a6, zero, zero
  ADD a5, t0, zero
  ADD a3, t1, zero
  ADD a0, s0, zero
  ADD t1, s2, zero
  ADD t0, s1, zero
  # implict jump to bb5
bb5:
  ADD s0, t0, zero
  ADD s1, a0, zero
  ADD s2, a3, zero
  ADD a0, a5, zero
  ADD a5, a6, zero
  ADD a3, t6, zero
  SLTI t0, a5, 100
  BNE t0, zero, bb10
  # implict jump to bb6
bb6:
  ADD t0, a3, zero
  ADD a6, a0, zero
  ADD a5, s2, zero
  ADD a3, s1, zero
  ADD a0, t1, zero
  ADD t1, s0, zero
  # implict jump to bb7
bb7:
  ADD s1, t1, zero
  ADD t6, a0, zero
  ADD t1, a3, zero
  ADD s0, a5, zero
  ADD a0, a6, zero
  ADD a3, t0, zero
  ADDIW a1, a1, 1
  SLT t0, a1, t3
  XORI t0, t0, 1
  BNE t0, zero, bb9
  # implict jump to bb8
bb8:
  ADD a6, a3, zero
  ADD a5, a1, zero
  ADD a3, a0, zero
  ADD a1, s0, zero
  ADD a0, t1, zero
  ADD t1, t6, zero
  ADD t0, s1, zero
  JAL zero, bb1
bb9:
  ADD t0, s1, zero
  JAL zero, bb3
bb10:
  ADD t6, zero, zero
  ADD a6, a0, zero
  ADD a3, s2, zero
  ADD a0, s1, zero
  ADD t0, s0, zero
  # implict jump to bb11
bb11:
  ADD s0, t0, zero
  ADD s1, t1, zero
  ADD s2, a0, zero
  ADD a0, a3, zero
  ADD t1, a6, zero
  ADD a3, t6, zero
  SLTI t0, a3, 1000
  BNE t0, zero, bb16
  # implict jump to bb12
bb12:
  ADD t0, a3, zero
  ADD t6, t1, zero
  ADD a6, a0, zero
  ADD a3, s2, zero
  ADD a0, s1, zero
  ADD t1, s0, zero
  # implict jump to bb13
bb13:
  ADD s0, t1, zero
  ADD s1, a0, zero
  ADD t1, a3, zero
  ADD s2, a6, zero
  ADD a3, t6, zero
  ADD a0, t0, zero
  ADDIW a5, a5, 1
  SLT t0, a5, a7
  XORI t0, t0, 1
  BNE t0, zero, bb15
  # implict jump to bb14
bb14:
  ADD t6, a0, zero
  ADD a6, a5, zero
  ADD a5, a3, zero
  ADD a3, s2, zero
  ADD a0, t1, zero
  ADD t1, s1, zero
  ADD t0, s0, zero
  JAL zero, bb5
bb15:
  ADD t0, a0, zero
  ADD a6, a3, zero
  ADD a5, s2, zero
  ADD a3, t1, zero
  ADD a0, s1, zero
  ADD t1, s0, zero
  JAL zero, bb7
bb16:
  ADD t6, zero, zero
  ADD a6, a0, zero
  ADD a0, s2, zero
  ADD t1, s1, zero
  ADD t0, s0, zero
  # implict jump to bb17
bb17:
  ADD s1, t0, zero
  ADD s0, t1, zero
  ADD t1, a0, zero
  ADD a0, a6, zero
  ADD a6, t6, zero
  LUI t0, 2
  ADDIW t0, t0, 1808
  SLT t0, a6, t0
  BNE t0, zero, bb22
  # implict jump to bb18
bb18:
  ADD t0, a6, zero
  ADD t6, a0, zero
  ADD a6, t1, zero
  ADD a0, s0, zero
  ADD t1, s1, zero
  # implict jump to bb19
bb19:
  ADD s0, t1, zero
  ADD s1, a0, zero
  ADD s2, a6, zero
  ADD a0, t6, zero
  ADD t1, t0, zero
  ADDIW a3, a3, 1
  SLT t0, a3, t4
  XORI t0, t0, 1
  BNE t0, zero, bb21
  # implict jump to bb20
bb20:
  ADD t6, a3, zero
  ADD a6, t1, zero
  ADD a3, a0, zero
  ADD a0, s2, zero
  ADD t1, s1, zero
  ADD t0, s0, zero
  JAL zero, bb11
bb21:
  ADD t0, a3, zero
  ADD t6, t1, zero
  ADD a6, a0, zero
  ADD a3, s2, zero
  ADD a0, s1, zero
  ADD t1, s0, zero
  JAL zero, bb13
bb22:
  ADD s0, a0, zero
  ADD t6, t1, zero
  ADD t1, zero, zero
  ADD t0, s1, zero
  # implict jump to bb23
bb23:
  ADD s1, t0, zero
  ADD a0, t1, zero
  ADD t1, t6, zero
  ADD t6, s0, zero
  LUI t0, 24
  ADDIW t0, t0, 1696
  SLT t0, a0, t0
  BNE t0, zero, bb28
  # implict jump to bb24
bb24:
  ADD t0, t6, zero
  ADD t6, t1, zero
  ADD t1, s1, zero
  # implict jump to bb25
bb25:
  ADD s0, t1, zero
  ADD s1, a0, zero
  ADD a0, t6, zero
  ADD t1, t0, zero
  ADDIW a6, a6, 1
  SLT t0, a6, t5
  XORI t0, t0, 1
  BNE t0, zero, bb27
  # implict jump to bb26
bb26:
  ADD t6, a6, zero
  ADD a6, t1, zero
  ADD t1, s1, zero
  ADD t0, s0, zero
  JAL zero, bb17
bb27:
  ADD t0, a6, zero
  ADD t6, t1, zero
  ADD a6, a0, zero
  ADD a0, s1, zero
  ADD t1, s0, zero
  JAL zero, bb19
bb28:
  ADD t6, zero, zero
  ADD t0, s1, zero
  # implict jump to bb29
bb29:
  ADD s0, t0, zero
  LUI t0, 244
  ADDIW t0, t0, 576
  SLT t0, t6, t0
  BNE t0, zero, bb34
  # implict jump to bb30
bb30:
  ADD t0, t6, zero
  ADD t6, t1, zero
  ADD t1, s0, zero
  # implict jump to bb31
bb31:
  ADD s1, t1, zero
  ADD s2, t6, zero
  ADD t6, t0, zero
  ADDIW t1, a0, 1
  SLT t0, t1, t2
  XORI t0, t0, 1
  BNE t0, zero, bb33
  # implict jump to bb32
bb32:
  ADD s0, t6, zero
  ADD t6, s2, zero
  ADD t0, s1, zero
  JAL zero, bb23
bb33:
  ADD t0, t6, zero
  ADD t6, s2, zero
  ADD a0, t1, zero
  ADD t1, s1, zero
  JAL zero, bb25
bb34:
  ADD t1, zero, zero
  ADD t0, s0, zero
  # implict jump to bb35
bb35:
  ADD s0, t0, zero
  LUI t0, 2441
  ADDIW t0, t0, 1664
  SLT t0, t1, t0
  BNE t0, zero, bb40
  # implict jump to bb36
bb36:
  ADD t0, t1, zero
  ADD t1, s0, zero
  # implict jump to bb37
bb37:
  ADD s0, t1, zero
  ADD s1, t0, zero
  ADDIW t1, t6, 1
  SLT t0, t1, a2
  XORI t0, t0, 1
  BNE t0, zero, bb39
  # implict jump to bb38
bb38:
  ADD t6, t1, zero
  ADD t1, s1, zero
  ADD t0, s0, zero
  JAL zero, bb29
bb39:
  ADD t0, t1, zero
  ADD t6, s1, zero
  ADD t1, s0, zero
  JAL zero, bb31
bb40:
  ADDI t0, zero, 817
  REMW s1, s0, t0
  LUI t0, 1
  ADDIW t0, t0, 1664
  MULW s0, a1, t0
  LA t0, arr1
  ADD s0, t0, s0
  LUI t0, 1
  ADDIW t0, t0, -1216
  MULW t0, a5, t0
  ADD s0, s0, t0
  ADDI t0, zero, 960
  MULW t0, a3, t0
  ADD s0, s0, t0
  ADDI t0, zero, 240
  MULW t0, a6, t0
  ADD s0, s0, t0
  ADDI t0, zero, 48
  MULW t0, a0, t0
  ADD s0, s0, t0
  SLLIW t0, t6, 3
  ADD t0, s0, t0
  SLLIW s0, t1, 2
  ADD t0, t0, s0
  LW t0, 0(t0)
  ADDW s1, s1, t0
  LUI t0, 3
  ADDIW t0, t0, -1536
  MULW s2, a1, t0
  LA t0, arr2
  ADD s2, t0, s2
  LUI t0, 1
  ADDIW t0, t0, 1280
  MULW t0, a5, t0
  ADD s2, s2, t0
  ADDI t0, zero, 1792
  MULW t0, a3, t0
  ADD s2, s2, t0
  ADDI t0, zero, 896
  MULW t0, a6, t0
  ADD s2, s2, t0
  ADDI t0, zero, 224
  MULW t0, a0, t0
  ADD s2, s2, t0
  ADDI t0, zero, 28
  MULW t0, t6, t0
  ADD t0, s2, t0
  ADD t0, t0, s0
  LW t0, 0(t0)
  ADDW s0, s1, t0
  ADDIW t1, t1, 1
  SLT t0, t1, a4
  XORI t0, t0, 1
  BNE t0, zero, bb42
  # implict jump to bb41
bb41:
  ADD t0, s0, zero
  JAL zero, bb35
bb42:
  ADD t0, t1, zero
  ADD t1, s0, zero
  JAL zero, bb37
main:
  ADDI sp, sp, -112
  SD s1, 8(sp)
  SD s2, 16(sp)
  SD s3, 24(sp)
  SD s4, 32(sp)
  SD s5, 40(sp)
  SD s6, 48(sp)
  SD s7, 56(sp)
  SD s8, 64(sp)
  SD s9, 72(sp)
  SD s10, 80(sp)
  SD ra, 88(sp)
  SD s0, 96(sp)
  CALL getint
  ADD s3, a0, zero
  CALL getint
  ADD s4, a0, zero
  CALL getint
  ADD s9, a0, zero
  CALL getint
  ADD s0, a0, zero
  SW s0, 4(sp)
  CALL getint
  ADD s8, a0, zero
  CALL getint
  ADD s7, a0, zero
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(sp)
  CALL getint
  ADD s6, a0, zero
  CALL getint
  ADD s5, a0, zero
  ADD a0, zero, zero
  # implict jump to bb44
bb44:
  ADD s10, a0, zero
  BLT s10, s3, bb100
  # implict jump to bb45
bb45:
  ADD a0, zero, zero
  # implict jump to bb46
bb46:
  BNE a0, zero, bb75
  # implict jump to bb47
bb47:
  ADD a0, zero, zero
  # implict jump to bb48
bb48:
  ADD s0, a0, zero
  ADD a0, zero, zero
  # implict jump to bb49
bb49:
  ADD s3, a0, zero
  ADD a0, zero, zero
  # implict jump to bb50
bb50:
  ADD a6, a0, zero
  ADD a0, zero, zero
  # implict jump to bb51
bb51:
  ADD a4, a0, zero
  ADD a0, zero, zero
  # implict jump to bb52
bb52:
  ADD s2, a0, zero
  ADD a0, zero, zero
  # implict jump to bb53
bb53:
  ADD s1, a0, zero
  LUI a0, 3
  ADDIW a0, a0, -1536
  MULW a1, s0, a0
  LA a0, arr2
  ADD a1, a0, a1
  LUI a0, 1
  ADDIW a0, a0, 1280
  MULW a0, s3, a0
  ADD a1, a1, a0
  ADDI a0, zero, 1792
  MULW a0, a6, a0
  ADD a1, a1, a0
  ADDI a0, zero, 896
  MULW a0, a4, a0
  ADD a1, a1, a0
  ADDI a0, zero, 224
  MULW a0, s2, a0
  ADD a1, a1, a0
  ADDI a0, zero, 28
  MULW a0, s1, a0
  ADD a5, a1, a0
  ADDW a0, s0, s3
  ADDW a3, a0, a4
  ADD a0, zero, zero
  # implict jump to bb54
bb54:
  ADD a2, a0, zero
  SLLIW a0, a2, 2
  ADD a1, a5, a0
  ADDW a0, a3, a2
  SW a0, 0(a1)
  ADDIW a1, a2, 1
  SLTI a0, a1, 7
  BNE a0, zero, bb74
  # implict jump to bb55
bb55:
  # implict jump to bb56
bb56:
  ADDIW a0, s1, 1
  SLTI a1, a0, 8
  BNE a1, zero, bb73
  # implict jump to bb57
bb57:
  # implict jump to bb58
bb58:
  ADDIW a1, s2, 1
  SLTI a0, a1, 4
  BNE a0, zero, bb72
  # implict jump to bb59
bb59:
  # implict jump to bb60
bb60:
  ADDIW a1, a4, 1
  SLTI a0, a1, 2
  BNE a0, zero, bb71
  # implict jump to bb61
bb61:
  # implict jump to bb62
bb62:
  ADDIW a0, a6, 1
  SLTI a1, a0, 3
  BNE a1, zero, bb70
  # implict jump to bb63
bb63:
  # implict jump to bb64
bb64:
  ADDIW a1, s3, 1
  SLTI a0, a1, 2
  BNE a0, zero, bb69
  # implict jump to bb65
bb65:
  # implict jump to bb66
bb66:
  ADDIW a1, s0, 1
  SLTI a0, a1, 10
  BNE a0, zero, bb68
  # implict jump to bb67
bb67:
  ADD a0, s9, zero
  LW a1, 4(sp)
  ADD a2, s8, zero
  ADD a3, s7, zero
  LW a4, 0(sp)
  ADD a5, s6, zero
  ADD a6, s5, zero
  CALL loop3
  ADD t0, a0, zero
  ADD a0, t0, zero
  LD s1, 8(sp)
  LD s2, 16(sp)
  LD s3, 24(sp)
  LD s4, 32(sp)
  LD s5, 40(sp)
  LD s6, 48(sp)
  LD s7, 56(sp)
  LD s8, 64(sp)
  LD s9, 72(sp)
  LD s10, 80(sp)
  LD ra, 88(sp)
  LD s0, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb68:
  ADD a0, a1, zero
  JAL zero, bb48
bb69:
  ADD a0, a1, zero
  JAL zero, bb49
bb70:
  JAL zero, bb50
bb71:
  ADD a0, a1, zero
  JAL zero, bb51
bb72:
  ADD a0, a1, zero
  JAL zero, bb52
bb73:
  JAL zero, bb53
bb74:
  ADD a0, a1, zero
  JAL zero, bb54
bb75:
  ADD a0, zero, zero
  # implict jump to bb76
bb76:
  ADD s1, a0, zero
  ADD a0, zero, zero
  # implict jump to bb77
bb77:
  ADD s2, a0, zero
  ADD a0, zero, zero
  # implict jump to bb78
bb78:
  ADD s0, a0, zero
  ADD a0, zero, zero
  # implict jump to bb79
bb79:
  ADD a4, a0, zero
  ADD a0, zero, zero
  # implict jump to bb80
bb80:
  ADD a3, a0, zero
  LUI a0, 1
  ADDIW a0, a0, 1664
  MULW a1, s10, a0
  LA a0, arr1
  ADD a1, a0, a1
  LUI a0, 1
  ADDIW a0, a0, -1216
  MULW a0, s1, a0
  ADD a1, a1, a0
  ADDI a0, zero, 960
  MULW a0, s2, a0
  ADD a1, a1, a0
  ADDI a0, zero, 240
  MULW a0, s0, a0
  ADD a1, a1, a0
  ADDI a0, zero, 48
  MULW a0, a4, a0
  ADD a1, a1, a0
  SLLIW a0, a3, 3
  ADD a6, a1, a0
  ADDW a0, s10, s1
  ADDW a0, a0, s2
  ADDW a0, a0, s0
  ADDW a0, a0, a4
  ADDW a5, a0, a3
  ADD a0, zero, zero
  # implict jump to bb81
bb81:
  ADD a2, a0, zero
  SLLIW a0, a2, 2
  ADD a1, a6, a0
  ADDW a0, a5, a2
  ADDW a0, a0, s3
  ADDW a0, a0, s4
  SW a0, 0(a1)
  ADDIW a1, a2, 1
  SLTI a0, a1, 2
  BNE a0, zero, bb99
  # implict jump to bb82
bb82:
  # implict jump to bb83
bb83:
  ADDIW a1, a3, 1
  SLTI a0, a1, 6
  BNE a0, zero, bb98
  # implict jump to bb84
bb84:
  # implict jump to bb85
bb85:
  ADDIW a1, a4, 1
  SLTI a0, a1, 5
  BNE a0, zero, bb97
  # implict jump to bb86
bb86:
  # implict jump to bb87
bb87:
  ADDIW a1, s0, 1
  SLTI a0, a1, 4
  BNE a0, zero, bb96
  # implict jump to bb88
bb88:
  # implict jump to bb89
bb89:
  ADDIW a1, s2, 1
  SLTI a0, a1, 3
  BNE a0, zero, bb95
  # implict jump to bb90
bb90:
  # implict jump to bb91
bb91:
  ADDIW a1, s1, 1
  SLTI a0, a1, 2
  BNE a0, zero, bb94
  # implict jump to bb92
bb92:
  # implict jump to bb93
bb93:
  ADDIW a0, s10, 1
  JAL zero, bb44
bb94:
  ADD a0, a1, zero
  JAL zero, bb76
bb95:
  ADD a0, a1, zero
  JAL zero, bb77
bb96:
  ADD a0, a1, zero
  JAL zero, bb78
bb97:
  ADD a0, a1, zero
  JAL zero, bb79
bb98:
  ADD a0, a1, zero
  JAL zero, bb80
bb99:
  ADD a0, a1, zero
  JAL zero, bb81
bb100:
  SLT a0, s10, s4
  JAL zero, bb46
