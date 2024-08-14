.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  LUI t0, 1048547
  ADDIW t0, t0, -1264
  ADD sp, sp, t0
  LUI t6, 29
  ADDIW t6, t6, 1216
  ADD t6, t6, sp
  SD ra, 0(t6)
  LUI t6, 29
  ADDIW t6, t6, 1224
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 29
  ADDIW t6, t6, 1232
  ADD t6, t6, sp
  SD s1, 0(t6)
  LUI t0, 29
  ADDIW t0, t0, 1240
  ADD t0, t0, sp
  SD s2, 0(t0)
  LUI t0, 29
  ADDIW t0, t0, 1248
  ADD t0, t0, sp
  SD s3, 0(t0)
  ADD t0, zero, zero
  # implict jump to bb1
bb1:   # loop depth 1
  ADDI a0, zero, 10
  MULW t2, t0, t0
  LUI a1, 2
  SLLIW t1, t0, 2
  ADDIW a1, a1, 1808
  ADDIW t0, t0, 1
  ADDI t6, sp, 0
  ADD t1, t6, t1
  REMW t2, t2, a0
  SLT a0, t0, a1
  SW t2, 0(t1)
  BNE a0, zero, bb30
  # implict jump to bb2
bb2:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb3
bb3:   # loop depth 1
  ADDI a1, zero, 10
  SLLIW t1, t0, 2
  LUI a0, 2
  ADDI t2, sp, 0
  ADD t2, t2, t1
  ADDIW a0, a0, 1808
  LW t2, 0(t2)
  ADDIW t0, t0, 1
  LUI t6, 10
  ADDIW t6, t6, -960
  ADD t6, t6, sp
  ADD t1, t6, t1
  SLT a0, t0, a0
  MULW t2, t2, t2
  REMW t2, t2, a1
  SW t2, 0(t1)
  BNE a0, zero, bb29
  # implict jump to bb4
bb4:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  ADDI a2, zero, 100
  SLLIW t1, t0, 2
  LUI a1, 2
  LUI t2, 10
  ADDIW t2, t2, -960
  ADD t2, t2, sp
  ADD t2, t2, t1
  ADDI a0, sp, 0
  ADD a0, a0, t1
  LW t2, 0(t2)
  ADDIW a1, a1, 1808
  ADDIW t0, t0, 1
  LUI t6, 20
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  ADD t1, t6, t1
  SLT a1, t0, a1
  MULW t2, t2, t2
  LW a0, 0(a0)
  REMW t2, t2, a2
  ADDW t2, t2, a0
  SW t2, 0(t1)
  BNE a1, zero, bb28
  # implict jump to bb6
bb6:   # loop depth 0
  ADD s3, zero, zero
  ADD s2, zero, zero
  ADD s1, zero, zero
  ADD s0, zero, zero
  # implict jump to bb7
bb7:   # loop depth 1
  SLLIW t1, s0, 2
  SLTI t0, s0, 10
  BNE t0, zero, bb27
  # implict jump to bb8
bb8:   # loop depth 1
  SLTI t0, s0, 20
  BNE t0, zero, bb23
  # implict jump to bb9
bb9:   # loop depth 1
  SLTI t0, s0, 30
  BNE t0, zero, bb16
  # implict jump to bb10
bb10:   # loop depth 1
  LUI t0, 20
  ADDIW t0, t0, -1920
  ADD t0, t0, sp
  ADD t0, t0, t1
  ADDI t1, zero, 9
  LW t0, 0(t0)
  LUI t2, 24
  ADDIW t2, t2, 1684
  MULW t0, t0, t1
  ADDW t0, s1, t0
  REMW s1, t0, t2
  # implict jump to bb11
bb11:   # loop depth 1
  # implict jump to bb12
bb12:   # loop depth 1
  # implict jump to bb13
bb13:   # loop depth 1
  LUI t0, 2
  ADDIW s0, s0, 1
  ADDIW t0, t0, 1808
  SLT t0, s0, t0
  BNE t0, zero, bb15
  # implict jump to bb14
bb14:   # loop depth 0
  ADD a0, s1, zero
  LUI ra, 29
  ADDIW ra, ra, 1216
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 29
  ADDIW t6, t6, 1224
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t6, 29
  ADDIW t6, t6, 1232
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t6, 29
  ADDIW t6, t6, 1240
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t6, 29
  ADDIW t6, t6, 1248
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t0, 29
  ADDIW t0, t0, 1264
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb15:   # loop depth 1
  JAL zero, bb7
bb16:   # loop depth 1
  LUI t0, 1
  ADDIW t0, t0, 904
  ADDI t2, sp, 0
  ADD t2, t2, t1
  ADD s3, zero, t0
  LUI t0, 10
  ADDIW t0, t0, -960
  ADD t0, t0, sp
  ADD t0, t0, t1
  # implict jump to bb17
bb17:   # loop depth 2
  LUI t1, 1
  ADDIW t1, t1, -1863
  SLLIW a0, s3, 2
  SLT t1, t1, s3
  BNE t1, zero, bb22
  # implict jump to bb18
bb18:   # loop depth 2
  LW t1, 0(t2)
  LUI a1, 20
  ADDIW a1, a1, -1920
  ADD a1, a1, sp
  ADD a0, a1, a0
  LUI a1, 3
  ADDIW s3, s3, 2
  ADDIW a1, a1, 1045
  LW a0, 0(a0)
  ADDW t1, s1, t1
  ADDW t1, t1, a0
  REMW s1, t1, a1
  # implict jump to bb19
bb19:   # loop depth 2
  LUI t1, 2
  ADDIW t1, t1, 1808
  SLT t1, s3, t1
  BNE t1, zero, bb21
  # implict jump to bb20
bb20:   # loop depth 1
  ADD a0, s1, zero
  CALL putint
  JAL zero, bb11
bb21:   # loop depth 2
  JAL zero, bb17
bb22:   # loop depth 2
  LW t1, 0(t0)
  ADDI t6, sp, 0
  ADD a0, t6, a0
  ADDIW s3, s3, 1
  LW a0, 0(a0)
  ADDW t1, s1, t1
  SUBW s1, t1, a0
  JAL zero, bb19
bb23:   # loop depth 1
  LUI t0, 20
  ADDIW t0, t0, -1920
  ADD t0, t0, sp
  ADD t0, t0, t1
  LUI t1, 1
  LW t0, 0(t0)
  ADDIW t1, t1, 904
  ADD s2, zero, t1
  # implict jump to bb24
bb24:   # loop depth 2
  LUI a0, 2
  SLLIW t1, s2, 2
  ADDI t2, sp, 0
  ADD t1, t2, t1
  ADDIW a0, a0, 1808
  LW t2, 0(t1)
  ADDIW s2, s2, 1
  ADDW t1, s1, t0
  SLT a0, s2, a0
  SUBW s1, t1, t2
  BNE a0, zero, bb26
  # implict jump to bb25
bb25:   # loop depth 1
  ADD a0, s1, zero
  CALL putint
  JAL zero, bb12
bb26:   # loop depth 2
  JAL zero, bb24
bb27:   # loop depth 1
  LUI t0, 20
  ADDIW t0, t0, -1920
  ADD t0, t0, sp
  ADD t0, t0, t1
  ADDI t1, zero, 1333
  LW t0, 0(t0)
  ADDW t0, s1, t0
  REMW s1, t0, t1
  ADD a0, s1, zero
  CALL putint
  JAL zero, bb13
bb28:   # loop depth 1
  JAL zero, bb5
bb29:   # loop depth 1
  JAL zero, bb3
bb30:   # loop depth 1
  JAL zero, bb1
