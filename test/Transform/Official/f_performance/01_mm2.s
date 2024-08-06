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
  ADD s0, a0, zero
  ADDI s8, zero, 0
  BLT s8, s0, bb71
  # implict jump to bb1
bb1:
  BLT s8, s0, bb64
  # implict jump to bb2
bb2:
  ADDI a0, zero, 65
  CALL _sysy_starttime
  ADD a0, zero, zero
  # implict jump to bb3
bb3:
  ADD s10, a0, zero
  BLT s8, s0, bb57
  # implict jump to bb4
bb4:
  BLT s8, s0, bb43
  # implict jump to bb5
bb5:
  BLT s8, s0, bb36
  # implict jump to bb6
bb6:
  BLT s8, s0, bb22
  # implict jump to bb7
bb7:
  ADDIW a0, s10, 1
  SLTI s1, a0, 5
  BNE s1, zero, bb21
  # implict jump to bb8
bb8:
  BLT s8, s0, bb11
  # implict jump to bb9
bb9:
  ADD s1, zero, zero
  # implict jump to bb10
bb10:
  ADDI a0, zero, 84
  CALL _sysy_stoptime
  ADD a0, s1, zero
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
  ADD a0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb12
bb12:
  BLT s8, s0, bb17
  # implict jump to bb13
bb13:
  # implict jump to bb14
bb14:
  ADDIW a0, a0, 1
  BLT a0, s0, bb16
  # implict jump to bb15
bb15:
  JAL zero, bb10
bb16:
  JAL zero, bb12
bb17:
  SLLIW s2, a0, 12
  LA s3, B
  ADD s3, s3, s2
  ADD s2, zero, zero
  # implict jump to bb18
bb18:
  SLLIW s4, s2, 2
  ADD s4, s3, s4
  LW s4, 0(s4)
  ADDW s1, s1, s4
  ADDIW s2, s2, 1
  BLT s2, s0, bb20
  # implict jump to bb19
bb19:
  JAL zero, bb14
bb20:
  JAL zero, bb18
bb21:
  JAL zero, bb3
bb22:
  ADD s5, zero, zero
  ADD a0, zero, zero
  # implict jump to bb23
bb23:
  ADD s2, zero, zero
  # implict jump to bb24
bb24:
  BLT s2, s0, bb27
  # implict jump to bb25
bb25:
  ADDIW a0, a0, 1
  BLT a0, s0, bb26
  JAL zero, bb7
bb26:
  JAL zero, bb23
bb27:
  SLLIW s3, s2, 12
  LA s1, A
  ADD s1, s1, s3
  SLLIW s4, a0, 2
  ADD s1, s1, s4
  LW s1, 0(s1)
  SLTIU s4, s1, 1
  ADDIW s2, s2, 1
  BNE s4, zero, bb35
  # implict jump to bb28
bb28:
  BLT s8, s0, bb31
  # implict jump to bb29
bb29:
  ADD s5, zero, zero
  # implict jump to bb30
bb30:
  JAL zero, bb24
bb31:
  LA s4, B
  ADD s3, s4, s3
  SLLIW s4, a0, 12
  LA s5, C
  ADD s4, s5, s4
  ADD s5, zero, zero
  # implict jump to bb32
bb32:
  SLLIW s6, s5, 2
  ADD s7, s3, s6
  LW s9, 0(s7)
  ADD s6, s4, s6
  LW s6, 0(s6)
  MULW s6, s1, s6
  ADDW s6, s9, s6
  SW s6, 0(s7)
  ADDIW s5, s5, 1
  BLT s5, s0, bb34
  # implict jump to bb33
bb33:
  JAL zero, bb30
bb34:
  JAL zero, bb32
bb35:
  JAL zero, bb24
bb36:
  ADD s1, zero, zero
  # implict jump to bb37
bb37:
  BLT s8, s0, bb40
  # implict jump to bb38
bb38:
  ADDIW s1, s1, 1
  BLT s1, s0, bb39
  JAL zero, bb6
bb39:
  JAL zero, bb37
bb40:
  SLLIW a0, s1, 12
  LA s2, B
  ADD s2, s2, a0
  ADD a0, zero, zero
  # implict jump to bb41
bb41:
  SLLIW s3, a0, 2
  ADD s3, s2, s3
  SW zero, 0(s3)
  ADDIW a0, a0, 1
  BLT a0, s0, bb42
  JAL zero, bb38
bb42:
  JAL zero, bb41
bb43:
  ADD s5, zero, zero
  ADD a0, zero, zero
  # implict jump to bb44
bb44:
  ADD s2, zero, zero
  # implict jump to bb45
bb45:
  BLT s2, s0, bb48
  # implict jump to bb46
bb46:
  ADDIW a0, a0, 1
  BLT a0, s0, bb47
  JAL zero, bb5
bb47:
  JAL zero, bb44
bb48:
  SLLIW s3, s2, 12
  LA s1, A
  ADD s1, s1, s3
  SLLIW s4, a0, 2
  ADD s1, s1, s4
  LW s1, 0(s1)
  SLTIU s4, s1, 1
  ADDIW s2, s2, 1
  BNE s4, zero, bb56
  # implict jump to bb49
bb49:
  BLT s8, s0, bb52
  # implict jump to bb50
bb50:
  ADD s5, zero, zero
  # implict jump to bb51
bb51:
  JAL zero, bb45
bb52:
  LA s4, C
  ADD s3, s4, s3
  SLLIW s4, a0, 12
  LA s5, B
  ADD s4, s5, s4
  ADD s5, zero, zero
  # implict jump to bb53
bb53:
  SLLIW s6, s5, 2
  ADD s7, s3, s6
  LW s9, 0(s7)
  ADD s6, s4, s6
  LW s6, 0(s6)
  MULW s6, s1, s6
  ADDW s6, s9, s6
  SW s6, 0(s7)
  ADDIW s5, s5, 1
  BLT s5, s0, bb55
  # implict jump to bb54
bb54:
  JAL zero, bb51
bb55:
  JAL zero, bb53
bb56:
  JAL zero, bb45
bb57:
  ADD a0, zero, zero
  # implict jump to bb58
bb58:
  BLT s8, s0, bb61
  # implict jump to bb59
bb59:
  ADDIW a0, a0, 1
  BLT a0, s0, bb60
  JAL zero, bb4
bb60:
  JAL zero, bb58
bb61:
  SLLIW s1, a0, 12
  LA s2, C
  ADD s2, s2, s1
  ADD s1, zero, zero
  # implict jump to bb62
bb62:
  SLLIW s3, s1, 2
  ADD s3, s2, s3
  SW zero, 0(s3)
  ADDIW s1, s1, 1
  BLT s1, s0, bb63
  JAL zero, bb59
bb63:
  JAL zero, bb62
bb64:
  ADD s2, zero, zero
  # implict jump to bb65
bb65:
  BLT s8, s0, bb68
  # implict jump to bb66
bb66:
  ADDIW s2, s2, 1
  BLT s2, s0, bb67
  JAL zero, bb2
bb67:
  JAL zero, bb65
bb68:
  SLLIW s1, s2, 12
  LA s3, B
  ADD s4, s3, s1
  ADD s1, zero, zero
  # implict jump to bb69
bb69:
  SLLIW s3, s1, 2
  ADD s5, s4, s3
  CALL getint
  ADD s3, a0, zero
  SW s3, 0(s5)
  ADDIW s1, s1, 1
  BLT s1, s0, bb70
  JAL zero, bb66
bb70:
  JAL zero, bb69
bb71:
  ADD s2, zero, zero
  # implict jump to bb72
bb72:
  BLT s8, s0, bb75
  # implict jump to bb73
bb73:
  ADDIW s2, s2, 1
  BLT s2, s0, bb74
  JAL zero, bb1
bb74:
  JAL zero, bb72
bb75:
  SLLIW s1, s2, 12
  LA s3, A
  ADD s4, s3, s1
  ADD s1, zero, zero
  # implict jump to bb76
bb76:
  SLLIW s3, s1, 2
  ADD s5, s4, s3
  CALL getint
  ADD s3, a0, zero
  SW s3, 0(s5)
  ADDIW s1, s1, 1
  BLT s1, s0, bb77
  JAL zero, bb73
bb77:
  JAL zero, bb76
