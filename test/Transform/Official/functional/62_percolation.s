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
  ADDI sp, sp, -64
  SD ra, 32(sp)
  SD s2, 40(sp)
  SD s1, 48(sp)
  SD s0, 56(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 24(sp)
  SW s1, 16(sp)
  LW s0, 24(sp)
  ADD a0, s0, zero
  CALL findfa
  ADD s0, a0, zero
  SW s0, 8(sp)
  LW s0, 16(sp)
  ADD a0, s0, zero
  CALL findfa
  ADD s0, a0, zero
  SW s0, 0(sp)
  LW s1, 8(sp)
  XOR s2, s1, s0
  SLTU s0, zero, s2
  BNE s0, zero, bb1
  JAL zero, bb2
bb1:
  LW s0, 8(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, array
  ADD s1, s0, s2
  LW s0, 0(sp)
  SW s0, 0(s1)
  JAL zero, bb2
bb2:
  LD ra, 32(sp)
  LD s2, 40(sp)
  LD s1, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
findfa:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  SW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, array
  ADD s3, s1, s2
  LW s1, 0(s3)
  XOR s2, s1, s0
  SLTIU s0, s2, 1
  BNE s0, zero, bb4
  JAL zero, bb6
bb4:
  LW s0, 0(sp)
  ADD a0, s0, zero
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb5:
bb6:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, array
  ADD s1, s0, s2
  LW s0, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, array
  ADD s2, s0, s3
  LW s0, 0(s2)
  ADD a0, s0, zero
  CALL findfa
  ADD s0, a0, zero
  SW s0, 0(s1)
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, array
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
init:
  ADDI sp, sp, -64
  SD ra, 16(sp)
  SD s3, 24(sp)
  SD s2, 32(sp)
  SD s1, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  SW s0, 8(sp)
  ADDI s0, zero, 1
  SW s0, 0(sp)
  JAL zero, bb8
bb8:
  LW s0, 0(sp)
  LW s1, 8(sp)
  LW s2, 8(sp)
  MULW s3, s1, s2
  ADDIW s1, s3, 1
  SLT s2, s1, s0
  XORI s0, s2, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb9
  JAL zero, bb10
bb9:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, array
  ADD s1, s0, s2
  ADDI s0, zero, 0
  ADDI s2, zero, 1
  SUBW s3, s0, s2
  SW s3, 0(s1)
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb8
bb10:
  LD ra, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -160
  SD s3, 120(sp)
  SD ra, 128(sp)
  SD s2, 136(sp)
  SD s1, 144(sp)
  SD s0, 152(sp)
  ADDI s0, zero, 1
  SW s0, 112(sp)
  JAL zero, bb12
bb12:
  LW s0, 112(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb13
  JAL zero, bb14
bb13:
  LW s0, 112(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 112(sp)
  LA s0, n
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, zero, 10
  SW s0, 104(sp)
  SW zero, 80(sp)
  SW zero, 72(sp)
  LA s0, n
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL init
  LA s0, n
  LW s1, 0(s0)
  LA s0, n
  LW s2, 0(s0)
  MULW s0, s1, s2
  ADDIW s1, s0, 1
  SW s1, 64(sp)
  JAL zero, bb15
bb14:
  ADD a0, zero, zero
  LD s3, 120(sp)
  LD ra, 128(sp)
  LD s2, 136(sp)
  LD s1, 144(sp)
  LD s0, 152(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb15:
  LW s0, 80(sp)
  LW s1, 104(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb16
  JAL zero, bb17
bb16:
  CALL getint
  ADD s0, a0, zero
  SW s0, 96(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 88(sp)
  LW s0, 72(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb18
  JAL zero, bb19
bb17:
  LW s0, 72(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb52
  JAL zero, bb53
bb18:
  LA s0, n
  LW s1, 0(s0)
  LW s0, 96(sp)
  ADDI s2, zero, 1
  SUBW s3, s0, s2
  MULW s0, s1, s3
  LW s1, 88(sp)
  ADDW s2, s0, s1
  SW s2, 56(sp)
  ADDI s0, zero, 4
  MULW s1, s2, s0
  LA s0, array
  ADD s3, s0, s1
  SW s2, 0(s3)
  LW s0, 96(sp)
  XORI s1, s0, 1
  SLTIU s0, s1, 1
  BNE s0, zero, bb20
  JAL zero, bb21
bb19:
  LW s0, 80(sp)
  ADDIW s1, s0, 1
  SW s1, 80(sp)
  JAL zero, bb15
bb20:
  ADDI s0, zero, 4
  MULW s1, zero, s0
  LA s0, array
  ADD s2, s0, s1
  SW zero, 0(s2)
  LW s0, 56(sp)
  ADD a0, s0, zero
  ADD a1, zero, zero
  CALL mmerge
  JAL zero, bb21
bb21:
  LW s0, 96(sp)
  LA s1, n
  LW s2, 0(s1)
  XOR s1, s0, s2
  SLTIU s0, s1, 1
  BNE s0, zero, bb22
  JAL zero, bb23
bb22:
  LW s0, 64(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, array
  ADD s1, s0, s2
  LW s0, 64(sp)
  SW s0, 0(s1)
  LW s0, 56(sp)
  LW s1, 64(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL mmerge
  JAL zero, bb23
bb23:
  LW s0, 88(sp)
  LA s1, n
  LW s2, 0(s1)
  SLT s1, s0, s2
  BNE s1, zero, bb24
  JAL zero, bb25
bb24:
  LW s0, 56(sp)
  ADDIW s1, s0, 1
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, array
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADDI s1, zero, 1
  SUBW s2, zero, s1
  XOR s1, s0, s2
  SLTU s0, zero, s1
  SB s0, 48(sp)
  JAL zero, bb26
bb25:
  SB zero, 48(sp)
  JAL zero, bb26
bb26:
  LB s0, 48(sp)
  BNE s0, zero, bb27
  JAL zero, bb28
bb27:
  LW s0, 56(sp)
  LW s1, 56(sp)
  ADDIW s2, s1, 1
  ADD a0, s0, zero
  ADD a1, s2, zero
  CALL mmerge
  JAL zero, bb28
bb28:
  LW s0, 88(sp)
  ADDI s1, zero, 1
  SLT s2, s1, s0
  BNE s2, zero, bb29
  JAL zero, bb30
bb29:
  LW s0, 56(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  ADDI s0, zero, 4
  MULW s1, s2, s0
  LA s0, array
  ADD s2, s0, s1
  LW s0, 0(s2)
  ADDI s1, zero, 1
  SUBW s2, zero, s1
  XOR s1, s0, s2
  SLTU s0, zero, s1
  SB s0, 40(sp)
  JAL zero, bb31
bb30:
  SB zero, 40(sp)
  JAL zero, bb31
bb31:
  LB s0, 40(sp)
  BNE s0, zero, bb32
  JAL zero, bb33
bb32:
  LW s0, 56(sp)
  LW s1, 56(sp)
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADD a0, s0, zero
  ADD a1, s3, zero
  CALL mmerge
  JAL zero, bb33
bb33:
  LW s0, 96(sp)
  LA s1, n
  LW s2, 0(s1)
  SLT s1, s0, s2
  BNE s1, zero, bb34
  JAL zero, bb35
bb34:
  LW s0, 56(sp)
  LA s1, n
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, array
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADDI s1, zero, 1
  SUBW s2, zero, s1
  XOR s1, s0, s2
  SLTU s0, zero, s1
  SB s0, 32(sp)
  JAL zero, bb36
bb35:
  SB zero, 32(sp)
  JAL zero, bb36
bb36:
  LB s0, 32(sp)
  BNE s0, zero, bb37
  JAL zero, bb38
bb37:
  LW s0, 56(sp)
  LW s1, 56(sp)
  LA s2, n
  LW s3, 0(s2)
  ADDW s2, s1, s3
  ADD a0, s0, zero
  ADD a1, s2, zero
  CALL mmerge
  JAL zero, bb38
bb38:
  LW s0, 96(sp)
  ADDI s1, zero, 1
  SLT s2, s1, s0
  BNE s2, zero, bb39
  JAL zero, bb40
bb39:
  LW s0, 56(sp)
  LA s1, n
  LW s2, 0(s1)
  SUBW s1, s0, s2
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, array
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADDI s1, zero, 1
  SUBW s2, zero, s1
  XOR s1, s0, s2
  SLTU s0, zero, s1
  SB s0, 24(sp)
  JAL zero, bb41
bb40:
  SB zero, 24(sp)
  JAL zero, bb41
bb41:
  LB s0, 24(sp)
  BNE s0, zero, bb42
  JAL zero, bb43
bb42:
  LW s0, 56(sp)
  LW s1, 56(sp)
  LA s2, n
  LW s3, 0(s2)
  SUBW s2, s1, s3
  ADD a0, s0, zero
  ADD a1, s2, zero
  CALL mmerge
  JAL zero, bb43
bb43:
  ADDI s0, zero, 4
  MULW s1, zero, s0
  LA s0, array
  ADD s2, s0, s1
  LW s0, 0(s2)
  ADDI s1, zero, 1
  SUBW s2, zero, s1
  XOR s1, s0, s2
  SLTU s0, zero, s1
  BNE s0, zero, bb44
  JAL zero, bb45
bb44:
  LW s0, 64(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, array
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADDI s1, zero, 1
  SUBW s2, zero, s1
  XOR s1, s0, s2
  SLTU s0, zero, s1
  SB s0, 16(sp)
  JAL zero, bb46
bb45:
  SB zero, 16(sp)
  JAL zero, bb46
bb46:
  LB s0, 16(sp)
  BNE s0, zero, bb47
  JAL zero, bb48
bb47:
  ADD a0, zero, zero
  CALL findfa
  ADD s0, a0, zero
  LW s1, 64(sp)
  ADD a0, s1, zero
  CALL findfa
  ADD s1, a0, zero
  XOR s2, s0, s1
  SLTIU s0, s2, 1
  SB s0, 8(sp)
  JAL zero, bb49
bb48:
  SB zero, 8(sp)
  JAL zero, bb49
bb49:
  LB s0, 8(sp)
  BNE s0, zero, bb50
  JAL zero, bb51
bb50:
  ADDI s0, zero, 1
  SW s0, 72(sp)
  LW s0, 80(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb51
bb51:
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
  JAL zero, bb12
