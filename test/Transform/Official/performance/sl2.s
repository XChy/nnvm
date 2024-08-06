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
  ADD s3, a0, zero
  CALL getint
  ADD s4, a0, zero
  ADDI a0, zero, 13
  CALL _sysy_starttime
  ADDI s6, zero, 0
  BLT s6, s3, bb18
  # implict jump to bb1
bb1:   # loop depth 0
  ADDIW s5, s3, -1
  ADDI a0, zero, 1
  BLT a0, s5, bb4
  # implict jump to bb2
bb2:   # loop depth 0
  LUI a0, 352
  ADDIW a0, a0, -1792
  ADD s2, zero, a0
  ADDI s1, zero, 1
  # implict jump to bb3
bb3:   # loop depth 0
  ADDI a0, zero, 53
  CALL _sysy_stoptime
  ADD a0, s3, zero
  LA a1, x
  CALL putarray
  SRAIW a0, s3, 31
  SRLIW a0, a0, 31
  ADD a0, s3, a0
  SRAIW a0, a0, 1
  LUI a1, 352
  ADDIW a1, a1, -1792
  MULW a1, a0, a1
  LA s4, x
  ADD a1, s4, a1
  LUI s4, 1
  ADDIW s4, s4, -1696
  MULW a0, a0, s4
  ADD a1, a1, a0
  ADD a0, s3, zero
  CALL putarray
  ADDIW a0, s1, -1
  LA a1, x
  ADD a1, a1, s2
  LUI s0, 1
  ADDIW s0, s0, -1696
  MULW a0, a0, s0
  ADD a0, a1, a0
  LUI a1, 1048224
  ADDIW a1, a1, 1792
  ADD a1, a0, a1
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
  ADDIW a0, a0, -1792
  ADD s2, zero, a0
  ADDI a0, zero, 1
  # implict jump to bb5
bb5:   # loop depth 1
  SW a0, 0(sp)
  ADDI a0, zero, 1
  SW a0, 4(sp)
  LW a0, 4(sp)
  BLT a0, s5, bb10
  # implict jump to bb6
bb6:   # loop depth 1
  ADDI s1, zero, 1
  # implict jump to bb7
bb7:   # loop depth 1
  LW a0, 0(sp)
  ADDIW a0, a0, 1
  LUI s0, 352
  ADDIW s0, s0, -1792
  MULW s2, a0, s0
  BLT a0, s5, bb9
  # implict jump to bb8
bb8:   # loop depth 1
  JAL zero, bb3
bb9:   # loop depth 1
  JAL zero, bb5
bb10:   # loop depth 1
  ADDI s1, zero, 1
  # implict jump to bb11
bb11:   # loop depth 2
  LW a0, 4(sp)
  BLT a0, s5, bb15
  # implict jump to bb12
bb12:   # loop depth 2
  ADDIW s1, s1, 1
  BLT s1, s5, bb14
  # implict jump to bb13
bb13:   # loop depth 2
  JAL zero, bb7
bb14:   # loop depth 2
  JAL zero, bb11
bb15:   # loop depth 2
  LA s0, x
  ADD s0, s0, s2
  LUI s6, 1
  ADDIW s6, s6, -1696
  MULW s6, s1, s6
  ADD s6, s0, s6
  LUI s0, 1048224
  ADDIW s0, s0, 1792
  ADD s7, s6, s0
  LUI s0, 352
  ADDIW s0, s0, -1792
  ADD s8, s6, s0
  ADDI s0, zero, 1
  # implict jump to bb16
bb16:   # loop depth 3
  SLLIW s9, s0, 2
  ADD s10, s6, s9
  ADD s11, s7, s9
  LW s11, 0(s11)
  ADD s9, s8, s9
  LW s9, 0(s9)
  ADDW s9, s11, s9
  LUI s11, 1048575
  ADDIW s11, s11, 1696
  ADD s11, s10, s11
  LW s11, 0(s11)
  ADDW s9, s9, s11
  LUI s11, 1
  ADDIW s11, s11, -1696
  ADD s11, s10, s11
  LW s11, 0(s11)
  ADDW s9, s9, s11
  ADDIW s11, s0, -1
  SLLIW s11, s11, 2
  ADD s11, s6, s11
  LW s11, 0(s11)
  ADDW s9, s9, s11
  ADDIW s0, s0, 1
  SLLIW s11, s0, 2
  ADD s11, s6, s11
  LW s11, 0(s11)
  ADDW s9, s9, s11
  DIVW s9, s9, s4
  SW s9, 0(s10)
  BLT s0, s5, bb17
  JAL zero, bb12
bb17:   # loop depth 3
  JAL zero, bb16
bb18:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb19
bb19:   # loop depth 1
  BLT s6, s3, bb22
  # implict jump to bb20
bb20:   # loop depth 1
  ADDIW s1, s1, 1
  BLT s1, s3, bb21
  JAL zero, bb1
bb21:   # loop depth 1
  JAL zero, bb19
bb22:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb23
bb23:   # loop depth 2
  BLT s6, s3, bb26
  # implict jump to bb24
bb24:   # loop depth 2
  ADDIW s0, s0, 1
  BLT s0, s3, bb25
  JAL zero, bb20
bb25:   # loop depth 2
  JAL zero, bb23
bb26:   # loop depth 2
  LUI a0, 352
  ADDIW a0, a0, -1792
  MULW a0, s1, a0
  LA s2, x
  ADD a0, s2, a0
  LUI s2, 1
  ADDIW s2, s2, -1696
  MULW s2, s0, s2
  ADD s2, a0, s2
  ADD a0, zero, zero
  # implict jump to bb27
bb27:   # loop depth 3
  SLLIW s5, a0, 2
  ADD s5, s2, s5
  ADDI s7, zero, 1
  SW s7, 0(s5)
  ADDIW a0, a0, 1
  BLT a0, s3, bb28
  JAL zero, bb24
bb28:   # loop depth 3
  JAL zero, bb27
