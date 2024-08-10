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
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  ADD s0, a0, zero
  ADD s3, a1, zero
  ADDIW a0, s0, 1
  SLT a0, a0, s3
  XORI a0, a0, 1
  BNE a0, zero, bb26
  # implict jump to bb2
bb2:   # loop depth 0
  ADDW a1, s0, s3
  ADD a0, s0, zero
  SRAIW s1, a1, 31
  ADD s4, s0, zero
  SRLIW s2, s1, 31
  ADD s1, s0, zero
  ADD a1, a1, s2
  SRAIW s5, a1, 1
  ADD a1, s5, zero
  ADD s2, s5, zero
  CALL merge_sort
  ADD a1, s3, zero
  ADD a0, s5, zero
  CALL merge_sort
  # implict jump to bb3
bb3:   # loop depth 1
  BLT s4, s5, bb25
  # implict jump to bb4
bb4:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  BNE t0, zero, bb21
  # implict jump to bb6
bb6:   # loop depth 0
  BLT s4, s5, bb17
  # implict jump to bb7
bb7:   # loop depth 0
  # implict jump to bb8
bb8:   # loop depth 0
  BLT s2, s3, bb14
  # implict jump to bb9
bb9:   # loop depth 0
  BLT s0, s3, bb11
  # implict jump to bb10
bb10:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb11:   # loop depth 0
  # implict jump to bb12
bb12:   # loop depth 1
  LA t1, buf
  SLLIW t0, s0, 2
  ADDIW s0, s0, 1
  ADD t0, t1, t0
  LW t1, 400(t0)
  SW t1, 0(t0)
  BLT s0, s3, bb13
  JAL zero, bb10
bb13:   # loop depth 1
  JAL zero, bb12
bb14:   # loop depth 0
  # implict jump to bb15
bb15:   # loop depth 1
  LA t1, buf
  SLLIW t0, s2, 2
  LA t2, buf
  ADD t0, t1, t0
  LW t1, 0(t0)
  SLLIW t0, s1, 2
  ADD t0, t2, t0
  ADDIW s1, s1, 1
  ADDIW s2, s2, 1
  SW t1, 400(t0)
  BLT s2, s3, bb16
  JAL zero, bb9
bb16:   # loop depth 1
  JAL zero, bb15
bb17:   # loop depth 0
  # implict jump to bb18
bb18:   # loop depth 1
  LA t1, buf
  SLLIW t0, s4, 2
  LA t2, buf
  ADD t0, t1, t0
  LW t1, 0(t0)
  SLLIW t0, s1, 2
  ADD t0, t2, t0
  ADDIW s1, s1, 1
  ADDIW s4, s4, 1
  SW t1, 400(t0)
  BLT s4, s5, bb20
  # implict jump to bb19
bb19:   # loop depth 0
  JAL zero, bb8
bb20:   # loop depth 1
  JAL zero, bb18
bb21:   # loop depth 1
  LA t1, buf
  SLLIW t0, s4, 2
  LA a0, buf
  SLLIW t2, s2, 2
  ADD t0, t1, t0
  SLLIW a1, s1, 2
  LW t1, 0(t0)
  ADD t2, a0, t2
  LW a0, 0(t2)
  BLT t1, a0, bb24
  # implict jump to bb22
bb22:   # loop depth 1
  LW t1, 0(t2)
  LA t0, buf
  ADDIW s2, s2, 1
  ADD t0, t0, a1
  SW t1, 400(t0)
  # implict jump to bb23
bb23:   # loop depth 1
  ADDIW s1, s1, 1
  JAL zero, bb3
bb24:   # loop depth 1
  LW t1, 0(t0)
  LA t0, buf
  ADDIW s4, s4, 1
  ADD t0, t0, a1
  SW t1, 400(t0)
  JAL zero, bb23
bb25:   # loop depth 1
  SLT t0, s2, s3
  JAL zero, bb5
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
