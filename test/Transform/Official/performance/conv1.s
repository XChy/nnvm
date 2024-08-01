.global reduce
.global main
.section .bss
kernelid:
.space 40000
b:
.space 40000000
a:
.space 40000000
.section .data



.section .text
reduce:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  ADD s0, a0, zero
  SLTIU s1, s0, 1
  BNE s1, zero, bb39
  # implict jump to bb1
bb1:
  XORI s1, s0, 1
  SLTIU s1, s1, 1
  BNE s1, zero, bb31
  # implict jump to bb2
bb2:
  XORI s1, s0, 2
  SLTIU s1, s1, 1
  BNE s1, zero, bb28
  # implict jump to bb3
bb3:
  XORI s1, s0, 3
  SLTIU s1, s1, 1
  BNE s1, zero, bb17
  # implict jump to bb4
bb4:
  XORI s0, s0, 4
  SLTIU s0, s0, 1
  BNE s0, zero, bb6
  # implict jump to bb5
bb5:
  ADD a0, zero, zero
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
bb6:
  ADD s0, zero, zero
  ADDI s1, zero, 1
  # implict jump to bb7
bb7:
  ADD s2, s1, zero
  ADD s3, s0, zero
  DIVW s4, a1, s2
  ADDI s5, zero, 2
  REMW s4, s4, s5
  XORI s4, s4, 1
  SLTIU s4, s4, 1
  BNE s4, zero, bb16
  # implict jump to bb8
bb8:
  ADD s4, zero, zero
  # implict jump to bb9
bb9:
  BNE s4, zero, bb15
  # implict jump to bb10
bb10:
  SLLIW s4, s3, 1
  # implict jump to bb11
bb11:
  SLLIW s2, s2, 1
  LUI s3, 262144
  ADDIW s3, s3, 0
  SLT s3, s2, s3
  BNE s3, zero, bb14
  # implict jump to bb12
bb12:
  # implict jump to bb13
bb13:
  ADD a0, s4, zero
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
bb14:
  ADD s0, s4, zero
  ADD s1, s2, zero
  JAL zero, bb7
bb15:
  SLLIW s3, s3, 1
  ADDIW s3, s3, 1
  ADD s4, s3, zero
  JAL zero, bb11
bb16:
  DIVW s5, a2, s2
  ADDI s6, zero, 2
  REMW s5, s5, s6
  XORI s5, s5, 1
  SLTIU s5, s5, 1
  ADD s4, s5, zero
  JAL zero, bb9
bb17:
  ADD s0, zero, zero
  ADDI s1, zero, 1
  # implict jump to bb18
bb18:
  ADD s2, s1, zero
  ADD s3, s0, zero
  DIVW s4, a1, s2
  ADDI s5, zero, 2
  REMW s4, s4, s5
  XORI s4, s4, 1
  SLTIU s4, s4, 1
  BNE s4, zero, bb27
  # implict jump to bb19
bb19:
  DIVW s4, a2, s2
  ADDI s5, zero, 2
  REMW s4, s4, s5
  XORI s4, s4, 1
  SLTIU s4, s4, 1
  # implict jump to bb20
bb20:
  BNE s4, zero, bb26
  # implict jump to bb21
bb21:
  SLLIW s4, s3, 1
  # implict jump to bb22
bb22:
  SLLIW s2, s2, 1
  LUI s3, 262144
  ADDIW s3, s3, 0
  SLT s3, s2, s3
  BNE s3, zero, bb25
  # implict jump to bb23
bb23:
  # implict jump to bb24
bb24:
  ADD a0, s4, zero
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
bb25:
  ADD s0, s4, zero
  ADD s1, s2, zero
  JAL zero, bb18
bb26:
  SLLIW s3, s3, 1
  ADDIW s3, s3, 1
  ADD s4, s3, zero
  JAL zero, bb22
bb27:
  ADDI s4, zero, 1
  JAL zero, bb20
bb28:
  BLT a2, a1, bb30
  # implict jump to bb29
bb29:
  ADD a0, a2, zero
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
bb30:
  ADD a0, a1, zero
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
bb31:
  ADDI s0, zero, 1
  ADD s1, zero, zero
  # implict jump to bb32
bb32:
  ADD s2, s1, zero
  ADD s3, s0, zero
  DIVW s4, a1, s3
  ADDI s5, zero, 2
  REMW s4, s4, s5
  DIVW s5, a2, s3
  ADDI s6, zero, 2
  REMW s5, s5, s6
  XOR s4, s4, s5
  SLTIU s4, s4, 1
  BNE s4, zero, bb38
  # implict jump to bb33
bb33:
  SLLIW s4, s2, 1
  ADDIW s4, s4, 1
  # implict jump to bb34
bb34:
  SLLIW s2, s3, 1
  LUI s3, 262144
  ADDIW s3, s3, 0
  SLT s3, s2, s3
  BNE s3, zero, bb37
  # implict jump to bb35
bb35:
  # implict jump to bb36
bb36:
  ADD a0, s4, zero
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
bb37:
  ADD s0, s2, zero
  ADD s1, s4, zero
  JAL zero, bb32
bb38:
  SLLIW s2, s2, 1
  ADD s4, s2, zero
  JAL zero, bb34
bb39:
  ADDW s0, a1, a2
  LUI s1, 262144
  ADDIW s1, s1, 0
  SLT s1, s1, s0
  BNE s1, zero, bb48
  # implict jump to bb40
bb40:
  ADD s1, s0, zero
  # implict jump to bb41
bb41:
  BLT s1, zero, bb44
  # implict jump to bb42
bb42:
  ADD s3, s1, zero
  # implict jump to bb43
bb43:
  ADD a0, s3, zero
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
bb44:
  # implict jump to bb45
bb45:
  ADD s4, s1, zero
  LUI s5, 262144
  ADDIW s5, s5, 0
  ADDW s4, s4, s5
  BLT s4, zero, bb47
  # implict jump to bb46
bb46:
  ADD s3, s4, zero
  JAL zero, bb43
bb47:
  ADD s1, s4, zero
  JAL zero, bb45
bb48:
  # implict jump to bb49
bb49:
  ADD s2, s0, zero
  LUI s3, 262144
  ADDIW s3, s3, 0
  SUBW s2, s2, s3
  LUI s3, 262144
  ADDIW s3, s3, 0
  SLT s3, s3, s2
  BNE s3, zero, bb51
  # implict jump to bb50
bb50:
  ADD s1, s2, zero
  JAL zero, bb41
bb51:
  ADD s0, s2, zero
  JAL zero, bb49
main:
  ADDI sp, sp, -144
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD s6, 96(sp)
  SD s7, 104(sp)
  SD s8, 112(sp)
  SD s9, 120(sp)
  SD s10, 128(sp)
  SD s11, 136(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD t4, a0, zero
  SW t4, 20(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 36(sp)
  LA s3, a
  ADD a0, s3, zero
  CALL getarray
  LA s3, kernelid
  ADD a0, s3, zero
  CALL getarray
  ADD t4, a0, zero
  SW t4, 32(sp)
  ADDI a0, zero, 109
  CALL _sysy_starttime
  LW t4, 32(sp)
  BLT zero, t4, bb54
  # implict jump to bb53
bb53:
  ADDI a0, zero, 116
  CALL _sysy_stoptime
  LW t4, 20(sp)
  LW t3, 36(sp)
  MULW s4, t4, t3
  ADD a0, s4, zero
  LA s4, a
  ADD a1, s4, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  LD s7, 104(sp)
  LD s8, 112(sp)
  LD s9, 120(sp)
  LD s10, 128(sp)
  LD s11, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb54:
  SRAIW s4, s0, 31
  SRLIW s4, s4, 31
  ADD s0, s0, s4
  SRAIW t4, s0, 1
  SW t4, 28(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  # implict jump to bb55
bb55:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t4, 24(sp)
  SLLIW s6, t4, 2
  LA s7, kernelid
  ADD s6, s7, s6
  LW t4, 0(s6)
  SW t4, 12(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb56
bb56:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t3, 4(sp)
  LW t4, 28(sp)
  SUBW t4, t3, t4
  SW t4, 0(sp)
  ADD s10, zero, zero
  # implict jump to bb57
bb57:
  ADD s11, s10, zero
  LW t4, 28(sp)
  SUBW s5, s11, t4
  ADD s0, zero, zero
  LW t4, 0(sp)
  ADD s3, t4, zero
  # implict jump to bb58
bb58:
  ADD s2, s3, zero
  ADD s1, s0, zero
  ADD s4, s5, zero
  # implict jump to bb59
bb59:
  ADD s6, s4, zero
  ADD s7, s1, zero
  BLT s2, zero, bb84
  # implict jump to bb60
bb60:
  SLT s8, s6, zero
  # implict jump to bb61
bb61:
  BNE s8, zero, bb83
  # implict jump to bb62
bb62:
  LW t4, 20(sp)
  SLT s8, s2, t4
  XORI s8, s8, 1
  # implict jump to bb63
bb63:
  BNE s8, zero, bb82
  # implict jump to bb64
bb64:
  LW t4, 36(sp)
  SLT s8, s6, t4
  XORI s8, s8, 1
  # implict jump to bb65
bb65:
  BNE s8, zero, bb81
  # implict jump to bb66
bb66:
  LW t4, 36(sp)
  MULW s8, s2, t4
  ADDW s8, s8, s6
  SLLIW s8, s8, 2
  LA s9, a
  ADD s8, s9, s8
  LW s8, 0(s8)
  # implict jump to bb67
bb67:
  LW t4, 12(sp)
  ADD a0, t4, zero
  ADD a1, s7, zero
  ADD a2, s8, zero
  CALL reduce
  ADD s7, a0, zero
  ADDIW s6, s6, 1
  LW t4, 28(sp)
  ADDW s8, s11, t4
  SLT s8, s6, s8
  XORI s8, s8, 1
  BNE s8, zero, bb69
  # implict jump to bb68
bb68:
  ADD s1, s7, zero
  ADD s4, s6, zero
  JAL zero, bb59
bb69:
  ADDIW s1, s2, 1
  LW t4, 4(sp)
  LW t3, 28(sp)
  ADDW s2, t4, t3
  SLT s2, s1, s2
  XORI s2, s2, 1
  BNE s2, zero, bb71
  # implict jump to bb70
bb70:
  ADD s0, s7, zero
  ADD s3, s1, zero
  JAL zero, bb58
bb71:
  LW t4, 4(sp)
  LW t3, 36(sp)
  MULW s0, t4, t3
  ADDW s0, s0, s11
  SLLIW s0, s0, 2
  LA s1, b
  ADD s0, s1, s0
  SW s7, 0(s0)
  ADDIW s0, s11, 1
  LW t4, 36(sp)
  SLT s1, s0, t4
  XORI s1, s1, 1
  BNE s1, zero, bb73
  # implict jump to bb72
bb72:
  ADD s10, s0, zero
  JAL zero, bb57
bb73:
  LW t4, 4(sp)
  ADDIW s0, t4, 1
  LW t4, 20(sp)
  SLT s1, s0, t4
  XORI s1, s1, 1
  BNE s1, zero, bb75
  # implict jump to bb74
bb74:
  ADD t4, s0, zero
  SW t4, 8(sp)
  JAL zero, bb56
bb75:
  LW t4, 20(sp)
  LW t3, 36(sp)
  MULW s0, t4, t3
  BLT zero, s0, bb78
  # implict jump to bb76
bb76:
  LW t4, 24(sp)
  ADDIW s3, t4, 1
  LW t4, 32(sp)
  BLT s3, t4, bb77
  JAL zero, bb53
bb77:
  ADD t4, s3, zero
  SW t4, 16(sp)
  JAL zero, bb55
bb78:
  ADD s1, zero, zero
  # implict jump to bb79
bb79:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  LA s4, a
  ADD s4, s4, s3
  LA s5, b
  ADD s3, s5, s3
  LW s3, 0(s3)
  SW s3, 0(s4)
  ADDIW s2, s2, 1
  BLT s2, s0, bb80
  JAL zero, bb76
bb80:
  ADD s1, s2, zero
  JAL zero, bb79
bb81:
  ADD s8, zero, zero
  JAL zero, bb67
bb82:
  ADDI s8, zero, 1
  JAL zero, bb65
bb83:
  ADDI s8, zero, 1
  JAL zero, bb63
bb84:
  ADDI s8, zero, 1
  JAL zero, bb61
