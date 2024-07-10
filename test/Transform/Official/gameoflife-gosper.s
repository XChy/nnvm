.global swap12
.global put_map
.global main
.global step
.global read_map
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
swap12:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  ADDI s0, zero, 1
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  LA s2, height
  LW s2, 0(s2)
  SLT s2, s2, s1
  XORI s2, s2, 1
  BNE s2, zero, bb3
  # implict jump to bb2
bb2:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb3:
  ADDI s2, zero, 1
  # implict jump to bb4
bb4:
  ADD s3, s2, zero
  LA s4, width
  LW s4, 0(s4)
  SLT s4, s4, s3
  XORI s4, s4, 1
  BNE s4, zero, bb6
  # implict jump to bb5
bb5:
  ADDIW s4, s1, 1
  ADD s0, s4, zero
  JAL zero, bb1
bb6:
  ADDI s0, zero, 2000
  MULW s0, s1, s0
  LA s4, sheet1
  ADD s4, s4, s0
  SLLIW s5, s3, 2
  ADD s4, s4, s5
  LA s6, sheet2
  ADD s0, s6, s0
  ADD s0, s0, s5
  LW s0, 0(s0)
  SW s0, 0(s4)
  ADDIW s0, s3, 1
  ADD s2, s0, zero
  JAL zero, bb4
put_map:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  ADDI s0, zero, 1
  # implict jump to bb8
bb8:
  ADD s1, s0, zero
  LA s2, height
  LW s2, 0(s2)
  SLT s2, s2, s1
  XORI s2, s2, 1
  BNE s2, zero, bb10
  # implict jump to bb9
bb9:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb10:
  ADDI s2, zero, 1
  # implict jump to bb11
bb11:
  ADD s3, s2, zero
  LA s4, width
  LW s4, 0(s4)
  SLT s4, s4, s3
  XORI s4, s4, 1
  BNE s4, zero, bb13
  # implict jump to bb12
bb12:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s4, s1, 1
  ADD s0, s4, zero
  JAL zero, bb8
bb13:
  ADDI s0, zero, 2000
  MULW s0, s1, s0
  LA s4, sheet1
  ADD s0, s4, s0
  SLLIW s4, s3, 2
  ADD s0, s0, s4
  LW s0, 0(s0)
  XORI s0, s0, 1
  SLTIU s0, s0, 1
  BNE s0, zero, bb16
  # implict jump to bb14
bb14:
  ADDI a0, zero, 46
  CALL putch
  # implict jump to bb15
bb15:
  ADDIW s0, s3, 1
  ADD s2, s0, zero
  JAL zero, bb11
bb16:
  ADDI a0, zero, 35
  CALL putch
  JAL zero, bb15
main:
  ADDI sp, sp, -128
  SD ra, 24(sp)
  SD s0, 32(sp)
  SD s1, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s5, 72(sp)
  SD s6, 80(sp)
  SD s7, 88(sp)
  SD s8, 96(sp)
  SD s9, 104(sp)
  SD s11, 112(sp)
  SD s10, 120(sp)
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
  ADD s0, a0, zero
  ADD t4, zero, zero
  SW t4, 12(sp)
  ADDI t4, zero, 1
  SW t4, 16(sp)
  # implict jump to bb18
bb18:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LA s4, height
  LW s4, 0(s4)
  LW t4, 20(sp)
  SLT s4, s4, t4
  XORI s4, s4, 1
  BNE s4, zero, bb70
  # implict jump to bb19
bb19:
  ADDI a0, zero, 95
  CALL _sysy_starttime
  # implict jump to bb20
bb20:
  LA s4, steps
  LW s4, 0(s4)
  ADDI s5, zero, 0
  SLT s4, s5, s4
  BNE s4, zero, bb38
  # implict jump to bb21
bb21:
  ADDI a0, zero, 106
  CALL _sysy_stoptime
  LA s4, active
  LW s4, 0(s4)
  XORI s4, s4, 2
  SLTIU s4, s4, 1
  BNE s4, zero, bb32
  # implict jump to bb22
bb22:
  ADDI s6, zero, 1
  # implict jump to bb23
bb23:
  ADD s7, s6, zero
  LA s8, height
  LW s8, 0(s8)
  SLT s8, s8, s7
  XORI s8, s8, 1
  BNE s8, zero, bb25
  # implict jump to bb24
bb24:
  ADD a0, zero, zero
  LD ra, 24(sp)
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s5, 72(sp)
  LD s6, 80(sp)
  LD s7, 88(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  LD s11, 112(sp)
  LD s10, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb25:
  ADDI s8, zero, 1
  # implict jump to bb26
bb26:
  ADD s9, s8, zero
  LA s10, width
  LW s10, 0(s10)
  SLT s10, s10, s9
  XORI s10, s10, 1
  BNE s10, zero, bb28
  # implict jump to bb27
bb27:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s10, s7, 1
  ADD s6, s10, zero
  JAL zero, bb23
bb28:
  ADDI s6, zero, 2000
  MULW s6, s7, s6
  LA s10, sheet1
  ADD s6, s10, s6
  SLLIW s10, s9, 2
  ADD s6, s6, s10
  LW s6, 0(s6)
  XORI s6, s6, 1
  SLTIU s6, s6, 1
  BNE s6, zero, bb31
  # implict jump to bb29
bb29:
  ADDI a0, zero, 46
  CALL putch
  # implict jump to bb30
bb30:
  ADDIW s6, s9, 1
  ADD s8, s6, zero
  JAL zero, bb26
bb31:
  ADDI a0, zero, 35
  CALL putch
  JAL zero, bb30
bb32:
  ADDI s4, zero, 1
  # implict jump to bb33
bb33:
  ADD s5, s4, zero
  LA s6, height
  LW s6, 0(s6)
  SLT s6, s6, s5
  XORI s6, s6, 1
  BNE s6, zero, bb34
  JAL zero, bb22
bb34:
  ADDI s6, zero, 1
  # implict jump to bb35
bb35:
  ADD s7, s6, zero
  LA s8, width
  LW s8, 0(s8)
  SLT s8, s8, s7
  XORI s8, s8, 1
  BNE s8, zero, bb37
  # implict jump to bb36
bb36:
  ADDIW s8, s5, 1
  ADD s4, s8, zero
  JAL zero, bb33
bb37:
  ADDI s4, zero, 2000
  MULW s4, s5, s4
  LA s8, sheet1
  ADD s8, s8, s4
  SLLIW s9, s7, 2
  ADD s8, s8, s9
  LA s10, sheet2
  ADD s4, s10, s4
  ADD s4, s4, s9
  LW s4, 0(s4)
  SW s4, 0(s8)
  ADDIW s4, s7, 1
  ADD s6, s4, zero
  JAL zero, bb35
bb38:
  LA s4, active
  LW s4, 0(s4)
  XORI s4, s4, 1
  SLTIU s4, s4, 1
  BNE s4, zero, bb55
  # implict jump to bb39
bb39:
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADDI s6, zero, 1
  # implict jump to bb40
bb40:
  ADD t4, s6, zero
  SW t4, 4(sp)
  ADD s8, s5, zero
  ADD s9, s4, zero
  LA s10, height
  LW s10, 0(s10)
  LW t4, 4(sp)
  SLT s10, s10, t4
  XORI s10, s10, 1
  BNE s10, zero, bb43
  # implict jump to bb41
bb41:
  LA s10, active
  ADDI s11, zero, 1
  SW s11, 0(s10)
  # implict jump to bb42
bb42:
  LA s6, steps
  LW s6, 0(s6)
  ADDI s7, zero, 1
  SUBW s6, s6, s7
  LA s7, steps
  SW s6, 0(s7)
  JAL zero, bb20
bb43:
  ADD s9, s9, zero
  ADD s8, s8, zero
  ADDI s10, zero, 1
  # implict jump to bb44
bb44:
  ADD s11, s10, zero
  ADD s2, s8, zero
  ADD s1, s9, zero
  LA s0, width
  LW s0, 0(s0)
  SLT s0, s0, s11
  XORI s0, s0, 1
  BNE s0, zero, bb46
  # implict jump to bb45
bb45:
  LW t4, 4(sp)
  ADDIW s0, t4, 1
  ADD s4, s1, zero
  ADD s5, s2, zero
  ADD s6, s0, zero
  JAL zero, bb40
bb46:
  ADDI s0, zero, 1
  LW t4, 4(sp)
  SUBW s0, t4, s0
  ADDI s1, zero, 2000
  MULW s0, s0, s1
  LA s1, sheet2
  ADD s0, s1, s0
  ADDI s1, zero, 1
  SUBW s1, s11, s1
  SLLIW s1, s1, 2
  ADD s2, s0, s1
  LW s2, 0(s2)
  SLLIW s4, s11, 2
  ADD s5, s0, s4
  LW s5, 0(s5)
  ADDW s2, s2, s5
  ADDIW s5, s11, 1
  SLLIW s6, s5, 2
  ADD s0, s0, s6
  LW s0, 0(s0)
  ADDW s0, s2, s0
  ADDI s2, zero, 2000
  LW t4, 4(sp)
  MULW s2, t4, s2
  LA s11, sheet2
  ADD s11, s11, s2
  ADD s3, s11, s1
  LW s3, 0(s3)
  ADDW s0, s0, s3
  ADD s3, s11, s6
  LW s3, 0(s3)
  ADDW s0, s0, s3
  LW t4, 4(sp)
  ADDIW s3, t4, 1
  ADDI s7, zero, 2000
  MULW s3, s3, s7
  LA s7, sheet2
  ADD s3, s7, s3
  ADD s1, s3, s1
  LW s1, 0(s1)
  ADDW s0, s0, s1
  ADD s1, s3, s4
  LW s1, 0(s1)
  ADDW s0, s0, s1
  ADD s1, s3, s6
  LW s1, 0(s1)
  ADDW s0, s0, s1
  ADD s1, s11, s4
  LW s1, 0(s1)
  XORI s1, s1, 1
  SLTIU s1, s1, 1
  BNE s1, zero, bb54
  # implict jump to bb47
bb47:
  ADD s1, zero, zero
  # implict jump to bb48
bb48:
  ADD s1, s1, zero
  BNE s1, zero, bb53
  # implict jump to bb49
bb49:
  XORI s3, s0, 3
  SLTIU s3, s3, 1
  BNE s3, zero, bb52
  # implict jump to bb50
bb50:
  LA s3, sheet1
  ADD s3, s3, s2
  ADD s3, s3, s4
  SW zero, 0(s3)
  # implict jump to bb51
bb51:
  ADD s9, s1, zero
  ADD s8, s0, zero
  ADD s10, s5, zero
  JAL zero, bb44
bb52:
  LA s3, sheet1
  ADD s3, s3, s2
  ADD s3, s3, s4
  ADDI s6, zero, 1
  SW s6, 0(s3)
  JAL zero, bb51
bb53:
  LA s3, sheet1
  ADD s2, s3, s2
  ADD s2, s2, s4
  ADDI s3, zero, 1
  SW s3, 0(s2)
  JAL zero, bb51
bb54:
  XORI s3, s0, 2
  SLTIU s3, s3, 1
  ADD s1, s3, zero
  JAL zero, bb48
bb55:
  ADD s0, zero, zero
  ADD s1, zero, zero
  ADDI s2, zero, 1
  # implict jump to bb56
bb56:
  ADD t4, s2, zero
  SW t4, 0(sp)
  ADD s4, s1, zero
  ADD s5, s0, zero
  LA s6, height
  LW s6, 0(s6)
  LW t4, 0(sp)
  SLT s6, s6, t4
  XORI s6, s6, 1
  BNE s6, zero, bb58
  # implict jump to bb57
bb57:
  LA s6, active
  ADDI s7, zero, 2
  SW s7, 0(s6)
  JAL zero, bb42
bb58:
  ADD s5, s5, zero
  ADD s4, s4, zero
  ADDI s6, zero, 1
  # implict jump to bb59
bb59:
  ADD s7, s6, zero
  ADD s8, s4, zero
  ADD s9, s5, zero
  LA s10, width
  LW s10, 0(s10)
  SLT s10, s10, s7
  XORI s10, s10, 1
  BNE s10, zero, bb61
  # implict jump to bb60
bb60:
  LW t4, 0(sp)
  ADDIW s10, t4, 1
  ADD s0, s9, zero
  ADD s1, s8, zero
  ADD s2, s10, zero
  JAL zero, bb56
bb61:
  ADDI s0, zero, 1
  LW t4, 0(sp)
  SUBW s0, t4, s0
  ADDI s1, zero, 2000
  MULW s0, s0, s1
  LA s1, sheet1
  ADD s0, s1, s0
  ADDI s1, zero, 1
  SUBW s1, s7, s1
  SLLIW s1, s1, 2
  ADD s2, s0, s1
  LW s2, 0(s2)
  SLLIW s8, s7, 2
  ADD s9, s0, s8
  LW s9, 0(s9)
  ADDW s2, s2, s9
  ADDIW s7, s7, 1
  SLLIW s9, s7, 2
  ADD s0, s0, s9
  LW s0, 0(s0)
  ADDW s0, s2, s0
  ADDI s2, zero, 2000
  LW t4, 0(sp)
  MULW s2, t4, s2
  LA s10, sheet1
  ADD s10, s10, s2
  ADD s11, s10, s1
  LW s11, 0(s11)
  ADDW s0, s0, s11
  ADD s11, s10, s9
  LW s11, 0(s11)
  ADDW s0, s0, s11
  LW t4, 0(sp)
  ADDIW s11, t4, 1
  ADDI s3, zero, 2000
  MULW s3, s11, s3
  LA s11, sheet1
  ADD s3, s11, s3
  ADD s1, s3, s1
  LW s1, 0(s1)
  ADDW s0, s0, s1
  ADD s1, s3, s8
  LW s1, 0(s1)
  ADDW s0, s0, s1
  ADD s1, s3, s9
  LW s1, 0(s1)
  ADDW s0, s0, s1
  ADD s1, s10, s8
  LW s1, 0(s1)
  XORI s1, s1, 1
  SLTIU s1, s1, 1
  BNE s1, zero, bb69
  # implict jump to bb62
bb62:
  ADD s1, zero, zero
  # implict jump to bb63
bb63:
  ADD s1, s1, zero
  BNE s1, zero, bb68
  # implict jump to bb64
bb64:
  XORI s3, s0, 3
  SLTIU s3, s3, 1
  BNE s3, zero, bb67
  # implict jump to bb65
bb65:
  LA s3, sheet2
  ADD s3, s3, s2
  ADD s3, s3, s8
  SW zero, 0(s3)
  # implict jump to bb66
bb66:
  ADD s5, s1, zero
  ADD s4, s0, zero
  ADD s6, s7, zero
  JAL zero, bb59
bb67:
  LA s3, sheet2
  ADD s3, s3, s2
  ADD s3, s3, s8
  ADDI s9, zero, 1
  SW s9, 0(s3)
  JAL zero, bb66
bb68:
  LA s3, sheet2
  ADD s2, s3, s2
  ADD s2, s2, s8
  ADDI s3, zero, 1
  SW s3, 0(s2)
  JAL zero, bb66
bb69:
  XORI s3, s0, 2
  SLTIU s3, s3, 1
  ADD s1, s3, zero
  JAL zero, bb63
bb70:
  LW t4, 8(sp)
  ADD s0, t4, zero
  ADDI s1, zero, 1
  # implict jump to bb71
bb71:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, width
  LW s4, 0(s4)
  SLT s4, s4, s2
  XORI s4, s4, 1
  BNE s4, zero, bb73
  # implict jump to bb72
bb72:
  CALL getch
  ADD s4, a0, zero
  LW t4, 20(sp)
  ADDIW s4, t4, 1
  ADD t4, s3, zero
  SW t4, 12(sp)
  ADD t4, s4, zero
  SW t4, 16(sp)
  JAL zero, bb18
bb73:
  CALL getch
  ADD a0, a0, zero
  XORI s3, a0, 35
  SLTIU s3, s3, 1
  BNE s3, zero, bb76
  # implict jump to bb74
bb74:
  ADDI s3, zero, 2000
  LW t4, 20(sp)
  MULW s3, t4, s3
  LA s4, sheet1
  ADD s3, s4, s3
  SLLIW s4, s2, 2
  ADD s3, s3, s4
  SW zero, 0(s3)
  # implict jump to bb75
bb75:
  ADDIW s2, s2, 1
  ADD s0, a0, zero
  ADD s1, s2, zero
  JAL zero, bb71
bb76:
  ADDI s3, zero, 2000
  LW t4, 20(sp)
  MULW s3, t4, s3
  LA s4, sheet1
  ADD s3, s4, s3
  SLLIW s4, s2, 2
  ADD s3, s3, s4
  ADDI s4, zero, 1
  SW s4, 0(s3)
  JAL zero, bb75
step:
  ADDI sp, sp, -112
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
  SD s11, 96(sp)
  ADD a0, a0, zero
  ADD a1, a1, zero
  ADD s0, zero, zero
  ADD s1, zero, zero
  ADDI s2, zero, 1
  # implict jump to bb78
bb78:
  ADD s3, s2, zero
  ADD s4, s1, zero
  ADD s5, s0, zero
  LA s6, height
  LW s6, 0(s6)
  SLT s6, s6, s3
  XORI s6, s6, 1
  BNE s6, zero, bb80
  # implict jump to bb79
bb79:
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
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb80:
  ADD s5, s5, zero
  ADD s4, s4, zero
  ADDI s6, zero, 1
  # implict jump to bb81
bb81:
  ADD s7, s6, zero
  ADD s8, s4, zero
  ADD s9, s5, zero
  LA s10, width
  LW s10, 0(s10)
  SLT s10, s10, s7
  XORI s10, s10, 1
  BNE s10, zero, bb83
  # implict jump to bb82
bb82:
  ADDIW s10, s3, 1
  ADD s0, s9, zero
  ADD s1, s8, zero
  ADD s2, s10, zero
  JAL zero, bb78
bb83:
  ADDI s0, zero, 1
  SUBW s0, s3, s0
  ADDI s1, zero, 2000
  MULW s0, s0, s1
  ADD s0, a0, s0
  ADDI s1, zero, 1
  SUBW s1, s7, s1
  SLLIW s1, s1, 2
  ADD s2, s0, s1
  LW s2, 0(s2)
  SLLIW s8, s7, 2
  ADD s9, s0, s8
  LW s9, 0(s9)
  ADDW s2, s2, s9
  ADDIW s7, s7, 1
  SLLIW s9, s7, 2
  ADD s0, s0, s9
  LW s0, 0(s0)
  ADDW s0, s2, s0
  ADDI s2, zero, 2000
  MULW s2, s3, s2
  ADD s10, a0, s2
  ADD s11, s10, s1
  LW s11, 0(s11)
  ADDW s0, s0, s11
  ADD s11, s10, s9
  LW s11, 0(s11)
  ADDW s0, s0, s11
  ADDIW s11, s3, 1
  ADDI t0, zero, 2000
  MULW s11, s11, t0
  ADD s11, a0, s11
  ADD s1, s11, s1
  LW s1, 0(s1)
  ADDW s0, s0, s1
  ADD s1, s11, s8
  LW s1, 0(s1)
  ADDW s0, s0, s1
  ADD s1, s11, s9
  LW s1, 0(s1)
  ADDW s0, s0, s1
  ADD s1, s10, s8
  LW s1, 0(s1)
  XORI s1, s1, 1
  SLTIU s1, s1, 1
  BNE s1, zero, bb91
  # implict jump to bb84
bb84:
  ADD s1, zero, zero
  # implict jump to bb85
bb85:
  ADD s1, s1, zero
  BNE s1, zero, bb90
  # implict jump to bb86
bb86:
  XORI s9, s0, 3
  SLTIU s9, s9, 1
  BNE s9, zero, bb89
  # implict jump to bb87
bb87:
  ADD s9, a1, s2
  ADD s9, s9, s8
  SW zero, 0(s9)
  # implict jump to bb88
bb88:
  ADD s5, s1, zero
  ADD s4, s0, zero
  ADD s6, s7, zero
  JAL zero, bb81
bb89:
  ADD s9, a1, s2
  ADD s9, s9, s8
  ADDI s10, zero, 1
  SW s10, 0(s9)
  JAL zero, bb88
bb90:
  ADD s2, a1, s2
  ADD s2, s2, s8
  ADDI s8, zero, 1
  SW s8, 0(s2)
  JAL zero, bb88
bb91:
  XORI s9, s0, 2
  SLTIU s9, s9, 1
  ADD s1, s9, zero
  JAL zero, bb85
read_map:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
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
  ADD s0, a0, zero
  ADD s0, zero, zero
  ADDI s1, zero, 1
  # implict jump to bb93
bb93:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, height
  LW s4, 0(s4)
  SLT s4, s4, s2
  XORI s4, s4, 1
  BNE s4, zero, bb95
  # implict jump to bb94
bb94:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb95:
  ADD s3, s3, zero
  ADDI s4, zero, 1
  # implict jump to bb96
bb96:
  ADD s5, s4, zero
  ADD s6, s3, zero
  LA s7, width
  LW s7, 0(s7)
  SLT s7, s7, s5
  XORI s7, s7, 1
  BNE s7, zero, bb98
  # implict jump to bb97
bb97:
  CALL getch
  ADD s7, a0, zero
  ADDIW s7, s2, 1
  ADD s0, s6, zero
  ADD s1, s7, zero
  JAL zero, bb93
bb98:
  CALL getch
  ADD a0, a0, zero
  XORI s0, a0, 35
  SLTIU s0, s0, 1
  BNE s0, zero, bb101
  # implict jump to bb99
bb99:
  ADDI s0, zero, 2000
  MULW s0, s2, s0
  LA s1, sheet1
  ADD s0, s1, s0
  SLLIW s1, s5, 2
  ADD s0, s0, s1
  SW zero, 0(s0)
  # implict jump to bb100
bb100:
  ADDIW s0, s5, 1
  ADD s3, a0, zero
  ADD s4, s0, zero
  JAL zero, bb96
bb101:
  ADDI s0, zero, 2000
  MULW s0, s2, s0
  LA s1, sheet1
  ADD s0, s1, s0
  SLLIW s1, s5, 2
  ADD s0, s0, s1
  ADDI s1, zero, 1
  SW s1, 0(s0)
  JAL zero, bb100
