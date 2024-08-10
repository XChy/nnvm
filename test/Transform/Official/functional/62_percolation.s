.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
  LA s0, array
  SH2ADD s0, a0, s0
  LW s1, 0(s0)
  XOR s1, s1, a0
  SLTIU s1, s1, 1
  BNE s1, zero, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  LW a0, 0(s0)
  CALL findfa
  ADD t0, a0, zero
  ADD a0, t0, zero
  SW t0, 0(s0)
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
  ADDI sp, sp, -208
  SD s1, 88(sp)
  SD ra, 96(sp)
  SD s0, 104(sp)
  SD s2, 120(sp)
  SD s3, 128(sp)
  SD s4, 136(sp)
  SD s5, 144(sp)
  SD s6, 152(sp)
  SD s7, 160(sp)
  SD s8, 168(sp)
  SD s9, 176(sp)
  SD s10, 184(sp)
  SD s11, 192(sp)
  ADDI s0, zero, 17
  ADD s1, zero, zero
  SW s1, 44(sp)
  SLTI s8, s0, 1
  ADD s0, zero, zero
  SB s0, 16(sp)
  ADD s11, zero, zero
  ADD s0, zero, zero
  SB s0, 11(sp)
  ADDI s7, zero, 1
  ADD s0, zero, zero
  SB s0, 0(sp)
  ADD s9, zero, zero
  ADD s1, zero, zero
  ADD s10, zero, zero
  XORI s8, s8, 1
  SB s8, 1(sp)
  # implict jump to bb4
bb4:   # loop depth 1
  LA s0, n
  SD s0, 112(sp)
  ADDI s8, zero, 4
  SW s10, 72(sp)
  LD s0, 112(sp)
  SW s8, 0(s0)
  ADDIW s0, s7, -1
  SW s0, 20(sp)
  SB s1, 2(sp)
  LB s0, 0(sp)
  SB s0, 0(sp)
  LB s0, 11(sp)
  SB s0, 11(sp)
  LB s0, 16(sp)
  SB s0, 16(sp)
  LW s0, 44(sp)
  SW s0, 44(sp)
  LB s0, 1(sp)
  BNE s0, zero, bb55
  # implict jump to bb5
bb5:   # loop depth 1
  ADD s7, zero, zero
  LW s0, 44(sp)
  SW s0, 44(sp)
  LW s0, 44(sp)
  SW s0, 68(sp)
  LB s0, 16(sp)
  SB s0, 16(sp)
  SB s11, 9(sp)
  LB s0, 11(sp)
  SB s0, 11(sp)
  LB s0, 11(sp)
  SB s0, 10(sp)
  ADD s0, zero, zero
  SW s0, 24(sp)
  LB s0, 0(sp)
  SB s0, 0(sp)
  LB s0, 0(sp)
  SB s0, 12(sp)
  LB s1, 2(sp)
  LW s10, 72(sp)
  ADD s0, zero, zero
  SB s0, 17(sp)
  # implict jump to bb6
bb6:   # loop depth 2
  LB s0, 17(sp)
  SB s0, 17(sp)
  ADDIW s7, s7, 1
  LB s0, 17(sp)
  XORI s0, s0, 1
  SW s0, 28(sp)
  LB s3, 12(sp)
  LW s4, 24(sp)
  SW s4, 60(sp)
  LB s0, 10(sp)
  SB s0, 7(sp)
  LB s0, 7(sp)
  SB s0, 7(sp)
  LB s11, 9(sp)
  LB s0, 16(sp)
  SB s0, 16(sp)
  LW s4, 68(sp)
  SW s4, 64(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 36(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 32(sp)
  LW s0, 28(sp)
  BNE s0, zero, bb15
  # implict jump to bb7
bb7:   # loop depth 2
  SB s1, 4(sp)
  SB s9, 6(sp)
  SB s3, 8(sp)
  LW s4, 60(sp)
  LB s0, 7(sp)
  SB s0, 11(sp)
  LB s0, 11(sp)
  SB s0, 11(sp)
  LB s0, 16(sp)
  SB s0, 16(sp)
  LW s0, 64(sp)
  SW s0, 44(sp)
  # implict jump to bb8
bb8:   # loop depth 2
  SW s4, 52(sp)
  SLTI s1, s7, 10
  SB s1, 5(sp)
  LW s0, 52(sp)
  SLTU s0, zero, s0
  SB s0, 17(sp)
  LW s0, 44(sp)
  SW s0, 44(sp)
  LB s0, 16(sp)
  SB s0, 16(sp)
  LB s0, 11(sp)
  SB s0, 11(sp)
  LB s0, 8(sp)
  SB s0, 0(sp)
  LB s0, 0(sp)
  SB s0, 0(sp)
  LB s9, 6(sp)
  LB s0, 4(sp)
  SB s0, 15(sp)
  LB s5, 5(sp)
  BNE s5, zero, bb14
  # implict jump to bb9
bb9:   # loop depth 1
  LB s0, 17(sp)
  XORI s4, s0, 1
  BNE s4, zero, bb13
  # implict jump to bb10
bb10:   # loop depth 1
  LW s4, 20(sp)
  BNE s4, zero, bb12
  # implict jump to bb11
bb11:   # loop depth 0
  ADD a0, zero, zero
  LD s1, 88(sp)
  LD ra, 96(sp)
  LD s0, 104(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD s5, 144(sp)
  LD s6, 152(sp)
  LD s7, 160(sp)
  LD s8, 168(sp)
  LD s9, 176(sp)
  LD s10, 184(sp)
  LD s11, 192(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
bb12:   # loop depth 1
  LW s0, 44(sp)
  SW s0, 44(sp)
  LB s0, 16(sp)
  SB s0, 16(sp)
  LB s0, 11(sp)
  SB s0, 11(sp)
  LW s7, 20(sp)
  LB s0, 0(sp)
  SB s0, 0(sp)
  LB s1, 15(sp)
  JAL zero, bb4
bb13:   # loop depth 1
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb10
bb14:   # loop depth 2
  LW s0, 44(sp)
  SW s0, 44(sp)
  LW s0, 44(sp)
  SW s0, 68(sp)
  LB s0, 16(sp)
  SB s0, 16(sp)
  SB s11, 9(sp)
  LB s0, 11(sp)
  SB s0, 11(sp)
  LB s0, 11(sp)
  SB s0, 10(sp)
  LW s0, 52(sp)
  SW s0, 24(sp)
  LB s0, 0(sp)
  SB s0, 0(sp)
  LB s0, 0(sp)
  SB s0, 12(sp)
  LB s1, 15(sp)
  LB s0, 17(sp)
  SB s0, 17(sp)
  JAL zero, bb6
bb15:   # loop depth 2
  LA s1, n
  LW s0, 36(sp)
  ADDIW s2, s0, -1
  LA s5, array
  LW s0, 36(sp)
  XORI s3, s0, 1
  LW s1, 0(s1)
  SLTIU s3, s3, 1
  MULW s1, s1, s2
  LW s0, 32(sp)
  ADDW s0, s1, s0
  SW s0, 44(sp)
  LW s0, 44(sp)
  SH2ADD s6, s0, s5
  LW s0, 44(sp)
  SW s0, 0(s6)
  BNE s3, zero, bb53
  # implict jump to bb16
bb16:   # loop depth 2
  LA s2, n
  LW s2, 0(s2)
  LW s0, 36(sp)
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
  ADD s11, zero, zero
  # implict jump to bb19
bb19:   # loop depth 2
  BNE s11, zero, bb48
  # implict jump to bb20
bb20:   # loop depth 2
  ADDI s3, zero, 1
  LW s0, 32(sp)
  BLT s3, s0, bb47
  # implict jump to bb21
bb21:   # loop depth 2
  ADD s3, zero, zero
  # implict jump to bb22
bb22:   # loop depth 2
  SB s3, 14(sp)
  LB s0, 14(sp)
  BNE s0, zero, bb45
  # implict jump to bb23
bb23:   # loop depth 2
  LA s3, n
  LW s3, 0(s3)
  LW s0, 36(sp)
  BLT s0, s3, bb44
  # implict jump to bb24
bb24:   # loop depth 2
  ADD s0, zero, zero
  SB s0, 11(sp)
  # implict jump to bb25
bb25:   # loop depth 2
  LB s0, 11(sp)
  SB s0, 11(sp)
  LB s0, 11(sp)
  BNE s0, zero, bb42
  # implict jump to bb26
bb26:   # loop depth 2
  ADDI s5, zero, 1
  LW s0, 36(sp)
  BLT s5, s0, bb41
  # implict jump to bb27
bb27:   # loop depth 2
  ADD s5, zero, zero
  # implict jump to bb28
bb28:   # loop depth 2
  BNE s5, zero, bb39
  # implict jump to bb29
bb29:   # loop depth 2
  LA s6, array
  LW s6, 0(s6)
  XORI s6, s6, -1
  BNE s6, zero, bb38
  # implict jump to bb30
bb30:   # loop depth 2
  ADD s0, zero, zero
  SB s0, 13(sp)
  # implict jump to bb31
bb31:   # loop depth 2
  LB s0, 13(sp)
  SB s0, 13(sp)
  LB s0, 13(sp)
  BNE s0, zero, bb37
  # implict jump to bb32
bb32:   # loop depth 2
  ADD s6, zero, zero
  # implict jump to bb33
bb33:   # loop depth 2
  SB s6, 16(sp)
  LB s0, 16(sp)
  BNE s0, zero, bb36
  # implict jump to bb34
bb34:   # loop depth 2
  LW s4, 60(sp)
  # implict jump to bb35
bb35:   # loop depth 2
  LB s0, 13(sp)
  SB s0, 4(sp)
  LB s0, 14(sp)
  SB s0, 6(sp)
  SB s5, 8(sp)
  LB s0, 11(sp)
  SB s0, 11(sp)
  LB s0, 16(sp)
  SB s0, 16(sp)
  LW s0, 44(sp)
  SW s0, 44(sp)
  JAL zero, bb8
bb36:   # loop depth 2
  ADD a0, s7, zero
  ADD s10, s7, zero
  ADDI s4, zero, 1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb35
bb37:   # loop depth 2
  ADD a0, zero, zero
  CALL findfa
  ADD s8, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  ADD s6, a0, zero
  XOR s6, s8, s6
  SLTIU s6, s6, 1
  JAL zero, bb33
bb38:   # loop depth 2
  LA s6, array
  LW s6, 68(s6)
  XORI s6, s6, -1
  SLTU s0, zero, s6
  SB s0, 13(sp)
  LB s0, 13(sp)
  SB s0, 13(sp)
  JAL zero, bb31
bb39:   # loop depth 2
  LA s6, n
  LW a0, 44(sp)
  LW s6, 0(s6)
  LW s0, 44(sp)
  SUBW s6, s0, s6
  CALL findfa
  ADD s8, a0, zero
  ADD a0, s6, zero
  CALL findfa
  ADD s6, a0, zero
  BNE s8, s6, bb40
  JAL zero, bb29
bb40:   # loop depth 2
  LA s9, array
  SH2ADD s8, s8, s9
  SW s6, 0(s8)
  JAL zero, bb29
bb41:   # loop depth 2
  LA s5, n
  LA s6, array
  LW s5, 0(s5)
  LW s0, 44(sp)
  SUBW s5, s0, s5
  SH2ADD s5, s5, s6
  LW s5, 0(s5)
  XORI s5, s5, -1
  SLTU s5, zero, s5
  JAL zero, bb28
bb42:   # loop depth 2
  LA s5, n
  LW a0, 44(sp)
  LW s5, 0(s5)
  LW s0, 44(sp)
  ADDW s5, s0, s5
  CALL findfa
  ADD s6, a0, zero
  ADD a0, s5, zero
  CALL findfa
  ADD s5, a0, zero
  BNE s6, s5, bb43
  JAL zero, bb26
bb43:   # loop depth 2
  LA s8, array
  SH2ADD s6, s6, s8
  SW s5, 0(s6)
  JAL zero, bb26
bb44:   # loop depth 2
  LA s5, array
  LW s0, 44(sp)
  ADDW s3, s0, s3
  SH2ADD s3, s3, s5
  LW s3, 0(s3)
  XORI s3, s3, -1
  SLTU s0, zero, s3
  SB s0, 11(sp)
  LB s0, 11(sp)
  SB s0, 11(sp)
  JAL zero, bb25
bb45:   # loop depth 2
  LW a0, 44(sp)
  LW s0, 44(sp)
  ADDIW s3, s0, -1
  CALL findfa
  ADD s5, a0, zero
  ADD a0, s3, zero
  CALL findfa
  ADD s3, a0, zero
  BNE s5, s3, bb46
  JAL zero, bb23
bb46:   # loop depth 2
  LA s6, array
  SH2ADD s5, s5, s6
  SW s3, 0(s5)
  JAL zero, bb23
bb47:   # loop depth 2
  LW s3, -4(s6)
  XORI s3, s3, -1
  SLTU s3, zero, s3
  JAL zero, bb22
bb48:   # loop depth 2
  LW a0, 44(sp)
  LW s0, 44(sp)
  ADDIW s3, s0, 1
  CALL findfa
  ADD s5, a0, zero
  ADD a0, s3, zero
  CALL findfa
  ADD s3, a0, zero
  BNE s5, s3, bb49
  JAL zero, bb20
bb49:   # loop depth 2
  LA s8, array
  SH2ADD s5, s5, s8
  SW s3, 0(s5)
  JAL zero, bb20
bb50:   # loop depth 2
  LW s2, 4(s6)
  XORI s2, s2, -1
  SLTU s11, zero, s2
  JAL zero, bb19
bb51:   # loop depth 2
  LA s2, array
  ADDI s3, zero, 17
  LW a0, 44(sp)
  SW s3, 68(s2)
  CALL findfa
  ADD s3, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  ADD s2, a0, zero
  BNE s3, s2, bb52
  JAL zero, bb17
bb52:   # loop depth 2
  LA s5, array
  SH2ADD s3, s3, s5
  SW s2, 0(s3)
  JAL zero, bb17
bb53:   # loop depth 2
  LA s2, array
  LW a0, 44(sp)
  SW zero, 0(s2)
  CALL findfa
  ADD s3, a0, zero
  ADD a0, zero, zero
  CALL findfa
  ADD s2, a0, zero
  BNE s3, s2, bb54
  JAL zero, bb16
bb54:   # loop depth 2
  LA s5, array
  SH2ADD s3, s3, s5
  SW s2, 0(s3)
  JAL zero, bb16
bb55:   # loop depth 1
  ADDI s8, zero, 1
  # implict jump to bb56
bb56:   # loop depth 2
  LA s0, array
  SD s0, 200(sp)
  ADDI s10, zero, 17
  ADDIW s0, s8, 1
  SW s0, 84(sp)
  LW s0, 84(sp)
  SLT s10, s10, s0
  ADDI s0, zero, -1
  SW s0, 56(sp)
  LD s0, 200(sp)
  SH2ADD s8, s8, s0
  XORI s10, s10, 1
  LW s0, 56(sp)
  SW s0, 0(s8)
  BNE s10, zero, bb57
  JAL zero, bb5
bb57:   # loop depth 2
  LW s8, 84(sp)
  JAL zero, bb56
