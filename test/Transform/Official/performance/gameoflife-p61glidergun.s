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
  ADD s1, a0, zero
  LA s0, width
  SW s1, 0(s0)
  CALL getint
  ADD s1, a0, zero
  LA s0, height
  SW s1, 0(s0)
  CALL getint
  ADD s1, a0, zero
  LA s0, steps
  SW s1, 0(s0)
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
  ADDIW s0, s0, 1
  LA a0, height
  LW a0, 0(a0)
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb8
  JAL zero, bb4
bb8:
  ADD a0, s0, zero
  JAL zero, bb6
bb9:
  ADDI a0, zero, 2000
  MULW s1, s0, a0
  LA a0, sheet1
  ADD s2, a0, s1
  ADDI a0, zero, 1
  # implict jump to bb10
bb10:
  ADD s1, a0, zero
  SLLIW a0, s1, 2
  ADD a0, s2, a0
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
  ADDIW s1, s1, 1
  LA a0, width
  LW a0, 0(a0)
  SLT a0, a0, s1
  XORI a0, a0, 1
  BNE a0, zero, bb13
  JAL zero, bb7
bb13:
  ADD a0, s1, zero
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
  XORI s1, a0, 1
  ADDI a0, zero, 1
  # implict jump to bb17
bb17:
  ADD s2, a0, zero
  BNE s1, zero, bb20
  # implict jump to bb18
bb18:
  ADDIW s0, s2, 1
  LA a0, height
  LW a0, 0(a0)
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb19
  JAL zero, bb3
bb19:
  ADD a0, s0, zero
  JAL zero, bb17
bb20:
  ADDI a0, zero, 2000
  MULW s0, s2, a0
  LA a0, sheet1
  ADD s3, a0, s0
  LA a0, sheet2
  ADD s5, a0, s0
  ADDI a0, zero, 1
  # implict jump to bb21
bb21:
  ADD s4, a0, zero
  SLLIW a0, s4, 2
  ADD s0, s3, a0
  ADD a0, s5, a0
  LW a0, 0(a0)
  SW a0, 0(s0)
  ADDIW s0, s4, 1
  LA a0, width
  LW a0, 0(a0)
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb22
  JAL zero, bb18
bb22:
  ADD a0, s0, zero
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
  LA s0, active
  ADDI a0, zero, 1
  SW a0, 0(s0)
  # implict jump to bb26
bb26:
  LA a0, steps
  LW s0, 0(a0)
  ADDI a0, zero, 1
  SUBW s0, s0, a0
  LA a0, steps
  SW s0, 0(a0)
  LA a0, steps
  LW s0, 0(a0)
  ADDI a0, zero, 0
  BLT a0, s0, bb23
  JAL zero, bb2
bb27:
  LA a0, width
  LW a0, 0(a0)
  SLTI a0, a0, 1
  XORI s8, a0, 1
  ADDI a0, zero, 1
  ADD s1, zero, zero
  ADD s0, zero, zero
  # implict jump to bb28
bb28:
  ADD s7, a0, zero
  BNE s8, zero, bb32
  # implict jump to bb29
bb29:
  ADD a0, s1, zero
  # implict jump to bb30
bb30:
  ADD s2, s0, zero
  ADD s1, a0, zero
  ADDIW s0, s7, 1
  LA a0, height
  LW a0, 0(a0)
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb31
  JAL zero, bb25
bb31:
  ADD a0, s0, zero
  ADD s0, s2, zero
  JAL zero, bb28
bb32:
  ADDI a0, zero, 1
  SUBW s0, s7, a0
  ADDI a0, zero, 2000
  MULW s0, s0, a0
  LA a0, sheet2
  ADD s6, a0, s0
  ADDI a0, zero, 2000
  MULW s5, s7, a0
  LA a0, sheet2
  ADD s4, a0, s5
  ADDIW s0, s7, 1
  ADDI a0, zero, 2000
  MULW s0, s0, a0
  LA a0, sheet2
  ADD s3, a0, s0
  ADDI a0, zero, 1
  # implict jump to bb33
bb33:
  ADD s1, a0, zero
  ADDI a0, zero, 1
  SUBW a0, s1, a0
  SLLIW s10, a0, 2
  ADD a0, s6, s10
  LW s0, 0(a0)
  SLLIW s9, s1, 2
  ADD a0, s6, s9
  LW a0, 0(a0)
  ADDW s0, s0, a0
  ADDIW s2, s1, 1
  SLLIW s1, s2, 2
  ADD a0, s6, s1
  LW a0, 0(a0)
  ADDW s0, s0, a0
  ADD a0, s4, s10
  LW a0, 0(a0)
  ADDW s0, s0, a0
  ADD a0, s4, s1
  LW a0, 0(a0)
  ADDW s0, s0, a0
  ADD a0, s3, s10
  LW a0, 0(a0)
  ADDW s0, s0, a0
  ADD a0, s3, s9
  LW a0, 0(a0)
  ADDW s0, s0, a0
  ADD a0, s3, s1
  LW a0, 0(a0)
  ADDW s1, s0, a0
  ADD a0, s4, s9
  LW a0, 0(a0)
  XORI a0, a0, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb43
  # implict jump to bb34
bb34:
  ADD a0, zero, zero
  # implict jump to bb35
bb35:
  ADD s0, a0, zero
  BNE s0, zero, bb42
  # implict jump to bb36
bb36:
  XORI a0, s1, 3
  SLTIU a0, a0, 1
  BNE a0, zero, bb41
  # implict jump to bb37
bb37:
  LA a0, sheet1
  ADD a0, a0, s5
  ADD a0, a0, s9
  SW zero, 0(a0)
  # implict jump to bb38
bb38:
  LA a0, width
  LW a0, 0(a0)
  SLT a0, a0, s2
  XORI a0, a0, 1
  BNE a0, zero, bb40
  # implict jump to bb39
bb39:
  ADD a0, s1, zero
  JAL zero, bb30
bb40:
  ADD a0, s2, zero
  JAL zero, bb33
bb41:
  LA a0, sheet1
  ADD a0, a0, s5
  ADD s9, a0, s9
  ADDI a0, zero, 1
  SW a0, 0(s9)
  JAL zero, bb38
bb42:
  LA a0, sheet1
  ADD a0, a0, s5
  ADD s9, a0, s9
  ADDI a0, zero, 1
  SW a0, 0(s9)
  JAL zero, bb38
bb43:
  XORI a0, s1, 2
  SLTIU a0, a0, 1
  JAL zero, bb35
bb44:
  LA a0, height
  LW a0, 0(a0)
  SLTI a0, a0, 1
  XORI a0, a0, 1
  BNE a0, zero, bb46
  # implict jump to bb45
bb45:
  LA s0, active
  ADDI a0, zero, 2
  SW a0, 0(s0)
  JAL zero, bb26
bb46:
  LA a0, width
  LW a0, 0(a0)
  SLTI a0, a0, 1
  XORI s7, a0, 1
  ADDI s1, zero, 1
  ADD s0, zero, zero
  ADD a0, zero, zero
  # implict jump to bb47
bb47:
  ADD s2, a0, zero
  ADD a0, s0, zero
  ADD s3, s1, zero
  BNE s7, zero, bb51
  # implict jump to bb48
bb48:
  ADD s0, s2, zero
  # implict jump to bb49
bb49:
  ADD s2, s0, zero
  ADD s4, a0, zero
  ADDIW s0, s3, 1
  LA a0, height
  LW a0, 0(a0)
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb50
  JAL zero, bb45
bb50:
  ADD s1, s0, zero
  ADD s0, s4, zero
  ADD a0, s2, zero
  JAL zero, bb47
bb51:
  ADDI a0, zero, 1
  SUBW s0, s3, a0
  ADDI a0, zero, 2000
  MULW s0, s0, a0
  LA a0, sheet1
  ADD s4, a0, s0
  ADDI a0, zero, 2000
  MULW s6, s3, a0
  LA a0, sheet1
  ADD s5, a0, s6
  ADDIW s0, s3, 1
  ADDI a0, zero, 2000
  MULW s0, s0, a0
  LA a0, sheet1
  ADD s8, a0, s0
  ADDI a0, zero, 1
  # implict jump to bb52
bb52:
  ADD s1, a0, zero
  ADDI a0, zero, 1
  SUBW a0, s1, a0
  SLLIW s0, a0, 2
  ADD a0, s4, s0
  LW s2, 0(a0)
  SLLIW s9, s1, 2
  ADD a0, s4, s9
  LW a0, 0(a0)
  ADDW a0, s2, a0
  ADDIW s2, s1, 1
  SLLIW s1, s2, 2
  ADD s10, s4, s1
  LW s10, 0(s10)
  ADDW s10, a0, s10
  ADD a0, s5, s0
  LW a0, 0(a0)
  ADDW a0, s10, a0
  ADD s10, s5, s1
  LW s10, 0(s10)
  ADDW s10, a0, s10
  ADD a0, s8, s0
  LW a0, 0(a0)
  ADDW s0, s10, a0
  ADD a0, s8, s9
  LW a0, 0(a0)
  ADDW s0, s0, a0
  ADD a0, s8, s1
  LW a0, 0(a0)
  ADDW s1, s0, a0
  ADD a0, s5, s9
  LW a0, 0(a0)
  XORI a0, a0, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb62
  # implict jump to bb53
bb53:
  ADD a0, zero, zero
  # implict jump to bb54
bb54:
  ADD s0, a0, zero
  BNE s0, zero, bb61
  # implict jump to bb55
bb55:
  XORI a0, s1, 3
  SLTIU a0, a0, 1
  BNE a0, zero, bb60
  # implict jump to bb56
bb56:
  LA a0, sheet2
  ADD a0, a0, s6
  ADD a0, a0, s9
  SW zero, 0(a0)
  # implict jump to bb57
bb57:
  LA a0, width
  LW a0, 0(a0)
  SLT a0, a0, s2
  XORI a0, a0, 1
  BNE a0, zero, bb59
  # implict jump to bb58
bb58:
  ADD a0, s1, zero
  JAL zero, bb49
bb59:
  ADD a0, s2, zero
  JAL zero, bb52
bb60:
  LA a0, sheet2
  ADD a0, a0, s6
  ADD s9, a0, s9
  ADDI a0, zero, 1
  SW a0, 0(s9)
  JAL zero, bb57
bb61:
  LA a0, sheet2
  ADD a0, a0, s6
  ADD s9, a0, s9
  ADDI a0, zero, 1
  SW a0, 0(s9)
  JAL zero, bb57
bb62:
  XORI a0, s1, 2
  SLTIU a0, a0, 1
  JAL zero, bb54
bb63:
  ADDI s0, zero, 1
  ADD s1, zero, zero
  # implict jump to bb64
bb64:
  ADD s2, s1, zero
  ADD s1, s0, zero
  LA s0, width
  LW s0, 0(s0)
  SLTI s0, s0, 1
  XORI s0, s0, 1
  BNE s0, zero, bb68
  # implict jump to bb65
bb65:
  ADD s0, s2, zero
  # implict jump to bb66
bb66:
  ADD s2, s0, zero
  CALL getch
  ADDIW s1, s1, 1
  LA s0, height
  LW s0, 0(s0)
  SLT s0, s0, s1
  XORI s0, s0, 1
  BNE s0, zero, bb67
  JAL zero, bb1
bb67:
  ADD s0, s1, zero
  ADD s1, s2, zero
  JAL zero, bb64
bb68:
  ADDI s0, zero, 1
  # implict jump to bb69
bb69:
  ADD s3, s0, zero
  CALL getch
  ADD s2, a0, zero
  XORI s0, s2, 35
  SLTIU s0, s0, 1
  BNE s0, zero, bb74
  # implict jump to bb70
bb70:
  ADDI s0, zero, 2000
  MULW s4, s1, s0
  LA s0, sheet1
  ADD s4, s0, s4
  SLLIW s0, s3, 2
  ADD s0, s4, s0
  SW zero, 0(s0)
  # implict jump to bb71
bb71:
  ADDIW s3, s3, 1
  LA s0, width
  LW s0, 0(s0)
  SLT s0, s0, s3
  XORI s0, s0, 1
  BNE s0, zero, bb73
  # implict jump to bb72
bb72:
  ADD s0, s2, zero
  JAL zero, bb66
bb73:
  ADD s0, s3, zero
  JAL zero, bb69
bb74:
  ADDI s0, zero, 2000
  MULW s4, s1, s0
  LA s0, sheet1
  ADD s4, s0, s4
  SLLIW s0, s3, 2
  ADD s4, s4, s0
  ADDI s0, zero, 1
  SW s0, 0(s4)
  JAL zero, bb71
