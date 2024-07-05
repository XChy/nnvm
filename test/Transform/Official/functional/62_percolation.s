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
  SD s4, 0(sp)
  SD ra, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, array
  ADD s3, s1, s2
  LW s1, 0(s3)
  XOR s2, s1, s0
  SLTIU s1, s2, 1
  BNE s1, zero, bb4
  JAL zero, bb6
bb4:
  ADD a0, s0, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb5:
bb6:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, array
  ADD s3, s1, s2
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, array
  ADD s4, s1, s2
  LW s1, 0(s4)
  ADD a0, s1, zero
  CALL findfa
  ADD s1, a0, zero
  SW s1, 0(s3)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, array
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
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
  ADDI s1, zero, 1
  JAL zero, bb8
bb8:
  MULW s2, s0, s0
  ADDIW s3, s2, 1
  SLT s2, s3, s1
  XORI s3, s2, 1
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb9
  JAL zero, bb10
bb9:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, array
  ADD s4, s2, s3
  ADDI s2, zero, 0
  ADDI s3, zero, 1
  SUBW s5, s2, s3
  SW s5, 0(s4)
  ADDIW s2, s1, 1
  ADD s1, s2, zero
  JAL zero, bb8
bb10:
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
  ADDI sp, sp, -384
  SD s8, 272(sp)
  SD s7, 280(sp)
  SD s2, 288(sp)
  SD s1, 296(sp)
  SD s0, 304(sp)
  SD s10, 312(sp)
  SD s11, 320(sp)
  SD ra, 328(sp)
  SD s3, 336(sp)
  SD s9, 344(sp)
  SD s4, 352(sp)
  SD s5, 360(sp)
  SD s6, 368(sp)
  ADD t4, zero, zero
  SW t4, 168(sp)
  ADD t4, zero, zero
  SB t4, 152(sp)
  ADD t4, zero, zero
  SB t4, 136(sp)
  ADD t4, zero, zero
  SW t4, 120(sp)
  ADD t4, zero, zero
  SB t4, 104(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  ADD t4, zero, zero
  SB t4, 40(sp)
  ADD t4, zero, zero
  SB t4, 32(sp)
  ADD t4, zero, zero
  SB t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  ADDI t4, zero, 1
  SW t4, 8(sp)
  JAL zero, bb12
bb12:
  LW t4, 8(sp)
  XOR s11, t4, zero
  SLTU t0, zero, s11
  BNE t0, zero, bb13
  JAL zero, bb14
bb13:
  ADDI s11, zero, 1
  LW t3, 8(sp)
  SUBW t4, t3, s11
  SW t4, 0(sp)
  LA s11, n
  ADDI t1, zero, 4
  SW t1, 0(s11)
  ADDI a0, zero, 4
  CALL init
  LA s11, n
  LW s10, 0(s11)
  LA s11, n
  LW s9, 0(s11)
  MULW s11, s10, s9
  ADDIW t4, s11, 1
  SW t4, 208(sp)
  ADD t4, zero, zero
  SW t4, 176(sp)
  ADD t4, zero, zero
  SW t4, 200(sp)
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  LB t3, 152(sp)
  ADD t4, t3, zero
  SB t4, 144(sp)
  LB t3, 136(sp)
  ADD t4, t3, zero
  SB t4, 128(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LB t3, 104(sp)
  ADD t4, t3, zero
  SB t4, 56(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LB t3, 40(sp)
  ADD t4, t3, zero
  SB t4, 72(sp)
  LB t3, 32(sp)
  ADD t4, t3, zero
  SB t4, 80(sp)
  LB t3, 24(sp)
  ADD t4, t3, zero
  SB t4, 88(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  JAL zero, bb15
bb14:
  ADD a0, zero, zero
  LD s8, 272(sp)
  LD s7, 280(sp)
  LD s2, 288(sp)
  LD s1, 296(sp)
  LD s0, 304(sp)
  LD s10, 312(sp)
  LD s11, 320(sp)
  LD ra, 328(sp)
  LD s3, 336(sp)
  LD s9, 344(sp)
  LD s4, 352(sp)
  LD s5, 360(sp)
  LD s6, 368(sp)
  ADDI sp, sp, 384
  JALR zero, 0(ra)
bb15:
  LW t4, 200(sp)
  SLTI s4, t4, 10
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb16
  JAL zero, bb17
bb16:
  CALL getint
  ADD t4, a0, zero
  SW t4, 192(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 184(sp)
  LW t4, 176(sp)
  XOR s3, t4, zero
  SLTU s6, zero, s3
  XORI s3, s6, 1
  ADD s6, s3, zero
  XOR s3, s6, zero
  SLTU s6, zero, s3
  BNE s6, zero, bb18
  JAL zero, bb54
bb17:
  LW t4, 176(sp)
  XOR s0, t4, zero
  SLTU s1, zero, s0
  XORI s0, s1, 1
  ADD s1, s0, zero
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb52
  JAL zero, bb53
bb18:
  LA s3, n
  LW s6, 0(s3)
  ADDI s3, zero, 1
  LW t4, 192(sp)
  SUBW s2, t4, s3
  MULW s3, s6, s2
  LW t4, 184(sp)
  ADDW s2, s3, t4
  ADDI s3, zero, 4
  MULW s6, s2, s3
  LA s3, array
  ADD s7, s3, s6
  SW s2, 0(s7)
  LW t4, 192(sp)
  XORI s3, t4, 1
  SLTIU s6, s3, 1
  BNE s6, zero, bb20
  JAL zero, bb21
bb19:
  LW t4, 200(sp)
  ADDIW s9, t4, 1
  ADD t4, s0, zero
  SW t4, 176(sp)
  ADD t4, s9, zero
  SW t4, 200(sp)
  ADD t4, s11, zero
  SW t4, 160(sp)
  LB t3, 264(sp)
  ADD t4, t3, zero
  SB t4, 144(sp)
  LB t3, 216(sp)
  ADD t4, t3, zero
  SB t4, 128(sp)
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LB t3, 224(sp)
  ADD t4, t3, zero
  SB t4, 56(sp)
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LB t3, 232(sp)
  ADD t4, t3, zero
  SB t4, 72(sp)
  LB t3, 240(sp)
  ADD t4, t3, zero
  SB t4, 80(sp)
  LB t3, 248(sp)
  ADD t4, t3, zero
  SB t4, 88(sp)
  LW t3, 256(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  JAL zero, bb15
bb20:
  ADDI s3, zero, 4
  MULW s6, zero, s3
  LA s3, array
  ADD s7, s3, s6
  SW zero, 0(s7)
  ADD a0, s2, zero
  ADD a1, zero, zero
  CALL mmerge
  JAL zero, bb21
bb21:
  LA s3, n
  LW s6, 0(s3)
  LW t4, 192(sp)
  XOR s3, t4, s6
  SLTIU s6, s3, 1
  BNE s6, zero, bb22
  JAL zero, bb23
bb22:
  ADDI s3, zero, 4
  LW t4, 208(sp)
  MULW s6, t4, s3
  LA s3, array
  ADD s7, s3, s6
  LW t4, 208(sp)
  SW t4, 0(s7)
  ADD a0, s2, zero
  LW t4, 208(sp)
  ADD a1, t4, zero
  CALL mmerge
  JAL zero, bb23
bb23:
  LA s3, n
  LW s6, 0(s3)
  LW t4, 184(sp)
  SLT s3, t4, s6
  BNE s3, zero, bb24
  JAL zero, bb25
bb24:
  ADDIW s3, s2, 1
  ADDI s6, zero, 4
  MULW s7, s3, s6
  LA s3, array
  ADD s6, s3, s7
  LW s3, 0(s6)
  ADDI s6, zero, 1
  SUBW s7, zero, s6
  XOR s6, s3, s7
  SLTU s3, zero, s6
  ADD s6, s3, zero
  JAL zero, bb26
bb25:
  ADD s6, zero, zero
  JAL zero, bb26
bb26:
  BNE s6, zero, bb27
  JAL zero, bb28
bb27:
  ADDIW s3, s2, 1
  ADD a0, s2, zero
  ADD a1, s3, zero
  CALL mmerge
  JAL zero, bb28
bb28:
  ADDI s3, zero, 1
  LW t4, 184(sp)
  SLT s7, s3, t4
  BNE s7, zero, bb29
  JAL zero, bb30
bb29:
  ADDI s3, zero, 1
  SUBW s7, s2, s3
  ADDI s3, zero, 4
  MULW s1, s7, s3
  LA s3, array
  ADD s7, s3, s1
  LW s1, 0(s7)
  ADDI s3, zero, 1
  SUBW s7, zero, s3
  XOR s3, s1, s7
  SLTU s1, zero, s3
  ADD s3, s1, zero
  JAL zero, bb31
bb30:
  ADD s3, zero, zero
  JAL zero, bb31
bb31:
  BNE s3, zero, bb32
  JAL zero, bb33
bb32:
  ADDI s1, zero, 1
  SUBW s7, s2, s1
  ADD a0, s2, zero
  ADD a1, s7, zero
  CALL mmerge
  JAL zero, bb33
bb33:
  LA s1, n
  LW s7, 0(s1)
  LW t4, 192(sp)
  SLT s1, t4, s7
  BNE s1, zero, bb34
  JAL zero, bb35
bb34:
  LA s1, n
  LW s7, 0(s1)
  ADDW s1, s2, s7
  ADDI s7, zero, 4
  MULW s8, s1, s7
  LA s1, array
  ADD s7, s1, s8
  LW s1, 0(s7)
  ADDI s7, zero, 1
  SUBW s8, zero, s7
  XOR s7, s1, s8
  SLTU s1, zero, s7
  ADD s7, s1, zero
  JAL zero, bb36
bb35:
  ADD s7, zero, zero
  JAL zero, bb36
bb36:
  BNE s7, zero, bb37
  JAL zero, bb38
bb37:
  LA s1, n
  LW s8, 0(s1)
  ADDW s1, s2, s8
  ADD a0, s2, zero
  ADD a1, s1, zero
  CALL mmerge
  JAL zero, bb38
bb38:
  ADDI s1, zero, 1
  LW t4, 192(sp)
  SLT s8, s1, t4
  BNE s8, zero, bb39
  JAL zero, bb40
bb39:
  LA s1, n
  LW s8, 0(s1)
  SUBW s1, s2, s8
  ADDI s8, zero, 4
  MULW s0, s1, s8
  LA s1, array
  ADD s8, s1, s0
  LW s0, 0(s8)
  ADDI s1, zero, 1
  SUBW s8, zero, s1
  XOR s1, s0, s8
  SLTU s0, zero, s1
  ADD s1, s0, zero
  JAL zero, bb41
bb40:
  ADD s1, zero, zero
  JAL zero, bb41
bb41:
  BNE s1, zero, bb42
  JAL zero, bb43
bb42:
  LA s0, n
  LW s8, 0(s0)
  SUBW s0, s2, s8
  ADD a0, s2, zero
  ADD a1, s0, zero
  CALL mmerge
  JAL zero, bb43
bb43:
  ADDI s0, zero, 4
  MULW s8, zero, s0
  LA s0, array
  ADD s10, s0, s8
  LW s0, 0(s10)
  ADDI s8, zero, 1
  SUBW s10, zero, s8
  XOR s8, s0, s10
  SLTU s0, zero, s8
  BNE s0, zero, bb44
  JAL zero, bb45
bb44:
  ADDI s0, zero, 4
  LW t4, 208(sp)
  MULW s8, t4, s0
  LA s0, array
  ADD s10, s0, s8
  LW s0, 0(s10)
  ADDI s8, zero, 1
  SUBW s10, zero, s8
  XOR s8, s0, s10
  SLTU s0, zero, s8
  ADD s8, s0, zero
  JAL zero, bb46
bb45:
  ADD s8, zero, zero
  JAL zero, bb46
bb46:
  BNE s8, zero, bb47
  JAL zero, bb48
bb47:
  ADD a0, zero, zero
  CALL findfa
  ADD s0, a0, zero
  LW t4, 208(sp)
  ADD a0, t4, zero
  CALL findfa
  ADD s10, a0, zero
  XOR s5, s0, s10
  SLTIU s0, s5, 1
  ADD s5, s0, zero
  JAL zero, bb49
bb48:
  ADD s5, zero, zero
  JAL zero, bb49
bb49:
  BNE s5, zero, bb50
  JAL zero, bb55
bb50:
  LW t4, 200(sp)
  ADDIW s0, t4, 1
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s10, zero, 1
  ADD s4, s0, zero
  JAL zero, bb51
bb51:
  ADD s0, s10, zero
  ADD s11, s2, zero
  ADD t4, s6, zero
  SB t4, 264(sp)
  ADD t4, s1, zero
  SB t4, 216(sp)
  ADD t4, s7, zero
  SB t4, 224(sp)
  ADD t4, s8, zero
  SB t4, 232(sp)
  ADD t4, s3, zero
  SB t4, 240(sp)
  ADD t4, s5, zero
  SB t4, 248(sp)
  ADD t4, s4, zero
  SW t4, 256(sp)
  JAL zero, bb19
bb52:
  ADDI s0, zero, 1
  SUBW s1, zero, s0
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb53
bb53:
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LB t3, 144(sp)
  ADD t4, t3, zero
  SB t4, 152(sp)
  LB t3, 128(sp)
  ADD t4, t3, zero
  SB t4, 136(sp)
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LB t3, 56(sp)
  ADD t4, t3, zero
  SB t4, 104(sp)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LB t3, 72(sp)
  ADD t4, t3, zero
  SB t4, 40(sp)
  LB t3, 80(sp)
  ADD t4, t3, zero
  SB t4, 32(sp)
  LB t3, 88(sp)
  ADD t4, t3, zero
  SB t4, 24(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  JAL zero, bb12
bb54:
  LW t4, 176(sp)
  ADD s0, t4, zero
  LW t4, 160(sp)
  ADD s11, t4, zero
  LB t3, 144(sp)
  ADD t4, t3, zero
  SB t4, 264(sp)
  LB t3, 128(sp)
  ADD t4, t3, zero
  SB t4, 216(sp)
  LB t3, 56(sp)
  ADD t4, t3, zero
  SB t4, 224(sp)
  LB t3, 72(sp)
  ADD t4, t3, zero
  SB t4, 232(sp)
  LB t3, 80(sp)
  ADD t4, t3, zero
  SB t4, 240(sp)
  LB t3, 88(sp)
  ADD t4, t3, zero
  SB t4, 248(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 256(sp)
  JAL zero, bb19
bb55:
  LW t4, 176(sp)
  ADD s10, t4, zero
  LW t4, 96(sp)
  ADD s4, t4, zero
  JAL zero, bb51
