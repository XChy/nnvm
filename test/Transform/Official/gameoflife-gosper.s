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
  ADD s3, s2, zero
  LA s4, width
  LW s4, 0(s4)
  SLTI s4, s4, 1
  XORI s4, s4, 1
  BNE s4, zero, bb7
  # implict jump to bb4
bb4:
  ADDIW s0, s3, 1
  # implict jump to bb5
bb5:
  LA s5, height
  LW s5, 0(s5)
  SLT s5, s5, s0
  XORI s5, s5, 1
  BNE s5, zero, bb6
  JAL zero, bb1
bb6:
  ADD s2, s0, zero
  JAL zero, bb3
bb7:
  ADDI s4, zero, 1
  # implict jump to bb8
bb8:
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
  # implict jump to bb9
bb9:
  LA s5, width
  LW s5, 0(s5)
  SLT s5, s5, s1
  XORI s5, s5, 1
  BNE s5, zero, bb10
  JAL zero, bb4
bb10:
  ADD s4, s1, zero
  JAL zero, bb8
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
  BNE s2, zero, bb13
  # implict jump to bb12
bb12:
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
bb13:
  ADDI s2, zero, 1
  # implict jump to bb14
bb14:
  ADD s3, s2, zero
  LA s4, width
  LW s4, 0(s4)
  SLTI s4, s4, 1
  XORI s4, s4, 1
  BNE s4, zero, bb18
  # implict jump to bb15
bb15:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s1, s3, 1
  # implict jump to bb16
bb16:
  LA s5, height
  LW s5, 0(s5)
  SLT s5, s5, s1
  XORI s5, s5, 1
  BNE s5, zero, bb17
  JAL zero, bb12
bb17:
  ADD s2, s1, zero
  JAL zero, bb14
bb18:
  ADDI s4, zero, 1
  # implict jump to bb19
bb19:
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
  BNE s6, zero, bb24
  # implict jump to bb20
bb20:
  ADDI a0, zero, 46
  CALL putch
  # implict jump to bb21
bb21:
  ADDIW s0, s5, 1
  # implict jump to bb22
bb22:
  LA s5, width
  LW s5, 0(s5)
  SLT s5, s5, s0
  XORI s5, s5, 1
  BNE s5, zero, bb23
  JAL zero, bb15
bb23:
  ADD s4, s0, zero
  JAL zero, bb19
bb24:
  ADDI a0, zero, 35
  CALL putch
  JAL zero, bb21
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
  SD s11, 192(sp)
  SD s10, 200(sp)
  CALL getint
  ADD s10, a0, zero
  LA s8, width
  SW s10, 0(s8)
  CALL getint
  ADD s8, a0, zero
  LA s10, height
  SW s8, 0(s10)
  CALL getint
  ADD s8, a0, zero
  LA s10, steps
  SW s8, 0(s10)
  CALL getch
  LA s8, height
  LW s8, 0(s8)
  SLTI s8, s8, 1
  XORI s8, s8, 1
  BNE s8, zero, bb97
  # implict jump to bb26
bb26:
  ADDI a0, zero, 95
  CALL _sysy_starttime
  LA s4, steps
  LW s4, 0(s4)
  BLT zero, s4, bb52
  # implict jump to bb27
bb27:
  ADDI a0, zero, 106
  CALL _sysy_stoptime
  LA s2, active
  LW s2, 0(s2)
  XORI s2, s2, 2
  SLTIU s2, s2, 1
  BNE s2, zero, bb42
  # implict jump to bb28
bb28:
  LA s5, height
  LW s5, 0(s5)
  SLTI s5, s5, 1
  XORI s5, s5, 1
  BNE s5, zero, bb30
  # implict jump to bb29
bb29:
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
  LD s11, 192(sp)
  LD s10, 200(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
bb30:
  ADDI s5, zero, 1
  # implict jump to bb31
bb31:
  ADD s6, s5, zero
  LA s7, width
  LW s7, 0(s7)
  SLTI s7, s7, 1
  XORI s7, s7, 1
  BNE s7, zero, bb35
  # implict jump to bb32
bb32:
  ADDI a0, zero, 10
  CALL putch
  ADDIW t4, s6, 1
  SW t4, 36(sp)
  # implict jump to bb33
bb33:
  LA s8, height
  LW s8, 0(s8)
  LW t4, 36(sp)
  SLT s8, s8, t4
  XORI s8, s8, 1
  BNE s8, zero, bb34
  JAL zero, bb29
bb34:
  LW t4, 36(sp)
  ADD s5, t4, zero
  JAL zero, bb31
bb35:
  ADDI s7, zero, 1
  # implict jump to bb36
bb36:
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
  BNE s9, zero, bb41
  # implict jump to bb37
bb37:
  ADDI a0, zero, 46
  CALL putch
  # implict jump to bb38
bb38:
  ADDIW t4, s8, 1
  SW t4, 32(sp)
  # implict jump to bb39
bb39:
  LA s8, width
  LW s8, 0(s8)
  LW t4, 32(sp)
  SLT s8, s8, t4
  XORI s8, s8, 1
  BNE s8, zero, bb40
  JAL zero, bb32
bb40:
  LW t4, 32(sp)
  ADD s7, t4, zero
  JAL zero, bb36
bb41:
  ADDI a0, zero, 35
  CALL putch
  JAL zero, bb38
bb42:
  LA s2, height
  LW s2, 0(s2)
  SLTI s2, s2, 1
  XORI s2, s2, 1
  BNE s2, zero, bb43
  JAL zero, bb28
bb43:
  ADDI s2, zero, 1
  # implict jump to bb44
bb44:
  ADD s3, s2, zero
  LA s4, width
  LW s4, 0(s4)
  SLTI s4, s4, 1
  XORI s4, s4, 1
  BNE s4, zero, bb48
  # implict jump to bb45
bb45:
  ADDIW t4, s3, 1
  SW t4, 28(sp)
  # implict jump to bb46
bb46:
  LA s5, height
  LW s5, 0(s5)
  LW t4, 28(sp)
  SLT s5, s5, t4
  XORI s5, s5, 1
  BNE s5, zero, bb47
  JAL zero, bb28
bb47:
  LW t4, 28(sp)
  ADD s2, t4, zero
  JAL zero, bb44
bb48:
  ADDI s4, zero, 1
  # implict jump to bb49
bb49:
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
  SW t4, 100(sp)
  # implict jump to bb50
bb50:
  LA s5, width
  LW s5, 0(s5)
  LW t4, 100(sp)
  SLT s5, s5, t4
  XORI s5, s5, 1
  BNE s5, zero, bb51
  JAL zero, bb45
bb51:
  LW t4, 100(sp)
  ADD s4, t4, zero
  JAL zero, bb49
bb52:
  LA s4, active
  LW s4, 0(s4)
  XORI s4, s4, 1
  SLTIU s4, s4, 1
  BNE s4, zero, bb76
  # implict jump to bb53
bb53:
  LA s4, height
  LW s4, 0(s4)
  SLTI s4, s4, 1
  XORI s4, s4, 1
  BNE s4, zero, bb57
  # implict jump to bb54
bb54:
  LA s0, active
  ADDI s1, zero, 1
  SW s1, 0(s0)
  # implict jump to bb55
bb55:
  LA s2, steps
  LW s2, 0(s2)
  ADDI s3, zero, 1
  SUBW s2, s2, s3
  LA s3, steps
  SW s2, 0(s3)
  # implict jump to bb56
bb56:
  LA s2, steps
  LW s2, 0(s2)
  ADDI s3, zero, 0
  BLT s3, s2, bb52
  JAL zero, bb27
bb57:
  ADDI t4, zero, 1
  SW t4, 64(sp)
  ADD t4, zero, zero
  SW t4, 56(sp)
  ADD t4, zero, zero
  SB t4, 3(sp)
  # implict jump to bb58
bb58:
  LB t4, 3(sp)
  ADD s8, t4, zero
  LW t4, 56(sp)
  ADD s10, t4, zero
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LA s7, width
  LW s7, 0(s7)
  SLTI s7, s7, 1
  XORI s7, s7, 1
  BNE s7, zero, bb63
  # implict jump to bb59
bb59:
  ADD s7, s10, zero
  # implict jump to bb60
bb60:
  ADD t4, s8, zero
  SB t4, 2(sp)
  ADD t4, s7, zero
  SW t4, 60(sp)
  LW t3, 44(sp)
  ADDIW t4, t3, 1
  SW t4, 76(sp)
  # implict jump to bb61
bb61:
  LA s0, height
  LW s0, 0(s0)
  LW t4, 76(sp)
  SLT s0, s0, t4
  XORI s0, s0, 1
  BNE s0, zero, bb62
  JAL zero, bb54
bb62:
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LB t3, 2(sp)
  ADD t4, t3, zero
  SB t4, 3(sp)
  JAL zero, bb58
bb63:
  ADDI t4, zero, 1
  SW t4, 48(sp)
  # implict jump to bb64
bb64:
  LW t4, 48(sp)
  ADD s3, t4, zero
  ADDI s10, zero, 1
  LW t4, 44(sp)
  SUBW s10, t4, s10
  ADDI s2, zero, 2000
  MULW s2, s10, s2
  LA s10, sheet2
  ADD s2, s10, s2
  ADDI s10, zero, 1
  SUBW s10, s3, s10
  SLLIW s10, s10, 2
  ADD s6, s2, s10
  LW s6, 0(s6)
  SLLIW s1, s3, 2
  ADD s5, s2, s1
  LW s5, 0(s5)
  ADDW s5, s6, s5
  ADDIW t4, s3, 1
  SW t4, 52(sp)
  LW t4, 52(sp)
  SLLIW s3, t4, 2
  ADD s2, s2, s3
  LW s2, 0(s2)
  ADDW s2, s5, s2
  ADDI s5, zero, 2000
  LW t4, 44(sp)
  MULW s5, t4, s5
  LA s6, sheet2
  ADD s6, s6, s5
  ADD s9, s6, s10
  LW s9, 0(s9)
  ADDW s2, s2, s9
  ADD s9, s6, s3
  LW s9, 0(s9)
  ADDW s2, s2, s9
  LW t4, 44(sp)
  ADDIW s9, t4, 1
  ADDI s4, zero, 2000
  MULW s4, s9, s4
  LA s9, sheet2
  ADD s4, s9, s4
  ADD s9, s4, s10
  LW s9, 0(s9)
  ADDW s2, s2, s9
  ADD s9, s4, s1
  LW s9, 0(s9)
  ADDW s2, s2, s9
  ADD s3, s4, s3
  LW s3, 0(s3)
  ADDW s11, s2, s3
  ADD s2, s6, s1
  LW s2, 0(s2)
  XORI s2, s2, 1
  SLTIU s2, s2, 1
  BNE s2, zero, bb75
  # implict jump to bb65
bb65:
  ADD s2, zero, zero
  # implict jump to bb66
bb66:
  ADD s0, s2, zero
  BNE s0, zero, bb74
  # implict jump to bb67
bb67:
  XORI s2, s11, 3
  SLTIU s2, s2, 1
  BNE s2, zero, bb73
  # implict jump to bb68
bb68:
  LA s2, sheet1
  ADD s2, s2, s5
  ADD s2, s2, s1
  SW zero, 0(s2)
  # implict jump to bb69
bb69:
  # implict jump to bb70
bb70:
  LA s1, width
  LW s1, 0(s1)
  LW t4, 52(sp)
  SLT s1, s1, t4
  XORI s1, s1, 1
  BNE s1, zero, bb72
  # implict jump to bb71
bb71:
  ADD s7, s11, zero
  ADD s8, s0, zero
  JAL zero, bb60
bb72:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb64
bb73:
  LA s2, sheet1
  ADD s2, s2, s5
  ADD s2, s2, s1
  ADDI s3, zero, 1
  SW s3, 0(s2)
  JAL zero, bb69
bb74:
  LA s2, sheet1
  ADD s2, s2, s5
  ADD s1, s2, s1
  ADDI s2, zero, 1
  SW s2, 0(s1)
  JAL zero, bb69
bb75:
  XORI s3, s11, 2
  SLTIU s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb66
bb76:
  LA s0, height
  LW s0, 0(s0)
  SLTI s0, s0, 1
  XORI s0, s0, 1
  BNE s0, zero, bb78
  # implict jump to bb77
bb77:
  LA s2, active
  ADDI s3, zero, 2
  SW s3, 0(s2)
  JAL zero, bb55
bb78:
  ADDI s0, zero, 1
  ADD s1, zero, zero
  ADD t4, zero, zero
  SB t4, 0(sp)
  # implict jump to bb79
bb79:
  LB t4, 0(sp)
  ADD s3, t4, zero
  ADD s4, s1, zero
  ADD t4, s0, zero
  SW t4, 68(sp)
  LA s6, width
  LW s6, 0(s6)
  SLTI s6, s6, 1
  XORI s6, s6, 1
  BNE s6, zero, bb84
  # implict jump to bb80
bb80:
  # implict jump to bb81
bb81:
  ADD t4, s3, zero
  SB t4, 1(sp)
  ADD t4, s4, zero
  SW t4, 12(sp)
  LW t3, 68(sp)
  ADDIW t4, t3, 1
  SW t4, 96(sp)
  # implict jump to bb82
bb82:
  LA s2, height
  LW s2, 0(s2)
  LW t4, 96(sp)
  SLT s2, s2, t4
  XORI s2, s2, 1
  BNE s2, zero, bb83
  JAL zero, bb77
bb83:
  LW t4, 96(sp)
  ADD s0, t4, zero
  LW t4, 12(sp)
  ADD s1, t4, zero
  LB t3, 1(sp)
  ADD t4, t3, zero
  SB t4, 0(sp)
  JAL zero, bb79
bb84:
  ADDI t4, zero, 1
  SW t4, 72(sp)
  # implict jump to bb85
bb85:
  LW t4, 72(sp)
  ADD s7, t4, zero
  ADDI s8, zero, 1
  LW t4, 68(sp)
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
  SW t4, 80(sp)
  LW t4, 80(sp)
  SLLIW s7, t4, 2
  ADD s8, s8, s7
  LW s8, 0(s8)
  ADDW s5, s5, s8
  ADDI s8, zero, 2000
  LW t4, 68(sp)
  MULW s8, t4, s8
  LA s10, sheet1
  ADD s10, s10, s8
  ADD s6, s10, s9
  LW s6, 0(s6)
  ADDW s5, s5, s6
  ADD s6, s10, s7
  LW s6, 0(s6)
  ADDW s5, s5, s6
  LW t4, 68(sp)
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
  SW t4, 40(sp)
  ADD s2, s10, s11
  LW s2, 0(s2)
  XORI s2, s2, 1
  SLTIU s2, s2, 1
  BNE s2, zero, bb96
  # implict jump to bb86
bb86:
  ADD s2, zero, zero
  # implict jump to bb87
bb87:
  ADD t4, s2, zero
  SB t4, 4(sp)
  LB t4, 4(sp)
  BNE t4, zero, bb95
  # implict jump to bb88
bb88:
  LW t4, 40(sp)
  XORI s2, t4, 3
  SLTIU s2, s2, 1
  BNE s2, zero, bb94
  # implict jump to bb89
bb89:
  LA s2, sheet2
  ADD s2, s2, s8
  ADD s2, s2, s11
  SW zero, 0(s2)
  # implict jump to bb90
bb90:
  # implict jump to bb91
bb91:
  LA s2, width
  LW s2, 0(s2)
  LW t4, 80(sp)
  SLT s2, s2, t4
  XORI s2, s2, 1
  BNE s2, zero, bb93
  # implict jump to bb92
bb92:
  LW t4, 40(sp)
  ADD s4, t4, zero
  LB t4, 4(sp)
  ADD s3, t4, zero
  JAL zero, bb81
bb93:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  JAL zero, bb85
bb94:
  LA s2, sheet2
  ADD s2, s2, s8
  ADD s2, s2, s11
  ADDI s5, zero, 1
  SW s5, 0(s2)
  JAL zero, bb90
bb95:
  LA s2, sheet2
  ADD s2, s2, s8
  ADD s2, s2, s11
  ADDI s5, zero, 1
  SW s5, 0(s2)
  JAL zero, bb90
bb96:
  LW t4, 40(sp)
  XORI s5, t4, 2
  SLTIU s5, s5, 1
  ADD s2, s5, zero
  JAL zero, bb87
bb97:
  ADDI t4, zero, 1
  SW t4, 20(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb98
bb98:
  LW t4, 8(sp)
  ADD s10, t4, zero
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LA s8, width
  LW s8, 0(s8)
  SLTI s8, s8, 1
  XORI s8, s8, 1
  BNE s8, zero, bb103
  # implict jump to bb99
bb99:
  ADD s8, s10, zero
  # implict jump to bb100
bb100:
  ADD t4, s8, zero
  SW t4, 88(sp)
  CALL getch
  LW t3, 16(sp)
  ADDIW t4, t3, 1
  SW t4, 84(sp)
  # implict jump to bb101
bb101:
  LA s4, height
  LW s4, 0(s4)
  LW t4, 84(sp)
  SLT s4, s4, t4
  XORI s4, s4, 1
  BNE s4, zero, bb102
  JAL zero, bb26
bb102:
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  JAL zero, bb98
bb103:
  ADDI t4, zero, 1
  SW t4, 24(sp)
  # implict jump to bb104
bb104:
  LW t4, 24(sp)
  ADD s10, t4, zero
  CALL getch
  ADD s4, a0, zero
  XORI s6, s4, 35
  SLTIU s6, s6, 1
  BNE s6, zero, bb110
  # implict jump to bb105
bb105:
  ADDI s6, zero, 2000
  LW t4, 16(sp)
  MULW s6, t4, s6
  LA s5, sheet1
  ADD s5, s5, s6
  SLLIW s6, s10, 2
  ADD s5, s5, s6
  SW zero, 0(s5)
  # implict jump to bb106
bb106:
  ADDIW t4, s10, 1
  SW t4, 92(sp)
  # implict jump to bb107
bb107:
  LA s5, width
  LW s5, 0(s5)
  LW t4, 92(sp)
  SLT s5, s5, t4
  XORI s5, s5, 1
  BNE s5, zero, bb109
  # implict jump to bb108
bb108:
  ADD s8, s4, zero
  JAL zero, bb100
bb109:
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  JAL zero, bb104
bb110:
  ADDI s5, zero, 2000
  LW t4, 16(sp)
  MULW s5, t4, s5
  LA s6, sheet1
  ADD s5, s6, s5
  SLLIW s6, s10, 2
  ADD s5, s5, s6
  ADDI s6, zero, 1
  SW s6, 0(s5)
  JAL zero, bb106
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
  BNE s6, zero, bb113
  # implict jump to bb112
bb112:
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
bb113:
  ADDI s6, zero, 1
  ADD s7, zero, zero
  ADD s8, zero, zero
  # implict jump to bb114
bb114:
  ADD s9, s8, zero
  ADD s10, s7, zero
  ADD s11, s6, zero
  LA t0, width
  LW t0, 0(t0)
  SLTI t0, t0, 1
  XORI t0, t0, 1
  BNE t0, zero, bb119
  # implict jump to bb115
bb115:
  # implict jump to bb116
bb116:
  ADD s5, s9, zero
  ADD s3, s10, zero
  ADDIW s4, s11, 1
  # implict jump to bb117
bb117:
  LA s1, height
  LW s1, 0(s1)
  SLT s1, s1, s4
  XORI s1, s1, 1
  BNE s1, zero, bb118
  JAL zero, bb112
bb118:
  ADD s6, s4, zero
  ADD s7, s3, zero
  ADD s8, s5, zero
  JAL zero, bb114
bb119:
  ADDI t0, zero, 1
  # implict jump to bb120
bb120:
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
  ADDW s1, t2, t1
  ADD t1, a5, a4
  LW t1, 0(t1)
  XORI t1, t1, 1
  SLTIU t1, t1, 1
  BNE t1, zero, bb131
  # implict jump to bb121
bb121:
  ADD t1, zero, zero
  # implict jump to bb122
bb122:
  ADD s2, t1, zero
  BNE s2, zero, bb130
  # implict jump to bb123
bb123:
  XORI t1, s1, 3
  SLTIU t1, t1, 1
  BNE t1, zero, bb129
  # implict jump to bb124
bb124:
  ADD t1, a1, a3
  ADD t1, t1, a4
  SW zero, 0(t1)
  # implict jump to bb125
bb125:
  # implict jump to bb126
bb126:
  LA t1, width
  LW t1, 0(t1)
  SLT t1, t1, s0
  XORI t1, t1, 1
  BNE t1, zero, bb128
  # implict jump to bb127
bb127:
  ADD s10, s1, zero
  ADD s9, s2, zero
  JAL zero, bb116
bb128:
  ADD t0, s0, zero
  JAL zero, bb120
bb129:
  ADD t1, a1, a3
  ADD t1, t1, a4
  ADDI t2, zero, 1
  SW t2, 0(t1)
  JAL zero, bb125
bb130:
  ADD t1, a1, a3
  ADD t1, t1, a4
  ADDI t2, zero, 1
  SW t2, 0(t1)
  JAL zero, bb125
bb131:
  XORI t2, s1, 2
  SLTIU t2, t2, 1
  ADD t1, t2, zero
  JAL zero, bb122
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
  BNE s4, zero, bb134
  # implict jump to bb133
bb133:
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
bb134:
  ADDI s4, zero, 1
  ADD s5, zero, zero
  # implict jump to bb135
bb135:
  ADD s6, s5, zero
  ADD s7, s4, zero
  LA s8, width
  LW s8, 0(s8)
  SLTI s8, s8, 1
  XORI s8, s8, 1
  BNE s8, zero, bb140
  # implict jump to bb136
bb136:
  # implict jump to bb137
bb137:
  ADD s2, s6, zero
  CALL getch
  ADDIW s3, s7, 1
  # implict jump to bb138
bb138:
  LA s1, height
  LW s1, 0(s1)
  SLT s1, s1, s3
  XORI s1, s1, 1
  BNE s1, zero, bb139
  JAL zero, bb133
bb139:
  ADD s4, s3, zero
  ADD s5, s2, zero
  JAL zero, bb135
bb140:
  ADDI s8, zero, 1
  # implict jump to bb141
bb141:
  ADD s9, s8, zero
  CALL getch
  ADD s1, a0, zero
  XORI s10, s1, 35
  SLTIU s10, s10, 1
  BNE s10, zero, bb147
  # implict jump to bb142
bb142:
  ADDI s10, zero, 2000
  MULW s10, s7, s10
  LA s11, sheet1
  ADD s10, s11, s10
  SLLIW s11, s9, 2
  ADD s10, s10, s11
  SW zero, 0(s10)
  # implict jump to bb143
bb143:
  ADDIW s0, s9, 1
  # implict jump to bb144
bb144:
  LA s9, width
  LW s9, 0(s9)
  SLT s9, s9, s0
  XORI s9, s9, 1
  BNE s9, zero, bb146
  # implict jump to bb145
bb145:
  ADD s6, s1, zero
  JAL zero, bb137
bb146:
  ADD s8, s0, zero
  JAL zero, bb141
bb147:
  ADDI s10, zero, 2000
  MULW s10, s7, s10
  LA s11, sheet1
  ADD s10, s11, s10
  SLLIW s11, s9, 2
  ADD s10, s10, s11
  ADDI s11, zero, 1
  SW s11, 0(s10)
  JAL zero, bb143
