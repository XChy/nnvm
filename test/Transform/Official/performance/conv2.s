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
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADD t1, a0, zero
  ADD t2, a1, zero
  ADD a0, a2, zero
  SLTIU t0, t1, 1
  BNE t0, zero, bb39
  # implict jump to bb1
bb1:
  XORI t0, t1, 1
  SLTIU t0, t0, 1
  BNE t0, zero, bb31
  # implict jump to bb2
bb2:
  XORI t0, t1, 2
  SLTIU t0, t0, 1
  BNE t0, zero, bb28
  # implict jump to bb3
bb3:
  XORI t0, t1, 3
  SLTIU t0, t0, 1
  BNE t0, zero, bb17
  # implict jump to bb4
bb4:
  XORI t0, t1, 4
  SLTIU t0, t0, 1
  BNE t0, zero, bb6
  # implict jump to bb5
bb5:
  ADD a0, zero, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb6:
  ADD t0, zero, zero
  ADDI t1, zero, 1
  # implict jump to bb7
bb7:
  ADD a2, t1, zero
  ADD a1, t0, zero
  DIVW t1, t2, a2
  ADDI t0, zero, 2
  REMW t0, t1, t0
  XORI t0, t0, 1
  SLTIU t0, t0, 1
  BNE t0, zero, bb16
  # implict jump to bb8
bb8:
  ADD t0, zero, zero
  # implict jump to bb9
bb9:
  BNE t0, zero, bb15
  # implict jump to bb10
bb10:
  SLLIW t0, a1, 1
  # implict jump to bb11
bb11:
  ADD a1, t0, zero
  SLLIW t1, a2, 1
  LUI t0, 262144
  ADDIW t0, t0, 0
  SLT t0, t1, t0
  BNE t0, zero, bb14
  # implict jump to bb12
bb12:
  # implict jump to bb13
bb13:
  ADD a0, a1, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb14:
  ADD t0, a1, zero
  JAL zero, bb7
bb15:
  SLLIW t0, a1, 1
  ADDIW t0, t0, 1
  JAL zero, bb11
bb16:
  DIVW t1, a0, a2
  ADDI t0, zero, 2
  REMW t0, t1, t0
  XORI t0, t0, 1
  SLTIU t0, t0, 1
  JAL zero, bb9
bb17:
  ADD t1, zero, zero
  ADDI t0, zero, 1
  # implict jump to bb18
bb18:
  ADD a1, t0, zero
  ADD a2, t1, zero
  DIVW t1, t2, a1
  ADDI t0, zero, 2
  REMW t0, t1, t0
  XORI t0, t0, 1
  SLTIU t0, t0, 1
  BNE t0, zero, bb27
  # implict jump to bb19
bb19:
  DIVW t1, a0, a1
  ADDI t0, zero, 2
  REMW t0, t1, t0
  XORI t0, t0, 1
  SLTIU t0, t0, 1
  # implict jump to bb20
bb20:
  BNE t0, zero, bb26
  # implict jump to bb21
bb21:
  SLLIW t0, a2, 1
  # implict jump to bb22
bb22:
  ADD t1, t0, zero
  SLLIW a1, a1, 1
  LUI t0, 262144
  ADDIW t0, t0, 0
  SLT t0, a1, t0
  BNE t0, zero, bb25
  # implict jump to bb23
bb23:
  # implict jump to bb24
bb24:
  ADD a0, t1, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb25:
  ADD t0, a1, zero
  JAL zero, bb18
bb26:
  SLLIW t0, a2, 1
  ADDIW t0, t0, 1
  JAL zero, bb22
bb27:
  ADDI t0, zero, 1
  JAL zero, bb20
bb28:
  BLT a0, t2, bb30
  # implict jump to bb29
bb29:
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb30:
  ADD a0, t2, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb31:
  ADD t1, zero, zero
  ADDI t0, zero, 1
  # implict jump to bb32
bb32:
  ADD a3, t0, zero
  ADD a1, t1, zero
  DIVW t1, t2, a3
  ADDI t0, zero, 2
  REMW t1, t1, t0
  DIVW a2, a0, a3
  ADDI t0, zero, 2
  REMW t0, a2, t0
  XOR t0, t1, t0
  SLTIU t0, t0, 1
  BNE t0, zero, bb38
  # implict jump to bb33
bb33:
  SLLIW t0, a1, 1
  ADDIW t0, t0, 1
  # implict jump to bb34
bb34:
  ADD t1, t0, zero
  SLLIW a1, a3, 1
  LUI t0, 262144
  ADDIW t0, t0, 0
  SLT t0, a1, t0
  BNE t0, zero, bb37
  # implict jump to bb35
bb35:
  # implict jump to bb36
bb36:
  ADD a0, t1, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb37:
  ADD t0, a1, zero
  JAL zero, bb32
bb38:
  SLLIW t0, a1, 1
  JAL zero, bb34
bb39:
  ADDW t1, t2, a0
  LUI t0, 262144
  ADDIW t0, t0, 0
  SLT t0, t0, t1
  BNE t0, zero, bb48
  # implict jump to bb40
bb40:
  ADD t0, t1, zero
  # implict jump to bb41
bb41:
  BLT t0, zero, bb44
  # implict jump to bb42
bb42:
  # implict jump to bb43
bb43:
  ADD a0, t0, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb44:
  # implict jump to bb45
bb45:
  ADD t1, t0, zero
  LUI t0, 262144
  ADDIW t0, t0, 0
  ADDW t0, t1, t0
  BLT t0, zero, bb47
  # implict jump to bb46
bb46:
  JAL zero, bb43
bb47:
  JAL zero, bb45
bb48:
  ADD t0, t1, zero
  # implict jump to bb49
bb49:
  ADD t1, t0, zero
  LUI t0, 262144
  ADDIW t0, t0, 0
  SUBW t1, t1, t0
  LUI t0, 262144
  ADDIW t0, t0, 0
  SLT t0, t0, t1
  BNE t0, zero, bb51
  # implict jump to bb50
bb50:
  ADD t0, t1, zero
  JAL zero, bb41
bb51:
  ADD t0, t1, zero
  JAL zero, bb49
main:
  ADDI sp, sp, -112
  SD s2, 8(sp)
  SD s3, 16(sp)
  SD s4, 24(sp)
  SD s5, 32(sp)
  SD s6, 40(sp)
  SD s7, 48(sp)
  SD s8, 56(sp)
  SD s9, 64(sp)
  SD s10, 72(sp)
  SD ra, 80(sp)
  SD s0, 88(sp)
  SD s1, 96(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s2, a0, zero
  CALL getint
  ADD s6, a0, zero
  LA a0, a
  CALL getarray
  LA a0, kernelid
  CALL getarray
  ADD s7, a0, zero
  ADDI a0, zero, 109
  CALL _sysy_starttime
  BLT zero, s7, bb54
  # implict jump to bb53
bb53:
  ADDI a0, zero, 116
  CALL _sysy_stoptime
  MULW a0, s2, s6
  LA a1, a
  CALL putarray
  ADD a0, zero, zero
  LD s2, 8(sp)
  LD s3, 16(sp)
  LD s4, 24(sp)
  LD s5, 32(sp)
  LD s6, 40(sp)
  LD s7, 48(sp)
  LD s8, 56(sp)
  LD s9, 64(sp)
  LD s10, 72(sp)
  LD ra, 80(sp)
  LD s0, 88(sp)
  LD s1, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb54:
  SRAIW a0, s0, 31
  SRLIW a0, a0, 31
  ADD a0, s0, a0
  SRAIW s9, a0, 1
  ADD a0, zero, zero
  # implict jump to bb55
bb55:
  ADD s5, a0, zero
  SLLIW a1, s5, 2
  LA a0, kernelid
  ADD a0, a0, a1
  LW s1, 0(a0)
  ADD a0, zero, zero
  # implict jump to bb56
bb56:
  ADD s10, a0, zero
  SUBW a0, s10, s9
  SW a0, 4(sp)
  ADD a0, zero, zero
  # implict jump to bb57
bb57:
  ADD s4, a0, zero
  SUBW s3, s4, s9
  ADD a1, zero, zero
  LW a0, 4(sp)
  # implict jump to bb58
bb58:
  ADD s8, a0, zero
  ADD a0, a1, zero
  ADD a1, a0, zero
  ADD a0, s3, zero
  # implict jump to bb59
bb59:
  ADD s0, a0, zero
  BLT s8, zero, bb84
  # implict jump to bb60
bb60:
  SLT a0, s0, zero
  # implict jump to bb61
bb61:
  BNE a0, zero, bb83
  # implict jump to bb62
bb62:
  SLT a0, s8, s2
  XORI a0, a0, 1
  # implict jump to bb63
bb63:
  BNE a0, zero, bb82
  # implict jump to bb64
bb64:
  SLT a0, s0, s6
  XORI a0, a0, 1
  # implict jump to bb65
bb65:
  BNE a0, zero, bb81
  # implict jump to bb66
bb66:
  MULW a0, s8, s6
  ADDW a0, a0, s0
  SLLIW a2, a0, 2
  LA a0, a
  ADD a0, a0, a2
  LW a0, 0(a0)
  # implict jump to bb67
bb67:
  ADD a2, a0, zero
  ADD a0, s1, zero
  CALL reduce
  SW a0, 0(sp)
  ADDIW s0, s0, 1
  ADDW a0, s4, s9
  SLT a0, s0, a0
  XORI a0, a0, 1
  BNE a0, zero, bb69
  # implict jump to bb68
bb68:
  LW a0, 0(sp)
  ADD a1, a0, zero
  ADD a0, s0, zero
  JAL zero, bb59
bb69:
  ADDIW s0, s8, 1
  ADDW a0, s10, s9
  SLT a0, s0, a0
  XORI a0, a0, 1
  BNE a0, zero, bb71
  # implict jump to bb70
bb70:
  LW a0, 0(sp)
  ADD a1, a0, zero
  ADD a0, s0, zero
  JAL zero, bb58
bb71:
  MULW a0, s10, s6
  ADDW a0, a0, s4
  SLLIW s0, a0, 2
  LA a0, b
  ADD s0, a0, s0
  LW a0, 0(sp)
  SW a0, 0(s0)
  ADDIW s0, s4, 1
  SLT a0, s0, s6
  XORI a0, a0, 1
  BNE a0, zero, bb73
  # implict jump to bb72
bb72:
  ADD a0, s0, zero
  JAL zero, bb57
bb73:
  ADDIW s0, s10, 1
  SLT a0, s0, s2
  XORI a0, a0, 1
  BNE a0, zero, bb75
  # implict jump to bb74
bb74:
  ADD a0, s0, zero
  JAL zero, bb56
bb75:
  MULW s0, s2, s6
  BLT zero, s0, bb78
  # implict jump to bb76
bb76:
  ADDIW a0, s5, 1
  BLT a0, s7, bb77
  JAL zero, bb53
bb77:
  JAL zero, bb55
bb78:
  ADD a0, zero, zero
  # implict jump to bb79
bb79:
  ADD s4, a0, zero
  SLLIW s3, s4, 2
  LA a0, a
  ADD s1, a0, s3
  LA a0, b
  ADD a0, a0, s3
  LW a0, 0(a0)
  SW a0, 0(s1)
  ADDIW a0, s4, 1
  BLT a0, s0, bb80
  JAL zero, bb76
bb80:
  JAL zero, bb79
bb81:
  ADD a0, zero, zero
  JAL zero, bb67
bb82:
  ADDI a0, zero, 1
  JAL zero, bb65
bb83:
  ADDI a0, zero, 1
  JAL zero, bb63
bb84:
  ADDI a0, zero, 1
  JAL zero, bb61
