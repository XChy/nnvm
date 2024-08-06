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
reduce:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADD t0, a0, zero
  SLTIU t1, t0, 1
  BNE t1, zero, bb36
  # implict jump to bb1
bb1:   # loop depth 0
  XORI t1, t0, 1
  SLTIU t1, t1, 1
  BNE t1, zero, bb29
  # implict jump to bb2
bb2:   # loop depth 0
  XORI t1, t0, 2
  SLTIU t1, t1, 1
  BNE t1, zero, bb26
  # implict jump to bb3
bb3:   # loop depth 0
  XORI t1, t0, 3
  SLTIU t1, t1, 1
  BNE t1, zero, bb16
  # implict jump to bb4
bb4:   # loop depth 0
  XORI t0, t0, 4
  SLTIU t0, t0, 1
  BNE t0, zero, bb6
  # implict jump to bb5
bb5:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb6:   # loop depth 0
  ADD a0, zero, zero
  ADDI t1, zero, 1
  # implict jump to bb7
bb7:   # loop depth 1
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
bb8:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb9
bb9:   # loop depth 1
  SLLIW a0, a0, 1
  BNE t0, zero, bb14
  # implict jump to bb10
bb10:   # loop depth 1
  # implict jump to bb11
bb11:   # loop depth 1
  SLLIW t1, t1, 1
  LUI t0, 262144
  ADDIW t0, t0, 0
  SLT t0, t1, t0
  BNE t0, zero, bb13
  # implict jump to bb12
bb12:   # loop depth 0
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb13:   # loop depth 0
  JAL zero, bb7
bb14:   # loop depth 1
  ADDIW a0, a0, 1
  JAL zero, bb11
bb15:   # loop depth 1
  DIVW t0, a2, t1
  SLLI t2, t0, 1
  SRLI t2, t2, 63
  ADD t2, t0, t2
  ANDI t2, t2, -2
  SUBW t0, t0, t2
  XORI t0, t0, 1
  SLTIU t0, t0, 1
  JAL zero, bb9
bb16:   # loop depth 0
  ADD a0, zero, zero
  ADDI t1, zero, 1
  # implict jump to bb17
bb17:   # loop depth 1
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
bb18:   # loop depth 1
  DIVW t0, a2, t1
  SLLI t2, t0, 1
  SRLI t2, t2, 63
  ADD t2, t0, t2
  ANDI t2, t2, -2
  SUBW t0, t0, t2
  XORI t0, t0, 1
  SLTIU t0, t0, 1
  # implict jump to bb19
bb19:   # loop depth 1
  SLLIW a0, a0, 1
  BNE t0, zero, bb24
  # implict jump to bb20
bb20:   # loop depth 1
  # implict jump to bb21
bb21:   # loop depth 1
  SLLIW t1, t1, 1
  LUI t0, 262144
  ADDIW t0, t0, 0
  SLT t0, t1, t0
  BNE t0, zero, bb23
  # implict jump to bb22
bb22:   # loop depth 0
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb23:   # loop depth 0
  JAL zero, bb17
bb24:   # loop depth 1
  ADDIW a0, a0, 1
  JAL zero, bb21
bb25:   # loop depth 1
  ADDI t0, zero, 1
  JAL zero, bb19
bb26:   # loop depth 0
  BLT a2, a1, bb28
  # implict jump to bb27
bb27:   # loop depth 0
  ADD a0, a2, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb28:   # loop depth 0
  ADD a0, a1, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb29:   # loop depth 0
  ADD a0, zero, zero
  ADDI t0, zero, 1
  # implict jump to bb30
bb30:   # loop depth 1
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
  SLLIW a0, a0, 1
  BNE t1, zero, bb35
  # implict jump to bb31
bb31:   # loop depth 1
  ADDIW a0, a0, 1
  # implict jump to bb32
bb32:   # loop depth 1
  SLLIW t0, t0, 1
  LUI t1, 262144
  ADDIW t1, t1, 0
  SLT t1, t0, t1
  BNE t1, zero, bb34
  # implict jump to bb33
bb33:   # loop depth 0
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb34:   # loop depth 0
  JAL zero, bb30
bb35:   # loop depth 1
  JAL zero, bb32
bb36:   # loop depth 0
  ADDW a0, a1, a2
  LUI t0, 262144
  ADDIW t0, t0, 0
  SLT t0, t0, a0
  BNE t0, zero, bb45
  # implict jump to bb37
bb37:   # loop depth 0
  # implict jump to bb38
bb38:   # loop depth 0
  BLT a0, zero, bb41
  # implict jump to bb39
bb39:   # loop depth 0
  # implict jump to bb40
bb40:   # loop depth 0
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb41:   # loop depth 0
  # implict jump to bb42
bb42:   # loop depth 1
  LUI t0, 262144
  ADDIW t0, t0, 0
  ADDW a0, a0, t0
  BLT a0, zero, bb44
  # implict jump to bb43
bb43:   # loop depth 1433870144
  JAL zero, bb40
bb44:   # loop depth 1433869040
  JAL zero, bb42
bb45:   # loop depth 0
  # implict jump to bb46
bb46:   # loop depth 1
  LUI t0, 262144
  ADDIW t0, t0, 0
  SUBW a0, a0, t0
  LUI t0, 262144
  ADDIW t0, t0, 0
  SLT t0, t0, a0
  BNE t0, zero, bb48
  # implict jump to bb47
bb47:   # loop depth 1433867904
  JAL zero, bb38
bb48:   # loop depth 1433866416
  JAL zero, bb46
main:   # loop depth 0
  ADDI sp, sp, -128
  SD ra, 24(sp)
  SD s0, 32(sp)
  SD s1, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s5, 72(sp)
  SD s6, 80(sp)
  SD s7, 88(sp)
  SD s8, 96(sp)
  SD s9, 104(sp)
  SD s10, 112(sp)
  SD s11, 120(sp)
  CALL getint
  ADD s1, a0, zero
  CALL getint
  ADD s0, a0, zero
  SW s0, 4(sp)
  CALL getint
  ADD s10, a0, zero
  LA a0, a
  CALL getarray
  LA a0, kernelid
  CALL getarray
  SW a0, 16(sp)
  ADDI a0, zero, 109
  CALL _sysy_starttime
  LW a0, 4(sp)
  MULW s9, a0, s10
  LW a0, 16(sp)
  BLT zero, a0, bb51
  # implict jump to bb50
bb50:   # loop depth 0
  ADDI a0, zero, 116
  CALL _sysy_stoptime
  ADD a0, s9, zero
  LA a1, a
  CALL putarray
  ADD a0, zero, zero
  LD ra, 24(sp)
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s5, 72(sp)
  LD s6, 80(sp)
  LD s7, 88(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  LD s10, 112(sp)
  LD s11, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb51:   # loop depth 0
  SRAIW a0, s1, 31
  SRLIW a0, a0, 31
  ADD a0, s1, a0
  SRAIW a0, a0, 1
  SW a0, 8(sp)
  ADD a0, zero, zero
  # implict jump to bb52
bb52:   # loop depth 1
  SW a0, 20(sp)
  LW a0, 20(sp)
  SLLIW a0, a0, 2
  LA a1, kernelid
  ADD a0, a1, a0
  LW s6, 0(a0)
  ADD s5, zero, zero
  # implict jump to bb53
bb53:   # loop depth 2
  LW a0, 8(sp)
  SUBW s8, s5, a0
  ADD s4, zero, zero
  # implict jump to bb54
bb54:   # loop depth 3
  LW a0, 8(sp)
  SUBW s7, s4, a0
  ADD a1, zero, zero
  ADD s3, s8, zero
  # implict jump to bb55
bb55:   # loop depth 4
  ADD s2, s7, zero
  # implict jump to bb56
bb56:   # loop depth 5
  BLT s3, zero, bb81
  # implict jump to bb57
bb57:   # loop depth 5
  SLT a0, s2, zero
  # implict jump to bb58
bb58:   # loop depth 5
  BNE a0, zero, bb80
  # implict jump to bb59
bb59:   # loop depth 5
  LW a0, 4(sp)
  SLT a0, s3, a0
  XORI a0, a0, 1
  # implict jump to bb60
bb60:   # loop depth 5
  BNE a0, zero, bb79
  # implict jump to bb61
bb61:   # loop depth 5
  SLT a0, s2, s10
  XORI a0, a0, 1
  # implict jump to bb62
bb62:   # loop depth 5
  BNE a0, zero, bb78
  # implict jump to bb63
bb63:   # loop depth 5
  MULW a0, s3, s10
  ADDW a0, a0, s2
  SLLIW a0, a0, 2
  LA a2, a
  ADD a0, a2, a0
  LW a2, 0(a0)
  # implict jump to bb64
bb64:   # loop depth 5
  ADD a0, s6, zero
  CALL reduce
  ADDIW s2, s2, 1
  LW s0, 8(sp)
  ADDW s0, s4, s0
  SW s0, 12(sp)
  LW s0, 12(sp)
  SLT s0, s2, s0
  SB s0, 1(sp)
  LB s0, 1(sp)
  XORI s0, s0, 1
  SB s0, 0(sp)
  LB s0, 0(sp)
  BNE s0, zero, bb66
  # implict jump to bb65
bb65:   # loop depth 5
  ADD a1, a0, zero
  JAL zero, bb56
bb66:   # loop depth 4
  ADDIW s3, s3, 1
  LW s0, 8(sp)
  ADDW s11, s5, s0
  SLT s11, s3, s11
  XORI s11, s11, 1
  BNE s11, zero, bb68
  # implict jump to bb67
bb67:   # loop depth 4
  ADD a1, a0, zero
  JAL zero, bb55
bb68:   # loop depth 3
  MULW s2, s5, s10
  ADDW s2, s2, s4
  SLLIW s2, s2, 2
  LA s3, b
  ADD s2, s3, s2
  SW a0, 0(s2)
  ADDIW s4, s4, 1
  SLT s2, s4, s10
  XORI s2, s2, 1
  BNE s2, zero, bb70
  # implict jump to bb69
bb69:   # loop depth 3
  JAL zero, bb54
bb70:   # loop depth 2
  ADDIW s5, s5, 1
  LW a0, 4(sp)
  SLT s2, s5, a0
  XORI s2, s2, 1
  BNE s2, zero, bb72
  # implict jump to bb71
bb71:   # loop depth 2
  JAL zero, bb53
bb72:   # loop depth 1
  BLT zero, s9, bb75
  # implict jump to bb73
bb73:   # loop depth 1
  LW a0, 20(sp)
  ADDIW a0, a0, 1
  LW s0, 16(sp)
  BLT a0, s0, bb74
  JAL zero, bb50
bb74:   # loop depth 0
  JAL zero, bb52
bb75:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb76
bb76:   # loop depth 2
  SLLIW s2, a0, 2
  LA s3, a
  ADD s3, s3, s2
  LA s4, b
  ADD s2, s4, s2
  LW s2, 0(s2)
  SW s2, 0(s3)
  ADDIW a0, a0, 1
  BLT a0, s9, bb77
  JAL zero, bb73
bb77:   # loop depth 1433895408
  JAL zero, bb76
bb78:   # loop depth 5
  ADD a2, zero, zero
  JAL zero, bb64
bb79:   # loop depth 5
  ADDI a0, zero, 1
  JAL zero, bb62
bb80:   # loop depth 5
  ADDI a0, zero, 1
  JAL zero, bb60
bb81:   # loop depth 5
  ADDI a0, zero, 1
  JAL zero, bb58
