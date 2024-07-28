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
  SD s10, 88(sp)
  LA s5, height
  LW s5, 0(s5)
  SLTI s5, s5, 1
  XORI s5, s5, 1
  BNE s5, zero, bb2
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
  LD s10, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb2:
  ADDI s5, zero, 1
  # implict jump to bb3
bb3:
  LA s6, width
  LW s6, 0(s6)
  SLTI s6, s6, 1
  XORI s3, s6, 1
  # implict jump to bb4
bb4:
  ADD s6, s5, zero
  BNE s3, zero, bb8
  # implict jump to bb5
bb5:
  ADDIW s0, s6, 1
  # implict jump to bb6
bb6:
  LA s8, height
  LW s8, 0(s8)
  SLT s8, s8, s0
  XORI s8, s8, 1
  BNE s8, zero, bb7
  JAL zero, bb1
bb7:
  ADD s5, s0, zero
  JAL zero, bb4
bb8:
  ADDI s7, zero, 1
  # implict jump to bb9
bb9:
  ADDI s8, zero, 2000
  MULW s8, s6, s8
  LA s9, sheet1
  ADD s1, s9, s8
  LA s9, sheet2
  ADD s2, s9, s8
  # implict jump to bb10
bb10:
  ADD s8, s7, zero
  SLLIW s9, s8, 2
  ADD s10, s1, s9
  ADD s9, s2, s9
  LW s9, 0(s9)
  SW s9, 0(s10)
  ADDIW s4, s8, 1
  # implict jump to bb11
bb11:
  LA s8, width
  LW s8, 0(s8)
  SLT s8, s8, s4
  XORI s8, s8, 1
  BNE s8, zero, bb12
  JAL zero, bb5
bb12:
  ADD s7, s4, zero
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
  LA s3, height
  LW s3, 0(s3)
  SLTI s3, s3, 1
  XORI s3, s3, 1
  BNE s3, zero, bb15
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
  ADDI s3, zero, 1
  # implict jump to bb16
bb16:
  # implict jump to bb17
bb17:
  ADD s4, s3, zero
  LA s5, width
  LW s5, 0(s5)
  SLTI s5, s5, 1
  XORI s5, s5, 1
  BNE s5, zero, bb21
  # implict jump to bb18
bb18:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s0, s4, 1
  # implict jump to bb19
bb19:
  LA s6, height
  LW s6, 0(s6)
  SLT s6, s6, s0
  XORI s6, s6, 1
  BNE s6, zero, bb20
  JAL zero, bb14
bb20:
  ADD s3, s0, zero
  JAL zero, bb17
bb21:
  ADDI s5, zero, 1
  # implict jump to bb22
bb22:
  ADDI s6, zero, 2000
  MULW s6, s4, s6
  LA s7, sheet1
  ADD s1, s7, s6
  # implict jump to bb23
bb23:
  ADD s6, s5, zero
  SLLIW s7, s6, 2
  ADD s7, s1, s7
  LW s7, 0(s7)
  XORI s7, s7, 1
  SLTIU s7, s7, 1
  BNE s7, zero, bb28
  # implict jump to bb24
bb24:
  ADDI a0, zero, 46
  CALL putch
  # implict jump to bb25
bb25:
  ADDIW s2, s6, 1
  # implict jump to bb26
bb26:
  LA s6, width
  LW s6, 0(s6)
  SLT s6, s6, s2
  XORI s6, s6, 1
  BNE s6, zero, bb27
  JAL zero, bb18
bb27:
  ADD s5, s2, zero
  JAL zero, bb23
bb28:
  ADDI a0, zero, 35
  CALL putch
  JAL zero, bb25
main:
  ADDI sp, sp, -272
  SD s2, 96(sp)
  SD ra, 112(sp)
  SD s0, 120(sp)
  SD s1, 128(sp)
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
  ADD s7, a0, zero
  LA s1, width
  SW s7, 0(s1)
  CALL getint
  ADD s1, a0, zero
  LA s7, height
  SW s1, 0(s7)
  CALL getint
  ADD s1, a0, zero
  LA s7, steps
  SW s1, 0(s7)
  CALL getch
  LA s1, height
  LW s1, 0(s1)
  SLTI s1, s1, 1
  XORI s1, s1, 1
  BNE s1, zero, bb110
  # implict jump to bb30
bb30:
  ADDI a0, zero, 95
  CALL _sysy_starttime
  LA s0, steps
  LW s0, 0(s0)
  BLT zero, s0, bb60
  # implict jump to bb31
bb31:
  ADDI a0, zero, 106
  CALL _sysy_stoptime
  LA s3, active
  LW s3, 0(s3)
  XORI s3, s3, 2
  SLTIU s3, s3, 1
  BNE s3, zero, bb48
  # implict jump to bb32
bb32:
  LA s8, height
  LW s8, 0(s8)
  SLTI s8, s8, 1
  XORI s8, s8, 1
  BNE s8, zero, bb34
  # implict jump to bb33
bb33:
  ADD a0, zero, zero
  LD s2, 96(sp)
  LD ra, 112(sp)
  LD s0, 120(sp)
  LD s1, 128(sp)
  LD s3, 136(sp)
  LD s4, 144(sp)
  LD s5, 152(sp)
  LD s6, 160(sp)
  LD s7, 168(sp)
  LD s8, 176(sp)
  LD s9, 184(sp)
  LD s10, 192(sp)
  LD s11, 200(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb34:
  ADDI s8, zero, 1
  # implict jump to bb35
bb35:
  # implict jump to bb36
bb36:
  ADD s9, s8, zero
  LA s10, width
  LW s10, 0(s10)
  SLTI s10, s10, 1
  XORI s10, s10, 1
  BNE s10, zero, bb40
  # implict jump to bb37
bb37:
  ADDI a0, zero, 10
  CALL putch
  ADDIW t4, s9, 1
  SW t4, 40(sp)
  # implict jump to bb38
bb38:
  LA s10, height
  LW s10, 0(s10)
  LW t4, 40(sp)
  SLT s10, s10, t4
  XORI s10, s10, 1
  BNE s10, zero, bb39
  JAL zero, bb33
bb39:
  LW t4, 40(sp)
  ADD s8, t4, zero
  JAL zero, bb36
bb40:
  ADDI s10, zero, 1
  # implict jump to bb41
bb41:
  ADDI s11, zero, 2000
  MULW s11, s9, s11
  LA s5, sheet1
  ADD t4, s5, s11
  SD t4, 104(sp)
  ADD s5, s10, zero
  # implict jump to bb42
bb42:
  ADD s10, s5, zero
  SLLIW s11, s10, 2
  LD t4, 104(sp)
  ADD s11, t4, s11
  LW s11, 0(s11)
  XORI s11, s11, 1
  SLTIU s11, s11, 1
  BNE s11, zero, bb47
  # implict jump to bb43
bb43:
  ADDI a0, zero, 46
  CALL putch
  # implict jump to bb44
bb44:
  ADDIW t4, s10, 1
  SW t4, 36(sp)
  # implict jump to bb45
bb45:
  LA s10, width
  LW s10, 0(s10)
  LW t4, 36(sp)
  SLT s10, s10, t4
  XORI s10, s10, 1
  BNE s10, zero, bb46
  JAL zero, bb37
bb46:
  LW t4, 36(sp)
  ADD s5, t4, zero
  JAL zero, bb42
bb47:
  ADDI a0, zero, 35
  CALL putch
  JAL zero, bb44
bb48:
  LA s3, height
  LW s3, 0(s3)
  SLTI s3, s3, 1
  XORI s3, s3, 1
  BNE s3, zero, bb49
  JAL zero, bb32
bb49:
  ADDI s3, zero, 1
  # implict jump to bb50
bb50:
  LA s4, width
  LW s4, 0(s4)
  SLTI s4, s4, 1
  XORI t4, s4, 1
  SB t4, 2(sp)
  # implict jump to bb51
bb51:
  ADD s4, s3, zero
  LB t4, 2(sp)
  BNE t4, zero, bb55
  # implict jump to bb52
bb52:
  ADDIW t4, s4, 1
  SW t4, 28(sp)
  # implict jump to bb53
bb53:
  LA s8, height
  LW s8, 0(s8)
  LW t4, 28(sp)
  SLT s8, s8, t4
  XORI s8, s8, 1
  BNE s8, zero, bb54
  JAL zero, bb32
bb54:
  LW t4, 28(sp)
  ADD s3, t4, zero
  JAL zero, bb51
bb55:
  ADDI s7, zero, 1
  # implict jump to bb56
bb56:
  ADDI s8, zero, 2000
  MULW s8, s4, s8
  LA s9, sheet1
  ADD t4, s9, s8
  SD t4, 216(sp)
  LA s9, sheet2
  ADD t4, s9, s8
  SD t4, 248(sp)
  # implict jump to bb57
bb57:
  ADD s8, s7, zero
  SLLIW s9, s8, 2
  LD t4, 216(sp)
  ADD s10, t4, s9
  LD t4, 248(sp)
  ADD s9, t4, s9
  LW s9, 0(s9)
  SW s9, 0(s10)
  ADDIW t4, s8, 1
  SW t4, 24(sp)
  # implict jump to bb58
bb58:
  LA s8, width
  LW s8, 0(s8)
  LW t4, 24(sp)
  SLT s8, s8, t4
  XORI s8, s8, 1
  BNE s8, zero, bb59
  JAL zero, bb52
bb59:
  LW t4, 24(sp)
  ADD s7, t4, zero
  JAL zero, bb57
bb60:
  # implict jump to bb61
bb61:
  LA s0, active
  LW s0, 0(s0)
  XORI s0, s0, 1
  SLTIU s0, s0, 1
  BNE s0, zero, bb87
  # implict jump to bb62
bb62:
  LA s0, height
  LW s0, 0(s0)
  SLTI s0, s0, 1
  XORI s0, s0, 1
  BNE s0, zero, bb66
  # implict jump to bb63
bb63:
  LA s2, active
  ADDI s3, zero, 1
  SW s3, 0(s2)
  # implict jump to bb64
bb64:
  LA s3, steps
  LW s3, 0(s3)
  ADDI s4, zero, 1
  SUBW s3, s3, s4
  LA s4, steps
  SW s3, 0(s4)
  # implict jump to bb65
bb65:
  LA s3, steps
  LW s3, 0(s3)
  ADDI s4, zero, 0
  BLT s4, s3, bb61
  JAL zero, bb31
bb66:
  ADDI s0, zero, 1
  # implict jump to bb67
bb67:
  LA s1, width
  LW s1, 0(s1)
  SLTI s1, s1, 1
  XORI t4, s1, 1
  SB t4, 1(sp)
  ADD s1, zero, zero
  ADD t4, zero, zero
  SB t4, 6(sp)
  # implict jump to bb68
bb68:
  LB t4, 6(sp)
  ADD s7, t4, zero
  ADD s9, s1, zero
  ADD t4, s0, zero
  SW t4, 32(sp)
  LB t4, 1(sp)
  BNE t4, zero, bb73
  # implict jump to bb69
bb69:
  # implict jump to bb70
bb70:
  ADD t4, s7, zero
  SB t4, 4(sp)
  ADD s11, s9, zero
  LW t3, 32(sp)
  ADDIW t4, t3, 1
  SW t4, 20(sp)
  # implict jump to bb71
bb71:
  LA s2, height
  LW s2, 0(s2)
  LW t4, 20(sp)
  SLT s2, s2, t4
  XORI s2, s2, 1
  BNE s2, zero, bb72
  JAL zero, bb63
bb72:
  LW t4, 20(sp)
  ADD s0, t4, zero
  ADD s1, s11, zero
  LB t3, 4(sp)
  ADD t4, t3, zero
  SB t4, 6(sp)
  JAL zero, bb68
bb73:
  ADDI s6, zero, 1
  # implict jump to bb74
bb74:
  ADDI s2, zero, 1
  LW t4, 32(sp)
  SUBW s2, t4, s2
  ADDI s8, zero, 2000
  MULW s2, s2, s8
  LA s8, sheet2
  ADD t4, s8, s2
  SD t4, 208(sp)
  ADDI s2, zero, 2000
  LW t3, 32(sp)
  MULW t4, t3, s2
  SW t4, 64(sp)
  LA s2, sheet2
  LW t3, 64(sp)
  ADD t4, s2, t3
  SD t4, 264(sp)
  LW t4, 32(sp)
  ADDIW s2, t4, 1
  ADDI s8, zero, 2000
  MULW s2, s2, s8
  LA s8, sheet2
  ADD t4, s8, s2
  SD t4, 256(sp)
  ADD t4, s6, zero
  SW t4, 8(sp)
  # implict jump to bb75
bb75:
  LW t4, 8(sp)
  ADD s6, t4, zero
  ADDI s8, zero, 1
  SUBW s8, s6, s8
  SLLIW s8, s8, 2
  LD t4, 208(sp)
  ADD s2, t4, s8
  LW s2, 0(s2)
  SLLIW s4, s6, 2
  LD t4, 208(sp)
  ADD s3, t4, s4
  LW s3, 0(s3)
  ADDW s2, s2, s3
  ADDIW t4, s6, 1
  SW t4, 44(sp)
  LW t4, 44(sp)
  SLLIW s3, t4, 2
  LD t4, 208(sp)
  ADD s6, t4, s3
  LW s6, 0(s6)
  ADDW s2, s2, s6
  LD t4, 264(sp)
  ADD s6, t4, s8
  LW s6, 0(s6)
  ADDW s2, s2, s6
  LD t4, 264(sp)
  ADD s6, t4, s3
  LW s6, 0(s6)
  ADDW s2, s2, s6
  LD t4, 256(sp)
  ADD s6, t4, s8
  LW s6, 0(s6)
  ADDW s2, s2, s6
  LD t4, 256(sp)
  ADD s6, t4, s4
  LW s6, 0(s6)
  ADDW s2, s2, s6
  LD t4, 256(sp)
  ADD s3, t4, s3
  LW s3, 0(s3)
  ADDW s5, s2, s3
  LD t4, 264(sp)
  ADD s2, t4, s4
  LW s2, 0(s2)
  XORI s2, s2, 1
  SLTIU s2, s2, 1
  BNE s2, zero, bb86
  # implict jump to bb76
bb76:
  ADD s2, zero, zero
  # implict jump to bb77
bb77:
  ADD s10, s2, zero
  BNE s10, zero, bb85
  # implict jump to bb78
bb78:
  XORI s2, s5, 3
  SLTIU s2, s2, 1
  BNE s2, zero, bb84
  # implict jump to bb79
bb79:
  LA s2, sheet1
  LW t4, 64(sp)
  ADD s2, s2, t4
  ADD s2, s2, s4
  SW zero, 0(s2)
  # implict jump to bb80
bb80:
  # implict jump to bb81
bb81:
  LA s2, width
  LW s2, 0(s2)
  LW t4, 44(sp)
  SLT s2, s2, t4
  XORI s2, s2, 1
  BNE s2, zero, bb83
  # implict jump to bb82
bb82:
  ADD s9, s5, zero
  ADD s7, s10, zero
  JAL zero, bb70
bb83:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  JAL zero, bb75
bb84:
  LA s2, sheet1
  LW t4, 64(sp)
  ADD s2, s2, t4
  ADD s2, s2, s4
  ADDI s3, zero, 1
  SW s3, 0(s2)
  JAL zero, bb80
bb85:
  LA s2, sheet1
  LW t4, 64(sp)
  ADD s2, s2, t4
  ADD s2, s2, s4
  ADDI s3, zero, 1
  SW s3, 0(s2)
  JAL zero, bb80
bb86:
  XORI s3, s5, 2
  SLTIU s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb77
bb87:
  LA s0, height
  LW s0, 0(s0)
  SLTI s0, s0, 1
  XORI s0, s0, 1
  BNE s0, zero, bb89
  # implict jump to bb88
bb88:
  LA s3, active
  ADDI s4, zero, 2
  SW s4, 0(s3)
  JAL zero, bb64
bb89:
  ADDI s0, zero, 1
  # implict jump to bb90
bb90:
  LA s1, width
  LW s1, 0(s1)
  SLTI s1, s1, 1
  XORI t4, s1, 1
  SB t4, 3(sp)
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb91
bb91:
  ADD s3, s2, zero
  ADD s4, s1, zero
  ADD t4, s0, zero
  SW t4, 16(sp)
  LB t4, 3(sp)
  BNE t4, zero, bb96
  # implict jump to bb92
bb92:
  # implict jump to bb93
bb93:
  ADD t4, s3, zero
  SB t4, 0(sp)
  ADD t4, s4, zero
  SW t4, 72(sp)
  LW t3, 16(sp)
  ADDIW t4, t3, 1
  SW t4, 68(sp)
  # implict jump to bb94
bb94:
  LA s3, height
  LW s3, 0(s3)
  LW t4, 68(sp)
  SLT s3, s3, t4
  XORI s3, s3, 1
  BNE s3, zero, bb95
  JAL zero, bb88
bb95:
  LW t4, 68(sp)
  ADD s0, t4, zero
  LW t4, 72(sp)
  ADD s1, t4, zero
  LB t4, 0(sp)
  ADD s2, t4, zero
  JAL zero, bb91
bb96:
  ADDI s6, zero, 1
  # implict jump to bb97
bb97:
  ADDI s7, zero, 1
  LW t4, 16(sp)
  SUBW s7, t4, s7
  ADDI s8, zero, 2000
  MULW s7, s7, s8
  LA s8, sheet1
  ADD t4, s8, s7
  SD t4, 224(sp)
  ADDI s7, zero, 2000
  LW t3, 16(sp)
  MULW t4, t3, s7
  SW t4, 12(sp)
  LA s7, sheet1
  LW t3, 12(sp)
  ADD t4, s7, t3
  SD t4, 232(sp)
  LW t4, 16(sp)
  ADDIW s7, t4, 1
  ADDI s8, zero, 2000
  MULW s7, s7, s8
  LA s8, sheet1
  ADD t4, s8, s7
  SD t4, 240(sp)
  # implict jump to bb98
bb98:
  ADD s7, s6, zero
  ADDI s8, zero, 1
  SUBW s8, s7, s8
  SLLIW s8, s8, 2
  LD t4, 224(sp)
  ADD s9, t4, s8
  LW s9, 0(s9)
  SLLIW s10, s7, 2
  LD t4, 224(sp)
  ADD s11, t4, s10
  LW s11, 0(s11)
  ADDW s9, s9, s11
  ADDIW t4, s7, 1
  SW t4, 76(sp)
  LW t4, 76(sp)
  SLLIW s7, t4, 2
  LD t4, 224(sp)
  ADD s11, t4, s7
  LW s11, 0(s11)
  ADDW s9, s9, s11
  LD t4, 232(sp)
  ADD s11, t4, s8
  LW s11, 0(s11)
  ADDW s9, s9, s11
  LD t4, 232(sp)
  ADD s11, t4, s7
  LW s11, 0(s11)
  ADDW s9, s9, s11
  LD t4, 240(sp)
  ADD s8, t4, s8
  LW s8, 0(s8)
  ADDW s8, s9, s8
  LD t4, 240(sp)
  ADD s9, t4, s10
  LW s9, 0(s9)
  ADDW s8, s8, s9
  LD t4, 240(sp)
  ADD s7, t4, s7
  LW s7, 0(s7)
  ADDW t4, s8, s7
  SW t4, 92(sp)
  LD t4, 232(sp)
  ADD s7, t4, s10
  LW s7, 0(s7)
  XORI s7, s7, 1
  SLTIU s7, s7, 1
  BNE s7, zero, bb109
  # implict jump to bb99
bb99:
  ADD s7, zero, zero
  # implict jump to bb100
bb100:
  ADD t4, s7, zero
  SB t4, 5(sp)
  LB t4, 5(sp)
  BNE t4, zero, bb108
  # implict jump to bb101
bb101:
  LW t4, 92(sp)
  XORI s7, t4, 3
  SLTIU s7, s7, 1
  BNE s7, zero, bb107
  # implict jump to bb102
bb102:
  LA s7, sheet2
  LW t4, 12(sp)
  ADD s7, s7, t4
  ADD s7, s7, s10
  SW zero, 0(s7)
  # implict jump to bb103
bb103:
  # implict jump to bb104
bb104:
  LA s7, width
  LW s7, 0(s7)
  LW t4, 76(sp)
  SLT s7, s7, t4
  XORI s7, s7, 1
  BNE s7, zero, bb106
  # implict jump to bb105
bb105:
  LW t4, 92(sp)
  ADD s4, t4, zero
  LB t4, 5(sp)
  ADD s3, t4, zero
  JAL zero, bb93
bb106:
  LW t4, 76(sp)
  ADD s6, t4, zero
  JAL zero, bb98
bb107:
  LA s7, sheet2
  LW t4, 12(sp)
  ADD s7, s7, t4
  ADD s7, s7, s10
  ADDI s8, zero, 1
  SW s8, 0(s7)
  JAL zero, bb103
bb108:
  LA s7, sheet2
  LW t4, 12(sp)
  ADD s7, s7, t4
  ADD s7, s7, s10
  ADDI s8, zero, 1
  SW s8, 0(s7)
  JAL zero, bb103
bb109:
  LW t4, 92(sp)
  XORI s8, t4, 2
  SLTIU s8, s8, 1
  ADD s7, s8, zero
  JAL zero, bb100
bb110:
  ADDI s1, zero, 1
  # implict jump to bb111
bb111:
  ADD t4, s1, zero
  SW t4, 56(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  # implict jump to bb112
bb112:
  LW t4, 48(sp)
  ADD s7, t4, zero
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LA s1, width
  LW s1, 0(s1)
  SLTI s1, s1, 1
  XORI s1, s1, 1
  BNE s1, zero, bb117
  # implict jump to bb113
bb113:
  ADD s1, s7, zero
  # implict jump to bb114
bb114:
  ADD t4, s1, zero
  SW t4, 84(sp)
  CALL getch
  LW t3, 52(sp)
  ADDIW t4, t3, 1
  SW t4, 80(sp)
  # implict jump to bb115
bb115:
  LA s0, height
  LW s0, 0(s0)
  LW t4, 80(sp)
  SLT s0, s0, t4
  XORI s0, s0, 1
  BNE s0, zero, bb116
  JAL zero, bb30
bb116:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb112
bb117:
  ADDI s7, zero, 1
  # implict jump to bb118
bb118:
  ADD t4, s7, zero
  SW t4, 60(sp)
  # implict jump to bb119
bb119:
  LW t4, 60(sp)
  ADD s7, t4, zero
  CALL getch
  ADD s0, a0, zero
  XORI s9, s0, 35
  SLTIU s9, s9, 1
  BNE s9, zero, bb125
  # implict jump to bb120
bb120:
  ADDI s9, zero, 2000
  LW t4, 52(sp)
  MULW s9, t4, s9
  LA s4, sheet1
  ADD s4, s4, s9
  SLLIW s9, s7, 2
  ADD s4, s4, s9
  SW zero, 0(s4)
  # implict jump to bb121
bb121:
  ADDIW t4, s7, 1
  SW t4, 88(sp)
  # implict jump to bb122
bb122:
  LA s4, width
  LW s4, 0(s4)
  LW t4, 88(sp)
  SLT s4, s4, t4
  XORI s4, s4, 1
  BNE s4, zero, bb124
  # implict jump to bb123
bb123:
  ADD s1, s0, zero
  JAL zero, bb114
bb124:
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  JAL zero, bb119
bb125:
  ADDI s4, zero, 2000
  LW t4, 52(sp)
  MULW s4, t4, s4
  LA s9, sheet1
  ADD s4, s9, s4
  SLLIW s9, s7, 2
  ADD s4, s4, s9
  ADDI s9, zero, 1
  SW s9, 0(s4)
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
  LA s10, height
  LW s10, 0(s10)
  SLTI s10, s10, 1
  XORI s10, s10, 1
  BNE s10, zero, bb128
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
  ADDI s10, zero, 1
  # implict jump to bb129
bb129:
  ADD s11, zero, zero
  ADD t0, zero, zero
  # implict jump to bb130
bb130:
  ADD t1, t0, zero
  ADD t2, s11, zero
  ADD a2, s10, zero
  LA a3, width
  LW a3, 0(a3)
  SLTI a3, a3, 1
  XORI a3, a3, 1
  BNE a3, zero, bb135
  # implict jump to bb131
bb131:
  # implict jump to bb132
bb132:
  ADD s1, t1, zero
  ADD s2, t2, zero
  ADDIW s3, a2, 1
  # implict jump to bb133
bb133:
  LA s8, height
  LW s8, 0(s8)
  SLT s8, s8, s3
  XORI s8, s8, 1
  BNE s8, zero, bb134
  JAL zero, bb127
bb134:
  ADD s10, s3, zero
  ADD s11, s2, zero
  ADD t0, s1, zero
  JAL zero, bb130
bb135:
  ADDI a3, zero, 1
  # implict jump to bb136
bb136:
  ADDI a4, zero, 1
  SUBW a4, a2, a4
  ADDI a5, zero, 2000
  MULW a4, a4, a5
  ADD s0, a0, a4
  ADDI a4, zero, 2000
  MULW s4, a2, a4
  ADD s5, a0, s4
  ADDIW a4, a2, 1
  ADDI a5, zero, 2000
  MULW a4, a4, a5
  ADD s6, a0, a4
  # implict jump to bb137
bb137:
  ADD a4, a3, zero
  ADDI a5, zero, 1
  SUBW a5, a4, a5
  SLLIW a5, a5, 2
  ADD a6, s0, a5
  LW a6, 0(a6)
  SLLIW a7, a4, 2
  ADD t6, s0, a7
  LW t6, 0(t6)
  ADDW a6, a6, t6
  ADDIW s7, a4, 1
  SLLIW a4, s7, 2
  ADD t6, s0, a4
  LW t6, 0(t6)
  ADDW a6, a6, t6
  ADD t6, s5, a5
  LW t6, 0(t6)
  ADDW a6, a6, t6
  ADD t6, s5, a4
  LW t6, 0(t6)
  ADDW a6, a6, t6
  ADD a5, s6, a5
  LW a5, 0(a5)
  ADDW a5, a6, a5
  ADD a6, s6, a7
  LW a6, 0(a6)
  ADDW a5, a5, a6
  ADD a4, s6, a4
  LW a4, 0(a4)
  ADDW s8, a5, a4
  ADD a4, s5, a7
  LW a4, 0(a4)
  XORI a4, a4, 1
  SLTIU a4, a4, 1
  BNE a4, zero, bb148
  # implict jump to bb138
bb138:
  ADD a4, zero, zero
  # implict jump to bb139
bb139:
  ADD s9, a4, zero
  BNE s9, zero, bb147
  # implict jump to bb140
bb140:
  XORI a4, s8, 3
  SLTIU a4, a4, 1
  BNE a4, zero, bb146
  # implict jump to bb141
bb141:
  ADD a4, a1, s4
  ADD a4, a4, a7
  SW zero, 0(a4)
  # implict jump to bb142
bb142:
  # implict jump to bb143
bb143:
  LA a4, width
  LW a4, 0(a4)
  SLT a4, a4, s7
  XORI a4, a4, 1
  BNE a4, zero, bb145
  # implict jump to bb144
bb144:
  ADD t2, s8, zero
  ADD t1, s9, zero
  JAL zero, bb132
bb145:
  ADD a3, s7, zero
  JAL zero, bb137
bb146:
  ADD a4, a1, s4
  ADD a4, a4, a7
  ADDI a5, zero, 1
  SW a5, 0(a4)
  JAL zero, bb142
bb147:
  ADD a4, a1, s4
  ADD a4, a4, a7
  ADDI a5, zero, 1
  SW a5, 0(a4)
  JAL zero, bb142
bb148:
  XORI a5, s8, 2
  SLTIU a5, a5, 1
  ADD a4, a5, zero
  JAL zero, bb139
read_map:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s5, 32(sp)
  SD s6, 40(sp)
  SD s7, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s10, 72(sp)
  SD s11, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
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
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s5, 32(sp)
  LD s6, 40(sp)
  LD s7, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s10, 72(sp)
  LD s11, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
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
  ADDIW s1, s7, 1
  # implict jump to bb156
bb156:
  LA s0, height
  LW s0, 0(s0)
  SLT s0, s0, s1
  XORI s0, s0, 1
  BNE s0, zero, bb157
  JAL zero, bb150
bb157:
  ADD s4, s1, zero
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
  ADD s0, a0, zero
  XORI s10, s0, 35
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
  ADDIW s2, s9, 1
  # implict jump to bb163
bb163:
  LA s9, width
  LW s9, 0(s9)
  SLT s9, s9, s2
  XORI s9, s9, 1
  BNE s9, zero, bb165
  # implict jump to bb164
bb164:
  ADD s6, s0, zero
  JAL zero, bb155
bb165:
  ADD s8, s2, zero
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
