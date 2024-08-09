.global main
.section .bss
y:
.space 864000000
x:
.space 864000000
.section .data


.section .text
main:   # loop depth 0
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s5, 16(sp)
  SD s6, 24(sp)
  SD s7, 32(sp)
  SD s8, 40(sp)
  SD s9, 48(sp)
  SD s10, 56(sp)
  SD s0, 64(sp)
  SD s1, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s1, a0, zero
  ADDI a0, zero, 13
  CALL _sysy_starttime
  ADDI s4, zero, 0
  BLT s4, s0, bb18
  # implict jump to bb1
bb1:   # loop depth 0
  ADDIW a0, s0, -1
  ADDI s9, zero, 1
  BLT s9, a0, bb4
  # implict jump to bb2
bb2:   # loop depth 0
  LUI a0, 352
  ADDIW a0, a0, -1792
  ADD s2, zero, a0
  ADDI s3, zero, 1
  # implict jump to bb3
bb3:   # loop depth 0
  ADDI a0, zero, 53
  CALL _sysy_stoptime
  ADD a0, s0, zero
  LA a1, x
  CALL putarray
  SRAIW a0, s0, 31
  SRLIW a0, a0, 31
  ADD a0, s0, a0
  SRAIW a0, a0, 1
  LUI a1, 352
  ADDIW a1, a1, -1792
  MULW a1, a0, a1
  LA s1, x
  ADD a1, s1, a1
  LUI s1, 1
  ADDIW s1, s1, -1696
  MULW a0, a0, s1
  ADD a1, a1, a0
  ADD a0, s0, zero
  CALL putarray
  LA a0, x
  ADD a0, a0, s2
  LUI a1, 1
  ADDIW a1, a1, -1696
  MULW a1, s3, a1
  ADD a0, a0, a1
  LUI a1, 1048224
  ADDIW a1, a1, -608
  ADD a1, a0, a1
  ADD a0, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s5, 16(sp)
  LD s6, 24(sp)
  LD s7, 32(sp)
  LD s8, 40(sp)
  LD s9, 48(sp)
  LD s10, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb4:   # loop depth 0
  LUI s2, 352
  ADDIW s2, s2, -1792
  ADD s2, zero, s2
  ADDI s4, zero, 1
  # implict jump to bb5
bb5:   # loop depth 1
  ADD s10, s4, zero
  BLT s9, a0, bb10
  # implict jump to bb6
bb6:   # loop depth 1
  ADDI s3, zero, 1
  # implict jump to bb7
bb7:   # loop depth 1
  ADDIW s4, s10, 1
  LUI s2, 352
  ADDIW s2, s2, -1792
  MULW s2, s4, s2
  BLT s4, a0, bb9
  # implict jump to bb8
bb8:   # loop depth 0
  JAL zero, bb3
bb9:   # loop depth 1
  JAL zero, bb5
bb10:   # loop depth 1
  ADDI s3, zero, 1
  # implict jump to bb11
bb11:   # loop depth 2
  BLT s9, a0, bb15
  # implict jump to bb12
bb12:   # loop depth 2
  ADDIW s3, s3, 1
  BLT s3, a0, bb14
  # implict jump to bb13
bb13:   # loop depth 1
  JAL zero, bb7
bb14:   # loop depth 2
  JAL zero, bb11
bb15:   # loop depth 2
  LA s4, x
  ADD s4, s4, s2
  LUI s5, 1
  ADDIW s5, s5, -1696
  MULW s5, s3, s5
  ADD s4, s4, s5
  ADDI s5, zero, 1
  # implict jump to bb16
bb16:   # loop depth 3
  SLLIW s6, s5, 2
  ADD s6, s4, s6
  LUI s7, 1048224
  ADDIW s7, s7, 1792
  ADD s7, s6, s7
  LW s7, 0(s7)
  LUI s8, 352
  ADDIW s8, s8, -1792
  ADD s8, s6, s8
  LW s8, 0(s8)
  ADDW s7, s7, s8
  LUI s8, 1048575
  ADDIW s8, s8, 1696
  ADD s8, s6, s8
  LW s8, 0(s8)
  ADDW s7, s7, s8
  LUI s8, 1
  ADDIW s8, s8, -1696
  ADD s8, s6, s8
  LW s8, 0(s8)
  ADDW s7, s7, s8
  LW s8, -4(s6)
  ADDW s7, s7, s8
  ADDIW s5, s5, 1
  LW s8, 4(s6)
  ADDW s7, s7, s8
  DIVW s7, s7, s1
  SW s7, 0(s6)
  BLT s5, a0, bb17
  JAL zero, bb12
bb17:   # loop depth 3
  JAL zero, bb16
bb18:   # loop depth 0
  ADD s3, zero, zero
  # implict jump to bb19
bb19:   # loop depth 1
  BLT s4, s0, bb22
  # implict jump to bb20
bb20:   # loop depth 1
  ADDIW s3, s3, 1
  BLT s3, s0, bb21
  JAL zero, bb1
bb21:   # loop depth 1
  JAL zero, bb19
bb22:   # loop depth 1
  ADD s2, zero, zero
  # implict jump to bb23
bb23:   # loop depth 2
  BLT s4, s0, bb26
  # implict jump to bb24
bb24:   # loop depth 2
  ADDIW s2, s2, 1
  BLT s2, s0, bb25
  JAL zero, bb20
bb25:   # loop depth 2
  JAL zero, bb23
bb26:   # loop depth 2
  LUI a0, 352
  ADDIW a0, a0, -1792
  MULW a0, s3, a0
  LA s5, x
  ADD a0, s5, a0
  LUI s5, 1
  ADDIW s5, s5, -1696
  MULW s5, s2, s5
  ADD s5, a0, s5
  ADD a0, zero, zero
  # implict jump to bb27
bb27:   # loop depth 3
  SLLIW s6, a0, 2
  ADD s6, s5, s6
  ADDI s7, zero, 1
  SW s7, 0(s6)
  ADDIW a0, a0, 1
  BLT a0, s0, bb28
  JAL zero, bb24
bb28:   # loop depth 3
  JAL zero, bb27
