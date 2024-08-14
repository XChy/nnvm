.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss



b:
.space 40000

a:
.space 40000
res:
.space 40000
.section .data
m2:
.word 0x00000000
n1:
.word 0x00000000
m1:
.word 0x00000000

n2:
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
  LA s1, m1
  CALL getint
  LA s0, n1
  SW a0, 0(s1)
  LA s1, m1
  ADDI s2, zero, 0
  CALL getint
  SW a0, 0(s0)
  LW t0, 0(s1)
  BLT s2, t0, bb34
  # implict jump to bb1
bb1:   # loop depth 0
  LA s1, m2
  CALL getint
  LA s0, n2
  SW a0, 0(s1)
  LA s1, m2
  CALL getint
  SW a0, 0(s0)
  LW t0, 0(s1)
  BLT zero, t0, bb27
  # implict jump to bb2
bb2:   # loop depth 0
  LA t0, m1
  LW a3, 0(t0)
  BLT zero, a3, bb12
  # implict jump to bb3
bb3:   # loop depth 0
  BLT zero, a3, bb5
  # implict jump to bb4
bb4:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb5:   # loop depth 0
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb6
bb6:   # loop depth 1
  LA t0, n2
  LW t0, 0(t0)
  BLT zero, t0, bb9
  # implict jump to bb7
bb7:   # loop depth 1
  LA s2, m1
  ADDI a0, zero, 10
  ADDIW s1, s1, 400
  ADDIW s0, s0, 1
  CALL putch
  LW t0, 0(s2)
  BLT s0, t0, bb8
  JAL zero, bb4
bb8:   # loop depth 1
  JAL zero, bb6
bb9:   # loop depth 1
  LA t0, res
  ADD s3, zero, zero
  ADD s2, t0, s1
  # implict jump to bb10
bb10:   # loop depth 2
  LA s4, n2
  SH2ADD t0, s3, s2
  ADDIW s3, s3, 1
  LW a0, 0(t0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW t0, 0(s4)
  BLT s3, t0, bb11
  JAL zero, bb7
bb11:   # loop depth 2
  JAL zero, bb10
bb12:   # loop depth 0
  LA t1, n2
  ADD t0, zero, zero
  ADD a0, zero, zero
  ADD a1, zero, zero
  LW a4, 0(t1)
  # implict jump to bb13
bb13:   # loop depth 1
  BLT zero, a4, bb17
  # implict jump to bb14
bb14:   # loop depth 1
  # implict jump to bb15
bb15:   # loop depth 1
  ADDIW a1, a1, 400
  ADDIW a0, a0, 1
  BLT a0, a3, bb16
  JAL zero, bb3
bb16:   # loop depth 1
  JAL zero, bb13
bb17:   # loop depth 1
  LA t0, n1
  LA t1, n2
  LA a6, a
  LA t2, res
  LW a5, 0(t0)
  ADD a2, zero, zero
  ADD t3, a6, a1
  ADD a7, t2, a1
  LW a6, 0(t1)
  # implict jump to bb18
bb18:   # loop depth 2
  BLT zero, a5, bb23
  # implict jump to bb19
bb19:   # loop depth 2
  ADD t0, zero, zero
  # implict jump to bb20
bb20:   # loop depth 2
  ADDIW a2, a2, 1
  BLT a2, a6, bb22
  # implict jump to bb21
bb21:   # loop depth 1
  JAL zero, bb15
bb22:   # loop depth 2
  JAL zero, bb18
bb23:   # loop depth 2
  SH2ADD t4, a2, a7
  ADD t0, zero, zero
  LW t2, 0(t4)
  ADD t1, zero, zero
  # implict jump to bb24
bb24:   # loop depth 3
  LA s0, b
  SH2ADD t5, t0, t3
  LW t5, 0(t5)
  ADD s0, s0, t1
  SH2ADD s0, a2, s0
  ADDIW t1, t1, 400
  ADDIW t0, t0, 1
  LW s0, 0(s0)
  MULW t5, t5, s0
  ADDW t2, t2, t5
  BLT t0, a5, bb26
  # implict jump to bb25
bb25:   # loop depth 2
  SW t2, 0(t4)
  JAL zero, bb20
bb26:   # loop depth 3
  JAL zero, bb24
bb27:   # loop depth 0
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb28
bb28:   # loop depth 1
  LA t0, n2
  LW t0, 0(t0)
  BLT zero, t0, bb31
  # implict jump to bb29
bb29:   # loop depth 1
  LA t0, m2
  ADDIW s2, s2, 400
  ADDIW s1, s1, 1
  LW t0, 0(t0)
  BLT s1, t0, bb30
  JAL zero, bb2
bb30:   # loop depth 1
  JAL zero, bb28
bb31:   # loop depth 1
  LA t0, b
  ADD s0, zero, zero
  ADD s3, t0, s2
  # implict jump to bb32
bb32:   # loop depth 2
  CALL getint
  LA t1, n2
  SH2ADD t0, s0, s3
  ADDIW s0, s0, 1
  SW a0, 0(t0)
  LW t0, 0(t1)
  BLT s0, t0, bb33
  JAL zero, bb29
bb33:   # loop depth 2
  JAL zero, bb32
bb34:   # loop depth 0
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb35
bb35:   # loop depth 1
  LA t0, n1
  LW t0, 0(t0)
  BLT zero, t0, bb38
  # implict jump to bb36
bb36:   # loop depth 1
  LA t0, m1
  ADDIW s2, s2, 400
  ADDIW s1, s1, 1
  LW t0, 0(t0)
  BLT s1, t0, bb37
  JAL zero, bb1
bb37:   # loop depth 1
  JAL zero, bb35
bb38:   # loop depth 1
  LA t0, a
  ADD s0, zero, zero
  ADD s3, t0, s2
  # implict jump to bb39
bb39:   # loop depth 2
  CALL getint
  LA t1, n1
  SH2ADD t0, s0, s3
  ADDIW s0, s0, 1
  SW a0, 0(t0)
  LW t0, 0(t1)
  BLT s0, t0, bb40
  JAL zero, bb36
bb40:   # loop depth 2
  JAL zero, bb39
