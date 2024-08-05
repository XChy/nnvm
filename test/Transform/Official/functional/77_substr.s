.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -1296
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s2, 16(sp)
  SD s3, 24(sp)
  SD s4, 32(sp)
  SD s5, 40(sp)
  SD s6, 48(sp)
  SD s7, 56(sp)
  SD s8, 64(sp)
  SD s0, 72(sp)
  ADDI a0, zero, 8
  SW a0, 80(sp)
  ADDI a0, zero, 7
  SW a0, 84(sp)
  ADDI a0, zero, 4
  SW a0, 88(sp)
  ADDI a0, zero, 1
  SW a0, 92(sp)
  ADDI a0, zero, 2
  SW a0, 96(sp)
  ADDI a0, zero, 7
  SW a0, 100(sp)
  ADDI a0, zero, 0
  SW a0, 104(sp)
  ADDI a0, zero, 1
  SW a0, 108(sp)
  ADDI a0, zero, 9
  SW a0, 112(sp)
  ADDI a0, zero, 3
  SW a0, 116(sp)
  ADDI a0, zero, 4
  SW a0, 120(sp)
  ADDI a0, zero, 8
  SW a0, 124(sp)
  ADDI a0, zero, 3
  SW a0, 128(sp)
  ADDI a0, zero, 7
  SW a0, 132(sp)
  ADDI a0, zero, 0
  SW a0, 136(sp)
  ADDI a0, zero, 3
  SW a0, 144(sp)
  ADDI a0, zero, 9
  SW a0, 148(sp)
  ADDI a0, zero, 7
  SW a0, 152(sp)
  ADDI a0, zero, 1
  SW a0, 156(sp)
  ADDI a0, zero, 4
  SW a0, 160(sp)
  ADDI a0, zero, 2
  SW a0, 164(sp)
  ADDI a0, zero, 4
  SW a0, 168(sp)
  ADDI a0, zero, 3
  SW a0, 172(sp)
  ADDI a0, zero, 6
  SW a0, 176(sp)
  ADDI a0, zero, 8
  SW a0, 180(sp)
  ADDI a0, zero, 0
  SW a0, 184(sp)
  ADDI a0, zero, 1
  SW a0, 188(sp)
  ADDI a0, zero, 5
  SW a0, 192(sp)
  ADDI a0, zero, 16
  # implict jump to bb1
bb1:
  ADDI s0, zero, 1
  SUBW a0, a0, s0
  SLLIW s0, a0, 2
  ADDI t6, sp, 200
  ADD s0, t6, s0
  ADDI s1, zero, 0
  SW s1, 0(s0)
  BNE a0, zero, bb87
  # implict jump to bb2
bb2:
  ADDI a0, zero, 8
  SW a0, 200(sp)
  ADDI a0, zero, 8
  SW a0, 204(sp)
  ADDI a0, zero, 0
  BNE a0, zero, bb86
  # implict jump to bb3
bb3:
  ADDI a0, zero, 1
  BNE a0, zero, bb85
  # implict jump to bb4
bb4:
  ADDI a0, zero, 8
  # implict jump to bb5
bb5:
  SW a0, 208(sp)
  XORI s0, a0, 9
  SLTIU s0, s0, 1
  BNE s0, zero, bb84
  # implict jump to bb6
bb6:
  SLTI s0, a0, 9
  BNE s0, zero, bb83
  # implict jump to bb7
bb7:
  ADD s0, a0, zero
  # implict jump to bb8
bb8:
  SW s0, 212(sp)
  ADDIW a0, a0, 2
  XOR s1, a0, s0
  SLTIU s1, s1, 1
  BNE s1, zero, bb82
  # implict jump to bb9
bb9:
  BLT s0, a0, bb81
  # implict jump to bb10
bb10:
  ADD a0, s0, zero
  # implict jump to bb11
bb11:
  SW a0, 216(sp)
  ADDIW s0, s0, 7
  XOR s1, s0, a0
  SLTIU s1, s1, 1
  BNE s1, zero, bb80
  # implict jump to bb12
bb12:
  BLT a0, s0, bb79
  # implict jump to bb13
bb13:
  ADD s0, a0, zero
  # implict jump to bb14
bb14:
  SW s0, 220(sp)
  XOR s1, a0, s0
  SLTIU s1, s1, 1
  BNE s1, zero, bb78
  # implict jump to bb15
bb15:
  BLT s0, a0, bb77
  # implict jump to bb16
bb16:
  ADD a0, s0, zero
  # implict jump to bb17
bb17:
  SW a0, 224(sp)
  ADDIW s0, s0, 1
  XOR s1, s0, a0
  SLTIU s1, s1, 1
  BNE s1, zero, bb76
  # implict jump to bb18
bb18:
  BLT a0, s0, bb75
  # implict jump to bb19
bb19:
  ADD s0, a0, zero
  # implict jump to bb20
bb20:
  SW s0, 228(sp)
  ADDIW a0, a0, 9
  XOR s1, a0, s0
  SLTIU s1, s1, 1
  BNE s1, zero, bb74
  # implict jump to bb21
bb21:
  BLT s0, a0, bb73
  # implict jump to bb22
bb22:
  ADD a0, s0, zero
  # implict jump to bb23
bb23:
  SW a0, 232(sp)
  ADDIW s0, s0, 3
  XOR s1, s0, a0
  SLTIU s1, s1, 1
  BNE s1, zero, bb72
  # implict jump to bb24
bb24:
  BLT a0, s0, bb71
  # implict jump to bb25
bb25:
  ADD s0, a0, zero
  # implict jump to bb26
bb26:
  SW s0, 236(sp)
  ADDIW a0, a0, 4
  XOR s1, a0, s0
  SLTIU s1, s1, 1
  BNE s1, zero, bb70
  # implict jump to bb27
bb27:
  BLT s0, a0, bb69
  # implict jump to bb28
bb28:
  ADD a0, s0, zero
  # implict jump to bb29
bb29:
  SW a0, 240(sp)
  ADDIW s0, s0, 8
  XOR s1, s0, a0
  SLTIU s1, s1, 1
  BNE s1, zero, bb68
  # implict jump to bb30
bb30:
  BLT a0, s0, bb67
  # implict jump to bb31
bb31:
  ADD s0, a0, zero
  # implict jump to bb32
bb32:
  SW s0, 244(sp)
  ADDIW a0, a0, 3
  XOR s1, a0, s0
  SLTIU s1, s1, 1
  BNE s1, zero, bb66
  # implict jump to bb33
bb33:
  BLT s0, a0, bb65
  # implict jump to bb34
bb34:
  ADD a0, s0, zero
  # implict jump to bb35
bb35:
  SW a0, 248(sp)
  ADDIW s0, s0, 7
  XOR s1, s0, a0
  SLTIU s1, s1, 1
  BNE s1, zero, bb64
  # implict jump to bb36
bb36:
  BLT a0, s0, bb63
  # implict jump to bb37
bb37:
  ADD s0, a0, zero
  # implict jump to bb38
bb38:
  SW s0, 252(sp)
  XOR s1, a0, s0
  SLTIU s1, s1, 1
  BNE s1, zero, bb62
  # implict jump to bb39
bb39:
  BLT s0, a0, bb61
  # implict jump to bb40
bb40:
  ADD a0, s0, zero
  # implict jump to bb41
bb41:
  SW a0, 256(sp)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 256
  # implict jump to bb42
bb42:
  ADDI s0, zero, 1
  SUBW a0, a0, s0
  SLLIW s0, a0, 2
  ADDI t6, sp, 264
  ADD s0, t6, s0
  SW zero, 0(s0)
  BNE a0, zero, bb60
  # implict jump to bb43
bb43:
  ADDI a0, zero, 15
  SLTI a0, a0, 1
  XORI a0, a0, 1
  BNE a0, zero, bb45
  # implict jump to bb44
bb44:
  LW a0, 1276(sp)
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
  LD s8, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 1296
  JALR zero, 0(ra)
bb45:
  ADDI a0, zero, 13
  SLTI a0, a0, 1
  XORI s3, a0, 1
  ADDI s2, zero, 1
  # implict jump to bb46
bb46:
  BNE s3, zero, bb49
  # implict jump to bb47
bb47:
  ADDIW s2, s2, 1
  ADDI a0, zero, 15
  SLT a0, a0, s2
  XORI a0, a0, 1
  BNE a0, zero, bb48
  JAL zero, bb44
bb48:
  JAL zero, bb46
bb49:
  ADDI a0, zero, 1
  SUBW s4, s2, a0
  SLLIW a0, s4, 2
  ADDI t6, sp, 80
  ADD a0, t6, a0
  LW s5, 0(a0)
  ADDI s1, zero, 1
  # implict jump to bb50
bb50:
  ADDI a0, zero, 1
  SUBW a0, s1, a0
  SLLIW a0, a0, 2
  ADDI t6, sp, 144
  ADD s0, t6, a0
  LW s0, 0(s0)
  XOR s0, s5, s0
  SLTIU s0, s0, 1
  BNE s0, zero, bb59
  # implict jump to bb51
bb51:
  SLLIW s0, s2, 6
  ADDI t6, sp, 264
  ADD s7, t6, s0
  SLLIW s0, s1, 2
  ADD s6, s7, s0
  SLLIW s8, s4, 6
  ADDI t6, sp, 264
  ADD s8, t6, s8
  ADD s0, s8, s0
  LW s0, 0(s0)
  ADD a0, s7, a0
  LW a0, 0(a0)
  XOR s7, s0, a0
  SLTIU s7, s7, 1
  BNE s7, zero, bb58
  # implict jump to bb52
bb52:
  BLT a0, s0, bb57
  # implict jump to bb53
bb53:
  ADD s0, a0, zero
  # implict jump to bb54
bb54:
  SW s0, 0(s6)
  # implict jump to bb55
bb55:
  ADDIW s1, s1, 1
  ADDI a0, zero, 13
  SLT a0, a0, s1
  XORI a0, a0, 1
  BNE a0, zero, bb56
  JAL zero, bb47
bb56:
  JAL zero, bb50
bb57:
  JAL zero, bb54
bb58:
  JAL zero, bb54
bb59:
  SLLIW s0, s2, 6
  ADDI t6, sp, 264
  ADD s0, t6, s0
  SLLIW s6, s1, 2
  ADD s0, s0, s6
  SLLIW s6, s4, 6
  ADDI t6, sp, 264
  ADD s6, t6, s6
  ADD a0, s6, a0
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(s0)
  JAL zero, bb55
bb60:
  JAL zero, bb42
bb61:
  JAL zero, bb41
bb62:
  JAL zero, bb41
bb63:
  JAL zero, bb38
bb64:
  JAL zero, bb38
bb65:
  JAL zero, bb35
bb66:
  JAL zero, bb35
bb67:
  JAL zero, bb32
bb68:
  JAL zero, bb32
bb69:
  JAL zero, bb29
bb70:
  JAL zero, bb29
bb71:
  JAL zero, bb26
bb72:
  JAL zero, bb26
bb73:
  JAL zero, bb23
bb74:
  JAL zero, bb23
bb75:
  JAL zero, bb20
bb76:
  JAL zero, bb20
bb77:
  JAL zero, bb17
bb78:
  JAL zero, bb17
bb79:
  JAL zero, bb14
bb80:
  JAL zero, bb14
bb81:
  JAL zero, bb11
bb82:
  JAL zero, bb11
bb83:
  ADDI s0, zero, 9
  JAL zero, bb8
bb84:
  ADDI s0, zero, 9
  JAL zero, bb8
bb85:
  ADDI a0, zero, 12
  JAL zero, bb5
bb86:
  ADDI a0, zero, 12
  JAL zero, bb5
bb87:
  JAL zero, bb1
