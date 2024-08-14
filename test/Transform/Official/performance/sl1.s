.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
y:
.space 864000000
x:
.space 864000000
.section .data


.section .text
main:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  CALL getint
  ADDI s1, zero, 0
  ADD s0, a0, zero
  CALL getint
  ADD s2, a0, zero
  ADDI a0, zero, 13
  CALL _sysy_starttime
  BLT s1, s0, bb18
  # implict jump to bb1
bb1:   # loop depth 0
  ADDI a6, zero, 1
  ADDIW a0, s0, -1
  BLT a6, a0, bb4
  # implict jump to bb2
bb2:   # loop depth 0
  LUI t0, 352
  ADDI t1, zero, 1
  ADDIW t0, t0, -1792
  ADD t0, zero, t0
  # implict jump to bb3
bb3:   # loop depth 0
  SRAIW t2, s0, 31
  LUI a0, 352
  SRLIW t2, t2, 31
  LUI a1, 1
  ADD t2, s0, t2
  LUI a2, 1
  ADDIW a0, a0, -1792
  SRAIW t2, t2, 1
  ADDIW a1, a1, -1696
  ADDIW a2, a2, -1696
  MULW a0, t2, a0
  MULW a1, t1, a1
  LA a3, x
  MULW t1, t2, a2
  LA a2, x
  LA s3, x
  LUI s1, 1048224
  ADD t2, a3, t0
  ADD t0, a2, a0
  ADDI a0, zero, 53
  ADDIW s1, s1, -608
  ADD s2, t2, a1
  ADD s4, t0, t1
  CALL _sysy_stoptime
  ADD a1, s3, zero
  ADD a0, s0, zero
  ADD s1, s2, s1
  CALL putarray
  ADD a1, s4, zero
  ADD a0, s0, zero
  CALL putarray
  ADD a1, s1, zero
  ADD a0, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb4:   # loop depth 0
  LUI t0, 352
  ADDI t2, zero, 1
  ADDIW t0, t0, -1792
  ADD t0, zero, t0
  # implict jump to bb5
bb5:   # loop depth 1
  BLT a6, a0, bb10
  # implict jump to bb6
bb6:   # loop depth 1
  ADDI t1, zero, 1
  # implict jump to bb7
bb7:   # loop depth 1
  LUI t0, 352
  ADDIW t2, t2, 1
  ADDIW t0, t0, -1792
  MULW t0, t2, t0
  BLT t2, a0, bb9
  # implict jump to bb8
bb8:   # loop depth 0
  JAL zero, bb3
bb9:   # loop depth 1
  JAL zero, bb5
bb10:   # loop depth 1
  LA a1, x
  ADDI t1, zero, 1
  ADD a1, a1, t0
  # implict jump to bb11
bb11:   # loop depth 2
  BLT a6, a0, bb15
  # implict jump to bb12
bb12:   # loop depth 2
  ADDIW t1, t1, 1
  BLT t1, a0, bb14
  # implict jump to bb13
bb13:   # loop depth 1
  JAL zero, bb7
bb14:   # loop depth 2
  JAL zero, bb11
bb15:   # loop depth 2
  LUI a2, 1
  ADDI t0, zero, 1
  ADDIW a2, a2, -1696
  MULW a2, t1, a2
  ADD a2, a1, a2
  # implict jump to bb16
bb16:   # loop depth 3
  LUI a4, 1048224
  ADDIW a4, a4, 1792
  SH2ADD a3, t0, a2
  ADD a4, a3, a4
  LUI a5, 352
  LW a4, 0(a4)
  ADDIW a5, a5, -1792
  ADD a5, a3, a5
  LUI a7, 1048575
  ADDIW a7, a7, 1696
  LUI t3, 1
  LW a5, 0(a5)
  ADD a7, a3, a7
  ADDIW t3, t3, -1696
  ADDIW t0, t0, 1
  ADD t3, a3, t3
  LW a7, 0(a7)
  ADDW a4, a4, a5
  LW a5, 0(t3)
  ADDW a4, a4, a7
  LW a7, -4(a3)
  ADDW a4, a4, a5
  LW a5, 4(a3)
  ADDW a4, a4, a7
  ADDW a4, a4, a5
  DIVW a4, a4, s2
  SW a4, 0(a3)
  BLT t0, a0, bb17
  JAL zero, bb12
bb17:   # loop depth 3
  JAL zero, bb16
bb18:   # loop depth 0
  ADD t2, zero, zero
  # implict jump to bb19
bb19:   # loop depth 1
  BLT s1, s0, bb22
  # implict jump to bb20
bb20:   # loop depth 1
  ADDIW t2, t2, 1
  BLT t2, s0, bb21
  JAL zero, bb1
bb21:   # loop depth 1
  JAL zero, bb19
bb22:   # loop depth 1
  LUI t0, 352
  LA a0, x
  ADDIW t0, t0, -1792
  ADD t1, zero, zero
  MULW t0, t2, t0
  ADD a0, a0, t0
  # implict jump to bb23
bb23:   # loop depth 2
  BLT s1, s0, bb26
  # implict jump to bb24
bb24:   # loop depth 2
  ADDIW t1, t1, 1
  BLT t1, s0, bb25
  JAL zero, bb20
bb25:   # loop depth 2
  JAL zero, bb23
bb26:   # loop depth 2
  LUI a1, 1
  ADD t0, zero, zero
  ADDIW a1, a1, -1696
  MULW a1, t1, a1
  ADD a1, a0, a1
  # implict jump to bb27
bb27:   # loop depth 3
  ADDI a3, zero, 1
  SH2ADD a2, t0, a1
  ADDIW t0, t0, 1
  SW a3, 0(a2)
  BLT t0, s0, bb28
  JAL zero, bb24
bb28:   # loop depth 3
  JAL zero, bb27
