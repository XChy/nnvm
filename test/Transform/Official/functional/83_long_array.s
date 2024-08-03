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
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 0
  ADD s2, t5, a0
  MULW s1, s0, s0
  ADDI a0, zero, 10
  REMW a0, s1, a0
  SW a0, 0(s2)
  ADDIW s0, s0, 1
  LUI a0, 2
  ADDIW a0, a0, 1808
  SLT a0, s0, a0
  BNE a0, zero, bb30
  # implict jump to bb2
bb2:
  ADD a0, zero, zero
  # implict jump to bb3
bb3:
  ADD s1, a0, zero
  SLLIW a0, s1, 2
  LUI t5, 10
  ADDIW t5, t5, -960
  ADD t5, t5, sp
  ADD s2, t5, a0
  ADDI t5, sp, 0
  ADD a0, t5, a0
  LW a0, 0(a0)
  MULW s0, a0, a0
  ADDI a0, zero, 10
  REMW a0, s0, a0
  SW a0, 0(s2)
  ADDIW s0, s1, 1
  LUI a0, 2
  ADDIW a0, a0, 1808
  SLT a0, s0, a0
  BNE a0, zero, bb29
  # implict jump to bb4
bb4:
  ADD a0, zero, zero
  # implict jump to bb5
bb5:
  ADD s0, a0, zero
  SLLIW s2, s0, 2
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD s1, t5, s2
  LUI a0, 10
  ADDIW a0, a0, -960
  ADD a0, a0, sp
  ADD a0, a0, s2
  LW a0, 0(a0)
  MULW s3, a0, a0
  ADDI a0, zero, 100
  REMW s3, s3, a0
  ADDI a0, sp, 0
  ADD a0, a0, s2
  LW a0, 0(a0)
  ADDW a0, s3, a0
  SW a0, 0(s1)
  ADDIW s0, s0, 1
  LUI a0, 2
  ADDIW a0, a0, 1808
  SLT a0, s0, a0
  BNE a0, zero, bb28
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
  ADD s0, s4, zero
  ADD s1, a0, zero
  SLTI a0, s1, 10
  BNE a0, zero, bb27
  # implict jump to bb8
bb8:
  SLTI a0, s1, 20
  BNE a0, zero, bb23
  # implict jump to bb9
bb9:
  SLTI a0, s1, 30
  BNE a0, zero, bb16
  # implict jump to bb10
bb10:
  SLLIW a0, s1, 2
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD a0, t5, a0
  LW s4, 0(a0)
  ADDI a0, zero, 9
  MULW a0, s4, a0
  ADDW s0, s0, a0
  LUI a0, 24
  ADDIW a0, a0, 1684
  REMW a0, s0, a0
  ADD s0, s3, zero
  # implict jump to bb11
bb11:
  ADD s3, s0, zero
  ADD s0, s2, zero
  # implict jump to bb12
bb12:
  ADD s4, a0, zero
  ADD a0, s3, zero
  ADD s2, s0, zero
  ADD s0, s4, zero
  # implict jump to bb13
bb13:
  ADD s3, s0, zero
  ADD s0, a0, zero
  ADDIW s1, s1, 1
  LUI a0, 2
  ADDIW a0, a0, 1808
  SLT a0, s1, a0
  BNE a0, zero, bb15
  # implict jump to bb14
bb14:
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
bb15:
  ADD a0, s1, zero
  ADD s4, s3, zero
  ADD s1, s2, zero
  JAL zero, bb7
bb16:
  LUI a0, 1
  ADDIW a0, a0, 904
  ADD a0, zero, a0
  # implict jump to bb17
bb17:
  ADD s4, a0, zero
  LUI a0, 1
  ADDIW a0, a0, -1863
  SLT a0, a0, s4
  BNE a0, zero, bb22
  # implict jump to bb18
bb18:
  SLLIW a0, s1, 2
  ADDI t5, sp, 0
  ADD a0, t5, a0
  LW a0, 0(a0)
  ADDW s0, s0, a0
  SLLIW a0, s4, 2
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD a0, t5, a0
  LW a0, 0(a0)
  ADDW s0, s0, a0
  LUI a0, 3
  ADDIW a0, a0, 1045
  REMW s3, s0, a0
  ADDIW a0, s4, 2
  ADD s0, a0, zero
  ADD a0, s3, zero
  # implict jump to bb19
bb19:
  ADD s3, a0, zero
  ADD s4, s0, zero
  LUI a0, 2
  ADDIW a0, a0, 1808
  SLT a0, s4, a0
  BNE a0, zero, bb21
  # implict jump to bb20
bb20:
  ADD a0, s3, zero
  CALL putint
  ADD s0, s4, zero
  ADD a0, s3, zero
  JAL zero, bb11
bb21:
  ADD s0, s3, zero
  ADD a0, s4, zero
  JAL zero, bb17
bb22:
  SLLIW a0, s1, 2
  LUI t5, 10
  ADDIW t5, t5, -960
  ADD t5, t5, sp
  ADD a0, t5, a0
  LW a0, 0(a0)
  ADDW s0, s0, a0
  SLLIW a0, s4, 2
  ADDI t5, sp, 0
  ADD a0, t5, a0
  LW a0, 0(a0)
  SUBW s3, s0, a0
  ADDIW a0, s4, 1
  ADD s0, a0, zero
  ADD a0, s3, zero
  JAL zero, bb19
bb23:
  SLLIW a0, s1, 2
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD a0, t5, a0
  LW s2, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 904
  ADD a0, zero, a0
  # implict jump to bb24
bb24:
  ADD s5, a0, zero
  ADD a0, s0, zero
  ADDW s0, a0, s2
  SLLIW a0, s5, 2
  ADDI t5, sp, 0
  ADD a0, t5, a0
  LW a0, 0(a0)
  SUBW s4, s0, a0
  ADDIW s5, s5, 1
  LUI a0, 2
  ADDIW a0, a0, 1808
  SLT a0, s5, a0
  BNE a0, zero, bb26
  # implict jump to bb25
bb25:
  ADD a0, s4, zero
  CALL putint
  ADD s0, s5, zero
  ADD a0, s4, zero
  JAL zero, bb12
bb26:
  ADD s0, s4, zero
  ADD a0, s5, zero
  JAL zero, bb24
bb27:
  SLLIW a0, s1, 2
  LUI t5, 20
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  ADD a0, t5, a0
  LW a0, 0(a0)
  ADDW s0, s0, a0
  ADDI a0, zero, 1333
  REMW s0, s0, a0
  ADD a0, s0, zero
  CALL putint
  ADD a0, s3, zero
  JAL zero, bb13
bb28:
  ADD a0, s0, zero
  JAL zero, bb5
bb29:
  ADD a0, s0, zero
  JAL zero, bb3
bb30:
  ADD a0, s0, zero
  JAL zero, bb1
