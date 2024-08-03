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
  ADD s0, a0, zero
  ADDI a0, zero, 1
  SUBW s0, s0, a0
  SLLIW a0, s0, 2
  ADDI t5, sp, 200
  ADD s1, t5, a0
  ADDI a0, zero, 0
  SW a0, 0(s1)
  BNE s0, zero, bb87
  # implict jump to bb2
bb2:
  ADDI a0, zero, 8
  SW a0, 200(sp)
  ADDI a0, zero, 8
  SW a0, 204(sp)
  LW s0, 200(sp)
  LW a0, 88(sp)
  ADDW s0, s0, a0
  LW s1, 204(sp)
  XOR a0, s0, s1
  SLTIU a0, a0, 1
  BNE a0, zero, bb86
  # implict jump to bb3
bb3:
  BLT s1, s0, bb85
  # implict jump to bb4
bb4:
  ADD a0, s1, zero
  # implict jump to bb5
bb5:
  SW a0, 208(sp)
  LW s0, 204(sp)
  LW a0, 92(sp)
  ADDW s1, s0, a0
  LW s0, 208(sp)
  XOR a0, s1, s0
  SLTIU a0, a0, 1
  BNE a0, zero, bb84
  # implict jump to bb6
bb6:
  BLT s0, s1, bb83
  # implict jump to bb7
bb7:
  ADD a0, s0, zero
  # implict jump to bb8
bb8:
  SW a0, 212(sp)
  LW s0, 208(sp)
  LW a0, 96(sp)
  ADDW s1, s0, a0
  LW s0, 212(sp)
  XOR a0, s1, s0
  SLTIU a0, a0, 1
  BNE a0, zero, bb82
  # implict jump to bb9
bb9:
  BLT s0, s1, bb81
  # implict jump to bb10
bb10:
  ADD a0, s0, zero
  # implict jump to bb11
bb11:
  SW a0, 216(sp)
  LW s0, 212(sp)
  LW a0, 100(sp)
  ADDW s1, s0, a0
  LW s0, 216(sp)
  XOR a0, s1, s0
  SLTIU a0, a0, 1
  BNE a0, zero, bb80
  # implict jump to bb12
bb12:
  BLT s0, s1, bb79
  # implict jump to bb13
bb13:
  ADD a0, s0, zero
  # implict jump to bb14
bb14:
  SW a0, 220(sp)
  LW s0, 216(sp)
  LW a0, 104(sp)
  ADDW s1, s0, a0
  LW s0, 220(sp)
  XOR a0, s1, s0
  SLTIU a0, a0, 1
  BNE a0, zero, bb78
  # implict jump to bb15
bb15:
  BLT s0, s1, bb77
  # implict jump to bb16
bb16:
  ADD a0, s0, zero
  # implict jump to bb17
bb17:
  SW a0, 224(sp)
  LW s0, 220(sp)
  LW a0, 108(sp)
  ADDW s1, s0, a0
  LW s0, 224(sp)
  XOR a0, s1, s0
  SLTIU a0, a0, 1
  BNE a0, zero, bb76
  # implict jump to bb18
bb18:
  BLT s0, s1, bb75
  # implict jump to bb19
bb19:
  ADD a0, s0, zero
  # implict jump to bb20
bb20:
  SW a0, 228(sp)
  LW s0, 224(sp)
  LW a0, 112(sp)
  ADDW s1, s0, a0
  LW s0, 228(sp)
  XOR a0, s1, s0
  SLTIU a0, a0, 1
  BNE a0, zero, bb74
  # implict jump to bb21
bb21:
  BLT s0, s1, bb73
  # implict jump to bb22
bb22:
  ADD a0, s0, zero
  # implict jump to bb23
bb23:
  SW a0, 232(sp)
  LW s0, 228(sp)
  LW a0, 116(sp)
  ADDW s1, s0, a0
  LW s0, 232(sp)
  XOR a0, s1, s0
  SLTIU a0, a0, 1
  BNE a0, zero, bb72
  # implict jump to bb24
bb24:
  BLT s0, s1, bb71
  # implict jump to bb25
bb25:
  ADD a0, s0, zero
  # implict jump to bb26
bb26:
  SW a0, 236(sp)
  LW a0, 232(sp)
  LW s0, 120(sp)
  ADDW s1, a0, s0
  LW s0, 236(sp)
  XOR a0, s1, s0
  SLTIU a0, a0, 1
  BNE a0, zero, bb70
  # implict jump to bb27
bb27:
  BLT s0, s1, bb69
  # implict jump to bb28
bb28:
  ADD a0, s0, zero
  # implict jump to bb29
bb29:
  SW a0, 240(sp)
  LW s0, 236(sp)
  LW a0, 124(sp)
  ADDW s1, s0, a0
  LW s0, 240(sp)
  XOR a0, s1, s0
  SLTIU a0, a0, 1
  BNE a0, zero, bb68
  # implict jump to bb30
bb30:
  BLT s0, s1, bb67
  # implict jump to bb31
bb31:
  ADD a0, s0, zero
  # implict jump to bb32
bb32:
  SW a0, 244(sp)
  LW s0, 240(sp)
  LW a0, 128(sp)
  ADDW s1, s0, a0
  LW s0, 244(sp)
  XOR a0, s1, s0
  SLTIU a0, a0, 1
  BNE a0, zero, bb66
  # implict jump to bb33
bb33:
  BLT s0, s1, bb65
  # implict jump to bb34
bb34:
  ADD a0, s0, zero
  # implict jump to bb35
bb35:
  SW a0, 248(sp)
  LW s0, 244(sp)
  LW a0, 132(sp)
  ADDW s1, s0, a0
  LW s0, 248(sp)
  XOR a0, s1, s0
  SLTIU a0, a0, 1
  BNE a0, zero, bb64
  # implict jump to bb36
bb36:
  BLT s0, s1, bb63
  # implict jump to bb37
bb37:
  ADD a0, s0, zero
  # implict jump to bb38
bb38:
  SW a0, 252(sp)
  LW s0, 248(sp)
  LW a0, 136(sp)
  ADDW s1, s0, a0
  LW s0, 252(sp)
  XOR a0, s1, s0
  SLTIU a0, a0, 1
  BNE a0, zero, bb62
  # implict jump to bb39
bb39:
  BLT s0, s1, bb61
  # implict jump to bb40
bb40:
  ADD a0, s0, zero
  # implict jump to bb41
bb41:
  SW a0, 256(sp)
  LW a0, 256(sp)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 256
  # implict jump to bb42
bb42:
  ADD s0, a0, zero
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SLLIW s0, a0, 2
  ADDI t5, sp, 264
  ADD s0, t5, s0
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
  XORI s0, a0, 1
  ADDI a0, zero, 1
  # implict jump to bb46
bb46:
  ADD s1, a0, zero
  BNE s0, zero, bb49
  # implict jump to bb47
bb47:
  ADDIW s1, s1, 1
  ADDI a0, zero, 15
  SLT a0, a0, s1
  XORI a0, a0, 1
  BNE a0, zero, bb48
  JAL zero, bb44
bb48:
  ADD a0, s1, zero
  JAL zero, bb46
bb49:
  ADDI a0, zero, 1
  SUBW s2, s1, a0
  SLLIW a0, s2, 2
  ADDI t5, sp, 80
  ADD a0, t5, a0
  LW s3, 0(a0)
  ADDI a0, zero, 1
  # implict jump to bb50
bb50:
  ADD s4, a0, zero
  ADDI a0, zero, 1
  SUBW a0, s4, a0
  SLLIW s5, a0, 2
  ADDI a0, sp, 144
  ADD a0, a0, s5
  LW a0, 0(a0)
  XOR a0, s3, a0
  SLTIU a0, a0, 1
  BNE a0, zero, bb59
  # implict jump to bb51
bb51:
  SLLIW a0, s1, 6
  ADDI t5, sp, 264
  ADD s6, t5, a0
  SLLIW a0, s4, 2
  ADD s8, s6, a0
  SLLIW s7, s2, 6
  ADDI t5, sp, 264
  ADD s7, t5, s7
  ADD a0, s7, a0
  LW s7, 0(a0)
  ADD a0, s6, s5
  LW s5, 0(a0)
  XOR a0, s7, s5
  SLTIU a0, a0, 1
  BNE a0, zero, bb58
  # implict jump to bb52
bb52:
  BLT s5, s7, bb57
  # implict jump to bb53
bb53:
  ADD a0, s5, zero
  # implict jump to bb54
bb54:
  SW a0, 0(s8)
  # implict jump to bb55
bb55:
  ADDIW s4, s4, 1
  ADDI a0, zero, 13
  SLT a0, a0, s4
  XORI a0, a0, 1
  BNE a0, zero, bb56
  JAL zero, bb47
bb56:
  ADD a0, s4, zero
  JAL zero, bb50
bb57:
  ADD a0, s7, zero
  JAL zero, bb54
bb58:
  ADD a0, s7, zero
  JAL zero, bb54
bb59:
  SLLIW a0, s1, 6
  ADDI t5, sp, 264
  ADD a0, t5, a0
  SLLIW s6, s4, 2
  ADD a0, a0, s6
  SLLIW s6, s2, 6
  ADDI t5, sp, 264
  ADD s6, t5, s6
  ADD s5, s6, s5
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  SW s5, 0(a0)
  JAL zero, bb55
bb60:
  JAL zero, bb42
bb61:
  ADD a0, s1, zero
  JAL zero, bb41
bb62:
  ADD a0, s1, zero
  JAL zero, bb41
bb63:
  ADD a0, s1, zero
  JAL zero, bb38
bb64:
  ADD a0, s1, zero
  JAL zero, bb38
bb65:
  ADD a0, s1, zero
  JAL zero, bb35
bb66:
  ADD a0, s1, zero
  JAL zero, bb35
bb67:
  ADD a0, s1, zero
  JAL zero, bb32
bb68:
  ADD a0, s1, zero
  JAL zero, bb32
bb69:
  ADD a0, s1, zero
  JAL zero, bb29
bb70:
  ADD a0, s1, zero
  JAL zero, bb29
bb71:
  ADD a0, s1, zero
  JAL zero, bb26
bb72:
  ADD a0, s1, zero
  JAL zero, bb26
bb73:
  ADD a0, s1, zero
  JAL zero, bb23
bb74:
  ADD a0, s1, zero
  JAL zero, bb23
bb75:
  ADD a0, s1, zero
  JAL zero, bb20
bb76:
  ADD a0, s1, zero
  JAL zero, bb20
bb77:
  ADD a0, s1, zero
  JAL zero, bb17
bb78:
  ADD a0, s1, zero
  JAL zero, bb17
bb79:
  ADD a0, s1, zero
  JAL zero, bb14
bb80:
  ADD a0, s1, zero
  JAL zero, bb14
bb81:
  ADD a0, s1, zero
  JAL zero, bb11
bb82:
  ADD a0, s1, zero
  JAL zero, bb11
bb83:
  ADD a0, s1, zero
  JAL zero, bb8
bb84:
  ADD a0, s1, zero
  JAL zero, bb8
bb85:
  ADD a0, s0, zero
  JAL zero, bb5
bb86:
  ADD a0, s0, zero
  JAL zero, bb5
bb87:
  ADD a0, s0, zero
  JAL zero, bb1
