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
  ADDI sp, sp, -160
  SD s3, 16(sp)
  SD ra, 32(sp)
  SD s0, 40(sp)
  SD s1, 48(sp)
  SD s2, 56(sp)
  SD s4, 64(sp)
  SD s5, 72(sp)
  SD s6, 80(sp)
  SD s7, 88(sp)
  SD s8, 96(sp)
  SD s9, 104(sp)
  SD s10, 112(sp)
  SD s11, 120(sp)
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
  LD s3, 16(sp)
  LD ra, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s4, 64(sp)
  LD s5, 72(sp)
  LD s6, 80(sp)
  LD s7, 88(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  LD s10, 112(sp)
  LD s11, 120(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb5:
  ADDI s1, zero, 1
  # implict jump to bb6
bb6:
  LA a0, width
  LW a0, 0(a0)
  SLTI a0, a0, 1
  XORI a0, a0, 1
  BNE a0, zero, bb9
  # implict jump to bb7
bb7:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s1, s1, 1
  LA s0, height
  LW s0, 0(s0)
  SLT s0, s0, s1
  XORI s0, s0, 1
  BNE s0, zero, bb8
  JAL zero, bb4
bb8:
  JAL zero, bb6
bb9:
  ADDI a0, zero, 2000
  MULW a0, s1, a0
  LA s0, sheet1
  ADD s2, s0, a0
  ADDI s0, zero, 1
  # implict jump to bb10
bb10:
  SLLIW a0, s0, 2
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
  ADDIW s0, s0, 1
  LA s3, width
  LW s3, 0(s3)
  SLT s3, s3, s0
  XORI s3, s3, 1
  BNE s3, zero, bb13
  JAL zero, bb7
bb13:
  JAL zero, bb10
bb14:
  ADDI a0, zero, 35
  CALL putch
  JAL zero, bb12
bb15:
  LA a0, height
  LW s1, 0(a0)
  SLTI a0, s1, 1
  XORI a0, a0, 1
  BNE a0, zero, bb16
  JAL zero, bb3
bb16:
  LA a0, width
  LW s2, 0(a0)
  SLTI a0, s2, 1
  XORI s3, a0, 1
  ADDI s0, zero, 1
  # implict jump to bb17
bb17:
  BNE s3, zero, bb20
  # implict jump to bb18
bb18:
  ADDIW s0, s0, 1
  SLT s4, s1, s0
  XORI s4, s4, 1
  BNE s4, zero, bb19
  JAL zero, bb3
bb19:
  JAL zero, bb17
bb20:
  ADDI a0, zero, 2000
  MULW a0, s0, a0
  LA s4, sheet1
  ADD s4, s4, a0
  LA s5, sheet2
  ADD s5, s5, a0
  ADDI a0, zero, 1
  # implict jump to bb21
bb21:
  SLLIW s6, a0, 2
  ADD s7, s4, s6
  ADD s6, s5, s6
  LW s6, 0(s6)
  SW s6, 0(s7)
  ADDIW a0, a0, 1
  SLT s6, s2, a0
  XORI s6, s6, 1
  BNE s6, zero, bb22
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
  SW a0, 12(sp)
  LW a0, 12(sp)
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
  ADDI s0, zero, 0
  BLT s0, a0, bb23
  JAL zero, bb2
bb27:
  LA a0, width
  LW s6, 0(a0)
  SLTI a0, s6, 1
  XORI s7, a0, 1
  ADDI s0, zero, 1
  ADD a0, zero, zero
  ADD s2, zero, zero
  # implict jump to bb28
bb28:
  ADDIW s4, s0, 1
  BNE s7, zero, bb32
  # implict jump to bb29
bb29:
  # implict jump to bb30
bb30:
  LW s0, 12(sp)
  SLT s1, s0, s4
  XORI s1, s1, 1
  BNE s1, zero, bb31
  JAL zero, bb25
bb31:
  ADD s0, s4, zero
  JAL zero, bb28
bb32:
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  ADDI s1, zero, 2000
  MULW a0, a0, s1
  LA s1, sheet2
  ADD s8, s1, a0
  ADDI a0, zero, 2000
  MULW s9, s0, a0
  LA a0, sheet2
  ADD a0, a0, s9
  SD a0, 128(sp)
  ADDI s3, zero, 1
  # implict jump to bb33
bb33:
  ADDI a0, zero, 1
  SUBW a0, s3, a0
  SLLIW s0, a0, 2
  ADD a0, s8, s0
  LW a0, 0(a0)
  SLLIW s1, s3, 2
  SW s1, 4(sp)
  LW s1, 4(sp)
  ADD s1, s8, s1
  LW s1, 0(s1)
  ADDW s1, a0, s1
  ADDIW s3, s3, 1
  SLLIW s2, s3, 2
  ADD s10, s8, s2
  LW s10, 0(s10)
  ADDW s1, s1, s10
  LD a0, 128(sp)
  ADD s10, a0, s0
  LW s10, 0(s10)
  ADDW s1, s1, s10
  LD a0, 128(sp)
  ADD s10, a0, s2
  LW s10, 0(s10)
  ADDW s1, s1, s10
  ADDI s10, zero, 2000
  MULW s10, s4, s10
  LA a0, sheet2
  SD a0, 144(sp)
  LD a0, 144(sp)
  ADD s10, a0, s10
  ADD s0, s10, s0
  LW s0, 0(s0)
  ADDW s0, s1, s0
  LW a0, 4(sp)
  ADD s1, s10, a0
  LW s1, 0(s1)
  ADDW s0, s0, s1
  ADD s1, s10, s2
  LW s1, 0(s1)
  ADDW a0, s0, s1
  LW s0, 4(sp)
  LD s1, 128(sp)
  ADD s1, s1, s0
  LW s1, 0(s1)
  XORI s1, s1, 1
  SLTIU s1, s1, 1
  BNE s1, zero, bb43
  # implict jump to bb34
bb34:
  ADD s2, zero, zero
  # implict jump to bb35
bb35:
  LA s10, sheet1
  ADD s10, s10, s9
  BNE s2, zero, bb42
  # implict jump to bb36
bb36:
  XORI s11, a0, 3
  SLTIU s11, s11, 1
  BNE s11, zero, bb41
  # implict jump to bb37
bb37:
  LW s0, 4(sp)
  ADD s10, s10, s0
  SW zero, 0(s10)
  # implict jump to bb38
bb38:
  SLT s10, s6, s3
  XORI s10, s10, 1
  BNE s10, zero, bb40
  # implict jump to bb39
bb39:
  JAL zero, bb30
bb40:
  JAL zero, bb33
bb41:
  LW s0, 4(sp)
  ADD s10, s10, s0
  ADDI s11, zero, 1
  SW s11, 0(s10)
  JAL zero, bb38
bb42:
  LW s0, 4(sp)
  ADD s10, s10, s0
  ADDI s11, zero, 1
  SW s11, 0(s10)
  JAL zero, bb38
bb43:
  XORI s1, a0, 2
  SLTIU s2, s1, 1
  JAL zero, bb35
bb44:
  LA a0, height
  LW a0, 0(a0)
  SW a0, 8(sp)
  LW a0, 8(sp)
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
  LW s6, 0(a0)
  SLTI a0, s6, 1
  XORI s7, a0, 1
  ADDI s1, zero, 1
  ADD a0, zero, zero
  ADD s2, zero, zero
  # implict jump to bb47
bb47:
  ADDIW s4, s1, 1
  BNE s7, zero, bb51
  # implict jump to bb48
bb48:
  # implict jump to bb49
bb49:
  LW s0, 8(sp)
  SLT s1, s0, s4
  XORI s1, s1, 1
  BNE s1, zero, bb50
  JAL zero, bb45
bb50:
  ADD s1, s4, zero
  JAL zero, bb47
bb51:
  ADDI a0, zero, 1
  SUBW a0, s1, a0
  ADDI s0, zero, 2000
  MULW a0, a0, s0
  LA s0, sheet1
  ADD s8, s0, a0
  ADDI a0, zero, 2000
  MULW s9, s1, a0
  LA a0, sheet1
  ADD a0, a0, s9
  SD a0, 24(sp)
  ADDI s3, zero, 1
  # implict jump to bb52
bb52:
  ADDI a0, zero, 1
  SUBW a0, s3, a0
  SLLIW s0, a0, 2
  ADD a0, s8, s0
  LW a0, 0(a0)
  SLLIW s1, s3, 2
  SW s1, 0(sp)
  LW s1, 0(sp)
  ADD s1, s8, s1
  LW s1, 0(s1)
  ADDW s1, a0, s1
  ADDIW s3, s3, 1
  SLLIW s2, s3, 2
  ADD s10, s8, s2
  LW s10, 0(s10)
  ADDW s1, s1, s10
  LD a0, 24(sp)
  ADD s10, a0, s0
  LW s10, 0(s10)
  ADDW s1, s1, s10
  LD a0, 24(sp)
  ADD s10, a0, s2
  LW s10, 0(s10)
  ADDW s1, s1, s10
  ADDI s10, zero, 2000
  MULW s10, s4, s10
  LA a0, sheet1
  SD a0, 136(sp)
  LD a0, 136(sp)
  ADD s10, a0, s10
  ADD s0, s10, s0
  LW s0, 0(s0)
  ADDW s0, s1, s0
  LW a0, 0(sp)
  ADD s1, s10, a0
  LW s1, 0(s1)
  ADDW s0, s0, s1
  ADD s1, s10, s2
  LW s1, 0(s1)
  ADDW a0, s0, s1
  LW s0, 0(sp)
  LD s1, 24(sp)
  ADD s1, s1, s0
  LW s1, 0(s1)
  XORI s1, s1, 1
  SLTIU s1, s1, 1
  BNE s1, zero, bb62
  # implict jump to bb53
bb53:
  ADD s2, zero, zero
  # implict jump to bb54
bb54:
  LA s10, sheet2
  ADD s10, s10, s9
  BNE s2, zero, bb61
  # implict jump to bb55
bb55:
  XORI s11, a0, 3
  SLTIU s11, s11, 1
  BNE s11, zero, bb60
  # implict jump to bb56
bb56:
  LW s0, 0(sp)
  ADD s10, s10, s0
  SW zero, 0(s10)
  # implict jump to bb57
bb57:
  SLT s10, s6, s3
  XORI s10, s10, 1
  BNE s10, zero, bb59
  # implict jump to bb58
bb58:
  JAL zero, bb49
bb59:
  JAL zero, bb52
bb60:
  LW s0, 0(sp)
  ADD s10, s10, s0
  ADDI s11, zero, 1
  SW s11, 0(s10)
  JAL zero, bb57
bb61:
  LW s0, 0(sp)
  ADD s10, s10, s0
  ADDI s11, zero, 1
  SW s11, 0(s10)
  JAL zero, bb57
bb62:
  XORI s1, a0, 2
  SLTIU s2, s1, 1
  JAL zero, bb54
bb63:
  ADDI s2, zero, 1
  ADD s0, zero, zero
  # implict jump to bb64
bb64:
  LA s1, width
  LW s1, 0(s1)
  SLTI s1, s1, 1
  XORI s1, s1, 1
  BNE s1, zero, bb68
  # implict jump to bb65
bb65:
  # implict jump to bb66
bb66:
  CALL getch
  ADDIW s2, s2, 1
  LA s3, height
  LW s3, 0(s3)
  SLT s3, s3, s2
  XORI s3, s3, 1
  BNE s3, zero, bb67
  JAL zero, bb1
bb67:
  JAL zero, bb64
bb68:
  ADDI s0, zero, 2000
  MULW s3, s2, s0
  ADDI s1, zero, 1
  # implict jump to bb69
bb69:
  CALL getch
  ADD s0, a0, zero
  XORI s4, s0, 35
  SLTIU s4, s4, 1
  SLLIW s5, s1, 2
  BNE s4, zero, bb74
  # implict jump to bb70
bb70:
  LA s4, sheet1
  ADD s4, s4, s3
  ADD s4, s4, s5
  SW zero, 0(s4)
  # implict jump to bb71
bb71:
  ADDIW s1, s1, 1
  LA s4, width
  LW s4, 0(s4)
  SLT s4, s4, s1
  XORI s4, s4, 1
  BNE s4, zero, bb73
  # implict jump to bb72
bb72:
  JAL zero, bb66
bb73:
  JAL zero, bb69
bb74:
  LA s4, sheet1
  ADD s4, s4, s3
  ADD s4, s4, s5
  ADDI s5, zero, 1
  SW s5, 0(s4)
  JAL zero, bb71
