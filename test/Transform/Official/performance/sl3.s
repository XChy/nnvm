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
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  LUI s1, 352
  LUI s6, 1
  LA s5, x
  CALL getint
  ADD s0, a0, zero
  ADDIW s1, s1, -1792
  ADDIW s6, s6, -1696
  ADDI s3, zero, 0
  ADD s2, zero, s1
  CALL getint
  ADD s4, a0, zero
  ADD s1, zero, s6
  ADDI a0, zero, 13
  CALL _sysy_starttime
  BLT s3, s0, bb18
  # implict jump to bb1
bb1:   # loop depth 0
  ADDI a3, zero, 1
  ADDIW a2, s0, -1
  BLT a3, a2, bb4
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI t1, zero, 1
  ADD a0, s2, zero
  # implict jump to bb3
bb3:   # loop depth 0
  SRAIW t0, s0, 31
  SRLIW t0, t0, 31
  MULW t2, t1, s1
  ADD t0, s0, t0
  SRAIW t0, t0, 1
  LUI s3, 1048224
  MULW t1, t0, s2
  MULW s2, t0, s1
  ADD t0, s5, a0
  ADDI a0, zero, 53
  ADDIW s3, s3, -608
  ADD s4, t0, t2
  ADD s1, s5, t1
  CALL _sysy_stoptime
  ADD s2, s1, s2
  ADD a1, s5, zero
  ADD a0, s0, zero
  ADD s1, s4, s3
  CALL putarray
  ADD a1, s2, zero
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
  LD s5, 48(sp)
  LD s6, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb4:   # loop depth 0
  LUI t1, 703
  ADDI a1, zero, 1
  ADDIW t1, t1, 512
  ADD t0, s2, zero
  ADD a0, zero, t1
  # implict jump to bb5
bb5:   # loop depth 1
  BLT a3, a2, bb10
  # implict jump to bb6
bb6:   # loop depth 1
  ADDI t1, zero, 1
  # implict jump to bb7
bb7:   # loop depth 1
  ADDW t2, a0, s2
  ADDIW a1, a1, 1
  BLT a1, a2, bb9
  # implict jump to bb8
bb8:   # loop depth 0
  JAL zero, bb3
bb9:   # loop depth 1
  ADD t0, a0, zero
  ADD a0, t2, zero
  JAL zero, bb5
bb10:   # loop depth 1
  ADDI t1, zero, 1
  ADD t2, s1, zero
  ADD a4, s5, t0
  # implict jump to bb11
bb11:   # loop depth 2
  BLT a3, a2, bb15
  # implict jump to bb12
bb12:   # loop depth 2
  ADDW t2, t2, s1
  ADDIW t1, t1, 1
  BLT t1, a2, bb14
  # implict jump to bb13
bb13:   # loop depth 1
  JAL zero, bb7
bb14:   # loop depth 2
  JAL zero, bb11
bb15:   # loop depth 2
  ADDI t0, zero, 1
  ADD a5, a4, t2
  # implict jump to bb16
bb16:   # loop depth 3
  LUI a7, 1048224
  ADDIW a7, a7, 1792
  SH2ADD a6, t0, a5
  ADD a7, a6, a7
  ADD t3, a6, s2
  LW a7, 0(a7)
  LUI t4, 1048575
  ADDIW t4, t4, 1696
  ADD t5, a6, s1
  ADD t4, a6, t4
  ADDIW t0, t0, 1
  LW t3, 0(t3)
  LW t4, 0(t4)
  ADDW a7, a7, t3
  LW t3, 0(t5)
  ADDW a7, a7, t4
  LW t4, -4(a6)
  ADDW a7, a7, t3
  LW t3, 4(a6)
  ADDW a7, a7, t4
  ADDW a7, a7, t3
  DIVW a7, a7, s4
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
  BLT s3, s0, bb22
  # implict jump to bb20
bb20:   # loop depth 1
  ADDW a1, a1, s2
  ADDIW a0, a0, 1
  BLT a0, s0, bb21
  JAL zero, bb1
bb21:   # loop depth 1
  JAL zero, bb19
bb22:   # loop depth 1
  ADD t1, zero, zero
  ADD t2, zero, zero
  ADD a2, s5, a1
  # implict jump to bb23
bb23:   # loop depth 2
  BLT s3, s0, bb26
  # implict jump to bb24
bb24:   # loop depth 2
  ADDW t2, t2, s1
  ADDIW t1, t1, 1
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
