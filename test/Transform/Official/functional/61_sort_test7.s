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
  LA s1, buf
  ADD a0, s1, zero
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
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  ADD s2, a0, zero
  ADD s1, a1, zero
  ADDIW t0, s2, 1
  BGE t0, s1, bb26
  # implict jump to bb2
bb2:   # loop depth 0
  ADDW t0, s2, s1
  ADD a0, s2, zero
  SRAIW t1, t0, 31
  LA s0, buf
  SRLIW t1, t1, 31
  ADD t0, t0, t1
  SRAIW s3, t0, 1
  ADD a1, s3, zero
  SLT s5, s3, s1
  SLT s4, s2, s3
  CALL merge_sort
  ADD a1, s1, zero
  ADD a0, s3, zero
  AND s4, s4, s5
  CALL merge_sort
  BNE s4, zero, bb19
  # implict jump to bb3
bb3:   # loop depth 0
  ADD t1, s2, zero
  ADD t0, s3, zero
  ADD t2, s2, zero
  # implict jump to bb4
bb4:   # loop depth 0
  BLT t2, s3, bb15
  # implict jump to bb5
bb5:   # loop depth 0
  # implict jump to bb6
bb6:   # loop depth 0
  BLT t0, s1, bb12
  # implict jump to bb7
bb7:   # loop depth 0
  BLT s2, s1, bb9
  # implict jump to bb8
bb8:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb9:   # loop depth 0
  # implict jump to bb10
bb10:   # loop depth 1
  SH2ADD t0, s2, s0
  ADDIW s2, s2, 1
  LW t1, 400(t0)
  SW t1, 0(t0)
  BLT s2, s1, bb11
  JAL zero, bb8
bb11:   # loop depth 1
  JAL zero, bb10
bb12:   # loop depth 0
  # implict jump to bb13
bb13:   # loop depth 1
  SH2ADD a0, t0, s0
  SH2ADD t2, t1, s0
  LW a0, 0(a0)
  ADDIW t1, t1, 1
  ADDIW t0, t0, 1
  SW a0, 400(t2)
  BLT t0, s1, bb14
  JAL zero, bb7
bb14:   # loop depth 1
  JAL zero, bb13
bb15:   # loop depth 0
  # implict jump to bb16
bb16:   # loop depth 1
  SH2ADD a1, t2, s0
  SH2ADD a0, t1, s0
  LW a1, 0(a1)
  ADDIW t1, t1, 1
  ADDIW t2, t2, 1
  SW a1, 400(a0)
  BLT t2, s3, bb18
  # implict jump to bb17
bb17:   # loop depth 1
  JAL zero, bb6
bb18:   # loop depth 1
  JAL zero, bb16
bb19:   # loop depth 0
  ADD t1, s2, zero
  ADD t0, s3, zero
  ADD t2, s2, zero
  # implict jump to bb20
bb20:   # loop depth 1
  SH2ADD a0, t2, s0
  SH2ADD a2, t0, s0
  LW a1, 0(a0)
  LW a3, 0(a2)
  BLT a1, a3, bb25
  # implict jump to bb21
bb21:   # loop depth 1
  LW a1, 0(a2)
  ADDIW t0, t0, 1
  SH2ADD a0, t1, s0
  SW a1, 400(a0)
  # implict jump to bb22
bb22:   # loop depth 1
  SLT a1, t0, s1
  SLT a0, t2, s3
  AND a0, a0, a1
  ADDIW t1, t1, 1
  BNE a0, zero, bb24
  # implict jump to bb23
bb23:   # loop depth 1
  JAL zero, bb4
bb24:   # loop depth 1
  JAL zero, bb20
bb25:   # loop depth 1
  LW a1, 0(a0)
  ADDIW t2, t2, 1
  SH2ADD a0, t1, s0
  SW a1, 400(a0)
  JAL zero, bb22
bb26:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
