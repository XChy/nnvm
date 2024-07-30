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
  ADDI s1, zero, 0
  BLT s1, s0, bb7
  # implict jump to bb1
bb1:
  ADD s1, zero, zero
  # implict jump to bb2
bb2:
  BLT zero, s1, bb4
  # implict jump to bb3
bb3:
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
bb4:
  # implict jump to bb5
bb5:
  ADD s5, s1, zero
  ADDI s6, zero, 1
  SUBW s5, s5, s6
  SLLIW s6, s5, 2
  ADDI a0, sp, 0
  ADD s6, a0, s6
  LW s6, 0(s6)
  ADD a0, s6, zero
  CALL putch
  BLT zero, s5, bb6
  JAL zero, bb3
bb6:
  ADD s1, s5, zero
  JAL zero, bb5
bb7:
  ADD s2, zero, zero
  # implict jump to bb8
bb8:
  ADD s3, s2, zero
  ADD s4, s0, zero
  SLLIW s5, s3, 2
  ADDI t5, sp, 0
  ADD s5, t5, s5
  ADDI s6, zero, 10
  REMW s6, s4, s6
  ADDIW s6, s6, 48
  SW s6, 0(s5)
  ADDI s5, zero, 10
  DIVW s4, s4, s5
  ADDIW s3, s3, 1
  BLT zero, s4, bb10
  # implict jump to bb9
bb9:
  ADD s1, s3, zero
  JAL zero, bb2
bb10:
  ADD s0, s4, zero
  ADD s2, s3, zero
  JAL zero, bb8
my_getint:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  # implict jump to bb12
bb12:
  CALL getch
  ADD s0, a0, zero
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  BLT s0, zero, bb22
  # implict jump to bb13
bb13:
  ADDI s1, zero, 9
  SLT s1, s1, s0
  # implict jump to bb14
bb14:
  BNE s1, zero, bb12
  # implict jump to bb15
bb15:
  # implict jump to bb16
bb16:
  ADD s1, s0, zero
  CALL getch
  ADD s2, a0, zero
  ADDI s3, zero, 48
  SUBW s2, s2, s3
  SLT s3, s2, zero
  XORI s3, s3, 1
  BNE s3, zero, bb21
  # implict jump to bb17
bb17:
  ADD s3, zero, zero
  # implict jump to bb18
bb18:
  BNE s3, zero, bb20
  # implict jump to bb19
bb19:
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb20:
  ADDI s3, zero, 10
  MULW s1, s1, s3
  ADDW s1, s1, s2
  ADD s0, s1, zero
  JAL zero, bb16
bb21:
  ADDI s4, zero, 9
  SLT s4, s4, s2
  XORI s4, s4, 1
  ADD s3, s4, zero
  JAL zero, bb18
bb22:
  ADDI s1, zero, 1
  JAL zero, bb14
main:
  ADDI sp, sp, -192
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s7, 72(sp)
  SD s10, 80(sp)
  SD s6, 88(sp)
  SD s9, 96(sp)
  SD s11, 104(sp)
  SD s8, 112(sp)
  # implict jump to bb24
bb24:
  CALL getch
  ADD s1, a0, zero
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  BLT s1, zero, bb58
  # implict jump to bb25
bb25:
  ADDI s2, zero, 9
  SLT s2, s2, s1
  # implict jump to bb26
bb26:
  BNE s2, zero, bb24
  # implict jump to bb27
bb27:
  ADD t4, s1, zero
  SW t4, 0(sp)
  # implict jump to bb28
bb28:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  CALL getch
  ADD s3, a0, zero
  ADDI s4, zero, 48
  SUBW t4, s3, s4
  SW t4, 4(sp)
  LW t4, 4(sp)
  SLT s4, t4, zero
  XORI s4, s4, 1
  BNE s4, zero, bb57
  # implict jump to bb29
bb29:
  ADD s4, zero, zero
  # implict jump to bb30
bb30:
  BNE s4, zero, bb56
  # implict jump to bb31
bb31:
  LW t4, 8(sp)
  BLT zero, t4, bb33
  # implict jump to bb32
bb32:
  ADD a0, zero, zero
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s7, 72(sp)
  LD s10, 80(sp)
  LD s6, 88(sp)
  LD s9, 96(sp)
  LD s11, 104(sp)
  LD s8, 112(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb33:
  LW t4, 8(sp)
  ADD s4, t4, zero
  # implict jump to bb34
bb34:
  ADD s0, s4, zero
  CALL getch
  ADD s5, a0, zero
  ADDI s6, zero, 48
  SUBW s5, s5, s6
  BLT s5, zero, bb55
  # implict jump to bb35
bb35:
  ADDI s6, zero, 9
  SLT s6, s6, s5
  # implict jump to bb36
bb36:
  BNE s6, zero, bb34
  # implict jump to bb37
bb37:
  # implict jump to bb38
bb38:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADDI s8, zero, 48
  SUBW s7, s7, s8
  SLT s8, s7, zero
  XORI s8, s8, 1
  BNE s8, zero, bb54
  # implict jump to bb39
bb39:
  ADD s8, zero, zero
  # implict jump to bb40
bb40:
  BNE s8, zero, bb53
  # implict jump to bb41
bb41:
  BLT zero, s6, bb49
  # implict jump to bb42
bb42:
  ADD s8, zero, zero
  # implict jump to bb43
bb43:
  BLT zero, s8, bb46
  # implict jump to bb44
bb44:
  ADDI a0, zero, 10
  CALL putch
  ADDI s11, zero, 1
  SUBW s11, s0, s11
  BLT zero, s11, bb45
  JAL zero, bb32
bb45:
  ADD s4, s11, zero
  JAL zero, bb34
bb46:
  ADD s3, s8, zero
  # implict jump to bb47
bb47:
  ADD s8, s3, zero
  ADDI s11, zero, 1
  SUBW s8, s8, s11
  SLLIW s11, s8, 2
  ADDI a0, sp, 120
  ADD s11, a0, s11
  LW s11, 0(s11)
  ADD a0, s11, zero
  CALL putch
  BLT zero, s8, bb48
  JAL zero, bb44
bb48:
  ADD s3, s8, zero
  JAL zero, bb47
bb49:
  ADD s9, s6, zero
  ADD s10, zero, zero
  # implict jump to bb50
bb50:
  ADD s11, s10, zero
  ADD s1, s9, zero
  SLLIW s3, s11, 2
  ADDI t5, sp, 120
  ADD s3, t5, s3
  ADDI s2, zero, 10
  REMW s2, s1, s2
  ADDIW s2, s2, 48
  SW s2, 0(s3)
  ADDI s2, zero, 10
  DIVW s1, s1, s2
  ADDIW s2, s11, 1
  BLT zero, s1, bb52
  # implict jump to bb51
bb51:
  ADD s8, s2, zero
  JAL zero, bb43
bb52:
  ADD s9, s1, zero
  ADD s10, s2, zero
  JAL zero, bb50
bb53:
  ADDI s1, zero, 10
  MULW s1, s6, s1
  ADDW s1, s1, s7
  ADD s5, s1, zero
  JAL zero, bb38
bb54:
  ADDI s9, zero, 9
  SLT s9, s9, s7
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb40
bb55:
  ADDI s6, zero, 1
  JAL zero, bb36
bb56:
  ADDI s0, zero, 10
  LW t4, 8(sp)
  MULW s0, t4, s0
  LW t4, 4(sp)
  ADDW s0, s0, t4
  ADD t4, s0, zero
  SW t4, 0(sp)
  JAL zero, bb28
bb57:
  ADDI s5, zero, 9
  LW t4, 4(sp)
  SLT s5, s5, t4
  XORI s5, s5, 1
  ADD s4, s5, zero
  JAL zero, bb30
bb58:
  ADDI s2, zero, 1
  JAL zero, bb26
