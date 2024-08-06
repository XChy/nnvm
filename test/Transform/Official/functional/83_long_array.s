.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  LUI t0, 1048547
  ADDIW t0, t0, -1280
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
  LUI a0, 29
  ADDIW a0, a0, 1256
  ADD a0, a0, sp
  SD s4, 0(a0)
  LUI a0, 29
  ADDIW a0, a0, 1264
  ADD a0, a0, sp
  SD s5, 0(a0)
  ADD a0, zero, zero
  # implict jump to bb1
bb1:   # loop depth 1
  SLLIW s0, a0, 2
  ADDI t6, sp, 0
  ADD s0, t6, s0
  MULW s1, a0, a0
  ADDI s2, zero, 10
  REMW s1, s1, s2
  SW s1, 0(s0)
  ADDIW a0, a0, 1
  LUI s0, 2
  ADDIW s0, s0, 1808
  SLT s0, a0, s0
  BNE s0, zero, bb30
  # implict jump to bb2
bb2:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb3
bb3:   # loop depth 1
  SLLIW s0, a0, 2
  LUI t6, 10
  ADDIW t6, t6, -960
  ADD t6, t6, sp
  ADD s1, t6, s0
  ADDI t6, sp, 0
  ADD s0, t6, s0
  LW s0, 0(s0)
  MULW s0, s0, s0
  ADDI s2, zero, 10
  REMW s0, s0, s2
  SW s0, 0(s1)
  ADDIW a0, a0, 1
  LUI s0, 2
  ADDIW s0, s0, 1808
  SLT s0, a0, s0
  BNE s0, zero, bb29
  # implict jump to bb4
bb4:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  SLLIW s0, a0, 2
  LUI t6, 20
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  ADD s1, t6, s0
  LUI t6, 10
  ADDIW t6, t6, -960
  ADD t6, t6, sp
  ADD s2, t6, s0
  LW s2, 0(s2)
  MULW s2, s2, s2
  ADDI s3, zero, 100
  REMW s2, s2, s3
  ADDI t6, sp, 0
  ADD s0, t6, s0
  LW s0, 0(s0)
  ADDW s0, s2, s0
  SW s0, 0(s1)
  ADDIW a0, a0, 1
  LUI s0, 2
  ADDIW s0, s0, 1808
  SLT s0, a0, s0
  BNE s0, zero, bb28
  # implict jump to bb6
bb6:   # loop depth 0
  ADD s2, zero, zero
  ADD a0, zero, zero
  ADD s3, zero, zero
  ADD s1, zero, zero
  # implict jump to bb7
bb7:   # loop depth 1
  SLTI s0, s2, 10
  SLLIW s4, s2, 2
  BNE s0, zero, bb27
  # implict jump to bb8
bb8:   # loop depth 1
  SLTI s0, s2, 20
  BNE s0, zero, bb23
  # implict jump to bb9
bb9:   # loop depth 1
  SLTI s0, s2, 30
  BNE s0, zero, bb16
  # implict jump to bb10
bb10:   # loop depth 1
  LUI t6, 20
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  ADD s0, t6, s4
  LW s0, 0(s0)
  ADDI s4, zero, 9
  MULW s0, s0, s4
  ADDW a0, a0, s0
  LUI s0, 24
  ADDIW s0, s0, 1684
  REMW a0, a0, s0
  # implict jump to bb11
bb11:   # loop depth 1
  # implict jump to bb12
bb12:   # loop depth 1
  # implict jump to bb13
bb13:   # loop depth 1
  ADDIW s2, s2, 1
  LUI s0, 2
  ADDIW s0, s0, 1808
  SLT s0, s2, s0
  BNE s0, zero, bb15
  # implict jump to bb14
bb14:   # loop depth 0
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
  LUI t0, 29
  ADDIW t0, t0, 1280
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb15:   # loop depth 1
  JAL zero, bb7
bb16:   # loop depth 1
  ADD s0, a0, zero
  LUI a0, 1
  ADDIW a0, a0, 904
  ADD s1, zero, a0
  # implict jump to bb17
bb17:   # loop depth 2
  LUI a0, 1
  ADDIW a0, a0, -1863
  SLT a0, a0, s1
  SLLIW s5, s1, 2
  BNE a0, zero, bb22
  # implict jump to bb18
bb18:   # loop depth 2
  ADDI a0, sp, 0
  ADD a0, a0, s4
  LW a0, 0(a0)
  ADDW a0, s0, a0
  LUI t6, 20
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  ADD s0, t6, s5
  LW s0, 0(s0)
  ADDW a0, a0, s0
  LUI s0, 3
  ADDIW s0, s0, 1045
  REMW s0, a0, s0
  ADDIW s1, s1, 2
  # implict jump to bb19
bb19:   # loop depth 2
  LUI a0, 2
  ADDIW a0, a0, 1808
  SLT a0, s1, a0
  BNE a0, zero, bb21
  # implict jump to bb20
bb20:   # loop depth 1
  ADD a0, s0, zero
  CALL putint
  ADD a0, s0, zero
  JAL zero, bb11
bb21:   # loop depth 2
  JAL zero, bb17
bb22:   # loop depth 2
  LUI a0, 10
  ADDIW a0, a0, -960
  ADD a0, a0, sp
  ADD a0, a0, s4
  LW a0, 0(a0)
  ADDW a0, s0, a0
  ADDI t6, sp, 0
  ADD s0, t6, s5
  LW s0, 0(s0)
  SUBW s0, a0, s0
  ADDIW s1, s1, 1
  JAL zero, bb19
bb23:   # loop depth 1
  LUI t6, 20
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  ADD s0, t6, s4
  LW s4, 0(s0)
  ADD s0, a0, zero
  LUI a0, 1
  ADDIW a0, a0, 904
  ADD s3, zero, a0
  # implict jump to bb24
bb24:   # loop depth 2
  ADDW a0, s0, s4
  SLLIW s0, s3, 2
  ADDI t6, sp, 0
  ADD s0, t6, s0
  LW s0, 0(s0)
  SUBW s0, a0, s0
  ADDIW s3, s3, 1
  LUI a0, 2
  ADDIW a0, a0, 1808
  SLT a0, s3, a0
  BNE a0, zero, bb26
  # implict jump to bb25
bb25:   # loop depth 1
  ADD a0, s0, zero
  CALL putint
  ADD a0, s0, zero
  JAL zero, bb12
bb26:   # loop depth 2
  JAL zero, bb24
bb27:   # loop depth 1
  LUI t6, 20
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  ADD s0, t6, s4
  LW s0, 0(s0)
  ADDW a0, a0, s0
  ADDI s0, zero, 1333
  REMW s0, a0, s0
  ADD a0, s0, zero
  CALL putint
  ADD a0, s0, zero
  JAL zero, bb13
bb28:   # loop depth 1
  JAL zero, bb5
bb29:   # loop depth 1
  JAL zero, bb3
bb30:   # loop depth 1
  JAL zero, bb1
