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
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  LUI s1, 2
  LA s5, A
  CALL getint
  ADDIW s1, s1, -152
  ADDI s3, zero, 0
  ADD s0, a0, zero
  ADD s4, zero, s1
  BLT s3, s0, bb43
  # implict jump to bb1
bb1:   # loop depth 0
  LA s1, B
  BLT s3, s0, bb40
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI a0, zero, 59
  LA s2, C
  ADD s6, zero, zero
  CALL _sysy_starttime
  # implict jump to bb3
bb3:   # loop depth 1
  BLT s3, s0, bb37
  # implict jump to bb4
bb4:   # loop depth 1
  BLT s3, s0, bb25
  # implict jump to bb5
bb5:   # loop depth 1
  BLT s3, s0, bb22
  # implict jump to bb6
bb6:   # loop depth 1
  BLT s3, s0, bb10
  # implict jump to bb7
bb7:   # loop depth 1
  ADDIW s6, s6, 1
  SLTI t0, s6, 50
  BNE t0, zero, bb9
  # implict jump to bb8
bb8:   # loop depth 0
  ADDI a0, zero, 67
  CALL _sysy_stoptime
  ADD a1, s2, zero
  ADD a0, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb9:   # loop depth 1
  JAL zero, bb3
bb10:   # loop depth 1
  ADD a1, zero, zero
  ADD t2, zero, zero
  ADDI t1, zero, 11
  ADD t0, zero, zero
  # implict jump to bb11
bb11:   # loop depth 2
  BLT s3, s0, bb15
  # implict jump to bb12
bb12:   # loop depth 2
  # implict jump to bb13
bb13:   # loop depth 2
  ADDW t0, t0, s4
  ADDIW a1, a1, 1
  BLT a1, s0, bb14
  JAL zero, bb7
bb14:   # loop depth 2
  JAL zero, bb11
bb15:   # loop depth 2
  ADD a0, zero, zero
  SH2ADD a4, a1, s1
  SH2ADD a3, a1, s2
  ADD a2, s5, t0
  # implict jump to bb16
bb16:   # loop depth 3
  SH2ADD a5, a0, a2
  SH2ADD a6, a0, s2
  LW a5, 0(a5)
  BEQ a5, zero, bb21
  # implict jump to bb17
bb17:   # loop depth 3
  LW a7, 0(a4)
  LW a6, 0(a6)
  MULW a5, a5, a6
  ADDW a5, a7, a5
  SW a5, 0(a4)
  # implict jump to bb18
bb18:   # loop depth 3
  ADDIW a0, a0, 1
  BLT a0, s0, bb20
  # implict jump to bb19
bb19:   # loop depth 3
  ADDW t0, t0, s4
  ADDIW a1, a1, 1
  BLT a1, s0, bb14
  JAL zero, bb7
bb20:   # loop depth 3
  JAL zero, bb16
bb21:   # loop depth 3
  LW a5, 0(a3)
  LW a6, 0(a6)
  MULW t1, t1, a5
  ADDW t1, t1, a6
  SUBW t2, t2, t1
  JAL zero, bb18
bb22:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb23
bb23:   # loop depth 2
  SH2ADD t1, t0, s1
  ADDIW t0, t0, 1
  SW zero, 0(t1)
  BLT t0, s0, bb24
  JAL zero, bb6
bb24:   # loop depth 2
  JAL zero, bb23
bb25:   # loop depth 1
  ADD a0, zero, zero
  ADD t1, zero, zero
  ADDI t0, zero, 11
  ADD t2, zero, zero
  # implict jump to bb26
bb26:   # loop depth 2
  BLT s3, s0, bb30
  # implict jump to bb27
bb27:   # loop depth 2
  # implict jump to bb28
bb28:   # loop depth 2
  ADDW t2, t2, s4
  ADDIW a0, a0, 1
  BLT a0, s0, bb29
  JAL zero, bb5
bb29:   # loop depth 2
  JAL zero, bb26
bb30:   # loop depth 2
  ADD a1, zero, zero
  ADD a2, s5, t2
  # implict jump to bb31
bb31:   # loop depth 3
  SH2ADD a3, a1, a2
  SH2ADD a4, a1, s1
  LW a3, 0(a3)
  BEQ a3, zero, bb36
  # implict jump to bb32
bb32:   # loop depth 3
  SH2ADD a5, a0, s2
  LW a6, 0(a5)
  LW a4, 0(a4)
  MULW a3, a3, a4
  ADDW a3, a6, a3
  SW a3, 0(a5)
  # implict jump to bb33
bb33:   # loop depth 3
  ADDIW a1, a1, 1
  BLT a1, s0, bb35
  # implict jump to bb34
bb34:   # loop depth 3
  ADDW t2, t2, s4
  ADDIW a0, a0, 1
  BLT a0, s0, bb29
  JAL zero, bb5
bb35:   # loop depth 3
  JAL zero, bb31
bb36:   # loop depth 3
  SH2ADD a3, a0, s1
  LW a3, 0(a3)
  LW a4, 0(a4)
  MULW t0, t0, a3
  ADDW t0, t0, a4
  SUBW t1, t1, t0
  JAL zero, bb33
bb37:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb38
bb38:   # loop depth 2
  SH2ADD t1, t0, s2
  ADDIW t0, t0, 1
  SW zero, 0(t1)
  BLT t0, s0, bb39
  JAL zero, bb4
bb39:   # loop depth 2
  JAL zero, bb38
bb40:   # loop depth 0
  ADD s2, zero, zero
  # implict jump to bb41
bb41:   # loop depth 1
  CALL getint
  SH2ADD t0, s2, s1
  ADDIW s2, s2, 1
  SW a0, 0(t0)
  BLT s2, s0, bb42
  JAL zero, bb2
bb42:   # loop depth 1
  JAL zero, bb41
bb43:   # loop depth 0
  ADD s7, zero, zero
  ADD s2, zero, zero
  # implict jump to bb44
bb44:   # loop depth 1
  BLT s3, s0, bb47
  # implict jump to bb45
bb45:   # loop depth 1
  ADDW s2, s2, s4
  ADDIW s7, s7, 1
  BLT s7, s0, bb46
  JAL zero, bb1
bb46:   # loop depth 1
  JAL zero, bb44
bb47:   # loop depth 1
  ADD s1, zero, zero
  ADD s6, s5, s2
  # implict jump to bb48
bb48:   # loop depth 2
  CALL getint
  SH2ADD t0, s1, s6
  ADDIW s1, s1, 1
  SW a0, 0(t0)
  BLT s1, s0, bb49
  ADDW s2, s2, s4
  ADDIW s7, s7, 1
  BLT s7, s0, bb46
  JAL zero, bb1
bb49:   # loop depth 2
  JAL zero, bb48
