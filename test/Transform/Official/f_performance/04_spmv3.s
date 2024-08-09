.global main
.section .bss
b:
.space 400040
a:
.space 400040
y:
.space 12000000
x:
.space 400040
v:
.space 12000000
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
  LA a0, x
  LA s0, y
  LA s3, v
  LA s2, a
  ADDI s7, zero, 0
  ADD s1, zero, zero
  CALL getarray
  ADD s4, a0, zero
  ADD a0, s0, zero
  ADDIW s0, s4, -1
  CALL getarray
  ADD a0, s3, zero
  CALL getarray
  ADD a0, s2, zero
  CALL getarray
  ADDI a0, zero, 39
  CALL _sysy_starttime
  # implict jump to bb1
bb1:   # loop depth 1
  ADD s10, s1, zero
  BLT s7, s0, bb35
  # implict jump to bb2
bb2:   # loop depth 1
  BLT s7, s0, bb23
  # implict jump to bb3
bb3:   # loop depth 1
  BLT s7, s0, bb20
  # implict jump to bb4
bb4:   # loop depth 1
  BLT s7, s0, bb8
  # implict jump to bb5
bb5:   # loop depth 1
  ADDIW s1, s10, 1
  SLTI a0, s1, 100
  BNE a0, zero, bb7
  # implict jump to bb6
bb6:   # loop depth 0
  LA s1, b
  ADDI a0, zero, 47
  CALL _sysy_stoptime
  ADD a0, s0, zero
  ADD a1, s1, zero
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
bb7:   # loop depth 1
  JAL zero, bb1
bb8:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb9
bb9:   # loop depth 2
  LA s3, x
  SLLIW a0, s1, 2
  ADDIW s2, s1, 1
  ADD s3, s3, a0
  LW s1, 0(s3)
  LW s3, 4(s3)
  BLT s1, s3, bb16
  # implict jump to bb10
bb10:   # loop depth 2
  BLT s1, s3, bb13
  # implict jump to bb11
bb11:   # loop depth 2
  BLT s2, s0, bb12
  JAL zero, bb5
bb12:   # loop depth 2
  ADD s1, s2, zero
  JAL zero, bb9
bb13:   # loop depth 2
  LA s4, b
  ADD a0, s4, a0
  LW a0, 0(a0)
  ADDIW a0, a0, -1
  # implict jump to bb14
bb14:   # loop depth 3
  LA s5, y
  SLLIW s4, s1, 2
  LA s6, a
  ADD s5, s5, s4
  LA s8, v
  LW s5, 0(s5)
  ADDIW s1, s1, 1
  ADD s8, s8, s4
  SLLIW s4, s5, 2
  ADD s4, s6, s4
  LW s5, 0(s4)
  LW s6, 0(s8)
  MULW s6, s6, a0
  ADDW s5, s5, s6
  SW s5, 0(s4)
  BLT s1, s3, bb15
  JAL zero, bb11
bb15:   # loop depth 3
  JAL zero, bb14
bb16:   # loop depth 2
  ADD s4, s1, zero
  # implict jump to bb17
bb17:   # loop depth 3
  LA s6, y
  SLLIW s5, s4, 2
  LA s8, a
  ADD s6, s6, s5
  LA s9, v
  LW s6, 0(s6)
  ADDIW s4, s4, 1
  ADD s5, s9, s5
  SLLIW s6, s6, 2
  ADD s6, s8, s6
  LW s8, 0(s6)
  LW s5, 0(s5)
  ADDW s5, s8, s5
  SW s5, 0(s6)
  BLT s4, s3, bb19
  # implict jump to bb18
bb18:   # loop depth 2
  JAL zero, bb10
bb19:   # loop depth 3
  JAL zero, bb17
bb20:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb21
bb21:   # loop depth 2
  LA s2, a
  SLLIW s1, a0, 2
  ADDIW a0, a0, 1
  ADD s1, s2, s1
  SW zero, 0(s1)
  BLT a0, s0, bb22
  JAL zero, bb4
bb22:   # loop depth 2
  JAL zero, bb21
bb23:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb24
bb24:   # loop depth 2
  LA s3, x
  SLLIW a0, s1, 2
  ADDIW s2, s1, 1
  ADD s3, s3, a0
  LW s1, 0(s3)
  LW s3, 4(s3)
  BLT s1, s3, bb31
  # implict jump to bb25
bb25:   # loop depth 2
  BLT s1, s3, bb28
  # implict jump to bb26
bb26:   # loop depth 2
  BLT s2, s0, bb27
  JAL zero, bb3
bb27:   # loop depth 2
  ADD s1, s2, zero
  JAL zero, bb24
bb28:   # loop depth 2
  LA s4, a
  ADD a0, s4, a0
  LW a0, 0(a0)
  ADDIW a0, a0, -1
  # implict jump to bb29
bb29:   # loop depth 3
  LA s5, y
  SLLIW s4, s1, 2
  LA s6, b
  ADD s5, s5, s4
  LA s8, v
  LW s5, 0(s5)
  ADDIW s1, s1, 1
  ADD s8, s8, s4
  SLLIW s4, s5, 2
  ADD s4, s6, s4
  LW s5, 0(s4)
  LW s6, 0(s8)
  MULW s6, s6, a0
  ADDW s5, s5, s6
  SW s5, 0(s4)
  BLT s1, s3, bb30
  JAL zero, bb26
bb30:   # loop depth 3
  JAL zero, bb29
bb31:   # loop depth 2
  ADD s4, s1, zero
  # implict jump to bb32
bb32:   # loop depth 3
  LA s6, y
  SLLIW s5, s4, 2
  LA s8, b
  ADD s6, s6, s5
  LA s9, v
  LW s6, 0(s6)
  ADDIW s4, s4, 1
  ADD s5, s9, s5
  SLLIW s6, s6, 2
  ADD s6, s8, s6
  LW s8, 0(s6)
  LW s5, 0(s5)
  ADDW s5, s8, s5
  SW s5, 0(s6)
  BLT s4, s3, bb34
  # implict jump to bb33
bb33:   # loop depth 2
  JAL zero, bb25
bb34:   # loop depth 3
  JAL zero, bb32
bb35:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb36
bb36:   # loop depth 2
  LA s2, b
  SLLIW s1, a0, 2
  ADDIW a0, a0, 1
  ADD s1, s2, s1
  SW zero, 0(s1)
  BLT a0, s0, bb37
  JAL zero, bb2
bb37:   # loop depth 2
  JAL zero, bb36
