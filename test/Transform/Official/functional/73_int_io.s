.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -128
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  # implict jump to bb1
bb1:   # loop depth 1
  CALL getch
  ADDI s2, zero, 9
  ADD s0, a0, zero
  ADDIW s1, s0, -48
  SLT s2, s2, s1
  SLT s0, s1, zero
  OR s0, s0, s2
  BNE s0, zero, bb1
  # implict jump to bb2
bb2:   # loop depth 0
  CALL getch
  ADDI s2, zero, 9
  ADD s0, a0, zero
  ADDIW s0, s0, -48
  SLT s3, s2, s0
  SLT s2, s0, zero
  XORI s3, s3, 1
  XORI s2, s2, 1
  AND s2, s2, s3
  BNE s2, zero, bb26
  # implict jump to bb3
bb3:   # loop depth 0
  # implict jump to bb4
bb4:   # loop depth 0
  BLT zero, s1, bb6
  # implict jump to bb5
bb5:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb6:   # loop depth 0
  # implict jump to bb7
bb7:   # loop depth 1
  ADD s3, s1, zero
  CALL getch
  ADD s0, a0, zero
  ADDI s2, zero, 9
  ADDIW s0, s0, -48
  SLT s4, s2, s0
  SLT s2, s0, zero
  OR s2, s2, s4
  BNE s2, zero, bb7
  # implict jump to bb8
bb8:   # loop depth 1
  CALL getch
  ADDI s2, zero, 9
  ADD s1, a0, zero
  ADDIW s1, s1, -48
  SLT s4, s2, s1
  SLT s2, s1, zero
  XORI s4, s4, 1
  XORI s2, s2, 1
  AND s2, s2, s4
  BNE s2, zero, bb22
  # implict jump to bb9
bb9:   # loop depth 1
  # implict jump to bb10
bb10:   # loop depth 1
  BLT zero, s0, bb18
  # implict jump to bb11
bb11:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb12
bb12:   # loop depth 1
  BLT zero, s1, bb15
  # implict jump to bb13
bb13:   # loop depth 1
  ADDI a0, zero, 10
  ADDIW s1, s3, -1
  CALL putch
  BLT zero, s1, bb14
  JAL zero, bb5
bb14:   # loop depth 1
  JAL zero, bb7
bb15:   # loop depth 1
  # implict jump to bb16
bb16:   # loop depth 2
  SLLIW a0, s1, 2
  ADDIW s1, s1, -1
  ADDI t6, sp, 56
  ADD a0, t6, a0
  LW a0, -4(a0)
  CALL putch
  BLT zero, s1, bb17
  JAL zero, bb13
bb17:   # loop depth 2
  JAL zero, bb16
bb18:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb19
bb19:   # loop depth 2
  ADDI a0, zero, 10
  REMW s2, s0, a0
  ADDI a0, zero, 10
  DIVW s0, s0, a0
  SLLIW a0, s1, 2
  ADDIW s1, s1, 1
  ADDI t6, sp, 56
  ADD a0, t6, a0
  ADDIW s2, s2, 48
  SW s2, 0(a0)
  BLT zero, s0, bb21
  # implict jump to bb20
bb20:   # loop depth 1
  JAL zero, bb12
bb21:   # loop depth 2
  JAL zero, bb19
bb22:   # loop depth 1
  # implict jump to bb23
bb23:   # loop depth 2
  ADDI s4, zero, 10
  CALL getch
  ADDI s5, zero, 9
  ADD s2, a0, zero
  MULW s0, s0, s4
  ADDIW s2, s2, -48
  SLT s5, s5, s2
  SLT s4, s2, zero
  XORI s5, s5, 1
  XORI s4, s4, 1
  AND s4, s4, s5
  ADDW s0, s0, s1
  BNE s4, zero, bb25
  # implict jump to bb24
bb24:   # loop depth 1
  JAL zero, bb10
bb25:   # loop depth 2
  ADD s1, s2, zero
  JAL zero, bb23
bb26:   # loop depth 0
  # implict jump to bb27
bb27:   # loop depth 1
  ADDI s3, zero, 10
  CALL getch
  ADDI s4, zero, 9
  ADD s2, a0, zero
  MULW s1, s1, s3
  ADDIW s2, s2, -48
  SLT s4, s4, s2
  SLT s3, s2, zero
  XORI s4, s4, 1
  XORI s3, s3, 1
  AND s3, s3, s4
  ADDW s1, s1, s0
  BNE s3, zero, bb29
  # implict jump to bb28
bb28:   # loop depth 0
  JAL zero, bb4
bb29:   # loop depth 1
  ADD s0, s2, zero
  JAL zero, bb27
