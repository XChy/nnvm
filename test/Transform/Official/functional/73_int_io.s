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
  BLT s4, s3, bb9
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
  # implict jump to bb6
bb6:
  ADD s6, s4, zero
  ADDI s7, zero, 1
  SUBW s0, s6, s7
  SLLIW s6, s0, 2
  ADDI a0, sp, 0
  ADD s6, a0, s6
  LW s6, 0(s6)
  ADD a0, s6, zero
  CALL putch
  # implict jump to bb7
bb7:
  ADDI s6, zero, 0
  BLT s6, s0, bb8
  JAL zero, bb3
bb8:
  ADD s4, s0, zero
  JAL zero, bb6
bb9:
  # implict jump to bb10
bb10:
  ADD s5, zero, zero
  # implict jump to bb11
bb11:
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
  DIVW s1, s7, s8
  ADDIW s2, s6, 1
  # implict jump to bb12
bb12:
  ADDI s6, zero, 0
  BLT s6, s1, bb14
  # implict jump to bb13
bb13:
  ADD s4, s2, zero
  JAL zero, bb2
bb14:
  ADD s3, s1, zero
  ADD s5, s2, zero
  JAL zero, bb11
my_getint:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  # implict jump to bb16
bb16:
  CALL getch
  ADD s0, a0, zero
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  BLT s0, zero, bb26
  # implict jump to bb17
bb17:
  ADDI s1, zero, 9
  SLT s1, s1, s0
  # implict jump to bb18
bb18:
  BNE s1, zero, bb16
  # implict jump to bb19
bb19:
  # implict jump to bb20
bb20:
  ADD s1, s0, zero
  CALL getch
  ADD s2, a0, zero
  ADDI s3, zero, 48
  SUBW s2, s2, s3
  SLT s3, s2, zero
  XORI s3, s3, 1
  BNE s3, zero, bb25
  # implict jump to bb21
bb21:
  ADD s3, zero, zero
  # implict jump to bb22
bb22:
  BNE s3, zero, bb24
  # implict jump to bb23
bb23:
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb24:
  ADDI s3, zero, 10
  MULW s1, s1, s3
  ADDW s1, s1, s2
  ADD s0, s1, zero
  JAL zero, bb20
bb25:
  ADDI s4, zero, 9
  SLT s4, s4, s2
  XORI s4, s4, 1
  ADD s3, s4, zero
  JAL zero, bb22
bb26:
  ADDI s1, zero, 1
  JAL zero, bb18
main:
  ADDI sp, sp, -208
  SD ra, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s0, 56(sp)
  SD s1, 64(sp)
  SD s8, 72(sp)
  SD s10, 80(sp)
  SD s5, 88(sp)
  SD s7, 96(sp)
  SD s11, 104(sp)
  SD s4, 112(sp)
  SD s6, 120(sp)
  SD s9, 128(sp)
  # implict jump to bb28
bb28:
  CALL getch
  ADD s5, a0, zero
  ADDI s6, zero, 48
  SUBW s5, s5, s6
  BLT s5, zero, bb68
  # implict jump to bb29
bb29:
  ADDI s6, zero, 9
  SLT s6, s6, s5
  # implict jump to bb30
bb30:
  BNE s6, zero, bb28
  # implict jump to bb31
bb31:
  ADD t4, s5, zero
  SW t4, 8(sp)
  # implict jump to bb32
bb32:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  CALL getch
  ADD s7, a0, zero
  ADDI s8, zero, 48
  SUBW t4, s7, s8
  SW t4, 12(sp)
  LW t4, 12(sp)
  SLT s8, t4, zero
  XORI s8, s8, 1
  BNE s8, zero, bb67
  # implict jump to bb33
bb33:
  ADD s8, zero, zero
  # implict jump to bb34
bb34:
  BNE s8, zero, bb66
  # implict jump to bb35
bb35:
  LW t4, 16(sp)
  BLT zero, t4, bb37
  # implict jump to bb36
bb36:
  ADD a0, zero, zero
  LD ra, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s8, 72(sp)
  LD s10, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s11, 104(sp)
  LD s4, 112(sp)
  LD s6, 120(sp)
  LD s9, 128(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
bb37:
  # implict jump to bb38
bb38:
  LW t4, 16(sp)
  ADD s8, t4, zero
  # implict jump to bb39
bb39:
  ADD t4, s8, zero
  SW t4, 20(sp)
  CALL getch
  ADD s9, a0, zero
  ADDI s10, zero, 48
  SUBW s9, s9, s10
  BLT s9, zero, bb65
  # implict jump to bb40
bb40:
  ADDI s10, zero, 9
  SLT s10, s10, s9
  # implict jump to bb41
bb41:
  BNE s10, zero, bb39
  # implict jump to bb42
bb42:
  ADD t4, s9, zero
  SW t4, 24(sp)
  # implict jump to bb43
bb43:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  CALL getch
  ADD s11, a0, zero
  ADDI s5, zero, 48
  SUBW t4, s11, s5
  SW t4, 4(sp)
  LW t4, 4(sp)
  SLT s11, t4, zero
  XORI s11, s11, 1
  BNE s11, zero, bb64
  # implict jump to bb44
bb44:
  ADD s11, zero, zero
  # implict jump to bb45
bb45:
  BNE s11, zero, bb63
  # implict jump to bb46
bb46:
  LW t4, 0(sp)
  BLT zero, t4, bb57
  # implict jump to bb47
bb47:
  ADD s7, zero, zero
  # implict jump to bb48
bb48:
  BLT zero, s7, bb52
  # implict jump to bb49
bb49:
  ADDI a0, zero, 10
  CALL putch
  ADDI s5, zero, 1
  LW t4, 20(sp)
  SUBW s0, t4, s5
  # implict jump to bb50
bb50:
  BLT zero, s0, bb51
  JAL zero, bb36
bb51:
  ADD s8, s0, zero
  JAL zero, bb39
bb52:
  # implict jump to bb53
bb53:
  ADD s4, s7, zero
  # implict jump to bb54
bb54:
  ADD s5, s4, zero
  ADDI s7, zero, 1
  SUBW s1, s5, s7
  SLLIW s5, s1, 2
  ADDI a0, sp, 136
  ADD s5, a0, s5
  LW s5, 0(s5)
  ADD a0, s5, zero
  CALL putch
  # implict jump to bb55
bb55:
  BLT zero, s1, bb56
  JAL zero, bb49
bb56:
  ADD s4, s1, zero
  JAL zero, bb54
bb57:
  # implict jump to bb58
bb58:
  LW t4, 0(sp)
  ADD s11, t4, zero
  ADD s6, zero, zero
  # implict jump to bb59
bb59:
  ADD s4, s6, zero
  ADD s9, s11, zero
  SLLIW s5, s4, 2
  ADDI t5, sp, 136
  ADD s5, t5, s5
  ADDI s10, zero, 10
  REMW s10, s9, s10
  ADDIW s10, s10, 48
  SW s10, 0(s5)
  ADDI s5, zero, 10
  DIVW s2, s9, s5
  ADDIW s3, s4, 1
  # implict jump to bb60
bb60:
  BLT zero, s2, bb62
  # implict jump to bb61
bb61:
  ADD s7, s3, zero
  JAL zero, bb48
bb62:
  ADD s11, s2, zero
  ADD s6, s3, zero
  JAL zero, bb59
bb63:
  ADDI s0, zero, 10
  LW t4, 0(sp)
  MULW s0, t4, s0
  LW t4, 4(sp)
  ADDW s0, s0, t4
  ADD t4, s0, zero
  SW t4, 24(sp)
  JAL zero, bb43
bb64:
  ADDI s7, zero, 9
  LW t4, 4(sp)
  SLT s7, s7, t4
  XORI s7, s7, 1
  ADD s11, s7, zero
  JAL zero, bb45
bb65:
  ADDI s10, zero, 1
  JAL zero, bb41
bb66:
  ADDI s0, zero, 10
  LW t4, 16(sp)
  MULW s0, t4, s0
  LW t4, 12(sp)
  ADDW s0, s0, t4
  ADD t4, s0, zero
  SW t4, 8(sp)
  JAL zero, bb32
bb67:
  ADDI s9, zero, 9
  LW t4, 12(sp)
  SLT s9, s9, t4
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb34
bb68:
  ADDI s6, zero, 1
  JAL zero, bb30
