.global findfa
.global main
.section .bss

array:
.space 440
.section .data
n:
.word 0x00000000

.section .text
findfa:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s1, a0, zero
  SLLIW s0, s1, 2
  LA a0, array
  ADD s0, a0, s0
  LW a0, 0(s0)
  XOR a0, a0, s1
  SLTIU a0, a0, 1
  BNE a0, zero, bb2
  # implict jump to bb1
bb1:
  LW a0, 0(s0)
  CALL findfa
  ADD t0, a0, zero
  SW t0, 0(s0)
  ADD a0, t0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -176
  SD ra, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  SD s4, 104(sp)
  SD s5, 112(sp)
  SD s6, 120(sp)
  SD s7, 128(sp)
  SD s8, 136(sp)
  SD s9, 144(sp)
  SD s10, 152(sp)
  SD s11, 160(sp)
  ADDI s0, zero, 17
  SLTI s0, s0, 1
  XORI s0, s0, 1
  SB s0, 1(sp)
  ADDI s8, zero, 1
  ADD s7, zero, zero
  ADD s6, zero, zero
  ADD s5, zero, zero
  ADD s4, zero, zero
  ADD s3, zero, zero
  ADD s2, zero, zero
  ADD s1, zero, zero
  ADD s0, zero, zero
  # implict jump to bb4
bb4:
  SW s0, 28(sp)
  ADD s0, s1, zero
  SW s0, 24(sp)
  ADD s10, s2, zero
  ADD s0, s3, zero
  SB s0, 6(sp)
  ADD s0, s4, zero
  SB s0, 5(sp)
  ADD s4, s6, zero
  ADD s3, s7, zero
  ADD s1, s8, zero
  ADDI s0, zero, 1
  SUBW s0, s1, s0
  SW s0, 32(sp)
  LA s1, n
  ADDI s0, zero, 4
  SW s0, 0(s1)
  LB s0, 1(sp)
  BNE s0, zero, bb55
  # implict jump to bb5
bb5:
  ADD s1, s3, zero
  ADD s9, s4, zero
  ADD s8, s5, zero
  ADD s7, zero, zero
  LB s0, 5(sp)
  ADD s6, s0, zero
  LB s0, 6(sp)
  ADD s5, s0, zero
  ADD s4, s10, zero
  LW s0, 24(sp)
  ADD s3, s0, zero
  ADD s2, zero, zero
  LW s0, 28(sp)
  # implict jump to bb6
bb6:
  ADD s10, s0, zero
  ADD s0, s2, zero
  SW s0, 48(sp)
  ADD s0, s3, zero
  SW s0, 52(sp)
  ADD s3, s4, zero
  ADD s2, s5, zero
  ADD s11, s6, zero
  ADD s4, s7, zero
  ADD s0, s8, zero
  SB s0, 2(sp)
  ADD s0, s1, zero
  SB s0, 7(sp)
  CALL getint
  ADD s5, a0, zero
  CALL getint
  ADD s7, a0, zero
  SLTU s0, zero, s4
  XORI s0, s0, 1
  BNE s0, zero, bb15
  # implict jump to bb7
bb7:
  ADD s1, s10, zero
  LW s0, 52(sp)
  ADD s8, s0, zero
  ADD s7, s3, zero
  ADD s6, s2, zero
  ADD s5, s11, zero
  LB s0, 2(sp)
  ADD s3, s0, zero
  ADD s2, s9, zero
  LB s0, 7(sp)
  # implict jump to bb8
bb8:
  SB s0, 3(sp)
  ADD s0, s3, zero
  SB s0, 9(sp)
  ADD s0, s4, zero
  SW s0, 40(sp)
  ADD s3, s5, zero
  ADD s0, s6, zero
  SB s0, 8(sp)
  ADD s10, s7, zero
  ADD s0, s8, zero
  SW s0, 44(sp)
  ADD s11, s1, zero
  LW s0, 48(sp)
  ADDIW s0, s0, 1
  SW s0, 56(sp)
  LW s0, 56(sp)
  SLTI s0, s0, 10
  BNE s0, zero, bb14
  # implict jump to bb9
bb9:
  LW s0, 40(sp)
  SLTU s0, zero, s0
  XORI s0, s0, 1
  BNE s0, zero, bb13
  # implict jump to bb10
bb10:
  LW s0, 32(sp)
  BNE s0, zero, bb12
  # implict jump to bb11
bb11:
  ADD a0, zero, zero
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  LD s5, 112(sp)
  LD s6, 120(sp)
  LD s7, 128(sp)
  LD s8, 136(sp)
  LD s9, 144(sp)
  LD s10, 152(sp)
  LD s11, 160(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb12:
  LW s0, 32(sp)
  ADD s8, s0, zero
  LB s0, 3(sp)
  ADD s7, s0, zero
  ADD s6, s2, zero
  LB s0, 9(sp)
  ADD s5, s0, zero
  ADD s4, s3, zero
  LB s0, 8(sp)
  ADD s3, s0, zero
  ADD s2, s10, zero
  LW s0, 44(sp)
  ADD s1, s0, zero
  ADD s0, s11, zero
  JAL zero, bb4
bb13:
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb10
bb14:
  LB s0, 3(sp)
  ADD s1, s0, zero
  ADD s9, s2, zero
  LB s0, 9(sp)
  ADD s8, s0, zero
  LW s0, 40(sp)
  ADD s7, s0, zero
  ADD s6, s3, zero
  LB s0, 8(sp)
  ADD s5, s0, zero
  ADD s4, s10, zero
  LW s0, 44(sp)
  ADD s3, s0, zero
  LW s0, 56(sp)
  ADD s2, s0, zero
  ADD s0, s11, zero
  JAL zero, bb6
bb15:
  LA s0, n
  LW s1, 0(s0)
  ADDI s0, zero, 1
  SUBW s0, s5, s0
  MULW s0, s1, s0
  ADDW s6, s0, s7
  SLLIW s1, s6, 2
  LA s0, array
  ADD s0, s0, s1
  SW s6, 0(s0)
  XORI s0, s5, 1
  SLTIU s0, s0, 1
  BNE s0, zero, bb53
  # implict jump to bb16
bb16:
  LA s0, n
  LW s0, 0(s0)
  XOR s0, s5, s0
  SLTIU s0, s0, 1
  BNE s0, zero, bb51
  # implict jump to bb17
bb17:
  LA s0, n
  LW s0, 0(s0)
  BLT s7, s0, bb50
  # implict jump to bb18
bb18:
  ADD s0, zero, zero
  # implict jump to bb19
bb19:
  ADD s3, s0, zero
  BNE s3, zero, bb48
  # implict jump to bb20
bb20:
  ADDI s0, zero, 1
  BLT s0, s7, bb47
  # implict jump to bb21
bb21:
  ADD s0, zero, zero
  # implict jump to bb22
bb22:
  ADD s11, s0, zero
  BNE s11, zero, bb45
  # implict jump to bb23
bb23:
  LA s0, n
  LW s0, 0(s0)
  BLT s5, s0, bb44
  # implict jump to bb24
bb24:
  ADD s0, zero, zero
  # implict jump to bb25
bb25:
  SB s0, 4(sp)
  LB s0, 4(sp)
  BNE s0, zero, bb42
  # implict jump to bb26
bb26:
  ADDI s0, zero, 1
  BLT s0, s5, bb41
  # implict jump to bb27
bb27:
  ADD s0, zero, zero
  # implict jump to bb28
bb28:
  SB s0, 10(sp)
  LB s0, 10(sp)
  BNE s0, zero, bb39
  # implict jump to bb29
bb29:
  LA s0, array
  LW s0, 0(s0)
  XORI s0, s0, -1
  BNE s0, zero, bb38
  # implict jump to bb30
bb30:
  ADD s0, zero, zero
  # implict jump to bb31
bb31:
  ADD s9, s0, zero
  BNE s9, zero, bb37
  # implict jump to bb32
bb32:
  ADD s0, zero, zero
  # implict jump to bb33
bb33:
  ADD s5, s0, zero
  BNE s5, zero, bb36
  # implict jump to bb34
bb34:
  ADD s0, s10, zero
  ADD s1, s4, zero
  # implict jump to bb35
bb35:
  ADD s2, s1, zero
  ADD s1, s0, zero
  ADD s8, s6, zero
  ADD s7, s5, zero
  ADD s6, s3, zero
  LB s0, 4(sp)
  ADD s5, s0, zero
  ADD s4, s2, zero
  LB s0, 10(sp)
  ADD s3, s0, zero
  ADD s2, s11, zero
  ADD s0, s9, zero
  JAL zero, bb8
bb36:
  LW a0, 48(sp)
  ADDIW s0, a0, 1
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s1, zero, 1
  JAL zero, bb35
bb37:
  ADD a0, zero, zero
  CALL findfa
  ADD s1, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  ADD s0, a0, zero
  XOR s0, s1, s0
  SLTIU s0, s0, 1
  JAL zero, bb33
bb38:
  LA s0, array
  LW s0, 68(s0)
  XORI s0, s0, -1
  SLTU s0, zero, s0
  JAL zero, bb31
bb39:
  LA a0, n
  LW a0, 0(a0)
  SUBW s0, s6, a0
  ADD a0, s6, zero
  CALL findfa
  ADD s1, a0, zero
  ADD a0, s0, zero
  CALL findfa
  ADD s2, a0, zero
  BNE s1, s2, bb40
  JAL zero, bb29
bb40:
  SLLIW s1, s1, 2
  LA s0, array
  ADD s0, s0, s1
  SW s2, 0(s0)
  JAL zero, bb29
bb41:
  LA s0, n
  LW s0, 0(s0)
  SUBW s0, s6, s0
  SLLIW s1, s0, 2
  LA s0, array
  ADD s0, s0, s1
  LW s0, 0(s0)
  XORI s0, s0, -1
  SLTU s0, zero, s0
  JAL zero, bb28
bb42:
  LA a0, n
  LW a0, 0(a0)
  ADDW s1, s6, a0
  ADD a0, s6, zero
  CALL findfa
  ADD s0, a0, zero
  ADD a0, s1, zero
  CALL findfa
  ADD s2, a0, zero
  BNE s0, s2, bb43
  JAL zero, bb26
bb43:
  SLLIW s1, s0, 2
  LA s0, array
  ADD s0, s0, s1
  SW s2, 0(s0)
  JAL zero, bb26
bb44:
  ADDW s0, s6, s0
  SLLIW s1, s0, 2
  LA s0, array
  ADD s0, s0, s1
  LW s0, 0(s0)
  XORI s0, s0, -1
  SLTU s0, zero, s0
  JAL zero, bb25
bb45:
  ADDI a0, zero, 1
  SUBW s0, s6, a0
  ADD a0, s6, zero
  CALL findfa
  ADD s1, a0, zero
  ADD a0, s0, zero
  CALL findfa
  ADD s2, a0, zero
  BNE s1, s2, bb46
  JAL zero, bb23
bb46:
  SLLIW s1, s1, 2
  LA s0, array
  ADD s0, s0, s1
  SW s2, 0(s0)
  JAL zero, bb23
bb47:
  ADDI s0, zero, 1
  SUBW s0, s6, s0
  SLLIW s1, s0, 2
  LA s0, array
  ADD s0, s0, s1
  LW s0, 0(s0)
  XORI s0, s0, -1
  SLTU s0, zero, s0
  JAL zero, bb22
bb48:
  ADDIW s1, s6, 1
  ADD a0, s6, zero
  CALL findfa
  ADD s0, a0, zero
  ADD a0, s1, zero
  CALL findfa
  ADD s1, a0, zero
  BNE s0, s1, bb49
  JAL zero, bb20
bb49:
  SLLIW s2, s0, 2
  LA s0, array
  ADD s0, s0, s2
  SW s1, 0(s0)
  JAL zero, bb20
bb50:
  ADDIW s0, s6, 1
  SLLIW s1, s0, 2
  LA s0, array
  ADD s0, s0, s1
  LW s0, 0(s0)
  XORI s0, s0, -1
  SLTU s0, zero, s0
  JAL zero, bb19
bb51:
  LA s0, array
  ADDI a0, zero, 17
  SW a0, 68(s0)
  ADD a0, s6, zero
  CALL findfa
  ADD s0, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  ADD s2, a0, zero
  BNE s0, s2, bb52
  JAL zero, bb17
bb52:
  SLLIW s1, s0, 2
  LA s0, array
  ADD s0, s0, s1
  SW s2, 0(s0)
  JAL zero, bb17
bb53:
  LA a0, array
  SW zero, 0(a0)
  ADD a0, s6, zero
  CALL findfa
  ADD s0, a0, zero
  ADD a0, zero, zero
  CALL findfa
  ADD s2, a0, zero
  BNE s0, s2, bb54
  JAL zero, bb16
bb54:
  SLLIW s1, s0, 2
  LA s0, array
  ADD s0, s0, s1
  SW s2, 0(s0)
  JAL zero, bb16
bb55:
  ADDI s0, zero, 1
  # implict jump to bb56
bb56:
  ADD s2, s0, zero
  SLLIW s1, s2, 2
  LA s0, array
  ADD s1, s0, s1
  ADDI s0, zero, -1
  SW s0, 0(s1)
  ADDIW s1, s2, 1
  ADDI s0, zero, 17
  SLT s0, s0, s1
  XORI s0, s0, 1
  BNE s0, zero, bb57
  JAL zero, bb5
bb57:
  ADD s0, s1, zero
  JAL zero, bb56
