.global main
.section .bss
.section .data
.section .text
main:
  LUI t0, 1048547
  ADDIW t0, t0, -1264
  ADD sp, sp, t0
  LUI t5, 29
  ADDIW t5, t5, 1216
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1224
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1232
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1240
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI a0, 29
  ADDIW a0, a0, 1248
  ADD a0, a0, sp
  SD s3, 0(a0)
  LUI a0, 29
  ADDIW a0, a0, 1256
  ADD a0, a0, sp
  SD s4, 0(a0)
  ADD a0, zero, zero
  # implict jump to bb1
bb1:
  SLLIW s0, a0, 2
  ADDI t5, sp, 0
  ADD s0, t5, s0
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
bb2:
  ADD a0, zero, zero
  # implict jump to bb3
bb3:
  SLLIW s0, a0, 2
  LUI t5, 10
  ADDIW t5, t5, -960
  ADD t5, t5, sp
  ADD s1, t5, s0
  ADDI t5, sp, 0
  ADD s0, t5, s0
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
bb4:
  ADD a0, zero, zero
  # implict jump to bb5
bb5:
  SLLIW s0, a0, 2
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD s1, t5, s0
  LUI t5, 10
  ADDIW t5, t5, -960
  ADD t5, t5, sp
  ADD s2, t5, s0
  LW s2, 0(s2)
  MULW s2, s2, s2
  ADDI s3, zero, 100
  REMW s2, s2, s3
  ADDI t5, sp, 0
  ADD s0, t5, s0
  LW s0, 0(s0)
  ADDW s0, s2, s0
  SW s0, 0(s1)
  ADDIW a0, a0, 1
  LUI s0, 2
  ADDIW s0, s0, 1808
  SLT s0, a0, s0
  BNE s0, zero, bb28
  # implict jump to bb6
bb6:
  ADD s0, zero, zero
  ADD s3, zero, zero
  ADD s1, zero, zero
  ADD a0, zero, zero
  # implict jump to bb7
bb7:
  ADD s2, a0, zero
  ADD a0, s3, zero
  SLTI s3, s0, 10
  BNE s3, zero, bb27
  # implict jump to bb8
bb8:
  SLTI s3, s0, 20
  BNE s3, zero, bb23
  # implict jump to bb9
bb9:
  SLTI s3, s0, 30
  BNE s3, zero, bb16
  # implict jump to bb10
bb10:
  SLLIW s3, s0, 2
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD s3, t5, s3
  LW s3, 0(s3)
  ADDI s4, zero, 9
  MULW s3, s3, s4
  ADDW a0, a0, s3
  LUI s3, 24
  ADDIW s3, s3, 1684
  REMW a0, a0, s3
  ADD s4, s2, zero
  # implict jump to bb11
bb11:
  ADD s2, a0, zero
  ADD a0, s4, zero
  # implict jump to bb12
bb12:
  # implict jump to bb13
bb13:
  ADDIW s0, s0, 1
  LUI s3, 2
  ADDIW s3, s3, 1808
  SLT s3, s0, s3
  BNE s3, zero, bb15
  # implict jump to bb14
bb14:
  ADD a0, s2, zero
  LUI ra, 29
  ADDIW ra, ra, 1216
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 29
  ADDIW t5, t5, 1224
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1232
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1240
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1248
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t5, 29
  ADDIW t5, t5, 1256
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t0, 29
  ADDIW t0, t0, 1264
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb15:
  ADD s3, s2, zero
  JAL zero, bb7
bb16:
  LUI s2, 1
  ADDIW s2, s2, 904
  ADD s2, zero, s2
  # implict jump to bb17
bb17:
  LUI s3, 1
  ADDIW s3, s3, -1863
  SLT s3, s3, s2
  BNE s3, zero, bb22
  # implict jump to bb18
bb18:
  SLLIW s3, s0, 2
  ADDI t5, sp, 0
  ADD s3, t5, s3
  LW s3, 0(s3)
  ADDW a0, a0, s3
  SLLIW s3, s2, 2
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD s3, t5, s3
  LW s3, 0(s3)
  ADDW a0, a0, s3
  LUI s3, 3
  ADDIW s3, s3, 1045
  REMW a0, a0, s3
  ADDIW s2, s2, 2
  # implict jump to bb19
bb19:
  ADD s3, a0, zero
  LUI a0, 2
  ADDIW a0, a0, 1808
  SLT a0, s2, a0
  BNE a0, zero, bb21
  # implict jump to bb20
bb20:
  ADD a0, s3, zero
  CALL putint
  ADD s4, s2, zero
  ADD a0, s3, zero
  JAL zero, bb11
bb21:
  ADD a0, s3, zero
  JAL zero, bb17
bb22:
  SLLIW s3, s0, 2
  LUI t5, 10
  ADDIW t5, t5, -960
  ADD t5, t5, sp
  ADD s3, t5, s3
  LW s3, 0(s3)
  ADDW a0, a0, s3
  SLLIW s3, s2, 2
  ADDI t5, sp, 0
  ADD s3, t5, s3
  LW s3, 0(s3)
  SUBW a0, a0, s3
  ADDIW s2, s2, 1
  JAL zero, bb19
bb23:
  SLLIW s1, s0, 2
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD s1, t5, s1
  LW s1, 0(s1)
  LUI s3, 1
  ADDIW s3, s3, 904
  ADD s3, zero, s3
  # implict jump to bb24
bb24:
  ADDW a0, a0, s1
  SLLIW s4, s3, 2
  ADDI t5, sp, 0
  ADD s4, t5, s4
  LW s4, 0(s4)
  SUBW s4, a0, s4
  ADDIW s3, s3, 1
  LUI a0, 2
  ADDIW a0, a0, 1808
  SLT a0, s3, a0
  BNE a0, zero, bb26
  # implict jump to bb25
bb25:
  ADD a0, s4, zero
  CALL putint
  ADD a0, s2, zero
  ADD s1, s3, zero
  ADD s2, s4, zero
  JAL zero, bb12
bb26:
  ADD a0, s4, zero
  JAL zero, bb24
bb27:
  SLLIW s3, s0, 2
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD s3, t5, s3
  LW s3, 0(s3)
  ADDW a0, a0, s3
  ADDI s3, zero, 1333
  REMW s3, a0, s3
  ADD a0, s3, zero
  CALL putint
  ADD a0, s2, zero
  ADD s2, s3, zero
  JAL zero, bb13
bb28:
  JAL zero, bb5
bb29:
  JAL zero, bb3
bb30:
  JAL zero, bb1
