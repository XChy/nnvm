.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
main:   # loop depth 0
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
  ADDI s8, zero, 0
  ADD s0, a0, zero
  BLT s8, s0, bb73
  # implict jump to bb1
bb1:   # loop depth 0
  BLT s8, s0, bb66
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI a0, zero, 65
  ADD s1, zero, zero
  CALL _sysy_starttime
  # implict jump to bb3
bb3:   # loop depth 1
  ADD s10, s1, zero
  BLT s8, s0, bb59
  # implict jump to bb4
bb4:   # loop depth 1
  BLT s8, s0, bb44
  # implict jump to bb5
bb5:   # loop depth 1
  BLT s8, s0, bb37
  # implict jump to bb6
bb6:   # loop depth 1
  BLT s8, s0, bb22
  # implict jump to bb7
bb7:   # loop depth 1
  ADDIW s1, s10, 1
  SLTI a0, s1, 5
  BNE a0, zero, bb21
  # implict jump to bb8
bb8:   # loop depth 0
  BLT s8, s0, bb11
  # implict jump to bb9
bb9:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb10
bb10:   # loop depth 0
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
bb11:   # loop depth 0
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb12
bb12:   # loop depth 1
  BLT s8, s0, bb17
  # implict jump to bb13
bb13:   # loop depth 1
  # implict jump to bb14
bb14:   # loop depth 1
  ADDIW s2, s2, 1
  BLT s2, s0, bb16
  # implict jump to bb15
bb15:   # loop depth 0
  JAL zero, bb10
bb16:   # loop depth 1
  JAL zero, bb12
bb17:   # loop depth 1
  LA s4, B
  SLLIW s3, s2, 12
  ADD a0, zero, zero
  ADD s3, s4, s3
  # implict jump to bb18
bb18:   # loop depth 2
  SH2ADD s4, a0, s3
  ADDIW a0, a0, 1
  LW s4, 0(s4)
  ADDW s1, s1, s4
  BLT a0, s0, bb20
  # implict jump to bb19
bb19:   # loop depth 1
  JAL zero, bb14
bb20:   # loop depth 2
  JAL zero, bb18
bb21:   # loop depth 1
  JAL zero, bb3
bb22:   # loop depth 1
  ADD a0, zero, zero
  ADD s4, zero, zero
  # implict jump to bb23
bb23:   # loop depth 2
  LA s3, C
  SLLIW s1, a0, 12
  ADD s2, zero, zero
  ADD s1, s3, s1
  # implict jump to bb24
bb24:   # loop depth 3
  BLT s2, s0, bb27
  # implict jump to bb25
bb25:   # loop depth 2
  ADDIW a0, a0, 1
  BLT a0, s0, bb26
  JAL zero, bb7
bb26:   # loop depth 2
  JAL zero, bb23
bb27:   # loop depth 3
  LA s5, A
  SLLIW s6, s2, 12
  ADDIW s3, s2, 1
  ADD s2, s5, s6
  SH2ADD s2, a0, s2
  LW s2, 0(s2)
  SLTIU s5, s2, 1
  BNE s5, zero, bb36
  # implict jump to bb28
bb28:   # loop depth 3
  BLT s8, s0, bb32
  # implict jump to bb29
bb29:   # loop depth 3
  ADD s4, zero, zero
  # implict jump to bb30
bb30:   # loop depth 3
  # implict jump to bb31
bb31:   # loop depth 3
  ADD s2, s3, zero
  JAL zero, bb24
bb32:   # loop depth 3
  LA s4, B
  ADD s5, zero, zero
  ADD s4, s4, s6
  # implict jump to bb33
bb33:   # loop depth 4
  SH2ADD s6, s5, s4
  SH2ADD s9, s5, s1
  LW s7, 0(s6)
  ADDIW s5, s5, 1
  LW s9, 0(s9)
  MULW s9, s2, s9
  ADDW s7, s7, s9
  SW s7, 0(s6)
  BLT s5, s0, bb35
  # implict jump to bb34
bb34:   # loop depth 3
  ADD s4, s5, zero
  JAL zero, bb30
bb35:   # loop depth 4
  JAL zero, bb33
bb36:   # loop depth 3
  JAL zero, bb31
bb37:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb38
bb38:   # loop depth 2
  BLT s8, s0, bb41
  # implict jump to bb39
bb39:   # loop depth 2
  ADDIW a0, a0, 1
  BLT a0, s0, bb40
  JAL zero, bb6
bb40:   # loop depth 2
  JAL zero, bb38
bb41:   # loop depth 2
  LA s3, B
  SLLIW s2, a0, 12
  ADD s1, zero, zero
  ADD s2, s3, s2
  # implict jump to bb42
bb42:   # loop depth 3
  SH2ADD s3, s1, s2
  ADDIW s1, s1, 1
  SW zero, 0(s3)
  BLT s1, s0, bb43
  JAL zero, bb39
bb43:   # loop depth 3
  JAL zero, bb42
bb44:   # loop depth 1
  ADD a0, zero, zero
  ADD s4, zero, zero
  # implict jump to bb45
bb45:   # loop depth 2
  LA s3, B
  SLLIW s1, a0, 12
  ADD s2, zero, zero
  ADD s1, s3, s1
  # implict jump to bb46
bb46:   # loop depth 3
  BLT s2, s0, bb49
  # implict jump to bb47
bb47:   # loop depth 2
  ADDIW a0, a0, 1
  BLT a0, s0, bb48
  JAL zero, bb5
bb48:   # loop depth 2
  JAL zero, bb45
bb49:   # loop depth 3
  LA s5, A
  SLLIW s6, s2, 12
  ADDIW s3, s2, 1
  ADD s2, s5, s6
  SH2ADD s2, a0, s2
  LW s2, 0(s2)
  SLTIU s5, s2, 1
  BNE s5, zero, bb58
  # implict jump to bb50
bb50:   # loop depth 3
  BLT s8, s0, bb54
  # implict jump to bb51
bb51:   # loop depth 3
  ADD s4, zero, zero
  # implict jump to bb52
bb52:   # loop depth 3
  # implict jump to bb53
bb53:   # loop depth 3
  ADD s2, s3, zero
  JAL zero, bb46
bb54:   # loop depth 3
  LA s4, C
  ADD s5, zero, zero
  ADD s4, s4, s6
  # implict jump to bb55
bb55:   # loop depth 4
  SH2ADD s6, s5, s4
  SH2ADD s9, s5, s1
  LW s7, 0(s6)
  ADDIW s5, s5, 1
  LW s9, 0(s9)
  MULW s9, s2, s9
  ADDW s7, s7, s9
  SW s7, 0(s6)
  BLT s5, s0, bb57
  # implict jump to bb56
bb56:   # loop depth 3
  ADD s4, s5, zero
  JAL zero, bb52
bb57:   # loop depth 4
  JAL zero, bb55
bb58:   # loop depth 3
  JAL zero, bb53
bb59:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb60
bb60:   # loop depth 2
  BLT s8, s0, bb63
  # implict jump to bb61
bb61:   # loop depth 2
  ADDIW a0, a0, 1
  BLT a0, s0, bb62
  JAL zero, bb4
bb62:   # loop depth 2
  JAL zero, bb60
bb63:   # loop depth 2
  LA s3, C
  SLLIW s2, a0, 12
  ADD s1, zero, zero
  ADD s2, s3, s2
  # implict jump to bb64
bb64:   # loop depth 3
  SH2ADD s3, s1, s2
  ADDIW s1, s1, 1
  SW zero, 0(s3)
  BLT s1, s0, bb65
  JAL zero, bb61
bb65:   # loop depth 3
  JAL zero, bb64
bb66:   # loop depth 0
  ADD s2, zero, zero
  # implict jump to bb67
bb67:   # loop depth 1
  BLT s8, s0, bb70
  # implict jump to bb68
bb68:   # loop depth 1
  ADDIW s2, s2, 1
  BLT s2, s0, bb69
  JAL zero, bb2
bb69:   # loop depth 1
  JAL zero, bb67
bb70:   # loop depth 1
  LA s4, B
  SLLIW s3, s2, 12
  ADD s1, zero, zero
  ADD s4, s4, s3
  # implict jump to bb71
bb71:   # loop depth 2
  CALL getint
  ADD s3, a0, zero
  SH2ADD s5, s1, s4
  ADDIW s1, s1, 1
  SW s3, 0(s5)
  BLT s1, s0, bb72
  JAL zero, bb68
bb72:   # loop depth 2
  JAL zero, bb71
bb73:   # loop depth 0
  ADD s2, zero, zero
  # implict jump to bb74
bb74:   # loop depth 1
  BLT s8, s0, bb77
  # implict jump to bb75
bb75:   # loop depth 1
  ADDIW s2, s2, 1
  BLT s2, s0, bb76
  JAL zero, bb1
bb76:   # loop depth 1
  JAL zero, bb74
bb77:   # loop depth 1
  LA s4, A
  SLLIW s3, s2, 12
  ADD s1, zero, zero
  ADD s4, s4, s3
  # implict jump to bb78
bb78:   # loop depth 2
  CALL getint
  ADD s3, a0, zero
  SH2ADD s5, s1, s4
  ADDIW s1, s1, 1
  SW s3, 0(s5)
  BLT s1, s0, bb79
  JAL zero, bb75
bb79:   # loop depth 2
  JAL zero, bb78
