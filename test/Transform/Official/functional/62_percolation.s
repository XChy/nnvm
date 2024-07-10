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
  LW s0, 0(s3)
  ADD a0, s0, zero
  CALL findfa
  ADD s0, a0, zero
  SW s0, 0(s3)
  ADD a0, s0, zero
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
  ADDI sp, sp, -272
  SD s8, 160(sp)
  SD s6, 168(sp)
  SD s2, 176(sp)
  SD s7, 184(sp)
  SD s1, 192(sp)
  SD s0, 200(sp)
  SD s3, 208(sp)
  SD s4, 216(sp)
  SD s5, 224(sp)
  SD s9, 232(sp)
  SD s10, 240(sp)
  SD ra, 248(sp)
  SD s11, 256(sp)
  ADD t4, zero, zero
  SW t4, 84(sp)
  ADD t4, zero, zero
  SB t4, 82(sp)
  ADD t4, zero, zero
  SB t4, 80(sp)
  ADD t4, zero, zero
  SW t4, 76(sp)
  ADD t4, zero, zero
  SB t4, 37(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  ADD t4, zero, zero
  SB t4, 24(sp)
  ADD t4, zero, zero
  SB t4, 22(sp)
  ADD t4, zero, zero
  SB t4, 12(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  ADDI t4, zero, 1
  SW t4, 0(sp)
  # implict jump to bb11
bb11:
  LW t4, 0(sp)
  ADD t0, t4, zero
  LW t4, 8(sp)
  ADD t1, t4, zero
  LB t4, 12(sp)
  ADD t2, t4, zero
  LB t4, 22(sp)
  ADD a0, t4, zero
  LB t4, 24(sp)
  ADD a1, t4, zero
  LW t4, 32(sp)
  ADD a2, t4, zero
  LB t4, 37(sp)
  ADD a3, t4, zero
  LW t4, 76(sp)
  ADD a4, t4, zero
  LB t4, 80(sp)
  ADD a5, t4, zero
  LB t4, 82(sp)
  ADD a6, t4, zero
  LW t4, 84(sp)
  ADD a7, t4, zero
  XOR t6, t0, zero
  SLTU s11, zero, t6
  BNE s11, zero, bb13
  # implict jump to bb12
bb12:
  ADD a0, zero, zero
  LD s8, 160(sp)
  LD s6, 168(sp)
  LD s2, 176(sp)
  LD s7, 184(sp)
  LD s1, 192(sp)
  LD s0, 200(sp)
  LD s3, 208(sp)
  LD s4, 216(sp)
  LD s5, 224(sp)
  LD s9, 232(sp)
  LD s10, 240(sp)
  LD ra, 248(sp)
  LD s11, 256(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb13:
  ADDI s11, zero, 1
  SUBW t4, t0, s11
  SW t4, 4(sp)
  LA s11, n
  ADDI t0, zero, 4
  SW t0, 0(s11)
  ADDI s11, zero, 1
  # implict jump to bb14
bb14:
  ADD t0, s11, zero
  ADDI t6, zero, 17
  SLT s10, t6, t0
  XORI t6, s10, 1
  BNE t6, zero, bb63
  # implict jump to bb15
bb15:
  LA s9, n
  LW s10, 0(s9)
  MULW s9, s10, s10
  ADDIW t4, s9, 1
  SW t4, 100(sp)
  ADD s9, zero, zero
  ADD s10, zero, zero
  ADD s11, a7, zero
  ADD t4, a6, zero
  SB t4, 65(sp)
  ADD t4, a5, zero
  SB t4, 44(sp)
  ADD t4, a4, zero
  SW t4, 60(sp)
  ADD t4, a3, zero
  SB t4, 64(sp)
  ADD t4, a2, zero
  SW t4, 68(sp)
  ADD t4, a1, zero
  SB t4, 38(sp)
  ADD t4, a0, zero
  SB t4, 39(sp)
  ADD t4, t2, zero
  SB t4, 56(sp)
  ADD t4, t1, zero
  SW t4, 40(sp)
  # implict jump to bb16
bb16:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LB t3, 56(sp)
  ADD t4, t3, zero
  SB t4, 20(sp)
  LB t3, 39(sp)
  ADD t4, t3, zero
  SB t4, 21(sp)
  LB t3, 38(sp)
  ADD t4, t3, zero
  SB t4, 23(sp)
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LB t3, 64(sp)
  ADD t4, t3, zero
  SB t4, 36(sp)
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LB t3, 44(sp)
  ADD t4, t3, zero
  SB t4, 45(sp)
  LB t3, 65(sp)
  ADD t4, t3, zero
  SB t4, 81(sp)
  ADD t4, s11, zero
  SW t4, 48(sp)
  ADD t4, s10, zero
  SW t4, 96(sp)
  ADD t4, s9, zero
  SW t4, 52(sp)
  LW t4, 96(sp)
  SLTI s5, t4, 10
  BNE s5, zero, bb20
  # implict jump to bb17
bb17:
  LW t4, 52(sp)
  XOR s0, t4, zero
  SLTU s1, zero, s0
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb19
  # implict jump to bb18
bb18:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  LB t3, 81(sp)
  ADD t4, t3, zero
  SB t4, 82(sp)
  LB t3, 45(sp)
  ADD t4, t3, zero
  SB t4, 80(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LB t3, 36(sp)
  ADD t4, t3, zero
  SB t4, 37(sp)
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LB t3, 23(sp)
  ADD t4, t3, zero
  SB t4, 24(sp)
  LB t3, 21(sp)
  ADD t4, t3, zero
  SB t4, 22(sp)
  LB t3, 20(sp)
  ADD t4, t3, zero
  SB t4, 12(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
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
  SW t4, 92(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 88(sp)
  LW t4, 52(sp)
  XOR s4, t4, zero
  SLTU s3, zero, s4
  XORI s4, s3, 1
  XOR s3, s4, zero
  SLTU s4, zero, s3
  BNE s4, zero, bb23
  # implict jump to bb21
bb21:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  LB t3, 81(sp)
  ADD t4, t3, zero
  SB t4, 120(sp)
  LB t3, 45(sp)
  ADD t4, t3, zero
  SB t4, 121(sp)
  LB t3, 36(sp)
  ADD t4, t3, zero
  SB t4, 122(sp)
  LB t3, 23(sp)
  ADD t4, t3, zero
  SB t4, 123(sp)
  LB t3, 21(sp)
  ADD t4, t3, zero
  SB t4, 124(sp)
  LB t3, 20(sp)
  ADD t4, t3, zero
  SB t4, 125(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  # implict jump to bb22
bb22:
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LB t4, 125(sp)
  ADD s4, t4, zero
  LB t4, 124(sp)
  ADD s2, t4, zero
  LB t4, 123(sp)
  ADD s5, t4, zero
  LB t4, 122(sp)
  ADD s1, t4, zero
  LB t4, 121(sp)
  ADD s3, t4, zero
  LB t4, 120(sp)
  ADD s7, t4, zero
  LW t4, 132(sp)
  ADD s0, t4, zero
  LW t4, 116(sp)
  ADD s6, t4, zero
  LW t4, 96(sp)
  ADDIW s8, t4, 1
  ADD s9, s6, zero
  ADD s10, s8, zero
  ADD s11, s0, zero
  ADD t4, s7, zero
  SB t4, 65(sp)
  ADD t4, s3, zero
  SB t4, 44(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  ADD t4, s1, zero
  SB t4, 64(sp)
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  ADD t4, s5, zero
  SB t4, 38(sp)
  ADD t4, s2, zero
  SB t4, 39(sp)
  ADD t4, s4, zero
  SB t4, 56(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb16
bb23:
  LA s3, n
  LW s4, 0(s3)
  ADDI s3, zero, 1
  LW t4, 92(sp)
  SUBW s7, t4, s3
  MULW s3, s4, s7
  LW t3, 88(sp)
  ADDW t4, s3, t3
  SW t4, 104(sp)
  LW t4, 104(sp)
  SLLIW s3, t4, 2
  LA s7, array
  ADD s2, s7, s3
  LW t4, 104(sp)
  SW t4, 0(s2)
  LW t4, 92(sp)
  XORI s2, t4, 1
  SLTIU s3, s2, 1
  BNE s3, zero, bb61
  # implict jump to bb24
bb24:
  LA s1, n
  LW s2, 0(s1)
  LW t4, 92(sp)
  XOR s1, t4, s2
  SLTIU s2, s1, 1
  BNE s2, zero, bb59
  # implict jump to bb25
bb25:
  LA s1, n
  LW s2, 0(s1)
  LW t4, 88(sp)
  SLT s1, t4, s2
  BNE s1, zero, bb58
  # implict jump to bb26
bb26:
  ADD t4, zero, zero
  SB t4, 108(sp)
  # implict jump to bb27
bb27:
  LB t3, 108(sp)
  ADD t4, t3, zero
  SB t4, 109(sp)
  LB t4, 109(sp)
  BNE t4, zero, bb56
  # implict jump to bb28
bb28:
  ADDI s3, zero, 1
  LW t4, 88(sp)
  SLT s5, s3, t4
  BNE s5, zero, bb55
  # implict jump to bb29
bb29:
  ADD t4, zero, zero
  SB t4, 110(sp)
  # implict jump to bb30
bb30:
  LB t3, 110(sp)
  ADD t4, t3, zero
  SB t4, 111(sp)
  LB t4, 111(sp)
  BNE t4, zero, bb53
  # implict jump to bb31
bb31:
  LA s0, n
  LW s6, 0(s0)
  LW t4, 92(sp)
  SLT s0, t4, s6
  BNE s0, zero, bb52
  # implict jump to bb32
bb32:
  ADD t4, zero, zero
  SB t4, 112(sp)
  # implict jump to bb33
bb33:
  LB t3, 112(sp)
  ADD t4, t3, zero
  SB t4, 113(sp)
  LB t4, 113(sp)
  BNE t4, zero, bb50
  # implict jump to bb34
bb34:
  ADDI s2, zero, 1
  LW t4, 92(sp)
  SLT s4, s2, t4
  BNE s4, zero, bb49
  # implict jump to bb35
bb35:
  ADD t4, zero, zero
  SB t4, 114(sp)
  # implict jump to bb36
bb36:
  LB t3, 114(sp)
  ADD t4, t3, zero
  SB t4, 136(sp)
  LB t4, 136(sp)
  BNE t4, zero, bb47
  # implict jump to bb37
bb37:
  LA s1, array
  LW s5, 0(s1)
  XORI s1, s5, -1
  SLTU s5, zero, s1
  BNE s5, zero, bb46
  # implict jump to bb38
bb38:
  ADD t4, zero, zero
  SB t4, 137(sp)
  # implict jump to bb39
bb39:
  LB t3, 137(sp)
  ADD t4, t3, zero
  SB t4, 138(sp)
  LB t4, 138(sp)
  BNE t4, zero, bb45
  # implict jump to bb40
bb40:
  ADD t4, zero, zero
  SB t4, 139(sp)
  # implict jump to bb41
bb41:
  LB t3, 139(sp)
  ADD t4, t3, zero
  SB t4, 140(sp)
  LB t4, 140(sp)
  BNE t4, zero, bb44
  # implict jump to bb42
bb42:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 148(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  # implict jump to bb43
bb43:
  LW t4, 144(sp)
  ADD s8, t4, zero
  LW t4, 148(sp)
  ADD s4, t4, zero
  ADD t4, s4, zero
  SW t4, 116(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  LB t3, 109(sp)
  ADD t4, t3, zero
  SB t4, 120(sp)
  LB t3, 136(sp)
  ADD t4, t3, zero
  SB t4, 121(sp)
  LB t3, 113(sp)
  ADD t4, t3, zero
  SB t4, 122(sp)
  LB t3, 138(sp)
  ADD t4, t3, zero
  SB t4, 123(sp)
  LB t3, 111(sp)
  ADD t4, t3, zero
  SB t4, 124(sp)
  LB t3, 140(sp)
  ADD t4, t3, zero
  SB t4, 125(sp)
  ADD t4, s8, zero
  SW t4, 128(sp)
  JAL zero, bb22
bb44:
  LW t4, 96(sp)
  ADDIW s8, t4, 1
  ADD a0, s8, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI t4, zero, 1
  SW t4, 148(sp)
  ADD t4, s8, zero
  SW t4, 144(sp)
  JAL zero, bb43
bb45:
  ADD a0, zero, zero
  CALL findfa
  ADD s7, a0, zero
  LW t4, 100(sp)
  ADD a0, t4, zero
  CALL findfa
  ADD s8, a0, zero
  XOR s3, s7, s8
  SLTIU s7, s3, 1
  ADD t4, s7, zero
  SB t4, 139(sp)
  JAL zero, bb41
bb46:
  LW t4, 100(sp)
  SLLIW s1, t4, 2
  LA s5, array
  ADD s7, s5, s1
  LW s1, 0(s7)
  XORI s5, s1, -1
  SLTU s1, zero, s5
  ADD t4, s1, zero
  SB t4, 137(sp)
  JAL zero, bb39
bb47:
  LA s7, n
  LW s8, 0(s7)
  LW t4, 104(sp)
  SUBW s7, t4, s8
  LW t4, 104(sp)
  ADD a0, t4, zero
  CALL findfa
  ADD s8, a0, zero
  ADD a0, s7, zero
  CALL findfa
  ADD s7, a0, zero
  XOR s1, s8, s7
  SLTU s5, zero, s1
  BNE s5, zero, bb48
  JAL zero, bb37
bb48:
  SLLIW s1, s8, 2
  LA s5, array
  ADD s8, s5, s1
  SW s7, 0(s8)
  JAL zero, bb37
bb49:
  LA s2, n
  LW s4, 0(s2)
  LW t4, 104(sp)
  SUBW s2, t4, s4
  SLLIW s4, s2, 2
  LA s2, array
  ADD s7, s2, s4
  LW s2, 0(s7)
  XORI s4, s2, -1
  SLTU s2, zero, s4
  ADD t4, s2, zero
  SB t4, 114(sp)
  JAL zero, bb36
bb50:
  LA s7, n
  LW s8, 0(s7)
  LW t4, 104(sp)
  ADDW s7, t4, s8
  LW t4, 104(sp)
  ADD a0, t4, zero
  CALL findfa
  ADD s8, a0, zero
  ADD a0, s7, zero
  CALL findfa
  ADD s7, a0, zero
  XOR s4, s8, s7
  SLTU s2, zero, s4
  BNE s2, zero, bb51
  JAL zero, bb34
bb51:
  SLLIW s2, s8, 2
  LA s4, array
  ADD s8, s4, s2
  SW s7, 0(s8)
  JAL zero, bb34
bb52:
  LA s0, n
  LW s6, 0(s0)
  LW t4, 104(sp)
  ADDW s0, t4, s6
  SLLIW s6, s0, 2
  LA s0, array
  ADD s7, s0, s6
  LW s0, 0(s7)
  XORI s6, s0, -1
  SLTU s0, zero, s6
  ADD t4, s0, zero
  SB t4, 112(sp)
  JAL zero, bb33
bb53:
  ADDI s7, zero, 1
  LW t4, 104(sp)
  SUBW s8, t4, s7
  LW t4, 104(sp)
  ADD a0, t4, zero
  CALL findfa
  ADD s7, a0, zero
  ADD a0, s8, zero
  CALL findfa
  ADD s8, a0, zero
  XOR s6, s7, s8
  SLTU s0, zero, s6
  BNE s0, zero, bb54
  JAL zero, bb31
bb54:
  SLLIW s0, s7, 2
  LA s6, array
  ADD s7, s6, s0
  SW s8, 0(s7)
  JAL zero, bb31
bb55:
  ADDI s3, zero, 1
  LW t4, 104(sp)
  SUBW s5, t4, s3
  SLLIW s3, s5, 2
  LA s5, array
  ADD s7, s5, s3
  LW s3, 0(s7)
  XORI s5, s3, -1
  SLTU s3, zero, s5
  ADD t4, s3, zero
  SB t4, 110(sp)
  JAL zero, bb30
bb56:
  LW t4, 104(sp)
  ADDIW s3, t4, 1
  LW t4, 104(sp)
  ADD a0, t4, zero
  CALL findfa
  ADD s7, a0, zero
  ADD a0, s3, zero
  CALL findfa
  ADD s3, a0, zero
  XOR s8, s7, s3
  SLTU s5, zero, s8
  BNE s5, zero, bb57
  JAL zero, bb28
bb57:
  SLLIW s5, s7, 2
  LA s7, array
  ADD s8, s7, s5
  SW s3, 0(s8)
  JAL zero, bb28
bb58:
  LW t4, 104(sp)
  ADDIW s1, t4, 1
  SLLIW s2, s1, 2
  LA s1, array
  ADD s3, s1, s2
  LW s1, 0(s3)
  XORI s2, s1, -1
  SLTU s1, zero, s2
  ADD t4, s1, zero
  SB t4, 108(sp)
  JAL zero, bb27
bb59:
  LW t4, 100(sp)
  SLLIW s1, t4, 2
  LA s2, array
  ADD s3, s2, s1
  LW t4, 100(sp)
  SW t4, 0(s3)
  LW t4, 104(sp)
  ADD a0, t4, zero
  CALL findfa
  ADD s1, a0, zero
  LW t4, 100(sp)
  ADD a0, t4, zero
  CALL findfa
  ADD s2, a0, zero
  XOR s3, s1, s2
  SLTU s7, zero, s3
  BNE s7, zero, bb60
  JAL zero, bb25
bb60:
  SLLIW s3, s1, 2
  LA s1, array
  ADD s7, s1, s3
  SW s2, 0(s7)
  JAL zero, bb25
bb61:
  LA s2, array
  SW zero, 0(s2)
  LW t4, 104(sp)
  ADD a0, t4, zero
  CALL findfa
  ADD s2, a0, zero
  ADD a0, zero, zero
  CALL findfa
  ADD s3, a0, zero
  XOR s7, s2, s3
  SLTU s1, zero, s7
  BNE s1, zero, bb62
  JAL zero, bb24
bb62:
  SLLIW s1, s2, 2
  LA s2, array
  ADD s7, s2, s1
  SW s3, 0(s7)
  JAL zero, bb24
bb63:
  SLLIW s10, t0, 2
  LA t6, array
  ADD s9, t6, s10
  ADDI s10, zero, -1
  SW s10, 0(s9)
  ADDIW s9, t0, 1
  ADD s11, s9, zero
  JAL zero, bb14
