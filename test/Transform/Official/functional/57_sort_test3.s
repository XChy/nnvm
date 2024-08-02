.global QuickSort
.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
QuickSort:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  ADD s0, a0, zero
  ADD s1, a2, zero
  BLT a1, s1, bb2
  # implict jump to bb1
bb1:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb2:
  SLLIW a0, a1, 2
  ADD a0, s0, a0
  LW a2, 0(a0)
  BLT a1, s1, bb5
  # implict jump to bb3
bb3:
  ADD a0, a1, zero
  # implict jump to bb4
bb4:
  ADD s2, a0, zero
  SLLIW a0, s2, 2
  ADD a0, s0, a0
  SW a2, 0(a0)
  ADDI a0, zero, 1
  SUBW a2, s2, a0
  ADD a0, s0, zero
  CALL QuickSort
  ADDIW a1, s2, 1
  ADD a0, s0, zero
  ADD a2, s1, zero
  CALL QuickSort
  JAL zero, bb1
bb5:
  ADD a0, s1, zero
  ADD s2, a1, zero
  # implict jump to bb6
bb6:
  # implict jump to bb7
bb7:
  ADD s3, a0, zero
  BLT s2, s3, bb26
  # implict jump to bb8
bb8:
  ADD a0, zero, zero
  # implict jump to bb9
bb9:
  BNE a0, zero, bb25
  # implict jump to bb10
bb10:
  BLT s2, s3, bb24
  # implict jump to bb11
bb11:
  ADD a0, s2, zero
  # implict jump to bb12
bb12:
  # implict jump to bb13
bb13:
  ADD s2, a0, zero
  BLT s2, s3, bb23
  # implict jump to bb14
bb14:
  ADD a0, zero, zero
  # implict jump to bb15
bb15:
  BNE a0, zero, bb22
  # implict jump to bb16
bb16:
  BLT s2, s3, bb21
  # implict jump to bb17
bb17:
  ADD a0, s3, zero
  # implict jump to bb18
bb18:
  BLT s2, a0, bb20
  # implict jump to bb19
bb19:
  ADD a0, s2, zero
  JAL zero, bb4
bb20:
  JAL zero, bb6
bb21:
  SLLIW a0, s3, 2
  ADD s4, s0, a0
  SLLIW a0, s2, 2
  ADD a0, s0, a0
  LW a0, 0(a0)
  SW a0, 0(s4)
  ADDI a0, zero, 1
  SUBW a0, s3, a0
  JAL zero, bb18
bb22:
  ADDIW a0, s2, 1
  JAL zero, bb13
bb23:
  SLLIW a0, s2, 2
  ADD a0, s0, a0
  LW a0, 0(a0)
  SLT a0, a0, a2
  JAL zero, bb15
bb24:
  SLLIW a0, s2, 2
  ADD a0, s0, a0
  SLLIW s4, s3, 2
  ADD s4, s0, s4
  LW s4, 0(s4)
  SW s4, 0(a0)
  ADDIW a0, s2, 1
  JAL zero, bb12
bb25:
  ADDI a0, zero, 1
  SUBW a0, s3, a0
  JAL zero, bb7
bb26:
  SLLIW a0, s3, 2
  ADD a0, s0, a0
  LW s4, 0(a0)
  ADDI a0, zero, 1
  SUBW a0, a2, a0
  SLT a0, a0, s4
  JAL zero, bb9
main:
  ADDI sp, sp, -64
  SD ra, 40(sp)
  SD s0, 48(sp)
  LA a1, n
  ADDI a0, zero, 10
  SW a0, 0(a1)
  ADDI a0, zero, 4
  SW a0, 0(sp)
  ADDI a0, zero, 3
  SW a0, 4(sp)
  ADDI a0, zero, 9
  SW a0, 8(sp)
  ADDI a0, zero, 2
  SW a0, 12(sp)
  SW zero, 16(sp)
  ADDI a0, zero, 1
  SW a0, 20(sp)
  ADDI a0, zero, 6
  SW a0, 24(sp)
  ADDI a0, zero, 5
  SW a0, 28(sp)
  ADDI a0, zero, 7
  SW a0, 32(sp)
  ADDI a0, zero, 8
  SW a0, 36(sp)
  ADDI a0, sp, 0
  ADD a0, a0, zero
  ADD a1, zero, zero
  ADDI a2, zero, 9
  CALL QuickSort
  ADD s0, a0, zero
  LA a0, n
  LW a0, 0(a0)
  BLT s0, a0, bb29
  # implict jump to bb28
bb28:
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb29:
  ADD a0, s0, zero
  # implict jump to bb30
bb30:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 0
  ADD a0, t5, a0
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s0, s0, 1
  LA a0, n
  LW a0, 0(a0)
  BLT s0, a0, bb31
  JAL zero, bb28
bb31:
  ADD a0, s0, zero
  JAL zero, bb30
