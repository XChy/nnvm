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
  ADDI s6, zero, 0
  ADD s4, a0, zero
  CALL getint
  ADD s5, a0, zero
  ADDI a0, zero, 13
  CALL _sysy_starttime
  BLT s6, s4, bb18
  # implict jump to bb1
bb1:   # loop depth 0
  ADDIW s7, s4, -1
  ADDI a0, zero, 1
  SW a0, 4(sp)
  LW a0, 4(sp)
  BLT a0, s7, bb4
  # implict jump to bb2
bb2:   # loop depth 0
  LUI s0, 352
  ADDI s1, zero, 1
  ADDIW s0, s0, -1792
  ADD s2, zero, s0
  # implict jump to bb3
bb3:   # loop depth 0
  SRAIW s3, s4, 31
  LUI s5, 352
  SRLIW s3, s3, 31
  LUI s6, 1
  ADD s3, s4, s3
  LUI s7, 1
  ADDIW s5, s5, -1792
  SRAIW s3, s3, 1
  ADDIW s6, s6, -1696
  ADDIW s7, s7, -1696
  MULW s5, s3, s5
  LA s8, x
  LA s10, x
  MULW s6, s3, s6
  MULW s7, s1, s7
  LA s3, x
  ADDI a0, zero, 53
  LUI s9, 1048224
  ADD s1, s8, s5
  ADD s0, s10, s2
  CALL _sysy_stoptime
  ADDIW s9, s9, -608
  ADD s0, s0, s7
  ADD s1, s1, s6
  ADD a0, s4, zero
  ADD a1, s3, zero
  ADD s0, s0, s9
  CALL putarray
  ADD a0, s4, zero
  ADD a1, s1, zero
  CALL putarray
  ADD a0, s4, zero
  ADD a1, s0, zero
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
  ADDI s3, zero, 1
  ADDIW a0, a0, -1792
  ADD s2, zero, a0
  # implict jump to bb5
bb5:   # loop depth 1
  SW s3, 0(sp)
  LW a0, 4(sp)
  BLT a0, s7, bb10
  # implict jump to bb6
bb6:   # loop depth 1
  ADDI s1, zero, 1
  # implict jump to bb7
bb7:   # loop depth 1
  LUI s6, 352
  LW a0, 0(sp)
  ADDIW s3, a0, 1
  ADDIW s6, s6, -1792
  MULW s2, s3, s6
  BLT s3, s7, bb9
  # implict jump to bb8
bb8:   # loop depth 0
  JAL zero, bb3
bb9:   # loop depth 1
  JAL zero, bb5
bb10:   # loop depth 1
  ADDI s1, zero, 1
  # implict jump to bb11
bb11:   # loop depth 2
  LW a0, 4(sp)
  BLT a0, s7, bb15
  # implict jump to bb12
bb12:   # loop depth 2
  ADDIW s1, s1, 1
  BLT s1, s7, bb14
  # implict jump to bb13
bb13:   # loop depth 1
  JAL zero, bb7
bb14:   # loop depth 2
  JAL zero, bb11
bb15:   # loop depth 2
  LUI s6, 1
  LA s3, x
  ADDIW s6, s6, -1696
  ADDI s0, zero, 1
  MULW s6, s1, s6
  ADD s3, s3, s2
  ADD s3, s3, s6
  # implict jump to bb16
bb16:   # loop depth 3
  LUI s8, 1048224
  SLLIW s6, s0, 2
  ADDIW s8, s8, 1792
  ADD s6, s3, s6
  LUI s9, 352
  ADD s8, s6, s8
  ADDIW s9, s9, -1792
  LW s8, 0(s8)
  ADD s9, s6, s9
  LUI s10, 1048575
  LUI s11, 1
  ADDIW s10, s10, 1696
  ADDIW s11, s11, -1696
  LW s9, 0(s9)
  ADD s10, s6, s10
  ADD s11, s6, s11
  ADDIW s0, s0, 1
  LW s10, 0(s10)
  ADDW s8, s8, s9
  LW s9, 0(s11)
  ADDW s8, s8, s10
  LW s10, -4(s6)
  ADDW s8, s8, s9
  LW s9, 4(s6)
  ADDW s8, s8, s10
  ADDW s8, s8, s9
  DIVW s8, s8, s5
  SW s8, 0(s6)
  BLT s0, s7, bb17
  JAL zero, bb12
bb17:   # loop depth 3
  JAL zero, bb16
bb18:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb19
bb19:   # loop depth 1
  BLT s6, s4, bb22
  # implict jump to bb20
bb20:   # loop depth 1
  ADDIW s1, s1, 1
  BLT s1, s4, bb21
  JAL zero, bb1
bb21:   # loop depth 1
  JAL zero, bb19
bb22:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb23
bb23:   # loop depth 2
  BLT s6, s4, bb26
  # implict jump to bb24
bb24:   # loop depth 2
  ADDIW s0, s0, 1
  BLT s0, s4, bb25
  JAL zero, bb20
bb25:   # loop depth 2
  JAL zero, bb23
bb26:   # loop depth 2
  LUI a0, 352
  LUI s3, 1
  ADDIW a0, a0, -1792
  ADDIW s3, s3, -1696
  MULW s2, s1, a0
  LA s7, x
  MULW s3, s0, s3
  ADD a0, zero, zero
  ADD s2, s7, s2
  ADD s2, s2, s3
  # implict jump to bb27
bb27:   # loop depth 3
  ADDI s7, zero, 1
  SLLIW s3, a0, 2
  ADDIW a0, a0, 1
  ADD s3, s2, s3
  SW s7, 0(s3)
  BLT a0, s4, bb28
  JAL zero, bb24
bb28:   # loop depth 3
  JAL zero, bb27
