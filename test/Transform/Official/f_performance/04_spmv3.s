.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  LA a0, x
  LA s0, y
  LA s3, v
  LA s4, a
  ADD s2, zero, zero
  ADDI s1, zero, 0
  CALL getarray
  ADD t0, a0, zero
  ADD a0, s0, zero
  ADDIW s0, t0, -1
  CALL getarray
  ADD a0, s3, zero
  CALL getarray
  ADD a0, s4, zero
  CALL getarray
  ADDI a0, zero, 39
  CALL _sysy_starttime
  # implict jump to bb1
bb1:   # loop depth 1
  BLT s1, s0, bb35
  # implict jump to bb2
bb2:   # loop depth 1
  BLT s1, s0, bb23
  # implict jump to bb3
bb3:   # loop depth 1
  BLT s1, s0, bb20
  # implict jump to bb4
bb4:   # loop depth 1
  BLT s1, s0, bb8
  # implict jump to bb5
bb5:   # loop depth 1
  ADDIW s2, s2, 1
  SLTI t0, s2, 100
  BNE t0, zero, bb7
  # implict jump to bb6
bb6:   # loop depth 0
  LA s1, b
  ADDI a0, zero, 47
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
bb7:   # loop depth 1
  JAL zero, bb1
bb8:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb9
bb9:   # loop depth 2
  LA t0, x
  ADDIW a1, a0, 1
  SH2ADD t1, a0, t0
  LW t0, 0(t1)
  LW a2, 4(t1)
  BLT t0, a2, bb16
  # implict jump to bb10
bb10:   # loop depth 2
  BLT t0, a2, bb13
  # implict jump to bb11
bb11:   # loop depth 2
  BLT a1, s0, bb12
  JAL zero, bb5
bb12:   # loop depth 2
  ADD a0, a1, zero
  JAL zero, bb9
bb13:   # loop depth 2
  LA t1, b
  SH2ADD t1, a0, t1
  LW t1, 0(t1)
  ADDIW t2, t1, -1
  # implict jump to bb14
bb14:   # loop depth 3
  LA t1, y
  LA a4, a
  LA a3, v
  SH2ADD a0, t0, t1
  ADDIW t1, t0, 1
  LW a0, 0(a0)
  SH2ADD a3, t0, a3
  SH2ADD t0, a0, a4
  LW a0, 0(t0)
  LW a3, 0(a3)
  MULW a3, a3, t2
  ADDW a0, a0, a3
  SW a0, 0(t0)
  BLT t1, a2, bb15
  JAL zero, bb11
bb15:   # loop depth 3
  ADD t0, t1, zero
  JAL zero, bb14
bb16:   # loop depth 2
  ADD t1, t0, zero
  # implict jump to bb17
bb17:   # loop depth 3
  LA t2, y
  LA a5, a
  LA a4, v
  SH2ADD a3, t1, t2
  ADDIW t2, t1, 1
  LW a3, 0(a3)
  SH2ADD a4, t1, a4
  SH2ADD t1, a3, a5
  LW a3, 0(t1)
  LW a4, 0(a4)
  ADDW a3, a3, a4
  SW a3, 0(t1)
  BLT t2, a2, bb19
  # implict jump to bb18
bb18:   # loop depth 2
  JAL zero, bb10
bb19:   # loop depth 3
  ADD t1, t2, zero
  JAL zero, bb17
bb20:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb21
bb21:   # loop depth 2
  LA t2, a
  ADDIW t1, t0, 1
  SH2ADD t0, t0, t2
  SW zero, 0(t0)
  BLT t1, s0, bb22
  JAL zero, bb4
bb22:   # loop depth 2
  ADD t0, t1, zero
  JAL zero, bb21
bb23:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb24
bb24:   # loop depth 2
  LA t0, x
  ADDIW a1, a0, 1
  SH2ADD t1, a0, t0
  LW t0, 0(t1)
  LW a2, 4(t1)
  BLT t0, a2, bb31
  # implict jump to bb25
bb25:   # loop depth 2
  BLT t0, a2, bb28
  # implict jump to bb26
bb26:   # loop depth 2
  BLT a1, s0, bb27
  JAL zero, bb3
bb27:   # loop depth 2
  ADD a0, a1, zero
  JAL zero, bb24
bb28:   # loop depth 2
  LA t1, a
  SH2ADD t1, a0, t1
  LW t1, 0(t1)
  ADDIW t2, t1, -1
  # implict jump to bb29
bb29:   # loop depth 3
  LA t1, y
  LA a4, b
  LA a3, v
  SH2ADD a0, t0, t1
  ADDIW t1, t0, 1
  LW a0, 0(a0)
  SH2ADD a3, t0, a3
  SH2ADD t0, a0, a4
  LW a0, 0(t0)
  LW a3, 0(a3)
  MULW a3, a3, t2
  ADDW a0, a0, a3
  SW a0, 0(t0)
  BLT t1, a2, bb30
  JAL zero, bb26
bb30:   # loop depth 3
  ADD t0, t1, zero
  JAL zero, bb29
bb31:   # loop depth 2
  ADD t1, t0, zero
  # implict jump to bb32
bb32:   # loop depth 3
  LA t2, y
  LA a5, b
  LA a4, v
  SH2ADD a3, t1, t2
  ADDIW t2, t1, 1
  LW a3, 0(a3)
  SH2ADD a4, t1, a4
  SH2ADD t1, a3, a5
  LW a3, 0(t1)
  LW a4, 0(a4)
  ADDW a3, a3, a4
  SW a3, 0(t1)
  BLT t2, a2, bb34
  # implict jump to bb33
bb33:   # loop depth 2
  JAL zero, bb25
bb34:   # loop depth 3
  ADD t1, t2, zero
  JAL zero, bb32
bb35:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb36
bb36:   # loop depth 2
  LA t2, b
  ADDIW t1, t0, 1
  SH2ADD t0, t0, t2
  SW zero, 0(t0)
  BLT t1, s0, bb37
  JAL zero, bb2
bb37:   # loop depth 2
  ADD t0, t1, zero
  JAL zero, bb36
