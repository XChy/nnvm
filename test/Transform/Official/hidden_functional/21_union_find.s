.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.global find
.section .bss
parent:
.space 4020
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
  CALL getint
  ADDI s5, zero, 0
  ADD s1, a0, zero
  CALL getint
  ADD s4, a0, zero
  BLT s5, s1, bb17
  # implict jump to bb1
bb1:   # loop depth 0
  BLT zero, s4, bb12
  # implict jump to bb2
bb2:   # loop depth 0
  BLT s5, s1, bb5
  # implict jump to bb3
bb3:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb4
bb4:   # loop depth 0
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb5:   # loop depth 0
  ADD a0, zero, zero
  ADD t1, zero, zero
  # implict jump to bb6
bb6:   # loop depth 1
  LA t0, parent
  SH2ADD t2, t1, t0
  ADDIW t0, a0, 1
  LW t2, 0(t2)
  BEQ t2, t1, bb11
  # implict jump to bb7
bb7:   # loop depth 1
  # implict jump to bb8
bb8:   # loop depth 1
  ADDIW t1, t1, 1
  BLT t1, s1, bb10
  # implict jump to bb9
bb9:   # loop depth 0
  JAL zero, bb4
bb10:   # loop depth 1
  JAL zero, bb6
bb11:   # loop depth 1
  ADD a0, t0, zero
  JAL zero, bb8
bb12:   # loop depth 0
  ADD s2, zero, zero
  # implict jump to bb13
bb13:   # loop depth 1
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s3, a0, zero
  ADD a0, s0, zero
  CALL find
  ADD s0, a0, zero
  ADD a0, s3, zero
  CALL find
  BNE s0, a0, bb16
  # implict jump to bb14
bb14:   # loop depth 1
  ADDIW s2, s2, 1
  BLT s2, s4, bb15
  JAL zero, bb2
bb15:   # loop depth 1
  JAL zero, bb13
bb16:   # loop depth 1
  LA t0, parent
  SH2ADD t0, a0, t0
  SW s0, 0(t0)
  JAL zero, bb14
bb17:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb18
bb18:   # loop depth 1
  LA t2, parent
  ADDIW t1, t0, 1
  SH2ADD t2, t0, t2
  SW t0, 0(t2)
  BLT t1, s1, bb19
  JAL zero, bb1
bb19:   # loop depth 1
  ADD t0, t1, zero
  JAL zero, bb18
find:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  LA t0, parent
  SH2ADD s0, a0, t0
  LW t0, 0(s0)
  BEQ t0, a0, bb22
  # implict jump to bb21
bb21:   # loop depth 0
  LW a0, 0(s0)
  CALL find
  ADD t0, a0, zero
  ADD a0, t0, zero
  SW t0, 0(s0)
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb22:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
