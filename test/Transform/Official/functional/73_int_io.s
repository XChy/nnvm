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
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  SD s4, 104(sp)
  SD s5, 112(sp)
  SD s6, 120(sp)
  ADD s0, a0, zero
  ADD s1, zero, zero
  # implict jump to bb1
bb1:
  ADD s2, s0, zero
  ADD s3, s1, zero
  SLT s4, zero, s2
  BNE s4, zero, bb6
  # implict jump to bb2
bb2:
  ADD s4, s3, zero
  # implict jump to bb3
bb3:
  ADD s5, s4, zero
  SLT s6, zero, s5
  BNE s6, zero, bb5
  # implict jump to bb4
bb4:
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  LD s5, 112(sp)
  LD s6, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb5:
  ADDI s6, zero, 1
  SUBW s5, s5, s6
  SLLIW s6, s5, 2
  ADDI a0, sp, 0
  ADD s6, a0, s6
  LW s6, 0(s6)
  ADD a0, s6, zero
  CALL putch
  ADD s4, s5, zero
  JAL zero, bb3
bb6:
  SLLIW s4, s3, 2
  ADDI t5, sp, 0
  ADD s4, t5, s4
  ADDI s5, zero, 10
  REMW s5, s2, s5
  ADDIW s5, s5, 48
  SW s5, 0(s4)
  ADDI s4, zero, 10
  DIVW s2, s2, s4
  ADDIW s3, s3, 1
  ADD s1, s3, zero
  ADD s0, s2, zero
  JAL zero, bb1
my_getint:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  # implict jump to bb8
bb8:
  CALL getch
  ADD s0, a0, zero
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  SLT s1, s0, zero
  BNE s1, zero, bb18
  # implict jump to bb9
bb9:
  ADDI s1, zero, 9
  SLT s1, s1, s0
  # implict jump to bb10
bb10:
  BNE s1, zero, bb8
  # implict jump to bb11
bb11:
  # implict jump to bb12
bb12:
  ADD s1, s0, zero
  CALL getch
  ADD s2, a0, zero
  ADDI s3, zero, 48
  SUBW s2, s2, s3
  SLT s3, s2, zero
  XORI s3, s3, 1
  BNE s3, zero, bb17
  # implict jump to bb13
bb13:
  ADD s3, zero, zero
  # implict jump to bb14
bb14:
  BNE s3, zero, bb16
  # implict jump to bb15
bb15:
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb16:
  ADDI s3, zero, 10
  MULW s1, s1, s3
  ADDW s1, s1, s2
  ADD s0, s1, zero
  JAL zero, bb12
bb17:
  ADDI s4, zero, 9
  SLT s4, s4, s2
  XORI s4, s4, 1
  ADD s3, s4, zero
  JAL zero, bb14
bb18:
  ADDI s1, zero, 1
  JAL zero, bb10
main:
  ADDI sp, sp, -192
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s10, 88(sp)
  SD s8, 96(sp)
  SD s9, 104(sp)
  SD s11, 112(sp)
  # implict jump to bb20
bb20:
  CALL getch
  ADD s0, a0, zero
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  SLT s1, s0, zero
  BNE s1, zero, bb49
  # implict jump to bb21
bb21:
  ADDI s1, zero, 9
  SLT s1, s1, s0
  # implict jump to bb22
bb22:
  BNE s1, zero, bb20
  # implict jump to bb23
bb23:
  ADD t4, s0, zero
  SW t4, 0(sp)
  # implict jump to bb24
bb24:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  CALL getch
  ADD s2, a0, zero
  ADDI s3, zero, 48
  SUBW t4, s2, s3
  SW t4, 4(sp)
  LW t4, 4(sp)
  SLT s3, t4, zero
  XORI s3, s3, 1
  BNE s3, zero, bb48
  # implict jump to bb25
bb25:
  ADD s3, zero, zero
  # implict jump to bb26
bb26:
  BNE s3, zero, bb47
  # implict jump to bb27
bb27:
  LW t4, 8(sp)
  ADD s3, t4, zero
  # implict jump to bb28
bb28:
  ADD s4, s3, zero
  SLT s5, zero, s4
  BNE s5, zero, bb30
  # implict jump to bb29
bb29:
  ADD a0, zero, zero
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s10, 88(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  LD s11, 112(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb30:
  CALL getch
  ADD s5, a0, zero
  ADDI s6, zero, 48
  SUBW s5, s5, s6
  SLT s6, s5, zero
  BNE s6, zero, bb46
  # implict jump to bb31
bb31:
  ADDI s6, zero, 9
  SLT s6, s6, s5
  # implict jump to bb32
bb32:
  BNE s6, zero, bb30
  # implict jump to bb33
bb33:
  # implict jump to bb34
bb34:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADDI s8, zero, 48
  SUBW s7, s7, s8
  SLT s8, s7, zero
  XORI s8, s8, 1
  BNE s8, zero, bb45
  # implict jump to bb35
bb35:
  ADD s8, zero, zero
  # implict jump to bb36
bb36:
  BNE s8, zero, bb44
  # implict jump to bb37
bb37:
  ADD s8, zero, zero
  ADD s9, s6, zero
  # implict jump to bb38
bb38:
  ADD s10, s9, zero
  ADD s11, s8, zero
  SLT s0, zero, s10
  BNE s0, zero, bb43
  # implict jump to bb39
bb39:
  ADD s0, s11, zero
  # implict jump to bb40
bb40:
  ADD s2, s0, zero
  SLT s1, zero, s2
  BNE s1, zero, bb42
  # implict jump to bb41
bb41:
  ADDI a0, zero, 10
  CALL putch
  ADDI s1, zero, 1
  SUBW s1, s4, s1
  ADD s3, s1, zero
  JAL zero, bb28
bb42:
  ADDI s1, zero, 1
  SUBW s1, s2, s1
  SLLIW s2, s1, 2
  ADDI a0, sp, 120
  ADD s2, a0, s2
  LW s2, 0(s2)
  ADD a0, s2, zero
  CALL putch
  ADD s0, s1, zero
  JAL zero, bb40
bb43:
  SLLIW s0, s11, 2
  ADDI t5, sp, 120
  ADD s0, t5, s0
  ADDI s1, zero, 10
  REMW s1, s10, s1
  ADDIW s1, s1, 48
  SW s1, 0(s0)
  ADDI s0, zero, 10
  DIVW s0, s10, s0
  ADDIW s1, s11, 1
  ADD s8, s1, zero
  ADD s9, s0, zero
  JAL zero, bb38
bb44:
  ADDI s0, zero, 10
  MULW s0, s6, s0
  ADDW s0, s0, s7
  ADD s5, s0, zero
  JAL zero, bb34
bb45:
  ADDI s9, zero, 9
  SLT s9, s9, s7
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb36
bb46:
  ADDI s6, zero, 1
  JAL zero, bb32
bb47:
  ADDI s0, zero, 10
  LW t4, 8(sp)
  MULW s0, t4, s0
  LW t4, 4(sp)
  ADDW s0, s0, t4
  ADD t4, s0, zero
  SW t4, 0(sp)
  JAL zero, bb24
bb48:
  ADDI s4, zero, 9
  LW t4, 4(sp)
  SLT s4, s4, t4
  XORI s4, s4, 1
  ADD s3, s4, zero
  JAL zero, bb26
bb49:
  ADDI s1, zero, 1
  JAL zero, bb22
