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
  ADD a7, a0, zero
  ADD t3, a1, zero
  ADD t4, a2, zero
  ADD t5, a3, zero
  ADD t6, a4, zero
  ADD s0, a5, zero
  ADD t0, zero, zero
  ADD t1, zero, zero
  ADD t2, zero, zero
  ADD a0, zero, zero
  ADD a1, zero, zero
  ADD a2, zero, zero
  ADD a3, zero, zero
  # implict jump to bb1
bb1:
  SLTI a4, t1, 10
  BNE a4, zero, bb4
  # implict jump to bb2
bb2:
  ADD t0, a3, zero
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
  ADD a5, zero, zero
  # implict jump to bb5
bb5:
  ADD a4, a3, zero
  ADD a3, a2, zero
  ADD a2, a1, zero
  ADD a1, a0, zero
  ADD a0, t2, zero
  ADD t2, a5, zero
  SLTI a5, t2, 100
  BNE a5, zero, bb10
  # implict jump to bb6
bb6:
  ADD t2, a0, zero
  ADD a0, a1, zero
  ADD a1, a2, zero
  ADD a2, a3, zero
  ADD a3, a4, zero
  # implict jump to bb7
bb7:
  ADDIW t1, t1, 1
  SLT a4, t1, a7
  XORI a4, a4, 1
  BNE a4, zero, bb9
  # implict jump to bb8
bb8:
  JAL zero, bb1
bb9:
  ADD t0, a3, zero
  JAL zero, bb3
bb10:
  ADD t0, zero, zero
  # implict jump to bb11
bb11:
  SLTI a5, t0, 1000
  BNE a5, zero, bb16
  # implict jump to bb12
bb12:
  # implict jump to bb13
bb13:
  ADDIW t2, t2, 1
  SLT a5, t2, t3
  XORI a5, a5, 1
  BNE a5, zero, bb15
  # implict jump to bb14
bb14:
  ADD a5, t2, zero
  ADD t2, a0, zero
  ADD a0, a1, zero
  ADD a1, a2, zero
  ADD a2, a3, zero
  ADD a3, a4, zero
  JAL zero, bb5
bb15:
  ADD t2, a0, zero
  ADD a0, a1, zero
  ADD a1, a2, zero
  ADD a2, a3, zero
  ADD a3, a4, zero
  JAL zero, bb7
bb16:
  ADD a0, zero, zero
  # implict jump to bb17
bb17:
  LUI a5, 2
  ADDIW a5, a5, 1808
  SLT a5, a0, a5
  BNE a5, zero, bb22
  # implict jump to bb18
bb18:
  # implict jump to bb19
bb19:
  ADDIW t0, t0, 1
  SLT a5, t0, t4
  XORI a5, a5, 1
  BNE a5, zero, bb21
  # implict jump to bb20
bb20:
  JAL zero, bb11
bb21:
  JAL zero, bb13
bb22:
  ADD a3, zero, zero
  # implict jump to bb23
bb23:
  LUI a5, 24
  ADDIW a5, a5, 1696
  SLT a5, a3, a5
  BNE a5, zero, bb28
  # implict jump to bb24
bb24:
  # implict jump to bb25
bb25:
  ADDIW a0, a0, 1
  SLT a5, a0, t5
  XORI a5, a5, 1
  BNE a5, zero, bb27
  # implict jump to bb26
bb26:
  JAL zero, bb17
bb27:
  JAL zero, bb19
bb28:
  ADD a1, zero, zero
  # implict jump to bb29
bb29:
  LUI a5, 244
  ADDIW a5, a5, 576
  SLT a5, a1, a5
  BNE a5, zero, bb34
  # implict jump to bb30
bb30:
  # implict jump to bb31
bb31:
  ADDIW a3, a3, 1
  SLT a5, a3, t6
  XORI a5, a5, 1
  BNE a5, zero, bb33
  # implict jump to bb32
bb32:
  JAL zero, bb23
bb33:
  JAL zero, bb25
bb34:
  ADD a2, zero, zero
  # implict jump to bb35
bb35:
  LUI a5, 2441
  ADDIW a5, a5, 1664
  SLT a5, a2, a5
  BNE a5, zero, bb40
  # implict jump to bb36
bb36:
  # implict jump to bb37
bb37:
  ADDIW a1, a1, 1
  SLT a5, a1, s0
  XORI a5, a5, 1
  BNE a5, zero, bb39
  # implict jump to bb38
bb38:
  JAL zero, bb29
bb39:
  JAL zero, bb31
bb40:
  ADDI a5, zero, 817
  REMW a4, a4, a5
  LUI a5, 1
  ADDIW a5, a5, 1664
  MULW a5, t1, a5
  LA s1, arr1
  ADD a5, s1, a5
  LUI s1, 1
  ADDIW s1, s1, -1216
  MULW s1, t2, s1
  ADD a5, a5, s1
  ADDI s1, zero, 960
  MULW s1, t0, s1
  ADD a5, a5, s1
  ADDI s1, zero, 240
  MULW s1, a0, s1
  ADD a5, a5, s1
  ADDI s1, zero, 48
  MULW s1, a3, s1
  ADD a5, a5, s1
  SLLIW s1, a1, 3
  ADD a5, a5, s1
  SLLIW s1, a2, 2
  ADD a5, a5, s1
  LW a5, 0(a5)
  ADDW a4, a4, a5
  LUI a5, 3
  ADDIW a5, a5, -1536
  MULW a5, t1, a5
  LA s2, arr2
  ADD a5, s2, a5
  LUI s2, 1
  ADDIW s2, s2, 1280
  MULW s2, t2, s2
  ADD a5, a5, s2
  ADDI s2, zero, 1792
  MULW s2, t0, s2
  ADD a5, a5, s2
  ADDI s2, zero, 896
  MULW s2, a0, s2
  ADD a5, a5, s2
  ADDI s2, zero, 224
  MULW s2, a3, s2
  ADD a5, a5, s2
  ADDI s2, zero, 28
  MULW s2, a1, s2
  ADD a5, a5, s2
  ADD a5, a5, s1
  LW a5, 0(a5)
  ADDW a4, a4, a5
  ADDIW a2, a2, 1
  SLT a5, a2, a6
  XORI a5, a5, 1
  BNE a5, zero, bb42
  # implict jump to bb41
bb41:
  JAL zero, bb35
bb42:
  JAL zero, bb37
main:
  ADDI sp, sp, -128
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  SD s10, 104(sp)
  SD s11, 112(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s1, a0, zero
  CALL getint
  ADD s2, a0, zero
  CALL getint
  ADD s3, a0, zero
  CALL getint
  ADD s4, a0, zero
  CALL getint
  ADD s5, a0, zero
  CALL getint
  ADD s6, a0, zero
  CALL getint
  ADD s7, a0, zero
  SW s7, 12(sp)
  CALL getint
  ADD a6, a0, zero
  ADD a0, zero, zero
  # implict jump to bb44
bb44:
  BLT a0, s0, bb88
  # implict jump to bb45
bb45:
  ADD a1, zero, zero
  # implict jump to bb46
bb46:
  BNE a1, zero, bb69
  # implict jump to bb47
bb47:
  ADD a0, zero, zero
  # implict jump to bb48
bb48:
  ADD a1, zero, zero
  # implict jump to bb49
bb49:
  ADD a2, zero, zero
  # implict jump to bb50
bb50:
  ADD a3, zero, zero
  # implict jump to bb51
bb51:
  ADD a4, zero, zero
  # implict jump to bb52
bb52:
  ADD a5, zero, zero
  # implict jump to bb53
bb53:
  LUI s0, 3
  ADDIW s0, s0, -1536
  MULW s0, a0, s0
  LA s1, arr2
  ADD s0, s1, s0
  LUI s1, 1
  ADDIW s1, s1, 1280
  MULW s1, a1, s1
  ADD s0, s0, s1
  ADDI s1, zero, 1792
  MULW s1, a2, s1
  ADD s0, s0, s1
  ADDI s1, zero, 896
  MULW s1, a3, s1
  ADD s0, s0, s1
  ADDI s1, zero, 224
  MULW s1, a4, s1
  ADD s0, s0, s1
  ADDI s1, zero, 28
  MULW s1, a5, s1
  ADD s0, s0, s1
  ADDW s1, a0, a1
  ADDW s1, s1, a3
  ADD s8, zero, zero
  # implict jump to bb54
bb54:
  SLLIW s9, s8, 2
  ADD s9, s0, s9
  ADDW s10, s1, s8
  SW s10, 0(s9)
  ADDIW s8, s8, 1
  SLTI s9, s8, 7
  BNE s9, zero, bb68
  # implict jump to bb55
bb55:
  ADDIW a5, a5, 1
  SLTI s0, a5, 8
  BNE s0, zero, bb67
  # implict jump to bb56
bb56:
  ADDIW a4, a4, 1
  SLTI a5, a4, 4
  BNE a5, zero, bb66
  # implict jump to bb57
bb57:
  ADDIW a3, a3, 1
  SLTI a4, a3, 2
  BNE a4, zero, bb65
  # implict jump to bb58
bb58:
  ADDIW a2, a2, 1
  SLTI a3, a2, 3
  BNE a3, zero, bb64
  # implict jump to bb59
bb59:
  ADDIW a1, a1, 1
  SLTI a2, a1, 2
  BNE a2, zero, bb63
  # implict jump to bb60
bb60:
  ADDIW a0, a0, 1
  SLTI a1, a0, 10
  BNE a1, zero, bb62
  # implict jump to bb61
bb61:
  ADD a0, s2, zero
  ADD a1, s3, zero
  ADD a2, s4, zero
  ADD a3, s5, zero
  ADD a4, s6, zero
  LW a5, 12(sp)
  CALL loop3
  ADD t0, a0, zero
  ADD a0, t0, zero
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  LD s10, 104(sp)
  LD s11, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb62:
  JAL zero, bb48
bb63:
  JAL zero, bb49
bb64:
  JAL zero, bb50
bb65:
  JAL zero, bb51
bb66:
  JAL zero, bb52
bb67:
  JAL zero, bb53
bb68:
  JAL zero, bb54
bb69:
  ADD a1, zero, zero
  # implict jump to bb70
bb70:
  ADD a2, zero, zero
  # implict jump to bb71
bb71:
  ADD a3, zero, zero
  # implict jump to bb72
bb72:
  ADD a4, zero, zero
  # implict jump to bb73
bb73:
  ADD a5, zero, zero
  # implict jump to bb74
bb74:
  LUI s8, 1
  ADDIW s8, s8, 1664
  MULW s8, a0, s8
  LA s9, arr1
  ADD s8, s9, s8
  LUI s9, 1
  ADDIW s9, s9, -1216
  MULW s9, a1, s9
  ADD s8, s8, s9
  ADDI s9, zero, 960
  MULW s9, a2, s9
  ADD s8, s8, s9
  ADDI s9, zero, 240
  MULW s9, a3, s9
  ADD s8, s8, s9
  ADDI s9, zero, 48
  MULW s9, a4, s9
  ADD s8, s8, s9
  SLLIW s9, a5, 3
  ADD s8, s8, s9
  ADDW s9, a0, a1
  ADDW s9, s9, a2
  ADDW s9, s9, a3
  ADDW s9, s9, a4
  ADDW s11, s9, a5
  ADD s9, zero, zero
  # implict jump to bb75
bb75:
  SLLIW s10, s9, 2
  ADD s10, s8, s10
  ADDW s7, s11, s9
  SW s7, 8(sp)
  LW s7, 8(sp)
  ADDW s7, s7, s0
  SW s7, 4(sp)
  LW s7, 4(sp)
  ADDW s7, s7, s1
  SW s7, 0(sp)
  LW s7, 0(sp)
  SW s7, 0(s10)
  ADDIW s9, s9, 1
  SLTI s10, s9, 2
  BNE s10, zero, bb87
  # implict jump to bb76
bb76:
  ADDIW a5, a5, 1
  SLTI s8, a5, 6
  BNE s8, zero, bb86
  # implict jump to bb77
bb77:
  ADDIW a4, a4, 1
  SLTI a5, a4, 5
  BNE a5, zero, bb85
  # implict jump to bb78
bb78:
  ADDIW a3, a3, 1
  SLTI a4, a3, 4
  BNE a4, zero, bb84
  # implict jump to bb79
bb79:
  ADDIW a2, a2, 1
  SLTI a3, a2, 3
  BNE a3, zero, bb83
  # implict jump to bb80
bb80:
  ADDIW a1, a1, 1
  SLTI a2, a1, 2
  BNE a2, zero, bb82
  # implict jump to bb81
bb81:
  ADDIW a0, a0, 1
  JAL zero, bb44
bb82:
  JAL zero, bb70
bb83:
  JAL zero, bb71
bb84:
  JAL zero, bb72
bb85:
  JAL zero, bb73
bb86:
  JAL zero, bb74
bb87:
  JAL zero, bb75
bb88:
  SLT a1, a0, s1
  JAL zero, bb46
