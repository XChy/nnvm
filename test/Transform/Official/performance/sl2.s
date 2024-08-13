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
  ADDI sp, sp, -112
  SD s5, 8(sp)
  SD s6, 16(sp)
  SD s7, 24(sp)
  SD s8, 32(sp)
  SD s9, 40(sp)
  SD s10, 48(sp)
  SD s11, 56(sp)
  SD ra, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  SD s4, 104(sp)
  CALL getint
  ADDI s7, zero, 0
  ADD s3, a0, zero
  CALL getint
  ADD s4, a0, zero
  ADDI a0, zero, 13
  CALL _sysy_starttime
  BLT s7, s3, bb18
  # implict jump to bb1
bb1:   # loop depth 0
  ADDI a0, zero, 1
  SW a0, 4(sp)
  ADDIW s6, s3, -1
  LW a0, 4(sp)
  BLT a0, s6, bb4
  # implict jump to bb2
bb2:   # loop depth 0
  LUI a0, 352
  ADDI s1, zero, 1
  ADDIW a0, a0, -1792
  ADD a0, zero, a0
  # implict jump to bb3
bb3:   # loop depth 0
  SRAIW s2, s3, 31
  LUI s4, 352
  SRLIW s2, s2, 31
  LUI s5, 1
  ADD s2, s3, s2
  LUI s7, 1
  ADDIW s4, s4, -1792
  SRAIW s2, s2, 1
  ADDIW s5, s5, -1696
  ADDIW s7, s7, -1696
  MULW s4, s2, s4
  MULW s6, s1, s5
  LA s5, x
  MULW s2, s2, s7
  LA s1, x
  LA s0, x
  LUI s7, 1048224
  ADD s5, s5, a0
  ADD s1, s1, s4
  ADDI a0, zero, 53
  ADDIW s7, s7, -608
  ADD s4, s5, s6
  ADD s1, s1, s2
  CALL _sysy_stoptime
  ADD a1, s0, zero
  ADD a0, s3, zero
  ADD s0, s4, s7
  CALL putarray
  ADD a1, s1, zero
  ADD a0, s3, zero
  CALL putarray
  ADD a1, s0, zero
  ADD a0, s3, zero
  CALL putarray
  ADD a0, zero, zero
  LD s5, 8(sp)
  LD s6, 16(sp)
  LD s7, 24(sp)
  LD s8, 32(sp)
  LD s9, 40(sp)
  LD s10, 48(sp)
  LD s11, 56(sp)
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb4:   # loop depth 0
  LUI a0, 352
  ADDI s2, zero, 1
  ADDIW a0, a0, -1792
  ADD a0, zero, a0
  # implict jump to bb5
bb5:   # loop depth 1
  SW s2, 0(sp)
  LW s0, 4(sp)
  BLT s0, s6, bb10
  # implict jump to bb6
bb6:   # loop depth 1
  ADDI s1, zero, 1
  # implict jump to bb7
bb7:   # loop depth 1
  LUI s5, 352
  LW a0, 0(sp)
  ADDIW s2, a0, 1
  ADDIW s5, s5, -1792
  MULW a0, s2, s5
  BLT s2, s6, bb9
  # implict jump to bb8
bb8:   # loop depth 0
  JAL zero, bb3
bb9:   # loop depth 1
  JAL zero, bb5
bb10:   # loop depth 1
  LA s2, x
  ADDI s1, zero, 1
  ADD s2, s2, a0
  # implict jump to bb11
bb11:   # loop depth 2
  LW a0, 4(sp)
  BLT a0, s6, bb15
  # implict jump to bb12
bb12:   # loop depth 2
  ADDIW s1, s1, 1
  BLT s1, s6, bb14
  # implict jump to bb13
bb13:   # loop depth 1
  JAL zero, bb7
bb14:   # loop depth 2
  JAL zero, bb11
bb15:   # loop depth 2
  LUI s5, 1
  ADDI a0, zero, 1
  ADDIW s5, s5, -1696
  MULW s5, s1, s5
  ADD s5, s2, s5
  # implict jump to bb16
bb16:   # loop depth 3
  LUI s8, 1048224
  ADDIW s8, s8, 1792
  SH2ADD s7, a0, s5
  ADD s8, s7, s8
  LUI s9, 352
  LW s8, 0(s8)
  ADDIW s9, s9, -1792
  ADD s9, s7, s9
  LUI s10, 1048575
  ADDIW s10, s10, 1696
  LUI s11, 1
  LW s9, 0(s9)
  ADD s10, s7, s10
  ADDIW s11, s11, -1696
  ADDIW a0, a0, 1
  ADD s11, s7, s11
  LW s10, 0(s10)
  ADDW s8, s8, s9
  LW s9, 0(s11)
  ADDW s8, s8, s10
  LW s10, -4(s7)
  ADDW s8, s8, s9
  LW s9, 4(s7)
  ADDW s8, s8, s10
  ADDW s8, s8, s9
  DIVW s8, s8, s4
  SW s8, 0(s7)
  BLT a0, s6, bb17
  JAL zero, bb12
bb17:   # loop depth 3
  JAL zero, bb16
bb18:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb19
bb19:   # loop depth 1
  BLT s7, s3, bb22
  # implict jump to bb20
bb20:   # loop depth 1
  ADDIW s1, s1, 1
  BLT s1, s3, bb21
  JAL zero, bb1
bb21:   # loop depth 1
  JAL zero, bb19
bb22:   # loop depth 1
  LUI s2, 352
  LA s5, x
  ADDIW s2, s2, -1792
  ADD s0, zero, zero
  MULW s2, s1, s2
  ADD s2, s5, s2
  # implict jump to bb23
bb23:   # loop depth 2
  BLT s7, s3, bb26
  # implict jump to bb24
bb24:   # loop depth 2
  ADDIW s0, s0, 1
  BLT s0, s3, bb25
  JAL zero, bb20
bb25:   # loop depth 2
  JAL zero, bb23
bb26:   # loop depth 2
  LUI s5, 1
  ADD a0, zero, zero
  ADDIW s5, s5, -1696
  MULW s5, s0, s5
  ADD s5, s2, s5
  # implict jump to bb27
bb27:   # loop depth 3
  ADDI s8, zero, 1
  SH2ADD s6, a0, s5
  ADDIW a0, a0, 1
  SW s8, 0(s6)
  BLT a0, s3, bb28
  JAL zero, bb24
bb28:   # loop depth 3
  JAL zero, bb27
