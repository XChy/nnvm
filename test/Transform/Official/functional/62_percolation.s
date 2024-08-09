.global findfa
.global main
.section .bss

array:
.space 440
.section .data
n:
.word 0x00000000

.section .text
findfa:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  LA s1, array
  SLLIW s0, a0, 2
  ADD s0, s1, s0
  LW s1, 0(s0)
  XOR s1, s1, a0
  SLTIU s1, s1, 1
  BNE s1, zero, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  LW a0, 0(s0)
  CALL findfa
  SW a0, 0(s0)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:   # loop depth 0
  ADDI sp, sp, -240
  SD s0, 112(sp)
  SD ra, 120(sp)
  SD s1, 128(sp)
  SD s2, 136(sp)
  SD s4, 144(sp)
  SD s5, 152(sp)
  SD s6, 160(sp)
  SD s7, 168(sp)
  SD s8, 176(sp)
  SD s9, 184(sp)
  SD s10, 192(sp)
  SD s11, 208(sp)
  ADDI s0, zero, 17
  ADD s1, zero, zero
  SW s1, 96(sp)
  SLTI s2, s0, 1
  ADD s0, zero, zero
  SB s0, 15(sp)
  ADD s11, zero, zero
  ADD s0, zero, zero
  SB s0, 5(sp)
  ADDI s0, zero, 1
  SW s0, 64(sp)
  ADD s0, zero, zero
  SB s0, 8(sp)
  ADD s10, zero, zero
  ADD s4, zero, zero
  ADD s0, zero, zero
  SW s0, 32(sp)
  XORI s0, s2, 1
  SB s0, 14(sp)
  # implict jump to bb4
bb4:   # loop depth 1
  LA s0, n
  SD s0, 200(sp)
  LW s0, 64(sp)
  SW s0, 64(sp)
  ADDI s0, zero, 4
  SW s0, 104(sp)
  LW s0, 32(sp)
  SW s0, 32(sp)
  LW s0, 32(sp)
  SW s0, 80(sp)
  SB s4, 13(sp)
  LB s0, 8(sp)
  SB s0, 8(sp)
  LB s0, 5(sp)
  SB s0, 5(sp)
  LB s0, 15(sp)
  SB s0, 15(sp)
  LW s0, 96(sp)
  SW s0, 96(sp)
  LW s0, 64(sp)
  ADDIW s4, s0, -1
  SW s4, 84(sp)
  LW s0, 104(sp)
  LD s1, 200(sp)
  SW s0, 0(s1)
  LB s4, 14(sp)
  BNE s4, zero, bb55
  # implict jump to bb5
bb5:   # loop depth 1
  ADD s0, zero, zero
  SB s0, 4(sp)
  LW s0, 96(sp)
  SW s0, 96(sp)
  LB s0, 15(sp)
  SB s0, 15(sp)
  SB s11, 3(sp)
  LB s0, 5(sp)
  SB s0, 5(sp)
  ADD s0, zero, zero
  SW s0, 16(sp)
  LB s0, 8(sp)
  SB s0, 8(sp)
  LB s4, 13(sp)
  LW s1, 80(sp)
  SW s1, 32(sp)
  LW s1, 32(sp)
  SW s1, 32(sp)
  ADD s5, zero, zero
  # implict jump to bb6
bb6:   # loop depth 2
  SW s5, 92(sp)
  LB s0, 4(sp)
  SB s0, 4(sp)
  LW s1, 32(sp)
  SW s1, 32(sp)
  LW s1, 32(sp)
  SW s1, 88(sp)
  SB s10, 12(sp)
  LB s0, 8(sp)
  SB s0, 8(sp)
  LW s0, 16(sp)
  SW s0, 100(sp)
  LW s0, 100(sp)
  SW s0, 100(sp)
  LB s0, 5(sp)
  SB s0, 5(sp)
  LB s11, 3(sp)
  LB s1, 15(sp)
  SB s1, 15(sp)
  LW s1, 96(sp)
  SW s1, 96(sp)
  CALL getint
  ADD s1, a0, zero
  SW s1, 60(sp)
  LB s0, 4(sp)
  XORI s8, s0, 1
  LW s5, 92(sp)
  ADDIW s1, s5, 1
  SW s1, 24(sp)
  CALL getint
  ADD s7, a0, zero
  BNE s8, zero, bb15
  # implict jump to bb7
bb7:   # loop depth 2
  LW s1, 88(sp)
  SW s1, 36(sp)
  LW s1, 36(sp)
  SW s1, 36(sp)
  SB s4, 2(sp)
  LB s10, 12(sp)
  LB s0, 8(sp)
  LW s1, 100(sp)
  SW s1, 100(sp)
  LB s1, 5(sp)
  SB s1, 5(sp)
  LB s1, 5(sp)
  SB s1, 10(sp)
  LB s1, 15(sp)
  SB s1, 15(sp)
  LW s1, 96(sp)
  SW s1, 96(sp)
  # implict jump to bb8
bb8:   # loop depth 2
  LW s1, 100(sp)
  SW s1, 100(sp)
  LW s1, 100(sp)
  SW s1, 28(sp)
  LW s1, 96(sp)
  SW s1, 96(sp)
  LB s1, 15(sp)
  SB s1, 15(sp)
  LB s1, 10(sp)
  SB s1, 5(sp)
  LB s1, 5(sp)
  SB s1, 5(sp)
  SB s0, 8(sp)
  LB s4, 2(sp)
  LW s1, 36(sp)
  SW s1, 32(sp)
  LW s1, 24(sp)
  SLTI s1, s1, 10
  SB s1, 1(sp)
  LW s1, 28(sp)
  SLTU s0, zero, s1
  SB s0, 4(sp)
  LB s1, 1(sp)
  BNE s1, zero, bb14
  # implict jump to bb9
bb9:   # loop depth 1
  LB s0, 4(sp)
  XORI s8, s0, 1
  BNE s8, zero, bb13
  # implict jump to bb10
bb10:   # loop depth 1
  LW s6, 84(sp)
  BNE s6, zero, bb12
  # implict jump to bb11
bb11:   # loop depth 0
  ADD a0, zero, zero
  LD s0, 112(sp)
  LD ra, 120(sp)
  LD s1, 128(sp)
  LD s2, 136(sp)
  LD s4, 144(sp)
  LD s5, 152(sp)
  LD s6, 160(sp)
  LD s7, 168(sp)
  LD s8, 176(sp)
  LD s9, 184(sp)
  LD s10, 192(sp)
  LD s11, 208(sp)
  ADDI sp, sp, 240
  JALR zero, 0(ra)
bb12:   # loop depth 1
  LW s1, 96(sp)
  SW s1, 96(sp)
  LB s1, 15(sp)
  SB s1, 15(sp)
  LB s0, 5(sp)
  SB s0, 5(sp)
  LW s1, 84(sp)
  SW s1, 64(sp)
  LW s1, 64(sp)
  SW s1, 64(sp)
  LB s0, 8(sp)
  SB s0, 8(sp)
  LW s0, 32(sp)
  SW s0, 32(sp)
  JAL zero, bb4
bb13:   # loop depth 1
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb10
bb14:   # loop depth 2
  LB s0, 4(sp)
  SB s0, 4(sp)
  LW s1, 96(sp)
  SW s1, 96(sp)
  LB s1, 15(sp)
  SB s1, 15(sp)
  SB s11, 3(sp)
  LB s0, 5(sp)
  SB s0, 5(sp)
  LW s1, 28(sp)
  SW s1, 16(sp)
  LB s0, 8(sp)
  SB s0, 8(sp)
  LW s1, 32(sp)
  SW s1, 32(sp)
  LW s5, 24(sp)
  JAL zero, bb6
bb15:   # loop depth 2
  LA s0, n
  LW s1, 60(sp)
  ADDIW s2, s1, -1
  LA s5, array
  LW s1, 60(sp)
  XORI s4, s1, 1
  LW s0, 0(s0)
  SLTIU s4, s4, 1
  MULW s0, s0, s2
  ADDW s0, s0, s7
  SW s0, 36(sp)
  LW s0, 36(sp)
  SLLIW s2, s0, 2
  ADD s8, s5, s2
  LW s0, 36(sp)
  SW s0, 0(s8)
  BNE s4, zero, bb53
  # implict jump to bb16
bb16:   # loop depth 2
  LA s2, n
  LW s2, 0(s2)
  LW s0, 60(sp)
  XOR s2, s0, s2
  SLTIU s2, s2, 1
  BNE s2, zero, bb51
  # implict jump to bb17
bb17:   # loop depth 2
  LA s2, n
  LW s2, 0(s2)
  BLT s7, s2, bb50
  # implict jump to bb18
bb18:   # loop depth 2
  ADD s10, zero, zero
  # implict jump to bb19
bb19:   # loop depth 2
  BNE s10, zero, bb48
  # implict jump to bb20
bb20:   # loop depth 2
  ADDI s4, zero, 1
  BLT s4, s7, bb47
  # implict jump to bb21
bb21:   # loop depth 2
  ADD s11, zero, zero
  # implict jump to bb22
bb22:   # loop depth 2
  BNE s11, zero, bb45
  # implict jump to bb23
bb23:   # loop depth 2
  LA s5, n
  LW s5, 0(s5)
  LW s0, 60(sp)
  BLT s0, s5, bb44
  # implict jump to bb24
bb24:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb25
bb25:   # loop depth 2
  BNE s0, zero, bb42
  # implict jump to bb26
bb26:   # loop depth 2
  ADDI s8, zero, 1
  LW s1, 60(sp)
  BLT s8, s1, bb41
  # implict jump to bb27
bb27:   # loop depth 2
  ADD s1, zero, zero
  SB s1, 10(sp)
  # implict jump to bb28
bb28:   # loop depth 2
  LB s1, 10(sp)
  SB s1, 10(sp)
  LB s1, 10(sp)
  BNE s1, zero, bb39
  # implict jump to bb29
bb29:   # loop depth 2
  LA s8, array
  LW s8, 0(s8)
  XORI s8, s8, -1
  BNE s8, zero, bb38
  # implict jump to bb30
bb30:   # loop depth 2
  ADD s1, zero, zero
  SB s1, 15(sp)
  # implict jump to bb31
bb31:   # loop depth 2
  LB s1, 15(sp)
  SB s1, 15(sp)
  LB s1, 15(sp)
  BNE s1, zero, bb37
  # implict jump to bb32
bb32:   # loop depth 2
  ADD s1, zero, zero
  SB s1, 2(sp)
  # implict jump to bb33
bb33:   # loop depth 2
  LB s1, 2(sp)
  SB s1, 2(sp)
  LB s1, 2(sp)
  BNE s1, zero, bb36
  # implict jump to bb34
bb34:   # loop depth 2
  LW s1, 100(sp)
  SW s1, 100(sp)
  LW s1, 96(sp)
  SW s1, 96(sp)
  # implict jump to bb35
bb35:   # loop depth 2
  LW s1, 96(sp)
  SW s1, 96(sp)
  LW s1, 100(sp)
  SW s1, 100(sp)
  LW s1, 36(sp)
  SW s1, 36(sp)
  LB s1, 2(sp)
  SB s1, 2(sp)
  LB s1, 10(sp)
  SB s1, 10(sp)
  LB s1, 15(sp)
  SB s1, 15(sp)
  LW s1, 100(sp)
  SW s1, 100(sp)
  LW s1, 96(sp)
  SW s1, 96(sp)
  JAL zero, bb8
bb36:   # loop depth 2
  LW a0, 24(sp)
  ADDI s1, zero, 1
  SW s1, 100(sp)
  LW s1, 24(sp)
  SW s1, 96(sp)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb35
bb37:   # loop depth 2
  ADD a0, zero, zero
  CALL findfa
  ADD s9, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  ADD s8, a0, zero
  XOR s8, s9, s8
  SLTIU s1, s8, 1
  SB s1, 2(sp)
  LB s1, 2(sp)
  SB s1, 2(sp)
  JAL zero, bb33
bb38:   # loop depth 2
  LA s8, array
  LW s8, 68(s8)
  XORI s8, s8, -1
  SLTU s1, zero, s8
  SB s1, 15(sp)
  LB s1, 15(sp)
  SB s1, 15(sp)
  JAL zero, bb31
bb39:   # loop depth 2
  LA s8, n
  LW a0, 36(sp)
  LW s8, 0(s8)
  LW s1, 36(sp)
  SUBW s8, s1, s8
  CALL findfa
  SW a0, 44(sp)
  ADD a0, s8, zero
  CALL findfa
  ADD s1, a0, zero
  SW s1, 40(sp)
  LW s1, 40(sp)
  LW s2, 44(sp)
  BNE s2, s1, bb40
  JAL zero, bb29
bb40:   # loop depth 2
  LA s9, array
  LW s1, 44(sp)
  SLLIW s8, s1, 2
  ADD s8, s9, s8
  LW s1, 40(sp)
  SW s1, 0(s8)
  JAL zero, bb29
bb41:   # loop depth 2
  LA s8, n
  LA s9, array
  LW s8, 0(s8)
  LW s1, 36(sp)
  SUBW s8, s1, s8
  SLLIW s8, s8, 2
  ADD s8, s9, s8
  LW s8, 0(s8)
  XORI s8, s8, -1
  SLTU s1, zero, s8
  SB s1, 10(sp)
  LB s1, 10(sp)
  SB s1, 10(sp)
  JAL zero, bb28
bb42:   # loop depth 2
  LA s8, n
  LW a0, 36(sp)
  LW s8, 0(s8)
  LW s1, 36(sp)
  ADDW s8, s1, s8
  CALL findfa
  SW a0, 52(sp)
  ADD a0, s8, zero
  CALL findfa
  ADD s1, a0, zero
  SW s1, 48(sp)
  LW s1, 48(sp)
  LW s2, 52(sp)
  BNE s2, s1, bb43
  JAL zero, bb26
bb43:   # loop depth 2
  LA s9, array
  LW s1, 52(sp)
  SLLIW s8, s1, 2
  ADD s8, s9, s8
  LW s1, 48(sp)
  SW s1, 0(s8)
  JAL zero, bb26
bb44:   # loop depth 2
  LW s0, 36(sp)
  ADDW s5, s0, s5
  LA s8, array
  SLLIW s5, s5, 2
  ADD s5, s8, s5
  LW s5, 0(s5)
  XORI s5, s5, -1
  SLTU s0, zero, s5
  JAL zero, bb25
bb45:   # loop depth 2
  LW a0, 36(sp)
  LW s0, 36(sp)
  ADDIW s5, s0, -1
  CALL findfa
  SW a0, 56(sp)
  ADD a0, s5, zero
  CALL findfa
  ADD s5, a0, zero
  LW s0, 56(sp)
  BNE s0, s5, bb46
  JAL zero, bb23
bb46:   # loop depth 2
  LA s9, array
  LW s0, 56(sp)
  SLLIW s8, s0, 2
  ADD s8, s9, s8
  SW s5, 0(s8)
  JAL zero, bb23
bb47:   # loop depth 2
  LW s4, -4(s8)
  XORI s4, s4, -1
  SLTU s11, zero, s4
  JAL zero, bb22
bb48:   # loop depth 2
  LW a0, 36(sp)
  LW s0, 36(sp)
  ADDIW s4, s0, 1
  CALL findfa
  ADD s5, a0, zero
  ADD a0, s4, zero
  CALL findfa
  ADD s4, a0, zero
  BNE s5, s4, bb49
  JAL zero, bb20
bb49:   # loop depth 2
  LA s9, array
  SLLIW s5, s5, 2
  ADD s5, s9, s5
  SW s4, 0(s5)
  JAL zero, bb20
bb50:   # loop depth 2
  LW s2, 4(s8)
  XORI s2, s2, -1
  SLTU s10, zero, s2
  JAL zero, bb19
bb51:   # loop depth 2
  LA s2, array
  ADDI s4, zero, 17
  LW a0, 36(sp)
  SW s4, 68(s2)
  CALL findfa
  ADD s4, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  ADD s2, a0, zero
  BNE s4, s2, bb52
  JAL zero, bb17
bb52:   # loop depth 2
  LA s5, array
  SLLIW s4, s4, 2
  ADD s4, s5, s4
  SW s2, 0(s4)
  JAL zero, bb17
bb53:   # loop depth 2
  LA s2, array
  LW a0, 36(sp)
  SW zero, 0(s2)
  CALL findfa
  ADD s4, a0, zero
  ADD a0, zero, zero
  CALL findfa
  ADD s2, a0, zero
  BNE s4, s2, bb54
  JAL zero, bb16
bb54:   # loop depth 2
  LA s5, array
  SLLIW s4, s4, 2
  ADD s4, s5, s4
  SW s2, 0(s4)
  JAL zero, bb16
bb55:   # loop depth 1
  ADDI s7, zero, 1
  # implict jump to bb56
bb56:   # loop depth 2
  LA s0, array
  SD s0, 224(sp)
  ADDI s0, zero, 17
  SW s0, 76(sp)
  SLLIW s8, s7, 2
  ADDIW s7, s7, 1
  ADDI s0, zero, -1
  SW s0, 72(sp)
  LD s0, 224(sp)
  ADD s0, s0, s8
  SD s0, 216(sp)
  LW s0, 76(sp)
  SLT s8, s0, s7
  XORI s8, s8, 1
  LW s0, 72(sp)
  LD s1, 216(sp)
  SW s0, 0(s1)
  BNE s8, zero, bb57
  JAL zero, bb5
bb57:   # loop depth 2
  JAL zero, bb56
