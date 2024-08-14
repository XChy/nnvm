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
  LA s0, m1
  CALL getint
  LA s2, n1
  SW a0, 0(s0)
  LA s0, m1
  ADDI s1, zero, 0
  CALL getint
  SW a0, 0(s2)
  LW t0, 0(s0)
  BLT s1, t0, bb34
  # implict jump to bb1
bb1:   # loop depth 0
  LA s0, m2
  CALL getint
  LA s1, n2
  SW a0, 0(s0)
  LA s0, m2
  CALL getint
  SW a0, 0(s1)
  LW t0, 0(s0)
  BLT zero, t0, bb27
  # implict jump to bb2
bb2:   # loop depth 0
  LA t0, m1
  LW a1, 0(t0)
  BLT zero, a1, bb12
  # implict jump to bb3
bb3:   # loop depth 0
  BLT zero, a1, bb5
  # implict jump to bb4
bb4:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb5:   # loop depth 0
  ADD s2, zero, zero
  # implict jump to bb6
bb6:   # loop depth 1
  LA t0, n2
  LW t0, 0(t0)
  BLT zero, t0, bb9
  # implict jump to bb7
bb7:   # loop depth 1
  LA s0, m1
  ADDI a0, zero, 10
  ADDIW s2, s2, 1
  CALL putch
  LW t0, 0(s0)
  BLT s2, t0, bb8
  JAL zero, bb4
bb8:   # loop depth 1
  JAL zero, bb6
bb9:   # loop depth 1
  ADDI t0, zero, 400
  LA t1, res
  MULW t0, s2, t0
  ADD s0, zero, zero
  ADD s3, t1, t0
  # implict jump to bb10
bb10:   # loop depth 2
  LA s1, n2
  SH2ADD t0, s0, s3
  ADDIW s0, s0, 1
  LW a0, 0(t0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW t0, 0(s1)
  BLT s0, t0, bb11
  JAL zero, bb7
bb11:   # loop depth 2
  JAL zero, bb10
bb12:   # loop depth 0
  LA t1, n2
  ADD t0, zero, zero
  ADD a0, zero, zero
  LW a2, 0(t1)
  # implict jump to bb13
bb13:   # loop depth 1
  BLT zero, a2, bb17
  # implict jump to bb14
bb14:   # loop depth 1
  # implict jump to bb15
bb15:   # loop depth 1
  ADDIW a0, a0, 1
  BLT a0, a1, bb16
  JAL zero, bb3
bb16:   # loop depth 1
  JAL zero, bb13
bb17:   # loop depth 1
  LA t1, n1
  ADDI t0, zero, 400
  LA a4, n2
  MULW t0, a0, t0
  LW a3, 0(t1)
  LA a5, a
  LA t1, res
  ADD t2, zero, zero
  ADD a6, a5, t0
  LW a4, 0(a4)
  ADD a5, t1, t0
  # implict jump to bb18
bb18:   # loop depth 2
  BLT zero, a3, bb23
  # implict jump to bb19
bb19:   # loop depth 2
  ADD t0, zero, zero
  # implict jump to bb20
bb20:   # loop depth 2
  ADDIW t2, t2, 1
  BLT t2, a4, bb22
  # implict jump to bb21
bb21:   # loop depth 1
  JAL zero, bb15
bb22:   # loop depth 2
  JAL zero, bb18
bb23:   # loop depth 2
  SH2ADD a7, t2, a5
  ADD t0, zero, zero
  LW t1, 0(a7)
  # implict jump to bb24
bb24:   # loop depth 3
  ADDI t3, zero, 400
  MULW t4, t0, t3
  LA t5, b
  SH2ADD t3, t0, a6
  LW t3, 0(t3)
  ADDIW t0, t0, 1
  ADD t4, t5, t4
  SH2ADD t4, t2, t4
  LW t4, 0(t4)
  MULW t3, t3, t4
  ADDW t1, t1, t3
  BLT t0, a3, bb26
  # implict jump to bb25
bb25:   # loop depth 2
  SW t1, 0(a7)
  JAL zero, bb20
bb26:   # loop depth 3
  JAL zero, bb24
bb27:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb28
bb28:   # loop depth 1
  LA t0, n2
  LW t0, 0(t0)
  BLT zero, t0, bb31
  # implict jump to bb29
bb29:   # loop depth 1
  LA t0, m2
  ADDIW s1, s1, 1
  LW t0, 0(t0)
  BLT s1, t0, bb30
  JAL zero, bb2
bb30:   # loop depth 1
  JAL zero, bb28
bb31:   # loop depth 1
  ADDI t0, zero, 400
  LA t1, b
  MULW t0, s1, t0
  ADD s0, zero, zero
  ADD s2, t1, t0
  # implict jump to bb32
bb32:   # loop depth 2
  CALL getint
  LA t1, n2
  SH2ADD t0, s0, s2
  ADDIW s0, s0, 1
  SW a0, 0(t0)
  LW t0, 0(t1)
  BLT s0, t0, bb33
  JAL zero, bb29
bb33:   # loop depth 2
  JAL zero, bb32
bb34:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb35
bb35:   # loop depth 1
  LA t0, n1
  LW t0, 0(t0)
  BLT zero, t0, bb38
  # implict jump to bb36
bb36:   # loop depth 1
  LA t0, m1
  ADDIW s1, s1, 1
  LW t0, 0(t0)
  BLT s1, t0, bb37
  JAL zero, bb1
bb37:   # loop depth 1
  JAL zero, bb35
bb38:   # loop depth 1
  ADDI t0, zero, 400
  LA t1, a
  MULW t0, s1, t0
  ADD s0, zero, zero
  ADD s2, t1, t0
  # implict jump to bb39
bb39:   # loop depth 2
  CALL getint
  LA t1, n1
  SH2ADD t0, s0, s2
  ADDIW s0, s0, 1
  SW a0, 0(t0)
  LW t0, 0(t1)
  BLT s0, t0, bb40
  JAL zero, bb36
bb40:   # loop depth 2
  JAL zero, bb39
