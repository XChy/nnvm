.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
c:
.space 4000000
b:
.space 4000000
a:
.space 4000000
.section .data



.section .text
main:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  LA s0, a
  ADD s2, zero, zero
  ADD s1, zero, zero
  # implict jump to bb1
bb1:   # loop depth 1
  SLTI t0, s2, 1000
  BNE t0, zero, bb39
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI a0, zero, 23
  LA s2, b
  ADD s1, zero, zero
  ADD s3, zero, zero
  CALL _sysy_starttime
  # implict jump to bb3
bb3:   # loop depth 1
  ADD t0, zero, zero
  ADD t2, zero, zero
  ADD a0, s2, s3
  # implict jump to bb4
bb4:   # loop depth 2
  LUI a2, 1
  ADD t1, s0, t2
  SH2ADD t1, s1, t1
  ADDIW a2, a2, -96
  LW a1, 0(t1)
  ADDIW t1, t0, 1
  SH2ADD t0, t0, a0
  ADDW t2, t2, a2
  SLTI a2, t1, 1000
  SW a1, 0(t0)
  BNE a2, zero, bb38
  # implict jump to bb5
bb5:   # loop depth 1
  LUI t1, 1
  ADDIW s1, s1, 1
  ADDIW t1, t1, -96
  SLTI t0, s1, 1000
  ADDW s3, s3, t1
  BNE t0, zero, bb37
  # implict jump to bb6
bb6:   # loop depth 0
  ADD t2, zero, zero
  ADD a0, zero, zero
  # implict jump to bb7
bb7:   # loop depth 1
  LA a1, c
  ADD t1, zero, zero
  # implict jump to bb8
bb8:   # loop depth 2
  ADD a3, zero, zero
  ADD a2, zero, zero
  ADD t0, zero, zero
  # implict jump to bb9
bb9:   # loop depth 3
  ADD a4, s0, a0
  SH2ADD a4, a2, a4
  LW a4, 0(a4)
  ADD a5, s2, t0
  SH2ADD a5, t1, a5
  LUI a6, 1
  ADDIW a6, a6, -96
  ADDIW a2, a2, 1
  LW a5, 0(a5)
  ADDW t0, t0, a6
  SLTI a6, a2, 1000
  MULW a4, a4, a5
  ADDW a3, a3, a4
  BNE a6, zero, bb36
  # implict jump to bb10
bb10:   # loop depth 2
  ADD a2, a1, a0
  ADDIW t0, t1, 1
  SH2ADD t1, t1, a2
  SLTI a2, t0, 1000
  SW a3, 0(t1)
  BNE a2, zero, bb35
  # implict jump to bb11
bb11:   # loop depth 1
  LUI t1, 1
  ADDIW t2, t2, 1
  ADDIW t1, t1, -96
  SLTI t0, t2, 1000
  ADDW a0, a0, t1
  BNE t0, zero, bb34
  # implict jump to bb12
bb12:   # loop depth 0
  ADD t2, zero, zero
  ADD a0, zero, zero
  # implict jump to bb13
bb13:   # loop depth 1
  LUI t1, 524288
  ADD t0, zero, zero
  ADDIW t1, t1, -1
  ADD a2, zero, t1
  # implict jump to bb14
bb14:   # loop depth 2
  ADD a3, a1, a0
  SH2ADD t1, t0, a3
  ADDIW t0, t0, 1
  LW t1, 0(t1)
  SLTI a4, t0, 1000
  MIN a2, t1, a2
  BNE a4, zero, bb33
  # implict jump to bb15
bb15:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb16
bb16:   # loop depth 2
  ADDIW t1, t0, 1
  SH2ADD t0, t0, a3
  SLTI a4, t1, 1000
  SW a2, 0(t0)
  BNE a4, zero, bb32
  # implict jump to bb17
bb17:   # loop depth 1
  LUI t1, 1
  ADDIW t2, t2, 1
  ADDIW t1, t1, -96
  SLTI t0, t2, 1000
  ADDW a0, a0, t1
  BNE t0, zero, bb31
  # implict jump to bb18
bb18:   # loop depth 0
  ADD a2, zero, zero
  ADD t1, zero, zero
  # implict jump to bb19
bb19:   # loop depth 1
  ADD t2, zero, zero
  ADD t0, zero, zero
  ADD a3, a1, t1
  # implict jump to bb20
bb20:   # loop depth 2
  LUI a5, 1
  ADD a0, a1, t0
  SH2ADD a0, a2, a0
  ADDIW a5, a5, -96
  LW a4, 0(a0)
  ADDIW a0, t2, 1
  SH2ADD t2, t2, a3
  ADDW t0, t0, a5
  SLTI a5, a0, 1000
  SUBW a4, zero, a4
  SW a4, 0(t2)
  BNE a5, zero, bb30
  # implict jump to bb21
bb21:   # loop depth 1
  LUI t2, 1
  ADDIW a2, a2, 1
  ADDIW t2, t2, -96
  SLTI t0, a2, 1000
  ADDW t1, t1, t2
  BNE t0, zero, bb29
  # implict jump to bb22
bb22:   # loop depth 0
  ADD s0, zero, zero
  ADD t0, zero, zero
  ADD t2, zero, zero
  # implict jump to bb23
bb23:   # loop depth 1
  ADD t1, zero, zero
  ADD a0, a1, t2
  # implict jump to bb24
bb24:   # loop depth 2
  SH2ADD a2, t1, a0
  ADDIW t1, t1, 1
  LW a2, 0(a2)
  SLTI a3, t1, 1000
  ADDW s0, s0, a2
  BNE a3, zero, bb28
  # implict jump to bb25
bb25:   # loop depth 1
  LUI a0, 1
  ADDIW t0, t0, 1
  ADDIW a0, a0, -96
  SLTI t1, t0, 1000
  ADDW t2, t2, a0
  BNE t1, zero, bb27
  # implict jump to bb26
bb26:   # loop depth 0
  ADDI a0, zero, 92
  CALL _sysy_stoptime
  ADD a0, s0, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb27:   # loop depth 1
  JAL zero, bb23
bb28:   # loop depth 2
  JAL zero, bb24
bb29:   # loop depth 1
  JAL zero, bb19
bb30:   # loop depth 2
  ADD t2, a0, zero
  JAL zero, bb20
bb31:   # loop depth 1
  JAL zero, bb13
bb32:   # loop depth 2
  ADD t0, t1, zero
  JAL zero, bb16
bb33:   # loop depth 2
  JAL zero, bb14
bb34:   # loop depth 1
  JAL zero, bb7
bb35:   # loop depth 2
  ADD t1, t0, zero
  JAL zero, bb8
bb36:   # loop depth 3
  JAL zero, bb9
bb37:   # loop depth 1
  JAL zero, bb3
bb38:   # loop depth 2
  ADD t0, t1, zero
  JAL zero, bb4
bb39:   # loop depth 1
  ADD a0, s0, s1
  CALL getarray
  XORI t0, a0, 1000
  BNE t0, zero, bb41
  # implict jump to bb40
bb40:   # loop depth 1
  LUI t0, 1
  ADDIW s2, s2, 1
  ADDIW t0, t0, -96
  ADDW s1, s1, t0
  JAL zero, bb1
bb41:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
