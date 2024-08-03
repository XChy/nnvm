.global main
.section .bss
.section .data
.section .text
main:
  LUI t0, 1048547
  ADDIW t0, t0, -1280
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
  LUI t5, 29
  ADDIW t5, t5, 1248
  ADD t5, t5, sp
  SD s3, 0(t5)
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
bb1:
  ADD s1, a0, zero
  SLLIW a0, s1, 2
  ADDI t5, sp, 0
  ADD s2, t5, a0
  MULW s0, s1, s1
  ADDI a0, zero, 10
  REMW a0, s0, a0
  SW a0, 0(s2)
  ADDIW s0, s1, 1
  LUI a0, 2
  ADDIW a0, a0, 1808
  SLT a0, s0, a0
  BNE a0, zero, bb33
  # implict jump to bb2
bb2:
  ADD a0, zero, zero
  # implict jump to bb3
bb3:
  ADD s2, a0, zero
  SLLIW a0, s2, 2
  LUI t5, 10
  ADDIW t5, t5, -960
  ADD t5, t5, sp
  ADD s0, t5, a0
  ADDI t5, sp, 0
  ADD a0, t5, a0
  LW a0, 0(a0)
  MULW s1, a0, a0
  ADDI a0, zero, 10
  REMW a0, s1, a0
  SW a0, 0(s0)
  ADDIW s0, s2, 1
  LUI a0, 2
  ADDIW a0, a0, 1808
  SLT a0, s0, a0
  BNE a0, zero, bb32
  # implict jump to bb4
bb4:
  ADD a0, zero, zero
  # implict jump to bb5
bb5:
  ADD s3, a0, zero
  SLLIW s1, s3, 2
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD s2, t5, s1
  LUI a0, 10
  ADDIW a0, a0, -960
  ADD a0, a0, sp
  ADD a0, a0, s1
  LW a0, 0(a0)
  MULW s0, a0, a0
  ADDI a0, zero, 100
  REMW s0, s0, a0
  ADDI a0, sp, 0
  ADD a0, a0, s1
  LW a0, 0(a0)
  ADDW a0, s0, a0
  SW a0, 0(s2)
  ADDIW s0, s3, 1
  LUI a0, 2
  ADDIW a0, a0, 1808
  SLT a0, s0, a0
  BNE a0, zero, bb31
  # implict jump to bb6
bb6:
  ADD a0, zero, zero
  ADD s4, zero, zero
  ADD s1, zero, zero
  ADD s0, zero, zero
  # implict jump to bb7
bb7:
  ADD s3, s0, zero
  ADD s2, s1, zero
  ADD s1, s4, zero
  ADD s0, a0, zero
  SLTI a0, s0, 10
  BNE a0, zero, bb30
  # implict jump to bb8
bb8:
  SLTI a0, s0, 20
  BNE a0, zero, bb25
  # implict jump to bb9
bb9:
  SLTI a0, s0, 30
  BNE a0, zero, bb17
  # implict jump to bb10
bb10:
  SLLIW a0, s0, 2
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD a0, t5, a0
  LW s4, 0(a0)
  ADDI a0, zero, 9
  MULW a0, s4, a0
  ADDW s1, s1, a0
  LUI a0, 24
  ADDIW a0, a0, 1684
  REMW s1, s1, a0
  ADD a0, s3, zero
  # implict jump to bb11
bb11:
  ADD s4, s1, zero
  ADD s3, a0, zero
  ADD s1, s2, zero
  ADD a0, s4, zero
  # implict jump to bb12
bb12:
  ADD s4, a0, zero
  ADD a0, s3, zero
  ADD s2, s1, zero
  ADD s1, s4, zero
  # implict jump to bb13
bb13:
  ADD s3, s1, zero
  ADD s1, s2, zero
  ADD s2, a0, zero
  ADDIW s0, s0, 1
  LUI a0, 2
  ADDIW a0, a0, 1808
  SLT a0, s0, a0
  BNE a0, zero, bb16
  # implict jump to bb14
bb14:
  # implict jump to bb15
bb15:
  ADD a0, s3, zero
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
  LUI t5, 29
  ADDIW t5, t5, 1264
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t0, 29
  ADDIW t0, t0, 1280
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb16:
  ADD a0, s0, zero
  ADD s4, s3, zero
  ADD s0, s2, zero
  JAL zero, bb7
bb17:
  LUI a0, 1
  ADDIW a0, a0, 904
  ADD a0, zero, a0
  # implict jump to bb18
bb18:
  ADD s3, a0, zero
  LUI a0, 1
  ADDIW a0, a0, -1863
  SLT a0, a0, s3
  BNE a0, zero, bb24
  # implict jump to bb19
bb19:
  SLLIW a0, s0, 2
  ADDI t5, sp, 0
  ADD a0, t5, a0
  LW a0, 0(a0)
  ADDW s1, s1, a0
  SLLIW a0, s3, 2
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD a0, t5, a0
  LW a0, 0(a0)
  ADDW s1, s1, a0
  LUI a0, 3
  ADDIW a0, a0, 1045
  REMW s1, s1, a0
  ADDIW a0, s3, 2
  # implict jump to bb20
bb20:
  ADD s3, a0, zero
  LUI a0, 2
  ADDIW a0, a0, 1808
  SLT a0, s3, a0
  BNE a0, zero, bb23
  # implict jump to bb21
bb21:
  # implict jump to bb22
bb22:
  ADD a0, s1, zero
  CALL putint
  ADD a0, s3, zero
  JAL zero, bb11
bb23:
  ADD a0, s3, zero
  JAL zero, bb18
bb24:
  SLLIW a0, s0, 2
  LUI t5, 10
  ADDIW t5, t5, -960
  ADD t5, t5, sp
  ADD a0, t5, a0
  LW a0, 0(a0)
  ADDW s1, s1, a0
  SLLIW a0, s3, 2
  ADDI t5, sp, 0
  ADD a0, t5, a0
  LW a0, 0(a0)
  SUBW s1, s1, a0
  ADDIW a0, s3, 1
  JAL zero, bb20
bb25:
  SLLIW a0, s0, 2
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD a0, t5, a0
  LW s4, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 904
  ADD a0, zero, a0
  # implict jump to bb26
bb26:
  ADD s2, a0, zero
  ADD a0, s1, zero
  ADDW s1, a0, s4
  SLLIW a0, s2, 2
  ADDI t5, sp, 0
  ADD a0, t5, a0
  LW a0, 0(a0)
  SUBW s5, s1, a0
  ADDIW s2, s2, 1
  LUI a0, 2
  ADDIW a0, a0, 1808
  SLT a0, s2, a0
  BNE a0, zero, bb29
  # implict jump to bb27
bb27:
  # implict jump to bb28
bb28:
  ADD a0, s5, zero
  CALL putint
  ADD s1, s2, zero
  ADD a0, s5, zero
  JAL zero, bb12
bb29:
  ADD s1, s5, zero
  ADD a0, s2, zero
  JAL zero, bb26
bb30:
  SLLIW a0, s0, 2
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD a0, t5, a0
  LW a0, 0(a0)
  ADDW s1, s1, a0
  ADDI a0, zero, 1333
  REMW s1, s1, a0
  ADD a0, s1, zero
  CALL putint
  ADD a0, s3, zero
  JAL zero, bb13
bb31:
  ADD a0, s0, zero
  JAL zero, bb5
bb32:
  ADD a0, s0, zero
  JAL zero, bb3
bb33:
  ADD a0, s0, zero
  JAL zero, bb1
