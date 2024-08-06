.global main
.section .bss




sheet2:
.space 1000000
sheet1:
.space 1000000
.section .data
steps:
.word 0x00000000
height:
.word 0x00000000
width:
.word 0x00000000
active:
.word 0x00000001


.section .text
main:   # loop depth 0
  ADDI sp, sp, -112
  SD ra, 0(sp)
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
  SD s11, 88(sp)
  SD s0, 96(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, width
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, height
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, steps
  SW s0, 0(s1)
  CALL getch
  LA s0, height
  LW s0, 0(s0)
  SLTI s0, s0, 1
  XORI s0, s0, 1
  BNE s0, zero, bb63
  # implict jump to bb1
bb1:   # loop depth 0
  ADDI a0, zero, 95
  CALL _sysy_starttime
  LA a0, steps
  LW a0, 0(a0)
  BLT zero, a0, bb23
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI a0, zero, 106
  CALL _sysy_stoptime
  LA a0, active
  LW a0, 0(a0)
  XORI a0, a0, 2
  SLTIU a0, a0, 1
  BNE a0, zero, bb15
  # implict jump to bb3
bb3:   # loop depth 0
  LA a0, height
  LW a0, 0(a0)
  SLTI a0, a0, 1
  XORI a0, a0, 1
  BNE a0, zero, bb5
  # implict jump to bb4
bb4:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
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
  LD s11, 88(sp)
  LD s0, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb5:   # loop depth 0
  ADDI s1, zero, 1
  # implict jump to bb6
bb6:   # loop depth 1
  LA a0, width
  LW a0, 0(a0)
  SLTI a0, a0, 1
  XORI a0, a0, 1
  BNE a0, zero, bb9
  # implict jump to bb7
bb7:   # loop depth 1
  ADDI a0, zero, 10
  CALL putch
  ADDIW s1, s1, 1
  LA a0, height
  LW a0, 0(a0)
  SLT a0, a0, s1
  XORI a0, a0, 1
  BNE a0, zero, bb8
  JAL zero, bb4
bb8:   # loop depth 1
  JAL zero, bb6
bb9:   # loop depth 1
  ADDI a0, zero, 2000
  MULW a0, s1, a0
  LA s0, sheet1
  ADD s2, s0, a0
  ADDI s0, zero, 1
  # implict jump to bb10
bb10:   # loop depth 2
  SLLIW a0, s0, 2
  ADD a0, s2, a0
  LW a0, 0(a0)
  XORI a0, a0, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb14
  # implict jump to bb11
bb11:   # loop depth 2
  ADDI a0, zero, 46
  CALL putch
  # implict jump to bb12
bb12:   # loop depth 2
  ADDIW s0, s0, 1
  LA a0, width
  LW a0, 0(a0)
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb13
  JAL zero, bb7
bb13:   # loop depth 2
  JAL zero, bb10
bb14:   # loop depth 2
  ADDI a0, zero, 35
  CALL putch
  JAL zero, bb12
bb15:   # loop depth 0
  LA a0, height
  LW s1, 0(a0)
  SLTI a0, s1, 1
  XORI a0, a0, 1
  BNE a0, zero, bb16
  JAL zero, bb3
bb16:   # loop depth 0
  LA a0, width
  LW s2, 0(a0)
  SLTI a0, s2, 1
  XORI s3, a0, 1
  ADDI s0, zero, 1
  # implict jump to bb17
bb17:   # loop depth 1
  BNE s3, zero, bb20
  # implict jump to bb18
bb18:   # loop depth 1
  ADDIW s0, s0, 1
  SLT a0, s1, s0
  XORI a0, a0, 1
  BNE a0, zero, bb19
  JAL zero, bb3
bb19:   # loop depth 1
  JAL zero, bb17
bb20:   # loop depth 1
  ADDI a0, zero, 2000
  MULW a0, s0, a0
  LA s4, sheet1
  ADD s4, s4, a0
  LA s5, sheet2
  ADD s5, s5, a0
  ADDI a0, zero, 1
  # implict jump to bb21
bb21:   # loop depth 2
  SLLIW s6, a0, 2
  ADD s7, s4, s6
  ADD s6, s5, s6
  LW s6, 0(s6)
  SW s6, 0(s7)
  ADDIW a0, a0, 1
  SLT s6, s2, a0
  XORI s6, s6, 1
  BNE s6, zero, bb22
  JAL zero, bb18
bb22:   # loop depth 2
  JAL zero, bb21
bb23:   # loop depth 1
  LA a0, active
  LW a0, 0(a0)
  XORI a0, a0, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb44
  # implict jump to bb24
bb24:   # loop depth 1
  LA a0, height
  LW s10, 0(a0)
  SLTI a0, s10, 1
  XORI a0, a0, 1
  BNE a0, zero, bb27
  # implict jump to bb25
bb25:   # loop depth 1
  LA a0, active
  ADDI s0, zero, 1
  SW s0, 0(a0)
  # implict jump to bb26
bb26:   # loop depth 1
  LA a0, steps
  LW a0, 0(a0)
  ADDIW a0, a0, -1
  LA s0, steps
  SW a0, 0(s0)
  ADDI s0, zero, 0
  BLT s0, a0, bb23
  JAL zero, bb2
bb27:   # loop depth 1
  LA a0, width
  LW a0, 0(a0)
  SLTI s0, a0, 1
  XORI s11, s0, 1
  ADDI s0, zero, 1
  ADD s3, zero, zero
  ADD s5, zero, zero
  # implict jump to bb28
bb28:   # loop depth 2
  BNE s11, zero, bb32
  # implict jump to bb29
bb29:   # loop depth 2
  # implict jump to bb30
bb30:   # loop depth 2
  ADDIW s0, s0, 1
  SLT s1, s10, s0
  XORI s1, s1, 1
  BNE s1, zero, bb31
  JAL zero, bb25
bb31:   # loop depth 2
  JAL zero, bb28
bb32:   # loop depth 2
  ADDI s1, zero, 2000
  MULW s2, s0, s1
  LA s1, sheet2
  ADD s1, s1, s2
  LA s3, sheet1
  ADD s2, s3, s2
  ADDI s3, zero, 1
  # implict jump to bb33
bb33:   # loop depth 3
  ADD s7, s3, zero
  ADDIW s3, s7, -1
  SLLIW s3, s3, 2
  ADD s3, s1, s3
  LW s6, -2000(s3)
  SLLIW s4, s7, 2
  ADD s5, s1, s4
  LW s8, -2000(s5)
  ADDW s6, s6, s8
  ADDIW s7, s7, 1
  SLLIW s8, s7, 2
  ADD s8, s1, s8
  LW s9, -2000(s8)
  ADDW s6, s6, s9
  LW s9, 0(s3)
  ADDW s6, s6, s9
  LW s9, 0(s8)
  ADDW s6, s6, s9
  LW s3, 2000(s3)
  ADDW s3, s6, s3
  LW s6, 2000(s5)
  ADDW s3, s3, s6
  LW s6, 2000(s8)
  ADDW s3, s3, s6
  LW s5, 0(s5)
  XORI s5, s5, 1
  SLTIU s5, s5, 1
  BNE s5, zero, bb43
  # implict jump to bb34
bb34:   # loop depth 3
  ADD s5, zero, zero
  # implict jump to bb35
bb35:   # loop depth 3
  BNE s5, zero, bb42
  # implict jump to bb36
bb36:   # loop depth 3
  XORI s6, s3, 3
  SLTIU s6, s6, 1
  BNE s6, zero, bb41
  # implict jump to bb37
bb37:   # loop depth 3
  ADD s4, s2, s4
  SW zero, 0(s4)
  # implict jump to bb38
bb38:   # loop depth 3
  SLT s4, a0, s7
  XORI s4, s4, 1
  BNE s4, zero, bb40
  # implict jump to bb39
bb39:   # loop depth 3
  JAL zero, bb30
bb40:   # loop depth 3
  ADD s3, s7, zero
  JAL zero, bb33
bb41:   # loop depth 3
  ADD s4, s2, s4
  ADDI s6, zero, 1
  SW s6, 0(s4)
  JAL zero, bb38
bb42:   # loop depth 3
  ADD s4, s2, s4
  ADDI s6, zero, 1
  SW s6, 0(s4)
  JAL zero, bb38
bb43:   # loop depth 3
  XORI s5, s3, 2
  SLTIU s5, s5, 1
  JAL zero, bb35
bb44:   # loop depth 1
  LA a0, height
  LW s10, 0(a0)
  SLTI a0, s10, 1
  XORI a0, a0, 1
  BNE a0, zero, bb46
  # implict jump to bb45
bb45:   # loop depth 1
  LA a0, active
  ADDI s0, zero, 2
  SW s0, 0(a0)
  JAL zero, bb26
bb46:   # loop depth 1
  LA a0, width
  LW a0, 0(a0)
  SLTI s0, a0, 1
  XORI s11, s0, 1
  ADDI s0, zero, 1
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb47
bb47:   # loop depth 2
  BNE s11, zero, bb51
  # implict jump to bb48
bb48:   # loop depth 2
  # implict jump to bb49
bb49:   # loop depth 2
  ADDIW s0, s0, 1
  SLT s3, s10, s0
  XORI s3, s3, 1
  BNE s3, zero, bb50
  JAL zero, bb45
bb50:   # loop depth 2
  JAL zero, bb47
bb51:   # loop depth 2
  ADDI s1, zero, 2000
  MULW s1, s0, s1
  LA s2, sheet1
  ADD s2, s2, s1
  ADDI s3, zero, 1
  # implict jump to bb52
bb52:   # loop depth 3
  ADD s7, s3, zero
  ADDIW s3, s7, -1
  SLLIW s3, s3, 2
  ADD s3, s2, s3
  LW s6, -2000(s3)
  SLLIW s4, s7, 2
  ADD s5, s2, s4
  LW s8, -2000(s5)
  ADDW s6, s6, s8
  ADDIW s7, s7, 1
  SLLIW s8, s7, 2
  ADD s8, s2, s8
  LW s9, -2000(s8)
  ADDW s6, s6, s9
  LW s9, 0(s3)
  ADDW s6, s6, s9
  LW s9, 0(s8)
  ADDW s6, s6, s9
  LW s3, 2000(s3)
  ADDW s3, s6, s3
  LW s6, 2000(s5)
  ADDW s3, s3, s6
  LW s6, 2000(s8)
  ADDW s3, s3, s6
  LW s5, 0(s5)
  XORI s5, s5, 1
  SLTIU s5, s5, 1
  BNE s5, zero, bb62
  # implict jump to bb53
bb53:   # loop depth 3
  ADD s5, zero, zero
  # implict jump to bb54
bb54:   # loop depth 3
  LA s6, sheet2
  ADD s6, s6, s1
  BNE s5, zero, bb61
  # implict jump to bb55
bb55:   # loop depth 3
  XORI s8, s3, 3
  SLTIU s8, s8, 1
  BNE s8, zero, bb60
  # implict jump to bb56
bb56:   # loop depth 3
  ADD s4, s6, s4
  SW zero, 0(s4)
  # implict jump to bb57
bb57:   # loop depth 3
  SLT s4, a0, s7
  XORI s4, s4, 1
  BNE s4, zero, bb59
  # implict jump to bb58
bb58:   # loop depth 3
  ADD s1, s3, zero
  ADD s2, s5, zero
  JAL zero, bb49
bb59:   # loop depth 3
  ADD s3, s7, zero
  JAL zero, bb52
bb60:   # loop depth 3
  ADD s4, s6, s4
  ADDI s6, zero, 1
  SW s6, 0(s4)
  JAL zero, bb57
bb61:   # loop depth 3
  ADD s4, s6, s4
  ADDI s6, zero, 1
  SW s6, 0(s4)
  JAL zero, bb57
bb62:   # loop depth 3
  XORI s5, s3, 2
  SLTIU s5, s5, 1
  JAL zero, bb54
bb63:   # loop depth 0
  ADDI s2, zero, 1
  ADD s0, zero, zero
  # implict jump to bb64
bb64:   # loop depth 1
  LA s1, width
  LW s1, 0(s1)
  SLTI s1, s1, 1
  XORI s1, s1, 1
  BNE s1, zero, bb68
  # implict jump to bb65
bb65:   # loop depth 1
  # implict jump to bb66
bb66:   # loop depth 1
  CALL getch
  ADDIW s2, s2, 1
  LA s1, height
  LW s1, 0(s1)
  SLT s1, s1, s2
  XORI s1, s1, 1
  BNE s1, zero, bb67
  JAL zero, bb1
bb67:   # loop depth 1
  JAL zero, bb64
bb68:   # loop depth 1
  ADDI s0, zero, 2000
  MULW s3, s2, s0
  ADDI s1, zero, 1
  # implict jump to bb69
bb69:   # loop depth 2
  CALL getch
  ADD s0, a0, zero
  XORI s4, s0, 35
  SLTIU s4, s4, 1
  SLLIW s5, s1, 2
  BNE s4, zero, bb74
  # implict jump to bb70
bb70:   # loop depth 2
  LA s4, sheet1
  ADD s4, s4, s3
  ADD s4, s4, s5
  SW zero, 0(s4)
  # implict jump to bb71
bb71:   # loop depth 2
  ADDIW s1, s1, 1
  LA s4, width
  LW s4, 0(s4)
  SLT s4, s4, s1
  XORI s4, s4, 1
  BNE s4, zero, bb73
  # implict jump to bb72
bb72:   # loop depth 2
  JAL zero, bb66
bb73:   # loop depth 2
  JAL zero, bb69
bb74:   # loop depth 2
  LA s4, sheet1
  ADD s4, s4, s3
  ADD s4, s4, s5
  ADDI s5, zero, 1
  SW s5, 0(s4)
  JAL zero, bb71
