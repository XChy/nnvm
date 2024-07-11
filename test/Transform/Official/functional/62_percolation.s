.global mmerge
.global findfa
.global init
.global main
.section .bss

array:
.space 440
.section .data
n:
.word 0x00000000

.section .text
mmerge:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD a0, s0, zero
  CALL findfa
  ADD s0, a0, zero
  ADD a0, s1, zero
  CALL findfa
  BNE s0, a0, bb2
  # implict jump to bb1
bb1:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:
  SLLIW s0, s0, 2
  LA s1, array
  ADD s0, s1, s0
  SW a0, 0(s0)
  JAL zero, bb1
findfa:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD s0, a0, zero
  SLLIW s1, s0, 2
  LA s2, array
  ADD s1, s2, s1
  LW s2, 0(s1)
  XOR s2, s2, s0
  SLTIU s2, s2, 1
  BNE s2, zero, bb5
  # implict jump to bb4
bb4:
  LW s2, 0(s1)
  ADD a0, s2, zero
  CALL findfa
  ADD s2, a0, zero
  SW s2, 0(s1)
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb5:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
init:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  MULW s0, a0, a0
  ADDI s1, zero, 1
  # implict jump to bb7
bb7:
  ADD s2, s1, zero
  ADDIW s3, s0, 1
  SLT s3, s3, s2
  XORI s3, s3, 1
  BNE s3, zero, bb9
  # implict jump to bb8
bb8:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb9:
  SLLIW s3, s2, 2
  LA s4, array
  ADD s3, s4, s3
  ADDI s4, zero, -1
  SW s4, 0(s3)
  ADDIW s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb7
main:
  ADDI sp, sp, -224
  SD ra, 120(sp)
  SD s0, 128(sp)
  SD s1, 136(sp)
  SD s2, 144(sp)
  SD s3, 152(sp)
  SD s4, 160(sp)
  SD s5, 168(sp)
  SD s6, 176(sp)
  SD s7, 184(sp)
  SD s8, 192(sp)
  SD s9, 200(sp)
  SD s10, 208(sp)
  SD s11, 216(sp)
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADD s6, zero, zero
  ADD s7, zero, zero
  ADD s8, zero, zero
  ADD s9, zero, zero
  ADD s10, zero, zero
  ADDI s11, zero, 1
  # implict jump to bb11
bb11:
  ADD t0, s11, zero
  ADD t4, s10, zero
  SW t4, 96(sp)
  ADD t4, s9, zero
  SB t4, 9(sp)
  ADD t4, s8, zero
  SB t4, 12(sp)
  ADD t4, s7, zero
  SB t4, 8(sp)
  ADD t4, s6, zero
  SW t4, 92(sp)
  ADD t4, s5, zero
  SB t4, 7(sp)
  ADD t4, s4, zero
  SW t4, 88(sp)
  ADD t4, s3, zero
  SB t4, 5(sp)
  ADD t4, s2, zero
  SB t4, 4(sp)
  ADD t4, s1, zero
  SW t4, 84(sp)
  BNE t0, zero, bb13
  # implict jump to bb12
bb12:
  ADD a0, zero, zero
  LD ra, 120(sp)
  LD s0, 128(sp)
  LD s1, 136(sp)
  LD s2, 144(sp)
  LD s3, 152(sp)
  LD s4, 160(sp)
  LD s5, 168(sp)
  LD s6, 176(sp)
  LD s7, 184(sp)
  LD s8, 192(sp)
  LD s9, 200(sp)
  LD s10, 208(sp)
  LD s11, 216(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb13:
  ADDI t6, zero, 1
  SUBW t4, t0, t6
  SW t4, 100(sp)
  LA t6, n
  ADDI t0, zero, 4
  SW t0, 0(t6)
  ADDI t4, zero, 1
  SW t4, 80(sp)
  # implict jump to bb14
bb14:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  ADDI t1, zero, 17
  LW t4, 76(sp)
  SLT t1, t1, t4
  XORI t1, t1, 1
  BNE t1, zero, bb63
  # implict jump to bb15
bb15:
  LA t1, n
  LW t1, 0(t1)
  MULW t1, t1, t1
  ADDIW t4, t1, 1
  SW t4, 72(sp)
  ADD t4, zero, zero
  SW t4, 52(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LB t3, 4(sp)
  ADD t4, t3, zero
  SB t4, 11(sp)
  LB t3, 5(sp)
  ADD t4, t3, zero
  SB t4, 10(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LB t3, 7(sp)
  ADD t4, t3, zero
  SB t4, 6(sp)
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LB t3, 8(sp)
  ADD t4, t3, zero
  SB t4, 3(sp)
  LB t3, 12(sp)
  ADD t4, t3, zero
  SB t4, 2(sp)
  LB t3, 9(sp)
  ADD t4, t3, zero
  SB t4, 1(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  # implict jump to bb16
bb16:
  LW t4, 112(sp)
  ADD s0, t4, zero
  LB t3, 1(sp)
  ADD t4, t3, zero
  SB t4, 17(sp)
  LB t3, 2(sp)
  ADD t4, t3, zero
  SB t4, 21(sp)
  LB t3, 3(sp)
  ADD t4, t3, zero
  SB t4, 16(sp)
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LB t3, 6(sp)
  ADD t4, t3, zero
  SB t4, 20(sp)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LB t3, 10(sp)
  ADD t4, t3, zero
  SB t4, 18(sp)
  LB t3, 11(sp)
  ADD t4, t3, zero
  SB t4, 19(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t4, 24(sp)
  SLTI t2, t4, 10
  BNE t2, zero, bb20
  # implict jump to bb17
bb17:
  LW t4, 44(sp)
  SLTU t2, zero, t4
  XORI t2, t2, 1
  BNE t2, zero, bb19
  # implict jump to bb18
bb18:
  LW t4, 64(sp)
  ADD s1, t4, zero
  LB t4, 19(sp)
  ADD s2, t4, zero
  LB t4, 18(sp)
  ADD s3, t4, zero
  LW t4, 28(sp)
  ADD s4, t4, zero
  LB t4, 20(sp)
  ADD s5, t4, zero
  LW t4, 32(sp)
  ADD s6, t4, zero
  LB t4, 16(sp)
  ADD s7, t4, zero
  LB t4, 21(sp)
  ADD s8, t4, zero
  LB t4, 17(sp)
  ADD s9, t4, zero
  ADD s10, s0, zero
  LW t4, 100(sp)
  ADD s11, t4, zero
  JAL zero, bb11
bb19:
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb18
bb20:
  CALL getint
  ADD t4, a0, zero
  SW t4, 68(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 56(sp)
  LW t4, 44(sp)
  SLTU s3, zero, t4
  XORI s3, s3, 1
  BNE s3, zero, bb23
  # implict jump to bb21
bb21:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  LB t3, 19(sp)
  ADD t4, t3, zero
  SB t4, 13(sp)
  LB t3, 18(sp)
  ADD t4, t3, zero
  SB t4, 0(sp)
  LB t3, 20(sp)
  ADD t4, t3, zero
  SB t4, 14(sp)
  LB t3, 16(sp)
  ADD t4, t3, zero
  SB t4, 22(sp)
  LB t3, 21(sp)
  ADD t4, t3, zero
  SB t4, 15(sp)
  LB t4, 17(sp)
  ADD s10, t4, zero
  ADD s11, s0, zero
  # implict jump to bb22
bb22:
  LB t4, 15(sp)
  ADD s0, t4, zero
  LB t4, 22(sp)
  ADD s1, t4, zero
  LB t4, 14(sp)
  ADD s2, t4, zero
  LB t4, 0(sp)
  ADD s3, t4, zero
  LB t4, 13(sp)
  ADD s4, t4, zero
  LW t4, 108(sp)
  ADD s5, t4, zero
  LW t4, 104(sp)
  ADD s6, t4, zero
  LW t4, 24(sp)
  ADDIW s7, t4, 1
  ADD t4, s6, zero
  SW t4, 52(sp)
  ADD t4, s7, zero
  SW t4, 48(sp)
  ADD t4, s5, zero
  SW t4, 36(sp)
  ADD t4, s4, zero
  SB t4, 11(sp)
  ADD t4, s3, zero
  SB t4, 10(sp)
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  ADD t4, s2, zero
  SB t4, 6(sp)
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  ADD t4, s1, zero
  SB t4, 3(sp)
  ADD t4, s0, zero
  SB t4, 2(sp)
  ADD t4, s10, zero
  SB t4, 1(sp)
  ADD t4, s11, zero
  SW t4, 112(sp)
  JAL zero, bb16
bb23:
  LA s1, n
  LW s1, 0(s1)
  ADDI s2, zero, 1
  LW t4, 68(sp)
  SUBW s2, t4, s2
  MULW s1, s1, s2
  LW t4, 56(sp)
  ADDW s1, s1, t4
  SLLIW s2, s1, 2
  LA s3, array
  ADD s2, s3, s2
  SW s1, 0(s2)
  LW t4, 68(sp)
  XORI s2, t4, 1
  SLTIU s2, s2, 1
  BNE s2, zero, bb61
  # implict jump to bb24
bb24:
  LA s2, n
  LW s2, 0(s2)
  LW t4, 68(sp)
  XOR s2, t4, s2
  SLTIU s2, s2, 1
  BNE s2, zero, bb59
  # implict jump to bb25
bb25:
  LA s2, n
  LW s2, 0(s2)
  LW t4, 56(sp)
  BLT t4, s2, bb58
  # implict jump to bb26
bb26:
  ADD s2, zero, zero
  # implict jump to bb27
bb27:
  BNE s2, zero, bb56
  # implict jump to bb28
bb28:
  ADDI s3, zero, 1
  LW t4, 56(sp)
  BLT s3, t4, bb55
  # implict jump to bb29
bb29:
  ADD s3, zero, zero
  # implict jump to bb30
bb30:
  BNE s3, zero, bb53
  # implict jump to bb31
bb31:
  LA s4, n
  LW s4, 0(s4)
  LW t4, 68(sp)
  BLT t4, s4, bb52
  # implict jump to bb32
bb32:
  ADD s4, zero, zero
  # implict jump to bb33
bb33:
  BNE s4, zero, bb50
  # implict jump to bb34
bb34:
  ADDI s5, zero, 1
  LW t4, 68(sp)
  BLT s5, t4, bb49
  # implict jump to bb35
bb35:
  ADD s5, zero, zero
  # implict jump to bb36
bb36:
  BNE s5, zero, bb47
  # implict jump to bb37
bb37:
  LA s6, array
  LW s6, 0(s6)
  XORI s6, s6, -1
  BNE s6, zero, bb46
  # implict jump to bb38
bb38:
  ADD s6, zero, zero
  # implict jump to bb39
bb39:
  BNE s6, zero, bb45
  # implict jump to bb40
bb40:
  ADD s7, zero, zero
  # implict jump to bb41
bb41:
  BNE s7, zero, bb44
  # implict jump to bb42
bb42:
  LW t4, 44(sp)
  ADD s8, t4, zero
  # implict jump to bb43
bb43:
  ADD t4, s8, zero
  SW t4, 104(sp)
  ADD t4, s1, zero
  SW t4, 108(sp)
  ADD t4, s2, zero
  SB t4, 13(sp)
  ADD t4, s5, zero
  SB t4, 0(sp)
  ADD t4, s4, zero
  SB t4, 14(sp)
  ADD t4, s6, zero
  SB t4, 22(sp)
  ADD t4, s3, zero
  SB t4, 15(sp)
  ADD s10, s7, zero
  ADD s11, s0, zero
  JAL zero, bb22
bb44:
  LW t4, 24(sp)
  ADDIW s9, t4, 1
  ADD a0, s9, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s8, zero, 1
  ADD s0, s9, zero
  JAL zero, bb43
bb45:
  ADD a0, zero, zero
  CALL findfa
  ADD s8, a0, zero
  LW t4, 72(sp)
  ADD a0, t4, zero
  CALL findfa
  ADD s9, a0, zero
  XOR s8, s8, s9
  SLTIU s8, s8, 1
  ADD s7, s8, zero
  JAL zero, bb41
bb46:
  LW t4, 72(sp)
  SLLIW s7, t4, 2
  LA s8, array
  ADD s7, s8, s7
  LW s7, 0(s7)
  XORI s7, s7, -1
  SLTU s7, zero, s7
  ADD s6, s7, zero
  JAL zero, bb39
bb47:
  LA s6, n
  LW s6, 0(s6)
  SUBW s6, s1, s6
  ADD a0, s1, zero
  CALL findfa
  ADD s7, a0, zero
  ADD a0, s6, zero
  CALL findfa
  ADD s6, a0, zero
  BNE s7, s6, bb48
  JAL zero, bb37
bb48:
  SLLIW s7, s7, 2
  LA s8, array
  ADD s7, s8, s7
  SW s6, 0(s7)
  JAL zero, bb37
bb49:
  LA s6, n
  LW s6, 0(s6)
  SUBW s6, s1, s6
  SLLIW s6, s6, 2
  LA s7, array
  ADD s6, s7, s6
  LW s6, 0(s6)
  XORI s6, s6, -1
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb36
bb50:
  LA s5, n
  LW s5, 0(s5)
  ADDW s5, s1, s5
  ADD a0, s1, zero
  CALL findfa
  ADD s6, a0, zero
  ADD a0, s5, zero
  CALL findfa
  ADD s5, a0, zero
  BNE s6, s5, bb51
  JAL zero, bb34
bb51:
  SLLIW s6, s6, 2
  LA s7, array
  ADD s6, s7, s6
  SW s5, 0(s6)
  JAL zero, bb34
bb52:
  LA s5, n
  LW s5, 0(s5)
  ADDW s5, s1, s5
  SLLIW s5, s5, 2
  LA s6, array
  ADD s5, s6, s5
  LW s5, 0(s5)
  XORI s5, s5, -1
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb33
bb53:
  ADDI s4, zero, 1
  SUBW s4, s1, s4
  ADD a0, s1, zero
  CALL findfa
  ADD s5, a0, zero
  ADD a0, s4, zero
  CALL findfa
  ADD s4, a0, zero
  BNE s5, s4, bb54
  JAL zero, bb31
bb54:
  SLLIW s5, s5, 2
  LA s6, array
  ADD s5, s6, s5
  SW s4, 0(s5)
  JAL zero, bb31
bb55:
  ADDI s4, zero, 1
  SUBW s4, s1, s4
  SLLIW s4, s4, 2
  LA s5, array
  ADD s4, s5, s4
  LW s4, 0(s4)
  XORI s4, s4, -1
  SLTU s4, zero, s4
  ADD s3, s4, zero
  JAL zero, bb30
bb56:
  ADDIW s3, s1, 1
  ADD a0, s1, zero
  CALL findfa
  ADD s4, a0, zero
  ADD a0, s3, zero
  CALL findfa
  ADD s3, a0, zero
  BNE s4, s3, bb57
  JAL zero, bb28
bb57:
  SLLIW s4, s4, 2
  LA s5, array
  ADD s4, s5, s4
  SW s3, 0(s4)
  JAL zero, bb28
bb58:
  ADDIW s3, s1, 1
  SLLIW s3, s3, 2
  LA s4, array
  ADD s3, s4, s3
  LW s3, 0(s3)
  XORI s3, s3, -1
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb27
bb59:
  LW t4, 72(sp)
  SLLIW s2, t4, 2
  LA s3, array
  ADD s2, s3, s2
  LW t4, 72(sp)
  SW t4, 0(s2)
  ADD a0, s1, zero
  CALL findfa
  ADD s2, a0, zero
  LW t4, 72(sp)
  ADD a0, t4, zero
  CALL findfa
  ADD s3, a0, zero
  BNE s2, s3, bb60
  JAL zero, bb25
bb60:
  SLLIW s2, s2, 2
  LA s4, array
  ADD s2, s4, s2
  SW s3, 0(s2)
  JAL zero, bb25
bb61:
  LA s2, array
  SW zero, 0(s2)
  ADD a0, s1, zero
  CALL findfa
  ADD s2, a0, zero
  ADD a0, zero, zero
  CALL findfa
  ADD s3, a0, zero
  BNE s2, s3, bb62
  JAL zero, bb24
bb62:
  SLLIW s2, s2, 2
  LA s4, array
  ADD s2, s4, s2
  SW s3, 0(s2)
  JAL zero, bb24
bb63:
  LW t4, 76(sp)
  SLLIW s0, t4, 2
  LA s1, array
  ADD s0, s1, s0
  ADDI s1, zero, -1
  SW s1, 0(s0)
  LW t4, 76(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 80(sp)
  JAL zero, bb14
