.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
  ADDI t0, zero, 9
  ADDIW s2, a0, -48
  SLT t1, t0, s2
  SLT t0, s2, zero
  OR t0, t0, t1
  BNE t0, zero, bb1
  # implict jump to bb2
bb2:   # loop depth 0
  CALL getch
  ADDI t0, zero, 9
  ADDIW s0, a0, -48
  SLT t1, t0, s0
  SLT t0, s0, zero
  XORI t1, t1, 1
  XORI t0, t0, 1
  AND t0, t0, t1
  BNE t0, zero, bb26
  # implict jump to bb3
bb3:   # loop depth 0
  # implict jump to bb4
bb4:   # loop depth 0
  BLT zero, s2, bb6
  # implict jump to bb5
bb5:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb6:   # loop depth 0
  # implict jump to bb7
bb7:   # loop depth 1
  ADD s3, s2, zero
  CALL getch
  ADDI t0, zero, 9
  ADDIW s0, a0, -48
  SLT t1, t0, s0
  SLT t0, s0, zero
  OR t0, t0, t1
  BNE t0, zero, bb7
  # implict jump to bb8
bb8:   # loop depth 1
  CALL getch
  ADDI t0, zero, 9
  ADDIW s1, a0, -48
  SLT t1, t0, s1
  SLT t0, s1, zero
  XORI t1, t1, 1
  XORI t0, t0, 1
  AND t0, t0, t1
  BNE t0, zero, bb22
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
  ADDIW s2, s3, -1
  CALL putch
  BLT zero, s2, bb14
  JAL zero, bb5
bb14:   # loop depth 1
  JAL zero, bb7
bb15:   # loop depth 1
  # implict jump to bb16
bb16:   # loop depth 2
  SLLIW t0, s1, 2
  ADDIW s1, s1, -1
  ADDI a0, sp, 0
  ADD t0, a0, t0
  LW a0, -4(t0)
  CALL putch
  BLT zero, s1, bb17
  JAL zero, bb13
bb17:   # loop depth 2
  JAL zero, bb16
bb18:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb19
bb19:   # loop depth 2
  ADDI t0, zero, 10
  REMW t1, s0, t0
  ADDI t0, zero, 10
  DIVW s0, s0, t0
  SLLIW t0, s1, 2
  ADDIW s1, s1, 1
  ADDI t6, sp, 0
  ADD t0, t6, t0
  ADDIW t1, t1, 48
  SW t1, 0(t0)
  BLT zero, s0, bb21
  # implict jump to bb20
bb20:   # loop depth 1
  JAL zero, bb12
bb21:   # loop depth 2
  JAL zero, bb19
bb22:   # loop depth 1
  # implict jump to bb23
bb23:   # loop depth 2
  ADDI s2, zero, 10
  CALL getch
  ADDI t2, zero, 9
  MULW t1, s0, s2
  ADDIW t0, a0, -48
  SLT a0, t2, t0
  SLT t2, t0, zero
  XORI a0, a0, 1
  XORI t2, t2, 1
  AND t2, t2, a0
  ADDW s0, t1, s1
  BNE t2, zero, bb25
  # implict jump to bb24
bb24:   # loop depth 1
  JAL zero, bb10
bb25:   # loop depth 2
  ADD s1, t0, zero
  JAL zero, bb23
bb26:   # loop depth 0
  # implict jump to bb27
bb27:   # loop depth 1
  ADDI s1, zero, 10
  CALL getch
  ADDI t2, zero, 9
  MULW t1, s2, s1
  ADDIW t0, a0, -48
  SLT a0, t2, t0
  SLT t2, t0, zero
  XORI a0, a0, 1
  XORI t2, t2, 1
  AND t2, t2, a0
  ADDW s2, t1, s0
  BNE t2, zero, bb29
  # implict jump to bb28
bb28:   # loop depth 0
  JAL zero, bb4
bb29:   # loop depth 1
  ADD s0, t0, zero
  JAL zero, bb27
