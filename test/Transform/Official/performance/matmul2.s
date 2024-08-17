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
  SD s4, 40(sp)
  LUI t0, 1
  LA s1, a
  ADDIW t0, t0, -96
  ADD s3, zero, zero
  ADD s2, zero, zero
  ADD s0, zero, t0
  # implict jump to bb1
bb1:   # loop depth 1
  SLTI t0, s3, 1000
  BNE t0, zero, bb39
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI a0, zero, 23
  LA s2, b
  ADD s4, zero, zero
  ADD s3, zero, zero
  CALL _sysy_starttime
  # implict jump to bb3
bb3:   # loop depth 1
  ADD t0, zero, zero
  ADD t2, zero, zero
  SH2ADD a1, s4, s1
  ADD a0, s2, s3
  # implict jump to bb4
bb4:   # loop depth 2
  ADD a2, a1, t2
  ADDIW t1, t0, 1
  LW a2, 0(a2)
  SH2ADD t0, t0, a0
  ADDW t2, t2, s0
  SLTI a3, t1, 1000
  SW a2, 0(t0)
  BNE a3, zero, bb38
  # implict jump to bb5
bb5:   # loop depth 1
  ADDIW s4, s4, 1
  ADDW s3, s3, s0
  SLTI t0, s4, 1000
  BNE t0, zero, bb37
  # implict jump to bb6
bb6:   # loop depth 1
  ADD t2, zero, zero
  ADD a0, zero, zero
  # implict jump to bb7
bb7:   # loop depth 1
  LA a2, c
  ADD t0, zero, zero
  # implict jump to bb8
bb8:   # loop depth 2
  ADD a3, zero, zero
  ADD t1, zero, zero
  ADD a1, zero, zero
  # implict jump to bb9
bb9:   # loop depth 3
  ADD a4, s1, a0
  SH2ADD a4, t1, a4
  LW a4, 0(a4)
  ADD a5, s2, a1
  SH2ADD a5, t0, a5
  ADDIW t1, t1, 1
  ADDW a1, a1, s0
  LW a5, 0(a5)
  SLTI a6, t1, 1000
  MULW a4, a4, a5
  ADDW a3, a3, a4
  BNE a6, zero, bb36
  # implict jump to bb10
bb10:   # loop depth 2
  ADD a1, a2, a0
  ADDIW t1, t0, 1
  SH2ADD t0, t0, a1
  SLTI a1, t1, 1000
  SW a3, 0(t0)
  BNE a1, zero, bb35
  # implict jump to bb11
bb11:   # loop depth 1
  ADDIW t2, t2, 1
  ADDW a0, a0, s0
  SLTI t0, t2, 1000
  BNE t0, zero, bb34
  # implict jump to bb12
bb12:   # loop depth 1
  ADD t0, zero, zero
  ADD t1, zero, zero
  # implict jump to bb13
bb13:   # loop depth 1
  LUI a0, 524288
  ADD t2, zero, zero
  ADDIW a0, a0, -1
  ADD a1, zero, a0
  # implict jump to bb14
bb14:   # loop depth 2
  ADD a3, a2, t1
  SH2ADD a0, t2, a3
  ADDIW t2, t2, 1
  LW a0, 0(a0)
  SLTI a4, t2, 1000
  MIN a1, a0, a1
  BNE a4, zero, bb33
  # implict jump to bb15
bb15:   # loop depth 1
  ADD t2, zero, zero
  # implict jump to bb16
bb16:   # loop depth 2
  ADDIW a0, t2, 1
  SH2ADD t2, t2, a3
  SLTI a4, a0, 1000
  SW a1, 0(t2)
  BNE a4, zero, bb32
  # implict jump to bb17
bb17:   # loop depth 1
  ADDIW t0, t0, 1
  ADDW t1, t1, s0
  SLTI t2, t0, 1000
  BNE t2, zero, bb31
  # implict jump to bb18
bb18:   # loop depth 1
  ADD t1, zero, zero
  ADD t2, zero, zero
  # implict jump to bb19
bb19:   # loop depth 1
  ADD a1, zero, zero
  ADD t0, zero, zero
  SH2ADD a4, t1, a2
  ADD a3, a2, t2
  # implict jump to bb20
bb20:   # loop depth 2
  ADD a0, a1, zero
  ADD a5, a4, t0
  ADDIW a1, a0, 1
  LW a5, 0(a5)
  SH2ADD a0, a0, a3
  ADDW t0, t0, s0
  SLTI a6, a1, 1000
  SUBW a5, zero, a5
  SW a5, 0(a0)
  BNE a6, zero, bb30
  # implict jump to bb21
bb21:   # loop depth 1
  ADDIW t1, t1, 1
  ADDW t2, t2, s0
  SLTI t0, t1, 1000
  BNE t0, zero, bb29
  # implict jump to bb22
bb22:   # loop depth 1
  ADD s1, zero, zero
  ADD t0, zero, zero
  ADD t2, zero, zero
  # implict jump to bb23
bb23:   # loop depth 1
  ADD t1, zero, zero
  ADD a0, a2, t2
  # implict jump to bb24
bb24:   # loop depth 2
  SH2ADD a1, t1, a0
  ADDIW t1, t1, 1
  LW a1, 0(a1)
  SLTI a3, t1, 1000
  ADDW s1, s1, a1
  BNE a3, zero, bb28
  # implict jump to bb25
bb25:   # loop depth 1
  ADDIW t0, t0, 1
  ADDW t2, t2, s0
  SLTI t1, t0, 1000
  BNE t1, zero, bb27
  # implict jump to bb26
bb26:   # loop depth 0
  ADDI a0, zero, 92
  CALL _sysy_stoptime
  ADD a0, s1, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb27:   # loop depth 1
  JAL zero, bb23
bb28:   # loop depth 2
  JAL zero, bb24
bb29:   # loop depth 1
  JAL zero, bb19
bb30:   # loop depth 2
  JAL zero, bb20
bb31:   # loop depth 1
  JAL zero, bb13
bb32:   # loop depth 2
  ADD t2, a0, zero
  JAL zero, bb16
bb33:   # loop depth 2
  JAL zero, bb14
bb34:   # loop depth 1
  JAL zero, bb7
bb35:   # loop depth 2
  ADD t0, t1, zero
  JAL zero, bb8
bb36:   # loop depth 3
  JAL zero, bb9
bb37:   # loop depth 1
  JAL zero, bb3
bb38:   # loop depth 2
  ADD t0, t1, zero
  JAL zero, bb4
bb39:   # loop depth 1
  ADD a0, s1, s2
  CALL getarray
  XORI t0, a0, 1000
  BNE t0, zero, bb41
  # implict jump to bb40
bb40:   # loop depth 1
  ADDW s2, s2, s0
  ADDIW s3, s3, 1
  JAL zero, bb1
bb41:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
