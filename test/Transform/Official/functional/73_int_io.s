.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -112
  SD ra, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  # implict jump to bb1
bb1:
  CALL getch
  ADD s1, a0, zero
  ADDI s0, zero, 48
  SUBW s1, s1, s0
  BLT s1, zero, bb35
  # implict jump to bb2
bb2:
  ADDI s0, zero, 9
  SLT s0, s0, s1
  # implict jump to bb3
bb3:
  BNE s0, zero, bb1
  # implict jump to bb4
bb4:
  ADD s0, s1, zero
  # implict jump to bb5
bb5:
  ADD s1, s0, zero
  CALL getch
  ADD s2, a0, zero
  ADDI s0, zero, 48
  SUBW s2, s2, s0
  SLT s0, s2, zero
  XORI s0, s0, 1
  BNE s0, zero, bb34
  # implict jump to bb6
bb6:
  ADD s0, zero, zero
  # implict jump to bb7
bb7:
  BNE s0, zero, bb33
  # implict jump to bb8
bb8:
  BLT zero, s1, bb10
  # implict jump to bb9
bb9:
  ADD a0, zero, zero
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb10:
  # implict jump to bb11
bb11:
  ADD s2, s1, zero
  CALL getch
  ADD s3, a0, zero
  ADDI s0, zero, 48
  SUBW s3, s3, s0
  BLT s3, zero, bb32
  # implict jump to bb12
bb12:
  ADDI s0, zero, 9
  SLT s0, s0, s3
  # implict jump to bb13
bb13:
  BNE s0, zero, bb11
  # implict jump to bb14
bb14:
  ADD s0, s3, zero
  # implict jump to bb15
bb15:
  ADD s3, s0, zero
  CALL getch
  ADD s1, a0, zero
  ADDI s0, zero, 48
  SUBW s1, s1, s0
  SLT s0, s1, zero
  XORI s0, s0, 1
  BNE s0, zero, bb31
  # implict jump to bb16
bb16:
  ADD s0, zero, zero
  # implict jump to bb17
bb17:
  BNE s0, zero, bb30
  # implict jump to bb18
bb18:
  BLT zero, s3, bb26
  # implict jump to bb19
bb19:
  ADD a0, zero, zero
  # implict jump to bb20
bb20:
  BLT zero, a0, bb23
  # implict jump to bb21
bb21:
  ADDI a0, zero, 10
  CALL putch
  ADDI s0, zero, 1
  SUBW s0, s2, s0
  BLT zero, s0, bb22
  JAL zero, bb9
bb22:
  ADD s1, s0, zero
  JAL zero, bb11
bb23:
  # implict jump to bb24
bb24:
  ADD s0, a0, zero
  ADDI a0, zero, 1
  SUBW s0, s0, a0
  SLLIW a0, s0, 2
  ADDI t5, sp, 0
  ADD a0, t5, a0
  LW a0, 0(a0)
  CALL putch
  BLT zero, s0, bb25
  JAL zero, bb21
bb25:
  ADD a0, s0, zero
  JAL zero, bb24
bb26:
  ADD s0, s3, zero
  ADD a0, zero, zero
  # implict jump to bb27
bb27:
  ADD s1, a0, zero
  ADD s3, s0, zero
  SLLIW a0, s1, 2
  ADDI t5, sp, 0
  ADD s0, t5, a0
  ADDI a0, zero, 10
  REMW a0, s3, a0
  ADDIW a0, a0, 48
  SW a0, 0(s0)
  ADDI a0, zero, 10
  DIVW s0, s3, a0
  ADDIW a0, s1, 1
  BLT zero, s0, bb29
  # implict jump to bb28
bb28:
  JAL zero, bb20
bb29:
  JAL zero, bb27
bb30:
  ADDI s0, zero, 10
  MULW s0, s3, s0
  ADDW s0, s0, s1
  JAL zero, bb15
bb31:
  ADDI s0, zero, 9
  SLT s0, s0, s1
  XORI s0, s0, 1
  JAL zero, bb17
bb32:
  ADDI s0, zero, 1
  JAL zero, bb13
bb33:
  ADDI s0, zero, 10
  MULW s0, s1, s0
  ADDW s0, s0, s2
  JAL zero, bb5
bb34:
  ADDI s0, zero, 9
  SLT s0, s0, s2
  XORI s0, s0, 1
  JAL zero, bb7
bb35:
  ADDI s0, zero, 1
  JAL zero, bb3
