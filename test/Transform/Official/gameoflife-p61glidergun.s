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
  LA s2, height
  LW s2, 0(s2)
  SLTI s2, s2, 1
  XORI s2, s2, 1
  BNE s2, zero, bb2
  # implict jump to bb1
bb1:
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
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb2:
  ADDI s2, zero, 1
  # implict jump to bb3
bb3:
  # implict jump to bb4
bb4:
  ADD s3, s2, zero
  LA s4, width
  LW s4, 0(s4)
  SLTI s4, s4, 1
  XORI s4, s4, 1
  BNE s4, zero, bb8
  # implict jump to bb5
bb5:
  ADDIW s0, s3, 1
  # implict jump to bb6
bb6:
  LA s5, height
  LW s5, 0(s5)
  SLT s5, s5, s0
  XORI s5, s5, 1
  BNE s5, zero, bb7
  JAL zero, bb1
bb7:
  ADD s2, s0, zero
  JAL zero, bb4
bb8:
  ADDI s4, zero, 1
  # implict jump to bb9
bb9:
  # implict jump to bb10
bb10:
  ADD s5, s4, zero
  ADDI s6, zero, 2000
  MULW s6, s3, s6
  LA s7, sheet1
  ADD s7, s7, s6
  SLLIW s8, s5, 2
  ADD s7, s7, s8
  LA s9, sheet2
  ADD s6, s9, s6
  ADD s6, s6, s8
  LW s6, 0(s6)
  SW s6, 0(s7)
  ADDIW s1, s5, 1
  # implict jump to bb11
bb11:
  LA s5, width
  LW s5, 0(s5)
  SLT s5, s5, s1
  XORI s5, s5, 1
  BNE s5, zero, bb12
  JAL zero, bb5
bb12:
  ADD s4, s1, zero
  JAL zero, bb10
put_map:
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
  LA s2, height
  LW s2, 0(s2)
  SLTI s2, s2, 1
  XORI s2, s2, 1
  BNE s2, zero, bb15
  # implict jump to bb14
bb14:
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
bb15:
  ADDI s2, zero, 1
  # implict jump to bb16
bb16:
  # implict jump to bb17
bb17:
  ADD s3, s2, zero
  LA s4, width
  LW s4, 0(s4)
  SLTI s4, s4, 1
  XORI s4, s4, 1
  BNE s4, zero, bb21
  # implict jump to bb18
bb18:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s1, s3, 1
  # implict jump to bb19
bb19:
  LA s5, height
  LW s5, 0(s5)
  SLT s5, s5, s1
  XORI s5, s5, 1
  BNE s5, zero, bb20
  JAL zero, bb14
bb20:
  ADD s2, s1, zero
  JAL zero, bb17
bb21:
  ADDI s4, zero, 1
  # implict jump to bb22
bb22:
  # implict jump to bb23
bb23:
  ADD s5, s4, zero
  ADDI s6, zero, 2000
  MULW s6, s3, s6
  LA s7, sheet1
  ADD s6, s7, s6
  SLLIW s7, s5, 2
  ADD s6, s6, s7
  LW s6, 0(s6)
  XORI s6, s6, 1
  SLTIU s6, s6, 1
  BNE s6, zero, bb28
  # implict jump to bb24
bb24:
  ADDI a0, zero, 46
  CALL putch
  # implict jump to bb25
bb25:
  ADDIW s0, s5, 1
  # implict jump to bb26
bb26:
  LA s5, width
  LW s5, 0(s5)
  SLT s5, s5, s0
  XORI s5, s5, 1
  BNE s5, zero, bb27
  JAL zero, bb18
bb27:
  ADD s4, s0, zero
  JAL zero, bb23
bb28:
  ADDI a0, zero, 35
  CALL putch
  JAL zero, bb25
main:
  ADDI sp, sp, -208
  SD ra, 104(sp)
  SD s0, 112(sp)
  SD s1, 120(sp)
  SD s2, 128(sp)
  SD s3, 136(sp)
  SD s4, 144(sp)
  SD s5, 152(sp)
  SD s6, 160(sp)
  SD s7, 168(sp)
  SD s8, 176(sp)
  SD s9, 184(sp)
  SD s10, 192(sp)
  SD s11, 200(sp)
  CALL getint
  ADD s6, a0, zero
  LA s5, width
  SW s6, 0(s5)
  CALL getint
  ADD s5, a0, zero
  LA s6, height
  SW s5, 0(s6)
  CALL getint
  ADD s5, a0, zero
  LA s6, steps
  SW s5, 0(s6)
  CALL getch
  LA s5, height
  LW s5, 0(s5)
  SLTI s5, s5, 1
  XORI s5, s5, 1
  BNE s5, zero, bb110
  # implict jump to bb30
bb30:
  ADDI a0, zero, 95
  CALL _sysy_starttime
  LA s1, steps
  LW s1, 0(s1)
  BLT zero, s1, bb60
  # implict jump to bb31
bb31:
  ADDI a0, zero, 106
  CALL _sysy_stoptime
  LA s2, active
  LW s2, 0(s2)
  XORI s2, s2, 2
  SLTIU s2, s2, 1
  BNE s2, zero, bb48
  # implict jump to bb32
bb32:
  LA s5, height
  LW s5, 0(s5)
  SLTI s5, s5, 1
  XORI s5, s5, 1
  BNE s5, zero, bb34
  # implict jump to bb33
bb33:
  ADD a0, zero, zero
  LD ra, 104(sp)
  LD s0, 112(sp)
  LD s1, 120(sp)
  LD s2, 128(sp)
  LD s3, 136(sp)
  LD s4, 144(sp)
  LD s5, 152(sp)
  LD s6, 160(sp)
  LD s7, 168(sp)
  LD s8, 176(sp)
  LD s9, 184(sp)
  LD s10, 192(sp)
  LD s11, 200(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
bb34:
  ADDI s5, zero, 1
  # implict jump to bb35
bb35:
  # implict jump to bb36
bb36:
  ADD s6, s5, zero
  LA s7, width
  LW s7, 0(s7)
  SLTI s7, s7, 1
  XORI s7, s7, 1
  BNE s7, zero, bb40
  # implict jump to bb37
bb37:
  ADDI a0, zero, 10
  CALL putch
  ADDIW t4, s6, 1
  SW t4, 28(sp)
  # implict jump to bb38
bb38:
  LA s8, height
  LW s8, 0(s8)
  LW t4, 28(sp)
  SLT s8, s8, t4
  XORI s8, s8, 1
  BNE s8, zero, bb39
  JAL zero, bb33
bb39:
  LW t4, 28(sp)
  ADD s5, t4, zero
  JAL zero, bb36
bb40:
  ADDI s7, zero, 1
  # implict jump to bb41
bb41:
  # implict jump to bb42
bb42:
  ADD s8, s7, zero
  ADDI s9, zero, 2000
  MULW s9, s6, s9
  LA s10, sheet1
  ADD s9, s10, s9
  SLLIW s10, s8, 2
  ADD s9, s9, s10
  LW s9, 0(s9)
  XORI s9, s9, 1
  SLTIU s9, s9, 1
  BNE s9, zero, bb47
  # implict jump to bb43
bb43:
  ADDI a0, zero, 46
  CALL putch
  # implict jump to bb44
bb44:
  ADDIW t4, s8, 1
  SW t4, 100(sp)
  # implict jump to bb45
bb45:
  LA s8, width
  LW s8, 0(s8)
  LW t4, 100(sp)
  SLT s8, s8, t4
  XORI s8, s8, 1
  BNE s8, zero, bb46
  JAL zero, bb37
bb46:
  LW t4, 100(sp)
  ADD s7, t4, zero
  JAL zero, bb42
bb47:
  ADDI a0, zero, 35
  CALL putch
  JAL zero, bb44
bb48:
  LA s2, height
  LW s2, 0(s2)
  SLTI s2, s2, 1
  XORI s2, s2, 1
  BNE s2, zero, bb49
  JAL zero, bb32
bb49:
  ADDI s2, zero, 1
  # implict jump to bb50
bb50:
  # implict jump to bb51
bb51:
  ADD s3, s2, zero
  LA s4, width
  LW s4, 0(s4)
  SLTI s4, s4, 1
  XORI s4, s4, 1
  BNE s4, zero, bb55
  # implict jump to bb52
bb52:
  ADDIW t4, s3, 1
  SW t4, 12(sp)
  # implict jump to bb53
bb53:
  LA s5, height
  LW s5, 0(s5)
  LW t4, 12(sp)
  SLT s5, s5, t4
  XORI s5, s5, 1
  BNE s5, zero, bb54
  JAL zero, bb32
bb54:
  LW t4, 12(sp)
  ADD s2, t4, zero
  JAL zero, bb51
bb55:
  ADDI s4, zero, 1
  # implict jump to bb56
bb56:
  # implict jump to bb57
bb57:
  ADD s5, s4, zero
  ADDI s6, zero, 2000
  MULW s6, s3, s6
  LA s7, sheet1
  ADD s7, s7, s6
  SLLIW s8, s5, 2
  ADD s7, s7, s8
  LA s9, sheet2
  ADD s6, s9, s6
  ADD s6, s6, s8
  LW s6, 0(s6)
  SW s6, 0(s7)
  ADDIW t4, s5, 1
  SW t4, 72(sp)
  # implict jump to bb58
bb58:
  LA s5, width
  LW s5, 0(s5)
  LW t4, 72(sp)
  SLT s5, s5, t4
  XORI s5, s5, 1
  BNE s5, zero, bb59
  JAL zero, bb52
bb59:
  LW t4, 72(sp)
  ADD s4, t4, zero
  JAL zero, bb57
bb60:
  # implict jump to bb61
bb61:
  LA s1, active
  LW s1, 0(s1)
  XORI s1, s1, 1
  SLTIU s1, s1, 1
  BNE s1, zero, bb87
  # implict jump to bb62
bb62:
  LA s1, height
  LW s1, 0(s1)
  SLTI s1, s1, 1
  XORI s1, s1, 1
  BNE s1, zero, bb66
  # implict jump to bb63
bb63:
  LA s0, active
  ADDI s1, zero, 1
  SW s1, 0(s0)
  # implict jump to bb64
bb64:
  LA s2, steps
  LW s2, 0(s2)
  ADDI s3, zero, 1
  SUBW s2, s2, s3
  LA s3, steps
  SW s2, 0(s3)
  # implict jump to bb65
bb65:
  LA s2, steps
  LW s2, 0(s2)
  ADDI s3, zero, 0
  BLT s3, s2, bb61
  JAL zero, bb31
bb66:
  ADDI s1, zero, 1
  # implict jump to bb67
bb67:
  ADD t4, s1, zero
  SW t4, 56(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  ADD t4, zero, zero
  SB t4, 3(sp)
  # implict jump to bb68
bb68:
  LB t4, 3(sp)
  ADD s6, t4, zero
  LW t4, 48(sp)
  ADD s8, t4, zero
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LA s10, width
  LW s10, 0(s10)
  SLTI s10, s10, 1
  XORI s10, s10, 1
  BNE s10, zero, bb73
  # implict jump to bb69
bb69:
  # implict jump to bb70
bb70:
  ADD t4, s6, zero
  SB t4, 2(sp)
  ADD t4, s8, zero
  SW t4, 52(sp)
  LW t3, 36(sp)
  ADDIW t4, t3, 1
  SW t4, 60(sp)
  # implict jump to bb71
bb71:
  LA s0, height
  LW s0, 0(s0)
  LW t4, 60(sp)
  SLT s0, s0, t4
  XORI s0, s0, 1
  BNE s0, zero, bb72
  JAL zero, bb63
bb72:
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LB t3, 2(sp)
  ADD t4, t3, zero
  SB t4, 3(sp)
  JAL zero, bb68
bb73:
  ADDI s10, zero, 1
  # implict jump to bb74
bb74:
  ADD t4, s10, zero
  SW t4, 40(sp)
  # implict jump to bb75
bb75:
  LW t4, 40(sp)
  ADD s10, t4, zero
  ADDI s9, zero, 1
  LW t4, 36(sp)
  SUBW s9, t4, s9
  ADDI s5, zero, 2000
  MULW s5, s9, s5
  LA s9, sheet2
  ADD s5, s9, s5
  ADDI s9, zero, 1
  SUBW s9, s10, s9
  SLLIW s9, s9, 2
  ADD s0, s5, s9
  LW s0, 0(s0)
  SLLIW s3, s10, 2
  ADD s7, s5, s3
  LW s7, 0(s7)
  ADDW s0, s0, s7
  ADDIW t4, s10, 1
  SW t4, 44(sp)
  LW t4, 44(sp)
  SLLIW s7, t4, 2
  ADD s5, s5, s7
  LW s5, 0(s5)
  ADDW s0, s0, s5
  ADDI s5, zero, 2000
  LW t4, 36(sp)
  MULW s5, t4, s5
  LA s10, sheet2
  ADD s10, s10, s5
  ADD s1, s10, s9
  LW s1, 0(s1)
  ADDW s0, s0, s1
  ADD s1, s10, s7
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LW t4, 36(sp)
  ADDIW s1, t4, 1
  ADDI s11, zero, 2000
  MULW s1, s1, s11
  LA s11, sheet2
  ADD s1, s11, s1
  ADD s9, s1, s9
  LW s9, 0(s9)
  ADDW s0, s0, s9
  ADD s9, s1, s3
  LW s9, 0(s9)
  ADDW s0, s0, s9
  ADD s1, s1, s7
  LW s1, 0(s1)
  ADDW s4, s0, s1
  ADD s0, s10, s3
  LW s0, 0(s0)
  XORI s0, s0, 1
  SLTIU s0, s0, 1
  BNE s0, zero, bb86
  # implict jump to bb76
bb76:
  ADD s0, zero, zero
  # implict jump to bb77
bb77:
  ADD s2, s0, zero
  BNE s2, zero, bb85
  # implict jump to bb78
bb78:
  XORI s0, s4, 3
  SLTIU s0, s0, 1
  BNE s0, zero, bb84
  # implict jump to bb79
bb79:
  LA s0, sheet1
  ADD s0, s0, s5
  ADD s0, s0, s3
  SW zero, 0(s0)
  # implict jump to bb80
bb80:
  # implict jump to bb81
bb81:
  LA s0, width
  LW s0, 0(s0)
  LW t4, 44(sp)
  SLT s0, s0, t4
  XORI s0, s0, 1
  BNE s0, zero, bb83
  # implict jump to bb82
bb82:
  ADD s8, s4, zero
  ADD s6, s2, zero
  JAL zero, bb70
bb83:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb75
bb84:
  LA s0, sheet1
  ADD s0, s0, s5
  ADD s0, s0, s3
  ADDI s1, zero, 1
  SW s1, 0(s0)
  JAL zero, bb80
bb85:
  LA s0, sheet1
  ADD s0, s0, s5
  ADD s0, s0, s3
  ADDI s1, zero, 1
  SW s1, 0(s0)
  JAL zero, bb80
bb86:
  XORI s1, s4, 2
  SLTIU s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb77
bb87:
  LA s0, height
  LW s0, 0(s0)
  SLTI s0, s0, 1
  XORI s0, s0, 1
  BNE s0, zero, bb89
  # implict jump to bb88
bb88:
  LA s2, active
  ADDI s3, zero, 2
  SW s3, 0(s2)
  JAL zero, bb64
bb89:
  ADDI s0, zero, 1
  # implict jump to bb90
bb90:
  ADD s1, zero, zero
  ADD t4, zero, zero
  SB t4, 0(sp)
  # implict jump to bb91
bb91:
  LB t4, 0(sp)
  ADD s3, t4, zero
  ADD s4, s1, zero
  ADD t4, s0, zero
  SW t4, 64(sp)
  LA s6, width
  LW s6, 0(s6)
  SLTI s6, s6, 1
  XORI s6, s6, 1
  BNE s6, zero, bb96
  # implict jump to bb92
bb92:
  # implict jump to bb93
bb93:
  ADD t4, s3, zero
  SB t4, 1(sp)
  ADD t4, s4, zero
  SW t4, 80(sp)
  LW t3, 64(sp)
  ADDIW t4, t3, 1
  SW t4, 76(sp)
  # implict jump to bb94
bb94:
  LA s2, height
  LW s2, 0(s2)
  LW t4, 76(sp)
  SLT s2, s2, t4
  XORI s2, s2, 1
  BNE s2, zero, bb95
  JAL zero, bb88
bb95:
  LW t4, 76(sp)
  ADD s0, t4, zero
  LW t4, 80(sp)
  ADD s1, t4, zero
  LB t3, 1(sp)
  ADD t4, t3, zero
  SB t4, 0(sp)
  JAL zero, bb91
bb96:
  ADDI s6, zero, 1
  # implict jump to bb97
bb97:
  ADD t4, s6, zero
  SW t4, 68(sp)
  # implict jump to bb98
bb98:
  LW t4, 68(sp)
  ADD s7, t4, zero
  ADDI s8, zero, 1
  LW t4, 64(sp)
  SUBW s8, t4, s8
  ADDI s9, zero, 2000
  MULW s8, s8, s9
  LA s9, sheet1
  ADD s8, s9, s8
  ADDI s9, zero, 1
  SUBW s9, s7, s9
  SLLIW s9, s9, 2
  ADD s10, s8, s9
  LW s10, 0(s10)
  SLLIW s11, s7, 2
  ADD s5, s8, s11
  LW s5, 0(s5)
  ADDW s5, s10, s5
  ADDIW t4, s7, 1
  SW t4, 84(sp)
  LW t4, 84(sp)
  SLLIW s7, t4, 2
  ADD s8, s8, s7
  LW s8, 0(s8)
  ADDW s5, s5, s8
  ADDI s8, zero, 2000
  LW t4, 64(sp)
  MULW s8, t4, s8
  LA s10, sheet1
  ADD s10, s10, s8
  ADD s6, s10, s9
  LW s6, 0(s6)
  ADDW s5, s5, s6
  ADD s6, s10, s7
  LW s6, 0(s6)
  ADDW s5, s5, s6
  LW t4, 64(sp)
  ADDIW s6, t4, 1
  ADDI s2, zero, 2000
  MULW s2, s6, s2
  LA s6, sheet1
  ADD s2, s6, s2
  ADD s6, s2, s9
  LW s6, 0(s6)
  ADDW s5, s5, s6
  ADD s6, s2, s11
  LW s6, 0(s6)
  ADDW s5, s5, s6
  ADD s2, s2, s7
  LW s2, 0(s2)
  ADDW t4, s5, s2
  SW t4, 32(sp)
  ADD s2, s10, s11
  LW s2, 0(s2)
  XORI s2, s2, 1
  SLTIU s2, s2, 1
  BNE s2, zero, bb109
  # implict jump to bb99
bb99:
  ADD s2, zero, zero
  # implict jump to bb100
bb100:
  ADD t4, s2, zero
  SB t4, 4(sp)
  LB t4, 4(sp)
  BNE t4, zero, bb108
  # implict jump to bb101
bb101:
  LW t4, 32(sp)
  XORI s2, t4, 3
  SLTIU s2, s2, 1
  BNE s2, zero, bb107
  # implict jump to bb102
bb102:
  LA s2, sheet2
  ADD s2, s2, s8
  ADD s2, s2, s11
  SW zero, 0(s2)
  # implict jump to bb103
bb103:
  # implict jump to bb104
bb104:
  LA s2, width
  LW s2, 0(s2)
  LW t4, 84(sp)
  SLT s2, s2, t4
  XORI s2, s2, 1
  BNE s2, zero, bb106
  # implict jump to bb105
bb105:
  LW t4, 32(sp)
  ADD s4, t4, zero
  LB t4, 4(sp)
  ADD s3, t4, zero
  JAL zero, bb93
bb106:
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  JAL zero, bb98
bb107:
  LA s2, sheet2
  ADD s2, s2, s8
  ADD s2, s2, s11
  ADDI s5, zero, 1
  SW s5, 0(s2)
  JAL zero, bb103
bb108:
  LA s2, sheet2
  ADD s2, s2, s8
  ADD s2, s2, s11
  ADDI s5, zero, 1
  SW s5, 0(s2)
  JAL zero, bb103
bb109:
  LW t4, 32(sp)
  XORI s5, t4, 2
  SLTIU s5, s5, 1
  ADD s2, s5, zero
  JAL zero, bb100
bb110:
  ADDI s5, zero, 1
  # implict jump to bb111
bb111:
  ADD t4, s5, zero
  SW t4, 20(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb112
bb112:
  LW t4, 8(sp)
  ADD s6, t4, zero
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LA s5, width
  LW s5, 0(s5)
  SLTI s5, s5, 1
  XORI s5, s5, 1
  BNE s5, zero, bb117
  # implict jump to bb113
bb113:
  ADD s5, s6, zero
  # implict jump to bb114
bb114:
  ADD t4, s5, zero
  SW t4, 92(sp)
  CALL getch
  LW t3, 16(sp)
  ADDIW t4, t3, 1
  SW t4, 88(sp)
  # implict jump to bb115
bb115:
  LA s1, height
  LW s1, 0(s1)
  LW t4, 88(sp)
  SLT s1, s1, t4
  XORI s1, s1, 1
  BNE s1, zero, bb116
  JAL zero, bb30
bb116:
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  JAL zero, bb112
bb117:
  ADDI s6, zero, 1
  # implict jump to bb118
bb118:
  ADD t4, s6, zero
  SW t4, 24(sp)
  # implict jump to bb119
bb119:
  LW t4, 24(sp)
  ADD s6, t4, zero
  CALL getch
  ADD s8, a0, zero
  XORI s1, s8, 35
  SLTIU s1, s1, 1
  BNE s1, zero, bb125
  # implict jump to bb120
bb120:
  ADDI s1, zero, 2000
  LW t4, 16(sp)
  MULW s1, t4, s1
  LA s3, sheet1
  ADD s1, s3, s1
  SLLIW s3, s6, 2
  ADD s1, s1, s3
  SW zero, 0(s1)
  # implict jump to bb121
bb121:
  ADDIW t4, s6, 1
  SW t4, 96(sp)
  # implict jump to bb122
bb122:
  LA s1, width
  LW s1, 0(s1)
  LW t4, 96(sp)
  SLT s1, s1, t4
  XORI s1, s1, 1
  BNE s1, zero, bb124
  # implict jump to bb123
bb123:
  ADD s5, s8, zero
  JAL zero, bb114
bb124:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  JAL zero, bb119
bb125:
  ADDI s1, zero, 2000
  LW t4, 16(sp)
  MULW s1, t4, s1
  LA s3, sheet1
  ADD s1, s3, s1
  SLLIW s3, s6, 2
  ADD s1, s1, s3
  ADDI s3, zero, 1
  SW s3, 0(s1)
  JAL zero, bb121
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
  LA s6, height
  LW s6, 0(s6)
  SLTI s6, s6, 1
  XORI s6, s6, 1
  BNE s6, zero, bb128
  # implict jump to bb127
bb127:
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
bb128:
  ADDI s6, zero, 1
  # implict jump to bb129
bb129:
  ADD s7, zero, zero
  ADD s8, zero, zero
  # implict jump to bb130
bb130:
  ADD s9, s8, zero
  ADD s10, s7, zero
  ADD s11, s6, zero
  LA t0, width
  LW t0, 0(t0)
  SLTI t0, t0, 1
  XORI t0, t0, 1
  BNE t0, zero, bb135
  # implict jump to bb131
bb131:
  # implict jump to bb132
bb132:
  ADD s5, s9, zero
  ADD s2, s10, zero
  ADDIW s1, s11, 1
  # implict jump to bb133
bb133:
  LA s3, height
  LW s3, 0(s3)
  SLT s3, s3, s1
  XORI s3, s3, 1
  BNE s3, zero, bb134
  JAL zero, bb127
bb134:
  ADD s6, s1, zero
  ADD s7, s2, zero
  ADD s8, s5, zero
  JAL zero, bb130
bb135:
  ADDI t0, zero, 1
  # implict jump to bb136
bb136:
  # implict jump to bb137
bb137:
  ADD t1, t0, zero
  ADDI t2, zero, 1
  SUBW t2, s11, t2
  ADDI a2, zero, 2000
  MULW t2, t2, a2
  ADD t2, a0, t2
  ADDI a2, zero, 1
  SUBW a2, t1, a2
  SLLIW a2, a2, 2
  ADD a3, t2, a2
  LW a3, 0(a3)
  SLLIW a4, t1, 2
  ADD a5, t2, a4
  LW a5, 0(a5)
  ADDW a3, a3, a5
  ADDIW s0, t1, 1
  SLLIW t1, s0, 2
  ADD t2, t2, t1
  LW t2, 0(t2)
  ADDW t2, a3, t2
  ADDI a3, zero, 2000
  MULW a3, s11, a3
  ADD a5, a0, a3
  ADD a6, a5, a2
  LW a6, 0(a6)
  ADDW t2, t2, a6
  ADD a6, a5, t1
  LW a6, 0(a6)
  ADDW t2, t2, a6
  ADDIW a6, s11, 1
  ADDI a7, zero, 2000
  MULW a6, a6, a7
  ADD a6, a0, a6
  ADD a2, a6, a2
  LW a2, 0(a2)
  ADDW t2, t2, a2
  ADD a2, a6, a4
  LW a2, 0(a2)
  ADDW t2, t2, a2
  ADD t1, a6, t1
  LW t1, 0(t1)
  ADDW s3, t2, t1
  ADD t1, a5, a4
  LW t1, 0(t1)
  XORI t1, t1, 1
  SLTIU t1, t1, 1
  BNE t1, zero, bb148
  # implict jump to bb138
bb138:
  ADD t1, zero, zero
  # implict jump to bb139
bb139:
  ADD s4, t1, zero
  BNE s4, zero, bb147
  # implict jump to bb140
bb140:
  XORI t1, s3, 3
  SLTIU t1, t1, 1
  BNE t1, zero, bb146
  # implict jump to bb141
bb141:
  ADD t1, a1, a3
  ADD t1, t1, a4
  SW zero, 0(t1)
  # implict jump to bb142
bb142:
  # implict jump to bb143
bb143:
  LA t1, width
  LW t1, 0(t1)
  SLT t1, t1, s0
  XORI t1, t1, 1
  BNE t1, zero, bb145
  # implict jump to bb144
bb144:
  ADD s10, s3, zero
  ADD s9, s4, zero
  JAL zero, bb132
bb145:
  ADD t0, s0, zero
  JAL zero, bb137
bb146:
  ADD t1, a1, a3
  ADD t1, t1, a4
  ADDI t2, zero, 1
  SW t2, 0(t1)
  JAL zero, bb142
bb147:
  ADD t1, a1, a3
  ADD t1, t1, a4
  ADDI t2, zero, 1
  SW t2, 0(t1)
  JAL zero, bb142
bb148:
  XORI t2, s3, 2
  SLTIU t2, t2, 1
  ADD t1, t2, zero
  JAL zero, bb139
read_map:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s9, 8(sp)
  SD s0, 16(sp)
  SD s1, 24(sp)
  SD s2, 32(sp)
  SD s3, 40(sp)
  SD s4, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  CALL getint
  ADD s4, a0, zero
  LA s5, width
  SW s4, 0(s5)
  CALL getint
  ADD s4, a0, zero
  LA s5, height
  SW s4, 0(s5)
  CALL getint
  ADD s4, a0, zero
  LA s5, steps
  SW s4, 0(s5)
  CALL getch
  LA s4, height
  LW s4, 0(s4)
  SLTI s4, s4, 1
  XORI s4, s4, 1
  BNE s4, zero, bb151
  # implict jump to bb150
bb150:
  LD ra, 0(sp)
  LD s9, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s3, 40(sp)
  LD s4, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb151:
  ADDI s4, zero, 1
  # implict jump to bb152
bb152:
  ADD s5, zero, zero
  # implict jump to bb153
bb153:
  ADD s6, s5, zero
  ADD s7, s4, zero
  LA s8, width
  LW s8, 0(s8)
  SLTI s8, s8, 1
  XORI s8, s8, 1
  BNE s8, zero, bb158
  # implict jump to bb154
bb154:
  # implict jump to bb155
bb155:
  ADD s3, s6, zero
  CALL getch
  ADDIW s2, s7, 1
  # implict jump to bb156
bb156:
  LA s1, height
  LW s1, 0(s1)
  SLT s1, s1, s2
  XORI s1, s1, 1
  BNE s1, zero, bb157
  JAL zero, bb150
bb157:
  ADD s4, s2, zero
  ADD s5, s3, zero
  JAL zero, bb153
bb158:
  ADDI s8, zero, 1
  # implict jump to bb159
bb159:
  # implict jump to bb160
bb160:
  ADD s9, s8, zero
  CALL getch
  ADD s1, a0, zero
  XORI s10, s1, 35
  SLTIU s10, s10, 1
  BNE s10, zero, bb166
  # implict jump to bb161
bb161:
  ADDI s10, zero, 2000
  MULW s10, s7, s10
  LA s11, sheet1
  ADD s10, s11, s10
  SLLIW s11, s9, 2
  ADD s10, s10, s11
  SW zero, 0(s10)
  # implict jump to bb162
bb162:
  ADDIW s0, s9, 1
  # implict jump to bb163
bb163:
  LA s9, width
  LW s9, 0(s9)
  SLT s9, s9, s0
  XORI s9, s9, 1
  BNE s9, zero, bb165
  # implict jump to bb164
bb164:
  ADD s6, s1, zero
  JAL zero, bb155
bb165:
  ADD s8, s0, zero
  JAL zero, bb160
bb166:
  ADDI s10, zero, 2000
  MULW s10, s7, s10
  LA s11, sheet1
  ADD s10, s11, s10
  SLLIW s11, s9, 2
  ADD s10, s10, s11
  ADDI s11, zero, 1
  SW s11, 0(s10)
  JAL zero, bb162
