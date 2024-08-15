.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  LUI t0, 1048573
  ADDIW t0, t0, -272
  ADD sp, sp, t0
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  LUI t0, 1
  ADDIW t0, t0, -9
  ADD t0, zero, t0
  # implict jump to bb1
bb1:   # loop depth 1
  ADDIW t0, t0, -1
  BNE t0, zero, bb14
  # implict jump to bb2
bb2:   # loop depth 0
  LUI t0, 1
  ADDIW t0, t0, -969
  ADD t0, zero, t0
  # implict jump to bb3
bb3:   # loop depth 1
  SLLIW t1, t0, 2
  ADDIW t0, t0, -1
  ADDI t6, sp, 40
  ADD t1, t6, t1
  SW zero, -4(t1)
  BNE t0, zero, bb13
  # implict jump to bb4
bb4:   # loop depth 0
  ADDI t0, zero, 1
  ADDI t1, zero, 2
  SW t0, 1460(sp)
  ADDI t0, zero, 3
  SW t1, 1464(sp)
  ADDI t1, zero, 9
  SW t0, 1468(sp)
  LUI t0, 2
  SW t1, 1492(sp)
  ADDIW t0, t0, -152
  LW s1, 1456(sp)
  ADDI t1, sp, 40
  ADD t0, t1, t0
  LUI t1, 3
  ADDIW t1, t1, -180
  LW s2, 0(t0)
  ADDI t0, sp, 40
  ADD t0, t0, t1
  ADD a0, s1, zero
  LW s0, 0(t0)
  CALL putint
  SLTI s3, s0, 10
  ADDI a0, zero, 1
  CALL putint
  ADDI a0, zero, 2
  CALL putint
  ADDI a0, zero, 3
  CALL putint
  LW a0, 1472(sp)
  CALL putint
  LW a0, 1476(sp)
  CALL putint
  LW a0, 1480(sp)
  CALL putint
  LW a0, 1484(sp)
  CALL putint
  LW a0, 1488(sp)
  CALL putint
  ADDI a0, zero, 9
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 9
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  BNE s3, zero, bb10
  # implict jump to bb5
bb5:   # loop depth 0
  ADDI t1, zero, 3
  ADDIW t0, s1, 3
  MULW s0, t0, t1
  BGE s0, zero, bb7
  # implict jump to bb6
bb6:   # loop depth 0
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LUI t0, 3
  ADDIW t0, t0, 272
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb7:   # loop depth 0
  # implict jump to bb8
bb8:   # loop depth 1
  SLLIW t0, s0, 2
  ADDIW s0, s0, -1
  ADDI a0, sp, 40
  ADD t0, a0, t0
  LW a0, 1416(t0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  BGE s0, zero, bb9
  JAL zero, bb6
bb9:   # loop depth 1
  JAL zero, bb8
bb10:   # loop depth 0
  LUI t1, 31
  ADDIW t1, t1, 1899
  ADD t0, s2, zero
  MULW t1, s2, t1
  # implict jump to bb11
bb11:   # loop depth 1
  LUI t2, 1
  ADDIW t2, t2, -372
  REMW a0, t1, t2
  LUI a1, 220
  SLLIW t2, s0, 2
  ADDIW a1, a1, 1005
  ADDIW s0, s0, 1
  ADDI t6, sp, 40
  ADD t2, t6, t2
  ADDW t1, t1, a1
  SLTI a1, s0, 10
  ADDIW t0, t0, 7
  SW a0, 1416(t2)
  BNE a1, zero, bb12
  JAL zero, bb5
bb12:   # loop depth 1
  JAL zero, bb11
bb13:   # loop depth 1
  JAL zero, bb3
bb14:   # loop depth 1
  JAL zero, bb1
