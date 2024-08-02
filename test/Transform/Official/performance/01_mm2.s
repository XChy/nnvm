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
  ADDI s6, zero, 0
  BLT s6, s0, bb71
  # implict jump to bb1
bb1:
  BLT s6, s0, bb64
  # implict jump to bb2
bb2:
  ADDI a0, zero, 65
  CALL _sysy_starttime
  ADD a0, zero, zero
  # implict jump to bb3
bb3:
  BLT s6, s0, bb57
  # implict jump to bb4
bb4:
  BLT s6, s0, bb43
  # implict jump to bb5
bb5:
  BLT s6, s0, bb36
  # implict jump to bb6
bb6:
  BLT s6, s0, bb22
  # implict jump to bb7
bb7:
  ADDIW a0, a0, 1
  SLTI s1, a0, 5
  BNE s1, zero, bb21
  # implict jump to bb8
bb8:
  BLT s6, s0, bb11
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
  ADD a0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb12
bb12:
  BLT s6, s0, bb17
  # implict jump to bb13
bb13:
  # implict jump to bb14
bb14:
  ADDIW a0, a0, 1
  BLT a0, s0, bb16
  # implict jump to bb15
bb15:
  ADD a0, s1, zero
  JAL zero, bb10
bb16:
  JAL zero, bb12
bb17:
  SLLIW s2, a0, 12
  LA s3, B
  ADD s2, s3, s2
  ADD s4, zero, zero
  # implict jump to bb18
bb18:
  ADD s3, s1, zero
  ADD s1, s4, zero
  SLLIW s4, s1, 2
  ADD s4, s2, s4
  LW s4, 0(s4)
  ADDW s3, s3, s4
  ADDIW s1, s1, 1
  BLT s1, s0, bb20
  # implict jump to bb19
bb19:
  ADD s1, s3, zero
  JAL zero, bb14
bb20:
  ADD s4, s1, zero
  ADD s1, s3, zero
  JAL zero, bb18
bb21:
  JAL zero, bb3
bb22:
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb23
bb23:
  ADD s3, zero, zero
  # implict jump to bb24
bb24:
  BLT s3, s0, bb27
  # implict jump to bb25
bb25:
  ADDIW s2, s2, 1
  BLT s2, s0, bb26
  JAL zero, bb7
bb26:
  JAL zero, bb23
bb27:
  SLLIW s4, s3, 12
  LA s5, A
  ADD s5, s5, s4
  SLLIW s7, s2, 2
  ADD s5, s5, s7
  LW s5, 0(s5)
  SLTIU s7, s5, 1
  BNE s7, zero, bb35
  # implict jump to bb28
bb28:
  BLT s6, s0, bb31
  # implict jump to bb29
bb29:
  ADD s1, zero, zero
  # implict jump to bb30
bb30:
  ADDIW s3, s3, 1
  JAL zero, bb24
bb31:
  LA s1, B
  ADD s1, s1, s4
  SLLIW s4, s2, 12
  LA s7, C
  ADD s4, s7, s4
  ADD s7, zero, zero
  # implict jump to bb32
bb32:
  SLLIW s8, s7, 2
  ADD s9, s1, s8
  LW s10, 0(s9)
  ADD s8, s4, s8
  LW s8, 0(s8)
  MULW s8, s5, s8
  ADDW s8, s10, s8
  SW s8, 0(s9)
  ADDIW s7, s7, 1
  BLT s7, s0, bb34
  # implict jump to bb33
bb33:
  ADD s1, s7, zero
  JAL zero, bb30
bb34:
  JAL zero, bb32
bb35:
  ADDIW s3, s3, 1
  JAL zero, bb24
bb36:
  ADD s1, zero, zero
  # implict jump to bb37
bb37:
  BLT s6, s0, bb40
  # implict jump to bb38
bb38:
  ADDIW s1, s1, 1
  BLT s1, s0, bb39
  JAL zero, bb6
bb39:
  JAL zero, bb37
bb40:
  SLLIW s2, s1, 12
  LA s3, B
  ADD s2, s3, s2
  ADD s3, zero, zero
  # implict jump to bb41
bb41:
  SLLIW s4, s3, 2
  ADD s4, s2, s4
  SW zero, 0(s4)
  ADDIW s3, s3, 1
  BLT s3, s0, bb42
  JAL zero, bb38
bb42:
  JAL zero, bb41
bb43:
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb44
bb44:
  ADD s3, zero, zero
  # implict jump to bb45
bb45:
  BLT s3, s0, bb48
  # implict jump to bb46
bb46:
  ADDIW s2, s2, 1
  BLT s2, s0, bb47
  JAL zero, bb5
bb47:
  JAL zero, bb44
bb48:
  SLLIW s4, s3, 12
  LA s5, A
  ADD s5, s5, s4
  SLLIW s7, s2, 2
  ADD s5, s5, s7
  LW s5, 0(s5)
  SLTIU s7, s5, 1
  BNE s7, zero, bb56
  # implict jump to bb49
bb49:
  BLT s6, s0, bb52
  # implict jump to bb50
bb50:
  ADD s1, zero, zero
  # implict jump to bb51
bb51:
  ADDIW s3, s3, 1
  JAL zero, bb45
bb52:
  LA s1, C
  ADD s1, s1, s4
  SLLIW s4, s2, 12
  LA s7, B
  ADD s4, s7, s4
  ADD s7, zero, zero
  # implict jump to bb53
bb53:
  SLLIW s8, s7, 2
  ADD s9, s1, s8
  LW s10, 0(s9)
  ADD s8, s4, s8
  LW s8, 0(s8)
  MULW s8, s5, s8
  ADDW s8, s10, s8
  SW s8, 0(s9)
  ADDIW s7, s7, 1
  BLT s7, s0, bb55
  # implict jump to bb54
bb54:
  ADD s1, s7, zero
  JAL zero, bb51
bb55:
  JAL zero, bb53
bb56:
  ADDIW s3, s3, 1
  JAL zero, bb45
bb57:
  ADD s1, zero, zero
  # implict jump to bb58
bb58:
  BLT s6, s0, bb61
  # implict jump to bb59
bb59:
  ADDIW s1, s1, 1
  BLT s1, s0, bb60
  JAL zero, bb4
bb60:
  JAL zero, bb58
bb61:
  SLLIW s2, s1, 12
  LA s3, C
  ADD s2, s3, s2
  ADD s3, zero, zero
  # implict jump to bb62
bb62:
  SLLIW s4, s3, 2
  ADD s4, s2, s4
  SW zero, 0(s4)
  ADDIW s3, s3, 1
  BLT s3, s0, bb63
  JAL zero, bb59
bb63:
  JAL zero, bb62
bb64:
  ADD s1, zero, zero
  # implict jump to bb65
bb65:
  BLT s6, s0, bb68
  # implict jump to bb66
bb66:
  ADDIW s1, s1, 1
  BLT s1, s0, bb67
  JAL zero, bb2
bb67:
  JAL zero, bb65
bb68:
  SLLIW s2, s1, 12
  LA s3, B
  ADD s2, s3, s2
  ADD s3, zero, zero
  # implict jump to bb69
bb69:
  SLLIW s4, s3, 2
  ADD s4, s2, s4
  CALL getint
  ADD s5, a0, zero
  SW s5, 0(s4)
  ADDIW s3, s3, 1
  BLT s3, s0, bb70
  JAL zero, bb66
bb70:
  JAL zero, bb69
bb71:
  ADD s1, zero, zero
  # implict jump to bb72
bb72:
  BLT s6, s0, bb75
  # implict jump to bb73
bb73:
  ADDIW s1, s1, 1
  BLT s1, s0, bb74
  JAL zero, bb1
bb74:
  JAL zero, bb72
bb75:
  SLLIW s2, s1, 12
  LA s3, A
  ADD s2, s3, s2
  ADD s3, zero, zero
  # implict jump to bb76
bb76:
  SLLIW s4, s3, 2
  ADD s4, s2, s4
  CALL getint
  ADD s5, a0, zero
  SW s5, 0(s4)
  ADDIW s3, s3, 1
  BLT s3, s0, bb77
  JAL zero, bb73
bb77:
  JAL zero, bb76
