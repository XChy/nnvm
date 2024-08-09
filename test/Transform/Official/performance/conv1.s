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
  SLTIU t0, a0, 1
  BNE t0, zero, bb36
  # implict jump to bb1
bb1:   # loop depth 0
  XORI t0, a0, 1
  SLTIU t0, t0, 1
  BNE t0, zero, bb29
  # implict jump to bb2
bb2:   # loop depth 0
  XORI t0, a0, 2
  SLTIU t0, t0, 1
  BNE t0, zero, bb26
  # implict jump to bb3
bb3:   # loop depth 0
  XORI t0, a0, 3
  SLTIU t0, t0, 1
  BNE t0, zero, bb16
  # implict jump to bb4
bb4:   # loop depth 0
  XORI t0, a0, 4
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
  LUI t0, 262144
  SLLIW t1, t1, 1
  ADDIW t0, t0, 0
  SLT t0, t1, t0
  BNE t0, zero, bb13
  # implict jump to bb12
bb12:   # loop depth 0
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb13:   # loop depth 1
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
  LUI t0, 262144
  SLLIW t1, t1, 1
  ADDIW t0, t0, 0
  SLT t0, t1, t0
  BNE t0, zero, bb23
  # implict jump to bb22
bb22:   # loop depth 0
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb23:   # loop depth 1
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
  ADDI t0, zero, 1
  ADD a0, zero, zero
  # implict jump to bb30
bb30:   # loop depth 1
  DIVW t1, a1, t0
  SLLIW a0, a0, 1
  DIVW t2, a2, t0
  SLLI a3, t1, 1
  SLLI a4, t2, 1
  SRLI a3, a3, 63
  SRLI a4, a4, 63
  ADD a3, t1, a3
  ADD a4, t2, a4
  ANDI a3, a3, -2
  ANDI a4, a4, -2
  SUBW t1, t1, a3
  SUBW t2, t2, a4
  XOR t1, t1, t2
  SLTIU t1, t1, 1
  BNE t1, zero, bb35
  # implict jump to bb31
bb31:   # loop depth 1
  ADDIW a0, a0, 1
  # implict jump to bb32
bb32:   # loop depth 1
  LUI t1, 262144
  SLLIW t0, t0, 1
  ADDIW t1, t1, 0
  SLT t1, t0, t1
  BNE t1, zero, bb34
  # implict jump to bb33
bb33:   # loop depth 0
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb34:   # loop depth 1
  JAL zero, bb30
bb35:   # loop depth 1
  JAL zero, bb32
bb36:   # loop depth 0
  LUI t0, 262144
  ADDW a0, a1, a2
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
bb43:   # loop depth 0
  JAL zero, bb40
bb44:   # loop depth 1
  JAL zero, bb42
bb45:   # loop depth 0
  # implict jump to bb46
bb46:   # loop depth 1
  LUI t0, 786432
  LUI t1, 262144
  ADDIW t0, t0, 0
  ADDW a0, a0, t0
  ADDIW t1, t1, 0
  SLT t0, t1, a0
  BNE t0, zero, bb48
  # implict jump to bb47
bb47:   # loop depth 0
  JAL zero, bb38
bb48:   # loop depth 1
  JAL zero, bb46
main:   # loop depth 0
  ADDI sp, sp, -160
  SD ra, 48(sp)
  SD s0, 56(sp)
  SD s1, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD s5, 96(sp)
  SD s6, 104(sp)
  SD s7, 112(sp)
  SD s8, 120(sp)
  SD s9, 128(sp)
  SD s10, 136(sp)
  SD s11, 144(sp)
  CALL getint
  LA s1, a
  ADD s3, a0, zero
  LA s0, kernelid
  CALL getint
  ADD s2, a0, zero
  SW s2, 8(sp)
  CALL getint
  ADD s10, a0, zero
  ADD a0, s1, zero
  LW s1, 8(sp)
  MULW s1, s1, s10
  SW s1, 36(sp)
  CALL getarray
  ADD a0, s0, zero
  CALL getarray
  SW a0, 40(sp)
  ADDI a0, zero, 109
  CALL _sysy_starttime
  LW a0, 40(sp)
  BLT zero, a0, bb51
  # implict jump to bb50
bb50:   # loop depth 0
  LA s0, a
  ADDI a0, zero, 116
  CALL _sysy_stoptime
  LW a0, 36(sp)
  ADD a1, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s5, 96(sp)
  LD s6, 104(sp)
  LD s7, 112(sp)
  LD s8, 120(sp)
  LD s9, 128(sp)
  LD s10, 136(sp)
  LD s11, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb51:   # loop depth 0
  SRAIW a1, s3, 31
  ADD a0, zero, zero
  SRLIW a1, a1, 31
  ADD a1, s3, a1
  SRAIW a1, a1, 1
  SW a1, 12(sp)
  # implict jump to bb52
bb52:   # loop depth 1
  SW a0, 32(sp)
  LA a2, kernelid
  LW a0, 32(sp)
  SLLIW a1, a0, 2
  ADD s7, zero, zero
  ADD a1, a2, a1
  LW s8, 0(a1)
  # implict jump to bb53
bb53:   # loop depth 2
  ADD s6, zero, zero
  MULW a1, s7, s10
  SW a1, 24(sp)
  LW a0, 12(sp)
  SUBW a1, s7, a0
  SW a1, 28(sp)
  LW a0, 12(sp)
  ADDW a0, s7, a0
  SW a0, 16(sp)
  # implict jump to bb54
bb54:   # loop depth 3
  ADD a1, zero, zero
  LW s5, 28(sp)
  LW a0, 12(sp)
  SUBW s9, s6, a0
  LW a0, 12(sp)
  ADDW a0, s6, a0
  SW a0, 20(sp)
  # implict jump to bb55
bb55:   # loop depth 4
  ADD s4, s9, zero
  # implict jump to bb56
bb56:   # loop depth 5
  BLT s5, zero, bb82
  # implict jump to bb57
bb57:   # loop depth 5
  SLT a0, s4, zero
  # implict jump to bb58
bb58:   # loop depth 5
  BNE a0, zero, bb81
  # implict jump to bb59
bb59:   # loop depth 5
  LW a0, 8(sp)
  SLT a0, s5, a0
  XORI a0, a0, 1
  # implict jump to bb60
bb60:   # loop depth 5
  BNE a0, zero, bb80
  # implict jump to bb61
bb61:   # loop depth 5
  SLT a0, s4, s10
  XORI a0, a0, 1
  # implict jump to bb62
bb62:   # loop depth 5
  BNE a0, zero, bb79
  # implict jump to bb63
bb63:   # loop depth 5
  MULW a0, s5, s10
  LA a2, a
  ADDW a0, a0, s4
  SLLIW a0, a0, 2
  ADD a0, a2, a0
  LW a2, 0(a0)
  # implict jump to bb64
bb64:   # loop depth 5
  ADD a0, s8, zero
  ADDIW s4, s4, 1
  LW s0, 20(sp)
  SLT s0, s4, s0
  SB s0, 1(sp)
  LB s0, 1(sp)
  XORI s0, s0, 1
  SB s0, 0(sp)
  CALL reduce
  LB s0, 0(sp)
  BNE s0, zero, bb66
  # implict jump to bb65
bb65:   # loop depth 5
  ADD a1, a0, zero
  JAL zero, bb56
bb66:   # loop depth 4
  ADDIW s5, s5, 1
  LW s0, 16(sp)
  SLT s11, s5, s0
  XORI s11, s11, 1
  BNE s11, zero, bb68
  # implict jump to bb67
bb67:   # loop depth 4
  ADD a1, a0, zero
  JAL zero, bb55
bb68:   # loop depth 3
  LW s0, 24(sp)
  ADDW s5, s0, s6
  LA s11, b
  ADDIW s6, s6, 1
  SLLIW s5, s5, 2
  SLT s9, s6, s10
  ADD s5, s11, s5
  SW a0, 0(s5)
  XORI a0, s9, 1
  BNE a0, zero, bb70
  # implict jump to bb69
bb69:   # loop depth 3
  JAL zero, bb54
bb70:   # loop depth 2
  ADDIW s7, s7, 1
  LW a0, 8(sp)
  SLT s3, s7, a0
  XORI s3, s3, 1
  BNE s3, zero, bb72
  # implict jump to bb71
bb71:   # loop depth 2
  JAL zero, bb53
bb72:   # loop depth 1
  LW a0, 36(sp)
  BLT zero, a0, bb76
  # implict jump to bb73
bb73:   # loop depth 1
  LW a0, 32(sp)
  ADDIW a0, a0, 1
  LW s0, 40(sp)
  BLT a0, s0, bb75
  # implict jump to bb74
bb74:   # loop depth 0
  JAL zero, bb50
bb75:   # loop depth 1
  JAL zero, bb52
bb76:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb77
bb77:   # loop depth 2
  LA s4, b
  SLLIW s3, a0, 2
  LA s5, a
  ADD s4, s4, s3
  ADDIW a0, a0, 1
  LW s4, 0(s4)
  ADD s3, s5, s3
  SW s4, 0(s3)
  LW s0, 36(sp)
  BLT a0, s0, bb78
  JAL zero, bb73
bb78:   # loop depth 2
  JAL zero, bb77
bb79:   # loop depth 5
  ADD a2, zero, zero
  JAL zero, bb64
bb80:   # loop depth 5
  ADDI a0, zero, 1
  JAL zero, bb62
bb81:   # loop depth 5
  ADDI a0, zero, 1
  JAL zero, bb60
bb82:   # loop depth 5
  ADDI a0, zero, 1
  JAL zero, bb58
