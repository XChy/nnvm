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
main:
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
  CALL getarray
  ADD s0, a0, zero
  ADDI a0, zero, 1
  SUBW s1, s0, a0
  LA a0, y
  CALL getarray
  LA a0, v
  CALL getarray
  LA a0, a
  CALL getarray
  ADDI a0, zero, 39
  CALL _sysy_starttime
  ADDI s0, zero, 0
  ADD a0, zero, zero
  # implict jump to bb1
bb1:
  ADD s2, a0, zero
  BLT s0, s1, bb37
  # implict jump to bb2
bb2:
  BLT s0, s1, bb24
  # implict jump to bb3
bb3:
  BLT s0, s1, bb21
  # implict jump to bb4
bb4:
  BLT s0, s1, bb8
  # implict jump to bb5
bb5:
  ADDIW s2, s2, 1
  SLTI a0, s2, 100
  BNE a0, zero, bb7
  # implict jump to bb6
bb6:
  ADDI a0, zero, 47
  CALL _sysy_stoptime
  ADD a0, s1, zero
  LA a1, b
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
bb7:
  ADD a0, s2, zero
  JAL zero, bb1
bb8:
  ADD a0, zero, zero
  # implict jump to bb9
bb9:
  ADD s3, a0, zero
  SLLIW s5, s3, 2
  LA a0, x
  ADD a0, a0, s5
  LW s4, 0(a0)
  ADDIW s3, s3, 1
  SLLIW s6, s3, 2
  LA a0, x
  ADD s6, a0, s6
  LW a0, 0(s6)
  BLT s4, a0, bb17
  # implict jump to bb10
bb10:
  # implict jump to bb11
bb11:
  ADD s6, a0, zero
  BLT s4, s6, bb14
  # implict jump to bb12
bb12:
  BLT s3, s1, bb13
  JAL zero, bb5
bb13:
  ADD a0, s3, zero
  JAL zero, bb9
bb14:
  LA a0, b
  ADD a0, a0, s5
  LW s5, 0(a0)
  ADDI a0, zero, 1
  SUBW s5, s5, a0
  ADD a0, s4, zero
  # implict jump to bb15
bb15:
  ADD s4, a0, zero
  SLLIW s8, s4, 2
  LA a0, y
  ADD a0, a0, s8
  LW a0, 0(a0)
  SLLIW s7, a0, 2
  LA a0, a
  ADD s7, a0, s7
  LW s9, 0(s7)
  LA a0, v
  ADD a0, a0, s8
  LW a0, 0(a0)
  MULW a0, a0, s5
  ADDW a0, s9, a0
  SW a0, 0(s7)
  ADDIW a0, s4, 1
  BLT a0, s6, bb16
  JAL zero, bb12
bb16:
  JAL zero, bb15
bb17:
  ADD a0, s4, zero
  # implict jump to bb18
bb18:
  ADD s7, a0, zero
  SLLIW s8, s7, 2
  LA a0, y
  ADD a0, a0, s8
  LW a0, 0(a0)
  SLLIW s9, a0, 2
  LA a0, a
  ADD s9, a0, s9
  LW s10, 0(s9)
  LA a0, v
  ADD a0, a0, s8
  LW a0, 0(a0)
  ADDW a0, s10, a0
  SW a0, 0(s9)
  ADDIW s7, s7, 1
  LW a0, 0(s6)
  BLT s7, a0, bb20
  # implict jump to bb19
bb19:
  JAL zero, bb11
bb20:
  ADD a0, s7, zero
  JAL zero, bb18
bb21:
  ADD a0, zero, zero
  # implict jump to bb22
bb22:
  ADD s4, a0, zero
  SLLIW s3, s4, 2
  LA a0, a
  ADD a0, a0, s3
  SW zero, 0(a0)
  ADDIW a0, s4, 1
  BLT a0, s1, bb23
  JAL zero, bb4
bb23:
  JAL zero, bb22
bb24:
  ADD a0, zero, zero
  # implict jump to bb25
bb25:
  ADD s5, a0, zero
  SLLIW s3, s5, 2
  LA a0, x
  ADD a0, a0, s3
  LW s4, 0(a0)
  ADDIW s6, s5, 1
  SLLIW s5, s6, 2
  LA a0, x
  ADD s5, a0, s5
  LW a0, 0(s5)
  BLT s4, a0, bb33
  # implict jump to bb26
bb26:
  ADD s5, a0, zero
  ADD a0, s6, zero
  # implict jump to bb27
bb27:
  ADD s6, a0, zero
  BLT s4, s5, bb30
  # implict jump to bb28
bb28:
  BLT s6, s1, bb29
  JAL zero, bb3
bb29:
  ADD a0, s6, zero
  JAL zero, bb25
bb30:
  LA a0, a
  ADD a0, a0, s3
  LW s3, 0(a0)
  ADDI a0, zero, 1
  SUBW s3, s3, a0
  ADD a0, s4, zero
  # implict jump to bb31
bb31:
  ADD s7, a0, zero
  SLLIW s4, s7, 2
  LA a0, y
  ADD a0, a0, s4
  LW a0, 0(a0)
  SLLIW s8, a0, 2
  LA a0, b
  ADD s9, a0, s8
  LW s8, 0(s9)
  LA a0, v
  ADD a0, a0, s4
  LW a0, 0(a0)
  MULW a0, a0, s3
  ADDW a0, s8, a0
  SW a0, 0(s9)
  ADDIW a0, s7, 1
  BLT a0, s5, bb32
  JAL zero, bb28
bb32:
  JAL zero, bb31
bb33:
  ADD a0, s4, zero
  # implict jump to bb34
bb34:
  ADD s7, a0, zero
  SLLIW s8, s7, 2
  LA a0, y
  ADD a0, a0, s8
  LW a0, 0(a0)
  SLLIW s9, a0, 2
  LA a0, b
  ADD s9, a0, s9
  LW s10, 0(s9)
  LA a0, v
  ADD a0, a0, s8
  LW a0, 0(a0)
  ADDW a0, s10, a0
  SW a0, 0(s9)
  ADDIW a0, s7, 1
  LW s7, 0(s5)
  BLT a0, s7, bb36
  # implict jump to bb35
bb35:
  ADD s5, s7, zero
  ADD a0, s6, zero
  JAL zero, bb27
bb36:
  JAL zero, bb34
bb37:
  ADD a0, zero, zero
  # implict jump to bb38
bb38:
  ADD s3, a0, zero
  SLLIW s4, s3, 2
  LA a0, b
  ADD a0, a0, s4
  SW zero, 0(a0)
  ADDIW a0, s3, 1
  BLT a0, s1, bb39
  JAL zero, bb2
bb39:
  JAL zero, bb38
