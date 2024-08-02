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
  ADD s1, a0, zero
  ADD s0, a1, zero
  ADDIW a0, s1, 1
  SLT a0, a0, s0
  XORI a0, a0, 1
  BNE a0, zero, bb26
  # implict jump to bb2
bb2:
  ADDW a1, s1, s0
  SRAIW a0, a1, 31
  SRLIW a0, a0, 31
  ADD a0, a1, a0
  SRAIW s2, a0, 1
  ADD a0, s1, zero
  ADD a1, s2, zero
  CALL merge_sort
  ADD a0, s2, zero
  ADD a1, s0, zero
  CALL merge_sort
  ADD t0, s1, zero
  ADD t1, s2, zero
  ADD t2, s1, zero
  # implict jump to bb3
bb3:
  ADD a1, t2, zero
  ADD t2, t1, zero
  ADD a0, t0, zero
  BLT a1, s2, bb25
  # implict jump to bb4
bb4:
  ADD t0, zero, zero
  # implict jump to bb5
bb5:
  BNE t0, zero, bb21
  # implict jump to bb6
bb6:
  BLT a1, s2, bb17
  # implict jump to bb7
bb7:
  ADD t0, a0, zero
  # implict jump to bb8
bb8:
  ADD t1, t0, zero
  BLT t2, s0, bb14
  # implict jump to bb9
bb9:
  BLT s1, s0, bb11
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
  ADDI a0, t0, 400
  ADD t0, s1, zero
  # implict jump to bb12
bb12:
  ADD t2, t0, zero
  SLLIW t1, t2, 2
  LA t0, buf
  ADD t0, t0, t1
  ADD t1, a0, t1
  LW t1, 0(t1)
  SW t1, 0(t0)
  ADDIW t0, t2, 1
  BLT t0, s0, bb13
  JAL zero, bb10
bb13:
  JAL zero, bb12
bb14:
  LA t0, buf
  ADDI a2, t0, 400
  ADD t0, t2, zero
  # implict jump to bb15
bb15:
  ADD t2, t0, zero
  SLLIW t0, t1, 2
  ADD a0, a2, t0
  SLLIW a1, t2, 2
  LA t0, buf
  ADD t0, t0, a1
  LW t0, 0(t0)
  SW t0, 0(a0)
  ADDIW t0, t2, 1
  ADDIW t1, t1, 1
  BLT t0, s0, bb16
  JAL zero, bb9
bb16:
  JAL zero, bb15
bb17:
  LA t0, buf
  ADDI a3, t0, 400
  ADD t1, a1, zero
  ADD t0, a0, zero
  # implict jump to bb18
bb18:
  ADD a2, t0, zero
  SLLIW t0, a2, 2
  ADD a1, a3, t0
  SLLIW a0, t1, 2
  LA t0, buf
  ADD t0, t0, a0
  LW t0, 0(t0)
  SW t0, 0(a1)
  ADDIW t0, t1, 1
  ADDIW a0, a2, 1
  BLT t0, s2, bb20
  # implict jump to bb19
bb19:
  ADD t0, a0, zero
  JAL zero, bb8
bb20:
  ADD t1, t0, zero
  ADD t0, a0, zero
  JAL zero, bb18
bb21:
  SLLIW t1, a1, 2
  LA t0, buf
  ADD a3, t0, t1
  LW a4, 0(a3)
  SLLIW t1, t2, 2
  LA t0, buf
  ADD a2, t0, t1
  LW t0, 0(a2)
  BLT a4, t0, bb24
  # implict jump to bb22
bb22:
  LA t0, buf
  ADDI t1, t0, 400
  SLLIW t0, a0, 2
  ADD t1, t1, t0
  LW t0, 0(a2)
  SW t0, 0(t1)
  ADDIW t0, t2, 1
  ADD t1, t0, zero
  ADD t0, a1, zero
  # implict jump to bb23
bb23:
  ADD t2, t0, zero
  ADDIW t0, a0, 1
  JAL zero, bb3
bb24:
  LA t0, buf
  ADDI t0, t0, 400
  SLLIW t1, a0, 2
  ADD t1, t0, t1
  LW t0, 0(a3)
  SW t0, 0(t1)
  ADDIW t0, a1, 1
  ADD t1, t2, zero
  JAL zero, bb23
bb25:
  SLT t0, t2, s0
  JAL zero, bb5
bb26:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
