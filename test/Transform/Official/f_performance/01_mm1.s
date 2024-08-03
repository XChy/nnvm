.global main
.section .bss
B:
.space 4194304
C:
.space 4194304
A:
.space 4194304
.section .data



.section .text
main:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s5, 16(sp)
  SD s6, 24(sp)
  SD s7, 32(sp)
  SD s8, 40(sp)
  SD s9, 48(sp)
  SD s10, 56(sp)
  SD s0, 64(sp)
  SD s1, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  CALL getint
  ADD s1, a0, zero
  ADDI s0, zero, 0
  BLT s0, s1, bb71
  # implict jump to bb1
bb1:
  BLT s0, s1, bb64
  # implict jump to bb2
bb2:
  ADDI a0, zero, 65
  CALL _sysy_starttime
  ADD a0, zero, zero
  # implict jump to bb3
bb3:
  ADD s2, a0, zero
  BLT s0, s1, bb57
  # implict jump to bb4
bb4:
  BLT s0, s1, bb43
  # implict jump to bb5
bb5:
  BLT s0, s1, bb36
  # implict jump to bb6
bb6:
  BLT s0, s1, bb22
  # implict jump to bb7
bb7:
  ADDIW s2, s2, 1
  SLTI a0, s2, 5
  BNE a0, zero, bb21
  # implict jump to bb8
bb8:
  BLT s0, s1, bb11
  # implict jump to bb9
bb9:
  ADD a0, zero, zero
  # implict jump to bb10
bb10:
  ADD s0, a0, zero
  ADDI a0, zero, 84
  CALL _sysy_stoptime
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s5, 16(sp)
  LD s6, 24(sp)
  LD s7, 32(sp)
  LD s8, 40(sp)
  LD s9, 48(sp)
  LD s10, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb11:
  ADD s2, zero, zero
  ADD a0, zero, zero
  # implict jump to bb12
bb12:
  ADD s5, a0, zero
  ADD s3, s2, zero
  BLT s0, s1, bb17
  # implict jump to bb13
bb13:
  ADD a0, s5, zero
  # implict jump to bb14
bb14:
  ADDIW s2, s3, 1
  BLT s2, s1, bb16
  # implict jump to bb15
bb15:
  JAL zero, bb10
bb16:
  JAL zero, bb12
bb17:
  SLLIW s2, s3, 12
  LA a0, B
  ADD s4, a0, s2
  ADD a0, zero, zero
  ADD s2, s5, zero
  # implict jump to bb18
bb18:
  ADD s5, a0, zero
  SLLIW a0, s5, 2
  ADD a0, s4, a0
  LW a0, 0(a0)
  ADDW s2, s2, a0
  ADDIW a0, s5, 1
  BLT a0, s1, bb20
  # implict jump to bb19
bb19:
  ADD a0, s2, zero
  JAL zero, bb14
bb20:
  JAL zero, bb18
bb21:
  ADD a0, s2, zero
  JAL zero, bb3
bb22:
  ADD a0, zero, zero
  ADD s3, zero, zero
  # implict jump to bb23
bb23:
  ADD s4, s3, zero
  ADD s3, a0, zero
  ADD a0, zero, zero
  # implict jump to bb24
bb24:
  ADD s5, a0, zero
  BLT s5, s1, bb27
  # implict jump to bb25
bb25:
  ADDIW s4, s4, 1
  BLT s4, s1, bb26
  JAL zero, bb7
bb26:
  ADD a0, s3, zero
  ADD s3, s4, zero
  JAL zero, bb23
bb27:
  SLLIW s7, s5, 12
  LA a0, A
  ADD s6, a0, s7
  SLLIW a0, s4, 2
  ADD a0, s6, a0
  LW s6, 0(a0)
  SLTIU a0, s6, 1
  BNE a0, zero, bb35
  # implict jump to bb28
bb28:
  BLT s0, s1, bb31
  # implict jump to bb29
bb29:
  ADD a0, zero, zero
  # implict jump to bb30
bb30:
  ADD s3, a0, zero
  ADDIW a0, s5, 1
  JAL zero, bb24
bb31:
  LA a0, B
  ADD s3, a0, s7
  SLLIW s7, s4, 12
  LA a0, C
  ADD s7, a0, s7
  ADD a0, zero, zero
  # implict jump to bb32
bb32:
  ADD s9, a0, zero
  SLLIW a0, s9, 2
  ADD s8, s3, a0
  LW s10, 0(s8)
  ADD a0, s7, a0
  LW a0, 0(a0)
  MULW a0, s6, a0
  ADDW a0, s10, a0
  SW a0, 0(s8)
  ADDIW a0, s9, 1
  BLT a0, s1, bb34
  # implict jump to bb33
bb33:
  JAL zero, bb30
bb34:
  JAL zero, bb32
bb35:
  ADDIW a0, s5, 1
  JAL zero, bb24
bb36:
  ADD a0, zero, zero
  # implict jump to bb37
bb37:
  ADD s5, a0, zero
  BLT s0, s1, bb40
  # implict jump to bb38
bb38:
  ADDIW a0, s5, 1
  BLT a0, s1, bb39
  JAL zero, bb6
bb39:
  JAL zero, bb37
bb40:
  SLLIW s3, s5, 12
  LA a0, B
  ADD s3, a0, s3
  ADD a0, zero, zero
  # implict jump to bb41
bb41:
  ADD s4, a0, zero
  SLLIW a0, s4, 2
  ADD a0, s3, a0
  SW zero, 0(a0)
  ADDIW a0, s4, 1
  BLT a0, s1, bb42
  JAL zero, bb38
bb42:
  JAL zero, bb41
bb43:
  ADD a0, zero, zero
  ADD s3, zero, zero
  # implict jump to bb44
bb44:
  ADD s4, s3, zero
  ADD s3, a0, zero
  ADD a0, zero, zero
  # implict jump to bb45
bb45:
  ADD s5, a0, zero
  ADD s6, s3, zero
  BLT s5, s1, bb48
  # implict jump to bb46
bb46:
  ADDIW s3, s4, 1
  BLT s3, s1, bb47
  JAL zero, bb5
bb47:
  ADD a0, s6, zero
  JAL zero, bb44
bb48:
  SLLIW s3, s5, 12
  LA a0, A
  ADD a0, a0, s3
  SLLIW s7, s4, 2
  ADD a0, a0, s7
  LW s7, 0(a0)
  SLTIU a0, s7, 1
  BNE a0, zero, bb56
  # implict jump to bb49
bb49:
  BLT s0, s1, bb52
  # implict jump to bb50
bb50:
  ADD a0, zero, zero
  # implict jump to bb51
bb51:
  ADDIW s5, s5, 1
  ADD s3, a0, zero
  ADD a0, s5, zero
  JAL zero, bb45
bb52:
  LA a0, C
  ADD s8, a0, s3
  SLLIW s3, s4, 12
  LA a0, B
  ADD s3, a0, s3
  ADD a0, zero, zero
  # implict jump to bb53
bb53:
  ADD s6, a0, zero
  SLLIW s9, s6, 2
  ADD a0, s8, s9
  LW s10, 0(a0)
  ADD s9, s3, s9
  LW s9, 0(s9)
  MULW s9, s7, s9
  ADDW s9, s10, s9
  SW s9, 0(a0)
  ADDIW a0, s6, 1
  BLT a0, s1, bb55
  # implict jump to bb54
bb54:
  JAL zero, bb51
bb55:
  JAL zero, bb53
bb56:
  ADDIW a0, s5, 1
  ADD s3, s6, zero
  JAL zero, bb45
bb57:
  ADD a0, zero, zero
  # implict jump to bb58
bb58:
  ADD s3, a0, zero
  BLT s0, s1, bb61
  # implict jump to bb59
bb59:
  ADDIW a0, s3, 1
  BLT a0, s1, bb60
  JAL zero, bb4
bb60:
  JAL zero, bb58
bb61:
  SLLIW s4, s3, 12
  LA a0, C
  ADD s5, a0, s4
  ADD a0, zero, zero
  # implict jump to bb62
bb62:
  ADD s4, a0, zero
  SLLIW a0, s4, 2
  ADD a0, s5, a0
  SW zero, 0(a0)
  ADDIW a0, s4, 1
  BLT a0, s1, bb63
  JAL zero, bb59
bb63:
  JAL zero, bb62
bb64:
  ADD s2, zero, zero
  # implict jump to bb65
bb65:
  ADD s5, s2, zero
  BLT s0, s1, bb68
  # implict jump to bb66
bb66:
  ADDIW s2, s5, 1
  BLT s2, s1, bb67
  JAL zero, bb2
bb67:
  JAL zero, bb65
bb68:
  SLLIW s3, s5, 12
  LA s2, B
  ADD s3, s2, s3
  ADD s2, zero, zero
  # implict jump to bb69
bb69:
  ADD s6, s2, zero
  SLLIW s2, s6, 2
  ADD s2, s3, s2
  CALL getint
  ADD s4, a0, zero
  SW s4, 0(s2)
  ADDIW s2, s6, 1
  BLT s2, s1, bb70
  JAL zero, bb66
bb70:
  JAL zero, bb69
bb71:
  ADD s2, zero, zero
  # implict jump to bb72
bb72:
  ADD s6, s2, zero
  BLT s0, s1, bb75
  # implict jump to bb73
bb73:
  ADDIW s2, s6, 1
  BLT s2, s1, bb74
  JAL zero, bb1
bb74:
  JAL zero, bb72
bb75:
  SLLIW s3, s6, 12
  LA s2, A
  ADD s3, s2, s3
  ADD s2, zero, zero
  # implict jump to bb76
bb76:
  ADD s5, s2, zero
  SLLIW s2, s5, 2
  ADD s2, s3, s2
  CALL getint
  ADD s4, a0, zero
  SW s4, 0(s2)
  ADDIW s2, s5, 1
  BLT s2, s1, bb77
  JAL zero, bb73
bb77:
  JAL zero, bb76
