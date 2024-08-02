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
main:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
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
bb1:
  ADDI a0, zero, 95
  CALL _sysy_starttime
  LA a0, steps
  LW a0, 0(a0)
  BLT zero, a0, bb23
  # implict jump to bb2
bb2:
  ADDI a0, zero, 106
  CALL _sysy_stoptime
  LA a0, active
  LW a0, 0(a0)
  XORI a0, a0, 2
  SLTIU a0, a0, 1
  BNE a0, zero, bb15
  # implict jump to bb3
bb3:
  LA a0, height
  LW a0, 0(a0)
  SLTI a0, a0, 1
  XORI a0, a0, 1
  BNE a0, zero, bb5
  # implict jump to bb4
bb4:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb5:
  ADDI a0, zero, 1
  # implict jump to bb6
bb6:
  ADD s0, a0, zero
  LA a0, width
  LW a0, 0(a0)
  SLTI a0, a0, 1
  XORI a0, a0, 1
  BNE a0, zero, bb9
  # implict jump to bb7
bb7:
  ADDI a0, zero, 10
  CALL putch
  ADDIW a0, s0, 1
  LA s0, height
  LW s0, 0(s0)
  SLT s0, s0, a0
  XORI s0, s0, 1
  BNE s0, zero, bb8
  JAL zero, bb4
bb8:
  JAL zero, bb6
bb9:
  ADDI a0, zero, 2000
  MULW a0, s0, a0
  LA s1, sheet1
  ADD s1, s1, a0
  ADDI a0, zero, 1
  # implict jump to bb10
bb10:
  ADD s2, a0, zero
  SLLIW a0, s2, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  XORI a0, a0, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb14
  # implict jump to bb11
bb11:
  ADDI a0, zero, 46
  CALL putch
  # implict jump to bb12
bb12:
  ADDIW a0, s2, 1
  LA s2, width
  LW s2, 0(s2)
  SLT s2, s2, a0
  XORI s2, s2, 1
  BNE s2, zero, bb13
  JAL zero, bb7
bb13:
  JAL zero, bb10
bb14:
  ADDI a0, zero, 35
  CALL putch
  JAL zero, bb12
bb15:
  LA a0, height
  LW a0, 0(a0)
  SLTI a0, a0, 1
  XORI a0, a0, 1
  BNE a0, zero, bb16
  JAL zero, bb3
bb16:
  LA a0, width
  LW a0, 0(a0)
  SLTI a0, a0, 1
  XORI a0, a0, 1
  ADDI s0, zero, 1
  # implict jump to bb17
bb17:
  BNE a0, zero, bb20
  # implict jump to bb18
bb18:
  ADDIW s0, s0, 1
  LA s1, height
  LW s1, 0(s1)
  SLT s1, s1, s0
  XORI s1, s1, 1
  BNE s1, zero, bb19
  JAL zero, bb3
bb19:
  JAL zero, bb17
bb20:
  ADDI s1, zero, 2000
  MULW s1, s0, s1
  LA s2, sheet1
  ADD s2, s2, s1
  LA s3, sheet2
  ADD s1, s3, s1
  ADDI s3, zero, 1
  # implict jump to bb21
bb21:
  SLLIW s4, s3, 2
  ADD s5, s2, s4
  ADD s4, s1, s4
  LW s4, 0(s4)
  SW s4, 0(s5)
  ADDIW s3, s3, 1
  LA s4, width
  LW s4, 0(s4)
  SLT s4, s4, s3
  XORI s4, s4, 1
  BNE s4, zero, bb22
  JAL zero, bb18
bb22:
  JAL zero, bb21
bb23:
  LA a0, active
  LW a0, 0(a0)
  XORI a0, a0, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb44
  # implict jump to bb24
bb24:
  LA a0, height
  LW a0, 0(a0)
  SLTI a0, a0, 1
  XORI a0, a0, 1
  BNE a0, zero, bb27
  # implict jump to bb25
bb25:
  LA a0, active
  ADDI s0, zero, 1
  SW s0, 0(a0)
  # implict jump to bb26
bb26:
  LA a0, steps
  LW a0, 0(a0)
  ADDI s0, zero, 1
  SUBW a0, a0, s0
  LA s0, steps
  SW a0, 0(s0)
  LA a0, steps
  LW a0, 0(a0)
  ADDI s0, zero, 0
  BLT s0, a0, bb23
  JAL zero, bb2
bb27:
  LA a0, width
  LW a0, 0(a0)
  SLTI a0, a0, 1
  XORI a0, a0, 1
  ADDI s0, zero, 1
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb28
bb28:
  BNE a0, zero, bb32
  # implict jump to bb29
bb29:
  # implict jump to bb30
bb30:
  ADDIW s0, s0, 1
  LA s3, height
  LW s3, 0(s3)
  SLT s3, s3, s0
  XORI s3, s3, 1
  BNE s3, zero, bb31
  JAL zero, bb25
bb31:
  JAL zero, bb28
bb32:
  ADDI s1, zero, 1
  SUBW s1, s0, s1
  ADDI s2, zero, 2000
  MULW s1, s1, s2
  LA s2, sheet2
  ADD s1, s2, s1
  ADDI s2, zero, 2000
  MULW s2, s0, s2
  LA s3, sheet2
  ADD s3, s3, s2
  ADDIW s4, s0, 1
  ADDI s5, zero, 2000
  MULW s4, s4, s5
  LA s5, sheet2
  ADD s4, s5, s4
  ADDI s5, zero, 1
  # implict jump to bb33
bb33:
  ADDI s6, zero, 1
  SUBW s6, s5, s6
  SLLIW s6, s6, 2
  ADD s7, s1, s6
  LW s7, 0(s7)
  SLLIW s8, s5, 2
  ADD s9, s1, s8
  LW s9, 0(s9)
  ADDW s7, s7, s9
  ADDIW s5, s5, 1
  SLLIW s9, s5, 2
  ADD s10, s1, s9
  LW s10, 0(s10)
  ADDW s7, s7, s10
  ADD s10, s3, s6
  LW s10, 0(s10)
  ADDW s7, s7, s10
  ADD s10, s3, s9
  LW s10, 0(s10)
  ADDW s7, s7, s10
  ADD s6, s4, s6
  LW s6, 0(s6)
  ADDW s6, s7, s6
  ADD s7, s4, s8
  LW s7, 0(s7)
  ADDW s6, s6, s7
  ADD s7, s4, s9
  LW s7, 0(s7)
  ADDW s6, s6, s7
  ADD s7, s3, s8
  LW s7, 0(s7)
  XORI s7, s7, 1
  SLTIU s7, s7, 1
  BNE s7, zero, bb43
  # implict jump to bb34
bb34:
  ADD s7, zero, zero
  # implict jump to bb35
bb35:
  BNE s7, zero, bb42
  # implict jump to bb36
bb36:
  XORI s9, s6, 3
  SLTIU s9, s9, 1
  BNE s9, zero, bb41
  # implict jump to bb37
bb37:
  LA s9, sheet1
  ADD s9, s9, s2
  ADD s8, s9, s8
  SW zero, 0(s8)
  # implict jump to bb38
bb38:
  LA s8, width
  LW s8, 0(s8)
  SLT s8, s8, s5
  XORI s8, s8, 1
  BNE s8, zero, bb40
  # implict jump to bb39
bb39:
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb30
bb40:
  JAL zero, bb33
bb41:
  LA s9, sheet1
  ADD s9, s9, s2
  ADD s8, s9, s8
  ADDI s9, zero, 1
  SW s9, 0(s8)
  JAL zero, bb38
bb42:
  LA s9, sheet1
  ADD s9, s9, s2
  ADD s8, s9, s8
  ADDI s9, zero, 1
  SW s9, 0(s8)
  JAL zero, bb38
bb43:
  XORI s7, s6, 2
  SLTIU s7, s7, 1
  JAL zero, bb35
bb44:
  LA a0, height
  LW a0, 0(a0)
  SLTI a0, a0, 1
  XORI a0, a0, 1
  BNE a0, zero, bb46
  # implict jump to bb45
bb45:
  LA a0, active
  ADDI s0, zero, 2
  SW s0, 0(a0)
  JAL zero, bb26
bb46:
  LA a0, width
  LW a0, 0(a0)
  SLTI a0, a0, 1
  XORI a0, a0, 1
  ADDI s0, zero, 1
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb47
bb47:
  BNE a0, zero, bb51
  # implict jump to bb48
bb48:
  # implict jump to bb49
bb49:
  ADDIW s0, s0, 1
  LA s3, height
  LW s3, 0(s3)
  SLT s3, s3, s0
  XORI s3, s3, 1
  BNE s3, zero, bb50
  JAL zero, bb45
bb50:
  JAL zero, bb47
bb51:
  ADDI s1, zero, 1
  SUBW s1, s0, s1
  ADDI s2, zero, 2000
  MULW s1, s1, s2
  LA s2, sheet1
  ADD s1, s2, s1
  ADDI s2, zero, 2000
  MULW s2, s0, s2
  LA s3, sheet1
  ADD s3, s3, s2
  ADDIW s4, s0, 1
  ADDI s5, zero, 2000
  MULW s4, s4, s5
  LA s5, sheet1
  ADD s4, s5, s4
  ADDI s5, zero, 1
  # implict jump to bb52
bb52:
  ADDI s6, zero, 1
  SUBW s6, s5, s6
  SLLIW s6, s6, 2
  ADD s7, s1, s6
  LW s7, 0(s7)
  SLLIW s8, s5, 2
  ADD s9, s1, s8
  LW s9, 0(s9)
  ADDW s7, s7, s9
  ADDIW s5, s5, 1
  SLLIW s9, s5, 2
  ADD s10, s1, s9
  LW s10, 0(s10)
  ADDW s7, s7, s10
  ADD s10, s3, s6
  LW s10, 0(s10)
  ADDW s7, s7, s10
  ADD s10, s3, s9
  LW s10, 0(s10)
  ADDW s7, s7, s10
  ADD s6, s4, s6
  LW s6, 0(s6)
  ADDW s6, s7, s6
  ADD s7, s4, s8
  LW s7, 0(s7)
  ADDW s6, s6, s7
  ADD s7, s4, s9
  LW s7, 0(s7)
  ADDW s6, s6, s7
  ADD s7, s3, s8
  LW s7, 0(s7)
  XORI s7, s7, 1
  SLTIU s7, s7, 1
  BNE s7, zero, bb62
  # implict jump to bb53
bb53:
  ADD s7, zero, zero
  # implict jump to bb54
bb54:
  BNE s7, zero, bb61
  # implict jump to bb55
bb55:
  XORI s9, s6, 3
  SLTIU s9, s9, 1
  BNE s9, zero, bb60
  # implict jump to bb56
bb56:
  LA s9, sheet2
  ADD s9, s9, s2
  ADD s8, s9, s8
  SW zero, 0(s8)
  # implict jump to bb57
bb57:
  LA s8, width
  LW s8, 0(s8)
  SLT s8, s8, s5
  XORI s8, s8, 1
  BNE s8, zero, bb59
  # implict jump to bb58
bb58:
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb49
bb59:
  JAL zero, bb52
bb60:
  LA s9, sheet2
  ADD s9, s9, s2
  ADD s8, s9, s8
  ADDI s9, zero, 1
  SW s9, 0(s8)
  JAL zero, bb57
bb61:
  LA s9, sheet2
  ADD s9, s9, s2
  ADD s8, s9, s8
  ADDI s9, zero, 1
  SW s9, 0(s8)
  JAL zero, bb57
bb62:
  XORI s7, s6, 2
  SLTIU s7, s7, 1
  JAL zero, bb54
bb63:
  ADDI s0, zero, 1
  ADD s1, zero, zero
  # implict jump to bb64
bb64:
  LA s2, width
  LW s2, 0(s2)
  SLTI s2, s2, 1
  XORI s2, s2, 1
  BNE s2, zero, bb68
  # implict jump to bb65
bb65:
  # implict jump to bb66
bb66:
  CALL getch
  ADDIW s0, s0, 1
  LA s2, height
  LW s2, 0(s2)
  SLT s2, s2, s0
  XORI s2, s2, 1
  BNE s2, zero, bb67
  JAL zero, bb1
bb67:
  JAL zero, bb64
bb68:
  ADDI s1, zero, 1
  # implict jump to bb69
bb69:
  CALL getch
  ADD s2, a0, zero
  XORI s3, s2, 35
  SLTIU s3, s3, 1
  BNE s3, zero, bb74
  # implict jump to bb70
bb70:
  ADDI s3, zero, 2000
  MULW s3, s0, s3
  LA s4, sheet1
  ADD s3, s4, s3
  SLLIW s4, s1, 2
  ADD s3, s3, s4
  SW zero, 0(s3)
  # implict jump to bb71
bb71:
  ADDIW s1, s1, 1
  LA s3, width
  LW s3, 0(s3)
  SLT s3, s3, s1
  XORI s3, s3, 1
  BNE s3, zero, bb73
  # implict jump to bb72
bb72:
  ADD s1, s2, zero
  JAL zero, bb66
bb73:
  JAL zero, bb69
bb74:
  ADDI s3, zero, 2000
  MULW s3, s0, s3
  LA s4, sheet1
  ADD s3, s4, s3
  SLLIW s4, s1, 2
  ADD s3, s3, s4
  ADDI s4, zero, 1
  SW s4, 0(s3)
  JAL zero, bb71
