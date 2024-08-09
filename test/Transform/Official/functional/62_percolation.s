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
  SLLIW s0, a0, 2
  LA s1, array
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
  ADDI sp, sp, -192
  SD ra, 80(sp)
  SD s0, 88(sp)
  SD s1, 96(sp)
  SD s2, 104(sp)
  SD s3, 112(sp)
  SD s4, 120(sp)
  SD s5, 128(sp)
  SD s6, 136(sp)
  SD s7, 144(sp)
  SD s8, 152(sp)
  SD s9, 176(sp)
  ADDI s0, zero, 17
  SLTI s0, s0, 1
  XORI s0, s0, 1
  SB s0, 1(sp)
  ADD s0, zero, zero
  SW s0, 44(sp)
  ADD s0, zero, zero
  SB s0, 5(sp)
  ADD s0, zero, zero
  SB s0, 14(sp)
  ADD s0, zero, zero
  SB s0, 6(sp)
  ADDI s5, zero, 1
  ADD s0, zero, zero
  SB s0, 15(sp)
  ADD s0, zero, zero
  SB s0, 0(sp)
  ADD s3, zero, zero
  ADD s9, zero, zero
  # implict jump to bb4
bb4:   # loop depth 1
  LB s0, 0(sp)
  SB s0, 0(sp)
  LB s0, 15(sp)
  SB s0, 15(sp)
  LB s0, 6(sp)
  SB s0, 6(sp)
  LB s0, 14(sp)
  SB s0, 14(sp)
  LB s0, 5(sp)
  SB s0, 5(sp)
  LW s0, 44(sp)
  SW s0, 44(sp)
  ADDIW s5, s5, -1
  SW s5, 60(sp)
  LA s6, n
  ADDI s7, zero, 4
  SW s7, 0(s6)
  LB s5, 1(sp)
  BNE s5, zero, bb55
  # implict jump to bb5
bb5:   # loop depth 1
  ADD s5, zero, zero
  SB s5, 4(sp)
  LW s0, 44(sp)
  SW s0, 44(sp)
  LB s0, 5(sp)
  SB s0, 5(sp)
  LB s0, 14(sp)
  SB s0, 14(sp)
  LB s0, 6(sp)
  SB s0, 6(sp)
  ADD s0, zero, zero
  SW s0, 48(sp)
  LB s0, 15(sp)
  SB s0, 15(sp)
  LB s0, 0(sp)
  SB s0, 0(sp)
  ADD s4, zero, zero
  # implict jump to bb6
bb6:   # loop depth 2
  SW s4, 20(sp)
  SW s9, 56(sp)
  LB s0, 0(sp)
  SB s0, 0(sp)
  LB s0, 15(sp)
  SB s0, 15(sp)
  LW s0, 48(sp)
  SW s0, 48(sp)
  LB s0, 6(sp)
  SB s0, 6(sp)
  LB s0, 14(sp)
  SB s0, 14(sp)
  LB s0, 5(sp)
  SB s0, 5(sp)
  LW s0, 44(sp)
  SW s0, 44(sp)
  LW s0, 44(sp)
  SW s0, 52(sp)
  LB s9, 4(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 28(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 32(sp)
  XORI s9, s9, 1
  LW s0, 20(sp)
  ADDIW s4, s0, 1
  BNE s9, zero, bb15
  # implict jump to bb7
bb7:   # loop depth 2
  LW s0, 56(sp)
  SW s0, 16(sp)
  LW s0, 16(sp)
  SW s0, 16(sp)
  SB s3, 10(sp)
  LB s0, 0(sp)
  SB s0, 0(sp)
  LB s0, 15(sp)
  SB s0, 15(sp)
  LW s0, 48(sp)
  SW s0, 48(sp)
  LB s6, 6(sp)
  LB s0, 14(sp)
  SB s0, 14(sp)
  LB s0, 5(sp)
  SB s0, 5(sp)
  LW s0, 52(sp)
  SW s0, 44(sp)
  LW s0, 44(sp)
  SW s0, 44(sp)
  # implict jump to bb8
bb8:   # loop depth 2
  LW s0, 44(sp)
  SW s0, 44(sp)
  LB s0, 5(sp)
  SB s0, 5(sp)
  LB s0, 14(sp)
  SB s0, 14(sp)
  SB s6, 6(sp)
  LW s0, 48(sp)
  SW s0, 48(sp)
  LW s0, 48(sp)
  SW s0, 40(sp)
  LB s0, 15(sp)
  SB s0, 15(sp)
  LB s0, 0(sp)
  SB s0, 0(sp)
  LB s3, 10(sp)
  LW s9, 16(sp)
  SLTI s2, s4, 10
  SB s2, 3(sp)
  LW s0, 40(sp)
  SLTU s0, zero, s0
  SB s0, 9(sp)
  LB s2, 3(sp)
  BNE s2, zero, bb14
  # implict jump to bb9
bb9:   # loop depth 1
  LB s0, 9(sp)
  XORI s4, s0, 1
  BNE s4, zero, bb13
  # implict jump to bb10
bb10:   # loop depth 1
  LW s4, 60(sp)
  BNE s4, zero, bb12
  # implict jump to bb11
bb11:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 80(sp)
  LD s0, 88(sp)
  LD s1, 96(sp)
  LD s2, 104(sp)
  LD s3, 112(sp)
  LD s4, 120(sp)
  LD s5, 128(sp)
  LD s6, 136(sp)
  LD s7, 144(sp)
  LD s8, 152(sp)
  LD s9, 176(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb12:   # loop depth 1
  LW s0, 44(sp)
  SW s0, 44(sp)
  LB s0, 5(sp)
  SB s0, 5(sp)
  LB s0, 14(sp)
  SB s0, 14(sp)
  LB s0, 6(sp)
  SB s0, 6(sp)
  LW s5, 60(sp)
  LB s0, 15(sp)
  SB s0, 15(sp)
  LB s0, 0(sp)
  SB s0, 0(sp)
  JAL zero, bb4
bb13:   # loop depth 1
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb10
bb14:   # loop depth 2
  LB s0, 9(sp)
  SB s0, 9(sp)
  LB s0, 9(sp)
  SB s0, 4(sp)
  LW s0, 44(sp)
  SW s0, 44(sp)
  LB s0, 5(sp)
  SB s0, 5(sp)
  LB s0, 14(sp)
  SB s0, 14(sp)
  LB s0, 6(sp)
  SB s0, 6(sp)
  LW s0, 40(sp)
  SW s0, 48(sp)
  LW s0, 48(sp)
  SW s0, 48(sp)
  LB s0, 15(sp)
  SB s0, 15(sp)
  LB s0, 0(sp)
  SB s0, 0(sp)
  JAL zero, bb6
bb15:   # loop depth 2
  LA s1, n
  LW s1, 0(s1)
  LW s0, 28(sp)
  ADDIW s2, s0, -1
  MULW s1, s1, s2
  LW s0, 32(sp)
  ADDW s0, s1, s0
  SW s0, 16(sp)
  LW s0, 16(sp)
  SLLIW s2, s0, 2
  LA s3, array
  ADD s8, s3, s2
  LW s0, 16(sp)
  SW s0, 0(s8)
  LW s0, 28(sp)
  XORI s2, s0, 1
  SLTIU s2, s2, 1
  BNE s2, zero, bb53
  # implict jump to bb16
bb16:   # loop depth 2
  LA s2, n
  LW s2, 0(s2)
  LW s0, 28(sp)
  XOR s2, s0, s2
  SLTIU s2, s2, 1
  BNE s2, zero, bb51
  # implict jump to bb17
bb17:   # loop depth 2
  LA s2, n
  LW s2, 0(s2)
  LW s0, 32(sp)
  BLT s0, s2, bb50
  # implict jump to bb18
bb18:   # loop depth 2
  ADD s0, zero, zero
  SB s0, 0(sp)
  # implict jump to bb19
bb19:   # loop depth 2
  LB s0, 0(sp)
  SB s0, 0(sp)
  LB s0, 0(sp)
  BNE s0, zero, bb48
  # implict jump to bb20
bb20:   # loop depth 2
  ADDI s3, zero, 1
  LW s0, 32(sp)
  BLT s3, s0, bb47
  # implict jump to bb21
bb21:   # loop depth 2
  ADD s0, zero, zero
  SB s0, 14(sp)
  # implict jump to bb22
bb22:   # loop depth 2
  LB s0, 14(sp)
  SB s0, 14(sp)
  LB s0, 14(sp)
  BNE s0, zero, bb45
  # implict jump to bb23
bb23:   # loop depth 2
  LA s6, n
  LW s6, 0(s6)
  LW s0, 28(sp)
  BLT s0, s6, bb44
  # implict jump to bb24
bb24:   # loop depth 2
  ADD s0, zero, zero
  SB s0, 15(sp)
  # implict jump to bb25
bb25:   # loop depth 2
  LB s0, 15(sp)
  SB s0, 15(sp)
  LB s0, 15(sp)
  BNE s0, zero, bb42
  # implict jump to bb26
bb26:   # loop depth 2
  ADDI s8, zero, 1
  LW s0, 28(sp)
  BLT s8, s0, bb41
  # implict jump to bb27
bb27:   # loop depth 2
  ADD s6, zero, zero
  # implict jump to bb28
bb28:   # loop depth 2
  BNE s6, zero, bb39
  # implict jump to bb29
bb29:   # loop depth 2
  LA s9, array
  LW s9, 0(s9)
  XORI s9, s9, -1
  BNE s9, zero, bb38
  # implict jump to bb30
bb30:   # loop depth 2
  ADD s0, zero, zero
  SB s0, 5(sp)
  # implict jump to bb31
bb31:   # loop depth 2
  LB s0, 5(sp)
  SB s0, 5(sp)
  LB s0, 5(sp)
  BNE s0, zero, bb37
  # implict jump to bb32
bb32:   # loop depth 2
  ADD s0, zero, zero
  SB s0, 10(sp)
  # implict jump to bb33
bb33:   # loop depth 2
  LB s0, 10(sp)
  SB s0, 10(sp)
  LB s0, 10(sp)
  BNE s0, zero, bb36
  # implict jump to bb34
bb34:   # loop depth 2
  LW s0, 48(sp)
  SW s0, 48(sp)
  LW s0, 52(sp)
  SW s0, 44(sp)
  LW s0, 44(sp)
  SW s0, 44(sp)
  # implict jump to bb35
bb35:   # loop depth 2
  LW s0, 44(sp)
  SW s0, 44(sp)
  LW s0, 48(sp)
  SW s0, 48(sp)
  LW s0, 16(sp)
  SW s0, 16(sp)
  LB s0, 10(sp)
  SB s0, 10(sp)
  LB s0, 0(sp)
  SB s0, 0(sp)
  LB s0, 15(sp)
  SB s0, 15(sp)
  LW s0, 48(sp)
  SW s0, 48(sp)
  LB s0, 14(sp)
  SB s0, 14(sp)
  LB s0, 5(sp)
  SB s0, 5(sp)
  LW s0, 44(sp)
  SW s0, 44(sp)
  JAL zero, bb8
bb36:   # loop depth 2
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s0, zero, 1
  SW s0, 48(sp)
  ADD s0, s4, zero
  SW s0, 44(sp)
  JAL zero, bb35
bb37:   # loop depth 2
  ADD a0, zero, zero
  CALL findfa
  SW a0, 68(sp)
  ADDI a0, zero, 17
  CALL findfa
  ADD s9, a0, zero
  LW s0, 68(sp)
  XOR s9, s0, s9
  SLTIU s0, s9, 1
  SB s0, 10(sp)
  LB s0, 10(sp)
  SB s0, 10(sp)
  JAL zero, bb33
bb38:   # loop depth 2
  LA s9, array
  LW s9, 68(s9)
  XORI s9, s9, -1
  SLTU s0, zero, s9
  SB s0, 5(sp)
  LB s0, 5(sp)
  SB s0, 5(sp)
  JAL zero, bb31
bb39:   # loop depth 2
  LA a0, n
  LW a0, 0(a0)
  LW s0, 16(sp)
  SUBW s9, s0, a0
  LW a0, 16(sp)
  CALL findfa
  SW a0, 72(sp)
  ADD a0, s9, zero
  CALL findfa
  ADD s0, a0, zero
  SW s0, 36(sp)
  LW s0, 36(sp)
  LW s1, 72(sp)
  BNE s1, s0, bb40
  JAL zero, bb29
bb40:   # loop depth 2
  LW s0, 72(sp)
  SLLIW s9, s0, 2
  LA s0, array
  SD s0, 168(sp)
  LD s0, 168(sp)
  ADD s9, s0, s9
  LW s0, 36(sp)
  SW s0, 0(s9)
  JAL zero, bb29
bb41:   # loop depth 2
  LA s8, n
  LW s8, 0(s8)
  LW s0, 16(sp)
  SUBW s8, s0, s8
  SLLIW s8, s8, 2
  LA s9, array
  ADD s8, s9, s8
  LW s8, 0(s8)
  XORI s8, s8, -1
  SLTU s6, zero, s8
  JAL zero, bb28
bb42:   # loop depth 2
  LA a0, n
  LW a0, 0(a0)
  LW s0, 16(sp)
  ADDW s8, s0, a0
  LW a0, 16(sp)
  CALL findfa
  ADD s9, a0, zero
  ADD a0, s8, zero
  CALL findfa
  ADD s8, a0, zero
  BNE s9, s8, bb43
  JAL zero, bb26
bb43:   # loop depth 2
  SLLIW s9, s9, 2
  LA s0, array
  SD s0, 160(sp)
  LD s0, 160(sp)
  ADD s9, s0, s9
  SW s8, 0(s9)
  JAL zero, bb26
bb44:   # loop depth 2
  LW s0, 16(sp)
  ADDW s6, s0, s6
  SLLIW s6, s6, 2
  LA s8, array
  ADD s6, s8, s6
  LW s6, 0(s6)
  XORI s6, s6, -1
  SLTU s0, zero, s6
  SB s0, 15(sp)
  LB s0, 15(sp)
  SB s0, 15(sp)
  JAL zero, bb25
bb45:   # loop depth 2
  LW a0, 16(sp)
  ADDIW s6, a0, -1
  LW a0, 16(sp)
  CALL findfa
  ADD s8, a0, zero
  ADD a0, s6, zero
  CALL findfa
  ADD s6, a0, zero
  BNE s8, s6, bb46
  JAL zero, bb23
bb46:   # loop depth 2
  SLLIW s8, s8, 2
  LA s9, array
  ADD s8, s9, s8
  SW s6, 0(s8)
  JAL zero, bb23
bb47:   # loop depth 2
  LW s3, -4(s8)
  XORI s3, s3, -1
  SLTU s0, zero, s3
  SB s0, 14(sp)
  LB s0, 14(sp)
  SB s0, 14(sp)
  JAL zero, bb22
bb48:   # loop depth 2
  LW a0, 16(sp)
  ADDIW s3, a0, 1
  LW a0, 16(sp)
  CALL findfa
  ADD s6, a0, zero
  ADD a0, s3, zero
  CALL findfa
  ADD s3, a0, zero
  BNE s6, s3, bb49
  JAL zero, bb20
bb49:   # loop depth 2
  SLLIW s6, s6, 2
  LA s9, array
  ADD s6, s9, s6
  SW s3, 0(s6)
  JAL zero, bb20
bb50:   # loop depth 2
  LW s2, 4(s8)
  XORI s2, s2, -1
  SLTU s0, zero, s2
  SB s0, 0(sp)
  LB s0, 0(sp)
  SB s0, 0(sp)
  JAL zero, bb19
bb51:   # loop depth 2
  LA a0, array
  ADDI s2, zero, 17
  SW s2, 68(a0)
  LW a0, 16(sp)
  CALL findfa
  ADD s3, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  ADD s2, a0, zero
  BNE s3, s2, bb52
  JAL zero, bb17
bb52:   # loop depth 2
  SLLIW s3, s3, 2
  LA s6, array
  ADD s3, s6, s3
  SW s2, 0(s3)
  JAL zero, bb17
bb53:   # loop depth 2
  LA a0, array
  SW zero, 0(a0)
  LW a0, 16(sp)
  CALL findfa
  ADD s3, a0, zero
  ADD a0, zero, zero
  CALL findfa
  ADD s2, a0, zero
  BNE s3, s2, bb54
  JAL zero, bb16
bb54:   # loop depth 2
  SLLIW s3, s3, 2
  LA s6, array
  ADD s3, s6, s3
  SW s2, 0(s3)
  JAL zero, bb16
bb55:   # loop depth 1
  ADDI s0, zero, 1
  SW s0, 24(sp)
  # implict jump to bb56
bb56:   # loop depth 2
  LW s0, 24(sp)
  SW s0, 24(sp)
  LW s0, 24(sp)
  SLLIW s6, s0, 2
  LA s7, array
  ADD s6, s7, s6
  ADDI s7, zero, -1
  SW s7, 0(s6)
  LW s0, 24(sp)
  ADDIW s0, s0, 1
  SW s0, 24(sp)
  ADDI s7, zero, 17
  LW s0, 24(sp)
  SLT s7, s7, s0
  XORI s7, s7, 1
  BNE s7, zero, bb57
  JAL zero, bb5
bb57:   # loop depth 2
  LW s0, 24(sp)
  SW s0, 24(sp)
  JAL zero, bb56
