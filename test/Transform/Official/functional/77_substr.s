.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -1232
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s4, 16(sp)
  SD s5, 24(sp)
  SD s6, 32(sp)
  SD s7, 40(sp)
  SD s8, 48(sp)
  SD s9, 56(sp)
  SD s0, 64(sp)
  SD s1, 72(sp)
  SD s2, 80(sp)
  ADDI a0, zero, 8
  SW a0, 88(sp)
  ADDI a0, zero, 7
  SW a0, 92(sp)
  ADDI a0, zero, 4
  SW a0, 96(sp)
  ADDI a0, zero, 1
  SW a0, 100(sp)
  ADDI a0, zero, 2
  SW a0, 104(sp)
  ADDI a0, zero, 7
  SW a0, 108(sp)
  ADDI a0, zero, 0
  SW a0, 112(sp)
  ADDI a0, zero, 1
  SW a0, 116(sp)
  ADDI a0, zero, 9
  SW a0, 120(sp)
  ADDI a0, zero, 3
  SW a0, 124(sp)
  ADDI a0, zero, 4
  SW a0, 128(sp)
  ADDI a0, zero, 8
  SW a0, 132(sp)
  ADDI a0, zero, 3
  SW a0, 136(sp)
  ADDI a0, zero, 7
  SW a0, 140(sp)
  ADDI a0, zero, 0
  SW a0, 144(sp)
  ADDI a0, zero, 3
  SW a0, 152(sp)
  ADDI a0, zero, 9
  SW a0, 156(sp)
  ADDI a0, zero, 7
  SW a0, 160(sp)
  ADDI a0, zero, 1
  SW a0, 164(sp)
  ADDI a0, zero, 4
  SW a0, 168(sp)
  ADDI a0, zero, 2
  SW a0, 172(sp)
  ADDI a0, zero, 4
  SW a0, 176(sp)
  ADDI a0, zero, 3
  SW a0, 180(sp)
  ADDI a0, zero, 6
  SW a0, 184(sp)
  ADDI a0, zero, 8
  SW a0, 188(sp)
  ADDI a0, zero, 0
  SW a0, 192(sp)
  ADDI a0, zero, 1
  SW a0, 196(sp)
  ADDI a0, zero, 5
  SW a0, 200(sp)
  ADDI a0, zero, 0
  BNE a0, zero, bb84
  # implict jump to bb1
bb1:
  ADDI a0, zero, 1
  BNE a0, zero, bb83
  # implict jump to bb2
bb2:
  ADDI a0, zero, 8
  # implict jump to bb3
bb3:
  XORI s0, a0, 9
  SLTIU s0, s0, 1
  BNE s0, zero, bb82
  # implict jump to bb4
bb4:
  SLTI s0, a0, 9
  BNE s0, zero, bb81
  # implict jump to bb5
bb5:
  ADD s0, a0, zero
  # implict jump to bb6
bb6:
  ADDIW a0, a0, 2
  XOR s1, a0, s0
  SLTIU s1, s1, 1
  BNE s1, zero, bb80
  # implict jump to bb7
bb7:
  BLT s0, a0, bb79
  # implict jump to bb8
bb8:
  ADD a0, s0, zero
  # implict jump to bb9
bb9:
  ADDIW s0, s0, 7
  XOR s1, s0, a0
  SLTIU s1, s1, 1
  BNE s1, zero, bb78
  # implict jump to bb10
bb10:
  BLT a0, s0, bb77
  # implict jump to bb11
bb11:
  ADD s0, a0, zero
  # implict jump to bb12
bb12:
  XOR s1, a0, s0
  SLTIU s1, s1, 1
  BNE s1, zero, bb76
  # implict jump to bb13
bb13:
  BLT s0, a0, bb75
  # implict jump to bb14
bb14:
  ADD a0, s0, zero
  # implict jump to bb15
bb15:
  ADDIW s0, s0, 1
  XOR s1, s0, a0
  SLTIU s1, s1, 1
  BNE s1, zero, bb74
  # implict jump to bb16
bb16:
  BLT a0, s0, bb73
  # implict jump to bb17
bb17:
  ADD s0, a0, zero
  # implict jump to bb18
bb18:
  ADDIW a0, a0, 9
  XOR s1, a0, s0
  SLTIU s1, s1, 1
  BNE s1, zero, bb72
  # implict jump to bb19
bb19:
  BLT s0, a0, bb71
  # implict jump to bb20
bb20:
  ADD a0, s0, zero
  # implict jump to bb21
bb21:
  ADDIW s0, s0, 3
  XOR s1, s0, a0
  SLTIU s1, s1, 1
  BNE s1, zero, bb70
  # implict jump to bb22
bb22:
  BLT a0, s0, bb69
  # implict jump to bb23
bb23:
  ADD s0, a0, zero
  # implict jump to bb24
bb24:
  ADDIW a0, a0, 4
  XOR s1, a0, s0
  SLTIU s1, s1, 1
  BNE s1, zero, bb68
  # implict jump to bb25
bb25:
  BLT s0, a0, bb67
  # implict jump to bb26
bb26:
  ADD a0, s0, zero
  # implict jump to bb27
bb27:
  ADDIW s0, s0, 8
  XOR s1, s0, a0
  SLTIU s1, s1, 1
  BNE s1, zero, bb66
  # implict jump to bb28
bb28:
  BLT a0, s0, bb65
  # implict jump to bb29
bb29:
  ADD s0, a0, zero
  # implict jump to bb30
bb30:
  ADDIW a0, a0, 3
  XOR s1, a0, s0
  SLTIU s1, s1, 1
  BNE s1, zero, bb64
  # implict jump to bb31
bb31:
  BLT s0, a0, bb63
  # implict jump to bb32
bb32:
  ADD a0, s0, zero
  # implict jump to bb33
bb33:
  ADDIW s0, s0, 7
  XOR s1, s0, a0
  SLTIU s1, s1, 1
  BNE s1, zero, bb62
  # implict jump to bb34
bb34:
  BLT a0, s0, bb61
  # implict jump to bb35
bb35:
  ADD s0, a0, zero
  # implict jump to bb36
bb36:
  XOR s1, a0, s0
  SLTIU s1, s1, 1
  BNE s1, zero, bb60
  # implict jump to bb37
bb37:
  BLT s0, a0, bb59
  # implict jump to bb38
bb38:
  ADD a0, s0, zero
  # implict jump to bb39
bb39:
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 256
  # implict jump to bb40
bb40:
  ADDI s0, zero, 1
  SUBW a0, a0, s0
  SLLIW s0, a0, 2
  ADDI t6, sp, 208
  ADD s0, t6, s0
  ADDI s1, zero, 0
  SW s1, 0(s0)
  BNE a0, zero, bb58
  # implict jump to bb41
bb41:
  ADDI a0, zero, 15
  SLTI a0, a0, 1
  XORI a0, a0, 1
  BNE a0, zero, bb43
  # implict jump to bb42
bb42:
  LW a0, 1220(sp)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s4, 16(sp)
  LD s5, 24(sp)
  LD s6, 32(sp)
  LD s7, 40(sp)
  LD s8, 48(sp)
  LD s9, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  ADDI sp, sp, 1232
  JALR zero, 0(ra)
bb43:
  ADDI a0, zero, 13
  SLTI a0, a0, 1
  XORI s3, a0, 1
  ADDI s0, zero, 1
  # implict jump to bb44
bb44:
  BNE s3, zero, bb47
  # implict jump to bb45
bb45:
  ADDIW s0, s0, 1
  ADDI a0, zero, 15
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb46
  JAL zero, bb42
bb46:
  JAL zero, bb44
bb47:
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SLLIW s1, a0, 2
  ADDI t6, sp, 88
  ADD s1, t6, s1
  LW s4, 0(s1)
  SLLIW s5, s0, 6
  SLLIW s6, a0, 6
  ADDI s2, zero, 1
  # implict jump to bb48
bb48:
  ADDI a0, zero, 1
  SUBW a0, s2, a0
  SLLIW s1, a0, 2
  ADDI a0, sp, 152
  ADD a0, a0, s1
  LW a0, 0(a0)
  XOR a0, s4, a0
  SLTIU a0, a0, 1
  SLLIW s8, s2, 2
  BNE a0, zero, bb57
  # implict jump to bb49
bb49:
  ADDI t6, sp, 208
  ADD s9, t6, s5
  ADD s7, s9, s8
  ADDI a0, sp, 208
  ADD a0, a0, s6
  ADD a0, a0, s8
  LW a0, 0(a0)
  ADD s1, s9, s1
  LW s1, 0(s1)
  XOR s8, a0, s1
  SLTIU s8, s8, 1
  BNE s8, zero, bb56
  # implict jump to bb50
bb50:
  BLT s1, a0, bb55
  # implict jump to bb51
bb51:
  ADD a0, s1, zero
  # implict jump to bb52
bb52:
  SW a0, 0(s7)
  # implict jump to bb53
bb53:
  ADDIW s2, s2, 1
  ADDI a0, zero, 13
  SLT a0, a0, s2
  XORI a0, a0, 1
  BNE a0, zero, bb54
  JAL zero, bb45
bb54:
  JAL zero, bb48
bb55:
  JAL zero, bb52
bb56:
  JAL zero, bb52
bb57:
  ADDI a0, sp, 208
  ADD a0, a0, s5
  ADD a0, a0, s8
  ADDI t6, sp, 208
  ADD s7, t6, s6
  ADD s1, s7, s1
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  SW s1, 0(a0)
  JAL zero, bb53
bb58:
  JAL zero, bb40
bb59:
  JAL zero, bb39
bb60:
  JAL zero, bb39
bb61:
  JAL zero, bb36
bb62:
  JAL zero, bb36
bb63:
  JAL zero, bb33
bb64:
  JAL zero, bb33
bb65:
  JAL zero, bb30
bb66:
  JAL zero, bb30
bb67:
  JAL zero, bb27
bb68:
  JAL zero, bb27
bb69:
  JAL zero, bb24
bb70:
  JAL zero, bb24
bb71:
  JAL zero, bb21
bb72:
  JAL zero, bb21
bb73:
  JAL zero, bb18
bb74:
  JAL zero, bb18
bb75:
  JAL zero, bb15
bb76:
  JAL zero, bb15
bb77:
  JAL zero, bb12
bb78:
  JAL zero, bb12
bb79:
  JAL zero, bb9
bb80:
  JAL zero, bb9
bb81:
  ADDI s0, zero, 9
  JAL zero, bb6
bb82:
  ADDI s0, zero, 9
  JAL zero, bb6
bb83:
  ADDI a0, zero, 12
  JAL zero, bb3
bb84:
  ADDI a0, zero, 12
  JAL zero, bb3
