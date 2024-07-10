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
  # implict jump to bb1
bb1:
  ADD s0, s2, zero
  ADD s3, s1, zero
  SLT s4, zero, s0
  BNE s4, zero, bb6
  # implict jump to bb2
bb2:
  ADD s0, s3, zero
  # implict jump to bb3
bb3:
  ADD s1, s0, zero
  SLT s2, zero, s1
  BNE s2, zero, bb5
  # implict jump to bb4
bb4:
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
bb5:
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  SLLIW s1, s3, 2
  ADDI t5, sp, 0
  ADD s2, t5, s1
  LW s1, 0(s2)
  ADD a0, s1, zero
  CALL putch
  ADD s0, s3, zero
  JAL zero, bb3
bb6:
  SLLIW s4, s3, 2
  ADDI t5, sp, 0
  ADD s5, t5, s4
  ADDI s4, zero, 10
  REMW s6, s0, s4
  ADDIW s4, s6, 48
  SW s4, 0(s5)
  ADDI s4, zero, 10
  DIVW s5, s0, s4
  ADDIW s0, s3, 1
  ADD s1, s0, zero
  ADD s2, s5, zero
  JAL zero, bb1
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
  # implict jump to bb8
bb8:
  CALL getch
  ADD s0, a0, zero
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  SLT s0, s2, zero
  BNE s0, zero, bb18
  # implict jump to bb9
bb9:
  ADDI s1, zero, 9
  SLT s3, s1, s2
  ADD s0, s3, zero
  # implict jump to bb10
bb10:
  ADD s1, s0, zero
  BNE s1, zero, bb8
  # implict jump to bb11
bb11:
  ADD s1, s2, zero
  # implict jump to bb12
bb12:
  ADD s3, s1, zero
  CALL getch
  ADD s4, a0, zero
  ADDI s5, zero, 48
  SUBW s6, s4, s5
  SLT s4, s6, zero
  XORI s5, s4, 1
  BNE s5, zero, bb17
  # implict jump to bb13
bb13:
  ADD s5, zero, zero
  # implict jump to bb14
bb14:
  ADD s4, s5, zero
  BNE s4, zero, bb16
  # implict jump to bb15
bb15:
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
bb16:
  ADDI s4, zero, 10
  MULW s7, s3, s4
  ADDW s4, s7, s6
  ADD s1, s4, zero
  JAL zero, bb12
bb17:
  ADDI s4, zero, 9
  SLT s5, s4, s6
  XORI s4, s5, 1
  ADD s5, s4, zero
  JAL zero, bb14
bb18:
  ADDI s0, zero, 1
  JAL zero, bb10
main:
  ADDI sp, sp, -208
  SD s11, 96(sp)
  SD s10, 104(sp)
  SD s0, 112(sp)
  SD s1, 120(sp)
  SD s6, 128(sp)
  SD s7, 136(sp)
  SD ra, 144(sp)
  SD s8, 152(sp)
  SD s3, 160(sp)
  SD s2, 168(sp)
  SD s5, 176(sp)
  SD s9, 184(sp)
  SD s4, 192(sp)
  # implict jump to bb20
bb20:
  CALL getch
  ADD s0, a0, zero
  ADDI s1, zero, 48
  SUBW t4, s0, s1
  SW t4, 64(sp)
  LW t4, 64(sp)
  SLT s0, t4, zero
  BNE s0, zero, bb49
  # implict jump to bb21
bb21:
  ADDI s0, zero, 9
  LW t4, 64(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 68(sp)
  # implict jump to bb22
bb22:
  LB t4, 68(sp)
  ADD s1, t4, zero
  BNE s1, zero, bb20
  # implict jump to bb23
bb23:
  LW t4, 64(sp)
  ADD s1, t4, zero
  # implict jump to bb24
bb24:
  ADD t4, s1, zero
  SW t4, 76(sp)
  CALL getch
  ADD s4, a0, zero
  ADDI s5, zero, 48
  SUBW t4, s4, s5
  SW t4, 72(sp)
  LW t4, 72(sp)
  SLT s4, t4, zero
  XORI s5, s4, 1
  BNE s5, zero, bb48
  # implict jump to bb25
bb25:
  ADD t4, zero, zero
  SB t4, 80(sp)
  # implict jump to bb26
bb26:
  LB t4, 80(sp)
  ADD s4, t4, zero
  BNE s4, zero, bb47
  # implict jump to bb27
bb27:
  LW t4, 76(sp)
  ADD s1, t4, zero
  # implict jump to bb28
bb28:
  ADD t4, s1, zero
  SW t4, 88(sp)
  LW t4, 88(sp)
  SLT s7, zero, t4
  BNE s7, zero, bb30
  # implict jump to bb29
bb29:
  ADD a0, zero, zero
  LD s11, 96(sp)
  LD s10, 104(sp)
  LD s0, 112(sp)
  LD s1, 120(sp)
  LD s6, 128(sp)
  LD s7, 136(sp)
  LD ra, 144(sp)
  LD s8, 152(sp)
  LD s3, 160(sp)
  LD s2, 168(sp)
  LD s5, 176(sp)
  LD s9, 184(sp)
  LD s4, 192(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
bb30:
  CALL getch
  ADD s7, a0, zero
  ADDI s8, zero, 48
  SUBW t4, s7, s8
  SW t4, 84(sp)
  LW t4, 84(sp)
  SLT s7, t4, zero
  BNE s7, zero, bb46
  # implict jump to bb31
bb31:
  ADDI s0, zero, 9
  LW t4, 84(sp)
  SLT s1, s0, t4
  ADD s7, s1, zero
  # implict jump to bb32
bb32:
  ADD s8, s7, zero
  BNE s8, zero, bb30
  # implict jump to bb33
bb33:
  LW t4, 84(sp)
  ADD s8, t4, zero
  # implict jump to bb34
bb34:
  ADD s10, s8, zero
  CALL getch
  ADD s11, a0, zero
  ADDI s2, zero, 48
  SUBW s0, s11, s2
  SLT s2, s0, zero
  XORI s11, s2, 1
  BNE s11, zero, bb45
  # implict jump to bb35
bb35:
  ADD s11, zero, zero
  # implict jump to bb36
bb36:
  ADD s2, s11, zero
  BNE s2, zero, bb44
  # implict jump to bb37
bb37:
  ADD s2, zero, zero
  ADD s6, s10, zero
  # implict jump to bb38
bb38:
  ADD s8, s6, zero
  ADD s3, s2, zero
  SLT s5, zero, s8
  BNE s5, zero, bb43
  # implict jump to bb39
bb39:
  ADD s2, s3, zero
  # implict jump to bb40
bb40:
  ADD s3, s2, zero
  SLT s4, zero, s3
  BNE s4, zero, bb42
  # implict jump to bb41
bb41:
  ADDI a0, zero, 10
  CALL putch
  ADDI s2, zero, 1
  LW t4, 88(sp)
  SUBW s3, t4, s2
  ADD s1, s3, zero
  JAL zero, bb28
bb42:
  ADDI s4, zero, 1
  SUBW s5, s3, s4
  SLLIW s3, s5, 2
  ADDI t5, sp, 0
  ADD s4, t5, s3
  LW s3, 0(s4)
  ADD a0, s3, zero
  CALL putch
  ADD s2, s5, zero
  JAL zero, bb40
bb43:
  SLLIW s5, s3, 2
  ADDI t5, sp, 0
  ADD s9, t5, s5
  ADDI s5, zero, 10
  REMW s4, s8, s5
  ADDIW s5, s4, 48
  SW s5, 0(s9)
  ADDI s4, zero, 10
  DIVW s5, s8, s4
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  ADD s6, s5, zero
  JAL zero, bb38
bb44:
  ADDI s2, zero, 10
  MULW s6, s10, s2
  ADDW s2, s6, s0
  ADD s8, s2, zero
  JAL zero, bb34
bb45:
  ADDI s2, zero, 9
  SLT s11, s2, s0
  XORI s2, s11, 1
  ADD s11, s2, zero
  JAL zero, bb36
bb46:
  ADDI s7, zero, 1
  JAL zero, bb32
bb47:
  ADDI s4, zero, 10
  LW t4, 76(sp)
  MULW s7, t4, s4
  LW t4, 72(sp)
  ADDW s4, s7, t4
  ADD s1, s4, zero
  JAL zero, bb24
bb48:
  ADDI s4, zero, 9
  LW t4, 72(sp)
  SLT s5, s4, t4
  XORI s4, s5, 1
  ADD t4, s4, zero
  SB t4, 80(sp)
  JAL zero, bb26
bb49:
  ADDI t4, zero, 1
  SB t4, 68(sp)
  JAL zero, bb22
