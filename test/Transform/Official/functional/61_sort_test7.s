.global main
.global merge_sort
.section .bss
buf:
.space 800
.section .data

.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  LA a0, buf
  CALL getarray
  ADD s0, a0, zero
  ADD a0, zero, zero
  ADD a1, s0, zero
  CALL merge_sort
  ADD a0, s0, zero
  LA a1, buf
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
merge_sort:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADDIW a0, s0, 1
  SLT a0, a0, s1
  XORI a0, a0, 1
  BNE a0, zero, bb26
  # implict jump to bb2
bb2:   # loop depth 0
  ADDW a0, s0, s1
  SRAIW a1, a0, 31
  SRLIW a1, a1, 31
  ADD a0, a0, a1
  SRAIW s2, a0, 1
  ADD a0, s0, zero
  ADD a1, s2, zero
  CALL merge_sort
  ADD a0, s2, zero
  ADD a1, s1, zero
  CALL merge_sort
  LA t0, buf
  ADDI a1, t0, 400
  ADD t0, s0, zero
  ADD t1, s2, zero
  ADD t2, s0, zero
  # implict jump to bb3
bb3:   # loop depth 1
  BLT t2, s2, bb25
  # implict jump to bb4
bb4:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  BNE a0, zero, bb21
  # implict jump to bb6
bb6:   # loop depth 0
  BLT t2, s2, bb17
  # implict jump to bb7
bb7:   # loop depth 0
  # implict jump to bb8
bb8:   # loop depth 0
  BLT t1, s1, bb14
  # implict jump to bb9
bb9:   # loop depth 0
  BLT s0, s1, bb11
  # implict jump to bb10
bb10:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb11:   # loop depth 0
  # implict jump to bb12
bb12:   # loop depth 1
  SLLIW t0, s0, 2
  LA t1, buf
  ADD t1, t1, t0
  ADD t0, a1, t0
  LW t0, 0(t0)
  SW t0, 0(t1)
  ADDIW s0, s0, 1
  BLT s0, s1, bb13
  JAL zero, bb10
bb13:   # loop depth 1
  JAL zero, bb12
bb14:   # loop depth 0
  # implict jump to bb15
bb15:   # loop depth 1
  SLLIW t2, t0, 2
  ADD t2, a1, t2
  SLLIW a0, t1, 2
  LA a2, buf
  ADD a0, a2, a0
  LW a0, 0(a0)
  SW a0, 0(t2)
  ADDIW t1, t1, 1
  ADDIW t0, t0, 1
  BLT t1, s1, bb16
  JAL zero, bb9
bb16:   # loop depth 1
  JAL zero, bb15
bb17:   # loop depth 0
  # implict jump to bb18
bb18:   # loop depth 1
  SLLIW a0, t0, 2
  ADD a0, a1, a0
  SLLIW a2, t2, 2
  LA a3, buf
  ADD a2, a3, a2
  LW a2, 0(a2)
  SW a2, 0(a0)
  ADDIW t2, t2, 1
  ADDIW t0, t0, 1
  BLT t2, s2, bb20
  # implict jump to bb19
bb19:   # loop depth 1
  JAL zero, bb8
bb20:   # loop depth 1
  JAL zero, bb18
bb21:   # loop depth 1
  SLLIW a0, t2, 2
  LA a2, buf
  ADD a0, a2, a0
  LW a2, 0(a0)
  SLLIW a3, t1, 2
  LA a4, buf
  ADD a3, a4, a3
  LW a4, 0(a3)
  SLLIW a5, t0, 2
  BLT a2, a4, bb24
  # implict jump to bb22
bb22:   # loop depth 1
  ADD a0, a1, a5
  LW a2, 0(a3)
  SW a2, 0(a0)
  ADDIW t1, t1, 1
  # implict jump to bb23
bb23:   # loop depth 1
  ADDIW t0, t0, 1
  JAL zero, bb3
bb24:   # loop depth 1
  ADD a2, a1, a5
  LW a0, 0(a0)
  SW a0, 0(a2)
  ADDIW t2, t2, 1
  JAL zero, bb23
bb25:   # loop depth 1
  SLT a0, t1, s1
  JAL zero, bb5
bb26:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
