.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -96
  SD ra, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  # implict jump to bb1
bb1:   # loop depth 1
  CALL getch
  ADDI t0, zero, 9
  ADDIW s2, a0, -48
  SLT t1, t0, s2
  SLT t0, s2, zero
  OR s0, t0, t1
  BNE s0, zero, bb1
  # implict jump to bb2
bb2:   # loop depth 0
  CALL getch
  ADDI t1, zero, 9
  ADDIW t0, a0, -48
  SLT t2, t1, t0
  SLT t1, t0, zero
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  BNE t1, zero, bb26
  # implict jump to bb3
bb3:   # loop depth 0
  # implict jump to bb4
bb4:   # loop depth 0
  # implict jump to bb5
bb5:   # loop depth 1
  ADDI t0, zero, 0
  BLT t0, s2, bb7
  # implict jump to bb6
bb6:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb7:   # loop depth 2
  CALL getch
  ADDI t0, zero, 9
  ADDIW s0, a0, -48
  SLT t1, t0, s0
  SLT t0, s0, zero
  OR s1, t0, t1
  BNE s1, zero, bb7
  # implict jump to bb8
bb8:   # loop depth 1
  CALL getch
  ADDI t1, zero, 9
  ADDIW t0, a0, -48
  SLT t2, t1, t0
  SLT t1, t0, zero
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  BNE t1, zero, bb21
  # implict jump to bb9
bb9:   # loop depth 1
  # implict jump to bb10
bb10:   # loop depth 1
  BLT zero, s0, bb17
  # implict jump to bb11
bb11:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb12
bb12:   # loop depth 1
  BLT zero, s1, bb14
  # implict jump to bb13
bb13:   # loop depth 1
  ADDIW s2, s2, -1
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb5
bb14:   # loop depth 1
  # implict jump to bb15
bb15:   # loop depth 2
  SLLIW t0, s1, 2
  ADDIW s1, s1, -1
  ADDI a0, sp, 0
  ADD t0, a0, t0
  LW a0, -4(t0)
  CALL putch
  BLT zero, s1, bb16
  ADDIW s2, s2, -1
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb5
bb16:   # loop depth 2
  JAL zero, bb15
bb17:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb18
bb18:   # loop depth 2
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
  BLT zero, s0, bb20
  # implict jump to bb19
bb19:   # loop depth 1
  JAL zero, bb12
bb20:   # loop depth 2
  JAL zero, bb18
bb21:   # loop depth 1
  # implict jump to bb22
bb22:   # loop depth 2
  ADDI t1, zero, 10
  MULW t1, s0, t1
  ADDW s0, t1, t0
  # implict jump to bb23
bb23:   # loop depth 2
  CALL getch
  ADDI t1, zero, 9
  ADDIW t0, a0, -48
  SLT t2, t1, t0
  SLT t1, t0, zero
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  BNE t1, zero, bb25
  # implict jump to bb24
bb24:   # loop depth 1
  JAL zero, bb10
bb25:   # loop depth 2
  JAL zero, bb22
bb26:   # loop depth 0
  # implict jump to bb27
bb27:   # loop depth 1
  ADDI t1, zero, 10
  MULW t1, s2, t1
  ADDW s2, t1, t0
  # implict jump to bb28
bb28:   # loop depth 1
  CALL getch
  ADDI t1, zero, 9
  ADDIW t0, a0, -48
  SLT t2, t1, t0
  SLT t1, t0, zero
  XORI t2, t2, 1
  XORI t1, t1, 1
  AND t1, t1, t2
  BNE t1, zero, bb30
  # implict jump to bb29
bb29:   # loop depth 0
  JAL zero, bb4
bb30:   # loop depth 1
  JAL zero, bb27
