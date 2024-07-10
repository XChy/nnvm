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
  SD s8, 0(sp)
  SD s7, 8(sp)
  SD s4, 16(sp)
  SD ra, 24(sp)
  SD s3, 32(sp)
  SD s2, 40(sp)
  SD s6, 48(sp)
  SD s1, 56(sp)
  SD s5, 64(sp)
  SD s0, 72(sp)
  ADDI s0, zero, 1
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  LA s2, height
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  BNE s3, zero, bb3
  # implict jump to bb2
bb2:
  LD s8, 0(sp)
  LD s7, 8(sp)
  LD s4, 16(sp)
  LD ra, 24(sp)
  LD s3, 32(sp)
  LD s2, 40(sp)
  LD s6, 48(sp)
  LD s1, 56(sp)
  LD s5, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb3:
  ADDI s2, zero, 1
  # implict jump to bb4
bb4:
  ADD s3, s2, zero
  LA s4, width
  LW s5, 0(s4)
  SLT s4, s5, s3
  XORI s5, s4, 1
  BNE s5, zero, bb6
  # implict jump to bb5
bb5:
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb1
bb6:
  ADDI s4, zero, 2000
  MULW s5, s1, s4
  LA s4, sheet1
  ADD s6, s4, s5
  SLLIW s4, s3, 2
  ADD s7, s6, s4
  LA s6, sheet2
  ADD s8, s6, s5
  ADD s5, s8, s4
  LW s4, 0(s5)
  SW s4, 0(s7)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb4
put_map:
  ADDI sp, sp, -64
  SD s4, 0(sp)
  SD ra, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  ADDI s0, zero, 1
  # implict jump to bb8
bb8:
  ADD s1, s0, zero
  LA s2, height
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  BNE s3, zero, bb10
  # implict jump to bb9
bb9:
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb10:
  ADDI s2, zero, 1
  # implict jump to bb11
bb11:
  ADD s3, s2, zero
  LA s4, width
  LW s5, 0(s4)
  SLT s4, s5, s3
  XORI s5, s4, 1
  BNE s5, zero, bb13
  # implict jump to bb12
bb12:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb8
bb13:
  ADDI s4, zero, 2000
  MULW s5, s1, s4
  LA s4, sheet1
  ADD s6, s4, s5
  SLLIW s4, s3, 2
  ADD s5, s6, s4
  LW s4, 0(s5)
  XORI s5, s4, 1
  SLTIU s4, s5, 1
  BNE s4, zero, bb16
  # implict jump to bb14
bb14:
  ADDI a0, zero, 46
  CALL putch
  # implict jump to bb15
bb15:
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb11
bb16:
  ADDI a0, zero, 35
  CALL putch
  JAL zero, bb15
main:
  ADDI sp, sp, -160
  SD s9, 48(sp)
  SD s11, 56(sp)
  SD s10, 64(sp)
  SD s0, 72(sp)
  SD s5, 80(sp)
  SD s7, 88(sp)
  SD s1, 96(sp)
  SD s6, 104(sp)
  SD s2, 112(sp)
  SD s3, 120(sp)
  SD s4, 128(sp)
  SD s8, 136(sp)
  SD ra, 144(sp)
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
  # implict jump to bb18
bb18:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, height
  LW s5, 0(s4)
  SLT s4, s5, s2
  XORI s5, s4, 1
  BNE s5, zero, bb70
  # implict jump to bb19
bb19:
  ADDI a0, zero, 95
  CALL _sysy_starttime
  # implict jump to bb20
bb20:
  LA s0, steps
  LW s1, 0(s0)
  ADDI s0, zero, 0
  SLT s2, s0, s1
  BNE s2, zero, bb38
  # implict jump to bb21
bb21:
  ADDI a0, zero, 106
  CALL _sysy_stoptime
  LA s0, active
  LW s1, 0(s0)
  XORI s0, s1, 2
  SLTIU s1, s0, 1
  BNE s1, zero, bb32
  # implict jump to bb22
bb22:
  ADDI s0, zero, 1
  # implict jump to bb23
bb23:
  ADD s1, s0, zero
  LA s2, height
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  BNE s3, zero, bb25
  # implict jump to bb24
bb24:
  ADD a0, zero, zero
  LD s9, 48(sp)
  LD s11, 56(sp)
  LD s10, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD s8, 136(sp)
  LD ra, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb25:
  ADDI s2, zero, 1
  # implict jump to bb26
bb26:
  ADD s3, s2, zero
  LA s4, width
  LW s5, 0(s4)
  SLT s4, s5, s3
  XORI s5, s4, 1
  BNE s5, zero, bb28
  # implict jump to bb27
bb27:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb23
bb28:
  ADDI s4, zero, 2000
  MULW s5, s1, s4
  LA s4, sheet1
  ADD s6, s4, s5
  SLLIW s4, s3, 2
  ADD s5, s6, s4
  LW s4, 0(s5)
  XORI s5, s4, 1
  SLTIU s4, s5, 1
  BNE s4, zero, bb31
  # implict jump to bb29
bb29:
  ADDI a0, zero, 46
  CALL putch
  # implict jump to bb30
bb30:
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb26
bb31:
  ADDI a0, zero, 35
  CALL putch
  JAL zero, bb30
bb32:
  ADDI s0, zero, 1
  # implict jump to bb33
bb33:
  ADD s1, s0, zero
  LA s2, height
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  BNE s3, zero, bb34
  JAL zero, bb22
bb34:
  ADDI s2, zero, 1
  # implict jump to bb35
bb35:
  ADD s3, s2, zero
  LA s4, width
  LW s5, 0(s4)
  SLT s4, s5, s3
  XORI s5, s4, 1
  BNE s5, zero, bb37
  # implict jump to bb36
bb36:
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb33
bb37:
  ADDI s4, zero, 2000
  MULW s5, s1, s4
  LA s4, sheet1
  ADD s6, s4, s5
  SLLIW s4, s3, 2
  ADD s7, s6, s4
  LA s6, sheet2
  ADD s8, s6, s5
  ADD s5, s8, s4
  LW s4, 0(s5)
  SW s4, 0(s7)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb35
bb38:
  LA s0, active
  LW s1, 0(s0)
  XORI s0, s1, 1
  SLTIU s1, s0, 1
  BNE s1, zero, bb55
  # implict jump to bb39
bb39:
  ADD t4, zero, zero
  SB t4, 37(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  ADDI t4, zero, 1
  SW t4, 24(sp)
  # implict jump to bb40
bb40:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t4, 32(sp)
  ADD s4, t4, zero
  LB t4, 37(sp)
  ADD s5, t4, zero
  LA s6, height
  LW s7, 0(s6)
  LW t4, 40(sp)
  SLT s6, s7, t4
  XORI s7, s6, 1
  BNE s7, zero, bb43
  # implict jump to bb41
bb41:
  LA s0, active
  ADDI s1, zero, 1
  SW s1, 0(s0)
  # implict jump to bb42
bb42:
  LA s0, steps
  LW s1, 0(s0)
  ADDI s0, zero, 1
  SUBW s2, s1, s0
  LA s0, steps
  SW s2, 0(s0)
  JAL zero, bb20
bb43:
  ADD s6, s5, zero
  ADD s5, s4, zero
  ADDI s4, zero, 1
  # implict jump to bb44
bb44:
  ADD s7, s4, zero
  ADD t4, s5, zero
  SW t4, 28(sp)
  ADD t4, s6, zero
  SB t4, 36(sp)
  LA s10, width
  LW s11, 0(s10)
  SLT s10, s11, s7
  XORI s11, s10, 1
  BNE s11, zero, bb46
  # implict jump to bb45
bb45:
  LW t4, 40(sp)
  ADDIW s0, t4, 1
  LB t3, 36(sp)
  ADD t4, t3, zero
  SB t4, 37(sp)
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  ADD t4, s0, zero
  SW t4, 24(sp)
  JAL zero, bb40
bb46:
  ADDI s10, zero, 1
  LW t4, 40(sp)
  SUBW s11, t4, s10
  ADDI s10, zero, 2000
  MULW s2, s11, s10
  LA s10, sheet2
  ADD s11, s10, s2
  ADDI s2, zero, 1
  SUBW s10, s7, s2
  SLLIW s2, s10, 2
  ADD s10, s11, s2
  LW s8, 0(s10)
  SLLIW s10, s7, 2
  ADD s1, s11, s10
  LW s9, 0(s1)
  ADDW s1, s8, s9
  ADDIW s8, s7, 1
  SLLIW s7, s8, 2
  ADD s9, s11, s7
  LW s11, 0(s9)
  ADDW s9, s1, s11
  ADDI s1, zero, 2000
  LW t3, 40(sp)
  MULW t4, t3, s1
  SW t4, 44(sp)
  LA s1, sheet2
  LW t4, 44(sp)
  ADD s0, s1, t4
  ADD s1, s0, s2
  LW s3, 0(s1)
  ADDW s1, s9, s3
  ADD s3, s0, s7
  LW s9, 0(s3)
  ADDW s3, s1, s9
  LW t4, 40(sp)
  ADDIW s1, t4, 1
  ADDI s9, zero, 2000
  MULW s11, s1, s9
  LA s1, sheet2
  ADD s9, s1, s11
  ADD s1, s9, s2
  LW s2, 0(s1)
  ADDW s1, s3, s2
  ADD s2, s9, s10
  LW s3, 0(s2)
  ADDW s2, s1, s3
  ADD s1, s9, s7
  LW s3, 0(s1)
  ADDW s1, s2, s3
  ADD s2, s0, s10
  LW s0, 0(s2)
  XORI s2, s0, 1
  SLTIU s0, s2, 1
  BNE s0, zero, bb54
  # implict jump to bb47
bb47:
  ADD s0, zero, zero
  # implict jump to bb48
bb48:
  ADD s2, s0, zero
  BNE s2, zero, bb53
  # implict jump to bb49
bb49:
  XORI s3, s1, 3
  SLTIU s4, s3, 1
  BNE s4, zero, bb52
  # implict jump to bb50
bb50:
  LA s3, sheet1
  LW t4, 44(sp)
  ADD s4, s3, t4
  ADD s3, s4, s10
  SW zero, 0(s3)
  # implict jump to bb51
bb51:
  ADD s6, s2, zero
  ADD s5, s1, zero
  ADD s4, s8, zero
  JAL zero, bb44
bb52:
  LA s3, sheet1
  LW t4, 44(sp)
  ADD s4, s3, t4
  ADD s3, s4, s10
  ADDI s4, zero, 1
  SW s4, 0(s3)
  JAL zero, bb51
bb53:
  LA s3, sheet1
  LW t4, 44(sp)
  ADD s7, s3, t4
  ADD s3, s7, s10
  ADDI s7, zero, 1
  SW s7, 0(s3)
  JAL zero, bb51
bb54:
  XORI s0, s1, 2
  SLTIU s2, s0, 1
  ADD s0, s2, zero
  JAL zero, bb48
bb55:
  ADD t4, zero, zero
  SB t4, 13(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  ADDI t4, zero, 1
  SW t4, 0(sp)
  # implict jump to bb56
bb56:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t4, 8(sp)
  ADD s4, t4, zero
  LB t4, 13(sp)
  ADD s5, t4, zero
  LA s6, height
  LW s7, 0(s6)
  LW t4, 16(sp)
  SLT s6, s7, t4
  XORI s7, s6, 1
  BNE s7, zero, bb58
  # implict jump to bb57
bb57:
  LA s0, active
  ADDI s1, zero, 2
  SW s1, 0(s0)
  JAL zero, bb42
bb58:
  ADD s6, s5, zero
  ADD s5, s4, zero
  ADDI s4, zero, 1
  # implict jump to bb59
bb59:
  ADD s7, s4, zero
  ADD t4, s5, zero
  SW t4, 4(sp)
  ADD t4, s6, zero
  SB t4, 12(sp)
  LA s10, width
  LW s11, 0(s10)
  SLT s10, s11, s7
  XORI s11, s10, 1
  BNE s11, zero, bb61
  # implict jump to bb60
bb60:
  LW t4, 16(sp)
  ADDIW s0, t4, 1
  LB t3, 12(sp)
  ADD t4, t3, zero
  SB t4, 13(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  ADD t4, s0, zero
  SW t4, 0(sp)
  JAL zero, bb56
bb61:
  ADDI s10, zero, 1
  LW t4, 16(sp)
  SUBW s11, t4, s10
  ADDI s10, zero, 2000
  MULW s2, s11, s10
  LA s10, sheet1
  ADD s11, s10, s2
  ADDI s2, zero, 1
  SUBW s10, s7, s2
  SLLIW s2, s10, 2
  ADD s10, s11, s2
  LW s8, 0(s10)
  SLLIW s10, s7, 2
  ADD s1, s11, s10
  LW s9, 0(s1)
  ADDW s1, s8, s9
  ADDIW s8, s7, 1
  SLLIW s7, s8, 2
  ADD s9, s11, s7
  LW s11, 0(s9)
  ADDW s9, s1, s11
  ADDI s1, zero, 2000
  LW t3, 16(sp)
  MULW t4, t3, s1
  SW t4, 20(sp)
  LA s1, sheet1
  LW t4, 20(sp)
  ADD s0, s1, t4
  ADD s1, s0, s2
  LW s3, 0(s1)
  ADDW s1, s9, s3
  ADD s3, s0, s7
  LW s9, 0(s3)
  ADDW s3, s1, s9
  LW t4, 16(sp)
  ADDIW s1, t4, 1
  ADDI s9, zero, 2000
  MULW s11, s1, s9
  LA s1, sheet1
  ADD s9, s1, s11
  ADD s1, s9, s2
  LW s2, 0(s1)
  ADDW s1, s3, s2
  ADD s2, s9, s10
  LW s3, 0(s2)
  ADDW s2, s1, s3
  ADD s1, s9, s7
  LW s3, 0(s1)
  ADDW s1, s2, s3
  ADD s2, s0, s10
  LW s0, 0(s2)
  XORI s2, s0, 1
  SLTIU s0, s2, 1
  BNE s0, zero, bb69
  # implict jump to bb62
bb62:
  ADD s0, zero, zero
  # implict jump to bb63
bb63:
  ADD s2, s0, zero
  BNE s2, zero, bb68
  # implict jump to bb64
bb64:
  XORI s3, s1, 3
  SLTIU s4, s3, 1
  BNE s4, zero, bb67
  # implict jump to bb65
bb65:
  LA s3, sheet2
  LW t4, 20(sp)
  ADD s4, s3, t4
  ADD s3, s4, s10
  SW zero, 0(s3)
  # implict jump to bb66
bb66:
  ADD s6, s2, zero
  ADD s5, s1, zero
  ADD s4, s8, zero
  JAL zero, bb59
bb67:
  LA s3, sheet2
  LW t4, 20(sp)
  ADD s4, s3, t4
  ADD s3, s4, s10
  ADDI s4, zero, 1
  SW s4, 0(s3)
  JAL zero, bb66
bb68:
  LA s3, sheet2
  LW t4, 20(sp)
  ADD s7, s3, t4
  ADD s3, s7, s10
  ADDI s7, zero, 1
  SW s7, 0(s3)
  JAL zero, bb66
bb69:
  XORI s0, s1, 2
  SLTIU s2, s0, 1
  ADD s0, s2, zero
  JAL zero, bb63
bb70:
  ADD s4, s3, zero
  ADDI s3, zero, 1
  # implict jump to bb71
bb71:
  ADD s5, s3, zero
  ADD s6, s4, zero
  LA s7, width
  LW s8, 0(s7)
  SLT s7, s8, s5
  XORI s8, s7, 1
  BNE s8, zero, bb73
  # implict jump to bb72
bb72:
  CALL getch
  ADD s3, a0, zero
  ADDIW s3, s2, 1
  ADD s0, s6, zero
  ADD s1, s3, zero
  JAL zero, bb18
bb73:
  CALL getch
  ADD s7, a0, zero
  XORI s8, s7, 35
  SLTIU s9, s8, 1
  BNE s9, zero, bb76
  # implict jump to bb74
bb74:
  ADDI s3, zero, 2000
  MULW s4, s2, s3
  LA s3, sheet1
  ADD s8, s3, s4
  SLLIW s3, s5, 2
  ADD s4, s8, s3
  SW zero, 0(s4)
  # implict jump to bb75
bb75:
  ADDIW s8, s5, 1
  ADD s4, s7, zero
  ADD s3, s8, zero
  JAL zero, bb71
bb76:
  ADDI s8, zero, 2000
  MULW s9, s2, s8
  LA s8, sheet1
  ADD s10, s8, s9
  SLLIW s8, s5, 2
  ADD s9, s10, s8
  ADDI s8, zero, 1
  SW s8, 0(s9)
  JAL zero, bb75
step:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s5, 32(sp)
  SD s7, 40(sp)
  SD s1, 48(sp)
  SD s6, 56(sp)
  SD s8, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD s9, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  ADDI s4, zero, 1
  # implict jump to bb78
bb78:
  ADD s5, s4, zero
  ADD s6, s3, zero
  ADD s7, s2, zero
  LA s8, height
  LW s9, 0(s8)
  SLT s8, s9, s5
  XORI s9, s8, 1
  BNE s9, zero, bb80
  # implict jump to bb79
bb79:
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s5, 32(sp)
  LD s7, 40(sp)
  LD s1, 48(sp)
  LD s6, 56(sp)
  LD s8, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s9, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb80:
  ADD s8, s7, zero
  ADD s7, s6, zero
  ADDI s6, zero, 1
  # implict jump to bb81
bb81:
  ADD s9, s6, zero
  ADD s10, s7, zero
  ADD s11, s8, zero
  LA t0, width
  LW t1, 0(t0)
  SLT t0, t1, s9
  XORI t1, t0, 1
  BNE t1, zero, bb83
  # implict jump to bb82
bb82:
  ADDIW s6, s5, 1
  ADD s2, s11, zero
  ADD s3, s10, zero
  ADD s4, s6, zero
  JAL zero, bb78
bb83:
  ADDI t0, zero, 1
  SUBW t1, s5, t0
  ADDI t0, zero, 2000
  MULW t2, t1, t0
  ADD t0, s0, t2
  ADDI t1, zero, 1
  SUBW t2, s9, t1
  SLLIW t1, t2, 2
  ADD t2, t0, t1
  LW a0, 0(t2)
  SLLIW t2, s9, 2
  ADD a1, t0, t2
  LW a2, 0(a1)
  ADDW a1, a0, a2
  ADDIW a0, s9, 1
  SLLIW s9, a0, 2
  ADD a2, t0, s9
  LW t0, 0(a2)
  ADDW a2, a1, t0
  ADDI t0, zero, 2000
  MULW a1, s5, t0
  ADD t0, s0, a1
  ADD a3, t0, t1
  LW a4, 0(a3)
  ADDW a3, a2, a4
  ADD a2, t0, s9
  LW a4, 0(a2)
  ADDW a2, a3, a4
  ADDIW a3, s5, 1
  ADDI a4, zero, 2000
  MULW a5, a3, a4
  ADD a3, s0, a5
  ADD a4, a3, t1
  LW t1, 0(a4)
  ADDW a4, a2, t1
  ADD t1, a3, t2
  LW a2, 0(t1)
  ADDW t1, a4, a2
  ADD a2, a3, s9
  LW s9, 0(a2)
  ADDW a2, t1, s9
  ADD s9, t0, t2
  LW t0, 0(s9)
  XORI s9, t0, 1
  SLTIU t0, s9, 1
  BNE t0, zero, bb91
  # implict jump to bb84
bb84:
  ADD s9, zero, zero
  # implict jump to bb85
bb85:
  ADD t0, s9, zero
  BNE t0, zero, bb90
  # implict jump to bb86
bb86:
  XORI s6, a2, 3
  SLTIU s7, s6, 1
  BNE s7, zero, bb89
  # implict jump to bb87
bb87:
  ADD s6, s1, a1
  ADD s7, s6, t2
  SW zero, 0(s7)
  # implict jump to bb88
bb88:
  ADD s8, t0, zero
  ADD s7, a2, zero
  ADD s6, a0, zero
  JAL zero, bb81
bb89:
  ADD s6, s1, a1
  ADD s7, s6, t2
  ADDI s6, zero, 1
  SW s6, 0(s7)
  JAL zero, bb88
bb90:
  ADD t1, s1, a1
  ADD a3, t1, t2
  ADDI t1, zero, 1
  SW t1, 0(a3)
  JAL zero, bb88
bb91:
  XORI s9, a2, 2
  SLTIU t0, s9, 1
  ADD s9, t0, zero
  JAL zero, bb85
read_map:
  ADDI sp, sp, -96
  SD s10, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s7, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD ra, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
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
  LW s5, 0(s4)
  SLT s4, s5, s2
  XORI s5, s4, 1
  BNE s5, zero, bb95
  # implict jump to bb94
bb94:
  LD s10, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD ra, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb95:
  ADD s4, s3, zero
  ADDI s3, zero, 1
  # implict jump to bb96
bb96:
  ADD s5, s3, zero
  ADD s6, s4, zero
  LA s7, width
  LW s8, 0(s7)
  SLT s7, s8, s5
  XORI s8, s7, 1
  BNE s8, zero, bb98
  # implict jump to bb97
bb97:
  CALL getch
  ADD s3, a0, zero
  ADDIW s3, s2, 1
  ADD s0, s6, zero
  ADD s1, s3, zero
  JAL zero, bb93
bb98:
  CALL getch
  ADD s7, a0, zero
  XORI s8, s7, 35
  SLTIU s9, s8, 1
  BNE s9, zero, bb101
  # implict jump to bb99
bb99:
  ADDI s3, zero, 2000
  MULW s4, s2, s3
  LA s3, sheet1
  ADD s8, s3, s4
  SLLIW s3, s5, 2
  ADD s4, s8, s3
  SW zero, 0(s4)
  # implict jump to bb100
bb100:
  ADDIW s8, s5, 1
  ADD s4, s7, zero
  ADD s3, s8, zero
  JAL zero, bb96
bb101:
  ADDI s8, zero, 2000
  MULW s9, s2, s8
  LA s8, sheet1
  ADD s10, s8, s9
  SLLIW s8, s5, 2
  ADD s9, s10, s8
  ADDI s8, zero, 1
  SW s8, 0(s9)
  JAL zero, bb100
