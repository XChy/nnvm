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
  BEQ s1, a0, bb2
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
  SD s9, 168(sp)
  ADDI s6, zero, 17
  ADD s0, zero, zero
  SW s0, 76(sp)
  ADD s0, zero, zero
  SB s0, 12(sp)
  ADD s0, zero, zero
  SB s0, 10(sp)
  ADD s0, zero, zero
  SB s0, 9(sp)
  ADDI s0, zero, 1
  SW s0, 64(sp)
  ADD s0, zero, zero
  SB s0, 13(sp)
  ADD s0, zero, zero
  SB s0, 8(sp)
  ADD s0, zero, zero
  SB s0, 21(sp)
  ADD s8, zero, zero
  SLTI s6, s6, 1
  SB s6, 6(sp)
  # implict jump to bb4
bb4:   # loop depth 1
  LA s0, n
  SD s0, 160(sp)
  ADDI s6, zero, 4
  LW s0, 64(sp)
  SW s0, 64(sp)
  SW s8, 52(sp)
  LD s0, 160(sp)
  SW s6, 0(s0)
  LW s0, 64(sp)
  ADDIW s0, s0, -1
  SW s0, 56(sp)
  LB s0, 21(sp)
  SB s0, 21(sp)
  LB s0, 8(sp)
  SB s0, 8(sp)
  LB s0, 13(sp)
  SB s0, 13(sp)
  LB s0, 9(sp)
  SB s0, 9(sp)
  LB s0, 10(sp)
  SB s0, 10(sp)
  LB s0, 12(sp)
  SB s0, 12(sp)
  LW s0, 76(sp)
  SW s0, 76(sp)
  LB s0, 6(sp)
  BEQ s0, zero, bb55
  # implict jump to bb5
bb5:   # loop depth 1
  LA s0, array
  SD s0, 184(sp)
  ADD s9, zero, zero
  LW s0, 76(sp)
  SW s0, 76(sp)
  LW s0, 76(sp)
  SW s0, 68(sp)
  LB s0, 12(sp)
  SB s0, 12(sp)
  LB s0, 12(sp)
  SB s0, 3(sp)
  LB s0, 10(sp)
  SB s0, 10(sp)
  LB s0, 10(sp)
  SB s0, 4(sp)
  LB s0, 9(sp)
  SB s0, 9(sp)
  LB s0, 9(sp)
  SB s0, 7(sp)
  ADD s0, zero, zero
  SW s0, 24(sp)
  LB s0, 13(sp)
  SB s0, 13(sp)
  LB s0, 8(sp)
  SB s0, 8(sp)
  LB s2, 21(sp)
  LW s8, 52(sp)
  ADD s0, zero, zero
  SB s0, 14(sp)
  # implict jump to bb6
bb6:   # loop depth 2
  LB s0, 14(sp)
  SB s0, 14(sp)
  ADDIW s9, s9, 1
  LB s0, 8(sp)
  SB s0, 8(sp)
  LB s0, 13(sp)
  SB s0, 13(sp)
  LW s5, 24(sp)
  SW s5, 60(sp)
  LB s0, 7(sp)
  SB s0, 9(sp)
  LB s0, 9(sp)
  SB s0, 9(sp)
  LB s1, 4(sp)
  SB s1, 19(sp)
  LB s0, 3(sp)
  SB s0, 12(sp)
  LB s0, 12(sp)
  SB s0, 12(sp)
  LW s5, 68(sp)
  SW s5, 48(sp)
  CALL getint
  ADD s5, a0, zero
  SW s5, 36(sp)
  CALL getint
  ADD s5, a0, zero
  SW s5, 40(sp)
  LB s0, 14(sp)
  BEQ s0, zero, bb15
  # implict jump to bb7
bb7:   # loop depth 2
  SB s2, 1(sp)
  LB s0, 8(sp)
  SB s0, 8(sp)
  LB s0, 8(sp)
  SB s0, 2(sp)
  LB s0, 13(sp)
  SB s0, 13(sp)
  LB s0, 13(sp)
  SB s0, 20(sp)
  LW s0, 60(sp)
  SW s0, 72(sp)
  LW s0, 72(sp)
  SW s0, 72(sp)
  LB s0, 9(sp)
  SB s0, 9(sp)
  LB s0, 19(sp)
  SB s0, 19(sp)
  LB s0, 12(sp)
  SB s0, 12(sp)
  LW s0, 48(sp)
  SW s0, 76(sp)
  # implict jump to bb8
bb8:   # loop depth 2
  LW s0, 72(sp)
  SW s0, 72(sp)
  SLTI s0, s9, 10
  SB s0, 15(sp)
  LW s0, 72(sp)
  SLTU s2, zero, s0
  SB s2, 5(sp)
  LW s0, 76(sp)
  SW s0, 76(sp)
  LB s0, 12(sp)
  SB s0, 12(sp)
  LB s0, 19(sp)
  SB s0, 10(sp)
  LB s0, 10(sp)
  SB s0, 10(sp)
  LB s0, 9(sp)
  SB s0, 9(sp)
  LB s0, 20(sp)
  SB s0, 13(sp)
  LB s0, 13(sp)
  SB s0, 13(sp)
  LB s0, 2(sp)
  SB s0, 11(sp)
  LB s0, 1(sp)
  SB s0, 21(sp)
  LB s0, 15(sp)
  BNE s0, zero, bb14
  # implict jump to bb9
bb9:   # loop depth 1
  LB s4, 5(sp)
  BEQ s4, zero, bb13
  # implict jump to bb10
bb10:   # loop depth 1
  LW s4, 56(sp)
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
  LD s9, 168(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb12:   # loop depth 1
  LW s0, 76(sp)
  SW s0, 76(sp)
  LB s0, 12(sp)
  SB s0, 12(sp)
  LB s0, 10(sp)
  SB s0, 10(sp)
  LB s0, 9(sp)
  SB s0, 9(sp)
  LW s0, 56(sp)
  SW s0, 64(sp)
  LW s0, 64(sp)
  SW s0, 64(sp)
  LB s0, 13(sp)
  SB s0, 13(sp)
  LB s0, 11(sp)
  SB s0, 8(sp)
  LB s0, 8(sp)
  SB s0, 8(sp)
  LB s0, 21(sp)
  SB s0, 21(sp)
  JAL zero, bb4
bb13:   # loop depth 1
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb10
bb14:   # loop depth 2
  LW s0, 76(sp)
  SW s0, 68(sp)
  LB s0, 12(sp)
  SB s0, 12(sp)
  LB s0, 12(sp)
  SB s0, 3(sp)
  LB s0, 10(sp)
  SB s0, 10(sp)
  LB s0, 10(sp)
  SB s0, 4(sp)
  LB s0, 9(sp)
  SB s0, 9(sp)
  LB s0, 9(sp)
  SB s0, 7(sp)
  LW s0, 72(sp)
  SW s0, 72(sp)
  LW s0, 72(sp)
  SW s0, 24(sp)
  LB s0, 13(sp)
  SB s0, 13(sp)
  LB s0, 11(sp)
  SB s0, 8(sp)
  LB s0, 8(sp)
  SB s0, 8(sp)
  LB s2, 21(sp)
  LB s0, 5(sp)
  SB s0, 14(sp)
  LB s0, 14(sp)
  SB s0, 14(sp)
  JAL zero, bb6
bb15:   # loop depth 2
  LA s0, n
  LW s1, 36(sp)
  ADDIW s2, s1, -1
  LA s4, array
  LW s1, 36(sp)
  XORI s3, s1, 1
  LW s0, 0(s0)
  MULW s0, s0, s2
  LW s1, 40(sp)
  ADDW s0, s0, s1
  SW s0, 76(sp)
  LW s0, 76(sp)
  SH2ADD s4, s0, s4
  LW s0, 76(sp)
  SW s0, 0(s4)
  BEQ s3, zero, bb53
  # implict jump to bb16
bb16:   # loop depth 2
  LA s2, n
  LW s2, 0(s2)
  LW s0, 36(sp)
  BEQ s0, s2, bb51
  # implict jump to bb17
bb17:   # loop depth 2
  LA s2, n
  LW s2, 0(s2)
  LW s0, 40(sp)
  BLT s0, s2, bb50
  # implict jump to bb18
bb18:   # loop depth 2
  ADD s2, zero, zero
  # implict jump to bb19
bb19:   # loop depth 2
  SB s2, 16(sp)
  LB s0, 16(sp)
  BNE s0, zero, bb48
  # implict jump to bb20
bb20:   # loop depth 2
  ADDI s2, zero, 1
  LW s0, 40(sp)
  BLT s2, s0, bb47
  # implict jump to bb21
bb21:   # loop depth 2
  ADD s2, zero, zero
  # implict jump to bb22
bb22:   # loop depth 2
  BNE s2, zero, bb45
  # implict jump to bb23
bb23:   # loop depth 2
  LA s3, n
  LW s3, 0(s3)
  LW s0, 36(sp)
  BLT s0, s3, bb44
  # implict jump to bb24
bb24:   # loop depth 2
  ADD s0, zero, zero
  SB s0, 9(sp)
  # implict jump to bb25
bb25:   # loop depth 2
  LB s0, 9(sp)
  SB s0, 9(sp)
  LB s0, 9(sp)
  BNE s0, zero, bb42
  # implict jump to bb26
bb26:   # loop depth 2
  ADDI s4, zero, 1
  LW s0, 36(sp)
  BLT s4, s0, bb41
  # implict jump to bb27
bb27:   # loop depth 2
  ADD s0, zero, zero
  SB s0, 17(sp)
  # implict jump to bb28
bb28:   # loop depth 2
  LB s0, 17(sp)
  SB s0, 17(sp)
  LB s0, 17(sp)
  BNE s0, zero, bb39
  # implict jump to bb29
bb29:   # loop depth 2
  LA s4, array
  LW s4, 0(s4)
  XORI s4, s4, -1
  BNE s4, zero, bb38
  # implict jump to bb30
bb30:   # loop depth 2
  ADD s4, zero, zero
  # implict jump to bb31
bb31:   # loop depth 2
  BNE s4, zero, bb37
  # implict jump to bb32
bb32:   # loop depth 2
  ADD s0, zero, zero
  SB s0, 12(sp)
  # implict jump to bb33
bb33:   # loop depth 2
  LB s0, 12(sp)
  SB s0, 12(sp)
  LB s0, 12(sp)
  BNE s0, zero, bb36
  # implict jump to bb34
bb34:   # loop depth 2
  LW s0, 60(sp)
  SW s0, 72(sp)
  LW s0, 72(sp)
  SW s0, 72(sp)
  # implict jump to bb35
bb35:   # loop depth 2
  LW s0, 72(sp)
  SW s0, 72(sp)
  SB s4, 1(sp)
  SB s2, 2(sp)
  LB s0, 17(sp)
  SB s0, 20(sp)
  LW s0, 72(sp)
  SW s0, 72(sp)
  LB s0, 9(sp)
  SB s0, 9(sp)
  LB s0, 16(sp)
  SB s0, 19(sp)
  LB s0, 12(sp)
  SB s0, 12(sp)
  LW s0, 76(sp)
  SW s0, 76(sp)
  JAL zero, bb8
bb36:   # loop depth 2
  ADD a0, s9, zero
  ADD s8, s9, zero
  ADDI s0, zero, 1
  SW s0, 72(sp)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb35
bb37:   # loop depth 2
  ADD a0, zero, zero
  CALL findfa
  ADD s7, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  ADD s6, a0, zero
  XOR s6, s7, s6
  SLTIU s0, s6, 1
  SB s0, 12(sp)
  LB s0, 12(sp)
  SB s0, 12(sp)
  JAL zero, bb33
bb38:   # loop depth 2
  LD s4, 184(sp)
  LW s4, 68(s4)
  XORI s4, s4, -1
  SLTU s4, zero, s4
  JAL zero, bb31
bb39:   # loop depth 2
  LA s4, n
  LW a0, 76(sp)
  LW s4, 0(s4)
  LW s0, 76(sp)
  SUBW s4, s0, s4
  CALL findfa
  ADD s7, a0, zero
  ADD a0, s4, zero
  CALL findfa
  ADD s6, a0, zero
  BNE s7, s6, bb40
  JAL zero, bb29
bb40:   # loop depth 2
  LA s4, array
  SH2ADD s4, s7, s4
  SW s6, 0(s4)
  JAL zero, bb29
bb41:   # loop depth 2
  LA s4, n
  LA s6, array
  LW s4, 0(s4)
  LW s0, 76(sp)
  SUBW s4, s0, s4
  SH2ADD s4, s4, s6
  LW s4, 0(s4)
  XORI s4, s4, -1
  SLTU s0, zero, s4
  SB s0, 17(sp)
  LB s0, 17(sp)
  SB s0, 17(sp)
  JAL zero, bb28
bb42:   # loop depth 2
  LA s4, n
  LW a0, 76(sp)
  LW s4, 0(s4)
  LW s0, 76(sp)
  ADDW s4, s0, s4
  CALL findfa
  ADD s7, a0, zero
  ADD a0, s4, zero
  CALL findfa
  ADD s6, a0, zero
  BNE s7, s6, bb43
  JAL zero, bb26
bb43:   # loop depth 2
  LA s4, array
  SH2ADD s4, s7, s4
  SW s6, 0(s4)
  JAL zero, bb26
bb44:   # loop depth 2
  LA s4, array
  LW s0, 76(sp)
  ADDW s3, s0, s3
  SH2ADD s3, s3, s4
  LW s3, 0(s3)
  XORI s3, s3, -1
  SLTU s0, zero, s3
  SB s0, 9(sp)
  LB s0, 9(sp)
  SB s0, 9(sp)
  JAL zero, bb25
bb45:   # loop depth 2
  LW a0, 76(sp)
  LW s0, 76(sp)
  ADDIW s3, s0, -1
  CALL findfa
  ADD s6, a0, zero
  ADD a0, s3, zero
  CALL findfa
  ADD s4, a0, zero
  BNE s6, s4, bb46
  JAL zero, bb23
bb46:   # loop depth 2
  LA s3, array
  SH2ADD s3, s6, s3
  SW s4, 0(s3)
  JAL zero, bb23
bb47:   # loop depth 2
  LW s2, -4(s4)
  XORI s2, s2, -1
  SLTU s2, zero, s2
  JAL zero, bb22
bb48:   # loop depth 2
  LW a0, 76(sp)
  LW s0, 76(sp)
  ADDIW s2, s0, 1
  CALL findfa
  ADD s3, a0, zero
  ADD a0, s2, zero
  CALL findfa
  ADD s2, a0, zero
  BNE s3, s2, bb49
  JAL zero, bb20
bb49:   # loop depth 2
  LA s6, array
  SH2ADD s3, s3, s6
  SW s2, 0(s3)
  JAL zero, bb20
bb50:   # loop depth 2
  LW s2, 4(s4)
  XORI s2, s2, -1
  SLTU s2, zero, s2
  JAL zero, bb19
bb51:   # loop depth 2
  ADDI s2, zero, 17
  LW a0, 76(sp)
  LD s3, 184(sp)
  SW s2, 68(s3)
  CALL findfa
  ADD s3, a0, zero
  ADDI a0, zero, 17
  CALL findfa
  ADD s2, a0, zero
  BNE s3, s2, bb52
  JAL zero, bb17
bb52:   # loop depth 2
  LA s6, array
  SH2ADD s3, s3, s6
  SW s2, 0(s3)
  JAL zero, bb17
bb53:   # loop depth 2
  LA s2, array
  LW a0, 76(sp)
  SW zero, 0(s2)
  CALL findfa
  ADD s3, a0, zero
  ADD a0, zero, zero
  CALL findfa
  ADD s2, a0, zero
  BNE s3, s2, bb54
  JAL zero, bb16
bb54:   # loop depth 2
  LA s6, array
  SH2ADD s3, s3, s6
  SW s2, 0(s3)
  JAL zero, bb16
bb55:   # loop depth 1
  ADDI s6, zero, 1
  # implict jump to bb56
bb56:   # loop depth 2
  LA s7, array
  ADDI s8, zero, -1
  ADDI s9, zero, 17
  SH2ADD s7, s6, s7
  ADDIW s6, s6, 1
  SW s8, 0(s7)
  BGE s9, s6, bb57
  JAL zero, bb5
bb57:   # loop depth 2
  JAL zero, bb56
