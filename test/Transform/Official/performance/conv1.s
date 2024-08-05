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
  ADD t0, a0, zero
  SLTIU t1, t0, 1
  BNE t1, zero, bb36
  # implict jump to bb1
bb1:
  XORI t1, t0, 1
  SLTIU t1, t1, 1
  BNE t1, zero, bb29
  # implict jump to bb2
bb2:
  XORI t1, t0, 2
  SLTIU t1, t1, 1
  BNE t1, zero, bb26
  # implict jump to bb3
bb3:
  XORI t1, t0, 3
  SLTIU t1, t1, 1
  BNE t1, zero, bb16
  # implict jump to bb4
bb4:
  XORI t0, t0, 4
  SLTIU t0, t0, 1
  BNE t0, zero, bb6
  # implict jump to bb5
bb5:
  ADD a0, zero, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb6:
  ADD a0, zero, zero
  ADDI t1, zero, 1
  # implict jump to bb7
bb7:
  DIVW t0, a1, t1
  SLLI t2, t0, 1
  SRLI t2, t2, 63
  ADD t2, t0, t2
  ANDI t2, t2, -2
  SUBW t0, t0, t2
  XORI t0, t0, 1
  SLTIU t0, t0, 1
  BNE t0, zero, bb15
  # implict jump to bb8
bb8:
  ADD t0, zero, zero
  # implict jump to bb9
bb9:
  BNE t0, zero, bb14
  # implict jump to bb10
bb10:
  SLLIW a0, a0, 1
  # implict jump to bb11
bb11:
  SLLIW t1, t1, 1
  LUI t0, 262144
  ADDIW t0, t0, 0
  SLT t0, t1, t0
  BNE t0, zero, bb13
  # implict jump to bb12
bb12:
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb13:
  JAL zero, bb7
bb14:
  SLLIW t0, a0, 1
  ADDIW a0, t0, 1
  JAL zero, bb11
bb15:
  DIVW t0, a2, t1
  SLLI t2, t0, 1
  SRLI t2, t2, 63
  ADD t2, t0, t2
  ANDI t2, t2, -2
  SUBW t0, t0, t2
  XORI t0, t0, 1
  SLTIU t0, t0, 1
  JAL zero, bb9
bb16:
  ADD a0, zero, zero
  ADDI t1, zero, 1
  # implict jump to bb17
bb17:
  DIVW t0, a1, t1
  SLLI t2, t0, 1
  SRLI t2, t2, 63
  ADD t2, t0, t2
  ANDI t2, t2, -2
  SUBW t0, t0, t2
  XORI t0, t0, 1
  SLTIU t0, t0, 1
  BNE t0, zero, bb25
  # implict jump to bb18
bb18:
  DIVW t0, a2, t1
  SLLI t2, t0, 1
  SRLI t2, t2, 63
  ADD t2, t0, t2
  ANDI t2, t2, -2
  SUBW t0, t0, t2
  XORI t0, t0, 1
  SLTIU t0, t0, 1
  # implict jump to bb19
bb19:
  BNE t0, zero, bb24
  # implict jump to bb20
bb20:
  SLLIW a0, a0, 1
  # implict jump to bb21
bb21:
  SLLIW t1, t1, 1
  LUI t0, 262144
  ADDIW t0, t0, 0
  SLT t0, t1, t0
  BNE t0, zero, bb23
  # implict jump to bb22
bb22:
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb23:
  JAL zero, bb17
bb24:
  SLLIW t0, a0, 1
  ADDIW a0, t0, 1
  JAL zero, bb21
bb25:
  ADDI t0, zero, 1
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
  ADD a0, zero, zero
  ADDI t0, zero, 1
  # implict jump to bb30
bb30:
  DIVW t1, a1, t0
  SLLI t2, t1, 1
  SRLI t2, t2, 63
  ADD t2, t1, t2
  ANDI t2, t2, -2
  SUBW t1, t1, t2
  DIVW t2, a2, t0
  SLLI a3, t2, 1
  SRLI a3, a3, 63
  ADD a3, t2, a3
  ANDI a3, a3, -2
  SUBW t2, t2, a3
  XOR t1, t1, t2
  SLTIU t1, t1, 1
  BNE t1, zero, bb35
  # implict jump to bb31
bb31:
  SLLIW t1, a0, 1
  ADDIW a0, t1, 1
  # implict jump to bb32
bb32:
  SLLIW t0, t0, 1
  LUI t1, 262144
  ADDIW t1, t1, 0
  SLT t1, t0, t1
  BNE t1, zero, bb34
  # implict jump to bb33
bb33:
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb34:
  JAL zero, bb30
bb35:
  SLLIW a0, a0, 1
  JAL zero, bb32
bb36:
  ADDW a0, a1, a2
  LUI t0, 262144
  ADDIW t0, t0, 0
  SLT t0, t0, a0
  BNE t0, zero, bb45
  # implict jump to bb37
bb37:
  # implict jump to bb38
bb38:
  BLT a0, zero, bb41
  # implict jump to bb39
bb39:
  # implict jump to bb40
bb40:
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb41:
  # implict jump to bb42
bb42:
  LUI t0, 262144
  ADDIW t0, t0, 0
  ADDW a0, a0, t0
  BLT a0, zero, bb44
  # implict jump to bb43
bb43:
  JAL zero, bb40
bb44:
  JAL zero, bb42
bb45:
  # implict jump to bb46
bb46:
  LUI t0, 262144
  ADDIW t0, t0, 0
  SUBW a0, a0, t0
  LUI t0, 262144
  ADDIW t0, t0, 0
  SLT t0, t0, a0
  BNE t0, zero, bb48
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
  ADD s11, a0, zero
  CALL getint
  ADD s10, a0, zero
  LA a0, a
  CALL getarray
  LA a0, kernelid
  CALL getarray
  ADD s8, a0, zero
  ADDI a0, zero, 109
  CALL _sysy_starttime
  BLT zero, s8, bb51
  # implict jump to bb50
bb50:
  ADDI a0, zero, 116
  CALL _sysy_stoptime
  MULW a0, s11, s10
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
  SRAIW a0, a0, 1
  SW a0, 4(sp)
  ADD s4, zero, zero
  # implict jump to bb52
bb52:
  SLLIW a0, s4, 2
  LA a1, kernelid
  ADD a0, a1, a0
  LW s5, 0(a0)
  ADD s3, zero, zero
  # implict jump to bb53
bb53:
  LW a0, 4(sp)
  SUBW s7, s3, a0
  ADD s2, zero, zero
  # implict jump to bb54
bb54:
  LW a0, 4(sp)
  SUBW s6, s2, a0
  ADD a0, zero, zero
  ADD s1, s7, zero
  # implict jump to bb55
bb55:
  ADD s0, s6, zero
  # implict jump to bb56
bb56:
  SW a0, 8(sp)
  BLT s1, zero, bb81
  # implict jump to bb57
bb57:
  SLT a0, s0, zero
  # implict jump to bb58
bb58:
  BNE a0, zero, bb80
  # implict jump to bb59
bb59:
  SLT a0, s1, s11
  XORI a0, a0, 1
  # implict jump to bb60
bb60:
  BNE a0, zero, bb79
  # implict jump to bb61
bb61:
  SLT a0, s0, s10
  XORI a0, a0, 1
  # implict jump to bb62
bb62:
  BNE a0, zero, bb78
  # implict jump to bb63
bb63:
  MULW a0, s1, s10
  ADDW a0, a0, s0
  SLLIW a0, a0, 2
  LA a2, a
  ADD a0, a2, a0
  LW a2, 0(a0)
  # implict jump to bb64
bb64:
  ADD a0, s5, zero
  LW a1, 8(sp)
  CALL reduce
  ADDIW s0, s0, 1
  LW s9, 4(sp)
  ADDW s9, s2, s9
  SW s9, 12(sp)
  LW s9, 12(sp)
  SLT s9, s0, s9
  SB s9, 1(sp)
  LB s9, 1(sp)
  XORI s9, s9, 1
  SB s9, 0(sp)
  LB s9, 0(sp)
  BNE s9, zero, bb66
  # implict jump to bb65
bb65:
  JAL zero, bb56
bb66:
  ADDIW s1, s1, 1
  LW s0, 4(sp)
  ADDW s9, s3, s0
  SLT s9, s1, s9
  XORI s9, s9, 1
  BNE s9, zero, bb68
  # implict jump to bb67
bb67:
  JAL zero, bb55
bb68:
  MULW s0, s3, s10
  ADDW s0, s0, s2
  SLLIW s0, s0, 2
  LA s1, b
  ADD s0, s1, s0
  SW a0, 0(s0)
  ADDIW s2, s2, 1
  SLT s0, s2, s10
  XORI s0, s0, 1
  BNE s0, zero, bb70
  # implict jump to bb69
bb69:
  JAL zero, bb54
bb70:
  ADDIW s3, s3, 1
  SLT s0, s3, s11
  XORI s0, s0, 1
  BNE s0, zero, bb72
  # implict jump to bb71
bb71:
  JAL zero, bb53
bb72:
  MULW s0, s11, s10
  BLT zero, s0, bb75
  # implict jump to bb73
bb73:
  ADDIW s4, s4, 1
  BLT s4, s8, bb74
  JAL zero, bb50
bb74:
  JAL zero, bb52
bb75:
  ADD a0, zero, zero
  # implict jump to bb76
bb76:
  SLLIW s1, a0, 2
  LA s2, a
  ADD s2, s2, s1
  LA s3, b
  ADD s1, s3, s1
  LW s1, 0(s1)
  SW s1, 0(s2)
  ADDIW a0, a0, 1
  BLT a0, s0, bb77
  JAL zero, bb73
bb77:
  JAL zero, bb76
bb78:
  ADD a2, zero, zero
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
