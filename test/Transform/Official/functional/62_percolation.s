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
  ADDI sp, sp, -160
  SD ra, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  SD s4, 104(sp)
  SD s5, 112(sp)
  SD s7, 120(sp)
  SD s8, 128(sp)
  SD s9, 136(sp)
  SD s10, 144(sp)
  ADDI s0, zero, 17
  SLTI s0, s0, 1
  XORI s0, s0, 1
  SB s0, 8(sp)
  ADDI s7, zero, 1
  ADD s0, zero, zero
  SB s0, 3(sp)
  ADD s0, zero, zero
  SB s0, 9(sp)
  ADD s0, zero, zero
  SB s0, 16(sp)
  ADD s3, zero, zero
  ADD s0, zero, zero
  SB s0, 14(sp)
  ADD s5, zero, zero
  ADD s0, zero, zero
  SW s0, 36(sp)
  ADD s4, zero, zero
  # implict jump to bb4
bb4:   # loop depth 1
  LW s0, 36(sp)
  SW s0, 36(sp)
  LB s0, 14(sp)
  SB s0, 14(sp)
  LB s0, 16(sp)
  SB s0, 16(sp)
  LB s0, 9(sp)
  SB s0, 9(sp)
  LB s0, 3(sp)
  SB s0, 3(sp)
  ADDIW s7, s7, -1
  SW s7, 40(sp)
  LA s8, n
  ADDI s9, zero, 4
  SW s9, 0(s8)
  LB s7, 8(sp)
  BNE s7, zero, bb55
  # implict jump to bb5
bb5:   # loop depth 1
  ADD s7, zero, zero
  SB s7, 4(sp)
  LB s0, 3(sp)
  SB s0, 3(sp)
  LB s0, 9(sp)
  SB s0, 9(sp)
  LB s0, 16(sp)
  SB s0, 16(sp)
  ADD s0, zero, zero
  SW s0, 24(sp)
  SB s3, 15(sp)
  LB s0, 14(sp)
  SB s0, 14(sp)
  LW s0, 36(sp)
  SW s0, 36(sp)
  ADD s8, zero, zero
  # implict jump to bb6
bb6:   # loop depth 2
  SW s4, 32(sp)
  LW s0, 36(sp)
  SW s0, 36(sp)
  SB s5, 5(sp)
  LB s3, 14(sp)
  SB s3, 6(sp)
  LB s3, 15(sp)
  SB s3, 7(sp)
  LW s0, 24(sp)
  SW s0, 24(sp)
  LB s0, 16(sp)
  SB s0, 16(sp)
  LB s0, 9(sp)
  SB s0, 9(sp)
  LB s0, 3(sp)
  SB s0, 3(sp)
  LB s9, 4(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 52(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 56(sp)
  XORI s9, s9, 1
  ADDIW s8, s8, 1
  BNE s9, zero, bb15
  # implict jump to bb7
bb7:   # loop depth 2
  LW s4, 32(sp)
  LW s0, 36(sp)
  SW s0, 36(sp)
  LB s5, 5(sp)
  LB s3, 6(sp)
  SB s3, 14(sp)
  LB s3, 7(sp)
  LW s0, 24(sp)
  SW s0, 24(sp)
  LB s0, 16(sp)
  SB s0, 16(sp)
  LB s0, 9(sp)
  SB s0, 9(sp)
  LB s0, 3(sp)
  SB s0, 3(sp)
  # implict jump to bb8
bb8:   # loop depth 2
  LB s0, 3(sp)
  SB s0, 3(sp)
  LB s0, 9(sp)
  SB s0, 9(sp)
  LB s0, 16(sp)
  SB s0, 16(sp)
  LW s0, 24(sp)
  SW s0, 24(sp)
  LB s0, 14(sp)
  SB s0, 14(sp)
  LW s0, 36(sp)
  SW s0, 36(sp)
  SLTI s0, s8, 10
  SB s0, 12(sp)
  LW s0, 24(sp)
  SLTU s1, zero, s0
  LB s0, 12(sp)
  BNE s0, zero, bb14
  # implict jump to bb9
bb9:   # loop depth 1
  XORI s1, s1, 1
  BNE s1, zero, bb13
  # implict jump to bb10
bb10:   # loop depth 1
  LW s1, 40(sp)
  BNE s1, zero, bb12
  # implict jump to bb11
bb11:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  LD s5, 112(sp)
  LD s7, 120(sp)
  LD s8, 128(sp)
  LD s9, 136(sp)
  LD s10, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb12:   # loop depth 1
  LW s7, 40(sp)
  LB s0, 3(sp)
  SB s0, 3(sp)
  LB s0, 9(sp)
  SB s0, 9(sp)
  LB s0, 16(sp)
  SB s0, 16(sp)
  LB s0, 14(sp)
  SB s0, 14(sp)
  LW s0, 36(sp)
  SW s0, 36(sp)
  JAL zero, bb4
bb13:   # loop depth 1
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb10
bb14:   # loop depth 2
  SB s1, 4(sp)
  LB s0, 3(sp)
  SB s0, 3(sp)
  LB s0, 9(sp)
  SB s0, 9(sp)
  LB s0, 16(sp)
  SB s0, 16(sp)
  LW s0, 24(sp)
  SW s0, 24(sp)
  SB s3, 15(sp)
  LB s0, 14(sp)
  SB s0, 14(sp)
  LW s0, 36(sp)
  SW s0, 36(sp)
  JAL zero, bb6
bb15:   # loop depth 2
  LA s0, n
  LW s0, 0(s0)
  LW s1, 52(sp)
  ADDIW s1, s1, -1
  MULW s0, s0, s1
  LW s1, 56(sp)
  ADDW s0, s0, s1
  SW s0, 36(sp)
  LW s0, 36(sp)
  SLLIW s1, s0, 2
  LA s3, array
  ADD s5, s3, s1
  LW s0, 36(sp)
  SW s0, 0(s5)
  LW s1, 52(sp)
  XORI s1, s1, 1
  SLTIU s1, s1, 1
  BNE s1, zero, bb53
  # implict jump to bb16
bb16:   # loop depth 2
  LA s1, n
  LW s1, 0(s1)
  LW s2, 52(sp)
  XOR s1, s2, s1
  SLTIU s1, s1, 1
  BNE s1, zero, bb51
  # implict jump to bb17
bb17:   # loop depth 2
  LA s1, n
  LW s1, 0(s1)
  LW s2, 56(sp)
  BLT s2, s1, bb50
  # implict jump to bb18
bb18:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb19
bb19:   # loop depth 2
  BNE s0, zero, bb48
  # implict jump to bb20
bb20:   # loop depth 2
  ADDI s3, zero, 1
  LW s2, 56(sp)
  BLT s3, s2, bb47
  # implict jump to bb21
bb21:   # loop depth 2
  ADD s3, zero, zero
  # implict jump to bb22
bb22:   # loop depth 2
  SB s3, 9(sp)
  LB s2, 9(sp)
  BNE s2, zero, bb45
  # implict jump to bb23
bb23:   # loop depth 2
  LA s3, n
  LW s3, 0(s3)
  LW s2, 52(sp)
  BLT s2, s3, bb44
  # implict jump to bb24
bb24:   # loop depth 2
  ADD s2, zero, zero
  SB s2, 11(sp)
  # implict jump to bb25
bb25:   # loop depth 2
  LB s2, 11(sp)
  SB s2, 11(sp)
  LB s2, 11(sp)
  BNE s2, zero, bb42
  # implict jump to bb26
bb26:   # loop depth 2
  ADDI s3, zero, 1
  LW s2, 52(sp)
  BLT s3, s2, bb41
  # implict jump to bb27
bb27:   # loop depth 2
  ADD s3, zero, zero
  # implict jump to bb28
bb28:   # loop depth 2
  SB s3, 16(sp)
  LB s2, 16(sp)
  BNE s2, zero, bb39
  # implict jump to bb29
bb29:   # loop depth 2
  LA s3, array
  LW s3, 0(s3)
  XORI s3, s3, -1
  BNE s3, zero, bb38
  # implict jump to bb30
bb30:   # loop depth 2
  ADD s3, zero, zero
  # implict jump to bb31
bb31:   # loop depth 2
  SB s3, 3(sp)
  LB s2, 3(sp)
  BNE s2, zero, bb37
  # implict jump to bb32
bb32:   # loop depth 2
  ADD s5, zero, zero
  # implict jump to bb33
bb33:   # loop depth 2
  BNE s5, zero, bb36
  # implict jump to bb34
bb34:   # loop depth 2
  LW s4, 32(sp)
  LW s1, 24(sp)
  SW s1, 24(sp)
  # implict jump to bb35
bb35:   # loop depth 2
  LW s1, 24(sp)
  SW s1, 24(sp)
  LW s1, 36(sp)
  SW s1, 36(sp)
  SB s0, 14(sp)
  LB s3, 11(sp)
  LW s0, 24(sp)
  SW s0, 24(sp)
  LB s0, 16(sp)
  SB s0, 16(sp)
  LB s0, 9(sp)
  SB s0, 9(sp)
  LB s0, 3(sp)
  SB s0, 3(sp)
  JAL zero, bb8
bb36:   # loop depth 2
  ADD a0, s8, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD s4, s8, zero
  ADDI s1, zero, 1
  SW s1, 24(sp)
  JAL zero, bb35
bb37:   # loop depth 2
  ADD a0, zero, zero
  CALL findfa
  ADD s4, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  ADD s3, a0, zero
  XOR s3, s4, s3
  SLTIU s5, s3, 1
  JAL zero, bb33
bb38:   # loop depth 2
  LA s3, array
  LW s3, 68(s3)
  XORI s3, s3, -1
  SLTU s3, zero, s3
  JAL zero, bb31
bb39:   # loop depth 2
  LA a0, n
  LW a0, 0(a0)
  LW s1, 36(sp)
  SUBW s3, s1, a0
  LW a0, 36(sp)
  CALL findfa
  ADD s4, a0, zero
  ADD a0, s3, zero
  CALL findfa
  ADD s3, a0, zero
  BNE s4, s3, bb40
  JAL zero, bb29
bb40:   # loop depth 2
  SLLIW s4, s4, 2
  LA s5, array
  ADD s4, s5, s4
  SW s3, 0(s4)
  JAL zero, bb29
bb41:   # loop depth 2
  LA s3, n
  LW s3, 0(s3)
  LW s1, 36(sp)
  SUBW s3, s1, s3
  SLLIW s3, s3, 2
  LA s4, array
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, -1
  SLTU s3, zero, s3
  JAL zero, bb28
bb42:   # loop depth 2
  LA a0, n
  LW a0, 0(a0)
  LW s1, 36(sp)
  ADDW s3, s1, a0
  LW a0, 36(sp)
  CALL findfa
  ADD s4, a0, zero
  ADD a0, s3, zero
  CALL findfa
  ADD s3, a0, zero
  BNE s4, s3, bb43
  JAL zero, bb26
bb43:   # loop depth 2
  SLLIW s4, s4, 2
  LA s5, array
  ADD s4, s5, s4
  SW s3, 0(s4)
  JAL zero, bb26
bb44:   # loop depth 2
  LW s1, 36(sp)
  ADDW s3, s1, s3
  SLLIW s3, s3, 2
  LA s4, array
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, -1
  SLTU s2, zero, s3
  SB s2, 11(sp)
  LB s2, 11(sp)
  SB s2, 11(sp)
  JAL zero, bb25
bb45:   # loop depth 2
  LW a0, 36(sp)
  ADDIW s3, a0, -1
  LW a0, 36(sp)
  CALL findfa
  ADD s4, a0, zero
  ADD a0, s3, zero
  CALL findfa
  ADD s3, a0, zero
  BNE s4, s3, bb46
  JAL zero, bb23
bb46:   # loop depth 2
  SLLIW s4, s4, 2
  LA s5, array
  ADD s4, s5, s4
  SW s3, 0(s4)
  JAL zero, bb23
bb47:   # loop depth 2
  LW s3, -4(s5)
  XORI s3, s3, -1
  SLTU s3, zero, s3
  JAL zero, bb22
bb48:   # loop depth 2
  LW a0, 36(sp)
  ADDIW s3, a0, 1
  LW a0, 36(sp)
  CALL findfa
  ADD s4, a0, zero
  ADD a0, s3, zero
  CALL findfa
  ADD s3, a0, zero
  BNE s4, s3, bb49
  JAL zero, bb20
bb49:   # loop depth 2
  SLLIW s4, s4, 2
  LA s9, array
  ADD s4, s9, s4
  SW s3, 0(s4)
  JAL zero, bb20
bb50:   # loop depth 2
  LW s1, 4(s5)
  XORI s1, s1, -1
  SLTU s0, zero, s1
  JAL zero, bb19
bb51:   # loop depth 2
  LA a0, array
  ADDI s1, zero, 17
  SW s1, 68(a0)
  LW a0, 36(sp)
  CALL findfa
  ADD s3, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  ADD s1, a0, zero
  BNE s3, s1, bb52
  JAL zero, bb17
bb52:   # loop depth 2
  SLLIW s3, s3, 2
  LA s4, array
  ADD s3, s4, s3
  SW s1, 0(s3)
  JAL zero, bb17
bb53:   # loop depth 2
  LA a0, array
  SW zero, 0(a0)
  LW a0, 36(sp)
  CALL findfa
  ADD s3, a0, zero
  ADD a0, zero, zero
  CALL findfa
  ADD s1, a0, zero
  BNE s3, s1, bb54
  JAL zero, bb16
bb54:   # loop depth 2
  SLLIW s3, s3, 2
  LA s4, array
  ADD s3, s4, s3
  SW s1, 0(s3)
  JAL zero, bb16
bb55:   # loop depth 1
  ADDI s8, zero, 1
  # implict jump to bb56
bb56:   # loop depth 2
  SLLIW s9, s8, 2
  LA s10, array
  ADD s9, s10, s9
  ADDI s10, zero, -1
  SW s10, 0(s9)
  ADDIW s8, s8, 1
  ADDI s9, zero, 17
  SLT s9, s9, s8
  XORI s9, s9, 1
  BNE s9, zero, bb57
  JAL zero, bb5
bb57:   # loop depth 2
  JAL zero, bb56
