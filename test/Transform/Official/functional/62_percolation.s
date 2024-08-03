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
  ADDI sp, sp, -160
  SD ra, 48(sp)
  SD s0, 56(sp)
  SD s1, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD s5, 96(sp)
  SD s6, 104(sp)
  SD s7, 112(sp)
  SD s8, 120(sp)
  SD s9, 128(sp)
  SD s10, 136(sp)
  SD s11, 144(sp)
  ADDI s0, zero, 17
  SLTI s0, s0, 1
  XORI s0, s0, 1
  SB s0, 7(sp)
  ADDI s7, zero, 1
  ADD s6, zero, zero
  ADD s5, zero, zero
  ADD s4, zero, zero
  ADD s3, zero, zero
  ADD s2, zero, zero
  ADD s1, zero, zero
  ADD s0, zero, zero
  ADD s8, zero, zero
  # implict jump to bb4
bb4:
  ADD s11, s8, zero
  ADD s10, s0, zero
  ADD s0, s1, zero
  SB s0, 3(sp)
  ADD s0, s2, zero
  SB s0, 8(sp)
  ADD s0, s3, zero
  SB s0, 1(sp)
  ADD s8, s4, zero
  ADD s3, s5, zero
  ADD s4, s6, zero
  ADD s1, s7, zero
  ADDI s0, zero, 1
  SUBW s0, s1, s0
  SW s0, 44(sp)
  LA s1, n
  ADDI s0, zero, 4
  SW s0, 0(s1)
  LB s0, 7(sp)
  BNE s0, zero, bb56
  # implict jump to bb5
bb5:
  ADD s1, s4, zero
  ADD s9, s3, zero
  ADD s7, zero, zero
  LB s0, 1(sp)
  ADD s6, s0, zero
  LB s0, 8(sp)
  ADD s5, s0, zero
  LB s0, 3(sp)
  ADD s4, s0, zero
  ADD s3, s10, zero
  ADD s2, zero, zero
  ADD s0, s11, zero
  # implict jump to bb6
bb6:
  SW s0, 12(sp)
  ADD s0, s2, zero
  SW s0, 28(sp)
  ADD s0, s3, zero
  SW s0, 40(sp)
  ADD s3, s5, zero
  ADD s0, s6, zero
  SB s0, 2(sp)
  ADD s0, s7, zero
  SW s0, 24(sp)
  ADD s10, s8, zero
  ADD s11, s9, zero
  ADD s9, s1, zero
  CALL getint
  ADD s2, a0, zero
  CALL getint
  ADD s0, a0, zero
  SW s0, 36(sp)
  LW s0, 24(sp)
  SLTU s0, zero, s0
  XORI s0, s0, 1
  BNE s0, zero, bb16
  # implict jump to bb7
bb7:
  LW s0, 12(sp)
  ADD s1, s0, zero
  LW s0, 40(sp)
  ADD s8, s0, zero
  ADD s7, s4, zero
  ADD s6, s3, zero
  LB s0, 2(sp)
  ADD s5, s0, zero
  LW s0, 24(sp)
  ADD s4, s0, zero
  ADD s3, s10, zero
  ADD s2, s11, zero
  ADD s0, s9, zero
  # implict jump to bb8
bb8:
  ADD s9, s0, zero
  ADD s0, s2, zero
  SB s0, 6(sp)
  ADD s0, s3, zero
  SB s0, 5(sp)
  ADD s3, s4, zero
  ADD s0, s5, zero
  SB s0, 9(sp)
  ADD s0, s6, zero
  SB s0, 10(sp)
  ADD s0, s7, zero
  SB s0, 0(sp)
  ADD s11, s8, zero
  ADD s10, s1, zero
  LW s0, 28(sp)
  ADDIW s0, s0, 1
  SW s0, 20(sp)
  LW s0, 20(sp)
  SLTI s0, s0, 10
  BNE s0, zero, bb15
  # implict jump to bb9
bb9:
  # implict jump to bb10
bb10:
  SLTU s0, zero, s3
  XORI s0, s0, 1
  BNE s0, zero, bb14
  # implict jump to bb11
bb11:
  LW s0, 44(sp)
  BNE s0, zero, bb13
  # implict jump to bb12
bb12:
  ADD a0, zero, zero
  LD ra, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s5, 96(sp)
  LD s6, 104(sp)
  LD s7, 112(sp)
  LD s8, 120(sp)
  LD s9, 128(sp)
  LD s10, 136(sp)
  LD s11, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb13:
  LW s0, 44(sp)
  ADD s7, s0, zero
  ADD s6, s9, zero
  LB s0, 6(sp)
  ADD s5, s0, zero
  LB s0, 5(sp)
  ADD s4, s0, zero
  LB s0, 9(sp)
  ADD s3, s0, zero
  LB s0, 10(sp)
  ADD s2, s0, zero
  LB s0, 0(sp)
  ADD s1, s0, zero
  ADD s0, s11, zero
  ADD s8, s10, zero
  JAL zero, bb4
bb14:
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb11
bb15:
  ADD s1, s9, zero
  LB s0, 6(sp)
  ADD s9, s0, zero
  LB s0, 5(sp)
  ADD s8, s0, zero
  ADD s7, s3, zero
  LB s0, 9(sp)
  ADD s6, s0, zero
  LB s0, 10(sp)
  ADD s5, s0, zero
  LB s0, 0(sp)
  ADD s4, s0, zero
  ADD s3, s11, zero
  LW s0, 20(sp)
  ADD s2, s0, zero
  ADD s0, s10, zero
  JAL zero, bb6
bb16:
  LA s0, n
  LW s1, 0(s0)
  ADDI s0, zero, 1
  SUBW s0, s2, s0
  MULW s1, s1, s0
  LW s0, 36(sp)
  ADDW s6, s1, s0
  SLLIW s1, s6, 2
  LA s0, array
  ADD s0, s0, s1
  SW s6, 0(s0)
  XORI s0, s2, 1
  SLTIU s0, s0, 1
  BNE s0, zero, bb54
  # implict jump to bb17
bb17:
  LA s0, n
  LW s0, 0(s0)
  XOR s0, s2, s0
  SLTIU s0, s0, 1
  BNE s0, zero, bb52
  # implict jump to bb18
bb18:
  LA s0, n
  LW s1, 0(s0)
  LW s0, 36(sp)
  BLT s0, s1, bb51
  # implict jump to bb19
bb19:
  ADD s0, zero, zero
  # implict jump to bb20
bb20:
  ADD s5, s0, zero
  BNE s5, zero, bb49
  # implict jump to bb21
bb21:
  ADDI s1, zero, 1
  LW s0, 36(sp)
  BLT s1, s0, bb48
  # implict jump to bb22
bb22:
  ADD s0, zero, zero
  # implict jump to bb23
bb23:
  ADD s10, s0, zero
  BNE s10, zero, bb46
  # implict jump to bb24
bb24:
  LA s0, n
  LW s0, 0(s0)
  BLT s2, s0, bb45
  # implict jump to bb25
bb25:
  ADD s0, zero, zero
  # implict jump to bb26
bb26:
  ADD s4, s0, zero
  BNE s4, zero, bb43
  # implict jump to bb27
bb27:
  ADDI s0, zero, 1
  BLT s0, s2, bb42
  # implict jump to bb28
bb28:
  ADD s0, zero, zero
  # implict jump to bb29
bb29:
  ADD s3, s0, zero
  BNE s3, zero, bb40
  # implict jump to bb30
bb30:
  LA s0, array
  LW s0, 0(s0)
  XORI s0, s0, -1
  BNE s0, zero, bb39
  # implict jump to bb31
bb31:
  ADD s0, zero, zero
  # implict jump to bb32
bb32:
  ADD s9, s0, zero
  BNE s9, zero, bb38
  # implict jump to bb33
bb33:
  ADD s0, zero, zero
  # implict jump to bb34
bb34:
  ADD s2, s0, zero
  BNE s2, zero, bb37
  # implict jump to bb35
bb35:
  LW s0, 12(sp)
  ADD s1, s0, zero
  LW s0, 24(sp)
  # implict jump to bb36
bb36:
  ADD s8, s6, zero
  ADD s7, s2, zero
  ADD s6, s5, zero
  ADD s5, s4, zero
  ADD s4, s0, zero
  ADD s2, s10, zero
  ADD s0, s9, zero
  JAL zero, bb8
bb37:
  LW a0, 28(sp)
  ADDIW s0, a0, 1
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD s1, s0, zero
  ADDI s0, zero, 1
  JAL zero, bb36
bb38:
  ADD a0, zero, zero
  CALL findfa
  ADD s1, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  ADD s0, a0, zero
  XOR s0, s1, s0
  SLTIU s0, s0, 1
  JAL zero, bb34
bb39:
  LA s0, array
  LW s0, 68(s0)
  XORI s0, s0, -1
  SLTU s0, zero, s0
  JAL zero, bb32
bb40:
  LA a0, n
  LW a0, 0(a0)
  SUBW s1, s6, a0
  ADD a0, s6, zero
  CALL findfa
  ADD s0, a0, zero
  ADD a0, s1, zero
  CALL findfa
  ADD s2, a0, zero
  BNE s0, s2, bb41
  JAL zero, bb30
bb41:
  SLLIW s0, s0, 2
  LA s1, array
  ADD s0, s1, s0
  SW s2, 0(s0)
  JAL zero, bb30
bb42:
  LA s0, n
  LW s0, 0(s0)
  SUBW s0, s6, s0
  SLLIW s1, s0, 2
  LA s0, array
  ADD s0, s0, s1
  LW s0, 0(s0)
  XORI s0, s0, -1
  SLTU s0, zero, s0
  JAL zero, bb29
bb43:
  LA a0, n
  LW a0, 0(a0)
  ADDW s1, s6, a0
  ADD a0, s6, zero
  CALL findfa
  ADD s0, a0, zero
  ADD a0, s1, zero
  CALL findfa
  ADD s3, a0, zero
  BNE s0, s3, bb44
  JAL zero, bb27
bb44:
  SLLIW s0, s0, 2
  LA s1, array
  ADD s0, s1, s0
  SW s3, 0(s0)
  JAL zero, bb27
bb45:
  ADDW s0, s6, s0
  SLLIW s1, s0, 2
  LA s0, array
  ADD s0, s0, s1
  LW s0, 0(s0)
  XORI s0, s0, -1
  SLTU s0, zero, s0
  JAL zero, bb26
bb46:
  ADDI a0, zero, 1
  SUBW s0, s6, a0
  ADD a0, s6, zero
  CALL findfa
  ADD s1, a0, zero
  ADD a0, s0, zero
  CALL findfa
  ADD s3, a0, zero
  BNE s1, s3, bb47
  JAL zero, bb24
bb47:
  SLLIW s1, s1, 2
  LA s0, array
  ADD s0, s0, s1
  SW s3, 0(s0)
  JAL zero, bb24
bb48:
  ADDI s0, zero, 1
  SUBW s0, s6, s0
  SLLIW s1, s0, 2
  LA s0, array
  ADD s0, s0, s1
  LW s0, 0(s0)
  XORI s0, s0, -1
  SLTU s0, zero, s0
  JAL zero, bb23
bb49:
  ADDIW s1, s6, 1
  ADD a0, s6, zero
  CALL findfa
  ADD s0, a0, zero
  ADD a0, s1, zero
  CALL findfa
  ADD s3, a0, zero
  BNE s0, s3, bb50
  JAL zero, bb21
bb50:
  SLLIW s1, s0, 2
  LA s0, array
  ADD s0, s0, s1
  SW s3, 0(s0)
  JAL zero, bb21
bb51:
  ADDIW s0, s6, 1
  SLLIW s1, s0, 2
  LA s0, array
  ADD s0, s0, s1
  LW s0, 0(s0)
  XORI s0, s0, -1
  SLTU s0, zero, s0
  JAL zero, bb20
bb52:
  LA s0, array
  ADDI a0, zero, 17
  SW a0, 68(s0)
  ADD a0, s6, zero
  CALL findfa
  ADD s0, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  ADD s3, a0, zero
  BNE s0, s3, bb53
  JAL zero, bb18
bb53:
  SLLIW s1, s0, 2
  LA s0, array
  ADD s0, s0, s1
  SW s3, 0(s0)
  JAL zero, bb18
bb54:
  LA a0, array
  SW zero, 0(a0)
  ADD a0, s6, zero
  CALL findfa
  ADD s0, a0, zero
  ADD a0, zero, zero
  CALL findfa
  ADD s3, a0, zero
  BNE s0, s3, bb55
  JAL zero, bb17
bb55:
  SLLIW s1, s0, 2
  LA s0, array
  ADD s0, s0, s1
  SW s3, 0(s0)
  JAL zero, bb17
bb56:
  ADDI s0, zero, 1
  # implict jump to bb57
bb57:
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
  BNE s0, zero, bb58
  JAL zero, bb5
bb58:
  ADD s0, s1, zero
  JAL zero, bb57
