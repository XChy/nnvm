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
  LA s3, x
  CALL getint
  ADD s0, a0, zero
  ADDI s1, zero, 0
  CALL getint
  ADD s2, a0, zero
  ADDI a0, zero, 13
  CALL _sysy_starttime
  BLT s1, s0, bb18
  # implict jump to bb1
bb1:   # loop depth 0
  ADDI a5, zero, 1
  ADDIW a2, s0, -1
  BLT a5, a2, bb4
  # implict jump to bb2
bb2:   # loop depth 0
  LUI t0, 352
  ADDI t1, zero, 1
  ADDIW t0, t0, -1792
  ADD a0, zero, t0
  # implict jump to bb3
bb3:   # loop depth 0
  SRAIW t0, s0, 31
  LUI t2, 352
  SRLIW t0, t0, 31
  LUI a2, 1
  ADD t0, s0, t0
  LUI a1, 1
  ADDIW t2, t2, -1792
  SRAIW t0, t0, 1
  ADDIW a2, a2, -1696
  ADDIW a1, a1, -1696
  MULW t2, t0, t2
  MULW a2, t1, a2
  MULW t1, t0, a1
  LUI s1, 1048224
  ADD a1, s3, a0
  ADD t0, s3, t2
  ADDI a0, zero, 53
  ADDIW s1, s1, -608
  ADD s2, a1, a2
  ADD s4, t0, t1
  CALL _sysy_stoptime
  ADD s1, s2, s1
  ADD a1, s3, zero
  ADD a0, s0, zero
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
  LUI t1, 703
  ADDIW t0, t0, -1792
  ADDIW t1, t1, 512
  ADDI a1, zero, 1
  ADD t0, zero, t0
  ADD a0, zero, t1
  # implict jump to bb5
bb5:   # loop depth 1
  BLT a5, a2, bb10
  # implict jump to bb6
bb6:   # loop depth 1
  ADDI t1, zero, 1
  # implict jump to bb7
bb7:   # loop depth 1
  LUI t0, 352
  ADDIW a1, a1, 1
  ADDIW t0, t0, -1792
  ADDW t2, a0, t0
  BLT a1, a2, bb9
  # implict jump to bb8
bb8:   # loop depth 0
  JAL zero, bb3
bb9:   # loop depth 1
  ADD t0, a0, zero
  ADD a0, t2, zero
  JAL zero, bb5
bb10:   # loop depth 1
  LUI t2, 1
  ADDI t1, zero, 1
  ADDIW t2, t2, -1696
  ADD a3, s3, t0
  ADD t2, zero, t2
  # implict jump to bb11
bb11:   # loop depth 2
  BLT a5, a2, bb15
  # implict jump to bb12
bb12:   # loop depth 2
  LUI t0, 1
  ADDIW t1, t1, 1
  ADDIW t0, t0, -1696
  ADDW t2, t2, t0
  BLT t1, a2, bb14
  # implict jump to bb13
bb13:   # loop depth 1
  JAL zero, bb7
bb14:   # loop depth 2
  JAL zero, bb11
bb15:   # loop depth 2
  ADDI t0, zero, 1
  ADD a4, a3, t2
  # implict jump to bb16
bb16:   # loop depth 3
  LUI a7, 1048224
  ADDIW a7, a7, 1792
  SH2ADD a6, t0, a4
  ADD a7, a6, a7
  LUI t3, 352
  LW a7, 0(a7)
  ADDIW t3, t3, -1792
  ADD t3, a6, t3
  LUI t4, 1048575
  ADDIW t4, t4, 1696
  LUI t5, 1
  LW t3, 0(t3)
  ADD t4, a6, t4
  ADDIW t5, t5, -1696
  ADDIW t0, t0, 1
  ADD t5, a6, t5
  LW t4, 0(t4)
  ADDW a7, a7, t3
  LW t3, 0(t5)
  ADDW a7, a7, t4
  LW t4, -4(a6)
  ADDW a7, a7, t3
  LW t3, 4(a6)
  ADDW a7, a7, t4
  ADDW a7, a7, t3
  DIVW a7, a7, s2
  SW a7, 0(a6)
  BLT t0, a2, bb17
  JAL zero, bb12
bb17:   # loop depth 3
  JAL zero, bb16
bb18:   # loop depth 0
  ADD a0, zero, zero
  ADD a1, zero, zero
  # implict jump to bb19
bb19:   # loop depth 1
  BLT s1, s0, bb22
  # implict jump to bb20
bb20:   # loop depth 1
  LUI t0, 352
  ADDIW a0, a0, 1
  ADDIW t0, t0, -1792
  ADDW a1, a1, t0
  BLT a0, s0, bb21
  JAL zero, bb1
bb21:   # loop depth 1
  JAL zero, bb19
bb22:   # loop depth 1
  ADD t1, zero, zero
  ADD t2, zero, zero
  ADD a2, s3, a1
  # implict jump to bb23
bb23:   # loop depth 2
  BLT s1, s0, bb26
  # implict jump to bb24
bb24:   # loop depth 2
  LUI t0, 1
  ADDIW t1, t1, 1
  ADDIW t0, t0, -1696
  ADDW t2, t2, t0
  BLT t1, s0, bb25
  JAL zero, bb20
bb25:   # loop depth 2
  JAL zero, bb23
bb26:   # loop depth 2
  ADD t0, zero, zero
  ADD a3, a2, t2
  # implict jump to bb27
bb27:   # loop depth 3
  ADDI a5, zero, 1
  SH2ADD a4, t0, a3
  ADDIW t0, t0, 1
  SW a5, 0(a4)
  BLT t0, s0, bb28
  JAL zero, bb24
bb28:   # loop depth 3
  JAL zero, bb27
