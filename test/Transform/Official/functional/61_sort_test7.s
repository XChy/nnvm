.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.global merge_sort
.section .bss
buf:
.space 800
.section .data

.section .text
main:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  LA a0, buf
  LA s1, buf
  CALL getarray
  ADD s0, a0, zero
  ADD a1, s0, zero
  ADD a0, zero, zero
  CALL merge_sort
  ADD a1, s1, zero
  ADD a0, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
merge_sort:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADDIW a0, s0, 1
  SLT a0, a0, s1
  XORI a0, a0, 1
  BNE a0, zero, bb26
  # implict jump to bb2
bb2:   # loop depth 0
  ADDW a1, s0, s1
  ADD a0, s0, zero
  SRAIW s2, a1, 31
  SRLIW s2, s2, 31
  ADD a1, a1, s2
  SRAIW s2, a1, 1
  ADD a1, s2, zero
  SLT s4, s2, s1
  SLT s3, s0, s2
  CALL merge_sort
  ADD a1, s1, zero
  ADD a0, s2, zero
  AND s3, s3, s4
  CALL merge_sort
  BNE s3, zero, bb19
  # implict jump to bb3
bb3:   # loop depth 0
  ADD t2, s0, zero
  ADD t1, s2, zero
  ADD a0, s0, zero
  # implict jump to bb4
bb4:   # loop depth 0
  BLT a0, s2, bb15
  # implict jump to bb5
bb5:   # loop depth 0
  ADD t0, t2, zero
  # implict jump to bb6
bb6:   # loop depth 0
  BLT t1, s1, bb12
  # implict jump to bb7
bb7:   # loop depth 0
  BLT s0, s1, bb9
  # implict jump to bb8
bb8:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb9:   # loop depth 0
  # implict jump to bb10
bb10:   # loop depth 1
  LA t1, buf
  ADDIW t0, s0, 1
  SH2ADD t1, s0, t1
  LW t2, 400(t1)
  SW t2, 0(t1)
  BLT t0, s1, bb11
  JAL zero, bb8
bb11:   # loop depth 1
  ADD s0, t0, zero
  JAL zero, bb10
bb12:   # loop depth 0
  # implict jump to bb13
bb13:   # loop depth 1
  LA t2, buf
  LA a1, buf
  SH2ADD a0, t1, t2
  ADDIW t2, t0, 1
  LW a0, 0(a0)
  SH2ADD t0, t0, a1
  ADDIW t1, t1, 1
  SW a0, 400(t0)
  BLT t1, s1, bb14
  JAL zero, bb7
bb14:   # loop depth 1
  ADD t0, t2, zero
  JAL zero, bb13
bb15:   # loop depth 0
  # implict jump to bb16
bb16:   # loop depth 1
  LA t0, buf
  LA a2, buf
  SH2ADD a1, a0, t0
  ADDIW t0, t2, 1
  LW a1, 0(a1)
  SH2ADD t2, t2, a2
  ADDIW a0, a0, 1
  SW a1, 400(t2)
  BLT a0, s2, bb18
  # implict jump to bb17
bb17:   # loop depth 0
  JAL zero, bb6
bb18:   # loop depth 1
  ADD t2, t0, zero
  JAL zero, bb16
bb19:   # loop depth 0
  ADD t2, s0, zero
  ADD t1, s2, zero
  ADD a0, s0, zero
  # implict jump to bb20
bb20:   # loop depth 1
  LA t0, buf
  LA a2, buf
  SH2ADD t0, a0, t0
  LW a1, 0(t0)
  SH2ADD a2, t1, a2
  LW a3, 0(a2)
  BLT a1, a3, bb25
  # implict jump to bb21
bb21:   # loop depth 1
  LW a1, 0(a2)
  LA t0, buf
  ADDIW t1, t1, 1
  SH2ADD t0, t2, t0
  SW a1, 400(t0)
  # implict jump to bb22
bb22:   # loop depth 1
  SLT a1, t1, s1
  SLT t0, a0, s2
  AND t0, t0, a1
  ADDIW t2, t2, 1
  BNE t0, zero, bb24
  # implict jump to bb23
bb23:   # loop depth 0
  JAL zero, bb4
bb24:   # loop depth 1
  JAL zero, bb20
bb25:   # loop depth 1
  LW a1, 0(t0)
  LA t0, buf
  ADDIW a0, a0, 1
  SH2ADD t0, t2, t0
  SW a1, 400(t0)
  JAL zero, bb22
bb26:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
