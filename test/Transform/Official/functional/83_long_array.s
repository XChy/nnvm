.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  LUI t0, 1048547
  ADDIW t0, t0, -1296
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
  LUI t6, 29
  ADDIW t6, t6, 1240
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t6, 29
  ADDIW t6, t6, 1248
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t6, 29
  ADDIW t6, t6, 1256
  ADD t6, t6, sp
  SD s4, 0(t6)
  LUI t6, 29
  ADDIW t6, t6, 1264
  ADD t6, t6, sp
  SD s5, 0(t6)
  LUI a0, 29
  ADDIW a0, a0, 1272
  ADD a0, a0, sp
  SD s6, 0(a0)
  LUI a0, 29
  ADDIW a0, a0, 1280
  ADD a0, a0, sp
  SD s7, 0(a0)
  ADD a0, zero, zero
  # implict jump to bb1
bb1:   # loop depth 1
  ADDI s2, zero, 10
  MULW s1, a0, a0
  LUI s3, 2
  SLLIW s0, a0, 2
  ADDIW s3, s3, 1808
  ADDIW a0, a0, 1
  ADDI t6, sp, 0
  ADD s0, t6, s0
  REMW s1, s1, s2
  SLT s2, a0, s3
  SW s1, 0(s0)
  BNE s2, zero, bb30
  # implict jump to bb2
bb2:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb3
bb3:   # loop depth 1
  ADDI s3, zero, 10
  SLLIW s0, a0, 2
  LUI s2, 2
  ADDI t6, sp, 0
  ADD s1, t6, s0
  ADDIW s2, s2, 1808
  LW s1, 0(s1)
  ADDIW a0, a0, 1
  LUI t6, 10
  ADDIW t6, t6, -960
  ADD t6, t6, sp
  ADD s0, t6, s0
  SLT s2, a0, s2
  MULW s1, s1, s1
  REMW s1, s1, s3
  SW s1, 0(s0)
  BNE s2, zero, bb29
  # implict jump to bb4
bb4:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  ADDI s4, zero, 100
  SLLIW s0, a0, 2
  LUI s3, 2
  LUI t6, 10
  ADDIW t6, t6, -960
  ADD t6, t6, sp
  ADD s1, t6, s0
  ADDI t6, sp, 0
  ADD s2, t6, s0
  LW s1, 0(s1)
  ADDIW s3, s3, 1808
  ADDIW a0, a0, 1
  LUI t6, 20
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  ADD s0, t6, s0
  SLT s3, a0, s3
  MULW s1, s1, s1
  LW s2, 0(s2)
  REMW s1, s1, s4
  ADDW s1, s1, s2
  SW s1, 0(s0)
  BNE s3, zero, bb28
  # implict jump to bb6
bb6:   # loop depth 0
  ADD s1, zero, zero
  ADD s3, zero, zero
  ADD s0, zero, zero
  ADD s2, zero, zero
  # implict jump to bb7
bb7:   # loop depth 1
  SLLIW s5, s2, 2
  SLTI a0, s2, 10
  BNE a0, zero, bb27
  # implict jump to bb8
bb8:   # loop depth 1
  SLTI a0, s2, 20
  BNE a0, zero, bb23
  # implict jump to bb9
bb9:   # loop depth 1
  SLTI a0, s2, 30
  BNE a0, zero, bb16
  # implict jump to bb10
bb10:   # loop depth 1
  LUI a0, 20
  ADDIW a0, a0, -1920
  ADD a0, a0, sp
  ADD a0, a0, s5
  ADDI s4, zero, 9
  LW a0, 0(a0)
  LUI s5, 24
  ADDIW s5, s5, 1684
  MULW a0, a0, s4
  ADDW a0, s0, a0
  REMW s0, a0, s5
  # implict jump to bb11
bb11:   # loop depth 1
  # implict jump to bb12
bb12:   # loop depth 1
  # implict jump to bb13
bb13:   # loop depth 1
  LUI a0, 2
  ADDIW s2, s2, 1
  ADDIW a0, a0, 1808
  SLT a0, s2, a0
  BNE a0, zero, bb15
  # implict jump to bb14
bb14:   # loop depth 0
  ADD a0, s0, zero
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
  LUI t6, 29
  ADDIW t6, t6, 1256
  ADD t6, t6, sp
  LD s4, 0(t6)
  LUI t6, 29
  ADDIW t6, t6, 1264
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t6, 29
  ADDIW t6, t6, 1272
  ADD t6, t6, sp
  LD s6, 0(t6)
  LUI t6, 29
  ADDIW t6, t6, 1280
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t0, 29
  ADDIW t0, t0, 1296
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb15:   # loop depth 1
  JAL zero, bb7
bb16:   # loop depth 1
  LUI a0, 1
  ADDIW a0, a0, 904
  ADDI t6, sp, 0
  ADD s4, t6, s5
  ADD s1, zero, a0
  LUI a0, 10
  ADDIW a0, a0, -960
  ADD a0, a0, sp
  ADD a0, a0, s5
  # implict jump to bb17
bb17:   # loop depth 2
  LUI s5, 1
  ADDIW s5, s5, -1863
  SLLIW s6, s1, 2
  SLT s5, s5, s1
  BNE s5, zero, bb22
  # implict jump to bb18
bb18:   # loop depth 2
  LW s5, 0(s4)
  LUI t6, 20
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  ADD s7, t6, s6
  LUI s6, 3
  ADDIW s1, s1, 2
  ADDIW s6, s6, 1045
  LW s7, 0(s7)
  ADDW s0, s0, s5
  ADDW s0, s0, s7
  REMW s0, s0, s6
  # implict jump to bb19
bb19:   # loop depth 2
  LUI s5, 2
  ADDIW s5, s5, 1808
  SLT s5, s1, s5
  BNE s5, zero, bb21
  # implict jump to bb20
bb20:   # loop depth 1
  ADD a0, s0, zero
  CALL putint
  JAL zero, bb11
bb21:   # loop depth 2
  JAL zero, bb17
bb22:   # loop depth 2
  LW s5, 0(a0)
  ADDI t6, sp, 0
  ADD s6, t6, s6
  ADDIW s1, s1, 1
  LW s6, 0(s6)
  ADDW s0, s0, s5
  SUBW s0, s0, s6
  JAL zero, bb19
bb23:   # loop depth 1
  LUI a0, 20
  ADDIW a0, a0, -1920
  ADD a0, a0, sp
  ADD a0, a0, s5
  LUI s3, 1
  LW a0, 0(a0)
  ADDIW s3, s3, 904
  ADD s3, zero, s3
  # implict jump to bb24
bb24:   # loop depth 2
  LUI s5, 2
  SLLIW s4, s3, 2
  ADDI t6, sp, 0
  ADD s4, t6, s4
  ADDIW s5, s5, 1808
  LW s4, 0(s4)
  ADDIW s3, s3, 1
  ADDW s0, s0, a0
  SLT s5, s3, s5
  SUBW s0, s0, s4
  BNE s5, zero, bb26
  # implict jump to bb25
bb25:   # loop depth 1
  ADD a0, s0, zero
  CALL putint
  JAL zero, bb12
bb26:   # loop depth 2
  JAL zero, bb24
bb27:   # loop depth 1
  LUI a0, 20
  ADDIW a0, a0, -1920
  ADD a0, a0, sp
  ADD a0, a0, s5
  ADDI s4, zero, 1333
  LW a0, 0(a0)
  ADDW a0, s0, a0
  REMW s0, a0, s4
  ADD a0, s0, zero
  CALL putint
  JAL zero, bb13
bb28:   # loop depth 1
  JAL zero, bb5
bb29:   # loop depth 1
  JAL zero, bb3
bb30:   # loop depth 1
  JAL zero, bb1
