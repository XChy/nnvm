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
  ADDI sp, sp, -192
  SD ra, 72(sp)
  SD s0, 80(sp)
  SD s1, 88(sp)
  SD s2, 96(sp)
  SD s3, 104(sp)
  SD s4, 112(sp)
  SD s5, 120(sp)
  SD s6, 128(sp)
  SD s7, 136(sp)
  SD s8, 144(sp)
  SD s9, 152(sp)
  SD s10, 160(sp)
  SD s11, 168(sp)
  ADDI s0, zero, 17
  ADD s7, zero, zero
  SLTI s9, s0, 1
  ADD s0, zero, zero
  SB s0, 15(sp)
  ADD s3, zero, zero
  ADD s2, zero, zero
  ADDI s10, zero, 1
  ADD s1, zero, zero
  ADD s0, zero, zero
  ADD s5, zero, zero
  ADD s4, zero, zero
  XORI s9, s9, 1
  SB s9, 11(sp)
  # implict jump to bb4
bb4:   # loop depth 1
  LA s9, n
  ADDI s11, zero, 4
  SW s4, 40(sp)
  SW s11, 0(s9)
  ADDIW s4, s10, -1
  SW s4, 44(sp)
  SB s5, 12(sp)
  LB s4, 15(sp)
  SB s4, 15(sp)
  LB s4, 11(sp)
  BNE s4, zero, bb55
  # implict jump to bb5
bb5:   # loop depth 1
  ADD s8, zero, zero
  SW s7, 56(sp)
  LB s4, 15(sp)
  SB s4, 15(sp)
  SB s3, 9(sp)
  SB s2, 8(sp)
  ADD s2, zero, zero
  SW s2, 32(sp)
  LB s5, 12(sp)
  LW s3, 40(sp)
  ADD s4, zero, zero
  # implict jump to bb6
bb6:   # loop depth 2
  ADDIW s8, s8, 1
  ADD s9, s3, zero
  XORI s2, s4, 1
  SW s2, 16(sp)
  LW s2, 32(sp)
  SW s2, 52(sp)
  LB s2, 8(sp)
  LB s3, 9(sp)
  SB s3, 14(sp)
  LB s3, 15(sp)
  SB s3, 15(sp)
  LW s4, 56(sp)
  SW s4, 48(sp)
  CALL getint
  ADD s3, a0, zero
  SW s3, 24(sp)
  CALL getint
  ADD s3, a0, zero
  SW s3, 64(sp)
  LW s3, 16(sp)
  BNE s3, zero, bb15
  # implict jump to bb7
bb7:   # loop depth 2
  SB s5, 10(sp)
  SB s0, 4(sp)
  SB s1, 3(sp)
  LW s4, 52(sp)
  LB s0, 14(sp)
  SB s0, 14(sp)
  LB s0, 15(sp)
  SB s0, 15(sp)
  LW s0, 48(sp)
  ADD s7, s0, zero
  # implict jump to bb8
bb8:   # loop depth 2
  SW s4, 28(sp)
  SLTI s3, s8, 10
  SB s3, 0(sp)
  LW s0, 28(sp)
  SLTU s4, zero, s0
  LB s0, 15(sp)
  SB s0, 15(sp)
  LB s0, 14(sp)
  SB s0, 14(sp)
  LB s1, 3(sp)
  LB s0, 4(sp)
  LB s3, 10(sp)
  SB s3, 7(sp)
  LB s5, 0(sp)
  BNE s5, zero, bb14
  # implict jump to bb9
bb9:   # loop depth 1
  XORI s5, s4, 1
  BNE s5, zero, bb13
  # implict jump to bb10
bb10:   # loop depth 1
  LW s5, 44(sp)
  BNE s5, zero, bb12
  # implict jump to bb11
bb11:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 72(sp)
  LD s0, 80(sp)
  LD s1, 88(sp)
  LD s2, 96(sp)
  LD s3, 104(sp)
  LD s4, 112(sp)
  LD s5, 120(sp)
  LD s6, 128(sp)
  LD s7, 136(sp)
  LD s8, 144(sp)
  LD s9, 152(sp)
  LD s10, 160(sp)
  LD s11, 168(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb12:   # loop depth 1
  LB s3, 15(sp)
  SB s3, 15(sp)
  LB s3, 14(sp)
  LW s10, 44(sp)
  LB s5, 7(sp)
  ADD s4, s9, zero
  JAL zero, bb4
bb13:   # loop depth 1
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb10
bb14:   # loop depth 2
  SW s7, 56(sp)
  LB s3, 15(sp)
  SB s3, 15(sp)
  LB s3, 14(sp)
  SB s3, 9(sp)
  SB s2, 8(sp)
  LW s2, 28(sp)
  SW s2, 32(sp)
  LB s5, 7(sp)
  ADD s3, s9, zero
  JAL zero, bb6
bb15:   # loop depth 2
  LA s0, n
  LW s1, 24(sp)
  ADDIW s1, s1, -1
  LA s10, array
  LW s2, 24(sp)
  XORI s2, s2, 1
  LW s0, 0(s0)
  SLTIU s6, s2, 1
  MULW s0, s0, s1
  LW s1, 64(sp)
  ADDW s7, s0, s1
  SH2ADD s2, s7, s10
  SW s7, 0(s2)
  BNE s6, zero, bb53
  # implict jump to bb16
bb16:   # loop depth 2
  LA s0, n
  LW s0, 0(s0)
  LW s1, 24(sp)
  XOR s0, s1, s0
  SLTIU s0, s0, 1
  BNE s0, zero, bb51
  # implict jump to bb17
bb17:   # loop depth 2
  LA s0, n
  LW s0, 0(s0)
  LW s1, 64(sp)
  BLT s1, s0, bb50
  # implict jump to bb18
bb18:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb19
bb19:   # loop depth 2
  SB s0, 14(sp)
  LB s0, 14(sp)
  BNE s0, zero, bb48
  # implict jump to bb20
bb20:   # loop depth 2
  ADDI s0, zero, 1
  LW s1, 64(sp)
  BLT s0, s1, bb47
  # implict jump to bb21
bb21:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb22
bb22:   # loop depth 2
  BNE s0, zero, bb45
  # implict jump to bb23
bb23:   # loop depth 2
  LA s1, n
  LW s1, 0(s1)
  LW s2, 24(sp)
  BLT s2, s1, bb44
  # implict jump to bb24
bb24:   # loop depth 2
  ADD s2, zero, zero
  # implict jump to bb25
bb25:   # loop depth 2
  BNE s2, zero, bb42
  # implict jump to bb26
bb26:   # loop depth 2
  ADDI s1, zero, 1
  LW s3, 24(sp)
  BLT s1, s3, bb41
  # implict jump to bb27
bb27:   # loop depth 2
  ADD s1, zero, zero
  SB s1, 13(sp)
  # implict jump to bb28
bb28:   # loop depth 2
  LB s1, 13(sp)
  SB s1, 13(sp)
  LB s1, 13(sp)
  BNE s1, zero, bb39
  # implict jump to bb29
bb29:   # loop depth 2
  LA s1, array
  LW s1, 0(s1)
  XORI s1, s1, -1
  BNE s1, zero, bb38
  # implict jump to bb30
bb30:   # loop depth 2
  ADD s1, zero, zero
  SB s1, 5(sp)
  # implict jump to bb31
bb31:   # loop depth 2
  LB s1, 5(sp)
  SB s1, 5(sp)
  LB s1, 5(sp)
  BNE s1, zero, bb37
  # implict jump to bb32
bb32:   # loop depth 2
  ADD s1, zero, zero
  # implict jump to bb33
bb33:   # loop depth 2
  SB s1, 15(sp)
  LB s1, 15(sp)
  BNE s1, zero, bb36
  # implict jump to bb34
bb34:   # loop depth 2
  LW s4, 52(sp)
  # implict jump to bb35
bb35:   # loop depth 2
  LB s1, 5(sp)
  SB s1, 10(sp)
  SB s0, 4(sp)
  LB s0, 13(sp)
  SB s0, 3(sp)
  LB s0, 14(sp)
  SB s0, 14(sp)
  LB s0, 15(sp)
  SB s0, 15(sp)
  JAL zero, bb8
bb36:   # loop depth 2
  ADD a0, s8, zero
  ADD s9, s8, zero
  ADDI s4, zero, 1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb35
bb37:   # loop depth 2
  ADD a0, zero, zero
  CALL findfa
  ADD s10, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  ADD s1, a0, zero
  XOR s1, s10, s1
  SLTIU s1, s1, 1
  JAL zero, bb33
bb38:   # loop depth 2
  LA s1, array
  LW s1, 68(s1)
  XORI s1, s1, -1
  SLTU s1, zero, s1
  SB s1, 5(sp)
  LB s1, 5(sp)
  SB s1, 5(sp)
  JAL zero, bb31
bb39:   # loop depth 2
  LA s1, n
  ADD a0, s7, zero
  LW s1, 0(s1)
  SUBW s1, s7, s1
  CALL findfa
  ADD s10, a0, zero
  ADD a0, s1, zero
  CALL findfa
  ADD s1, a0, zero
  SW s1, 60(sp)
  LW s1, 60(sp)
  BNE s10, s1, bb40
  JAL zero, bb29
bb40:   # loop depth 2
  LA s1, array
  SH2ADD s1, s10, s1
  LW s3, 60(sp)
  SW s3, 0(s1)
  JAL zero, bb29
bb41:   # loop depth 2
  LA s1, n
  LA s10, array
  LW s1, 0(s1)
  SUBW s1, s7, s1
  SH2ADD s1, s1, s10
  LW s1, 0(s1)
  XORI s1, s1, -1
  SLTU s1, zero, s1
  SB s1, 13(sp)
  LB s1, 13(sp)
  SB s1, 13(sp)
  JAL zero, bb28
bb42:   # loop depth 2
  LA s1, n
  ADD a0, s7, zero
  LW s1, 0(s1)
  ADDW s1, s7, s1
  CALL findfa
  ADD s10, a0, zero
  ADD a0, s1, zero
  CALL findfa
  ADD s1, a0, zero
  SW s1, 68(sp)
  LW s1, 68(sp)
  BNE s10, s1, bb43
  JAL zero, bb26
bb43:   # loop depth 2
  LA s1, array
  SH2ADD s1, s10, s1
  LW s3, 68(sp)
  SW s3, 0(s1)
  JAL zero, bb26
bb44:   # loop depth 2
  LA s2, array
  ADDW s1, s7, s1
  SH2ADD s1, s1, s2
  LW s1, 0(s1)
  XORI s1, s1, -1
  SLTU s2, zero, s1
  JAL zero, bb25
bb45:   # loop depth 2
  ADD a0, s7, zero
  ADDIW s1, s7, -1
  CALL findfa
  ADD s2, a0, zero
  ADD a0, s1, zero
  CALL findfa
  ADD s1, a0, zero
  BNE s2, s1, bb46
  JAL zero, bb23
bb46:   # loop depth 2
  LA s10, array
  SH2ADD s2, s2, s10
  SW s1, 0(s2)
  JAL zero, bb23
bb47:   # loop depth 2
  LW s0, -4(s2)
  XORI s0, s0, -1
  SLTU s0, zero, s0
  JAL zero, bb22
bb48:   # loop depth 2
  ADD a0, s7, zero
  ADDIW s0, s7, 1
  CALL findfa
  ADD s1, a0, zero
  ADD a0, s0, zero
  CALL findfa
  ADD s0, a0, zero
  BNE s1, s0, bb49
  JAL zero, bb20
bb49:   # loop depth 2
  LA s10, array
  SH2ADD s1, s1, s10
  SW s0, 0(s1)
  JAL zero, bb20
bb50:   # loop depth 2
  LW s0, 4(s2)
  XORI s0, s0, -1
  SLTU s0, zero, s0
  JAL zero, bb19
bb51:   # loop depth 2
  LA s0, array
  ADDI s1, zero, 17
  ADD a0, s7, zero
  SW s1, 68(s0)
  CALL findfa
  ADD s1, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  ADD s0, a0, zero
  BNE s1, s0, bb52
  JAL zero, bb17
bb52:   # loop depth 2
  LA s6, array
  SH2ADD s1, s1, s6
  SW s0, 0(s1)
  JAL zero, bb17
bb53:   # loop depth 2
  LA s0, array
  ADD a0, s7, zero
  SW zero, 0(s0)
  CALL findfa
  ADD s1, a0, zero
  ADD a0, zero, zero
  CALL findfa
  ADD s0, a0, zero
  BNE s1, s0, bb54
  JAL zero, bb16
bb54:   # loop depth 2
  LA s6, array
  SH2ADD s1, s1, s6
  SW s0, 0(s1)
  JAL zero, bb16
bb55:   # loop depth 1
  ADDI s8, zero, 1
  # implict jump to bb56
bb56:   # loop depth 2
  LA s4, array
  SD s4, 176(sp)
  ADDI s11, zero, 17
  ADDIW s9, s8, 1
  SLT s4, s11, s9
  SB s4, 1(sp)
  ADDI s4, zero, -1
  SW s4, 36(sp)
  LD s4, 176(sp)
  SH2ADD s10, s8, s4
  LB s4, 1(sp)
  XORI s8, s4, 1
  LW s4, 36(sp)
  SW s4, 0(s10)
  BNE s8, zero, bb57
  JAL zero, bb5
bb57:   # loop depth 2
  ADD s8, s9, zero
  JAL zero, bb56
