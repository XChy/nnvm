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
  ADDI s0, zero, 1
  SUBW s0, a0, s0
  LA a0, y
  CALL getarray
  LA a0, v
  CALL getarray
  LA a0, a
  CALL getarray
  ADDI a0, zero, 39
  CALL _sysy_starttime
  ADDI s4, zero, 0
  ADD a0, zero, zero
  # implict jump to bb1
bb1:
  BLT s4, s0, bb37
  # implict jump to bb2
bb2:
  BLT s4, s0, bb24
  # implict jump to bb3
bb3:
  BLT s4, s0, bb21
  # implict jump to bb4
bb4:
  BLT s4, s0, bb8
  # implict jump to bb5
bb5:
  ADDIW a0, a0, 1
  SLTI s1, a0, 100
  BNE s1, zero, bb7
  # implict jump to bb6
bb6:
  ADDI a0, zero, 47
  CALL _sysy_stoptime
  ADD a0, s0, zero
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
  JAL zero, bb1
bb8:
  ADD s1, zero, zero
  # implict jump to bb9
bb9:
  SLLIW s2, s1, 2
  LA s3, x
  ADD s3, s3, s2
  LW s3, 0(s3)
  ADDIW s1, s1, 1
  SLLIW s5, s1, 2
  LA s6, x
  ADD s5, s6, s5
  LW s6, 0(s5)
  BLT s3, s6, bb17
  # implict jump to bb10
bb10:
  # implict jump to bb11
bb11:
  ADD s5, s1, zero
  ADD s1, s6, zero
  BLT s3, s1, bb14
  # implict jump to bb12
bb12:
  BLT s5, s0, bb13
  JAL zero, bb5
bb13:
  ADD s1, s5, zero
  JAL zero, bb9
bb14:
  LA s6, b
  ADD s2, s6, s2
  LW s2, 0(s2)
  ADDI s6, zero, 1
  SUBW s2, s2, s6
  # implict jump to bb15
bb15:
  SLLIW s6, s3, 2
  LA s7, y
  ADD s7, s7, s6
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  LA s8, a
  ADD s7, s8, s7
  LW s8, 0(s7)
  LA s9, v
  ADD s6, s9, s6
  LW s6, 0(s6)
  MULW s6, s6, s2
  ADDW s6, s8, s6
  SW s6, 0(s7)
  ADDIW s3, s3, 1
  BLT s3, s1, bb16
  JAL zero, bb12
bb16:
  JAL zero, bb15
bb17:
  ADD s6, s3, zero
  # implict jump to bb18
bb18:
  SLLIW s7, s6, 2
  LA s8, y
  ADD s8, s8, s7
  LW s8, 0(s8)
  SLLIW s8, s8, 2
  LA s9, a
  ADD s8, s9, s8
  LW s9, 0(s8)
  LA s10, v
  ADD s7, s10, s7
  LW s7, 0(s7)
  ADDW s7, s9, s7
  SW s7, 0(s8)
  ADDIW s6, s6, 1
  LW s7, 0(s5)
  BLT s6, s7, bb20
  # implict jump to bb19
bb19:
  ADD s6, s7, zero
  JAL zero, bb11
bb20:
  JAL zero, bb18
bb21:
  ADD s1, zero, zero
  # implict jump to bb22
bb22:
  SLLIW s2, s1, 2
  LA s3, a
  ADD s2, s3, s2
  SW zero, 0(s2)
  ADDIW s1, s1, 1
  BLT s1, s0, bb23
  JAL zero, bb4
bb23:
  JAL zero, bb22
bb24:
  ADD s1, zero, zero
  # implict jump to bb25
bb25:
  SLLIW s2, s1, 2
  LA s3, x
  ADD s3, s3, s2
  LW s3, 0(s3)
  ADDIW s1, s1, 1
  SLLIW s5, s1, 2
  LA s6, x
  ADD s5, s6, s5
  LW s6, 0(s5)
  BLT s3, s6, bb33
  # implict jump to bb26
bb26:
  # implict jump to bb27
bb27:
  ADD s5, s1, zero
  ADD s1, s6, zero
  BLT s3, s1, bb30
  # implict jump to bb28
bb28:
  BLT s5, s0, bb29
  JAL zero, bb3
bb29:
  ADD s1, s5, zero
  JAL zero, bb25
bb30:
  LA s6, a
  ADD s2, s6, s2
  LW s2, 0(s2)
  ADDI s6, zero, 1
  SUBW s2, s2, s6
  # implict jump to bb31
bb31:
  SLLIW s6, s3, 2
  LA s7, y
  ADD s7, s7, s6
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  LA s8, b
  ADD s7, s8, s7
  LW s8, 0(s7)
  LA s9, v
  ADD s6, s9, s6
  LW s6, 0(s6)
  MULW s6, s6, s2
  ADDW s6, s8, s6
  SW s6, 0(s7)
  ADDIW s3, s3, 1
  BLT s3, s1, bb32
  JAL zero, bb28
bb32:
  JAL zero, bb31
bb33:
  ADD s6, s3, zero
  # implict jump to bb34
bb34:
  SLLIW s7, s6, 2
  LA s8, y
  ADD s8, s8, s7
  LW s8, 0(s8)
  SLLIW s8, s8, 2
  LA s9, b
  ADD s8, s9, s8
  LW s9, 0(s8)
  LA s10, v
  ADD s7, s10, s7
  LW s7, 0(s7)
  ADDW s7, s9, s7
  SW s7, 0(s8)
  ADDIW s6, s6, 1
  LW s7, 0(s5)
  BLT s6, s7, bb36
  # implict jump to bb35
bb35:
  ADD s6, s7, zero
  JAL zero, bb27
bb36:
  JAL zero, bb34
bb37:
  ADD s1, zero, zero
  # implict jump to bb38
bb38:
  SLLIW s2, s1, 2
  LA s3, b
  ADD s2, s3, s2
  SW zero, 0(s2)
  ADDIW s1, s1, 1
  BLT s1, s0, bb39
  JAL zero, bb2
bb39:
  JAL zero, bb38
