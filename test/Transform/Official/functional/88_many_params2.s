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
  SD s4, 40(sp)
  LUI a0, 1
  ADDIW a0, a0, -9
  ADD a0, zero, a0
  # implict jump to bb1
bb1:   # loop depth 1
  ADDIW a0, a0, -1
  BNE a0, zero, bb14
  # implict jump to bb2
bb2:   # loop depth 0
  LUI a0, 1
  ADDIW a0, a0, -969
  ADD a0, zero, a0
  # implict jump to bb3
bb3:   # loop depth 1
  SLLIW s0, a0, 2
  ADDIW a0, a0, -1
  ADDI t6, sp, 48
  ADD s0, t6, s0
  SW zero, -4(s0)
  BNE a0, zero, bb13
  # implict jump to bb4
bb4:   # loop depth 0
  ADDI a0, zero, 1
  ADDI s0, zero, 2
  SW a0, 1468(sp)
  ADDI a0, zero, 3
  SW s0, 1472(sp)
  ADDI s0, zero, 9
  SW a0, 1476(sp)
  LUI a0, 2
  SW s0, 1500(sp)
  ADDIW a0, a0, -152
  LW s2, 1464(sp)
  ADDI t6, sp, 48
  ADD a0, t6, a0
  LUI s0, 3
  ADDIW s0, s0, -180
  LW s1, 0(a0)
  ADDI a0, sp, 48
  ADD s0, a0, s0
  ADD a0, s2, zero
  LW s0, 0(s0)
  CALL putint
  SLTI s3, s0, 10
  ADDI a0, zero, 1
  CALL putint
  ADDI a0, zero, 2
  CALL putint
  ADDI a0, zero, 3
  CALL putint
  LW a0, 1480(sp)
  CALL putint
  LW a0, 1484(sp)
  CALL putint
  LW a0, 1488(sp)
  CALL putint
  LW a0, 1492(sp)
  CALL putint
  LW a0, 1496(sp)
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
  ADDIW a0, s2, 3
  ADDI s0, zero, 3
  MULW s0, a0, s0
  SLT a0, s0, zero
  XORI a0, a0, 1
  BNE a0, zero, bb7
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
  LD s4, 40(sp)
  LUI t0, 3
  ADDIW t0, t0, 272
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb7:   # loop depth 0
  # implict jump to bb8
bb8:   # loop depth 1
  SLLIW a0, s0, 2
  ADDIW s0, s0, -1
  ADDI t6, sp, 48
  ADD a0, t6, a0
  SLT s1, s0, zero
  LW a0, 1416(a0)
  XORI s1, s1, 1
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  BNE s1, zero, bb9
  JAL zero, bb6
bb9:   # loop depth 1
  JAL zero, bb8
bb10:   # loop depth 0
  # implict jump to bb11
bb11:   # loop depth 1
  LUI a0, 31
  ADDIW a0, a0, 1899
  LUI s4, 1
  MULW s3, s1, a0
  ADDIW s4, s4, -372
  ADDIW s1, s1, 7
  SLLIW a0, s0, 2
  ADDIW s0, s0, 1
  REMW s3, s3, s4
  ADDI t6, sp, 48
  ADD a0, t6, a0
  SLTI s4, s0, 10
  SW s3, 1416(a0)
  BNE s4, zero, bb12
  JAL zero, bb5
bb12:   # loop depth 1
  JAL zero, bb11
bb13:   # loop depth 1
  JAL zero, bb3
bb14:   # loop depth 1
  JAL zero, bb1
