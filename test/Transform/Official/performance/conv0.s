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
  SLTIU t0, t1, 1
  BNE t0, zero, bb36
  # implict jump to bb1
bb1:
  XORI t0, t1, 1
  SLTIU t0, t0, 1
  BNE t0, zero, bb29
  # implict jump to bb2
bb2:
  XORI t0, t1, 2
  SLTIU t0, t0, 1
  BNE t0, zero, bb26
  # implict jump to bb3
bb3:
  XORI t0, t1, 3
  SLTIU t0, t0, 1
  BNE t0, zero, bb16
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
  DIVW t2, a1, t1
  SLLI a0, t2, 1
  SRLI a0, a0, 63
  ADD a0, t2, a0
  ANDI a0, a0, -2
  SUBW t2, t2, a0
  XORI t2, t2, 1
  SLTIU t2, t2, 1
  BNE t2, zero, bb15
  # implict jump to bb8
bb8:
  ADD t2, zero, zero
  # implict jump to bb9
bb9:
  BNE t2, zero, bb14
  # implict jump to bb10
bb10:
  SLLIW t0, t0, 1
  # implict jump to bb11
bb11:
  SLLIW t1, t1, 1
  LUI t2, 262144
  ADDIW t2, t2, 0
  SLT t2, t1, t2
  BNE t2, zero, bb13
  # implict jump to bb12
bb12:
  ADD a0, t0, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb13:
  JAL zero, bb7
bb14:
  SLLIW t0, t0, 1
  ADDIW t0, t0, 1
  JAL zero, bb11
bb15:
  DIVW t2, a2, t1
  SLLI a0, t2, 1
  SRLI a0, a0, 63
  ADD a0, t2, a0
  ANDI a0, a0, -2
  SUBW t2, t2, a0
  XORI t2, t2, 1
  SLTIU t2, t2, 1
  JAL zero, bb9
bb16:
  ADD t0, zero, zero
  ADDI t1, zero, 1
  # implict jump to bb17
bb17:
  DIVW t2, a1, t1
  SLLI a0, t2, 1
  SRLI a0, a0, 63
  ADD a0, t2, a0
  ANDI a0, a0, -2
  SUBW t2, t2, a0
  XORI t2, t2, 1
  SLTIU t2, t2, 1
  BNE t2, zero, bb25
  # implict jump to bb18
bb18:
  DIVW t2, a2, t1
  SLLI a0, t2, 1
  SRLI a0, a0, 63
  ADD a0, t2, a0
  ANDI a0, a0, -2
  SUBW t2, t2, a0
  XORI t2, t2, 1
  SLTIU t2, t2, 1
  # implict jump to bb19
bb19:
  BNE t2, zero, bb24
  # implict jump to bb20
bb20:
  SLLIW t0, t0, 1
  # implict jump to bb21
bb21:
  SLLIW t1, t1, 1
  LUI t2, 262144
  ADDIW t2, t2, 0
  SLT t2, t1, t2
  BNE t2, zero, bb23
  # implict jump to bb22
bb22:
  ADD a0, t0, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb23:
  JAL zero, bb17
bb24:
  SLLIW t0, t0, 1
  ADDIW t0, t0, 1
  JAL zero, bb21
bb25:
  ADDI t2, zero, 1
  JAL zero, bb19
bb26:
  BLT a2, a1, bb28
  # implict jump to bb27
bb27:
  ADD a0, a2, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb28:
  ADD a0, a1, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb29:
  ADD t0, zero, zero
  ADDI t1, zero, 1
  # implict jump to bb30
bb30:
  DIVW t2, a1, t1
  SLLI a0, t2, 1
  SRLI a0, a0, 63
  ADD a0, t2, a0
  ANDI a0, a0, -2
  SUBW t2, t2, a0
  DIVW a0, a2, t1
  SLLI a3, a0, 1
  SRLI a3, a3, 63
  ADD a3, a0, a3
  ANDI a3, a3, -2
  SUBW a0, a0, a3
  XOR t2, t2, a0
  SLTIU t2, t2, 1
  BNE t2, zero, bb35
  # implict jump to bb31
bb31:
  SLLIW t0, t0, 1
  ADDIW t0, t0, 1
  # implict jump to bb32
bb32:
  SLLIW t1, t1, 1
  LUI t2, 262144
  ADDIW t2, t2, 0
  SLT t2, t1, t2
  BNE t2, zero, bb34
  # implict jump to bb33
bb33:
  ADD a0, t0, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb34:
  JAL zero, bb30
bb35:
  SLLIW t0, t0, 1
  JAL zero, bb32
bb36:
  ADDW t0, a1, a2
  LUI t1, 262144
  ADDIW t1, t1, 0
  SLT t1, t1, t0
  BNE t1, zero, bb45
  # implict jump to bb37
bb37:
  # implict jump to bb38
bb38:
  BLT t0, zero, bb41
  # implict jump to bb39
bb39:
  # implict jump to bb40
bb40:
  ADD a0, t0, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb41:
  # implict jump to bb42
bb42:
  LUI t1, 262144
  ADDIW t1, t1, 0
  ADDW t0, t0, t1
  BLT t0, zero, bb44
  # implict jump to bb43
bb43:
  JAL zero, bb40
bb44:
  JAL zero, bb42
bb45:
  # implict jump to bb46
bb46:
  LUI t1, 262144
  ADDIW t1, t1, 0
  SUBW t0, t0, t1
  LUI t1, 262144
  ADDIW t1, t1, 0
  SLT t1, t1, t0
  BNE t1, zero, bb48
  # implict jump to bb47
bb47:
  JAL zero, bb38
bb48:
  JAL zero, bb46
main:
  ADDI sp, sp, -128
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  SD s10, 104(sp)
  SD s11, 112(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s1, a0, zero
  CALL getint
  ADD s2, a0, zero
  LA a0, a
  CALL getarray
  LA a0, kernelid
  CALL getarray
  ADD s3, a0, zero
  ADDI a0, zero, 109
  CALL _sysy_starttime
  BLT zero, s3, bb51
  # implict jump to bb50
bb50:
  ADDI a0, zero, 116
  CALL _sysy_stoptime
  MULW a0, s1, s2
  LA a1, a
  CALL putarray
  ADD a0, zero, zero
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  LD s10, 104(sp)
  LD s11, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb51:
  SRAIW a0, s0, 31
  SRLIW a0, a0, 31
  ADD a0, s0, a0
  SRAIW s0, a0, 1
  ADD a0, zero, zero
  # implict jump to bb52
bb52:
  ADD s4, a0, zero
  SLLIW a0, s4, 2
  LA a1, kernelid
  ADD a0, a1, a0
  LW s5, 0(a0)
  ADD a0, zero, zero
  # implict jump to bb53
bb53:
  ADD s6, a0, zero
  SUBW s7, s6, s0
  ADD a0, zero, zero
  # implict jump to bb54
bb54:
  ADD s8, a0, zero
  SUBW a0, s8, s0
  SW a0, 8(sp)
  ADD a0, zero, zero
  ADD a1, s7, zero
  # implict jump to bb55
bb55:
  ADD s10, a1, zero
  LW a1, 8(sp)
  # implict jump to bb56
bb56:
  ADD s11, a1, zero
  ADD a1, a0, zero
  BLT s10, zero, bb81
  # implict jump to bb57
bb57:
  SLT a0, s11, zero
  # implict jump to bb58
bb58:
  BNE a0, zero, bb80
  # implict jump to bb59
bb59:
  SLT a0, s10, s1
  XORI a0, a0, 1
  # implict jump to bb60
bb60:
  BNE a0, zero, bb79
  # implict jump to bb61
bb61:
  SLT a0, s11, s2
  XORI a0, a0, 1
  # implict jump to bb62
bb62:
  BNE a0, zero, bb78
  # implict jump to bb63
bb63:
  MULW a0, s10, s2
  ADDW a0, a0, s11
  SLLIW a0, a0, 2
  LA a2, a
  ADD a0, a2, a0
  LW a0, 0(a0)
  # implict jump to bb64
bb64:
  ADD a2, a0, zero
  ADD a0, s5, zero
  CALL reduce
  ADDIW s11, s11, 1
  ADDW s9, s8, s0
  SW s9, 4(sp)
  LW s9, 4(sp)
  SLT s9, s11, s9
  SB s9, 0(sp)
  LB s9, 0(sp)
  XORI s9, s9, 1
  SB s9, 1(sp)
  LB s9, 1(sp)
  BNE s9, zero, bb66
  # implict jump to bb65
bb65:
  ADD a1, s11, zero
  JAL zero, bb56
bb66:
  ADDIW s10, s10, 1
  ADDW s11, s6, s0
  SLT s11, s10, s11
  XORI s11, s11, 1
  BNE s11, zero, bb68
  # implict jump to bb67
bb67:
  ADD a1, s10, zero
  JAL zero, bb55
bb68:
  MULW s9, s6, s2
  ADDW s9, s9, s8
  SLLIW s9, s9, 2
  LA s10, b
  ADD s9, s10, s9
  SW a0, 0(s9)
  ADDIW a0, s8, 1
  SLT s8, a0, s2
  XORI s8, s8, 1
  BNE s8, zero, bb70
  # implict jump to bb69
bb69:
  JAL zero, bb54
bb70:
  ADDIW a0, s6, 1
  SLT s6, a0, s1
  XORI s6, s6, 1
  BNE s6, zero, bb72
  # implict jump to bb71
bb71:
  JAL zero, bb53
bb72:
  MULW a0, s1, s2
  BLT zero, a0, bb75
  # implict jump to bb73
bb73:
  ADDIW a0, s4, 1
  BLT a0, s3, bb74
  JAL zero, bb50
bb74:
  JAL zero, bb52
bb75:
  ADD s5, zero, zero
  # implict jump to bb76
bb76:
  SLLIW s6, s5, 2
  LA s7, a
  ADD s7, s7, s6
  LA s8, b
  ADD s6, s8, s6
  LW s6, 0(s6)
  SW s6, 0(s7)
  ADDIW s5, s5, 1
  BLT s5, a0, bb77
  JAL zero, bb73
bb77:
  JAL zero, bb76
bb78:
  ADD a0, zero, zero
  JAL zero, bb64
bb79:
  ADDI a0, zero, 1
  JAL zero, bb62
bb80:
  ADDI a0, zero, 1
  JAL zero, bb60
bb81:
  ADDI a0, zero, 1
  JAL zero, bb58
