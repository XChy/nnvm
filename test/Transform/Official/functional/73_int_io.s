.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -112
  SD ra, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  # implict jump to bb1
bb1:   # loop depth 1
  CALL getch
  ADD s0, a0, zero
  ADDIW s0, s0, -48
  BLT s0, zero, bb35
  # implict jump to bb2
bb2:   # loop depth 1
  ADDI s1, zero, 9
  SLT s1, s1, s0
  # implict jump to bb3
bb3:   # loop depth 1
  BNE s1, zero, bb1
  # implict jump to bb4
bb4:   # loop depth 0
  # implict jump to bb5
bb5:   # loop depth 1
  CALL getch
  ADD s1, a0, zero
  ADDIW s2, s1, -48
  SLT s1, s2, zero
  XORI s1, s1, 1
  BNE s1, zero, bb34
  # implict jump to bb6
bb6:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb7
bb7:   # loop depth 1
  BNE s1, zero, bb33
  # implict jump to bb8
bb8:   # loop depth 0
  BLT zero, s0, bb10
  # implict jump to bb9
bb9:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb10:   # loop depth 0
  # implict jump to bb11
bb11:   # loop depth 1
  ADD s2, s0, zero
  CALL getch
  ADD s1, a0, zero
  ADDIW s1, s1, -48
  BLT s1, zero, bb32
  # implict jump to bb12
bb12:   # loop depth 1
  ADDI s3, zero, 9
  SLT s3, s3, s1
  # implict jump to bb13
bb13:   # loop depth 1
  BNE s3, zero, bb11
  # implict jump to bb14
bb14:   # loop depth 1
  # implict jump to bb15
bb15:   # loop depth 2
  CALL getch
  ADD s0, a0, zero
  ADDIW s3, s0, -48
  SLT s0, s3, zero
  XORI s0, s0, 1
  BNE s0, zero, bb31
  # implict jump to bb16
bb16:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb17
bb17:   # loop depth 2
  BNE s0, zero, bb30
  # implict jump to bb18
bb18:   # loop depth 1
  BLT zero, s1, bb26
  # implict jump to bb19
bb19:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb20
bb20:   # loop depth 1
  BLT zero, s0, bb23
  # implict jump to bb21
bb21:   # loop depth 1
  ADDI a0, zero, 10
  CALL putch
  ADDIW s0, s2, -1
  BLT zero, s0, bb22
  JAL zero, bb9
bb22:   # loop depth 1
  JAL zero, bb11
bb23:   # loop depth 1
  # implict jump to bb24
bb24:   # loop depth 2
  ADDIW s0, s0, -1
  SLLIW a0, s0, 2
  ADDI t6, sp, 0
  ADD a0, t6, a0
  LW a0, 0(a0)
  CALL putch
  BLT zero, s0, bb25
  JAL zero, bb21
bb25:   # loop depth 2
  JAL zero, bb24
bb26:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb27
bb27:   # loop depth 2
  SLLIW a0, s0, 2
  ADDI t6, sp, 0
  ADD a0, t6, a0
  ADDI s3, zero, 10
  REMW s3, s1, s3
  ADDIW s3, s3, 48
  SW s3, 0(a0)
  ADDI a0, zero, 10
  DIVW s1, s1, a0
  ADDIW s0, s0, 1
  BLT zero, s1, bb29
  # implict jump to bb28
bb28:   # loop depth 1
  JAL zero, bb20
bb29:   # loop depth 2
  JAL zero, bb27
bb30:   # loop depth 2
  ADDI s0, zero, 10
  MULW s0, s1, s0
  ADDW s1, s0, s3
  JAL zero, bb15
bb31:   # loop depth 2
  ADDI s0, zero, 9
  SLT s0, s0, s3
  XORI s0, s0, 1
  JAL zero, bb17
bb32:   # loop depth 1
  ADDI s3, zero, 1
  JAL zero, bb13
bb33:   # loop depth 1
  ADDI s1, zero, 10
  MULW s0, s0, s1
  ADDW s0, s0, s2
  JAL zero, bb5
bb34:   # loop depth 1
  ADDI s1, zero, 9
  SLT s1, s1, s2
  XORI s1, s1, 1
  JAL zero, bb7
bb35:   # loop depth 1
  ADDI s1, zero, 1
  JAL zero, bb3
