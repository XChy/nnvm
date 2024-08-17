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
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  LA s5, x
  LA s1, y
  LA s0, v
  LA s4, a
  ADD a0, s5, zero
  LA s3, b
  ADD s6, zero, zero
  CALL getarray
  ADD t0, a0, zero
  ADD a0, s1, zero
  ADDIW s2, t0, -1
  CALL getarray
  ADD a0, s0, zero
  CALL getarray
  ADD a0, s4, zero
  CALL getarray
  ADDI a0, zero, 39
  CALL _sysy_starttime
  # implict jump to bb1
bb1:   # loop depth 1
  BLT zero, s2, bb31
  # implict jump to bb2
bb2:   # loop depth 1
  ADD t2, zero, zero
  # implict jump to bb3
bb3:   # loop depth 2
  BLT t2, s2, bb22
  # implict jump to bb4
bb4:   # loop depth 1
  BLT zero, s2, bb19
  # implict jump to bb5
bb5:   # loop depth 1
  ADD t2, zero, zero
  # implict jump to bb6
bb6:   # loop depth 2
  BLT t2, s2, bb10
  # implict jump to bb7
bb7:   # loop depth 1
  ADDIW s6, s6, 1
  SLTI t0, s6, 100
  BNE t0, zero, bb9
  # implict jump to bb8
bb8:   # loop depth 0
  ADDI a0, zero, 47
  CALL _sysy_stoptime
  ADD a1, s3, zero
  ADD a0, s2, zero
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
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb9:   # loop depth 1
  JAL zero, bb1
bb10:   # loop depth 2
  SH2ADD t1, t2, s5
  ADDIW a0, t2, 1
  LW t0, 0(t1)
  LW a1, 4(t1)
  BLT t0, a1, bb16
  # implict jump to bb11
bb11:   # loop depth 2
  BLT t0, a1, bb13
  # implict jump to bb12
bb12:   # loop depth 2
  ADD t2, a0, zero
  JAL zero, bb6
bb13:   # loop depth 2
  SH2ADD t1, t2, s3
  LW t1, 0(t1)
  ADDIW t1, t1, -1
  # implict jump to bb14
bb14:   # loop depth 3
  SH2ADD t2, t0, s1
  SH2ADD a3, t0, s0
  LW t2, 0(t2)
  ADDIW t0, t0, 1
  SH2ADD t2, t2, s4
  LW a2, 0(t2)
  LW a3, 0(a3)
  MULW a3, a3, t1
  ADDW a2, a2, a3
  SW a2, 0(t2)
  BLT t0, a1, bb15
  ADD t2, a0, zero
  JAL zero, bb6
bb15:   # loop depth 3
  JAL zero, bb14
bb16:   # loop depth 2
  ADD t1, t0, zero
  # implict jump to bb17
bb17:   # loop depth 3
  SH2ADD a2, t1, s1
  SH2ADD a4, t1, s0
  LW a2, 0(a2)
  ADDIW t1, t1, 1
  SH2ADD a2, a2, s4
  LW a3, 0(a2)
  LW a4, 0(a4)
  ADDW a3, a3, a4
  SW a3, 0(a2)
  BLT t1, a1, bb18
  JAL zero, bb11
bb18:   # loop depth 3
  JAL zero, bb17
bb19:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb20
bb20:   # loop depth 2
  SH2ADD t1, t0, s4
  ADDIW t0, t0, 1
  SW zero, 0(t1)
  BLT t0, s2, bb21
  JAL zero, bb5
bb21:   # loop depth 2
  JAL zero, bb20
bb22:   # loop depth 2
  SH2ADD t1, t2, s5
  ADDIW a0, t2, 1
  LW t0, 0(t1)
  LW a1, 4(t1)
  BLT t0, a1, bb28
  # implict jump to bb23
bb23:   # loop depth 2
  BLT t0, a1, bb25
  # implict jump to bb24
bb24:   # loop depth 2
  ADD t2, a0, zero
  JAL zero, bb3
bb25:   # loop depth 2
  SH2ADD t1, t2, s4
  LW t1, 0(t1)
  ADDIW t1, t1, -1
  # implict jump to bb26
bb26:   # loop depth 3
  SH2ADD t2, t0, s1
  SH2ADD a3, t0, s0
  LW t2, 0(t2)
  ADDIW t0, t0, 1
  SH2ADD t2, t2, s3
  LW a2, 0(t2)
  LW a3, 0(a3)
  MULW a3, a3, t1
  ADDW a2, a2, a3
  SW a2, 0(t2)
  BLT t0, a1, bb27
  ADD t2, a0, zero
  JAL zero, bb3
bb27:   # loop depth 3
  JAL zero, bb26
bb28:   # loop depth 2
  ADD t1, t0, zero
  # implict jump to bb29
bb29:   # loop depth 3
  SH2ADD a2, t1, s1
  SH2ADD a4, t1, s0
  LW a2, 0(a2)
  ADDIW t1, t1, 1
  SH2ADD a2, a2, s3
  LW a3, 0(a2)
  LW a4, 0(a4)
  ADDW a3, a3, a4
  SW a3, 0(a2)
  BLT t1, a1, bb30
  JAL zero, bb23
bb30:   # loop depth 3
  JAL zero, bb29
bb31:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb32
bb32:   # loop depth 2
  SH2ADD t1, t0, s3
  ADDIW t0, t0, 1
  SW zero, 0(t1)
  BLT t0, s2, bb33
  JAL zero, bb2
bb33:   # loop depth 2
  JAL zero, bb32
