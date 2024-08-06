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
  SD ra, 88(sp)
  SD s0, 96(sp)
  SD s1, 104(sp)
  SD s2, 112(sp)
  SD s3, 120(sp)
  SD s4, 128(sp)
  SD s5, 136(sp)
  SD s6, 144(sp)
  SD s7, 152(sp)
  SD s8, 160(sp)
  SD s9, 168(sp)
  SD s10, 176(sp)
  SD s11, 184(sp)
  ADDI s0, zero, 17
  SLTI s0, s0, 1
  XORI s0, s0, 1
  SB s0, 4(sp)
  ADDI s7, zero, 1
  ADD s0, zero, zero
  SB s0, 11(sp)
  ADD s1, zero, zero
  SB s1, 22(sp)
  ADD s10, zero, zero
  ADD s0, zero, zero
  SB s0, 20(sp)
  ADD s0, zero, zero
  SB s0, 19(sp)
  ADD s1, zero, zero
  SB s1, 0(sp)
  ADD s1, zero, zero
  SW s1, 44(sp)
  ADD s1, zero, zero
  SW s1, 48(sp)
  # implict jump to bb4
bb4:   # loop depth 1
  LW s1, 48(sp)
  SW s1, 48(sp)
  LW s1, 44(sp)
  SW s1, 44(sp)
  LB s1, 0(sp)
  SB s1, 0(sp)
  LB s0, 19(sp)
  SB s0, 19(sp)
  LB s0, 20(sp)
  SB s0, 20(sp)
  LB s1, 22(sp)
  SB s1, 22(sp)
  LB s0, 11(sp)
  SB s0, 11(sp)
  ADDI s8, zero, 1
  SUBW s7, s7, s8
  SW s7, 60(sp)
  LA s8, n
  ADDI s9, zero, 4
  SW s9, 0(s8)
  LB s7, 4(sp)
  BNE s7, zero, bb55
  # implict jump to bb5
bb5:   # loop depth 1
  ADD s7, zero, zero
  SB s7, 10(sp)
  LB s0, 11(sp)
  SB s0, 11(sp)
  LB s11, 22(sp)
  ADD s1, zero, zero
  SW s1, 56(sp)
  LB s0, 20(sp)
  SB s0, 20(sp)
  LB s0, 19(sp)
  SB s0, 19(sp)
  LB s1, 0(sp)
  SB s1, 0(sp)
  LW s1, 44(sp)
  SW s1, 44(sp)
  ADD s0, zero, zero
  SW s0, 76(sp)
  LW s1, 48(sp)
  SW s1, 48(sp)
  # implict jump to bb6
bb6:   # loop depth 2
  LW s1, 48(sp)
  SW s1, 48(sp)
  LW s0, 76(sp)
  SW s0, 76(sp)
  LW s1, 44(sp)
  SW s1, 44(sp)
  LB s1, 0(sp)
  SB s1, 9(sp)
  LB s0, 19(sp)
  SB s0, 19(sp)
  LB s0, 19(sp)
  SB s0, 8(sp)
  LB s0, 20(sp)
  SB s0, 20(sp)
  LB s0, 20(sp)
  SB s0, 7(sp)
  LW s1, 56(sp)
  SW s1, 56(sp)
  SB s10, 6(sp)
  SB s11, 22(sp)
  LB s0, 11(sp)
  SB s0, 11(sp)
  LB s6, 10(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 72(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 64(sp)
  XORI s6, s6, 1
  LW s0, 76(sp)
  ADDIW s0, s0, 1
  SW s0, 68(sp)
  BNE s6, zero, bb15
  # implict jump to bb7
bb7:   # loop depth 2
  LW s0, 48(sp)
  SW s0, 48(sp)
  LW s0, 44(sp)
  SW s0, 44(sp)
  LB s4, 9(sp)
  SB s4, 0(sp)
  LB s0, 8(sp)
  SB s0, 19(sp)
  LB s0, 19(sp)
  SB s0, 19(sp)
  LB s0, 7(sp)
  SB s0, 20(sp)
  LB s0, 20(sp)
  SB s0, 20(sp)
  LW s0, 56(sp)
  SW s0, 28(sp)
  LB s10, 6(sp)
  LB s0, 22(sp)
  SB s0, 22(sp)
  LB s0, 11(sp)
  SB s0, 11(sp)
  # implict jump to bb8
bb8:   # loop depth 2
  LB s0, 11(sp)
  SB s0, 11(sp)
  LB s1, 22(sp)
  SB s1, 22(sp)
  LW s1, 28(sp)
  SW s1, 56(sp)
  LB s0, 20(sp)
  SB s0, 20(sp)
  LB s0, 19(sp)
  SB s0, 19(sp)
  LB s1, 0(sp)
  SB s1, 0(sp)
  LW s1, 44(sp)
  SW s1, 44(sp)
  LW s1, 48(sp)
  SW s1, 48(sp)
  LW s2, 68(sp)
  SLTI s0, s2, 10
  SB s0, 21(sp)
  LW s1, 56(sp)
  SLTU s1, zero, s1
  SB s1, 1(sp)
  LB s0, 21(sp)
  BNE s0, zero, bb14
  # implict jump to bb9
bb9:   # loop depth 1
  LB s1, 1(sp)
  XORI s2, s1, 1
  BNE s2, zero, bb13
  # implict jump to bb10
bb10:   # loop depth 1
  LW s2, 60(sp)
  BNE s2, zero, bb12
  # implict jump to bb11
bb11:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 88(sp)
  LD s0, 96(sp)
  LD s1, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD s5, 136(sp)
  LD s6, 144(sp)
  LD s7, 152(sp)
  LD s8, 160(sp)
  LD s9, 168(sp)
  LD s10, 176(sp)
  LD s11, 184(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb12:   # loop depth 1
  LW s7, 60(sp)
  LB s0, 11(sp)
  SB s0, 11(sp)
  LB s1, 22(sp)
  SB s1, 22(sp)
  LB s0, 20(sp)
  SB s0, 20(sp)
  LB s0, 19(sp)
  SB s0, 19(sp)
  LB s1, 0(sp)
  SB s1, 0(sp)
  LW s1, 44(sp)
  SW s1, 44(sp)
  LW s1, 48(sp)
  SW s1, 48(sp)
  JAL zero, bb4
bb13:   # loop depth 1
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb10
bb14:   # loop depth 2
  LB s1, 1(sp)
  SB s1, 1(sp)
  LB s1, 1(sp)
  SB s1, 10(sp)
  LB s0, 11(sp)
  SB s0, 11(sp)
  LB s11, 22(sp)
  LW s1, 56(sp)
  SW s1, 56(sp)
  LB s0, 20(sp)
  SB s0, 20(sp)
  LB s0, 19(sp)
  SB s0, 19(sp)
  LB s1, 0(sp)
  SB s1, 0(sp)
  LW s1, 44(sp)
  SW s1, 44(sp)
  LW s0, 68(sp)
  SW s0, 76(sp)
  LW s0, 76(sp)
  SW s0, 76(sp)
  LW s1, 48(sp)
  SW s1, 48(sp)
  JAL zero, bb6
bb15:   # loop depth 2
  LA s0, n
  LW s0, 0(s0)
  ADDI s1, zero, 1
  LW s2, 72(sp)
  SUBW s1, s2, s1
  MULW s0, s0, s1
  LW s1, 64(sp)
  ADDW s3, s0, s1
  SLLIW s0, s3, 2
  LA s1, array
  ADD s0, s1, s0
  SW s3, 0(s0)
  LW s0, 72(sp)
  XORI s0, s0, 1
  SLTIU s0, s0, 1
  BNE s0, zero, bb53
  # implict jump to bb16
bb16:   # loop depth 2
  LA s0, n
  LW s0, 0(s0)
  LW s1, 72(sp)
  XOR s0, s1, s0
  SLTIU s0, s0, 1
  BNE s0, zero, bb51
  # implict jump to bb17
bb17:   # loop depth 2
  LA s0, n
  LW s0, 0(s0)
  ADDIW s4, s3, 1
  LW s1, 64(sp)
  BLT s1, s0, bb50
  # implict jump to bb18
bb18:   # loop depth 2
  ADD s0, zero, zero
  SB s0, 18(sp)
  # implict jump to bb19
bb19:   # loop depth 2
  LB s0, 18(sp)
  SB s0, 18(sp)
  LB s0, 18(sp)
  BNE s0, zero, bb48
  # implict jump to bb20
bb20:   # loop depth 2
  ADDI s0, zero, 1
  ADDI s1, zero, 1
  SUBW s1, s3, s1
  LW s2, 64(sp)
  BLT s0, s2, bb47
  # implict jump to bb21
bb21:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb22
bb22:   # loop depth 2
  SB s0, 22(sp)
  LB s0, 22(sp)
  BNE s0, zero, bb45
  # implict jump to bb23
bb23:   # loop depth 2
  LA s1, n
  LW s1, 0(s1)
  LW s0, 72(sp)
  BLT s0, s1, bb44
  # implict jump to bb24
bb24:   # loop depth 2
  ADD s0, zero, zero
  SB s0, 17(sp)
  # implict jump to bb25
bb25:   # loop depth 2
  LB s0, 17(sp)
  SB s0, 17(sp)
  LB s0, 17(sp)
  BNE s0, zero, bb42
  # implict jump to bb26
bb26:   # loop depth 2
  ADDI s1, zero, 1
  LW s0, 72(sp)
  BLT s1, s0, bb41
  # implict jump to bb27
bb27:   # loop depth 2
  ADD s10, zero, zero
  # implict jump to bb28
bb28:   # loop depth 2
  BNE s10, zero, bb39
  # implict jump to bb29
bb29:   # loop depth 2
  LA s4, array
  LW s4, 0(s4)
  XORI s4, s4, -1
  BNE s4, zero, bb38
  # implict jump to bb30
bb30:   # loop depth 2
  ADD s0, zero, zero
  SB s0, 11(sp)
  # implict jump to bb31
bb31:   # loop depth 2
  LB s0, 11(sp)
  SB s0, 11(sp)
  LB s0, 11(sp)
  BNE s0, zero, bb37
  # implict jump to bb32
bb32:   # loop depth 2
  ADD s4, zero, zero
  # implict jump to bb33
bb33:   # loop depth 2
  BNE s4, zero, bb36
  # implict jump to bb34
bb34:   # loop depth 2
  LW s1, 48(sp)
  SW s1, 48(sp)
  LW s1, 56(sp)
  SW s1, 56(sp)
  # implict jump to bb35
bb35:   # loop depth 2
  LW s1, 56(sp)
  SW s1, 56(sp)
  LW s1, 48(sp)
  SW s1, 48(sp)
  LW s1, 48(sp)
  SW s1, 48(sp)
  SW s3, 44(sp)
  SB s4, 0(sp)
  LB s0, 18(sp)
  SB s0, 19(sp)
  LB s0, 19(sp)
  SB s0, 19(sp)
  LB s0, 17(sp)
  SB s0, 20(sp)
  LB s0, 20(sp)
  SB s0, 20(sp)
  LW s1, 56(sp)
  SW s1, 28(sp)
  LB s1, 22(sp)
  SB s1, 22(sp)
  LB s0, 11(sp)
  SB s0, 11(sp)
  JAL zero, bb8
bb36:   # loop depth 2
  LW a0, 68(sp)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW s2, 68(sp)
  SW s2, 48(sp)
  ADDI s1, zero, 1
  SW s1, 56(sp)
  JAL zero, bb35
bb37:   # loop depth 2
  ADD a0, zero, zero
  CALL findfa
  ADD s5, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  ADD s4, a0, zero
  XOR s4, s5, s4
  SLTIU s4, s4, 1
  JAL zero, bb33
bb38:   # loop depth 2
  LA s4, array
  LW s4, 68(s4)
  XORI s4, s4, -1
  SLTU s0, zero, s4
  SB s0, 11(sp)
  LB s0, 11(sp)
  SB s0, 11(sp)
  JAL zero, bb31
bb39:   # loop depth 2
  LA a0, n
  LW a0, 0(a0)
  SUBW s4, s3, a0
  ADD a0, s3, zero
  CALL findfa
  ADD s5, a0, zero
  ADD a0, s4, zero
  CALL findfa
  ADD s4, a0, zero
  BNE s5, s4, bb40
  JAL zero, bb29
bb40:   # loop depth 2
  SLLIW s5, s5, 2
  LA s6, array
  ADD s5, s6, s5
  SW s4, 0(s5)
  JAL zero, bb29
bb41:   # loop depth 2
  LA s1, n
  LW s1, 0(s1)
  SUBW s1, s3, s1
  SLLIW s1, s1, 2
  LA s4, array
  ADD s1, s4, s1
  LW s1, 0(s1)
  XORI s1, s1, -1
  SLTU s10, zero, s1
  JAL zero, bb28
bb42:   # loop depth 2
  LA a0, n
  LW a0, 0(a0)
  ADDW s1, s3, a0
  ADD a0, s3, zero
  CALL findfa
  ADD s4, a0, zero
  ADD a0, s1, zero
  CALL findfa
  ADD s1, a0, zero
  BNE s4, s1, bb43
  JAL zero, bb26
bb43:   # loop depth 2
  SLLIW s4, s4, 2
  LA s5, array
  ADD s4, s5, s4
  SW s1, 0(s4)
  JAL zero, bb26
bb44:   # loop depth 2
  ADDW s1, s3, s1
  SLLIW s1, s1, 2
  LA s4, array
  ADD s1, s4, s1
  LW s1, 0(s1)
  XORI s1, s1, -1
  SLTU s0, zero, s1
  SB s0, 17(sp)
  LB s0, 17(sp)
  SB s0, 17(sp)
  JAL zero, bb25
bb45:   # loop depth 2
  ADD a0, s3, zero
  CALL findfa
  ADD s4, a0, zero
  ADD a0, s1, zero
  CALL findfa
  ADD s1, a0, zero
  BNE s4, s1, bb46
  JAL zero, bb23
bb46:   # loop depth 2
  SLLIW s4, s4, 2
  LA s5, array
  ADD s4, s5, s4
  SW s1, 0(s4)
  JAL zero, bb23
bb47:   # loop depth 2
  SLLIW s0, s1, 2
  LA s4, array
  ADD s0, s4, s0
  LW s0, 0(s0)
  XORI s0, s0, -1
  SLTU s0, zero, s0
  JAL zero, bb22
bb48:   # loop depth 2
  ADD a0, s3, zero
  CALL findfa
  ADD s1, a0, zero
  ADD a0, s4, zero
  CALL findfa
  ADD s0, a0, zero
  BNE s1, s0, bb49
  JAL zero, bb20
bb49:   # loop depth 2
  SLLIW s1, s1, 2
  LA s4, array
  ADD s1, s4, s1
  SW s0, 0(s1)
  JAL zero, bb20
bb50:   # loop depth 2
  SLLIW s0, s4, 2
  LA s1, array
  ADD s0, s1, s0
  LW s0, 0(s0)
  XORI s0, s0, -1
  SLTU s0, zero, s0
  SB s0, 18(sp)
  LB s0, 18(sp)
  SB s0, 18(sp)
  JAL zero, bb19
bb51:   # loop depth 2
  LA a0, array
  ADDI s0, zero, 17
  SW s0, 68(a0)
  ADD a0, s3, zero
  CALL findfa
  ADD s1, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  ADD s0, a0, zero
  BNE s1, s0, bb52
  JAL zero, bb17
bb52:   # loop depth 2
  SLLIW s1, s1, 2
  LA s4, array
  ADD s1, s4, s1
  SW s0, 0(s1)
  JAL zero, bb17
bb53:   # loop depth 2
  LA a0, array
  SW zero, 0(a0)
  ADD a0, s3, zero
  CALL findfa
  ADD s1, a0, zero
  ADD a0, zero, zero
  CALL findfa
  ADD s0, a0, zero
  BNE s1, s0, bb54
  JAL zero, bb16
bb54:   # loop depth 2
  SLLIW s1, s1, 2
  LA s4, array
  ADD s1, s4, s1
  SW s0, 0(s1)
  JAL zero, bb16
bb55:   # loop depth 1
  ADDI s8, zero, 1
  # implict jump to bb56
bb56:   # loop depth 2
  SLLIW s9, s8, 2
  LA s11, array
  ADD s9, s11, s9
  ADDI s11, zero, -1
  SW s11, 0(s9)
  ADDIW s8, s8, 1
  ADDI s9, zero, 17
  SLT s9, s9, s8
  XORI s9, s9, 1
  BNE s9, zero, bb57
  JAL zero, bb5
bb57:   # loop depth 2
  JAL zero, bb56
