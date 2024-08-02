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
  SLLIW a0, s1, 2
  LA s0, array
  ADD s0, s0, a0
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
  SD ra, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD s10, 96(sp)
  SD s0, 104(sp)
  SD s1, 112(sp)
  SD s2, 120(sp)
  SD s3, 128(sp)
  SD s4, 136(sp)
  SD s5, 144(sp)
  SD s11, 152(sp)
  ADDI s0, zero, 17
  SLTI s0, s0, 1
  XORI s0, s0, 1
  SB s0, 8(sp)
  ADDI s1, zero, 1
  ADD s2, zero, zero
  ADD s10, zero, zero
  ADD s11, zero, zero
  ADD s0, zero, zero
  SB s0, 12(sp)
  ADD s6, zero, zero
  ADD s5, zero, zero
  ADD s4, zero, zero
  ADD s3, zero, zero
  # implict jump to bb4
bb4:
  ADD s9, s3, zero
  ADD s8, s4, zero
  ADD s0, s5, zero
  SB s0, 11(sp)
  LB s0, 12(sp)
  ADD s5, s0, zero
  ADD s4, s11, zero
  ADD s3, s10, zero
  ADDI s10, zero, 1
  SUBW s1, s1, s10
  LA s10, n
  ADDI s11, zero, 4
  SW s11, 0(s10)
  LB s0, 8(sp)
  BNE s0, zero, bb55
  # implict jump to bb5
bb5:
  ADD s0, s2, zero
  SB s0, 0(sp)
  ADD s0, s3, zero
  SB s0, 5(sp)
  ADD s0, s4, zero
  SB s0, 4(sp)
  ADD s2, zero, zero
  ADD s0, s5, zero
  SB s0, 3(sp)
  LB s0, 11(sp)
  ADD s5, s0, zero
  ADD s4, s8, zero
  ADD s7, zero, zero
  ADD s3, s9, zero
  # implict jump to bb6
bb6:
  ADD s11, s3, zero
  ADD s0, s7, zero
  SW s0, 32(sp)
  ADD s9, s4, zero
  ADD s8, s5, zero
  ADD s0, s6, zero
  SB s0, 9(sp)
  LB s0, 3(sp)
  ADD s6, s0, zero
  ADD s5, s2, zero
  LB s0, 4(sp)
  ADD s4, s0, zero
  LB s0, 5(sp)
  ADD s3, s0, zero
  LB s0, 0(sp)
  ADD s2, s0, zero
  CALL getint
  ADD s0, a0, zero
  SW s0, 24(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 28(sp)
  SLTU s0, zero, s5
  SB s0, 6(sp)
  LB s0, 6(sp)
  XORI s0, s0, 1
  SW s0, 20(sp)
  LW s0, 20(sp)
  BNE s0, zero, bb15
  # implict jump to bb7
bb7:
  ADD s0, s11, zero
  SW s0, 48(sp)
  ADD s0, s9, zero
  SW s0, 44(sp)
  ADD s0, s8, zero
  SB s0, 2(sp)
  LB s0, 9(sp)
  SB s0, 1(sp)
  ADD s7, s4, zero
  # implict jump to bb8
bb8:
  ADD s11, s2, zero
  ADD s9, s3, zero
  ADD s8, s7, zero
  ADD s0, s5, zero
  SW s0, 40(sp)
  ADD s7, s6, zero
  LB s0, 1(sp)
  SB s0, 10(sp)
  LB s0, 2(sp)
  ADD s5, s0, zero
  LW s0, 44(sp)
  ADD s4, s0, zero
  LW s0, 48(sp)
  ADD s3, s0, zero
  LW s0, 32(sp)
  ADDIW s10, s0, 1
  SLTI s0, s10, 10
  SB s0, 7(sp)
  LB s0, 7(sp)
  BNE s0, zero, bb14
  # implict jump to bb9
bb9:
  LW s0, 40(sp)
  SLTU s2, zero, s0
  XORI s2, s2, 1
  BNE s2, zero, bb13
  # implict jump to bb10
bb10:
  BNE s1, zero, bb12
  # implict jump to bb11
bb11:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  LD s0, 104(sp)
  LD s1, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD s5, 144(sp)
  LD s11, 152(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb12:
  ADD s2, s11, zero
  ADD s10, s9, zero
  ADD s11, s8, zero
  ADD s0, s7, zero
  SB s0, 12(sp)
  LB s0, 10(sp)
  ADD s6, s0, zero
  JAL zero, bb4
bb13:
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb10
bb14:
  ADD s0, s11, zero
  SB s0, 0(sp)
  ADD s0, s9, zero
  SB s0, 5(sp)
  ADD s0, s8, zero
  SB s0, 4(sp)
  LW s0, 40(sp)
  ADD s2, s0, zero
  ADD s0, s7, zero
  SB s0, 3(sp)
  LB s0, 10(sp)
  ADD s6, s0, zero
  ADD s7, s10, zero
  JAL zero, bb6
bb15:
  LA s2, n
  LW s2, 0(s2)
  ADDI s3, zero, 1
  LW s0, 24(sp)
  SUBW s3, s0, s3
  MULW s2, s2, s3
  LW s0, 28(sp)
  ADDW s2, s2, s0
  SLLIW s3, s2, 2
  LA s4, array
  ADD s3, s4, s3
  SW s2, 0(s3)
  LW s0, 24(sp)
  XORI s3, s0, 1
  SLTIU s3, s3, 1
  BNE s3, zero, bb53
  # implict jump to bb16
bb16:
  LA s3, n
  LW s3, 0(s3)
  LW s0, 24(sp)
  XOR s3, s0, s3
  SLTIU s3, s3, 1
  BNE s3, zero, bb51
  # implict jump to bb17
bb17:
  LA s3, n
  LW s3, 0(s3)
  LW s0, 28(sp)
  BLT s0, s3, bb50
  # implict jump to bb18
bb18:
  ADD s3, zero, zero
  # implict jump to bb19
bb19:
  BNE s3, zero, bb48
  # implict jump to bb20
bb20:
  ADDI s4, zero, 1
  LW s0, 28(sp)
  BLT s4, s0, bb47
  # implict jump to bb21
bb21:
  ADD s4, zero, zero
  # implict jump to bb22
bb22:
  BNE s4, zero, bb45
  # implict jump to bb23
bb23:
  LA s6, n
  LW s6, 0(s6)
  LW s0, 24(sp)
  BLT s0, s6, bb44
  # implict jump to bb24
bb24:
  ADD s6, zero, zero
  # implict jump to bb25
bb25:
  BNE s6, zero, bb42
  # implict jump to bb26
bb26:
  ADDI s7, zero, 1
  LW s0, 24(sp)
  BLT s7, s0, bb41
  # implict jump to bb27
bb27:
  ADD s7, zero, zero
  # implict jump to bb28
bb28:
  BNE s7, zero, bb39
  # implict jump to bb29
bb29:
  LA s8, array
  LW s8, 0(s8)
  XORI s8, s8, -1
  BNE s8, zero, bb38
  # implict jump to bb30
bb30:
  ADD s8, zero, zero
  # implict jump to bb31
bb31:
  BNE s8, zero, bb37
  # implict jump to bb32
bb32:
  ADD s9, zero, zero
  # implict jump to bb33
bb33:
  BNE s9, zero, bb36
  # implict jump to bb34
bb34:
  ADD s0, s11, zero
  SW s0, 52(sp)
  # implict jump to bb35
bb35:
  ADD s11, s5, zero
  LW s0, 52(sp)
  ADD s5, s0, zero
  ADD s0, s5, zero
  SW s0, 48(sp)
  ADD s0, s2, zero
  SW s0, 44(sp)
  ADD s0, s9, zero
  SB s0, 2(sp)
  ADD s0, s3, zero
  SB s0, 1(sp)
  ADD s5, s11, zero
  ADD s3, s4, zero
  ADD s2, s8, zero
  JAL zero, bb8
bb36:
  LW a0, 32(sp)
  ADDIW s5, a0, 1
  ADD a0, s5, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD s0, s5, zero
  SW s0, 52(sp)
  ADDI s5, zero, 1
  JAL zero, bb35
bb37:
  ADD a0, zero, zero
  CALL findfa
  ADD s9, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  ADD s0, a0, zero
  SW s0, 36(sp)
  LW s0, 36(sp)
  XOR s9, s9, s0
  SLTIU s9, s9, 1
  JAL zero, bb33
bb38:
  LA s8, array
  LW s8, 68(s8)
  XORI s8, s8, -1
  SLTU s8, zero, s8
  JAL zero, bb31
bb39:
  LA a0, n
  LW a0, 0(a0)
  SUBW s8, s2, a0
  ADD a0, s2, zero
  CALL findfa
  ADD s9, a0, zero
  ADD a0, s8, zero
  CALL findfa
  ADD s8, a0, zero
  BNE s9, s8, bb40
  JAL zero, bb29
bb40:
  SLLIW s9, s9, 2
  LA s0, array
  SD s0, 160(sp)
  LD s0, 160(sp)
  ADD s9, s0, s9
  SW s8, 0(s9)
  JAL zero, bb29
bb41:
  LA s7, n
  LW s7, 0(s7)
  SUBW s7, s2, s7
  SLLIW s7, s7, 2
  LA s8, array
  ADD s7, s8, s7
  LW s7, 0(s7)
  XORI s7, s7, -1
  SLTU s7, zero, s7
  JAL zero, bb28
bb42:
  LA a0, n
  LW a0, 0(a0)
  ADDW s7, s2, a0
  ADD a0, s2, zero
  CALL findfa
  ADD s8, a0, zero
  ADD a0, s7, zero
  CALL findfa
  ADD s7, a0, zero
  BNE s8, s7, bb43
  JAL zero, bb26
bb43:
  SLLIW s8, s8, 2
  LA s9, array
  ADD s8, s9, s8
  SW s7, 0(s8)
  JAL zero, bb26
bb44:
  ADDW s6, s2, s6
  SLLIW s6, s6, 2
  LA s7, array
  ADD s6, s7, s6
  LW s6, 0(s6)
  XORI s6, s6, -1
  SLTU s6, zero, s6
  JAL zero, bb25
bb45:
  ADDI a0, zero, 1
  SUBW s6, s2, a0
  ADD a0, s2, zero
  CALL findfa
  ADD s7, a0, zero
  ADD a0, s6, zero
  CALL findfa
  ADD s6, a0, zero
  BNE s7, s6, bb46
  JAL zero, bb23
bb46:
  SLLIW s7, s7, 2
  LA s8, array
  ADD s7, s8, s7
  SW s6, 0(s7)
  JAL zero, bb23
bb47:
  ADDI s4, zero, 1
  SUBW s4, s2, s4
  SLLIW s4, s4, 2
  LA s6, array
  ADD s4, s6, s4
  LW s4, 0(s4)
  XORI s4, s4, -1
  SLTU s4, zero, s4
  JAL zero, bb22
bb48:
  ADDIW s4, s2, 1
  ADD a0, s2, zero
  CALL findfa
  ADD s6, a0, zero
  ADD a0, s4, zero
  CALL findfa
  ADD s4, a0, zero
  BNE s6, s4, bb49
  JAL zero, bb20
bb49:
  SLLIW s6, s6, 2
  LA s7, array
  ADD s6, s7, s6
  SW s4, 0(s6)
  JAL zero, bb20
bb50:
  ADDIW s3, s2, 1
  SLLIW s3, s3, 2
  LA s4, array
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, -1
  SLTU s3, zero, s3
  JAL zero, bb19
bb51:
  LA a0, array
  ADDI s3, zero, 17
  SW s3, 68(a0)
  ADD a0, s2, zero
  CALL findfa
  ADD s3, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  ADD s4, a0, zero
  BNE s3, s4, bb52
  JAL zero, bb17
bb52:
  SLLIW s3, s3, 2
  LA s6, array
  ADD s3, s6, s3
  SW s4, 0(s3)
  JAL zero, bb17
bb53:
  LA a0, array
  SW zero, 0(a0)
  ADD a0, s2, zero
  CALL findfa
  ADD s3, a0, zero
  ADD a0, zero, zero
  CALL findfa
  ADD s4, a0, zero
  BNE s3, s4, bb54
  JAL zero, bb16
bb54:
  SLLIW s3, s3, 2
  LA s6, array
  ADD s3, s6, s3
  SW s4, 0(s3)
  JAL zero, bb16
bb55:
  ADDI s10, zero, 1
  # implict jump to bb56
bb56:
  SLLIW s11, s10, 2
  LA s0, array
  SD s0, 168(sp)
  LD s0, 168(sp)
  ADD s11, s0, s11
  ADDI s0, zero, -1
  SW s0, 16(sp)
  LW s0, 16(sp)
  SW s0, 0(s11)
  ADDIW s10, s10, 1
  ADDI s11, zero, 17
  SLT s11, s11, s10
  XORI s11, s11, 1
  BNE s11, zero, bb57
  JAL zero, bb5
bb57:
  JAL zero, bb56
