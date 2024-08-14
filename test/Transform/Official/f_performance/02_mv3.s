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
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  CALL getint
  ADDI s1, zero, 0
  ADD s0, a0, zero
  BLT s1, s0, bb43
  # implict jump to bb1
bb1:   # loop depth 0
  BLT s1, s0, bb40
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI a0, zero, 59
  ADD s2, zero, zero
  CALL _sysy_starttime
  # implict jump to bb3
bb3:   # loop depth 1
  BLT s1, s0, bb37
  # implict jump to bb4
bb4:   # loop depth 1
  BLT s1, s0, bb25
  # implict jump to bb5
bb5:   # loop depth 1
  BLT s1, s0, bb22
  # implict jump to bb6
bb6:   # loop depth 1
  BLT s1, s0, bb10
  # implict jump to bb7
bb7:   # loop depth 1
  ADDIW s2, s2, 1
  SLTI t0, s2, 50
  BNE t0, zero, bb9
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
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb9:   # loop depth 1
  JAL zero, bb3
bb10:   # loop depth 1
  ADD a0, zero, zero
  ADD t1, zero, zero
  ADDI t0, zero, 11
  # implict jump to bb11
bb11:   # loop depth 2
  BLT s1, s0, bb15
  # implict jump to bb12
bb12:   # loop depth 2
  # implict jump to bb13
bb13:   # loop depth 2
  ADDIW a0, a0, 1
  BLT a0, s0, bb14
  JAL zero, bb7
bb14:   # loop depth 2
  JAL zero, bb11
bb15:   # loop depth 2
  LUI t2, 2
  LA a3, B
  ADDIW t2, t2, -152
  LA a2, C
  MULW a1, a0, t2
  LA a4, A
  ADD t2, zero, zero
  SH2ADD a3, a0, a3
  SH2ADD a2, a0, a2
  ADD a1, a4, a1
  # implict jump to bb16
bb16:   # loop depth 3
  LA a5, C
  SH2ADD a4, t2, a1
  LW a4, 0(a4)
  SH2ADD a5, t2, a5
  BEQ a4, zero, bb21
  # implict jump to bb17
bb17:   # loop depth 3
  LW a6, 0(a3)
  LW a5, 0(a5)
  MULW a4, a4, a5
  ADDW a4, a6, a4
  SW a4, 0(a3)
  # implict jump to bb18
bb18:   # loop depth 3
  ADDIW t2, t2, 1
  BLT t2, s0, bb20
  # implict jump to bb19
bb19:   # loop depth 2
  JAL zero, bb13
bb20:   # loop depth 3
  JAL zero, bb16
bb21:   # loop depth 3
  LW a4, 0(a2)
  LW a5, 0(a5)
  MULW t0, t0, a4
  ADDW t0, t0, a5
  SUBW t1, t1, t0
  JAL zero, bb18
bb22:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb23
bb23:   # loop depth 2
  LA t2, B
  ADDIW t1, t0, 1
  SH2ADD t0, t0, t2
  SW zero, 0(t0)
  BLT t1, s0, bb24
  JAL zero, bb6
bb24:   # loop depth 2
  ADD t0, t1, zero
  JAL zero, bb23
bb25:   # loop depth 1
  ADD t2, zero, zero
  ADD t1, zero, zero
  ADDI t0, zero, 11
  # implict jump to bb26
bb26:   # loop depth 2
  BLT s1, s0, bb30
  # implict jump to bb27
bb27:   # loop depth 2
  # implict jump to bb28
bb28:   # loop depth 2
  ADDIW t2, t2, 1
  BLT t2, s0, bb29
  JAL zero, bb5
bb29:   # loop depth 2
  JAL zero, bb26
bb30:   # loop depth 2
  LUI a0, 2
  LA a3, C
  ADDIW a0, a0, -152
  LA a2, B
  MULW a1, t2, a0
  LA a4, A
  ADD a0, zero, zero
  SH2ADD a3, t2, a3
  SH2ADD a2, t2, a2
  ADD a1, a4, a1
  # implict jump to bb31
bb31:   # loop depth 3
  LA a5, B
  SH2ADD a4, a0, a1
  LW a4, 0(a4)
  SH2ADD a5, a0, a5
  BEQ a4, zero, bb36
  # implict jump to bb32
bb32:   # loop depth 3
  LW a6, 0(a3)
  LW a5, 0(a5)
  MULW a4, a4, a5
  ADDW a4, a6, a4
  SW a4, 0(a3)
  # implict jump to bb33
bb33:   # loop depth 3
  ADDIW a0, a0, 1
  BLT a0, s0, bb35
  # implict jump to bb34
bb34:   # loop depth 2
  JAL zero, bb28
bb35:   # loop depth 3
  JAL zero, bb31
bb36:   # loop depth 3
  LW a4, 0(a2)
  LW a5, 0(a5)
  MULW t0, t0, a4
  ADDW t0, t0, a5
  SUBW t1, t1, t0
  JAL zero, bb33
bb37:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb38
bb38:   # loop depth 2
  LA t2, C
  ADDIW t1, t0, 1
  SH2ADD t0, t0, t2
  SW zero, 0(t0)
  BLT t1, s0, bb39
  JAL zero, bb4
bb39:   # loop depth 2
  ADD t0, t1, zero
  JAL zero, bb38
bb40:   # loop depth 0
  ADD s2, zero, zero
  # implict jump to bb41
bb41:   # loop depth 1
  LA s3, B
  CALL getint
  ADDIW t0, s2, 1
  SH2ADD t1, s2, s3
  SW a0, 0(t1)
  BLT t0, s0, bb42
  JAL zero, bb2
bb42:   # loop depth 1
  ADD s2, t0, zero
  JAL zero, bb41
bb43:   # loop depth 0
  ADD s3, zero, zero
  # implict jump to bb44
bb44:   # loop depth 1
  BLT s1, s0, bb47
  # implict jump to bb45
bb45:   # loop depth 1
  ADDIW s3, s3, 1
  BLT s3, s0, bb46
  JAL zero, bb1
bb46:   # loop depth 1
  JAL zero, bb44
bb47:   # loop depth 1
  LUI t0, 2
  LA t1, A
  ADDIW t0, t0, -152
  ADD s2, zero, zero
  MULW t0, s3, t0
  ADD s4, t1, t0
  # implict jump to bb48
bb48:   # loop depth 2
  CALL getint
  SH2ADD t0, s2, s4
  ADDIW s2, s2, 1
  SW a0, 0(t0)
  BLT s2, s0, bb49
  JAL zero, bb45
bb49:   # loop depth 2
  JAL zero, bb48
