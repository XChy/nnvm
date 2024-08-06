.global main
.section .bss
x:
.space 5600
b:
.space 5600
y:
.space 5600
A:
.space 7840000

.section .data




n:
.word 0x00000578
.section .text
main:   # loop depth 0
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s5, 8(sp)
  SD s6, 16(sp)
  SD s7, 24(sp)
  SD s8, 32(sp)
  SD s9, 40(sp)
  SD s10, 48(sp)
  SD s11, 56(sp)
  SD s0, 64(sp)
  SD s1, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
  LA a0, A
  CALL getarray
  LA a0, b
  CALL getarray
  LA a0, x
  CALL getarray
  LA a0, y
  CALL getarray
  ADDI a0, zero, 68
  CALL _sysy_starttime
  LA a0, n
  LW a0, 0(a0)
  ADDI s11, zero, 0
  BLT s11, a0, bb22
  # implict jump to bb1
bb1:   # loop depth 0
  BLT s11, a0, bb13
  # implict jump to bb2
bb2:   # loop depth 0
  ADDIW s2, a0, -1
  SLT s0, s2, zero
  XORI s0, s0, 1
  BNE s0, zero, bb4
  # implict jump to bb3
bb3:   # loop depth 0
  ADDI a0, zero, 71
  CALL _sysy_stoptime
  LA a0, n
  LW a0, 0(a0)
  LA a1, x
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s5, 8(sp)
  LD s6, 16(sp)
  LD s7, 24(sp)
  LD s8, 32(sp)
  LD s9, 40(sp)
  LD s10, 48(sp)
  LD s11, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb4:   # loop depth 0
  # implict jump to bb5
bb5:   # loop depth 1
  SLLIW s3, s2, 2
  LA s0, y
  ADD s0, s0, s3
  LW s0, 0(s0)
  ADDIW s1, s2, 1
  LUI s4, 1
  ADDIW s4, s4, 1504
  MULW s4, s2, s4
  BLT s1, a0, bb9
  # implict jump to bb6
bb6:   # loop depth 1
  # implict jump to bb7
bb7:   # loop depth 1
  LA s1, x
  ADD s1, s1, s3
  LA s5, A
  ADD s4, s5, s4
  ADD s3, s4, s3
  LW s3, 0(s3)
  DIVW s0, s0, s3
  SW s0, 0(s1)
  ADDIW s2, s2, -1
  SLT s0, s2, zero
  XORI s0, s0, 1
  BNE s0, zero, bb8
  JAL zero, bb3
bb8:   # loop depth 1
  JAL zero, bb5
bb9:   # loop depth 1
  # implict jump to bb10
bb10:   # loop depth 2
  LA s5, A
  ADD s5, s5, s4
  SLLIW s6, s1, 2
  ADD s5, s5, s6
  LW s5, 0(s5)
  LA s7, x
  ADD s6, s7, s6
  LW s6, 0(s6)
  MULW s5, s5, s6
  SUBW s0, s0, s5
  ADDIW s1, s1, 1
  BLT s1, a0, bb12
  # implict jump to bb11
bb11:   # loop depth 2
  JAL zero, bb7
bb12:   # loop depth 2
  JAL zero, bb10
bb13:   # loop depth 0
  ADD s2, zero, zero
  # implict jump to bb14
bb14:   # loop depth 1
  SLLIW s3, s2, 2
  LA s0, b
  ADD s0, s0, s3
  LW s0, 0(s0)
  BLT zero, s2, bb18
  # implict jump to bb15
bb15:   # loop depth 1
  # implict jump to bb16
bb16:   # loop depth 1
  LA s1, y
  ADD s1, s1, s3
  SW s0, 0(s1)
  ADDIW s2, s2, 1
  BLT s2, a0, bb17
  JAL zero, bb2
bb17:   # loop depth 1
  JAL zero, bb14
bb18:   # loop depth 1
  LUI s1, 1
  ADDIW s1, s1, 1504
  MULW s1, s2, s1
  LA s4, A
  ADD s4, s4, s1
  ADD s1, zero, zero
  # implict jump to bb19
bb19:   # loop depth 2
  SLLIW s5, s1, 2
  ADD s6, s4, s5
  LW s6, 0(s6)
  LA s7, y
  ADD s5, s7, s5
  LW s5, 0(s5)
  MULW s5, s6, s5
  SUBW s0, s0, s5
  ADDIW s1, s1, 1
  BLT s1, s2, bb21
  # implict jump to bb20
bb20:   # loop depth 2
  JAL zero, bb16
bb21:   # loop depth 2
  JAL zero, bb19
bb22:   # loop depth 0
  ADD s0, zero, zero
  ADD s3, zero, zero
  ADD s6, zero, zero
  # implict jump to bb23
bb23:   # loop depth 1
  LUI s1, 1
  ADDIW s1, s1, 1504
  MULW s10, s0, s1
  BLT zero, s0, bb39
  # implict jump to bb24
bb24:   # loop depth 1
  # implict jump to bb25
bb25:   # loop depth 1
  BLT s0, a0, bb29
  # implict jump to bb26
bb26:   # loop depth 1
  # implict jump to bb27
bb27:   # loop depth 1
  ADDIW s0, s0, 1
  BLT s0, a0, bb28
  JAL zero, bb1
bb28:   # loop depth 1
  JAL zero, bb23
bb29:   # loop depth 1
  LA s1, A
  ADD s1, s1, s10
  ADD s2, s0, zero
  # implict jump to bb30
bb30:   # loop depth 2
  SLLIW s3, s2, 2
  ADD s4, s1, s3
  LW s6, 0(s4)
  BLT zero, s0, bb35
  # implict jump to bb31
bb31:   # loop depth 2
  ADD s3, zero, zero
  # implict jump to bb32
bb32:   # loop depth 2
  SW s6, 0(s4)
  ADDIW s2, s2, 1
  BLT s2, a0, bb34
  # implict jump to bb33
bb33:   # loop depth 2
  JAL zero, bb27
bb34:   # loop depth 2
  JAL zero, bb30
bb35:   # loop depth 2
  ADD s5, zero, zero
  # implict jump to bb36
bb36:   # loop depth 3
  SLLIW s7, s5, 2
  ADD s7, s1, s7
  LW s7, 0(s7)
  LUI s8, 1
  ADDIW s8, s8, 1504
  MULW s8, s5, s8
  LA s9, A
  ADD s8, s9, s8
  ADD s8, s8, s3
  LW s8, 0(s8)
  MULW s7, s7, s8
  SUBW s6, s6, s7
  ADDIW s5, s5, 1
  BLT s5, s0, bb38
  # implict jump to bb37
bb37:   # loop depth 3
  ADD s3, s5, zero
  JAL zero, bb32
bb38:   # loop depth 3
  JAL zero, bb36
bb39:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb40
bb40:   # loop depth 2
  LA s2, A
  ADD s2, s2, s10
  SLLIW s3, s1, 2
  ADD s4, s2, s3
  LW s6, 0(s4)
  BLT zero, s1, bb45
  # implict jump to bb41
bb41:   # loop depth 2
  ADD s5, zero, zero
  # implict jump to bb42
bb42:   # loop depth 2
  LUI s2, 1
  ADDIW s2, s2, 1504
  MULW s2, s1, s2
  LA s7, A
  ADD s2, s7, s2
  ADD s2, s2, s3
  LW s2, 0(s2)
  DIVW s2, s6, s2
  SW s2, 0(s4)
  ADDIW s1, s1, 1
  BLT s1, s0, bb44
  # implict jump to bb43
bb43:   # loop depth 2
  ADD s3, s5, zero
  JAL zero, bb25
bb44:   # loop depth 2
  JAL zero, bb40
bb45:   # loop depth 2
  ADD s5, zero, zero
  # implict jump to bb46
bb46:   # loop depth 3
  SLLIW s7, s5, 2
  ADD s7, s2, s7
  LW s7, 0(s7)
  LUI s8, 1
  ADDIW s8, s8, 1504
  MULW s8, s5, s8
  LA s9, A
  ADD s8, s9, s8
  ADD s8, s8, s3
  LW s8, 0(s8)
  MULW s7, s7, s8
  SUBW s6, s6, s7
  ADDIW s5, s5, 1
  BLT s5, s1, bb48
  # implict jump to bb47
bb47:   # loop depth 3
  JAL zero, bb42
bb48:   # loop depth 3
  JAL zero, bb46
