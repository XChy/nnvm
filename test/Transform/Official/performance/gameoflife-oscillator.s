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
  BNE s0, zero, bb63
  # implict jump to bb1
bb1:
  ADDI a0, zero, 95
  CALL _sysy_starttime
  LA s7, steps
  LW s7, 0(s7)
  BLT zero, s7, bb23
  # implict jump to bb2
bb2:
  ADDI a0, zero, 106
  CALL _sysy_stoptime
  LA s6, active
  LW s6, 0(s6)
  XORI s6, s6, 2
  SLTIU s6, s6, 1
  BNE s6, zero, bb15
  # implict jump to bb3
bb3:
  LA s4, height
  LW s4, 0(s4)
  SLTI s4, s4, 1
  XORI s4, s4, 1
  BNE s4, zero, bb5
  # implict jump to bb4
bb4:
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
bb5:
  ADDI s4, zero, 1
  # implict jump to bb6
bb6:
  ADD s5, s4, zero
  LA s1, width
  LW s1, 0(s1)
  SLTI s1, s1, 1
  XORI s1, s1, 1
  BNE s1, zero, bb9
  # implict jump to bb7
bb7:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s11, s5, 1
  LA t0, height
  LW t0, 0(t0)
  SLT t0, t0, s11
  XORI t0, t0, 1
  BNE t0, zero, bb8
  JAL zero, bb4
bb8:
  ADD s4, s11, zero
  JAL zero, bb6
bb9:
  ADDI s1, zero, 2000
  MULW s1, s5, s1
  LA s0, sheet1
  ADD s0, s0, s1
  ADDI s1, zero, 1
  # implict jump to bb10
bb10:
  ADD s8, s1, zero
  SLLIW s11, s8, 2
  ADD s11, s0, s11
  LW s11, 0(s11)
  XORI s11, s11, 1
  SLTIU s11, s11, 1
  BNE s11, zero, bb14
  # implict jump to bb11
bb11:
  ADDI a0, zero, 46
  CALL putch
  # implict jump to bb12
bb12:
  ADDIW s8, s8, 1
  LA s11, width
  LW s11, 0(s11)
  SLT s11, s11, s8
  XORI s11, s11, 1
  BNE s11, zero, bb13
  JAL zero, bb7
bb13:
  ADD s1, s8, zero
  JAL zero, bb10
bb14:
  ADDI a0, zero, 35
  CALL putch
  JAL zero, bb12
bb15:
  LA s6, height
  LW s6, 0(s6)
  SLTI s6, s6, 1
  XORI s6, s6, 1
  BNE s6, zero, bb16
  JAL zero, bb3
bb16:
  LA s6, width
  LW s6, 0(s6)
  SLTI s6, s6, 1
  XORI s6, s6, 1
  ADDI s7, zero, 1
  # implict jump to bb17
bb17:
  ADD s9, s7, zero
  BNE s6, zero, bb20
  # implict jump to bb18
bb18:
  ADDIW s3, s9, 1
  LA s4, height
  LW s4, 0(s4)
  SLT s4, s4, s3
  XORI s4, s4, 1
  BNE s4, zero, bb19
  JAL zero, bb3
bb19:
  ADD s7, s3, zero
  JAL zero, bb17
bb20:
  ADDI s10, zero, 2000
  MULW s10, s9, s10
  LA s11, sheet1
  ADD t4, s11, s10
  SD t4, 88(sp)
  LA s8, sheet2
  ADD t4, s8, s10
  SD t4, 80(sp)
  ADDI s10, zero, 1
  # implict jump to bb21
bb21:
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
  BNE s3, zero, bb22
  JAL zero, bb18
bb22:
  ADD s10, s2, zero
  JAL zero, bb21
bb23:
  LA s7, active
  LW s7, 0(s7)
  XORI s7, s7, 1
  SLTIU s7, s7, 1
  BNE s7, zero, bb44
  # implict jump to bb24
bb24:
  LA s7, height
  LW s7, 0(s7)
  SLTI s7, s7, 1
  XORI s7, s7, 1
  BNE s7, zero, bb27
  # implict jump to bb25
bb25:
  LA s2, active
  ADDI s4, zero, 1
  SW s4, 0(s2)
  # implict jump to bb26
bb26:
  LA s6, steps
  LW s6, 0(s6)
  ADDI s7, zero, 1
  SUBW s6, s6, s7
  LA s7, steps
  SW s6, 0(s7)
  LA s6, steps
  LW s6, 0(s6)
  ADDI s7, zero, 0
  BLT s7, s6, bb23
  JAL zero, bb2
bb27:
  LA s7, width
  LW s7, 0(s7)
  SLTI s7, s7, 1
  XORI t4, s7, 1
  SB t4, 1(sp)
  ADDI s8, zero, 1
  ADD s9, zero, zero
  ADD s10, zero, zero
  # implict jump to bb28
bb28:
  ADD s11, s10, zero
  ADD s3, s9, zero
  ADD t4, s8, zero
  SW t4, 20(sp)
  LB t4, 1(sp)
  BNE t4, zero, bb32
  # implict jump to bb29
bb29:
  # implict jump to bb30
bb30:
  LW t4, 20(sp)
  ADDIW s1, t4, 1
  LA s2, height
  LW s2, 0(s2)
  SLT s2, s2, s1
  XORI s2, s2, 1
  BNE s2, zero, bb31
  JAL zero, bb25
bb31:
  ADD s8, s1, zero
  ADD s9, s3, zero
  ADD s10, s11, zero
  JAL zero, bb28
bb32:
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
  # implict jump to bb33
bb33:
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
  BNE s4, zero, bb43
  # implict jump to bb34
bb34:
  ADD s4, zero, zero
  # implict jump to bb35
bb35:
  BNE s4, zero, bb42
  # implict jump to bb36
bb36:
  XORI s5, s2, 3
  SLTIU s5, s5, 1
  BNE s5, zero, bb41
  # implict jump to bb37
bb37:
  LA s5, sheet1
  LW t4, 28(sp)
  ADD s5, s5, t4
  ADD s5, s5, s1
  SW zero, 0(s5)
  # implict jump to bb38
bb38:
  LA s1, width
  LW s1, 0(s1)
  SLT s1, s1, s0
  XORI s1, s1, 1
  BNE s1, zero, bb40
  # implict jump to bb39
bb39:
  ADD s3, s2, zero
  ADD s11, s4, zero
  JAL zero, bb30
bb40:
  ADD s6, s0, zero
  JAL zero, bb33
bb41:
  LA s5, sheet1
  LW t4, 28(sp)
  ADD s5, s5, t4
  ADD s5, s5, s1
  ADDI s7, zero, 1
  SW s7, 0(s5)
  JAL zero, bb38
bb42:
  LA s5, sheet1
  LW t4, 28(sp)
  ADD s5, s5, t4
  ADD s1, s5, s1
  ADDI s5, zero, 1
  SW s5, 0(s1)
  JAL zero, bb38
bb43:
  XORI s5, s2, 2
  SLTIU s5, s5, 1
  ADD s4, s5, zero
  JAL zero, bb35
bb44:
  LA s0, height
  LW s0, 0(s0)
  SLTI s0, s0, 1
  XORI s0, s0, 1
  BNE s0, zero, bb46
  # implict jump to bb45
bb45:
  LA s6, active
  ADDI s7, zero, 2
  SW s7, 0(s6)
  JAL zero, bb26
bb46:
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
  # implict jump to bb47
bb47:
  LB t4, 2(sp)
  ADD s4, t4, zero
  LW t4, 56(sp)
  ADD s5, t4, zero
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LB t4, 0(sp)
  BNE t4, zero, bb51
  # implict jump to bb48
bb48:
  # implict jump to bb49
bb49:
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
  BNE s6, zero, bb50
  JAL zero, bb45
bb50:
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LB t3, 3(sp)
  ADD t4, t3, zero
  SB t4, 2(sp)
  JAL zero, bb47
bb51:
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
  # implict jump to bb52
bb52:
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
  BNE s6, zero, bb62
  # implict jump to bb53
bb53:
  ADD s6, zero, zero
  # implict jump to bb54
bb54:
  BNE s6, zero, bb61
  # implict jump to bb55
bb55:
  XORI s9, s0, 3
  SLTIU s9, s9, 1
  BNE s9, zero, bb60
  # implict jump to bb56
bb56:
  LA s9, sheet2
  LW t4, 12(sp)
  ADD s9, s9, t4
  ADD s9, s9, s7
  SW zero, 0(s9)
  # implict jump to bb57
bb57:
  LA s7, width
  LW s7, 0(s7)
  LW t4, 24(sp)
  SLT s7, s7, t4
  XORI s7, s7, 1
  BNE s7, zero, bb59
  # implict jump to bb58
bb58:
  ADD s5, s0, zero
  ADD s4, s6, zero
  JAL zero, bb49
bb59:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb52
bb60:
  LA s9, sheet2
  LW t4, 12(sp)
  ADD s9, s9, t4
  ADD s9, s9, s7
  ADDI s10, zero, 1
  SW s10, 0(s9)
  JAL zero, bb57
bb61:
  LA s9, sheet2
  LW t4, 12(sp)
  ADD s9, s9, t4
  ADD s7, s9, s7
  ADDI s9, zero, 1
  SW s9, 0(s7)
  JAL zero, bb57
bb62:
  XORI s9, s0, 2
  SLTIU s9, s9, 1
  ADD s6, s9, zero
  JAL zero, bb54
bb63:
  ADDI t4, zero, 1
  SW t4, 36(sp)
  ADD t4, zero, zero
  SW t4, 44(sp)
  # implict jump to bb64
bb64:
  LW t4, 44(sp)
  ADD s2, t4, zero
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LA s4, width
  LW s4, 0(s4)
  SLTI s4, s4, 1
  XORI s4, s4, 1
  BNE s4, zero, bb68
  # implict jump to bb65
bb65:
  # implict jump to bb66
bb66:
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
  BNE s7, zero, bb67
  JAL zero, bb1
bb67:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  JAL zero, bb64
bb68:
  ADDI t4, zero, 1
  SW t4, 48(sp)
  # implict jump to bb69
bb69:
  LW t4, 48(sp)
  ADD s5, t4, zero
  CALL getch
  ADD s6, a0, zero
  XORI s7, s6, 35
  SLTIU s7, s7, 1
  BNE s7, zero, bb74
  # implict jump to bb70
bb70:
  ADDI s7, zero, 2000
  LW t4, 52(sp)
  MULW s7, t4, s7
  LA s8, sheet1
  ADD s7, s8, s7
  SLLIW s8, s5, 2
  ADD s7, s7, s8
  SW zero, 0(s7)
  # implict jump to bb71
bb71:
  ADDIW t4, s5, 1
  SW t4, 4(sp)
  LA s7, width
  LW s7, 0(s7)
  LW t4, 4(sp)
  SLT s7, s7, t4
  XORI s7, s7, 1
  BNE s7, zero, bb73
  # implict jump to bb72
bb72:
  ADD s2, s6, zero
  JAL zero, bb66
bb73:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb69
bb74:
  ADDI s7, zero, 2000
  LW t4, 52(sp)
  MULW s7, t4, s7
  LA s8, sheet1
  ADD s7, s8, s7
  SLLIW s8, s5, 2
  ADD s7, s7, s8
  ADDI s8, zero, 1
  SW s8, 0(s7)
  JAL zero, bb71
