.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -1216
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s2, 16(sp)
  SD s3, 24(sp)
  SD s4, 32(sp)
  SD s5, 40(sp)
  SD s6, 48(sp)
  SD s7, 56(sp)
  SD s0, 64(sp)
  ADDI a0, zero, 8
  ADDI s0, zero, 7
  SW a0, 72(sp)
  ADDI a0, zero, 4
  SW s0, 76(sp)
  ADDI s0, zero, 1
  SW a0, 80(sp)
  ADDI a0, zero, 2
  SW s0, 84(sp)
  ADDI s0, zero, 7
  SW a0, 88(sp)
  ADDI a0, zero, 0
  SW s0, 92(sp)
  ADDI s0, zero, 1
  SW a0, 96(sp)
  ADDI a0, zero, 9
  SW s0, 100(sp)
  ADDI s0, zero, 3
  SW a0, 104(sp)
  ADDI a0, zero, 4
  SW s0, 108(sp)
  ADDI s0, zero, 8
  SW a0, 112(sp)
  ADDI a0, zero, 3
  SW s0, 116(sp)
  ADDI s0, zero, 7
  SW a0, 120(sp)
  ADDI a0, zero, 0
  SW s0, 124(sp)
  ADDI s0, zero, 3
  SW a0, 128(sp)
  ADDI a0, zero, 9
  SW s0, 136(sp)
  ADDI s0, zero, 7
  SW a0, 140(sp)
  ADDI a0, zero, 1
  SW s0, 144(sp)
  ADDI s0, zero, 4
  SW a0, 148(sp)
  ADDI a0, zero, 2
  SW s0, 152(sp)
  ADDI s0, zero, 4
  SW a0, 156(sp)
  ADDI a0, zero, 3
  SW s0, 160(sp)
  ADDI s0, zero, 6
  SW a0, 164(sp)
  ADDI a0, zero, 8
  SW s0, 168(sp)
  ADDI s0, zero, 0
  SW a0, 172(sp)
  ADDI a0, zero, 1
  SW s0, 176(sp)
  ADDI s0, zero, 5
  SW a0, 180(sp)
  ADDI a0, zero, 0
  SW s0, 184(sp)
  BNE a0, zero, bb84
  # implict jump to bb1
bb1:   # loop depth 0
  ADDI a0, zero, 1
  BNE a0, zero, bb83
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI a0, zero, 8
  # implict jump to bb3
bb3:   # loop depth 0
  XORI s0, a0, 9
  SLTIU s0, s0, 1
  BNE s0, zero, bb82
  # implict jump to bb4
bb4:   # loop depth 0
  SLTI s0, a0, 9
  BNE s0, zero, bb81
  # implict jump to bb5
bb5:   # loop depth 0
  ADD s0, a0, zero
  # implict jump to bb6
bb6:   # loop depth 0
  ADDIW a0, a0, 2
  XOR s1, a0, s0
  SLTIU s1, s1, 1
  BNE s1, zero, bb80
  # implict jump to bb7
bb7:   # loop depth 0
  BLT s0, a0, bb79
  # implict jump to bb8
bb8:   # loop depth 0
  ADD a0, s0, zero
  # implict jump to bb9
bb9:   # loop depth 0
  ADDIW s0, s0, 7
  XOR s1, s0, a0
  SLTIU s1, s1, 1
  BNE s1, zero, bb78
  # implict jump to bb10
bb10:   # loop depth 0
  BLT a0, s0, bb77
  # implict jump to bb11
bb11:   # loop depth 0
  ADD s0, a0, zero
  # implict jump to bb12
bb12:   # loop depth 0
  XOR s1, a0, s0
  SLTIU s1, s1, 1
  BNE s1, zero, bb76
  # implict jump to bb13
bb13:   # loop depth 0
  BLT s0, a0, bb75
  # implict jump to bb14
bb14:   # loop depth 0
  ADD a0, s0, zero
  # implict jump to bb15
bb15:   # loop depth 0
  ADDIW s0, s0, 1
  XOR s1, s0, a0
  SLTIU s1, s1, 1
  BNE s1, zero, bb74
  # implict jump to bb16
bb16:   # loop depth 0
  BLT a0, s0, bb73
  # implict jump to bb17
bb17:   # loop depth 0
  ADD s0, a0, zero
  # implict jump to bb18
bb18:   # loop depth 0
  ADDIW a0, a0, 9
  XOR s1, a0, s0
  SLTIU s1, s1, 1
  BNE s1, zero, bb72
  # implict jump to bb19
bb19:   # loop depth 0
  BLT s0, a0, bb71
  # implict jump to bb20
bb20:   # loop depth 0
  ADD a0, s0, zero
  # implict jump to bb21
bb21:   # loop depth 0
  ADDIW s0, s0, 3
  XOR s1, s0, a0
  SLTIU s1, s1, 1
  BNE s1, zero, bb70
  # implict jump to bb22
bb22:   # loop depth 0
  BLT a0, s0, bb69
  # implict jump to bb23
bb23:   # loop depth 0
  ADD s0, a0, zero
  # implict jump to bb24
bb24:   # loop depth 0
  ADDIW a0, a0, 4
  XOR s1, a0, s0
  SLTIU s1, s1, 1
  BNE s1, zero, bb68
  # implict jump to bb25
bb25:   # loop depth 0
  BLT s0, a0, bb67
  # implict jump to bb26
bb26:   # loop depth 0
  ADD a0, s0, zero
  # implict jump to bb27
bb27:   # loop depth 0
  ADDIW s0, s0, 8
  XOR s1, s0, a0
  SLTIU s1, s1, 1
  BNE s1, zero, bb66
  # implict jump to bb28
bb28:   # loop depth 0
  BLT a0, s0, bb65
  # implict jump to bb29
bb29:   # loop depth 0
  ADD s0, a0, zero
  # implict jump to bb30
bb30:   # loop depth 0
  ADDIW a0, a0, 3
  XOR s1, a0, s0
  SLTIU s1, s1, 1
  BNE s1, zero, bb64
  # implict jump to bb31
bb31:   # loop depth 0
  BLT s0, a0, bb63
  # implict jump to bb32
bb32:   # loop depth 0
  ADD a0, s0, zero
  # implict jump to bb33
bb33:   # loop depth 0
  ADDIW s0, s0, 7
  XOR s1, s0, a0
  SLTIU s1, s1, 1
  BNE s1, zero, bb62
  # implict jump to bb34
bb34:   # loop depth 0
  BLT a0, s0, bb61
  # implict jump to bb35
bb35:   # loop depth 0
  ADD s0, a0, zero
  # implict jump to bb36
bb36:   # loop depth 0
  XOR s1, a0, s0
  SLTIU s1, s1, 1
  BNE s1, zero, bb60
  # implict jump to bb37
bb37:   # loop depth 0
  BLT s0, a0, bb59
  # implict jump to bb38
bb38:   # loop depth 0
  ADD a0, s0, zero
  # implict jump to bb39
bb39:   # loop depth 0
  ADDI s0, zero, 256
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb40
bb40:   # loop depth 1
  ADDI s1, zero, 0
  SLLIW a0, s0, 2
  ADDIW s0, s0, -1
  ADDI t6, sp, 192
  ADD a0, t6, a0
  SW s1, -4(a0)
  BNE s0, zero, bb58
  # implict jump to bb41
bb41:   # loop depth 0
  ADDI a0, zero, 15
  SLTI a0, a0, 1
  XORI a0, a0, 1
  BNE a0, zero, bb43
  # implict jump to bb42
bb42:   # loop depth 0
  LW a0, 1204(sp)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s2, 16(sp)
  LD s3, 24(sp)
  LD s4, 32(sp)
  LD s5, 40(sp)
  LD s6, 48(sp)
  LD s7, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 1216
  JALR zero, 0(ra)
bb43:   # loop depth 0
  ADDI a0, zero, 13
  ADDI s2, zero, 1
  SLTI a0, a0, 1
  XORI s3, a0, 1
  # implict jump to bb44
bb44:   # loop depth 1
  BNE s3, zero, bb47
  # implict jump to bb45
bb45:   # loop depth 1
  ADDI a0, zero, 15
  ADDIW s2, s2, 1
  SLT a0, a0, s2
  XORI a0, a0, 1
  BNE a0, zero, bb46
  JAL zero, bb42
bb46:   # loop depth 1
  JAL zero, bb44
bb47:   # loop depth 1
  SLLIW a0, s2, 2
  ADDI s0, zero, 1
  ADDI t6, sp, 72
  ADD a0, t6, a0
  SLLIW s4, s2, 6
  LW s5, -4(a0)
  # implict jump to bb48
bb48:   # loop depth 2
  SLLIW a0, s0, 2
  ADDI t6, sp, 136
  ADD a0, t6, a0
  LW a0, -4(a0)
  XOR a0, s5, a0
  SLTIU a0, a0, 1
  BNE a0, zero, bb57
  # implict jump to bb49
bb49:   # loop depth 2
  ADDI a0, sp, 192
  ADD a0, a0, s4
  SH2ADD s6, s0, a0
  LW s1, -64(s6)
  LW a0, -4(s6)
  XOR s7, s1, a0
  SLTIU s7, s7, 1
  BNE s7, zero, bb56
  # implict jump to bb50
bb50:   # loop depth 2
  BLT a0, s1, bb55
  # implict jump to bb51
bb51:   # loop depth 2
  # implict jump to bb52
bb52:   # loop depth 2
  SW a0, 0(s6)
  # implict jump to bb53
bb53:   # loop depth 2
  ADDI a0, zero, 13
  ADDIW s0, s0, 1
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb54
  JAL zero, bb45
bb54:   # loop depth 2
  JAL zero, bb48
bb55:   # loop depth 2
  ADD a0, s1, zero
  JAL zero, bb52
bb56:   # loop depth 2
  ADD a0, s1, zero
  JAL zero, bb52
bb57:   # loop depth 2
  ADDI a0, sp, 192
  ADD a0, a0, s4
  SH2ADD a0, s0, a0
  LW s1, -68(a0)
  ADDIW s1, s1, 1
  SW s1, 0(a0)
  JAL zero, bb53
bb58:   # loop depth 1
  JAL zero, bb40
bb59:   # loop depth 0
  JAL zero, bb39
bb60:   # loop depth 0
  JAL zero, bb39
bb61:   # loop depth 0
  JAL zero, bb36
bb62:   # loop depth 0
  JAL zero, bb36
bb63:   # loop depth 0
  JAL zero, bb33
bb64:   # loop depth 0
  JAL zero, bb33
bb65:   # loop depth 0
  JAL zero, bb30
bb66:   # loop depth 0
  JAL zero, bb30
bb67:   # loop depth 0
  JAL zero, bb27
bb68:   # loop depth 0
  JAL zero, bb27
bb69:   # loop depth 0
  JAL zero, bb24
bb70:   # loop depth 0
  JAL zero, bb24
bb71:   # loop depth 0
  JAL zero, bb21
bb72:   # loop depth 0
  JAL zero, bb21
bb73:   # loop depth 0
  JAL zero, bb18
bb74:   # loop depth 0
  JAL zero, bb18
bb75:   # loop depth 0
  JAL zero, bb15
bb76:   # loop depth 0
  JAL zero, bb15
bb77:   # loop depth 0
  JAL zero, bb12
bb78:   # loop depth 0
  JAL zero, bb12
bb79:   # loop depth 0
  JAL zero, bb9
bb80:   # loop depth 0
  JAL zero, bb9
bb81:   # loop depth 0
  ADDI s0, zero, 9
  JAL zero, bb6
bb82:   # loop depth 0
  ADDI s0, zero, 9
  JAL zero, bb6
bb83:   # loop depth 0
  ADDI a0, zero, 12
  JAL zero, bb3
bb84:   # loop depth 0
  ADDI a0, zero, 12
  JAL zero, bb3
