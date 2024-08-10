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
  LA s2, b
  LA s1, x
  LA s0, y
  LA s3, n
  ADDI s11, zero, 0
  CALL getarray
  ADD a0, s2, zero
  CALL getarray
  ADD a0, s1, zero
  CALL getarray
  ADD a0, s0, zero
  CALL getarray
  ADDI a0, zero, 68
  CALL _sysy_starttime
  LW s9, 0(s3)
  BLT s11, s9, bb22
  # implict jump to bb1
bb1:   # loop depth 0
  BLT s11, s9, bb13
  # implict jump to bb2
bb2:   # loop depth 0
  ADDIW s1, s9, -1
  SLT a0, s1, zero
  XORI a0, a0, 1
  BNE a0, zero, bb4
  # implict jump to bb3
bb3:   # loop depth 0
  LA s1, n
  ADDI a0, zero, 71
  LA s0, x
  CALL _sysy_stoptime
  LW a0, 0(s1)
  ADD a1, s0, zero
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
  LA a0, y
  LUI s0, 1
  SLLIW s2, s1, 2
  ADDIW s0, s0, 1504
  ADD a0, a0, s2
  MULW s3, s1, s0
  LW a0, 0(a0)
  ADDIW s0, s1, 1
  BLT s0, s9, bb9
  # implict jump to bb6
bb6:   # loop depth 1
  # implict jump to bb7
bb7:   # loop depth 1
  LA s0, A
  LA s5, x
  ADDIW s1, s1, -1
  ADD s0, s0, s3
  SLT s4, s1, zero
  ADD s3, s0, s2
  ADD s0, s5, s2
  LW s2, 0(s3)
  XORI s3, s4, 1
  DIVW a0, a0, s2
  SW a0, 0(s0)
  BNE s3, zero, bb8
  JAL zero, bb3
bb8:   # loop depth 1
  JAL zero, bb5
bb9:   # loop depth 1
  # implict jump to bb10
bb10:   # loop depth 2
  LA s4, A
  SLLIW s5, s0, 2
  LA s6, x
  ADD s4, s4, s3
  ADD s4, s4, s5
  ADD s5, s6, s5
  LW s4, 0(s4)
  ADDIW s0, s0, 1
  LW s5, 0(s5)
  MULW s4, s4, s5
  SUBW a0, a0, s4
  BLT s0, s9, bb12
  # implict jump to bb11
bb11:   # loop depth 1
  JAL zero, bb7
bb12:   # loop depth 2
  JAL zero, bb10
bb13:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb14
bb14:   # loop depth 1
  LA a0, b
  SLLIW s2, s1, 2
  ADD a0, a0, s2
  LW a0, 0(a0)
  BLT zero, s1, bb18
  # implict jump to bb15
bb15:   # loop depth 1
  # implict jump to bb16
bb16:   # loop depth 1
  LA s0, y
  ADDIW s1, s1, 1
  ADD s0, s0, s2
  SW a0, 0(s0)
  BLT s1, s9, bb17
  JAL zero, bb2
bb17:   # loop depth 1
  JAL zero, bb14
bb18:   # loop depth 1
  LUI s0, 1
  LA s4, A
  ADDIW s0, s0, 1504
  MULW s3, s1, s0
  ADD s0, zero, zero
  ADD s3, s4, s3
  # implict jump to bb19
bb19:   # loop depth 2
  LA s6, y
  SLLIW s4, s0, 2
  ADD s5, s3, s4
  ADD s6, s6, s4
  LW s4, 0(s5)
  ADDIW s0, s0, 1
  LW s5, 0(s6)
  MULW s4, s4, s5
  SUBW a0, a0, s4
  BLT s0, s1, bb21
  # implict jump to bb20
bb20:   # loop depth 1
  JAL zero, bb16
bb21:   # loop depth 2
  JAL zero, bb19
bb22:   # loop depth 0
  ADD s6, zero, zero
  ADD a0, zero, zero
  ADD s0, zero, zero
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
  BLT s0, s9, bb29
  # implict jump to bb26
bb26:   # loop depth 1
  # implict jump to bb27
bb27:   # loop depth 1
  ADDIW s0, s0, 1
  BLT s0, s9, bb28
  JAL zero, bb1
bb28:   # loop depth 1
  JAL zero, bb23
bb29:   # loop depth 1
  LA a0, A
  ADD s2, s0, zero
  ADD s1, a0, s10
  # implict jump to bb30
bb30:   # loop depth 2
  SLLIW s3, s2, 2
  ADD s4, s1, s3
  LW s6, 0(s4)
  BLT zero, s0, bb35
  # implict jump to bb31
bb31:   # loop depth 2
  ADD a0, zero, zero
  # implict jump to bb32
bb32:   # loop depth 2
  ADDIW s2, s2, 1
  SW s6, 0(s4)
  BLT s2, s9, bb34
  # implict jump to bb33
bb33:   # loop depth 1
  JAL zero, bb27
bb34:   # loop depth 2
  JAL zero, bb30
bb35:   # loop depth 2
  ADD a0, s6, zero
  ADD s5, zero, zero
  # implict jump to bb36
bb36:   # loop depth 3
  LUI s7, 1
  ADDIW s7, s7, 1504
  SLLIW s6, s5, 2
  MULW s7, s5, s7
  LA s8, A
  ADD s6, s1, s6
  LW s6, 0(s6)
  ADDIW s5, s5, 1
  ADD s7, s8, s7
  ADD s7, s7, s3
  LW s7, 0(s7)
  MULW s6, s6, s7
  SUBW s6, a0, s6
  BLT s5, s0, bb38
  # implict jump to bb37
bb37:   # loop depth 2
  ADD a0, s5, zero
  JAL zero, bb32
bb38:   # loop depth 3
  ADD a0, s6, zero
  JAL zero, bb36
bb39:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb40
bb40:   # loop depth 2
  LA s2, A
  ADD s1, a0, zero
  SLLIW s3, s1, 2
  ADD s2, s2, s10
  ADD s4, s2, s3
  LW a0, 0(s4)
  BLT zero, s1, bb45
  # implict jump to bb41
bb41:   # loop depth 2
  ADD s2, a0, zero
  ADD a0, zero, zero
  # implict jump to bb42
bb42:   # loop depth 2
  LUI s5, 1
  LA s6, A
  ADDIW s5, s5, 1504
  MULW s5, s1, s5
  ADDIW s1, s1, 1
  ADD s5, s6, s5
  ADD s3, s5, s3
  LW s3, 0(s3)
  DIVW s3, s2, s3
  SW s3, 0(s4)
  BLT s1, s0, bb44
  # implict jump to bb43
bb43:   # loop depth 1
  ADD s6, s2, zero
  JAL zero, bb25
bb44:   # loop depth 2
  ADD a0, s1, zero
  JAL zero, bb40
bb45:   # loop depth 2
  ADD s5, zero, zero
  # implict jump to bb46
bb46:   # loop depth 3
  LUI s7, 1
  ADDIW s7, s7, 1504
  SLLIW s6, s5, 2
  MULW s7, s5, s7
  LA s8, A
  ADD s6, s2, s6
  LW s6, 0(s6)
  ADDIW s5, s5, 1
  ADD s7, s8, s7
  ADD s7, s7, s3
  LW s7, 0(s7)
  MULW s6, s6, s7
  SUBW a0, a0, s6
  BLT s5, s1, bb48
  # implict jump to bb47
bb47:   # loop depth 2
  ADD s2, a0, zero
  ADD a0, s5, zero
  JAL zero, bb42
bb48:   # loop depth 3
  JAL zero, bb46
