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
  ADDI sp, sp, -144
  SD ra, 56(sp)
  SD s0, 64(sp)
  SD s1, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
  SD s6, 104(sp)
  SD s7, 112(sp)
  SD s8, 120(sp)
  SD s10, 128(sp)
  SD s11, 136(sp)
  ADDI s0, zero, 17
  SLTI s0, s0, 1
  XORI s0, s0, 1
  SB s0, 0(sp)
  ADDI s7, zero, 1
  ADD s0, zero, zero
  SB s0, 4(sp)
  ADD s10, zero, zero
  ADD s0, zero, zero
  SB s0, 1(sp)
  ADD s11, zero, zero
  ADD s2, zero, zero
  ADD s0, zero, zero
  SB s0, 12(sp)
  ADD s0, zero, zero
  SW s0, 44(sp)
  ADD s4, zero, zero
  # implict jump to bb4
bb4:
  LW s0, 44(sp)
  SW s0, 44(sp)
  LB s0, 12(sp)
  SB s0, 12(sp)
  SB s2, 9(sp)
  LB s0, 1(sp)
  SB s0, 1(sp)
  LB s0, 4(sp)
  SB s0, 4(sp)
  ADDI s0, zero, 1
  SUBW s0, s7, s0
  SW s0, 28(sp)
  LA s0, n
  ADDI s2, zero, 4
  SW s2, 0(s0)
  LB s0, 0(sp)
  BNE s0, zero, bb55
  # implict jump to bb5
bb5:
  LB s0, 4(sp)
  SB s0, 4(sp)
  LB s0, 1(sp)
  SB s0, 1(sp)
  ADD s0, zero, zero
  SW s0, 40(sp)
  LB s0, 9(sp)
  SB s0, 3(sp)
  LB s0, 3(sp)
  SB s0, 3(sp)
  LB s0, 12(sp)
  SB s0, 12(sp)
  LW s8, 44(sp)
  ADD s0, zero, zero
  SW s0, 20(sp)
  # implict jump to bb6
bb6:
  LW s0, 20(sp)
  SW s0, 20(sp)
  LB s0, 12(sp)
  SB s0, 12(sp)
  LB s0, 3(sp)
  SB s0, 3(sp)
  LW s0, 40(sp)
  SW s0, 40(sp)
  LB s0, 1(sp)
  SB s0, 1(sp)
  LB s0, 4(sp)
  SB s0, 4(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 16(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 24(sp)
  LW s0, 40(sp)
  SLTU s0, zero, s0
  SB s0, 6(sp)
  LB s0, 6(sp)
  XORI s0, s0, 1
  SW s0, 32(sp)
  LW s0, 32(sp)
  BNE s0, zero, bb15
  # implict jump to bb7
bb7:
  LB s0, 12(sp)
  SB s0, 12(sp)
  LB s0, 3(sp)
  SB s0, 3(sp)
  LB s0, 3(sp)
  SB s0, 8(sp)
  LW s0, 40(sp)
  SW s0, 40(sp)
  LB s0, 1(sp)
  SB s0, 1(sp)
  LB s0, 4(sp)
  SB s0, 4(sp)
  # implict jump to bb8
bb8:
  LB s0, 4(sp)
  SB s0, 4(sp)
  LB s0, 1(sp)
  SB s0, 1(sp)
  LW s0, 40(sp)
  SW s0, 40(sp)
  LB s0, 8(sp)
  SB s0, 8(sp)
  LB s0, 12(sp)
  SB s0, 12(sp)
  LW s0, 20(sp)
  ADDIW s0, s0, 1
  SW s0, 20(sp)
  LW s0, 20(sp)
  SLTI s2, s0, 10
  BNE s2, zero, bb14
  # implict jump to bb9
bb9:
  LW s0, 40(sp)
  SLTU s0, zero, s0
  XORI s0, s0, 1
  BNE s0, zero, bb13
  # implict jump to bb10
bb10:
  LW s0, 28(sp)
  BNE s0, zero, bb12
  # implict jump to bb11
bb11:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  LD s6, 104(sp)
  LD s7, 112(sp)
  LD s8, 120(sp)
  LD s10, 128(sp)
  LD s11, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb12:
  LW s7, 28(sp)
  LB s0, 4(sp)
  SB s0, 4(sp)
  LB s0, 1(sp)
  SB s0, 1(sp)
  LB s2, 8(sp)
  LB s0, 12(sp)
  SB s0, 12(sp)
  SW s8, 44(sp)
  JAL zero, bb4
bb13:
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb10
bb14:
  LB s0, 4(sp)
  SB s0, 4(sp)
  LB s0, 1(sp)
  SB s0, 1(sp)
  LW s0, 40(sp)
  SW s0, 40(sp)
  LB s0, 8(sp)
  SB s0, 3(sp)
  LB s0, 3(sp)
  SB s0, 3(sp)
  LB s0, 12(sp)
  SB s0, 12(sp)
  LW s0, 20(sp)
  SW s0, 20(sp)
  JAL zero, bb6
bb15:
  LA s0, n
  LW s0, 0(s0)
  ADDI s2, zero, 1
  LW s1, 16(sp)
  SUBW s2, s1, s2
  MULW s0, s0, s2
  LW s1, 24(sp)
  ADDW s8, s0, s1
  SLLIW s2, s8, 2
  LA s0, array
  ADD s0, s0, s2
  SW s8, 0(s0)
  LW s0, 16(sp)
  XORI s0, s0, 1
  SLTIU s0, s0, 1
  BNE s0, zero, bb53
  # implict jump to bb16
bb16:
  LA s0, n
  LW s0, 0(s0)
  LW s1, 16(sp)
  XOR s0, s1, s0
  SLTIU s0, s0, 1
  BNE s0, zero, bb51
  # implict jump to bb17
bb17:
  LA s0, n
  LW s0, 0(s0)
  LW s1, 24(sp)
  BLT s1, s0, bb50
  # implict jump to bb18
bb18:
  ADD s2, zero, zero
  # implict jump to bb19
bb19:
  BNE s2, zero, bb48
  # implict jump to bb20
bb20:
  ADDI s3, zero, 1
  LW s0, 24(sp)
  BLT s3, s0, bb47
  # implict jump to bb21
bb21:
  ADD s10, zero, zero
  # implict jump to bb22
bb22:
  BNE s10, zero, bb45
  # implict jump to bb23
bb23:
  LA s0, n
  LW s0, 0(s0)
  LW s1, 16(sp)
  BLT s1, s0, bb44
  # implict jump to bb24
bb24:
  ADD s11, zero, zero
  # implict jump to bb25
bb25:
  BNE s11, zero, bb42
  # implict jump to bb26
bb26:
  ADDI s0, zero, 1
  LW s1, 16(sp)
  BLT s0, s1, bb41
  # implict jump to bb27
bb27:
  ADD s0, zero, zero
  SB s0, 7(sp)
  # implict jump to bb28
bb28:
  LB s0, 7(sp)
  SB s0, 7(sp)
  LB s0, 7(sp)
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
  SB s0, 4(sp)
  # implict jump to bb31
bb31:
  LB s0, 4(sp)
  SB s0, 4(sp)
  LB s0, 4(sp)
  BNE s0, zero, bb37
  # implict jump to bb32
bb32:
  ADD s3, zero, zero
  # implict jump to bb33
bb33:
  BNE s3, zero, bb36
  # implict jump to bb34
bb34:
  LW s0, 40(sp)
  SW s0, 40(sp)
  # implict jump to bb35
bb35:
  LW s0, 40(sp)
  SW s0, 40(sp)
  SB s3, 12(sp)
  SB s2, 8(sp)
  LW s0, 40(sp)
  SW s0, 40(sp)
  LB s0, 7(sp)
  SB s0, 1(sp)
  LB s0, 4(sp)
  SB s0, 4(sp)
  JAL zero, bb8
bb36:
  LW a0, 20(sp)
  ADDIW s4, a0, 1
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s0, zero, 1
  SW s0, 40(sp)
  JAL zero, bb35
bb37:
  ADD a0, zero, zero
  CALL findfa
  ADD s0, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  ADD s1, a0, zero
  XOR s0, s0, s1
  SLTIU s3, s0, 1
  JAL zero, bb33
bb38:
  LA s0, array
  LW s0, 68(s0)
  XORI s0, s0, -1
  SLTU s0, zero, s0
  SB s0, 4(sp)
  LB s0, 4(sp)
  SB s0, 4(sp)
  JAL zero, bb31
bb39:
  LA a0, n
  LW a0, 0(a0)
  SUBW s0, s8, a0
  ADD a0, s8, zero
  CALL findfa
  ADD s1, a0, zero
  ADD a0, s0, zero
  CALL findfa
  ADD s3, a0, zero
  BNE s1, s3, bb40
  JAL zero, bb29
bb40:
  SLLIW s0, s1, 2
  LA s1, array
  ADD s0, s1, s0
  SW s3, 0(s0)
  JAL zero, bb29
bb41:
  LA s0, n
  LW s0, 0(s0)
  SUBW s0, s8, s0
  SLLIW s0, s0, 2
  LA s1, array
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, -1
  SLTU s0, zero, s0
  SB s0, 7(sp)
  LB s0, 7(sp)
  SB s0, 7(sp)
  JAL zero, bb28
bb42:
  LA a0, n
  LW a0, 0(a0)
  ADDW s0, s8, a0
  ADD a0, s8, zero
  CALL findfa
  ADD s1, a0, zero
  ADD a0, s0, zero
  CALL findfa
  ADD s3, a0, zero
  BNE s1, s3, bb43
  JAL zero, bb26
bb43:
  SLLIW s0, s1, 2
  LA s1, array
  ADD s0, s1, s0
  SW s3, 0(s0)
  JAL zero, bb26
bb44:
  ADDW s0, s8, s0
  SLLIW s0, s0, 2
  LA s1, array
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, -1
  SLTU s11, zero, s0
  JAL zero, bb25
bb45:
  ADDI a0, zero, 1
  SUBW s1, s8, a0
  ADD a0, s8, zero
  CALL findfa
  ADD s0, a0, zero
  ADD a0, s1, zero
  CALL findfa
  ADD s3, a0, zero
  BNE s0, s3, bb46
  JAL zero, bb23
bb46:
  SLLIW s0, s0, 2
  LA s1, array
  ADD s0, s1, s0
  SW s3, 0(s0)
  JAL zero, bb23
bb47:
  ADDI s0, zero, 1
  SUBW s0, s8, s0
  SLLIW s1, s0, 2
  LA s0, array
  ADD s0, s0, s1
  LW s0, 0(s0)
  XORI s0, s0, -1
  SLTU s10, zero, s0
  JAL zero, bb22
bb48:
  ADDIW s0, s8, 1
  ADD a0, s8, zero
  CALL findfa
  ADD s6, a0, zero
  ADD a0, s0, zero
  CALL findfa
  ADD s3, a0, zero
  BNE s6, s3, bb49
  JAL zero, bb20
bb49:
  SLLIW s6, s6, 2
  LA s0, array
  ADD s0, s0, s6
  SW s3, 0(s0)
  JAL zero, bb20
bb50:
  ADDIW s0, s8, 1
  SLLIW s2, s0, 2
  LA s0, array
  ADD s0, s0, s2
  LW s0, 0(s0)
  XORI s0, s0, -1
  SLTU s2, zero, s0
  JAL zero, bb19
bb51:
  LA a0, array
  ADDI s0, zero, 17
  SW s0, 68(a0)
  ADD a0, s8, zero
  CALL findfa
  ADD s0, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  ADD s2, a0, zero
  BNE s0, s2, bb52
  JAL zero, bb17
bb52:
  SLLIW s3, s0, 2
  LA s0, array
  ADD s0, s0, s3
  SW s2, 0(s0)
  JAL zero, bb17
bb53:
  LA a0, array
  SW zero, 0(a0)
  ADD a0, s8, zero
  CALL findfa
  ADD s0, a0, zero
  ADD a0, zero, zero
  CALL findfa
  ADD s2, a0, zero
  BNE s0, s2, bb54
  JAL zero, bb16
bb54:
  SLLIW s3, s0, 2
  LA s0, array
  ADD s0, s0, s3
  SW s2, 0(s0)
  JAL zero, bb16
bb55:
  ADDI s0, zero, 1
  # implict jump to bb56
bb56:
  SLLIW s2, s0, 2
  LA s3, array
  ADD s2, s3, s2
  ADDI s3, zero, -1
  SW s3, 0(s2)
  ADDIW s0, s0, 1
  ADDI s2, zero, 17
  SLT s2, s2, s0
  XORI s2, s2, 1
  BNE s2, zero, bb57
  JAL zero, bb5
bb57:
  JAL zero, bb56
