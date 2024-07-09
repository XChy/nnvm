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
  BNE s3, zero, bb1
  JAL zero, bb2
bb1:
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, array
  ADD s2, s0, s3
  SW s1, 0(s2)
  JAL zero, bb2
bb2:
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
findfa:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, array
  ADD s3, s1, s2
  LW s1, 0(s3)
  XOR s2, s1, s0
  SLTIU s1, s2, 1
  BNE s1, zero, bb4
  JAL zero, bb5
bb4:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb5:
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
  JAL zero, bb7
bb7:
  ADD s2, s0, zero
  ADDIW s3, s1, 1
  SLT s4, s3, s2
  XORI s3, s4, 1
  BNE s3, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s3, array
  ADD s5, s3, s4
  ADDI s3, zero, -1
  SW s3, 0(s5)
  ADDIW s3, s2, 1
  ADD s0, s3, zero
  JAL zero, bb7
bb9:
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -256
  SD s7, 152(sp)
  SD s4, 160(sp)
  SD s5, 168(sp)
  SD s6, 176(sp)
  SD s1, 184(sp)
  SD s0, 192(sp)
  SD s2, 200(sp)
  SD s3, 208(sp)
  SD s8, 216(sp)
  SD s9, 224(sp)
  SD ra, 232(sp)
  SD s10, 240(sp)
  SD s11, 248(sp)
  ADD t4, zero, zero
  SW t4, 80(sp)
  ADD t4, zero, zero
  SB t4, 74(sp)
  ADD t4, zero, zero
  SB t4, 73(sp)
  ADD t4, zero, zero
  SW t4, 68(sp)
  ADD t4, zero, zero
  SB t4, 33(sp)
  ADD t4, zero, zero
  SW t4, 28(sp)
  ADD t4, zero, zero
  SB t4, 23(sp)
  ADD t4, zero, zero
  SB t4, 13(sp)
  ADD t4, zero, zero
  SB t4, 12(sp)
  ADD t4, zero, zero
  SW t4, 4(sp)
  ADDI t4, zero, 1
  SW t4, 0(sp)
  JAL zero, bb11
bb11:
  LW t4, 0(sp)
  ADD t0, t4, zero
  LW t4, 4(sp)
  ADD t1, t4, zero
  LB t4, 12(sp)
  ADD t2, t4, zero
  LB t4, 13(sp)
  ADD a0, t4, zero
  LB t4, 23(sp)
  ADD a1, t4, zero
  LW t4, 28(sp)
  ADD a2, t4, zero
  LB t4, 33(sp)
  ADD a3, t4, zero
  LW t4, 68(sp)
  ADD a4, t4, zero
  LB t4, 73(sp)
  ADD a5, t4, zero
  LB t4, 74(sp)
  ADD a6, t4, zero
  LW t4, 80(sp)
  ADD a7, t4, zero
  XOR s11, t0, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb12
  JAL zero, bb13
bb12:
  ADDI s10, zero, 1
  SUBW t4, t0, s10
  SW t4, 8(sp)
  LA s10, n
  ADDI t0, zero, 4
  SW t0, 0(s10)
  ADDI s10, zero, 1
  JAL zero, bb59
bb13:
  ADD a0, zero, zero
  LD s7, 152(sp)
  LD s4, 160(sp)
  LD s5, 168(sp)
  LD s6, 176(sp)
  LD s1, 184(sp)
  LD s0, 192(sp)
  LD s2, 200(sp)
  LD s3, 208(sp)
  LD s8, 216(sp)
  LD s9, 224(sp)
  LD ra, 232(sp)
  LD s10, 240(sp)
  LD s11, 248(sp)
  ADDI sp, sp, 256
  JALR zero, 0(ra)
bb14:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LB t3, 40(sp)
  ADD t4, t3, zero
  SB t4, 20(sp)
  LB t3, 49(sp)
  ADD t4, t3, zero
  SB t4, 21(sp)
  LB t3, 57(sp)
  ADD t4, t3, zero
  SB t4, 22(sp)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LB t3, 48(sp)
  ADD t4, t3, zero
  SB t4, 32(sp)
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LB t3, 56(sp)
  ADD t4, t3, zero
  SB t4, 72(sp)
  ADD t4, s11, zero
  SB t4, 50(sp)
  ADD t4, s10, zero
  SW t4, 76(sp)
  ADD t4, s9, zero
  SW t4, 44(sp)
  ADD t4, s8, zero
  SW t4, 84(sp)
  LW t4, 44(sp)
  SLTI t1, t4, 10
  BNE t1, zero, bb15
  JAL zero, bb16
bb15:
  CALL getint
  ADD t4, a0, zero
  SW t4, 92(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 88(sp)
  LW t4, 84(sp)
  XOR s3, t4, zero
  SLTU s2, zero, s3
  XORI s3, s2, 1
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb17
  JAL zero, bb62
bb16:
  LW t4, 84(sp)
  XOR s0, t4, zero
  SLTU s1, zero, s0
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb51
  JAL zero, bb52
bb17:
  LA s2, n
  LW s3, 0(s2)
  ADDI s2, zero, 1
  LW t4, 92(sp)
  SUBW s6, t4, s2
  MULW s2, s3, s6
  LW t3, 88(sp)
  ADDW t4, s2, t3
  SW t4, 100(sp)
  ADDI s2, zero, 4
  LW t4, 100(sp)
  MULW s6, t4, s2
  LA s2, array
  ADD s0, s2, s6
  LW t4, 100(sp)
  SW t4, 0(s0)
  LW t4, 92(sp)
  XORI s0, t4, 1
  SLTIU s2, s0, 1
  BNE s2, zero, bb19
  JAL zero, bb20
bb18:
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LB t3, 121(sp)
  ADD t4, t3, zero
  SB t4, 148(sp)
  LB t4, 120(sp)
  ADD s5, t4, zero
  LB t4, 119(sp)
  ADD s4, t4, zero
  LB t4, 118(sp)
  ADD s3, t4, zero
  LB t4, 117(sp)
  ADD s6, t4, zero
  LB t4, 116(sp)
  ADD s2, t4, zero
  LW t4, 128(sp)
  ADD s1, t4, zero
  LW t4, 112(sp)
  ADD s7, t4, zero
  LW t4, 44(sp)
  ADDIW s0, t4, 1
  ADD s8, s7, zero
  ADD s9, s0, zero
  ADD s10, s1, zero
  ADD s11, s2, zero
  ADD t4, s6, zero
  SB t4, 56(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  ADD t4, s3, zero
  SB t4, 48(sp)
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  ADD t4, s4, zero
  SB t4, 57(sp)
  ADD t4, s5, zero
  SB t4, 49(sp)
  LB t3, 148(sp)
  ADD t4, t3, zero
  SB t4, 40(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  JAL zero, bb14
bb19:
  LA s0, array
  SW zero, 0(s0)
  LW t4, 100(sp)
  ADD a0, t4, zero
  CALL findfa
  ADD s0, a0, zero
  ADD a0, zero, zero
  CALL findfa
  ADD s2, a0, zero
  XOR s6, s0, s2
  SLTU s5, zero, s6
  BNE s5, zero, bb53
  JAL zero, bb20
bb20:
  LA s0, n
  LW s2, 0(s0)
  LW t4, 92(sp)
  XOR s0, t4, s2
  SLTIU s2, s0, 1
  BNE s2, zero, bb21
  JAL zero, bb22
bb21:
  ADDI s0, zero, 4
  LW t4, 96(sp)
  MULW s2, t4, s0
  LA s0, array
  ADD s5, s0, s2
  LW t4, 96(sp)
  SW t4, 0(s5)
  LW t4, 100(sp)
  ADD a0, t4, zero
  CALL findfa
  ADD s0, a0, zero
  LW t4, 96(sp)
  ADD a0, t4, zero
  CALL findfa
  ADD s2, a0, zero
  XOR s5, s0, s2
  SLTU s6, zero, s5
  BNE s6, zero, bb54
  JAL zero, bb22
bb22:
  LA s0, n
  LW s2, 0(s0)
  LW t4, 88(sp)
  SLT s0, t4, s2
  BNE s0, zero, bb23
  JAL zero, bb24
bb23:
  LW t4, 100(sp)
  ADDIW s0, t4, 1
  ADDI s2, zero, 4
  MULW s5, s0, s2
  LA s0, array
  ADD s2, s0, s5
  LW s0, 0(s2)
  XORI s2, s0, -1
  SLTU s0, zero, s2
  ADD t4, s0, zero
  SB t4, 104(sp)
  JAL zero, bb25
bb24:
  ADD t4, zero, zero
  SB t4, 104(sp)
  JAL zero, bb25
bb25:
  LB t3, 104(sp)
  ADD t4, t3, zero
  SB t4, 105(sp)
  LB t4, 105(sp)
  BNE t4, zero, bb26
  JAL zero, bb27
bb26:
  LW t4, 100(sp)
  ADDIW s5, t4, 1
  LW t4, 100(sp)
  ADD a0, t4, zero
  CALL findfa
  ADD s6, a0, zero
  ADD a0, s5, zero
  CALL findfa
  ADD s5, a0, zero
  XOR s7, s6, s5
  SLTU s4, zero, s7
  BNE s4, zero, bb55
  JAL zero, bb27
bb27:
  ADDI s4, zero, 1
  LW t4, 88(sp)
  SLT s5, s4, t4
  BNE s5, zero, bb28
  JAL zero, bb29
bb28:
  ADDI s4, zero, 1
  LW t4, 100(sp)
  SUBW s5, t4, s4
  ADDI s4, zero, 4
  MULW s6, s5, s4
  LA s4, array
  ADD s5, s4, s6
  LW s4, 0(s5)
  XORI s5, s4, -1
  SLTU s4, zero, s5
  ADD t4, s4, zero
  SB t4, 106(sp)
  JAL zero, bb30
bb29:
  ADD t4, zero, zero
  SB t4, 106(sp)
  JAL zero, bb30
bb30:
  LB t3, 106(sp)
  ADD t4, t3, zero
  SB t4, 107(sp)
  LB t4, 107(sp)
  BNE t4, zero, bb31
  JAL zero, bb32
bb31:
  ADDI s6, zero, 1
  LW t4, 100(sp)
  SUBW s7, t4, s6
  LW t4, 100(sp)
  ADD a0, t4, zero
  CALL findfa
  ADD s6, a0, zero
  ADD a0, s7, zero
  CALL findfa
  ADD s7, a0, zero
  XOR s1, s6, s7
  SLTU s3, zero, s1
  BNE s3, zero, bb56
  JAL zero, bb32
bb32:
  LA s1, n
  LW s3, 0(s1)
  LW t4, 92(sp)
  SLT s1, t4, s3
  BNE s1, zero, bb33
  JAL zero, bb34
bb33:
  LA s1, n
  LW s3, 0(s1)
  LW t4, 100(sp)
  ADDW s1, t4, s3
  ADDI s3, zero, 4
  MULW s6, s1, s3
  LA s1, array
  ADD s3, s1, s6
  LW s1, 0(s3)
  XORI s3, s1, -1
  SLTU s1, zero, s3
  ADD t4, s1, zero
  SB t4, 108(sp)
  JAL zero, bb35
bb34:
  ADD t4, zero, zero
  SB t4, 108(sp)
  JAL zero, bb35
bb35:
  LB t3, 108(sp)
  ADD t4, t3, zero
  SB t4, 109(sp)
  LB t4, 109(sp)
  BNE t4, zero, bb36
  JAL zero, bb37
bb36:
  LA s6, n
  LW s7, 0(s6)
  LW t4, 100(sp)
  ADDW s6, t4, s7
  LW t4, 100(sp)
  ADD a0, t4, zero
  CALL findfa
  ADD s7, a0, zero
  ADD a0, s6, zero
  CALL findfa
  ADD s6, a0, zero
  XOR s2, s7, s6
  SLTU s0, zero, s2
  BNE s0, zero, bb57
  JAL zero, bb37
bb37:
  ADDI s0, zero, 1
  LW t4, 92(sp)
  SLT s2, s0, t4
  BNE s2, zero, bb38
  JAL zero, bb39
bb38:
  LA s0, n
  LW s2, 0(s0)
  LW t4, 100(sp)
  SUBW s0, t4, s2
  ADDI s2, zero, 4
  MULW s6, s0, s2
  LA s0, array
  ADD s2, s0, s6
  LW s0, 0(s2)
  XORI s2, s0, -1
  SLTU s0, zero, s2
  ADD t4, s0, zero
  SB t4, 110(sp)
  JAL zero, bb40
bb39:
  ADD t4, zero, zero
  SB t4, 110(sp)
  JAL zero, bb40
bb40:
  LB t3, 110(sp)
  ADD t4, t3, zero
  SB t4, 111(sp)
  LB t4, 111(sp)
  BNE t4, zero, bb41
  JAL zero, bb42
bb41:
  LA s6, n
  LW s7, 0(s6)
  LW t4, 100(sp)
  SUBW s6, t4, s7
  LW t4, 100(sp)
  ADD a0, t4, zero
  CALL findfa
  ADD s7, a0, zero
  ADD a0, s6, zero
  CALL findfa
  ADD s6, a0, zero
  XOR s5, s7, s6
  SLTU s4, zero, s5
  BNE s4, zero, bb58
  JAL zero, bb42
bb42:
  LA s4, array
  LW s5, 0(s4)
  XORI s4, s5, -1
  SLTU s5, zero, s4
  BNE s5, zero, bb43
  JAL zero, bb44
bb43:
  ADDI s4, zero, 4
  LW t4, 96(sp)
  MULW s5, t4, s4
  LA s4, array
  ADD s6, s4, s5
  LW s4, 0(s6)
  XORI s5, s4, -1
  SLTU s4, zero, s5
  ADD t4, s4, zero
  SB t4, 132(sp)
  JAL zero, bb45
bb44:
  ADD t4, zero, zero
  SB t4, 132(sp)
  JAL zero, bb45
bb45:
  LB t3, 132(sp)
  ADD t4, t3, zero
  SB t4, 133(sp)
  LB t4, 133(sp)
  BNE t4, zero, bb46
  JAL zero, bb47
bb46:
  ADD a0, zero, zero
  CALL findfa
  ADD s6, a0, zero
  LW t4, 96(sp)
  ADD a0, t4, zero
  CALL findfa
  ADD s7, a0, zero
  XOR s3, s6, s7
  SLTIU s6, s3, 1
  ADD t4, s6, zero
  SB t4, 134(sp)
  JAL zero, bb48
bb47:
  ADD t4, zero, zero
  SB t4, 134(sp)
  JAL zero, bb48
bb48:
  LB t3, 134(sp)
  ADD t4, t3, zero
  SB t4, 135(sp)
  LB t4, 135(sp)
  BNE t4, zero, bb49
  JAL zero, bb63
bb49:
  LW t4, 44(sp)
  ADDIW s7, t4, 1
  ADD a0, s7, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI t4, zero, 1
  SW t4, 140(sp)
  ADD t4, s7, zero
  SW t4, 136(sp)
  JAL zero, bb50
bb50:
  LW t4, 136(sp)
  ADD s7, t4, zero
  LW t4, 140(sp)
  ADD s0, t4, zero
  ADD t4, s0, zero
  SW t4, 112(sp)
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LB t3, 105(sp)
  ADD t4, t3, zero
  SB t4, 116(sp)
  LB t3, 111(sp)
  ADD t4, t3, zero
  SB t4, 117(sp)
  LB t3, 109(sp)
  ADD t4, t3, zero
  SB t4, 118(sp)
  LB t3, 133(sp)
  ADD t4, t3, zero
  SB t4, 119(sp)
  LB t3, 107(sp)
  ADD t4, t3, zero
  SB t4, 120(sp)
  LB t3, 135(sp)
  ADD t4, t3, zero
  SB t4, 121(sp)
  ADD t4, s7, zero
  SW t4, 124(sp)
  JAL zero, bb18
bb51:
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb52
bb52:
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LB t3, 50(sp)
  ADD t4, t3, zero
  SB t4, 74(sp)
  LB t3, 72(sp)
  ADD t4, t3, zero
  SB t4, 73(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LB t3, 32(sp)
  ADD t4, t3, zero
  SB t4, 33(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LB t3, 22(sp)
  ADD t4, t3, zero
  SB t4, 23(sp)
  LB t3, 21(sp)
  ADD t4, t3, zero
  SB t4, 13(sp)
  LB t3, 20(sp)
  ADD t4, t3, zero
  SB t4, 12(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  JAL zero, bb11
bb53:
  ADDI s5, zero, 4
  MULW s6, s0, s5
  LA s0, array
  ADD s5, s0, s6
  SW s2, 0(s5)
  JAL zero, bb20
bb54:
  ADDI s5, zero, 4
  MULW s6, s0, s5
  LA s0, array
  ADD s5, s0, s6
  SW s2, 0(s5)
  JAL zero, bb22
bb55:
  ADDI s4, zero, 4
  MULW s7, s6, s4
  LA s4, array
  ADD s6, s4, s7
  SW s5, 0(s6)
  JAL zero, bb27
bb56:
  ADDI s1, zero, 4
  MULW s3, s6, s1
  LA s1, array
  ADD s6, s1, s3
  SW s7, 0(s6)
  JAL zero, bb32
bb57:
  ADDI s0, zero, 4
  MULW s2, s7, s0
  LA s0, array
  ADD s7, s0, s2
  SW s6, 0(s7)
  JAL zero, bb37
bb58:
  ADDI s4, zero, 4
  MULW s5, s7, s4
  LA s4, array
  ADD s7, s4, s5
  SW s6, 0(s7)
  JAL zero, bb42
bb59:
  ADD t0, s10, zero
  ADDI s11, zero, 17
  SLT s9, s11, t0
  XORI s11, s9, 1
  BNE s11, zero, bb60
  JAL zero, bb61
bb60:
  ADDI s9, zero, 4
  MULW s11, t0, s9
  LA s9, array
  ADD s8, s9, s11
  ADDI s9, zero, -1
  SW s9, 0(s8)
  ADDIW s8, t0, 1
  ADD s10, s8, zero
  JAL zero, bb59
bb61:
  LA s8, n
  LW s9, 0(s8)
  MULW s8, s9, s9
  ADDIW t4, s8, 1
  SW t4, 96(sp)
  ADD s8, zero, zero
  ADD s9, zero, zero
  ADD s10, a7, zero
  ADD s11, a6, zero
  ADD t4, a5, zero
  SB t4, 56(sp)
  ADD t4, a4, zero
  SW t4, 60(sp)
  ADD t4, a3, zero
  SB t4, 48(sp)
  ADD t4, a2, zero
  SW t4, 64(sp)
  ADD t4, a1, zero
  SB t4, 57(sp)
  ADD t4, a0, zero
  SB t4, 49(sp)
  ADD t4, t2, zero
  SB t4, 40(sp)
  ADD t4, t1, zero
  SW t4, 52(sp)
  JAL zero, bb14
bb62:
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LB t3, 50(sp)
  ADD t4, t3, zero
  SB t4, 116(sp)
  LB t3, 72(sp)
  ADD t4, t3, zero
  SB t4, 117(sp)
  LB t3, 32(sp)
  ADD t4, t3, zero
  SB t4, 118(sp)
  LB t3, 22(sp)
  ADD t4, t3, zero
  SB t4, 119(sp)
  LB t3, 21(sp)
  ADD t4, t3, zero
  SB t4, 120(sp)
  LB t3, 20(sp)
  ADD t4, t3, zero
  SB t4, 121(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  JAL zero, bb18
bb63:
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  JAL zero, bb50
