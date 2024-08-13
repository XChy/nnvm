.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
B:
.space 8040
C:
.space 8040
A:
.space 16160400

.section .data



x:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s6, 8(sp)
  SD s7, 16(sp)
  SD s8, 24(sp)
  SD s9, 32(sp)
  SD s10, 40(sp)
  SD s11, 48(sp)
  SD s0, 56(sp)
  SD s1, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD s5, 96(sp)
  CALL getint
  ADDI s8, zero, 0
  ADD s0, a0, zero
  BLT s8, s0, bb43
  # implict jump to bb1
bb1:   # loop depth 0
  BLT s8, s0, bb40
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI a0, zero, 59
  ADD s1, zero, zero
  CALL _sysy_starttime
  # implict jump to bb3
bb3:   # loop depth 1
  ADD s11, s1, zero
  BLT s8, s0, bb37
  # implict jump to bb4
bb4:   # loop depth 1
  BLT s8, s0, bb25
  # implict jump to bb5
bb5:   # loop depth 1
  BLT s8, s0, bb22
  # implict jump to bb6
bb6:   # loop depth 1
  BLT s8, s0, bb10
  # implict jump to bb7
bb7:   # loop depth 1
  ADDIW s1, s11, 1
  SLTI a0, s1, 50
  BNE a0, zero, bb9
  # implict jump to bb8
bb8:   # loop depth 0
  LA s1, C
  ADDI a0, zero, 67
  CALL _sysy_stoptime
  ADD a1, s1, zero
  ADD a0, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s6, 8(sp)
  LD s7, 16(sp)
  LD s8, 24(sp)
  LD s9, 32(sp)
  LD s10, 40(sp)
  LD s11, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s5, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb9:   # loop depth 1
  JAL zero, bb3
bb10:   # loop depth 1
  ADD a0, zero, zero
  ADD s6, zero, zero
  ADDI s1, zero, 11
  # implict jump to bb11
bb11:   # loop depth 2
  ADD s7, s1, zero
  BLT s8, s0, bb15
  # implict jump to bb12
bb12:   # loop depth 2
  ADD s2, s6, zero
  ADD s1, s7, zero
  # implict jump to bb13
bb13:   # loop depth 2
  ADDIW a0, a0, 1
  ADD s6, s2, zero
  BLT a0, s0, bb14
  JAL zero, bb7
bb14:   # loop depth 2
  JAL zero, bb11
bb15:   # loop depth 2
  LUI s1, 2
  LA s2, B
  ADDIW s1, s1, -152
  LA s5, C
  MULW s1, a0, s1
  LA s4, A
  ADD s3, zero, zero
  SH2ADD s2, a0, s2
  SH2ADD s10, a0, s5
  ADD s1, s4, s1
  # implict jump to bb16
bb16:   # loop depth 3
  LA s5, C
  SH2ADD s4, s3, s1
  ADD s9, s7, zero
  LW s4, 0(s4)
  SH2ADD s5, s3, s5
  ADD s7, s6, zero
  BEQ s4, zero, bb21
  # implict jump to bb17
bb17:   # loop depth 3
  LW s6, 0(s2)
  LW s5, 0(s5)
  MULW s4, s4, s5
  ADDW s4, s6, s4
  SW s4, 0(s2)
  # implict jump to bb18
bb18:   # loop depth 3
  ADDIW s3, s3, 1
  ADD s4, s7, zero
  ADD s5, s9, zero
  BLT s3, s0, bb20
  # implict jump to bb19
bb19:   # loop depth 2
  ADD s2, s4, zero
  ADD s1, s5, zero
  JAL zero, bb13
bb20:   # loop depth 3
  ADD s6, s4, zero
  ADD s7, s5, zero
  JAL zero, bb16
bb21:   # loop depth 3
  LW s4, 0(s10)
  LW s5, 0(s5)
  MULW s4, s9, s4
  ADDW s4, s4, s5
  SUBW s5, s7, s4
  ADD s9, s4, zero
  ADD s7, s5, zero
  JAL zero, bb18
bb22:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb23
bb23:   # loop depth 2
  LA s2, B
  ADDIW s1, a0, 1
  SH2ADD a0, a0, s2
  SW zero, 0(a0)
  BLT s1, s0, bb24
  JAL zero, bb6
bb24:   # loop depth 2
  ADD a0, s1, zero
  JAL zero, bb23
bb25:   # loop depth 1
  ADD a0, zero, zero
  ADD s6, zero, zero
  ADDI s2, zero, 11
  # implict jump to bb26
bb26:   # loop depth 2
  ADD s7, s2, zero
  BLT s8, s0, bb30
  # implict jump to bb27
bb27:   # loop depth 2
  ADD s1, s6, zero
  ADD s2, s7, zero
  # implict jump to bb28
bb28:   # loop depth 2
  ADDIW a0, a0, 1
  BLT a0, s0, bb29
  JAL zero, bb5
bb29:   # loop depth 2
  ADD s6, s1, zero
  JAL zero, bb26
bb30:   # loop depth 2
  LUI s1, 2
  LA s2, C
  ADDIW s1, s1, -152
  LA s5, B
  MULW s1, a0, s1
  LA s4, A
  ADD s3, zero, zero
  SH2ADD s2, a0, s2
  SH2ADD s10, a0, s5
  ADD s1, s4, s1
  # implict jump to bb31
bb31:   # loop depth 3
  LA s5, B
  SH2ADD s4, s3, s1
  ADD s9, s7, zero
  LW s4, 0(s4)
  SH2ADD s5, s3, s5
  ADD s7, s6, zero
  BEQ s4, zero, bb36
  # implict jump to bb32
bb32:   # loop depth 3
  LW s6, 0(s2)
  LW s5, 0(s5)
  MULW s4, s4, s5
  ADDW s4, s6, s4
  SW s4, 0(s2)
  # implict jump to bb33
bb33:   # loop depth 3
  ADDIW s3, s3, 1
  ADD s4, s7, zero
  ADD s5, s9, zero
  BLT s3, s0, bb35
  # implict jump to bb34
bb34:   # loop depth 2
  ADD s1, s4, zero
  ADD s2, s5, zero
  JAL zero, bb28
bb35:   # loop depth 3
  ADD s6, s4, zero
  ADD s7, s5, zero
  JAL zero, bb31
bb36:   # loop depth 3
  LW s4, 0(s10)
  LW s5, 0(s5)
  MULW s4, s9, s4
  ADDW s4, s4, s5
  SUBW s5, s7, s4
  ADD s9, s4, zero
  ADD s7, s5, zero
  JAL zero, bb33
bb37:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb38
bb38:   # loop depth 2
  LA s2, C
  ADDIW s1, a0, 1
  SH2ADD a0, a0, s2
  SW zero, 0(a0)
  BLT s1, s0, bb39
  JAL zero, bb4
bb39:   # loop depth 2
  ADD a0, s1, zero
  JAL zero, bb38
bb40:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb41
bb41:   # loop depth 1
  LA s4, B
  CALL getint
  ADDIW s2, s1, 1
  ADD s3, a0, zero
  SH2ADD s1, s1, s4
  SW s3, 0(s1)
  BLT s2, s0, bb42
  JAL zero, bb2
bb42:   # loop depth 1
  ADD s1, s2, zero
  JAL zero, bb41
bb43:   # loop depth 0
  ADD s2, zero, zero
  # implict jump to bb44
bb44:   # loop depth 1
  BLT s8, s0, bb47
  # implict jump to bb45
bb45:   # loop depth 1
  ADDIW s2, s2, 1
  BLT s2, s0, bb46
  JAL zero, bb1
bb46:   # loop depth 1
  JAL zero, bb44
bb47:   # loop depth 1
  LUI s3, 2
  LA s4, A
  ADDIW s3, s3, -152
  ADD s1, zero, zero
  MULW s3, s2, s3
  ADD s4, s4, s3
  # implict jump to bb48
bb48:   # loop depth 2
  CALL getint
  ADD s3, a0, zero
  SH2ADD s5, s1, s4
  ADDIW s1, s1, 1
  SW s3, 0(s5)
  BLT s1, s0, bb49
  JAL zero, bb45
bb49:   # loop depth 2
  JAL zero, bb48
