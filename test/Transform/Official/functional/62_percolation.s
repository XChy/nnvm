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
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD a0, s0, zero
  CALL findfa
  ADD s0, a0, zero
  ADD a0, s1, zero
  CALL findfa
  ADD s1, a0, zero
  XOR s2, s0, s1
  SLTU s3, zero, s2
  BNE s3, zero, bb2
  # implict jump to bb1
bb1:
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb2:
  SLLIW s2, s0, 2
  LA s0, array
  ADD s3, s0, s2
  SW s1, 0(s3)
  JAL zero, bb1
findfa:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  SLLIW s1, s0, 2
  LA s2, array
  ADD s3, s2, s1
  LW s1, 0(s3)
  XOR s2, s1, s0
  SLTIU s1, s2, 1
  BNE s1, zero, bb5
  # implict jump to bb4
bb4:
  LW s1, 0(s3)
  ADD a0, s1, zero
  CALL findfa
  ADD s1, a0, zero
  SW s1, 0(s3)
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb5:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
init:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  MULW s1, s0, s0
  ADDI s0, zero, 1
  # implict jump to bb7
bb7:
  ADD s2, s0, zero
  ADDIW s3, s1, 1
  SLT s4, s3, s2
  XORI s3, s4, 1
  BNE s3, zero, bb9
  # implict jump to bb8
bb8:
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb9:
  SLLIW s3, s2, 2
  LA s4, array
  ADD s5, s4, s3
  ADDI s3, zero, -1
  SW s3, 0(s5)
  ADDIW s3, s2, 1
  ADD s0, s3, zero
  JAL zero, bb7
main:
  ADDI sp, sp, -256
  SD s1, 144(sp)
  SD ra, 152(sp)
  SD s0, 160(sp)
  SD s5, 168(sp)
  SD s10, 176(sp)
  SD s2, 184(sp)
  SD s3, 192(sp)
  SD s4, 200(sp)
  SD s6, 208(sp)
  SD s7, 216(sp)
  SD s8, 224(sp)
  SD s9, 232(sp)
  SD s11, 240(sp)
  ADD s0, zero, zero
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
  SW t4, 0(sp)
  ADD t4, s9, zero
  SB t4, 12(sp)
  ADD t4, s8, zero
  SB t4, 4(sp)
  ADD t4, s7, zero
  SB t4, 13(sp)
  ADD t4, s6, zero
  SW t4, 16(sp)
  ADD t4, s5, zero
  SB t4, 20(sp)
  ADD t4, s4, zero
  SW t4, 24(sp)
  ADD t4, s3, zero
  SB t4, 28(sp)
  ADD t4, s2, zero
  SB t4, 29(sp)
  ADD t4, s0, zero
  SW t4, 32(sp)
  XOR t6, t0, zero
  SLTU t1, zero, t6
  BNE t1, zero, bb13
  # implict jump to bb12
bb12:
  ADD a0, zero, zero
  LD s1, 144(sp)
  LD ra, 152(sp)
  LD s0, 160(sp)
  LD s5, 168(sp)
  LD s10, 176(sp)
  LD s2, 184(sp)
  LD s3, 192(sp)
  LD s4, 200(sp)
  LD s6, 208(sp)
  LD s7, 216(sp)
  LD s8, 224(sp)
  LD s9, 232(sp)
  LD s11, 240(sp)
  ADDI sp, sp, 256
  JALR zero, 0(ra)
bb13:
  ADDI t1, zero, 1
  SUBW t4, t0, t1
  SW t4, 8(sp)
  LA t0, n
  ADDI t1, zero, 4
  SW t1, 0(t0)
  ADDI t4, zero, 1
  SW t4, 36(sp)
  # implict jump to bb14
bb14:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  ADDI t6, zero, 17
  LW t4, 40(sp)
  SLT t2, t6, t4
  XORI t6, t2, 1
  BNE t6, zero, bb63
  # implict jump to bb15
bb15:
  LA t2, n
  LW t6, 0(t2)
  MULW t2, t6, t6
  ADDIW t4, t2, 1
  SW t4, 44(sp)
  ADD t4, zero, zero
  SW t4, 80(sp)
  ADD t4, zero, zero
  SW t4, 76(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LB t3, 29(sp)
  ADD t4, t3, zero
  SB t4, 69(sp)
  LB t3, 28(sp)
  ADD t4, t3, zero
  SB t4, 68(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LB t3, 20(sp)
  ADD t4, t3, zero
  SB t4, 60(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LB t3, 13(sp)
  ADD t4, t3, zero
  SB t4, 54(sp)
  LB t3, 4(sp)
  ADD t4, t3, zero
  SB t4, 53(sp)
  LB t3, 12(sp)
  ADD t4, t3, zero
  SB t4, 52(sp)
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  # implict jump to bb16
bb16:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LB t3, 52(sp)
  ADD t4, t3, zero
  SB t4, 108(sp)
  LB t3, 53(sp)
  ADD t4, t3, zero
  SB t4, 100(sp)
  LB t3, 54(sp)
  ADD t4, t3, zero
  SB t4, 94(sp)
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LB t3, 60(sp)
  ADD t4, t3, zero
  SB t4, 101(sp)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  LB t3, 68(sp)
  ADD t4, t3, zero
  SB t4, 92(sp)
  LB t3, 69(sp)
  ADD t4, t3, zero
  SB t4, 93(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t4, 84(sp)
  SLTI t6, t4, 10
  BNE t6, zero, bb20
  # implict jump to bb17
bb17:
  LW t4, 96(sp)
  XOR t6, t4, zero
  SLTU s1, zero, t6
  XORI t6, s1, 1
  XOR s1, t6, zero
  SLTU t6, zero, s1
  BNE t6, zero, bb19
  # implict jump to bb18
bb18:
  LW t4, 104(sp)
  ADD s0, t4, zero
  LB t4, 93(sp)
  ADD s2, t4, zero
  LB t4, 92(sp)
  ADD s3, t4, zero
  LW t4, 116(sp)
  ADD s4, t4, zero
  LB t4, 101(sp)
  ADD s5, t4, zero
  LW t4, 112(sp)
  ADD s6, t4, zero
  LB t4, 94(sp)
  ADD s7, t4, zero
  LB t4, 100(sp)
  ADD s8, t4, zero
  LB t4, 108(sp)
  ADD s9, t4, zero
  LW t4, 88(sp)
  ADD s10, t4, zero
  LW t4, 8(sp)
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
  SW t4, 120(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 124(sp)
  LW t4, 96(sp)
  XOR s2, t4, zero
  SLTU s3, zero, s2
  XORI s2, s3, 1
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb23
  # implict jump to bb21
bb21:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  LB t3, 93(sp)
  ADD t4, t3, zero
  SB t4, 136(sp)
  LB t3, 92(sp)
  ADD t4, t3, zero
  SB t4, 137(sp)
  LB t3, 101(sp)
  ADD t4, t3, zero
  SB t4, 138(sp)
  LB t3, 94(sp)
  ADD t4, t3, zero
  SB t4, 139(sp)
  LB t3, 100(sp)
  ADD t4, t3, zero
  SB t4, 140(sp)
  LB t4, 108(sp)
  ADD s9, t4, zero
  LW t4, 88(sp)
  ADD s10, t4, zero
  # implict jump to bb22
bb22:
  ADD s0, s10, zero
  ADD s1, s9, zero
  LB t4, 140(sp)
  ADD s2, t4, zero
  LB t4, 139(sp)
  ADD s3, t4, zero
  LB t4, 138(sp)
  ADD s4, t4, zero
  LB t4, 137(sp)
  ADD s5, t4, zero
  LB t4, 136(sp)
  ADD s6, t4, zero
  LW t4, 132(sp)
  ADD s7, t4, zero
  LW t4, 128(sp)
  ADD s8, t4, zero
  LW t4, 84(sp)
  ADDIW s9, t4, 1
  ADD t4, s8, zero
  SW t4, 80(sp)
  ADD t4, s9, zero
  SW t4, 76(sp)
  ADD t4, s7, zero
  SW t4, 72(sp)
  ADD t4, s6, zero
  SB t4, 69(sp)
  ADD t4, s5, zero
  SB t4, 68(sp)
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  ADD t4, s4, zero
  SB t4, 60(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  ADD t4, s3, zero
  SB t4, 54(sp)
  ADD t4, s2, zero
  SB t4, 53(sp)
  ADD t4, s1, zero
  SB t4, 52(sp)
  ADD t4, s0, zero
  SW t4, 48(sp)
  JAL zero, bb16
bb23:
  LA s11, n
  LW s0, 0(s11)
  ADDI s11, zero, 1
  LW t4, 120(sp)
  SUBW s1, t4, s11
  MULW s11, s0, s1
  LW t4, 124(sp)
  ADDW s0, s11, t4
  SLLIW s1, s0, 2
  LA s11, array
  ADD s2, s11, s1
  SW s0, 0(s2)
  LW t4, 120(sp)
  XORI s1, t4, 1
  SLTIU s2, s1, 1
  BNE s2, zero, bb61
  # implict jump to bb24
bb24:
  LA s1, n
  LW s2, 0(s1)
  LW t4, 120(sp)
  XOR s1, t4, s2
  SLTIU s2, s1, 1
  BNE s2, zero, bb59
  # implict jump to bb25
bb25:
  LA s1, n
  LW s2, 0(s1)
  LW t4, 124(sp)
  SLT s1, t4, s2
  BNE s1, zero, bb58
  # implict jump to bb26
bb26:
  ADD s1, zero, zero
  # implict jump to bb27
bb27:
  ADD s2, s1, zero
  BNE s2, zero, bb56
  # implict jump to bb28
bb28:
  ADDI s1, zero, 1
  LW t4, 124(sp)
  SLT s3, s1, t4
  BNE s3, zero, bb55
  # implict jump to bb29
bb29:
  ADD s1, zero, zero
  # implict jump to bb30
bb30:
  ADD s3, s1, zero
  BNE s3, zero, bb53
  # implict jump to bb31
bb31:
  LA s1, n
  LW s4, 0(s1)
  LW t4, 120(sp)
  SLT s1, t4, s4
  BNE s1, zero, bb52
  # implict jump to bb32
bb32:
  ADD s1, zero, zero
  # implict jump to bb33
bb33:
  ADD s4, s1, zero
  BNE s4, zero, bb50
  # implict jump to bb34
bb34:
  ADDI s1, zero, 1
  LW t4, 120(sp)
  SLT s5, s1, t4
  BNE s5, zero, bb49
  # implict jump to bb35
bb35:
  ADD s1, zero, zero
  # implict jump to bb36
bb36:
  ADD s5, s1, zero
  BNE s5, zero, bb47
  # implict jump to bb37
bb37:
  LA s1, array
  LW s6, 0(s1)
  XORI s1, s6, -1
  SLTU s6, zero, s1
  BNE s6, zero, bb46
  # implict jump to bb38
bb38:
  ADD s1, zero, zero
  # implict jump to bb39
bb39:
  ADD s6, s1, zero
  BNE s6, zero, bb45
  # implict jump to bb40
bb40:
  ADD s1, zero, zero
  # implict jump to bb41
bb41:
  ADD s7, s1, zero
  BNE s7, zero, bb44
  # implict jump to bb42
bb42:
  LW t4, 96(sp)
  ADD s1, t4, zero
  LW t4, 88(sp)
  ADD s8, t4, zero
  # implict jump to bb43
bb43:
  ADD s11, s8, zero
  ADD s8, s1, zero
  ADD t4, s8, zero
  SW t4, 128(sp)
  ADD t4, s0, zero
  SW t4, 132(sp)
  ADD t4, s2, zero
  SB t4, 136(sp)
  ADD t4, s5, zero
  SB t4, 137(sp)
  ADD t4, s4, zero
  SB t4, 138(sp)
  ADD t4, s6, zero
  SB t4, 139(sp)
  ADD t4, s3, zero
  SB t4, 140(sp)
  ADD s9, s7, zero
  ADD s10, s11, zero
  JAL zero, bb22
bb44:
  LW t4, 84(sp)
  ADDIW s11, t4, 1
  ADD a0, s11, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s1, zero, 1
  ADD s8, s11, zero
  JAL zero, bb43
bb45:
  ADD a0, zero, zero
  CALL findfa
  ADD s7, a0, zero
  LW t4, 44(sp)
  ADD a0, t4, zero
  CALL findfa
  ADD s11, a0, zero
  XOR s8, s7, s11
  SLTIU s7, s8, 1
  ADD s1, s7, zero
  JAL zero, bb41
bb46:
  LW t4, 44(sp)
  SLLIW s6, t4, 2
  LA s7, array
  ADD s11, s7, s6
  LW s6, 0(s11)
  XORI s7, s6, -1
  SLTU s6, zero, s7
  ADD s1, s6, zero
  JAL zero, bb39
bb47:
  LA s1, n
  LW s6, 0(s1)
  SUBW s1, s0, s6
  ADD a0, s0, zero
  CALL findfa
  ADD s6, a0, zero
  ADD a0, s1, zero
  CALL findfa
  ADD s1, a0, zero
  XOR s11, s6, s1
  SLTU s7, zero, s11
  BNE s7, zero, bb48
  JAL zero, bb37
bb48:
  SLLIW s7, s6, 2
  LA s6, array
  ADD s11, s6, s7
  SW s1, 0(s11)
  JAL zero, bb37
bb49:
  LA s5, n
  LW s6, 0(s5)
  SUBW s5, s0, s6
  SLLIW s6, s5, 2
  LA s5, array
  ADD s11, s5, s6
  LW s5, 0(s11)
  XORI s6, s5, -1
  SLTU s5, zero, s6
  ADD s1, s5, zero
  JAL zero, bb36
bb50:
  LA s1, n
  LW s5, 0(s1)
  ADDW s1, s0, s5
  ADD a0, s0, zero
  CALL findfa
  ADD s5, a0, zero
  ADD a0, s1, zero
  CALL findfa
  ADD s1, a0, zero
  XOR s11, s5, s1
  SLTU s6, zero, s11
  BNE s6, zero, bb51
  JAL zero, bb34
bb51:
  SLLIW s6, s5, 2
  LA s5, array
  ADD s11, s5, s6
  SW s1, 0(s11)
  JAL zero, bb34
bb52:
  LA s4, n
  LW s5, 0(s4)
  ADDW s4, s0, s5
  SLLIW s5, s4, 2
  LA s4, array
  ADD s11, s4, s5
  LW s4, 0(s11)
  XORI s5, s4, -1
  SLTU s4, zero, s5
  ADD s1, s4, zero
  JAL zero, bb33
bb53:
  ADDI s1, zero, 1
  SUBW s4, s0, s1
  ADD a0, s0, zero
  CALL findfa
  ADD s1, a0, zero
  ADD a0, s4, zero
  CALL findfa
  ADD s4, a0, zero
  XOR s11, s1, s4
  SLTU s5, zero, s11
  BNE s5, zero, bb54
  JAL zero, bb31
bb54:
  SLLIW s5, s1, 2
  LA s1, array
  ADD s11, s1, s5
  SW s4, 0(s11)
  JAL zero, bb31
bb55:
  ADDI s3, zero, 1
  SUBW s4, s0, s3
  SLLIW s3, s4, 2
  LA s4, array
  ADD s11, s4, s3
  LW s3, 0(s11)
  XORI s4, s3, -1
  SLTU s3, zero, s4
  ADD s1, s3, zero
  JAL zero, bb30
bb56:
  ADDIW s1, s0, 1
  ADD a0, s0, zero
  CALL findfa
  ADD s3, a0, zero
  ADD a0, s1, zero
  CALL findfa
  ADD s1, a0, zero
  XOR s11, s3, s1
  SLTU s4, zero, s11
  BNE s4, zero, bb57
  JAL zero, bb28
bb57:
  SLLIW s4, s3, 2
  LA s3, array
  ADD s11, s3, s4
  SW s1, 0(s11)
  JAL zero, bb28
bb58:
  ADDIW s2, s0, 1
  SLLIW s3, s2, 2
  LA s2, array
  ADD s11, s2, s3
  LW s2, 0(s11)
  XORI s3, s2, -1
  SLTU s2, zero, s3
  ADD s1, s2, zero
  JAL zero, bb27
bb59:
  LW t4, 44(sp)
  SLLIW s1, t4, 2
  LA s2, array
  ADD s3, s2, s1
  LW t4, 44(sp)
  SW t4, 0(s3)
  ADD a0, s0, zero
  CALL findfa
  ADD s1, a0, zero
  LW t4, 44(sp)
  ADD a0, t4, zero
  CALL findfa
  ADD s2, a0, zero
  XOR s3, s1, s2
  SLTU s11, zero, s3
  BNE s11, zero, bb60
  JAL zero, bb25
bb60:
  SLLIW s3, s1, 2
  LA s1, array
  ADD s11, s1, s3
  SW s2, 0(s11)
  JAL zero, bb25
bb61:
  LA s1, array
  SW zero, 0(s1)
  ADD a0, s0, zero
  CALL findfa
  ADD s1, a0, zero
  ADD a0, zero, zero
  CALL findfa
  ADD s2, a0, zero
  XOR s11, s1, s2
  SLTU s3, zero, s11
  BNE s3, zero, bb62
  JAL zero, bb24
bb62:
  SLLIW s3, s1, 2
  LA s1, array
  ADD s11, s1, s3
  SW s2, 0(s11)
  JAL zero, bb24
bb63:
  LW t4, 40(sp)
  SLLIW s0, t4, 2
  LA s1, array
  ADD s2, s1, s0
  ADDI s0, zero, -1
  SW s0, 0(s2)
  LW t4, 40(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 36(sp)
  JAL zero, bb14
