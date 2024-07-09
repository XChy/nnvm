.global my_putint
.global my_getint
.global main
.section .bss

.section .data
ascii_0:
.word 0x00000030
.section .text
my_putint:
  ADDI sp, sp, -128
  SD ra, 64(sp)
  SD s4, 72(sp)
  SD s3, 80(sp)
  SD s2, 88(sp)
  SD s6, 96(sp)
  SD s1, 104(sp)
  SD s5, 112(sp)
  SD s0, 120(sp)
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb1
bb1:
  ADD s0, s2, zero
  ADD s3, s1, zero
  SLT s4, zero, s0
  BNE s4, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADDI t5, sp, 0
  ADD s4, t5, s5
  ADDI s5, zero, 10
  REMW s6, s0, s5
  ADDIW s5, s6, 48
  SW s5, 0(s4)
  ADDI s4, zero, 10
  DIVW s5, s0, s4
  ADDIW s0, s3, 1
  ADD s1, s0, zero
  ADD s2, s5, zero
  JAL zero, bb1
bb3:
  ADD s0, s3, zero
  JAL zero, bb4
bb4:
  ADD s1, s0, zero
  SLT s2, zero, s1
  BNE s2, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADDI s1, zero, 4
  MULW s2, s3, s1
  ADDI t6, sp, 0
  ADD s1, t6, s2
  LW s2, 0(s1)
  ADD a0, s2, zero
  CALL putch
  ADD s0, s3, zero
  JAL zero, bb4
bb6:
  LD ra, 64(sp)
  LD s4, 72(sp)
  LD s3, 80(sp)
  LD s2, 88(sp)
  LD s6, 96(sp)
  LD s1, 104(sp)
  LD s5, 112(sp)
  LD s0, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
my_getint:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s7, 48(sp)
  SD s5, 56(sp)
  SD s0, 64(sp)
  JAL zero, bb8
bb8:
  CALL getch
  ADD s0, a0, zero
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  SLT s0, s2, zero
  BNE s0, zero, bb10
  JAL zero, bb11
bb9:
  ADD s1, s2, zero
  JAL zero, bb15
bb10:
  ADDI s0, zero, 1
  JAL zero, bb12
bb11:
  ADDI s1, zero, 9
  SLT s3, s1, s2
  ADD s0, s3, zero
  JAL zero, bb12
bb12:
  ADD s1, s0, zero
  BNE s1, zero, bb13
  JAL zero, bb14
bb13:
  JAL zero, bb8
bb14:
  JAL zero, bb9
bb15:
  ADD s3, s1, zero
  CALL getch
  ADD s4, a0, zero
  ADDI s5, zero, 48
  SUBW s6, s4, s5
  SLT s4, s6, zero
  XORI s5, s4, 1
  BNE s5, zero, bb17
  JAL zero, bb18
bb16:
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s7, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb17:
  ADDI s4, zero, 9
  SLT s5, s4, s6
  XORI s4, s5, 1
  ADD s5, s4, zero
  JAL zero, bb19
bb18:
  ADD s5, zero, zero
  JAL zero, bb19
bb19:
  ADD s4, s5, zero
  BNE s4, zero, bb20
  JAL zero, bb22
bb20:
  ADDI s4, zero, 10
  MULW s7, s3, s4
  ADDW s4, s7, s6
  JAL zero, bb21
bb21:
  ADD s1, s4, zero
  JAL zero, bb15
bb22:
  JAL zero, bb16
main:
  ADDI sp, sp, -224
  SD s11, 120(sp)
  SD s0, 128(sp)
  SD s4, 136(sp)
  SD s10, 144(sp)
  SD s1, 152(sp)
  SD s6, 160(sp)
  SD s7, 168(sp)
  SD ra, 176(sp)
  SD s2, 184(sp)
  SD s8, 192(sp)
  SD s3, 200(sp)
  SD s5, 208(sp)
  SD s9, 216(sp)
  JAL zero, bb35
bb24:
  LW t4, 88(sp)
  ADD s1, t4, zero
  JAL zero, bb25
bb25:
  ADD t4, s1, zero
  SW t4, 112(sp)
  LW t4, 112(sp)
  SLT s7, zero, t4
  BNE s7, zero, bb26
  JAL zero, bb27
bb26:
  JAL zero, bb50
bb27:
  ADD a0, zero, zero
  LD s11, 120(sp)
  LD s0, 128(sp)
  LD s4, 136(sp)
  LD s10, 144(sp)
  LD s1, 152(sp)
  LD s6, 160(sp)
  LD s7, 168(sp)
  LD ra, 176(sp)
  LD s2, 184(sp)
  LD s8, 192(sp)
  LD s3, 200(sp)
  LD s5, 208(sp)
  LD s9, 216(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb28:
  ADD s2, zero, zero
  ADD s6, s10, zero
  JAL zero, bb29
bb29:
  ADD s8, s6, zero
  ADD s3, s2, zero
  SLT s5, zero, s8
  BNE s5, zero, bb30
  JAL zero, bb31
bb30:
  ADDI s5, zero, 4
  MULW s9, s3, s5
  ADDI t5, sp, 0
  ADD s5, t5, s9
  ADDI s9, zero, 10
  REMW s4, s8, s9
  ADDIW s9, s4, 48
  SW s9, 0(s5)
  ADDI s4, zero, 10
  DIVW s5, s8, s4
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  ADD s6, s5, zero
  JAL zero, bb29
bb31:
  ADD s2, s3, zero
  JAL zero, bb32
bb32:
  ADD s3, s2, zero
  SLT s4, zero, s3
  BNE s4, zero, bb33
  JAL zero, bb34
bb33:
  ADDI s4, zero, 1
  SUBW s5, s3, s4
  ADDI s3, zero, 4
  MULW s4, s5, s3
  ADDI t6, sp, 0
  ADD s3, t6, s4
  LW s4, 0(s3)
  ADD a0, s4, zero
  CALL putch
  ADD s2, s5, zero
  JAL zero, bb32
bb34:
  ADDI a0, zero, 10
  CALL putch
  ADDI s2, zero, 1
  LW t4, 112(sp)
  SUBW s3, t4, s2
  ADD s1, s3, zero
  JAL zero, bb25
bb35:
  JAL zero, bb36
bb36:
  CALL getch
  ADD s0, a0, zero
  ADDI s1, zero, 48
  SUBW t4, s0, s1
  SW t4, 64(sp)
  LW t4, 64(sp)
  SLT s0, t4, zero
  BNE s0, zero, bb38
  JAL zero, bb39
bb37:
  LW t4, 64(sp)
  ADD s1, t4, zero
  JAL zero, bb43
bb38:
  ADDI t4, zero, 1
  SB t4, 72(sp)
  JAL zero, bb40
bb39:
  ADDI s0, zero, 9
  LW t4, 64(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 72(sp)
  JAL zero, bb40
bb40:
  LB t4, 72(sp)
  ADD s1, t4, zero
  BNE s1, zero, bb41
  JAL zero, bb42
bb41:
  JAL zero, bb36
bb42:
  JAL zero, bb37
bb43:
  ADD t4, s1, zero
  SW t4, 88(sp)
  CALL getch
  ADD s4, a0, zero
  ADDI s5, zero, 48
  SUBW t4, s4, s5
  SW t4, 80(sp)
  LW t4, 80(sp)
  SLT s4, t4, zero
  XORI s5, s4, 1
  BNE s5, zero, bb44
  JAL zero, bb45
bb44:
  ADDI s4, zero, 9
  LW t4, 80(sp)
  SLT s5, s4, t4
  XORI s4, s5, 1
  ADD t4, s4, zero
  SB t4, 96(sp)
  JAL zero, bb46
bb45:
  ADD t4, zero, zero
  SB t4, 96(sp)
  JAL zero, bb46
bb46:
  LB t4, 96(sp)
  ADD s4, t4, zero
  BNE s4, zero, bb47
  JAL zero, bb49
bb47:
  ADDI s4, zero, 10
  LW t4, 88(sp)
  MULW s7, t4, s4
  LW t4, 80(sp)
  ADDW s4, s7, t4
  JAL zero, bb48
bb48:
  ADD s1, s4, zero
  JAL zero, bb43
bb49:
  JAL zero, bb24
bb50:
  JAL zero, bb51
bb51:
  CALL getch
  ADD s7, a0, zero
  ADDI s8, zero, 48
  SUBW t4, s7, s8
  SW t4, 104(sp)
  LW t4, 104(sp)
  SLT s7, t4, zero
  BNE s7, zero, bb53
  JAL zero, bb54
bb52:
  LW t4, 104(sp)
  ADD s8, t4, zero
  JAL zero, bb58
bb53:
  ADDI s7, zero, 1
  JAL zero, bb55
bb54:
  ADDI s0, zero, 9
  LW t4, 104(sp)
  SLT s1, s0, t4
  ADD s7, s1, zero
  JAL zero, bb55
bb55:
  ADD s8, s7, zero
  BNE s8, zero, bb56
  JAL zero, bb57
bb56:
  JAL zero, bb51
bb57:
  JAL zero, bb52
bb58:
  ADD s10, s8, zero
  CALL getch
  ADD s11, a0, zero
  ADDI s2, zero, 48
  SUBW s0, s11, s2
  SLT s2, s0, zero
  XORI s11, s2, 1
  BNE s11, zero, bb59
  JAL zero, bb60
bb59:
  ADDI s2, zero, 9
  SLT s11, s2, s0
  XORI s2, s11, 1
  ADD s11, s2, zero
  JAL zero, bb61
bb60:
  ADD s11, zero, zero
  JAL zero, bb61
bb61:
  ADD s2, s11, zero
  BNE s2, zero, bb62
  JAL zero, bb64
bb62:
  ADDI s2, zero, 10
  MULW s6, s10, s2
  ADDW s2, s6, s0
  JAL zero, bb63
bb63:
  ADD s8, s2, zero
  JAL zero, bb58
bb64:
  JAL zero, bb28
