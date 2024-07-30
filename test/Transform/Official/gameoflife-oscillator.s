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
  SD s8, 72(sp)
  LA s0, height
  LW s0, 0(s0)
  SLTI s0, s0, 1
  XORI s0, s0, 1
  BNE s0, zero, bb2
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
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb2:
  LA s0, width
  LW s0, 0(s0)
  SLTI s0, s0, 1
  XORI s0, s0, 1
  ADDI s1, zero, 1
  # implict jump to bb3
bb3:
  ADD s2, s1, zero
  BNE s0, zero, bb6
  # implict jump to bb4
bb4:
  ADDIW s7, s2, 1
  LA s8, height
  LW s8, 0(s8)
  SLT s8, s8, s7
  XORI s8, s8, 1
  BNE s8, zero, bb5
  JAL zero, bb1
bb5:
  ADD s1, s7, zero
  JAL zero, bb3
bb6:
  ADDI s3, zero, 2000
  MULW s3, s2, s3
  LA s4, sheet1
  ADD s4, s4, s3
  LA s5, sheet2
  ADD s3, s5, s3
  ADDI s5, zero, 1
  # implict jump to bb7
bb7:
  ADD s6, s5, zero
  SLLIW s7, s6, 2
  ADD s8, s4, s7
  ADD s7, s3, s7
  LW s7, 0(s7)
  SW s7, 0(s8)
  ADDIW s6, s6, 1
  LA s7, width
  LW s7, 0(s7)
  SLT s7, s7, s6
  XORI s7, s7, 1
  BNE s7, zero, bb8
  JAL zero, bb4
bb8:
  ADD s5, s6, zero
  JAL zero, bb7
put_map:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  LA s0, height
  LW s0, 0(s0)
  SLTI s0, s0, 1
  XORI s0, s0, 1
  BNE s0, zero, bb11
  # implict jump to bb10
bb10:
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
bb11:
  ADDI s0, zero, 1
  # implict jump to bb12
bb12:
  ADD s1, s0, zero
  LA s2, width
  LW s2, 0(s2)
  SLTI s2, s2, 1
  XORI s2, s2, 1
  BNE s2, zero, bb15
  # implict jump to bb13
bb13:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s5, s1, 1
  LA s6, height
  LW s6, 0(s6)
  SLT s6, s6, s5
  XORI s6, s6, 1
  BNE s6, zero, bb14
  JAL zero, bb10
bb14:
  ADD s0, s5, zero
  JAL zero, bb12
bb15:
  ADDI s2, zero, 2000
  MULW s2, s1, s2
  LA s3, sheet1
  ADD s2, s3, s2
  ADDI s3, zero, 1
  # implict jump to bb16
bb16:
  ADD s4, s3, zero
  SLLIW s5, s4, 2
  ADD s5, s2, s5
  LW s5, 0(s5)
  XORI s5, s5, 1
  SLTIU s5, s5, 1
  BNE s5, zero, bb20
  # implict jump to bb17
bb17:
  ADDI a0, zero, 46
  CALL putch
  # implict jump to bb18
bb18:
  ADDIW s4, s4, 1
  LA s5, width
  LW s5, 0(s5)
  SLT s5, s5, s4
  XORI s5, s5, 1
  BNE s5, zero, bb19
  JAL zero, bb13
bb19:
  ADD s3, s4, zero
  JAL zero, bb16
bb20:
  ADDI a0, zero, 35
  CALL putch
  JAL zero, bb18
main:
  ADDI sp, sp, -240
  SD s3, 72(sp)
  SD ra, 96(sp)
  SD s0, 104(sp)
  SD s1, 112(sp)
  SD s2, 120(sp)
  SD s4, 128(sp)
  SD s6, 136(sp)
  SD s8, 144(sp)
  SD s9, 152(sp)
  SD s11, 160(sp)
  SD s7, 168(sp)
  SD s10, 176(sp)
  SD s5, 184(sp)
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
  BNE s0, zero, bb84
  # implict jump to bb22
bb22:
  ADDI a0, zero, 95
  CALL _sysy_starttime
  LA s7, steps
  LW s7, 0(s7)
  BLT zero, s7, bb44
  # implict jump to bb23
bb23:
  ADDI a0, zero, 106
  CALL _sysy_stoptime
  LA s6, active
  LW s6, 0(s6)
  XORI s6, s6, 2
  SLTIU s6, s6, 1
  BNE s6, zero, bb36
  # implict jump to bb24
bb24:
  LA s4, height
  LW s4, 0(s4)
  SLTI s4, s4, 1
  XORI s4, s4, 1
  BNE s4, zero, bb26
  # implict jump to bb25
bb25:
  ADD a0, zero, zero
  LD s3, 72(sp)
  LD ra, 96(sp)
  LD s0, 104(sp)
  LD s1, 112(sp)
  LD s2, 120(sp)
  LD s4, 128(sp)
  LD s6, 136(sp)
  LD s8, 144(sp)
  LD s9, 152(sp)
  LD s11, 160(sp)
  LD s7, 168(sp)
  LD s10, 176(sp)
  LD s5, 184(sp)
  ADDI sp, sp, 240
  JALR zero, 0(ra)
bb26:
  ADDI s4, zero, 1
  # implict jump to bb27
bb27:
  ADD s5, s4, zero
  LA s1, width
  LW s1, 0(s1)
  SLTI s1, s1, 1
  XORI s1, s1, 1
  BNE s1, zero, bb30
  # implict jump to bb28
bb28:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s11, s5, 1
  LA t0, height
  LW t0, 0(t0)
  SLT t0, t0, s11
  XORI t0, t0, 1
  BNE t0, zero, bb29
  JAL zero, bb25
bb29:
  ADD s4, s11, zero
  JAL zero, bb27
bb30:
  ADDI s1, zero, 2000
  MULW s1, s5, s1
  LA s0, sheet1
  ADD s0, s0, s1
  ADDI s1, zero, 1
  # implict jump to bb31
bb31:
  ADD s8, s1, zero
  SLLIW s11, s8, 2
  ADD s11, s0, s11
  LW s11, 0(s11)
  XORI s11, s11, 1
  SLTIU s11, s11, 1
  BNE s11, zero, bb35
  # implict jump to bb32
bb32:
  ADDI a0, zero, 46
  CALL putch
  # implict jump to bb33
bb33:
  ADDIW s8, s8, 1
  LA s11, width
  LW s11, 0(s11)
  SLT s11, s11, s8
  XORI s11, s11, 1
  BNE s11, zero, bb34
  JAL zero, bb28
bb34:
  ADD s1, s8, zero
  JAL zero, bb31
bb35:
  ADDI a0, zero, 35
  CALL putch
  JAL zero, bb33
bb36:
  LA s6, height
  LW s6, 0(s6)
  SLTI s6, s6, 1
  XORI s6, s6, 1
  BNE s6, zero, bb37
  JAL zero, bb24
bb37:
  LA s6, width
  LW s6, 0(s6)
  SLTI s6, s6, 1
  XORI s6, s6, 1
  ADDI s7, zero, 1
  # implict jump to bb38
bb38:
  ADD s9, s7, zero
  BNE s6, zero, bb41
  # implict jump to bb39
bb39:
  ADDIW s3, s9, 1
  LA s4, height
  LW s4, 0(s4)
  SLT s4, s4, s3
  XORI s4, s4, 1
  BNE s4, zero, bb40
  JAL zero, bb24
bb40:
  ADD s7, s3, zero
  JAL zero, bb38
bb41:
  ADDI s10, zero, 2000
  MULW s10, s9, s10
  LA s11, sheet1
  ADD t4, s11, s10
  SD t4, 88(sp)
  LA s8, sheet2
  ADD t4, s8, s10
  SD t4, 80(sp)
  ADDI s10, zero, 1
  # implict jump to bb42
bb42:
  ADD s3, s10, zero
  SLLIW s4, s3, 2
  LD t4, 88(sp)
  ADD s2, t4, s4
  LD t4, 80(sp)
  ADD s4, t4, s4
  LW s4, 0(s4)
  SW s4, 0(s2)
  ADDIW s2, s3, 1
  LA s3, width
  LW s3, 0(s3)
  SLT s3, s3, s2
  XORI s3, s3, 1
  BNE s3, zero, bb43
  JAL zero, bb39
bb43:
  ADD s10, s2, zero
  JAL zero, bb42
bb44:
  LA s7, active
  LW s7, 0(s7)
  XORI s7, s7, 1
  SLTIU s7, s7, 1
  BNE s7, zero, bb65
  # implict jump to bb45
bb45:
  LA s7, height
  LW s7, 0(s7)
  SLTI s7, s7, 1
  XORI s7, s7, 1
  BNE s7, zero, bb48
  # implict jump to bb46
bb46:
  LA s2, active
  ADDI s4, zero, 1
  SW s4, 0(s2)
  # implict jump to bb47
bb47:
  LA s6, steps
  LW s6, 0(s6)
  ADDI s7, zero, 1
  SUBW s6, s6, s7
  LA s7, steps
  SW s6, 0(s7)
  LA s6, steps
  LW s6, 0(s6)
  ADDI s7, zero, 0
  BLT s7, s6, bb44
  JAL zero, bb23
bb48:
  LA s7, width
  LW s7, 0(s7)
  SLTI s7, s7, 1
  XORI t4, s7, 1
  SB t4, 1(sp)
  ADDI s8, zero, 1
  ADD s9, zero, zero
  ADD s10, zero, zero
  # implict jump to bb49
bb49:
  ADD s11, s10, zero
  ADD s3, s9, zero
  ADD t4, s8, zero
  SW t4, 20(sp)
  LB t4, 1(sp)
  BNE t4, zero, bb53
  # implict jump to bb50
bb50:
  # implict jump to bb51
bb51:
  LW t4, 20(sp)
  ADDIW s1, t4, 1
  LA s2, height
  LW s2, 0(s2)
  SLT s2, s2, s1
  XORI s2, s2, 1
  BNE s2, zero, bb52
  JAL zero, bb46
bb52:
  ADD s8, s1, zero
  ADD s9, s3, zero
  ADD s10, s11, zero
  JAL zero, bb49
bb53:
  ADDI s5, zero, 1
  LW t4, 20(sp)
  SUBW s5, t4, s5
  ADDI s1, zero, 2000
  MULW s1, s5, s1
  LA s5, sheet2
  ADD t4, s5, s1
  SD t4, 216(sp)
  ADDI s5, zero, 2000
  LW t3, 20(sp)
  MULW t4, t3, s5
  SW t4, 28(sp)
  LA s2, sheet2
  LW t3, 28(sp)
  ADD t4, s2, t3
  SD t4, 208(sp)
  LW t4, 20(sp)
  ADDIW s0, t4, 1
  ADDI s6, zero, 2000
  MULW s0, s0, s6
  LA s6, sheet2
  ADD t4, s6, s0
  SD t4, 200(sp)
  ADDI s6, zero, 1
  # implict jump to bb54
bb54:
  ADD s0, s6, zero
  ADDI s2, zero, 1
  SUBW s2, s0, s2
  SLLIW s2, s2, 2
  LD t4, 216(sp)
  ADD s5, t4, s2
  LW s5, 0(s5)
  SLLIW s1, s0, 2
  LD t4, 216(sp)
  ADD s4, t4, s1
  LW s4, 0(s4)
  ADDW s4, s5, s4
  ADDIW s0, s0, 1
  SLLIW s5, s0, 2
  LD t4, 216(sp)
  ADD s7, t4, s5
  LW s7, 0(s7)
  ADDW s4, s4, s7
  LD t4, 208(sp)
  ADD s7, t4, s2
  LW s7, 0(s7)
  ADDW s4, s4, s7
  LD t4, 208(sp)
  ADD s7, t4, s5
  LW s7, 0(s7)
  ADDW s4, s4, s7
  LD t4, 200(sp)
  ADD s2, t4, s2
  LW s2, 0(s2)
  ADDW s2, s4, s2
  LD t4, 200(sp)
  ADD s4, t4, s1
  LW s4, 0(s4)
  ADDW s2, s2, s4
  LD t4, 200(sp)
  ADD s4, t4, s5
  LW s4, 0(s4)
  ADDW s2, s2, s4
  LD t4, 208(sp)
  ADD s4, t4, s1
  LW s4, 0(s4)
  XORI s4, s4, 1
  SLTIU s4, s4, 1
  BNE s4, zero, bb64
  # implict jump to bb55
bb55:
  ADD s4, zero, zero
  # implict jump to bb56
bb56:
  BNE s4, zero, bb63
  # implict jump to bb57
bb57:
  XORI s5, s2, 3
  SLTIU s5, s5, 1
  BNE s5, zero, bb62
  # implict jump to bb58
bb58:
  LA s5, sheet1
  LW t4, 28(sp)
  ADD s5, s5, t4
  ADD s5, s5, s1
  SW zero, 0(s5)
  # implict jump to bb59
bb59:
  LA s1, width
  LW s1, 0(s1)
  SLT s1, s1, s0
  XORI s1, s1, 1
  BNE s1, zero, bb61
  # implict jump to bb60
bb60:
  ADD s3, s2, zero
  ADD s11, s4, zero
  JAL zero, bb51
bb61:
  ADD s6, s0, zero
  JAL zero, bb54
bb62:
  LA s5, sheet1
  LW t4, 28(sp)
  ADD s5, s5, t4
  ADD s5, s5, s1
  ADDI s7, zero, 1
  SW s7, 0(s5)
  JAL zero, bb59
bb63:
  LA s5, sheet1
  LW t4, 28(sp)
  ADD s5, s5, t4
  ADD s1, s5, s1
  ADDI s5, zero, 1
  SW s5, 0(s1)
  JAL zero, bb59
bb64:
  XORI s5, s2, 2
  SLTIU s5, s5, 1
  ADD s4, s5, zero
  JAL zero, bb56
bb65:
  LA s0, height
  LW s0, 0(s0)
  SLTI s0, s0, 1
  XORI s0, s0, 1
  BNE s0, zero, bb67
  # implict jump to bb66
bb66:
  LA s6, active
  ADDI s7, zero, 2
  SW s7, 0(s6)
  JAL zero, bb47
bb67:
  LA s0, width
  LW s0, 0(s0)
  SLTI s0, s0, 1
  XORI t4, s0, 1
  SB t4, 0(sp)
  ADDI t4, zero, 1
  SW t4, 64(sp)
  ADD t4, zero, zero
  SW t4, 56(sp)
  ADD t4, zero, zero
  SB t4, 2(sp)
  # implict jump to bb68
bb68:
  LB t4, 2(sp)
  ADD s4, t4, zero
  LW t4, 56(sp)
  ADD s5, t4, zero
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LB t4, 0(sp)
  BNE t4, zero, bb72
  # implict jump to bb69
bb69:
  # implict jump to bb70
bb70:
  ADD t4, s4, zero
  SB t4, 3(sp)
  ADD t4, s5, zero
  SW t4, 60(sp)
  LW t3, 8(sp)
  ADDIW t4, t3, 1
  SW t4, 68(sp)
  LA s6, height
  LW s6, 0(s6)
  LW t4, 68(sp)
  SLT s6, s6, t4
  XORI s6, s6, 1
  BNE s6, zero, bb71
  JAL zero, bb66
bb71:
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LB t3, 3(sp)
  ADD t4, t3, zero
  SB t4, 2(sp)
  JAL zero, bb68
bb72:
  ADDI s7, zero, 1
  LW t4, 8(sp)
  SUBW s7, t4, s7
  ADDI s8, zero, 2000
  MULW s7, s7, s8
  LA s8, sheet1
  ADD t4, s8, s7
  SD t4, 192(sp)
  ADDI s8, zero, 2000
  LW t3, 8(sp)
  MULW t4, t3, s8
  SW t4, 12(sp)
  LA s9, sheet1
  LW t3, 12(sp)
  ADD t4, s9, t3
  SD t4, 232(sp)
  LW t4, 8(sp)
  ADDIW s10, t4, 1
  ADDI s11, zero, 2000
  MULW s10, s10, s11
  LA s11, sheet1
  ADD t4, s11, s10
  SD t4, 224(sp)
  ADDI t4, zero, 1
  SW t4, 16(sp)
  # implict jump to bb73
bb73:
  LW t4, 16(sp)
  ADD s10, t4, zero
  ADDI s9, zero, 1
  SUBW s9, s10, s9
  SLLIW s9, s9, 2
  LD t4, 192(sp)
  ADD s8, t4, s9
  LW s8, 0(s8)
  SLLIW s7, s10, 2
  LD t4, 192(sp)
  ADD s6, t4, s7
  LW s6, 0(s6)
  ADDW s6, s8, s6
  ADDIW t4, s10, 1
  SW t4, 24(sp)
  LW t4, 24(sp)
  SLLIW s10, t4, 2
  LD t4, 192(sp)
  ADD s0, t4, s10
  LW s0, 0(s0)
  ADDW s0, s6, s0
  LD t4, 232(sp)
  ADD s6, t4, s9
  LW s6, 0(s6)
  ADDW s0, s0, s6
  LD t4, 232(sp)
  ADD s6, t4, s10
  LW s6, 0(s6)
  ADDW s0, s0, s6
  LD t4, 224(sp)
  ADD s6, t4, s9
  LW s6, 0(s6)
  ADDW s0, s0, s6
  LD t4, 224(sp)
  ADD s6, t4, s7
  LW s6, 0(s6)
  ADDW s0, s0, s6
  LD t4, 224(sp)
  ADD s6, t4, s10
  LW s6, 0(s6)
  ADDW s0, s0, s6
  LD t4, 232(sp)
  ADD s6, t4, s7
  LW s6, 0(s6)
  XORI s6, s6, 1
  SLTIU s6, s6, 1
  BNE s6, zero, bb83
  # implict jump to bb74
bb74:
  ADD s6, zero, zero
  # implict jump to bb75
bb75:
  BNE s6, zero, bb82
  # implict jump to bb76
bb76:
  XORI s9, s0, 3
  SLTIU s9, s9, 1
  BNE s9, zero, bb81
  # implict jump to bb77
bb77:
  LA s9, sheet2
  LW t4, 12(sp)
  ADD s9, s9, t4
  ADD s9, s9, s7
  SW zero, 0(s9)
  # implict jump to bb78
bb78:
  LA s7, width
  LW s7, 0(s7)
  LW t4, 24(sp)
  SLT s7, s7, t4
  XORI s7, s7, 1
  BNE s7, zero, bb80
  # implict jump to bb79
bb79:
  ADD s5, s0, zero
  ADD s4, s6, zero
  JAL zero, bb70
bb80:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb73
bb81:
  LA s9, sheet2
  LW t4, 12(sp)
  ADD s9, s9, t4
  ADD s9, s9, s7
  ADDI s10, zero, 1
  SW s10, 0(s9)
  JAL zero, bb78
bb82:
  LA s9, sheet2
  LW t4, 12(sp)
  ADD s9, s9, t4
  ADD s7, s9, s7
  ADDI s9, zero, 1
  SW s9, 0(s7)
  JAL zero, bb78
bb83:
  XORI s9, s0, 2
  SLTIU s9, s9, 1
  ADD s6, s9, zero
  JAL zero, bb75
bb84:
  ADDI t4, zero, 1
  SW t4, 36(sp)
  ADD t4, zero, zero
  SW t4, 44(sp)
  # implict jump to bb85
bb85:
  LW t4, 44(sp)
  ADD s2, t4, zero
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LA s4, width
  LW s4, 0(s4)
  SLTI s4, s4, 1
  XORI s4, s4, 1
  BNE s4, zero, bb89
  # implict jump to bb86
bb86:
  # implict jump to bb87
bb87:
  ADD t4, s2, zero
  SW t4, 40(sp)
  CALL getch
  LW t3, 52(sp)
  ADDIW t4, t3, 1
  SW t4, 32(sp)
  LA s7, height
  LW s7, 0(s7)
  LW t4, 32(sp)
  SLT s7, s7, t4
  XORI s7, s7, 1
  BNE s7, zero, bb88
  JAL zero, bb22
bb88:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  JAL zero, bb85
bb89:
  ADDI t4, zero, 1
  SW t4, 48(sp)
  # implict jump to bb90
bb90:
  LW t4, 48(sp)
  ADD s5, t4, zero
  CALL getch
  ADD s6, a0, zero
  XORI s7, s6, 35
  SLTIU s7, s7, 1
  BNE s7, zero, bb95
  # implict jump to bb91
bb91:
  ADDI s7, zero, 2000
  LW t4, 52(sp)
  MULW s7, t4, s7
  LA s8, sheet1
  ADD s7, s8, s7
  SLLIW s8, s5, 2
  ADD s7, s7, s8
  SW zero, 0(s7)
  # implict jump to bb92
bb92:
  ADDIW t4, s5, 1
  SW t4, 4(sp)
  LA s7, width
  LW s7, 0(s7)
  LW t4, 4(sp)
  SLT s7, s7, t4
  XORI s7, s7, 1
  BNE s7, zero, bb94
  # implict jump to bb93
bb93:
  ADD s2, s6, zero
  JAL zero, bb87
bb94:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb90
bb95:
  ADDI s7, zero, 2000
  LW t4, 52(sp)
  MULW s7, t4, s7
  LA s8, sheet1
  ADD s7, s8, s7
  SLLIW s8, s5, 2
  ADD s7, s7, s8
  ADDI s8, zero, 1
  SW s8, 0(s7)
  JAL zero, bb92
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
  LA s0, height
  LW s0, 0(s0)
  SLTI s0, s0, 1
  XORI s0, s0, 1
  BNE s0, zero, bb98
  # implict jump to bb97
bb97:
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
bb98:
  ADDI s0, zero, 1
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb99
bb99:
  ADD s3, s2, zero
  ADD s4, s1, zero
  ADD s5, s0, zero
  LA s6, width
  LW s6, 0(s6)
  SLTI s6, s6, 1
  XORI s6, s6, 1
  BNE s6, zero, bb103
  # implict jump to bb100
bb100:
  # implict jump to bb101
bb101:
  ADDIW t0, s5, 1
  LA t1, height
  LW t1, 0(t1)
  SLT t1, t1, t0
  XORI t1, t1, 1
  BNE t1, zero, bb102
  JAL zero, bb97
bb102:
  ADD s0, t0, zero
  ADD s1, s4, zero
  ADD s2, s3, zero
  JAL zero, bb99
bb103:
  ADDI s6, zero, 1
  SUBW s6, s5, s6
  ADDI s7, zero, 2000
  MULW s6, s6, s7
  ADD s6, a0, s6
  ADDI s7, zero, 2000
  MULW s7, s5, s7
  ADD s8, a0, s7
  ADDIW s9, s5, 1
  ADDI s10, zero, 2000
  MULW s9, s9, s10
  ADD s9, a0, s9
  ADDI s10, zero, 1
  # implict jump to bb104
bb104:
  ADD s11, s10, zero
  ADDI t0, zero, 1
  SUBW t0, s11, t0
  SLLIW t0, t0, 2
  ADD t1, s6, t0
  LW t1, 0(t1)
  SLLIW t2, s11, 2
  ADD a2, s6, t2
  LW a2, 0(a2)
  ADDW t1, t1, a2
  ADDIW s11, s11, 1
  SLLIW a2, s11, 2
  ADD a3, s6, a2
  LW a3, 0(a3)
  ADDW t1, t1, a3
  ADD a3, s8, t0
  LW a3, 0(a3)
  ADDW t1, t1, a3
  ADD a3, s8, a2
  LW a3, 0(a3)
  ADDW t1, t1, a3
  ADD t0, s9, t0
  LW t0, 0(t0)
  ADDW t0, t1, t0
  ADD t1, s9, t2
  LW t1, 0(t1)
  ADDW t0, t0, t1
  ADD t1, s9, a2
  LW t1, 0(t1)
  ADDW t0, t0, t1
  ADD t1, s8, t2
  LW t1, 0(t1)
  XORI t1, t1, 1
  SLTIU t1, t1, 1
  BNE t1, zero, bb114
  # implict jump to bb105
bb105:
  ADD t1, zero, zero
  # implict jump to bb106
bb106:
  BNE t1, zero, bb113
  # implict jump to bb107
bb107:
  XORI a2, t0, 3
  SLTIU a2, a2, 1
  BNE a2, zero, bb112
  # implict jump to bb108
bb108:
  ADD a2, a1, s7
  ADD a2, a2, t2
  SW zero, 0(a2)
  # implict jump to bb109
bb109:
  LA t2, width
  LW t2, 0(t2)
  SLT t2, t2, s11
  XORI t2, t2, 1
  BNE t2, zero, bb111
  # implict jump to bb110
bb110:
  ADD s4, t0, zero
  ADD s3, t1, zero
  JAL zero, bb101
bb111:
  ADD s10, s11, zero
  JAL zero, bb104
bb112:
  ADD a2, a1, s7
  ADD a2, a2, t2
  ADDI a3, zero, 1
  SW a3, 0(a2)
  JAL zero, bb109
bb113:
  ADD a2, a1, s7
  ADD t2, a2, t2
  ADDI a2, zero, 1
  SW a2, 0(t2)
  JAL zero, bb109
bb114:
  XORI a2, t0, 2
  SLTIU a2, a2, 1
  ADD t1, a2, zero
  JAL zero, bb106
read_map:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s8, 16(sp)
  SD s1, 24(sp)
  SD s2, 32(sp)
  SD s3, 40(sp)
  SD s4, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
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
  BNE s0, zero, bb117
  # implict jump to bb116
bb116:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s8, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s3, 40(sp)
  LD s4, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb117:
  ADDI s0, zero, 1
  ADD s1, zero, zero
  # implict jump to bb118
bb118:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, width
  LW s4, 0(s4)
  SLTI s4, s4, 1
  XORI s4, s4, 1
  BNE s4, zero, bb122
  # implict jump to bb119
bb119:
  # implict jump to bb120
bb120:
  CALL getch
  ADDIW s6, s3, 1
  LA s7, height
  LW s7, 0(s7)
  SLT s7, s7, s6
  XORI s7, s7, 1
  BNE s7, zero, bb121
  JAL zero, bb116
bb121:
  ADD s0, s6, zero
  ADD s1, s2, zero
  JAL zero, bb118
bb122:
  ADDI s4, zero, 1
  # implict jump to bb123
bb123:
  ADD s5, s4, zero
  CALL getch
  ADD s6, a0, zero
  XORI s7, s6, 35
  SLTIU s7, s7, 1
  BNE s7, zero, bb128
  # implict jump to bb124
bb124:
  ADDI s7, zero, 2000
  MULW s7, s3, s7
  LA s8, sheet1
  ADD s7, s8, s7
  SLLIW s8, s5, 2
  ADD s7, s7, s8
  SW zero, 0(s7)
  # implict jump to bb125
bb125:
  ADDIW s5, s5, 1
  LA s7, width
  LW s7, 0(s7)
  SLT s7, s7, s5
  XORI s7, s7, 1
  BNE s7, zero, bb127
  # implict jump to bb126
bb126:
  ADD s2, s6, zero
  JAL zero, bb120
bb127:
  ADD s4, s5, zero
  JAL zero, bb123
bb128:
  ADDI s7, zero, 2000
  MULW s7, s3, s7
  LA s8, sheet1
  ADD s7, s8, s7
  SLLIW s8, s5, 2
  ADD s7, s7, s8
  ADDI s8, zero, 1
  SW s8, 0(s7)
  JAL zero, bb125
