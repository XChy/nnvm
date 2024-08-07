.global main
.section .bss
stddev:
.space 3200
corr:
.space 2560000
data:
.space 2560000
mean:
.space 3200


.section .data




n:
.word 0x00000320
m:
.word 0x00000320
.section .text
main:   # loop depth 0
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s8, 8(sp)
  SD s9, 16(sp)
  SD s10, 24(sp)
  SD s11, 32(sp)
  SD s0, 40(sp)
  SD s1, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s5, 80(sp)
  SD s6, 88(sp)
  SD s7, 96(sp)
  LA a0, data
  CALL getarray
  ADDI a0, zero, 79
  CALL _sysy_starttime
  LA a0, m
  LW a0, 0(a0)
  LA s0, n
  LW s0, 0(s0)
  ADDI s3, zero, 0
  BLT s3, a0, bb38
  # implict jump to bb1
bb1:   # loop depth 0
  BLT s3, a0, bb28
  # implict jump to bb2
bb2:   # loop depth 0
  BLT zero, s0, bb21
  # implict jump to bb3
bb3:   # loop depth 0
  ADDIW s11, a0, -1
  BLT zero, s11, bb5
  # implict jump to bb4
bb4:   # loop depth 0
  LUI s0, 1
  ADDIW s0, s0, -896
  MULW a0, a0, s0
  LA s0, corr
  ADD a0, s0, a0
  SLLIW s0, s11, 2
  ADD a0, a0, s0
  LUI s0, 1048575
  ADDIW s0, s0, 896
  ADD a0, a0, s0
  ADDI s0, zero, 1
  SW s0, 0(a0)
  ADDI a0, zero, 81
  CALL _sysy_stoptime
  LA a0, m
  LW a0, 0(a0)
  MULW a0, a0, a0
  LA a1, corr
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s8, 8(sp)
  LD s9, 16(sp)
  LD s10, 24(sp)
  LD s11, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s5, 80(sp)
  LD s6, 88(sp)
  LD s7, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb5:   # loop depth 0
  ADD s2, zero, zero
  ADD s4, zero, zero
  # implict jump to bb6
bb6:   # loop depth 1
  LUI s1, 1
  ADDIW s1, s1, -896
  MULW s1, s2, s1
  LA s3, corr
  ADD s10, s3, s1
  SLLIW s1, s2, 2
  ADD s3, s10, s1
  ADDI s5, zero, 1
  SW s5, 0(s3)
  ADDIW s2, s2, 1
  BLT s2, a0, bb11
  # implict jump to bb7
bb7:   # loop depth 1
  # implict jump to bb8
bb8:   # loop depth 1
  BLT s2, s11, bb10
  # implict jump to bb9
bb9:   # loop depth 0
  JAL zero, bb4
bb10:   # loop depth 1
  JAL zero, bb6
bb11:   # loop depth 1
  ADD s3, s2, zero
  # implict jump to bb12
bb12:   # loop depth 2
  SLLIW s4, s3, 2
  ADD s5, s10, s4
  SW zero, 0(s5)
  BLT zero, s0, bb17
  # implict jump to bb13
bb13:   # loop depth 2
  ADD s4, zero, zero
  # implict jump to bb14
bb14:   # loop depth 2
  LUI s6, 1
  ADDIW s6, s6, -896
  MULW s6, s3, s6
  LA s7, corr
  ADD s6, s7, s6
  ADD s6, s6, s1
  LW s5, 0(s5)
  SW s5, 0(s6)
  ADDIW s3, s3, 1
  BLT s3, a0, bb16
  # implict jump to bb15
bb15:   # loop depth 1
  JAL zero, bb8
bb16:   # loop depth 2
  JAL zero, bb12
bb17:   # loop depth 2
  ADD s6, zero, zero
  ADD s7, zero, zero
  # implict jump to bb18
bb18:   # loop depth 3
  LUI s8, 1
  ADDIW s8, s8, -896
  MULW s8, s7, s8
  LA s9, data
  ADD s8, s9, s8
  ADD s9, s8, s1
  LW s9, 0(s9)
  ADD s8, s8, s4
  LW s8, 0(s8)
  MULW s8, s9, s8
  ADDW s6, s6, s8
  ADDIW s7, s7, 1
  BLT s7, s0, bb20
  # implict jump to bb19
bb19:   # loop depth 2
  SW s6, 0(s5)
  ADD s4, s7, zero
  JAL zero, bb14
bb20:   # loop depth 3
  JAL zero, bb18
bb21:   # loop depth 0
  ADD s2, zero, zero
  # implict jump to bb22
bb22:   # loop depth 1
  BLT s3, a0, bb25
  # implict jump to bb23
bb23:   # loop depth 1
  ADDIW s2, s2, 1
  BLT s2, s0, bb24
  JAL zero, bb3
bb24:   # loop depth 1
  JAL zero, bb22
bb25:   # loop depth 1
  LUI s1, 1
  ADDIW s1, s1, -896
  MULW s1, s2, s1
  LA s4, data
  ADD s4, s4, s1
  MULW s5, s0, s0
  ADD s1, zero, zero
  # implict jump to bb26
bb26:   # loop depth 2
  SLLIW s6, s1, 2
  ADD s7, s4, s6
  LW s8, 0(s7)
  LA s9, mean
  ADD s9, s9, s6
  LW s9, 0(s9)
  SUBW s8, s8, s9
  SW s8, 0(s7)
  LA s9, stddev
  ADD s6, s9, s6
  LW s6, 0(s6)
  MULW s6, s5, s6
  DIVW s6, s8, s6
  SW s6, 0(s7)
  ADDIW s1, s1, 1
  BLT s1, a0, bb27
  JAL zero, bb23
bb27:   # loop depth 2
  JAL zero, bb26
bb28:   # loop depth 0
  ADD s4, zero, zero
  # implict jump to bb29
bb29:   # loop depth 1
  SLLIW s5, s4, 2
  LA s1, stddev
  ADD s6, s1, s5
  SW zero, 0(s6)
  BLT zero, s0, bb34
  # implict jump to bb30
bb30:   # loop depth 1
  LW s1, 0(s6)
  DIVW s1, s1, s0
  SW s1, 0(s6)
  MULW s1, s1, s1
  SW s1, 0(s6)
  ADDI s2, zero, 1
  SLT s1, s2, s1
  XORI s1, s1, 1
  BNE s1, zero, bb33
  # implict jump to bb31
bb31:   # loop depth 1
  ADDIW s4, s4, 1
  BLT s4, a0, bb32
  JAL zero, bb2
bb32:   # loop depth 1
  JAL zero, bb29
bb33:   # loop depth 1
  ADDI s1, zero, 1
  SW s1, 0(s6)
  JAL zero, bb31
bb34:   # loop depth 1
  LA s1, mean
  ADD s1, s1, s5
  LW s7, 0(s1)
  ADD s2, zero, zero
  ADD s1, zero, zero
  # implict jump to bb35
bb35:   # loop depth 2
  LUI s8, 1
  ADDIW s8, s8, -896
  MULW s8, s1, s8
  LA s9, data
  ADD s8, s9, s8
  ADD s8, s8, s5
  LW s8, 0(s8)
  SUBW s8, s8, s7
  MULW s8, s8, s8
  ADDW s2, s2, s8
  ADDIW s1, s1, 1
  BLT s1, s0, bb37
  # implict jump to bb36
bb36:   # loop depth 1
  SW s2, 0(s6)
  JAL zero, bb30
bb37:   # loop depth 2
  JAL zero, bb35
bb38:   # loop depth 0
  ADDI s7, zero, 0
  ADD s4, zero, zero
  # implict jump to bb39
bb39:   # loop depth 1
  SLLIW s5, s4, 2
  LA s1, mean
  ADD s6, s1, s5
  SW zero, 0(s6)
  BLT s7, s0, bb42
  # implict jump to bb40
bb40:   # loop depth 1
  LW s1, 0(s6)
  DIVW s1, s1, s0
  SW s1, 0(s6)
  ADDIW s4, s4, 1
  BLT s4, a0, bb41
  JAL zero, bb1
bb41:   # loop depth 1
  JAL zero, bb39
bb42:   # loop depth 1
  ADD s2, zero, zero
  ADD s1, zero, zero
  # implict jump to bb43
bb43:   # loop depth 2
  LUI s8, 1
  ADDIW s8, s8, -896
  MULW s8, s1, s8
  LA s9, data
  ADD s8, s9, s8
  ADD s8, s8, s5
  LW s8, 0(s8)
  ADDW s2, s2, s8
  ADDIW s1, s1, 1
  BLT s1, s0, bb45
  # implict jump to bb44
bb44:   # loop depth 1
  SW s2, 0(s6)
  JAL zero, bb40
bb45:   # loop depth 2
  JAL zero, bb43
