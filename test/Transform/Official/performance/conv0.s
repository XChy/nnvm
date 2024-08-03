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
  ADD a2, t1, zero
  ADD t1, t0, zero
  DIVW a1, t2, a2
  SLLI t0, a1, 1
  SRLI t0, t0, 63
  ADD t0, a1, t0
  ANDI t0, t0, -2
  SUBW t0, a1, t0
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
  SLLIW t0, t1, 1
  # implict jump to bb11
bb11:
  ADD t1, t0, zero
  SLLIW a1, a2, 1
  LUI t0, 262144
  ADDIW t0, t0, 0
  SLT t0, a1, t0
  BNE t0, zero, bb13
  # implict jump to bb12
bb12:
  ADD a0, t1, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb13:
  ADD t0, t1, zero
  ADD t1, a1, zero
  JAL zero, bb7
bb14:
  SLLIW t0, t1, 1
  ADDIW t0, t0, 1
  JAL zero, bb11
bb15:
  DIVW a1, a0, a2
  SLLI t0, a1, 1
  SRLI t0, t0, 63
  ADD t0, a1, t0
  ANDI t0, t0, -2
  SUBW t0, a1, t0
  XORI t0, t0, 1
  SLTIU t0, t0, 1
  JAL zero, bb9
bb16:
  ADD t1, zero, zero
  ADDI t0, zero, 1
  # implict jump to bb17
bb17:
  ADD a1, t0, zero
  ADD a2, t1, zero
  DIVW t1, t2, a1
  SLLI t0, t1, 1
  SRLI t0, t0, 63
  ADD t0, t1, t0
  ANDI t0, t0, -2
  SUBW t0, t1, t0
  XORI t0, t0, 1
  SLTIU t0, t0, 1
  BNE t0, zero, bb25
  # implict jump to bb18
bb18:
  DIVW t1, a0, a1
  SLLI t0, t1, 1
  SRLI t0, t0, 63
  ADD t0, t1, t0
  ANDI t0, t0, -2
  SUBW t0, t1, t0
  XORI t0, t0, 1
  SLTIU t0, t0, 1
  # implict jump to bb19
bb19:
  BNE t0, zero, bb24
  # implict jump to bb20
bb20:
  SLLIW t0, a2, 1
  # implict jump to bb21
bb21:
  ADD t1, t0, zero
  SLLIW a1, a1, 1
  LUI t0, 262144
  ADDIW t0, t0, 0
  SLT t0, a1, t0
  BNE t0, zero, bb23
  # implict jump to bb22
bb22:
  ADD a0, t1, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb23:
  ADD t0, a1, zero
  JAL zero, bb17
bb24:
  SLLIW t0, a2, 1
  ADDIW t0, t0, 1
  JAL zero, bb21
bb25:
  ADDI t0, zero, 1
  JAL zero, bb19
bb26:
  BLT a0, t2, bb28
  # implict jump to bb27
bb27:
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb28:
  ADD a0, t2, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb29:
  ADD t1, zero, zero
  ADDI t0, zero, 1
  # implict jump to bb30
bb30:
  ADD a1, t0, zero
  ADD a3, t1, zero
  DIVW t1, t2, a1
  SLLI t0, t1, 1
  SRLI t0, t0, 63
  ADD t0, t1, t0
  ANDI t0, t0, -2
  SUBW t1, t1, t0
  DIVW a2, a0, a1
  SLLI t0, a2, 1
  SRLI t0, t0, 63
  ADD t0, a2, t0
  ANDI t0, t0, -2
  SUBW t0, a2, t0
  XOR t0, t1, t0
  SLTIU t0, t0, 1
  BNE t0, zero, bb35
  # implict jump to bb31
bb31:
  SLLIW t0, a3, 1
  ADDIW t0, t0, 1
  # implict jump to bb32
bb32:
  ADD t1, t0, zero
  SLLIW a1, a1, 1
  LUI t0, 262144
  ADDIW t0, t0, 0
  SLT t0, a1, t0
  BNE t0, zero, bb34
  # implict jump to bb33
bb33:
  ADD a0, t1, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb34:
  ADD t0, a1, zero
  JAL zero, bb30
bb35:
  SLLIW t0, a3, 1
  JAL zero, bb32
bb36:
  ADDW t1, t2, a0
  LUI t0, 262144
  ADDIW t0, t0, 0
  SLT t0, t0, t1
  BNE t0, zero, bb45
  # implict jump to bb37
bb37:
  ADD t0, t1, zero
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
  ADD t1, t0, zero
  LUI t0, 262144
  ADDIW t0, t0, 0
  ADDW t0, t1, t0
  BLT t0, zero, bb44
  # implict jump to bb43
bb43:
  JAL zero, bb40
bb44:
  JAL zero, bb42
bb45:
  ADD t0, t1, zero
  # implict jump to bb46
bb46:
  ADD t1, t0, zero
  LUI t0, 262144
  ADDIW t0, t0, 0
  SUBW t1, t1, t0
  LUI t0, 262144
  ADDIW t0, t0, 0
  SLT t0, t0, t1
  BNE t0, zero, bb48
  # implict jump to bb47
bb47:
  ADD t0, t1, zero
  JAL zero, bb38
bb48:
  ADD t0, t1, zero
  JAL zero, bb46
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
  ADD s10, a0, zero
  CALL getint
  ADD s6, a0, zero
  LA a0, a
  CALL getarray
  LA a0, kernelid
  CALL getarray
  SW a0, 0(sp)
  ADDI a0, zero, 109
  CALL _sysy_starttime
  LW a0, 0(sp)
  BLT zero, a0, bb51
  # implict jump to bb50
bb50:
  ADDI a0, zero, 116
  CALL _sysy_stoptime
  MULW a0, s10, s6
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
bb51:
  SRAIW a0, s0, 31
  SRLIW a0, a0, 31
  ADD a0, s0, a0
  SRAIW s1, a0, 1
  ADD a0, zero, zero
  # implict jump to bb52
bb52:
  ADD s2, a0, zero
  SLLIW a1, s2, 2
  LA a0, kernelid
  ADD a0, a0, a1
  LW s5, 0(a0)
  ADD a0, zero, zero
  # implict jump to bb53
bb53:
  ADD s4, a0, zero
  SUBW s3, s4, s1
  ADD a0, zero, zero
  # implict jump to bb54
bb54:
  SW a0, 4(sp)
  LW a0, 4(sp)
  SUBW s9, a0, s1
  ADD a1, zero, zero
  ADD a0, s3, zero
  # implict jump to bb55
bb55:
  ADD s8, a0, zero
  ADD a0, a1, zero
  ADD a1, a0, zero
  ADD a0, s9, zero
  # implict jump to bb56
bb56:
  ADD s0, a0, zero
  ADD s7, a1, zero
  BLT s8, zero, bb81
  # implict jump to bb57
bb57:
  SLT a0, s0, zero
  # implict jump to bb58
bb58:
  BNE a0, zero, bb80
  # implict jump to bb59
bb59:
  SLT a0, s8, s10
  XORI a0, a0, 1
  # implict jump to bb60
bb60:
  BNE a0, zero, bb79
  # implict jump to bb61
bb61:
  SLT a0, s0, s6
  XORI a0, a0, 1
  # implict jump to bb62
bb62:
  BNE a0, zero, bb78
  # implict jump to bb63
bb63:
  MULW a0, s8, s6
  ADDW a0, a0, s0
  SLLIW a1, a0, 2
  LA a0, a
  ADD a0, a0, a1
  LW a0, 0(a0)
  # implict jump to bb64
bb64:
  ADD a2, a0, zero
  ADD a0, s5, zero
  ADD a1, s7, zero
  CALL reduce
  ADD s7, a0, zero
  ADDIW s0, s0, 1
  LW a0, 4(sp)
  ADDW a0, a0, s1
  SLT a0, s0, a0
  XORI a0, a0, 1
  BNE a0, zero, bb66
  # implict jump to bb65
bb65:
  ADD a1, s7, zero
  ADD a0, s0, zero
  JAL zero, bb56
bb66:
  ADDIW s0, s8, 1
  ADDW a0, s4, s1
  SLT a0, s0, a0
  XORI a0, a0, 1
  BNE a0, zero, bb68
  # implict jump to bb67
bb67:
  ADD a1, s7, zero
  ADD a0, s0, zero
  JAL zero, bb55
bb68:
  MULW s0, s4, s6
  LW a0, 4(sp)
  ADDW a0, s0, a0
  SLLIW s0, a0, 2
  LA a0, b
  ADD a0, a0, s0
  SW s7, 0(a0)
  LW a0, 4(sp)
  ADDIW s0, a0, 1
  SLT a0, s0, s6
  XORI a0, a0, 1
  BNE a0, zero, bb70
  # implict jump to bb69
bb69:
  ADD a0, s0, zero
  JAL zero, bb54
bb70:
  ADDIW s0, s4, 1
  SLT a0, s0, s10
  XORI a0, a0, 1
  BNE a0, zero, bb72
  # implict jump to bb71
bb71:
  ADD a0, s0, zero
  JAL zero, bb53
bb72:
  MULW s5, s10, s6
  BLT zero, s5, bb75
  # implict jump to bb73
bb73:
  ADDIW s0, s2, 1
  LW a0, 0(sp)
  BLT s0, a0, bb74
  JAL zero, bb50
bb74:
  ADD a0, s0, zero
  JAL zero, bb52
bb75:
  ADD a0, zero, zero
  # implict jump to bb76
bb76:
  ADD s3, a0, zero
  SLLIW s0, s3, 2
  LA a0, a
  ADD s4, a0, s0
  LA a0, b
  ADD a0, a0, s0
  LW a0, 0(a0)
  SW a0, 0(s4)
  ADDIW a0, s3, 1
  BLT a0, s5, bb77
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
