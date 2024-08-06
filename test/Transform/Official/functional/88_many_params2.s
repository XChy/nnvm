.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  LUI t0, 1048569
  ADDIW t0, t0, -256
  ADD sp, sp, t0
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  LUI a0, 1
  ADDIW a0, a0, -9
  ADD a0, zero, a0
  # implict jump to bb1
bb1:   # loop depth 1
  ADDI s0, zero, 1
  SUBW a0, a0, s0
  SLLIW s0, a0, 2
  ADDI t6, sp, 56
  ADD s0, t6, s0
  ADDI s1, zero, 0
  SW s1, 0(s0)
  BNE a0, zero, bb14
  # implict jump to bb2
bb2:   # loop depth 0
  LUI a0, 1
  ADDIW a0, a0, -969
  ADD a0, zero, a0
  # implict jump to bb3
bb3:   # loop depth 1
  ADDI s0, zero, 1
  SUBW a0, a0, s0
  SLLIW s0, a0, 2
  LUI t6, 4
  ADDIW t6, t6, 24
  ADD t6, t6, sp
  ADD s0, t6, s0
  SW zero, 0(s0)
  BNE a0, zero, bb13
  # implict jump to bb4
bb4:   # loop depth 0
  LUI a0, 1
  ADDIW a0, a0, 464
  ADDI t6, sp, 56
  ADD a0, t6, a0
  ADDI s0, zero, 6
  SW s0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 472
  ADDI t6, sp, 56
  ADD a0, t6, a0
  ADDI s0, zero, 7
  SW s0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 476
  ADDI t6, sp, 56
  ADD a0, t6, a0
  ADDI s0, zero, 4
  SW s0, 0(a0)
  LUI a0, 1
  ADDIW a0, a0, 488
  ADDI t6, sp, 56
  ADD s4, t6, a0
  ADDI a0, zero, 9
  SW a0, 0(s4)
  LUI a0, 1
  ADDIW a0, a0, 504
  ADDI t6, sp, 56
  ADD a0, t6, a0
  ADDI s0, zero, 11
  SW s0, 0(a0)
  ADDI a0, zero, 1
  LUI t6, 4
  ADDIW t6, t6, 24
  ADD t6, t6, sp
  SW a0, 1420(t6)
  ADDI a0, zero, 2
  LUI t6, 4
  ADDIW t6, t6, 24
  ADD t6, t6, sp
  SW a0, 1424(t6)
  ADDI a0, zero, 3
  LUI t6, 4
  ADDIW t6, t6, 24
  ADD t6, t6, sp
  SW a0, 1428(t6)
  ADDI a0, zero, 9
  LUI t6, 4
  ADDIW t6, t6, 24
  ADD t6, t6, sp
  SW a0, 1452(t6)
  LUI t6, 4
  ADDIW t6, t6, 24
  ADD t6, t6, sp
  ADDI s2, t6, 1416
  LUI t6, 4
  ADDIW t6, t6, 24
  ADD t6, t6, sp
  LW s3, 1416(t6)
  LUI a0, 2
  ADDIW a0, a0, -152
  LUI t6, 4
  ADDIW t6, t6, 24
  ADD t6, t6, sp
  ADD a0, t6, a0
  LW s1, 0(a0)
  LUI a0, 3
  ADDIW a0, a0, -180
  LUI t6, 4
  ADDIW t6, t6, 24
  ADD t6, t6, sp
  ADD a0, t6, a0
  LW s0, 0(a0)
  ADD a0, s3, zero
  CALL putint
  LUI a0, 4
  ADDIW a0, a0, 24
  ADD a0, a0, sp
  LW a0, 1420(a0)
  CALL putint
  LUI a0, 4
  ADDIW a0, a0, 24
  ADD a0, a0, sp
  LW a0, 1424(a0)
  CALL putint
  LUI a0, 4
  ADDIW a0, a0, 24
  ADD a0, a0, sp
  LW a0, 1428(a0)
  CALL putint
  LUI a0, 4
  ADDIW a0, a0, 24
  ADD a0, a0, sp
  LW a0, 1432(a0)
  CALL putint
  LUI a0, 4
  ADDIW a0, a0, 24
  ADD a0, a0, sp
  LW a0, 1436(a0)
  CALL putint
  LUI a0, 4
  ADDIW a0, a0, 24
  ADD a0, a0, sp
  LW a0, 1440(a0)
  CALL putint
  LUI a0, 4
  ADDIW a0, a0, 24
  ADD a0, a0, sp
  LW a0, 1444(a0)
  CALL putint
  LUI a0, 4
  ADDIW a0, a0, 24
  ADD a0, a0, sp
  LW a0, 1448(a0)
  CALL putint
  LUI a0, 4
  ADDIW a0, a0, 24
  ADD a0, a0, sp
  LW a0, 1452(a0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW a0, 0(s4)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  SLTI a0, s0, 10
  BNE a0, zero, bb10
  # implict jump to bb5
bb5:   # loop depth 0
  ADDIW a0, s3, 3
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
  LD s5, 48(sp)
  LUI t0, 7
  ADDIW t0, t0, 256
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb7:   # loop depth 0
  # implict jump to bb8
bb8:   # loop depth 1
  SLLIW a0, s0, 2
  ADD a0, s2, a0
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDI a0, zero, 1
  SUBW s0, s0, a0
  SLT a0, s0, zero
  XORI a0, a0, 1
  BNE a0, zero, bb9
  JAL zero, bb6
bb9:   # loop depth 0
  JAL zero, bb8
bb10:   # loop depth 0
  # implict jump to bb11
bb11:   # loop depth 1
  SLLIW a0, s0, 2
  ADD a0, s2, a0
  LUI s4, 31
  ADDIW s4, s4, 1899
  MULW s4, s1, s4
  LUI s5, 1
  ADDIW s5, s5, -372
  REMW s4, s4, s5
  SW s4, 0(a0)
  ADDIW s0, s0, 1
  ADDIW s1, s1, 7
  SLTI a0, s0, 10
  BNE a0, zero, bb12
  JAL zero, bb5
bb12:   # loop depth 0
  JAL zero, bb11
bb13:   # loop depth 1433463920
  JAL zero, bb3
bb14:   # loop depth 0
  JAL zero, bb1
