.global main
.section .bss
.section .data
.section .text
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
  # implict jump to bb1
bb1:
  CALL getch
  ADD s1, a0, zero
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  BLT s1, zero, bb35
  # implict jump to bb2
bb2:
  ADDI s2, zero, 9
  SLT s2, s2, s1
  # implict jump to bb3
bb3:
  BNE s2, zero, bb1
  # implict jump to bb4
bb4:
  ADD t4, s1, zero
  SW t4, 0(sp)
  # implict jump to bb5
bb5:
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
  BNE s4, zero, bb34
  # implict jump to bb6
bb6:
  ADD s4, zero, zero
  # implict jump to bb7
bb7:
  BNE s4, zero, bb33
  # implict jump to bb8
bb8:
  LW t4, 8(sp)
  BLT zero, t4, bb10
  # implict jump to bb9
bb9:
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
bb10:
  LW t4, 8(sp)
  ADD s4, t4, zero
  # implict jump to bb11
bb11:
  ADD s0, s4, zero
  CALL getch
  ADD s5, a0, zero
  ADDI s6, zero, 48
  SUBW s5, s5, s6
  BLT s5, zero, bb32
  # implict jump to bb12
bb12:
  ADDI s6, zero, 9
  SLT s6, s6, s5
  # implict jump to bb13
bb13:
  BNE s6, zero, bb11
  # implict jump to bb14
bb14:
  # implict jump to bb15
bb15:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADDI s8, zero, 48
  SUBW s7, s7, s8
  SLT s8, s7, zero
  XORI s8, s8, 1
  BNE s8, zero, bb31
  # implict jump to bb16
bb16:
  ADD s8, zero, zero
  # implict jump to bb17
bb17:
  BNE s8, zero, bb30
  # implict jump to bb18
bb18:
  BLT zero, s6, bb26
  # implict jump to bb19
bb19:
  ADD s8, zero, zero
  # implict jump to bb20
bb20:
  BLT zero, s8, bb23
  # implict jump to bb21
bb21:
  ADDI a0, zero, 10
  CALL putch
  ADDI s11, zero, 1
  SUBW s11, s0, s11
  BLT zero, s11, bb22
  JAL zero, bb9
bb22:
  ADD s4, s11, zero
  JAL zero, bb11
bb23:
  ADD s3, s8, zero
  # implict jump to bb24
bb24:
  ADD s8, s3, zero
  ADDI s11, zero, 1
  SUBW s8, s8, s11
  SLLIW s11, s8, 2
  ADDI a0, sp, 120
  ADD s11, a0, s11
  LW s11, 0(s11)
  ADD a0, s11, zero
  CALL putch
  BLT zero, s8, bb25
  JAL zero, bb21
bb25:
  ADD s3, s8, zero
  JAL zero, bb24
bb26:
  ADD s9, s6, zero
  ADD s10, zero, zero
  # implict jump to bb27
bb27:
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
  BLT zero, s1, bb29
  # implict jump to bb28
bb28:
  ADD s8, s2, zero
  JAL zero, bb20
bb29:
  ADD s9, s1, zero
  ADD s10, s2, zero
  JAL zero, bb27
bb30:
  ADDI s1, zero, 10
  MULW s1, s6, s1
  ADDW s1, s1, s7
  ADD s5, s1, zero
  JAL zero, bb15
bb31:
  ADDI s9, zero, 9
  SLT s9, s9, s7
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb17
bb32:
  ADDI s6, zero, 1
  JAL zero, bb13
bb33:
  ADDI s0, zero, 10
  LW t4, 8(sp)
  MULW s0, t4, s0
  LW t4, 4(sp)
  ADDW s0, s0, t4
  ADD t4, s0, zero
  SW t4, 0(sp)
  JAL zero, bb5
bb34:
  ADDI s5, zero, 9
  LW t4, 4(sp)
  SLT s5, s5, t4
  XORI s5, s5, 1
  ADD s4, s5, zero
  JAL zero, bb7
bb35:
  ADDI s2, zero, 1
  JAL zero, bb3
