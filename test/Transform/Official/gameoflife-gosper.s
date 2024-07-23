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
  ADDI s2, zero, 2000
  MULW s2, s1, s2
  LA s3, sheet1
  ADD s3, s3, s2
  LA s4, sheet2
  ADD s2, s4, s2
  ADDI s4, zero, 1
  # implict jump to bb4
bb4:
  ADD s5, s4, zero
  LA s6, width
  LW s6, 0(s6)
  SLT s6, s6, s5
  XORI s6, s6, 1
  BNE s6, zero, bb6
  # implict jump to bb5
bb5:
  ADDIW s6, s1, 1
  ADD s0, s6, zero
  JAL zero, bb1
bb6:
  SLLIW s0, s5, 2
  ADD s6, s3, s0
  ADD s0, s2, s0
  LW s0, 0(s0)
  SW s0, 0(s6)
  ADDIW s0, s5, 1
  ADD s4, s0, zero
  JAL zero, bb4
put_map:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
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
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb10:
  ADDI s2, zero, 2000
  MULW s2, s1, s2
  LA s3, sheet1
  ADD s2, s3, s2
  ADDI s3, zero, 1
  # implict jump to bb11
bb11:
  ADD s4, s3, zero
  LA s5, width
  LW s5, 0(s5)
  SLT s5, s5, s4
  XORI s5, s5, 1
  BNE s5, zero, bb13
  # implict jump to bb12
bb12:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s5, s1, 1
  ADD s0, s5, zero
  JAL zero, bb8
bb13:
  SLLIW s0, s4, 2
  ADD s0, s2, s0
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
  ADDIW s0, s4, 1
  ADD s3, s0, zero
  JAL zero, bb11
bb16:
  ADDI a0, zero, 35
  CALL putch
  JAL zero, bb15
main:
  ADDI sp, sp, -208
  SD ra, 24(sp)
  SD s0, 64(sp)
  SD s1, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
  SD s5, 104(sp)
  SD s6, 112(sp)
  SD s7, 120(sp)
  SD s8, 128(sp)
  SD s9, 136(sp)
  SD s10, 144(sp)
  SD s11, 152(sp)
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
  ADD t4, zero, zero
  SW t4, 8(sp)
  ADDI t4, zero, 1
  SW t4, 12(sp)
  # implict jump to bb18
bb18:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LA s4, height
  LW s4, 0(s4)
  LW t4, 16(sp)
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
  BLT s5, s4, bb38
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
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  LD s5, 104(sp)
  LD s6, 112(sp)
  LD s7, 120(sp)
  LD s8, 128(sp)
  LD s9, 136(sp)
  LD s10, 144(sp)
  LD s11, 152(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
bb25:
  ADDI s8, zero, 2000
  MULW s8, s7, s8
  LA s9, sheet1
  ADD s8, s9, s8
  ADDI s9, zero, 1
  # implict jump to bb26
bb26:
  ADD s10, s9, zero
  LA s11, width
  LW s11, 0(s11)
  SLT s11, s11, s10
  XORI s11, s11, 1
  BNE s11, zero, bb28
  # implict jump to bb27
bb27:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s11, s7, 1
  ADD s6, s11, zero
  JAL zero, bb23
bb28:
  SLLIW s6, s10, 2
  ADD s6, s8, s6
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
  ADDIW s6, s10, 1
  ADD s9, s6, zero
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
  ADDI s6, zero, 2000
  MULW s6, s5, s6
  LA s7, sheet1
  ADD s7, s7, s6
  LA s8, sheet2
  ADD s6, s8, s6
  ADDI s8, zero, 1
  # implict jump to bb35
bb35:
  ADD s9, s8, zero
  LA s10, width
  LW s10, 0(s10)
  SLT s10, s10, s9
  XORI s10, s10, 1
  BNE s10, zero, bb37
  # implict jump to bb36
bb36:
  ADDIW s10, s5, 1
  ADD s4, s10, zero
  JAL zero, bb33
bb37:
  SLLIW s4, s9, 2
  ADD s10, s7, s4
  ADD s4, s6, s4
  LW s4, 0(s4)
  SW s4, 0(s10)
  ADDIW s4, s9, 1
  ADD s8, s4, zero
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
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADD s9, s4, zero
  LA s10, height
  LW s10, 0(s10)
  SLT s10, s10, s7
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
  ADDI s10, zero, 1
  SUBW s10, s7, s10
  ADDI s11, zero, 2000
  MULW s10, s10, s11
  LA s11, sheet2
  ADD s10, s11, s10
  ADDI s11, zero, 2000
  MULW t4, s7, s11
  SW t4, 0(sp)
  LA s2, sheet2
  LW t3, 0(sp)
  ADD t4, s2, t3
  SD t4, 56(sp)
  ADDIW s1, s7, 1
  ADDI s0, zero, 2000
  MULW s0, s1, s0
  LA s1, sheet2
  ADD t4, s1, s0
  SD t4, 184(sp)
  LA s1, sheet1
  LW t3, 0(sp)
  ADD t4, s1, t3
  SD t4, 176(sp)
  LA s3, sheet1
  LW t3, 0(sp)
  ADD t4, s3, t3
  SD t4, 168(sp)
  ADDI s3, zero, 1
  # implict jump to bb44
bb44:
  ADD s1, s3, zero
  ADD s0, s8, zero
  ADD s2, s9, zero
  LA s11, width
  LW s11, 0(s11)
  SLT s11, s11, s1
  XORI s11, s11, 1
  BNE s11, zero, bb46
  # implict jump to bb45
bb45:
  ADDIW s11, s7, 1
  ADD s4, s2, zero
  ADD s5, s0, zero
  ADD s6, s11, zero
  JAL zero, bb40
bb46:
  ADDI s0, zero, 1
  SUBW s0, s1, s0
  SLLIW s0, s0, 2
  ADD s2, s10, s0
  LW s2, 0(s2)
  SLLIW s4, s1, 2
  ADD s5, s10, s4
  LW s5, 0(s5)
  ADDW s2, s2, s5
  ADDIW s1, s1, 1
  SLLIW s5, s1, 2
  ADD s6, s10, s5
  LW s6, 0(s6)
  ADDW s2, s2, s6
  LD t4, 56(sp)
  ADD s6, t4, s0
  LW s6, 0(s6)
  ADDW s2, s2, s6
  LD t4, 56(sp)
  ADD s6, t4, s5
  LW s6, 0(s6)
  ADDW s2, s2, s6
  LD t4, 184(sp)
  ADD s0, t4, s0
  LW s0, 0(s0)
  ADDW s0, s2, s0
  LD t4, 184(sp)
  ADD s2, t4, s4
  LW s2, 0(s2)
  ADDW s0, s0, s2
  LD t4, 184(sp)
  ADD s2, t4, s5
  LW s2, 0(s2)
  ADDW s0, s0, s2
  LD t4, 56(sp)
  ADD s2, t4, s4
  LW s2, 0(s2)
  XORI s2, s2, 1
  SLTIU s2, s2, 1
  BNE s2, zero, bb54
  # implict jump to bb47
bb47:
  ADD s2, zero, zero
  # implict jump to bb48
bb48:
  BNE s2, zero, bb53
  # implict jump to bb49
bb49:
  XORI s5, s0, 3
  SLTIU s5, s5, 1
  BNE s5, zero, bb52
  # implict jump to bb50
bb50:
  LD t4, 168(sp)
  ADD s5, t4, s4
  SW zero, 0(s5)
  # implict jump to bb51
bb51:
  ADD s9, s2, zero
  ADD s8, s0, zero
  ADD s3, s1, zero
  JAL zero, bb44
bb52:
  LD t4, 176(sp)
  ADD s5, t4, s4
  ADDI s6, zero, 1
  SW s6, 0(s5)
  JAL zero, bb51
bb53:
  LA s5, sheet1
  LW t4, 0(sp)
  ADD s5, s5, t4
  ADD s4, s5, s4
  ADDI s5, zero, 1
  SW s5, 0(s4)
  JAL zero, bb51
bb54:
  XORI s5, s0, 2
  SLTIU s5, s5, 1
  ADD s2, s5, zero
  JAL zero, bb48
bb55:
  ADD s0, zero, zero
  ADD s1, zero, zero
  ADDI s2, zero, 1
  # implict jump to bb56
bb56:
  ADD s3, s2, zero
  ADD s4, s1, zero
  ADD s5, s0, zero
  LA s6, height
  LW s6, 0(s6)
  SLT s6, s6, s3
  XORI s6, s6, 1
  BNE s6, zero, bb58
  # implict jump to bb57
bb57:
  LA s6, active
  ADDI s7, zero, 2
  SW s7, 0(s6)
  JAL zero, bb42
bb58:
  ADDI s6, zero, 1
  SUBW s6, s3, s6
  ADDI s7, zero, 2000
  MULW s6, s6, s7
  LA s7, sheet1
  ADD s6, s7, s6
  ADDI s7, zero, 2000
  MULW s7, s3, s7
  LA s8, sheet1
  ADD t4, s8, s7
  SD t4, 48(sp)
  ADDIW s9, s3, 1
  ADDI s10, zero, 2000
  MULW s9, s9, s10
  LA s10, sheet1
  ADD t4, s10, s9
  SD t4, 40(sp)
  LA s10, sheet2
  ADD t4, s10, s7
  SD t4, 32(sp)
  LA s11, sheet2
  ADD t4, s11, s7
  SD t4, 192(sp)
  LA s11, sheet2
  ADD t4, s11, s7
  SD t4, 160(sp)
  ADDI s11, zero, 1
  # implict jump to bb59
bb59:
  ADD s7, s11, zero
  ADD s10, s4, zero
  ADD s9, s5, zero
  LA s8, width
  LW s8, 0(s8)
  SLT s8, s8, s7
  XORI s8, s8, 1
  BNE s8, zero, bb61
  # implict jump to bb60
bb60:
  ADDIW s8, s3, 1
  ADD s0, s9, zero
  ADD s1, s10, zero
  ADD s2, s8, zero
  JAL zero, bb56
bb61:
  ADDI s0, zero, 1
  SUBW s0, s7, s0
  SLLIW s0, s0, 2
  ADD s1, s6, s0
  LW s1, 0(s1)
  SLLIW s2, s7, 2
  ADD s8, s6, s2
  LW s8, 0(s8)
  ADDW s1, s1, s8
  ADDIW s7, s7, 1
  SLLIW s8, s7, 2
  ADD s9, s6, s8
  LW s9, 0(s9)
  ADDW s1, s1, s9
  LD t4, 48(sp)
  ADD s9, t4, s0
  LW s9, 0(s9)
  ADDW s1, s1, s9
  LD t4, 48(sp)
  ADD s9, t4, s8
  LW s9, 0(s9)
  ADDW s1, s1, s9
  LD t4, 40(sp)
  ADD s0, t4, s0
  LW s0, 0(s0)
  ADDW s0, s1, s0
  LD t4, 40(sp)
  ADD s1, t4, s2
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 40(sp)
  ADD s1, t4, s8
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LD t4, 48(sp)
  ADD s1, t4, s2
  LW s1, 0(s1)
  XORI s1, s1, 1
  SLTIU s1, s1, 1
  BNE s1, zero, bb69
  # implict jump to bb62
bb62:
  ADD s1, zero, zero
  # implict jump to bb63
bb63:
  BNE s1, zero, bb68
  # implict jump to bb64
bb64:
  XORI s8, s0, 3
  SLTIU s8, s8, 1
  BNE s8, zero, bb67
  # implict jump to bb65
bb65:
  LD t4, 160(sp)
  ADD s8, t4, s2
  SW zero, 0(s8)
  # implict jump to bb66
bb66:
  ADD s5, s1, zero
  ADD s4, s0, zero
  ADD s11, s7, zero
  JAL zero, bb59
bb67:
  LD t4, 192(sp)
  ADD s8, t4, s2
  ADDI s9, zero, 1
  SW s9, 0(s8)
  JAL zero, bb66
bb68:
  LD t4, 32(sp)
  ADD s2, t4, s2
  ADDI s8, zero, 1
  SW s8, 0(s2)
  JAL zero, bb66
bb69:
  XORI s8, s0, 2
  SLTIU s8, s8, 1
  ADD s1, s8, zero
  JAL zero, bb63
bb70:
  ADDI s0, zero, 2000
  LW t4, 16(sp)
  MULW s0, t4, s0
  LA s1, sheet1
  ADD s0, s1, s0
  ADDI s1, zero, 2000
  LW t4, 16(sp)
  MULW s1, t4, s1
  LA s2, sheet1
  ADD s1, s2, s1
  LW t4, 4(sp)
  ADD s2, t4, zero
  ADDI s3, zero, 1
  # implict jump to bb71
bb71:
  ADD s4, s3, zero
  ADD s5, s2, zero
  LA s6, width
  LW s6, 0(s6)
  SLT s6, s6, s4
  XORI s6, s6, 1
  BNE s6, zero, bb73
  # implict jump to bb72
bb72:
  CALL getch
  LW t4, 16(sp)
  ADDIW s6, t4, 1
  ADD t4, s5, zero
  SW t4, 8(sp)
  ADD t4, s6, zero
  SW t4, 12(sp)
  JAL zero, bb18
bb73:
  CALL getch
  XORI s5, a0, 35
  SLTIU s5, s5, 1
  BNE s5, zero, bb76
  # implict jump to bb74
bb74:
  SLLIW s5, s4, 2
  ADD s5, s1, s5
  SW zero, 0(s5)
  # implict jump to bb75
bb75:
  ADDIW s4, s4, 1
  ADD s2, a0, zero
  ADD s3, s4, zero
  JAL zero, bb71
bb76:
  SLLIW s5, s4, 2
  ADD s5, s0, s5
  ADDI s6, zero, 1
  SW s6, 0(s5)
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
  ADDI s6, zero, 1
  SUBW s6, s3, s6
  ADDI s7, zero, 2000
  MULW s6, s6, s7
  ADD s6, a0, s6
  ADDI s7, zero, 2000
  MULW s7, s3, s7
  ADD s8, a0, s7
  ADDIW s9, s3, 1
  ADDI s10, zero, 2000
  MULW s9, s9, s10
  ADD s9, a0, s9
  ADD s10, a1, s7
  ADD s11, a1, s7
  ADD s7, a1, s7
  ADDI t0, zero, 1
  # implict jump to bb81
bb81:
  ADD t1, t0, zero
  ADD t2, s4, zero
  ADD a2, s5, zero
  LA a3, width
  LW a3, 0(a3)
  SLT a3, a3, t1
  XORI a3, a3, 1
  BNE a3, zero, bb83
  # implict jump to bb82
bb82:
  ADDIW a3, s3, 1
  ADD s0, a2, zero
  ADD s1, t2, zero
  ADD s2, a3, zero
  JAL zero, bb78
bb83:
  ADDI s0, zero, 1
  SUBW s0, t1, s0
  SLLIW s0, s0, 2
  ADD s1, s6, s0
  LW s1, 0(s1)
  SLLIW s2, t1, 2
  ADD t2, s6, s2
  LW t2, 0(t2)
  ADDW s1, s1, t2
  ADDIW t1, t1, 1
  SLLIW t2, t1, 2
  ADD a2, s6, t2
  LW a2, 0(a2)
  ADDW s1, s1, a2
  ADD a2, s8, s0
  LW a2, 0(a2)
  ADDW s1, s1, a2
  ADD a2, s8, t2
  LW a2, 0(a2)
  ADDW s1, s1, a2
  ADD s0, s9, s0
  LW s0, 0(s0)
  ADDW s0, s1, s0
  ADD s1, s9, s2
  LW s1, 0(s1)
  ADDW s0, s0, s1
  ADD s1, s9, t2
  LW s1, 0(s1)
  ADDW s0, s0, s1
  ADD s1, s8, s2
  LW s1, 0(s1)
  XORI s1, s1, 1
  SLTIU s1, s1, 1
  BNE s1, zero, bb91
  # implict jump to bb84
bb84:
  ADD s1, zero, zero
  # implict jump to bb85
bb85:
  BNE s1, zero, bb90
  # implict jump to bb86
bb86:
  XORI t2, s0, 3
  SLTIU t2, t2, 1
  BNE t2, zero, bb89
  # implict jump to bb87
bb87:
  ADD t2, s7, s2
  SW zero, 0(t2)
  # implict jump to bb88
bb88:
  ADD s5, s1, zero
  ADD s4, s0, zero
  ADD t0, t1, zero
  JAL zero, bb81
bb89:
  ADD t2, s11, s2
  ADDI a2, zero, 1
  SW a2, 0(t2)
  JAL zero, bb88
bb90:
  ADD s2, s10, s2
  ADDI t2, zero, 1
  SW t2, 0(s2)
  JAL zero, bb88
bb91:
  XORI t2, s0, 2
  SLTIU t2, t2, 1
  ADD s1, t2, zero
  JAL zero, bb85
read_map:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s8, 16(sp)
  SD s9, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
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
  LD s8, 16(sp)
  LD s9, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb95:
  ADDI s4, zero, 2000
  MULW s4, s2, s4
  LA s5, sheet1
  ADD s4, s5, s4
  ADDI s5, zero, 2000
  MULW s5, s2, s5
  LA s6, sheet1
  ADD s5, s6, s5
  ADDI s6, zero, 1
  # implict jump to bb96
bb96:
  ADD s7, s6, zero
  ADD s8, s3, zero
  LA s9, width
  LW s9, 0(s9)
  SLT s9, s9, s7
  XORI s9, s9, 1
  BNE s9, zero, bb98
  # implict jump to bb97
bb97:
  CALL getch
  ADDIW s9, s2, 1
  ADD s0, s8, zero
  ADD s1, s9, zero
  JAL zero, bb93
bb98:
  CALL getch
  XORI s0, a0, 35
  SLTIU s0, s0, 1
  BNE s0, zero, bb101
  # implict jump to bb99
bb99:
  SLLIW s0, s7, 2
  ADD s0, s5, s0
  SW zero, 0(s0)
  # implict jump to bb100
bb100:
  ADDIW s0, s7, 1
  ADD s3, a0, zero
  ADD s6, s0, zero
  JAL zero, bb96
bb101:
  SLLIW s0, s7, 2
  ADD s0, s4, s0
  ADDI s1, zero, 1
  SW s1, 0(s0)
  JAL zero, bb100
