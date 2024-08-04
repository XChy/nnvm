.global main
.global merge_sort
.section .bss
buf:
.space 800
.section .data

.section .text
main:
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
merge_sort:
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
bb2:
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
  ADD t0, s0, zero
  ADD t1, s2, zero
  ADD t2, s0, zero
  # implict jump to bb3
bb3:
  BLT t2, s2, bb25
  # implict jump to bb4
bb4:
  ADD a0, zero, zero
  # implict jump to bb5
bb5:
  BNE a0, zero, bb21
  # implict jump to bb6
bb6:
  BLT t2, s2, bb17
  # implict jump to bb7
bb7:
  # implict jump to bb8
bb8:
  BLT t1, s1, bb14
  # implict jump to bb9
bb9:
  BLT s0, s1, bb11
  # implict jump to bb10
bb10:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb11:
  LA t0, buf
  ADDI t0, t0, 400
  # implict jump to bb12
bb12:
  SLLIW t1, s0, 2
  LA t2, buf
  ADD t2, t2, t1
  ADD t1, t0, t1
  LW t1, 0(t1)
  SW t1, 0(t2)
  ADDIW s0, s0, 1
  BLT s0, s1, bb13
  JAL zero, bb10
bb13:
  JAL zero, bb12
bb14:
  LA t2, buf
  ADDI t2, t2, 400
  # implict jump to bb15
bb15:
  SLLIW a0, t0, 2
  ADD a0, t2, a0
  SLLIW a1, t1, 2
  LA a2, buf
  ADD a1, a2, a1
  LW a1, 0(a1)
  SW a1, 0(a0)
  ADDIW t1, t1, 1
  ADDIW t0, t0, 1
  BLT t1, s1, bb16
  JAL zero, bb9
bb16:
  JAL zero, bb15
bb17:
  LA a0, buf
  ADDI a0, a0, 400
  # implict jump to bb18
bb18:
  SLLIW a1, t0, 2
  ADD a1, a0, a1
  SLLIW a2, t2, 2
  LA a3, buf
  ADD a2, a3, a2
  LW a2, 0(a2)
  SW a2, 0(a1)
  ADDIW t2, t2, 1
  ADDIW t0, t0, 1
  BLT t2, s2, bb20
  # implict jump to bb19
bb19:
  JAL zero, bb8
bb20:
  JAL zero, bb18
bb21:
  SLLIW a0, t2, 2
  LA a1, buf
  ADD a0, a1, a0
  LW a1, 0(a0)
  SLLIW a2, t1, 2
  LA a3, buf
  ADD a2, a3, a2
  LW a3, 0(a2)
  BLT a1, a3, bb24
  # implict jump to bb22
bb22:
  LA a0, buf
  ADDI a0, a0, 400
  SLLIW a1, t0, 2
  ADD a0, a0, a1
  LW a1, 0(a2)
  SW a1, 0(a0)
  ADDIW t1, t1, 1
  # implict jump to bb23
bb23:
  ADDIW t0, t0, 1
  JAL zero, bb3
bb24:
  LA a1, buf
  ADDI a1, a1, 400
  SLLIW a2, t0, 2
  ADD a1, a1, a2
  LW a0, 0(a0)
  SW a0, 0(a1)
  ADDIW t2, t2, 1
  JAL zero, bb23
bb25:
  SLT a0, t1, s1
  JAL zero, bb5
bb26:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
