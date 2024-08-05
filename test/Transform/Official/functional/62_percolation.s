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
  SLLIW s0, a0, 2
  LA s1, array
  ADD s0, s1, s0
  LW s1, 0(s0)
  XOR s1, s1, a0
  SLTIU s1, s1, 1
  BNE s1, zero, bb2
  # implict jump to bb1
bb1:
  LW a0, 0(s0)
  CALL findfa
  SW a0, 0(s0)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -160
  SD ra, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
  SD s5, 104(sp)
  SD s6, 112(sp)
  SD s7, 120(sp)
  SD s8, 128(sp)
  SD s9, 136(sp)
  SD s10, 144(sp)
  ADDI s0, zero, 17
  SLTI s0, s0, 1
  XORI s0, s0, 1
  SB s0, 6(sp)
  ADDI s0, zero, 1
  SW s0, 12(sp)
  ADD s10, zero, zero
  ADD s0, zero, zero
  SB s0, 2(sp)
  ADD s0, zero, zero
  SB s0, 3(sp)
  ADD s6, zero, zero
  ADD s1, zero, zero
  SB s1, 0(sp)
  ADD s1, zero, zero
  SB s1, 1(sp)
  ADD s0, zero, zero
  SW s0, 48(sp)
  ADD s0, zero, zero
  SW s0, 52(sp)
  # implict jump to bb4
bb4:
  LW s0, 52(sp)
  SW s0, 52(sp)
  LW s0, 48(sp)
  SW s0, 48(sp)
  LB s1, 1(sp)
  SB s1, 1(sp)
  LB s1, 0(sp)
  SB s1, 0(sp)
  LB s1, 3(sp)
  SB s1, 3(sp)
  LB s1, 2(sp)
  SB s1, 2(sp)
  LW s0, 12(sp)
  SW s0, 12(sp)
  ADDI s3, zero, 1
  LW s0, 12(sp)
  SUBW s3, s0, s3
  SW s3, 40(sp)
  LA s4, n
  ADDI s5, zero, 4
  SW s5, 0(s4)
  LB s3, 6(sp)
  BNE s3, zero, bb55
  # implict jump to bb5
bb5:
  LB s1, 2(sp)
  SB s1, 2(sp)
  LB s1, 3(sp)
  SB s1, 3(sp)
  ADD s1, zero, zero
  SW s1, 20(sp)
  LB s1, 0(sp)
  SB s1, 0(sp)
  LB s1, 1(sp)
  SB s1, 1(sp)
  LW s0, 48(sp)
  SW s0, 48(sp)
  ADD s3, zero, zero
  SW s3, 24(sp)
  LW s0, 52(sp)
  SW s0, 52(sp)
  # implict jump to bb6
bb6:
  LW s0, 52(sp)
  SW s0, 52(sp)
  LW s3, 24(sp)
  SW s3, 24(sp)
  LW s0, 48(sp)
  SW s0, 48(sp)
  LB s1, 1(sp)
  SB s1, 1(sp)
  LB s1, 0(sp)
  SB s1, 0(sp)
  LW s1, 20(sp)
  SW s1, 20(sp)
  LB s1, 3(sp)
  SB s1, 3(sp)
  LB s1, 2(sp)
  SB s1, 2(sp)
  CALL getint
  ADD s3, a0, zero
  SW s3, 28(sp)
  CALL getint
  ADD s3, a0, zero
  SW s3, 32(sp)
  LW s1, 20(sp)
  SLTU s3, zero, s1
  SB s3, 7(sp)
  LB s3, 7(sp)
  XORI s3, s3, 1
  SW s3, 44(sp)
  LW s3, 44(sp)
  BNE s3, zero, bb15
  # implict jump to bb7
bb7:
  LW s0, 52(sp)
  SW s0, 52(sp)
  LW s0, 48(sp)
  SW s0, 48(sp)
  LB s1, 1(sp)
  SB s1, 1(sp)
  LB s1, 0(sp)
  SB s1, 0(sp)
  SB s6, 8(sp)
  LW s0, 20(sp)
  SW s0, 20(sp)
  LB s6, 3(sp)
  LB s4, 2(sp)
  # implict jump to bb8
bb8:
  SB s4, 2(sp)
  SB s6, 3(sp)
  LW s0, 20(sp)
  SW s0, 20(sp)
  LB s6, 8(sp)
  LB s1, 0(sp)
  SB s1, 0(sp)
  LB s1, 1(sp)
  SB s1, 1(sp)
  LW s0, 48(sp)
  SW s0, 48(sp)
  LW s0, 48(sp)
  SW s0, 36(sp)
  LW s0, 52(sp)
  SW s0, 52(sp)
  LW s3, 24(sp)
  ADDIW s3, s3, 1
  SW s3, 24(sp)
  LW s3, 24(sp)
  SLTI s7, s3, 10
  BNE s7, zero, bb14
  # implict jump to bb9
bb9:
  LW s1, 20(sp)
  SLTU s7, zero, s1
  XORI s7, s7, 1
  BNE s7, zero, bb13
  # implict jump to bb10
bb10:
  LW s3, 40(sp)
  BNE s3, zero, bb12
  # implict jump to bb11
bb11:
  ADD a0, zero, zero
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  LD s5, 104(sp)
  LD s6, 112(sp)
  LD s7, 120(sp)
  LD s8, 128(sp)
  LD s9, 136(sp)
  LD s10, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb12:
  LW s0, 40(sp)
  SW s0, 12(sp)
  LW s0, 12(sp)
  SW s0, 12(sp)
  LB s3, 2(sp)
  SB s3, 2(sp)
  LB s3, 3(sp)
  SB s3, 3(sp)
  LB s1, 0(sp)
  SB s1, 0(sp)
  LB s1, 1(sp)
  SB s1, 1(sp)
  LW s0, 36(sp)
  SW s0, 48(sp)
  LW s0, 48(sp)
  SW s0, 48(sp)
  LW s0, 52(sp)
  SW s0, 52(sp)
  JAL zero, bb4
bb13:
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb10
bb14:
  LB s3, 2(sp)
  SB s3, 2(sp)
  LB s3, 3(sp)
  SB s3, 3(sp)
  LW s1, 20(sp)
  SW s1, 20(sp)
  LB s1, 0(sp)
  SB s1, 0(sp)
  LB s1, 1(sp)
  SB s1, 1(sp)
  LW s0, 36(sp)
  SW s0, 48(sp)
  LW s0, 48(sp)
  SW s0, 48(sp)
  LW s3, 24(sp)
  SW s3, 24(sp)
  LW s0, 52(sp)
  SW s0, 52(sp)
  JAL zero, bb6
bb15:
  LA s1, n
  LW s1, 0(s1)
  ADDI s4, zero, 1
  LW s0, 28(sp)
  SUBW s4, s0, s4
  MULW s1, s1, s4
  LW s0, 32(sp)
  ADDW s0, s1, s0
  SW s0, 48(sp)
  LW s0, 48(sp)
  SLLIW s4, s0, 2
  LA s5, array
  ADD s4, s5, s4
  LW s0, 48(sp)
  SW s0, 0(s4)
  LW s0, 28(sp)
  XORI s4, s0, 1
  SLTIU s4, s4, 1
  BNE s4, zero, bb53
  # implict jump to bb16
bb16:
  LA s4, n
  LW s4, 0(s4)
  LW s0, 28(sp)
  XOR s4, s0, s4
  SLTIU s4, s4, 1
  BNE s4, zero, bb51
  # implict jump to bb17
bb17:
  LA s4, n
  LW s4, 0(s4)
  LW s0, 32(sp)
  BLT s0, s4, bb50
  # implict jump to bb18
bb18:
  ADD s0, zero, zero
  SB s0, 0(sp)
  # implict jump to bb19
bb19:
  LB s0, 0(sp)
  SB s0, 0(sp)
  LB s0, 0(sp)
  BNE s0, zero, bb48
  # implict jump to bb20
bb20:
  ADDI s5, zero, 1
  LW s0, 32(sp)
  BLT s5, s0, bb47
  # implict jump to bb21
bb21:
  ADD s5, zero, zero
  # implict jump to bb22
bb22:
  SB s5, 4(sp)
  LB s0, 4(sp)
  BNE s0, zero, bb45
  # implict jump to bb23
bb23:
  LA s5, n
  LW s5, 0(s5)
  LW s0, 28(sp)
  BLT s0, s5, bb44
  # implict jump to bb24
bb24:
  ADD s0, zero, zero
  SB s0, 8(sp)
  # implict jump to bb25
bb25:
  LB s0, 8(sp)
  SB s0, 8(sp)
  LB s0, 8(sp)
  BNE s0, zero, bb42
  # implict jump to bb26
bb26:
  ADDI s6, zero, 1
  LW s0, 28(sp)
  BLT s6, s0, bb41
  # implict jump to bb27
bb27:
  ADD s6, zero, zero
  # implict jump to bb28
bb28:
  BNE s6, zero, bb39
  # implict jump to bb29
bb29:
  LA s7, array
  LW s7, 0(s7)
  XORI s7, s7, -1
  BNE s7, zero, bb38
  # implict jump to bb30
bb30:
  ADD s10, zero, zero
  # implict jump to bb31
bb31:
  BNE s10, zero, bb37
  # implict jump to bb32
bb32:
  ADD s0, zero, zero
  SB s0, 1(sp)
  # implict jump to bb33
bb33:
  LB s0, 1(sp)
  SB s0, 1(sp)
  LB s0, 1(sp)
  BNE s0, zero, bb36
  # implict jump to bb34
bb34:
  LW s0, 52(sp)
  SW s0, 52(sp)
  LW s0, 20(sp)
  SW s0, 20(sp)
  # implict jump to bb35
bb35:
  LW s0, 20(sp)
  SW s0, 20(sp)
  LW s0, 52(sp)
  SW s0, 52(sp)
  LW s0, 52(sp)
  SW s0, 52(sp)
  LW s0, 48(sp)
  SW s0, 48(sp)
  LB s0, 1(sp)
  SB s0, 1(sp)
  LB s0, 0(sp)
  SB s0, 0(sp)
  LB s0, 8(sp)
  SB s0, 8(sp)
  LW s0, 20(sp)
  SW s0, 20(sp)
  LB s4, 4(sp)
  JAL zero, bb8
bb36:
  LW a0, 24(sp)
  ADDIW a0, a0, 1
  SW a0, 52(sp)
  LW a0, 52(sp)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW s0, 52(sp)
  SW s0, 52(sp)
  ADDI s0, zero, 1
  SW s0, 20(sp)
  JAL zero, bb35
bb37:
  ADD a0, zero, zero
  CALL findfa
  SW a0, 16(sp)
  ADDI a0, zero, 17
  CALL findfa
  ADD s8, a0, zero
  LW s0, 16(sp)
  XOR s7, s0, s8
  SLTIU s0, s7, 1
  SB s0, 1(sp)
  LB s0, 1(sp)
  SB s0, 1(sp)
  JAL zero, bb33
bb38:
  LA s7, array
  LW s7, 68(s7)
  XORI s7, s7, -1
  SLTU s10, zero, s7
  JAL zero, bb31
bb39:
  LA a0, n
  LW a0, 0(a0)
  LW s0, 48(sp)
  SUBW s8, s0, a0
  LW a0, 48(sp)
  CALL findfa
  ADD s9, a0, zero
  ADD a0, s8, zero
  CALL findfa
  ADD s8, a0, zero
  BNE s9, s8, bb40
  JAL zero, bb29
bb40:
  SLLIW s7, s9, 2
  LA s9, array
  ADD s7, s9, s7
  SW s8, 0(s7)
  JAL zero, bb29
bb41:
  LA s6, n
  LW s6, 0(s6)
  LW s0, 48(sp)
  SUBW s6, s0, s6
  SLLIW s6, s6, 2
  LA s7, array
  ADD s6, s7, s6
  LW s6, 0(s6)
  XORI s6, s6, -1
  SLTU s6, zero, s6
  JAL zero, bb28
bb42:
  LA a0, n
  LW a0, 0(a0)
  LW s0, 48(sp)
  ADDW s6, s0, a0
  LW a0, 48(sp)
  CALL findfa
  ADD s8, a0, zero
  ADD a0, s6, zero
  CALL findfa
  ADD s6, a0, zero
  BNE s8, s6, bb43
  JAL zero, bb26
bb43:
  SLLIW s7, s8, 2
  LA s8, array
  ADD s7, s8, s7
  SW s6, 0(s7)
  JAL zero, bb26
bb44:
  LW s0, 48(sp)
  ADDW s5, s0, s5
  SLLIW s5, s5, 2
  LA s6, array
  ADD s5, s6, s5
  LW s5, 0(s5)
  XORI s5, s5, -1
  SLTU s0, zero, s5
  SB s0, 8(sp)
  LB s0, 8(sp)
  SB s0, 8(sp)
  JAL zero, bb25
bb45:
  ADDI a0, zero, 1
  LW s0, 48(sp)
  SUBW s5, s0, a0
  LW a0, 48(sp)
  CALL findfa
  ADD s6, a0, zero
  ADD a0, s5, zero
  CALL findfa
  ADD s5, a0, zero
  BNE s6, s5, bb46
  JAL zero, bb23
bb46:
  SLLIW s6, s6, 2
  LA s7, array
  ADD s6, s7, s6
  SW s5, 0(s6)
  JAL zero, bb23
bb47:
  ADDI s5, zero, 1
  LW s0, 48(sp)
  SUBW s5, s0, s5
  SLLIW s5, s5, 2
  LA s6, array
  ADD s5, s6, s5
  LW s5, 0(s5)
  XORI s5, s5, -1
  SLTU s5, zero, s5
  JAL zero, bb22
bb48:
  LW a0, 48(sp)
  ADDIW s5, a0, 1
  LW a0, 48(sp)
  CALL findfa
  ADD s6, a0, zero
  ADD a0, s5, zero
  CALL findfa
  ADD s5, a0, zero
  BNE s6, s5, bb49
  JAL zero, bb20
bb49:
  SLLIW s6, s6, 2
  LA s7, array
  ADD s6, s7, s6
  SW s5, 0(s6)
  JAL zero, bb20
bb50:
  LW s0, 48(sp)
  ADDIW s4, s0, 1
  SLLIW s4, s4, 2
  LA s5, array
  ADD s4, s5, s4
  LW s4, 0(s4)
  XORI s4, s4, -1
  SLTU s0, zero, s4
  SB s0, 0(sp)
  LB s0, 0(sp)
  SB s0, 0(sp)
  JAL zero, bb19
bb51:
  LA a0, array
  ADDI s4, zero, 17
  SW s4, 68(a0)
  LW a0, 48(sp)
  CALL findfa
  ADD s5, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  ADD s4, a0, zero
  BNE s5, s4, bb52
  JAL zero, bb17
bb52:
  SLLIW s5, s5, 2
  LA s6, array
  ADD s5, s6, s5
  SW s4, 0(s5)
  JAL zero, bb17
bb53:
  LA a0, array
  SW zero, 0(a0)
  LW a0, 48(sp)
  CALL findfa
  ADD s5, a0, zero
  ADD a0, zero, zero
  CALL findfa
  ADD s4, a0, zero
  BNE s5, s4, bb54
  JAL zero, bb16
bb54:
  SLLIW s5, s5, 2
  LA s6, array
  ADD s5, s6, s5
  SW s4, 0(s5)
  JAL zero, bb16
bb55:
  ADDI s4, zero, 1
  # implict jump to bb56
bb56:
  SLLIW s5, s4, 2
  LA s7, array
  ADD s5, s7, s5
  ADDI s7, zero, -1
  SW s7, 0(s5)
  ADDIW s4, s4, 1
  ADDI s5, zero, 17
  SLT s5, s5, s4
  XORI s5, s5, 1
  BNE s5, zero, bb57
  JAL zero, bb5
bb57:
  JAL zero, bb56
