.global my_putint
.global my_getint
.global main
.section .bss

.section .data
ascii_0:
.word 0x00000030
.section .text
my_putint:
  ADDI sp, sp, -160
  SD ra, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  SD s4, 104(sp)
  SD s5, 112(sp)
  SD s6, 120(sp)
  SD s7, 128(sp)
  SD s8, 136(sp)
  SD s9, 144(sp)
  ADD s3, a0, zero
  ADDI s4, zero, 0
  BLT s4, s3, bb8
  # implict jump to bb1
bb1:
  ADD s4, zero, zero
  # implict jump to bb2
bb2:
  ADDI s6, zero, 0
  BLT s6, s4, bb4
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
  LD s7, 128(sp)
  LD s8, 136(sp)
  LD s9, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb4:
  # implict jump to bb5
bb5:
  ADD s6, s4, zero
  ADDI s7, zero, 1
  SUBW s1, s6, s7
  SLLIW s6, s1, 2
  ADDI a0, sp, 0
  ADD s6, a0, s6
  LW s6, 0(s6)
  ADD a0, s6, zero
  CALL putch
  # implict jump to bb6
bb6:
  ADDI s6, zero, 0
  BLT s6, s1, bb7
  JAL zero, bb3
bb7:
  ADD s4, s1, zero
  JAL zero, bb5
bb8:
  ADD s5, zero, zero
  # implict jump to bb9
bb9:
  ADD s6, s5, zero
  ADD s7, s3, zero
  SLLIW s8, s6, 2
  ADDI t5, sp, 0
  ADD s8, t5, s8
  ADDI s9, zero, 10
  REMW s9, s7, s9
  ADDIW s9, s9, 48
  SW s9, 0(s8)
  ADDI s8, zero, 10
  DIVW s0, s7, s8
  ADDIW s2, s6, 1
  # implict jump to bb10
bb10:
  ADDI s6, zero, 0
  BLT s6, s0, bb12
  # implict jump to bb11
bb11:
  ADD s4, s2, zero
  JAL zero, bb2
bb12:
  ADD s3, s0, zero
  ADD s5, s2, zero
  JAL zero, bb9
my_getint:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  # implict jump to bb14
bb14:
  CALL getch
  ADD s0, a0, zero
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  BLT s0, zero, bb24
  # implict jump to bb15
bb15:
  ADDI s1, zero, 9
  SLT s1, s1, s0
  # implict jump to bb16
bb16:
  BNE s1, zero, bb14
  # implict jump to bb17
bb17:
  # implict jump to bb18
bb18:
  ADD s1, s0, zero
  CALL getch
  ADD s2, a0, zero
  ADDI s3, zero, 48
  SUBW s2, s2, s3
  SLT s3, s2, zero
  XORI s3, s3, 1
  BNE s3, zero, bb23
  # implict jump to bb19
bb19:
  ADD s3, zero, zero
  # implict jump to bb20
bb20:
  BNE s3, zero, bb22
  # implict jump to bb21
bb21:
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb22:
  ADDI s3, zero, 10
  MULW s1, s1, s3
  ADDW s1, s1, s2
  ADD s0, s1, zero
  JAL zero, bb18
bb23:
  ADDI s4, zero, 9
  SLT s4, s4, s2
  XORI s4, s4, 1
  ADD s3, s4, zero
  JAL zero, bb20
bb24:
  ADDI s1, zero, 1
  JAL zero, bb16
main:
  ADDI sp, sp, -208
  SD ra, 32(sp)
  SD s0, 40(sp)
  SD s1, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s5, 72(sp)
  SD s6, 80(sp)
  SD s7, 88(sp)
  SD s4, 96(sp)
  SD s8, 104(sp)
  SD s10, 112(sp)
  SD s11, 120(sp)
  SD s9, 128(sp)
  # implict jump to bb26
bb26:
  CALL getch
  ADD s6, a0, zero
  ADDI s7, zero, 48
  SUBW s6, s6, s7
  BLT s6, zero, bb63
  # implict jump to bb27
bb27:
  ADDI s7, zero, 9
  SLT s7, s7, s6
  # implict jump to bb28
bb28:
  BNE s7, zero, bb26
  # implict jump to bb29
bb29:
  ADD t4, s6, zero
  SW t4, 20(sp)
  # implict jump to bb30
bb30:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  CALL getch
  ADD s8, a0, zero
  ADDI s9, zero, 48
  SUBW t4, s8, s9
  SW t4, 24(sp)
  LW t4, 24(sp)
  SLT s9, t4, zero
  XORI s9, s9, 1
  BNE s9, zero, bb62
  # implict jump to bb31
bb31:
  ADD s9, zero, zero
  # implict jump to bb32
bb32:
  BNE s9, zero, bb61
  # implict jump to bb33
bb33:
  LW t4, 16(sp)
  BLT zero, t4, bb35
  # implict jump to bb34
bb34:
  ADD a0, zero, zero
  LD ra, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s5, 72(sp)
  LD s6, 80(sp)
  LD s7, 88(sp)
  LD s4, 96(sp)
  LD s8, 104(sp)
  LD s10, 112(sp)
  LD s11, 120(sp)
  LD s9, 128(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
bb35:
  LW t4, 16(sp)
  ADD s0, t4, zero
  # implict jump to bb36
bb36:
  ADD t4, s0, zero
  SW t4, 12(sp)
  CALL getch
  ADD s9, a0, zero
  ADDI s10, zero, 48
  SUBW s9, s9, s10
  BLT s9, zero, bb60
  # implict jump to bb37
bb37:
  ADDI s10, zero, 9
  SLT s10, s10, s9
  # implict jump to bb38
bb38:
  BNE s10, zero, bb36
  # implict jump to bb39
bb39:
  ADD t4, s9, zero
  SW t4, 8(sp)
  # implict jump to bb40
bb40:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  CALL getch
  ADD s11, a0, zero
  ADDI s6, zero, 48
  SUBW t4, s11, s6
  SW t4, 4(sp)
  LW t4, 4(sp)
  SLT s11, t4, zero
  XORI s11, s11, 1
  BNE s11, zero, bb59
  # implict jump to bb41
bb41:
  ADD s11, zero, zero
  # implict jump to bb42
bb42:
  BNE s11, zero, bb58
  # implict jump to bb43
bb43:
  LW t4, 0(sp)
  BLT zero, t4, bb53
  # implict jump to bb44
bb44:
  ADD s8, zero, zero
  # implict jump to bb45
bb45:
  BLT zero, s8, bb49
  # implict jump to bb46
bb46:
  ADDI a0, zero, 10
  CALL putch
  ADDI s6, zero, 1
  LW t4, 12(sp)
  SUBW s1, t4, s6
  # implict jump to bb47
bb47:
  BLT zero, s1, bb48
  JAL zero, bb34
bb48:
  ADD s0, s1, zero
  JAL zero, bb36
bb49:
  ADD s5, s8, zero
  # implict jump to bb50
bb50:
  ADD s6, s5, zero
  ADDI s8, zero, 1
  SUBW s4, s6, s8
  SLLIW s6, s4, 2
  ADDI a0, sp, 136
  ADD s6, a0, s6
  LW s6, 0(s6)
  ADD a0, s6, zero
  CALL putch
  # implict jump to bb51
bb51:
  BLT zero, s4, bb52
  JAL zero, bb46
bb52:
  ADD s5, s4, zero
  JAL zero, bb50
bb53:
  LW t4, 0(sp)
  ADD s11, t4, zero
  ADD s7, zero, zero
  # implict jump to bb54
bb54:
  ADD s5, s7, zero
  ADD s9, s11, zero
  SLLIW s6, s5, 2
  ADDI t5, sp, 136
  ADD s6, t5, s6
  ADDI s10, zero, 10
  REMW s10, s9, s10
  ADDIW s10, s10, 48
  SW s10, 0(s6)
  ADDI s6, zero, 10
  DIVW s3, s9, s6
  ADDIW s2, s5, 1
  # implict jump to bb55
bb55:
  BLT zero, s3, bb57
  # implict jump to bb56
bb56:
  ADD s8, s2, zero
  JAL zero, bb45
bb57:
  ADD s11, s3, zero
  ADD s7, s2, zero
  JAL zero, bb54
bb58:
  ADDI s0, zero, 10
  LW t4, 0(sp)
  MULW s0, t4, s0
  LW t4, 4(sp)
  ADDW s0, s0, t4
  ADD t4, s0, zero
  SW t4, 8(sp)
  JAL zero, bb40
bb59:
  ADDI s8, zero, 9
  LW t4, 4(sp)
  SLT s8, s8, t4
  XORI s8, s8, 1
  ADD s11, s8, zero
  JAL zero, bb42
bb60:
  ADDI s10, zero, 1
  JAL zero, bb38
bb61:
  ADDI s0, zero, 10
  LW t4, 16(sp)
  MULW s0, t4, s0
  LW t4, 24(sp)
  ADDW s0, s0, t4
  ADD t4, s0, zero
  SW t4, 20(sp)
  JAL zero, bb30
bb62:
  ADDI s10, zero, 9
  LW t4, 24(sp)
  SLT s10, s10, t4
  XORI s10, s10, 1
  ADD s9, s10, zero
  JAL zero, bb32
bb63:
  ADDI s7, zero, 1
  JAL zero, bb28
