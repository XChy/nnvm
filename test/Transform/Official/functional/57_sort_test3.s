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
  ADD s1, a0, zero
  ADD s3, a1, zero
  ADD s2, a2, zero
  BLT s3, s2, bb2
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
  SLLIW a0, s3, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  BLT s3, s2, bb5
  # implict jump to bb3
bb3:
  ADD a1, s3, zero
  # implict jump to bb4
bb4:
  ADD s0, a1, zero
  SLLIW a1, s0, 2
  ADD a1, s1, a1
  SW a0, 0(a1)
  ADDI a0, zero, 1
  SUBW a2, s0, a0
  ADD a0, s1, zero
  ADD a1, s3, zero
  CALL QuickSort
  ADDIW a1, s0, 1
  ADD a0, s1, zero
  ADD a2, s2, zero
  CALL QuickSort
  JAL zero, bb1
bb5:
  ADD a1, s2, zero
  ADD a2, s3, zero
  # implict jump to bb6
bb6:
  # implict jump to bb7
bb7:
  BLT a2, a1, bb26
  # implict jump to bb8
bb8:
  ADD s0, zero, zero
  # implict jump to bb9
bb9:
  BNE s0, zero, bb25
  # implict jump to bb10
bb10:
  BLT a2, a1, bb24
  # implict jump to bb11
bb11:
  # implict jump to bb12
bb12:
  # implict jump to bb13
bb13:
  BLT a2, a1, bb23
  # implict jump to bb14
bb14:
  ADD s0, zero, zero
  # implict jump to bb15
bb15:
  BNE s0, zero, bb22
  # implict jump to bb16
bb16:
  BLT a2, a1, bb21
  # implict jump to bb17
bb17:
  # implict jump to bb18
bb18:
  BLT a2, a1, bb20
  # implict jump to bb19
bb19:
  ADD a1, a2, zero
  JAL zero, bb4
bb20:
  JAL zero, bb6
bb21:
  SLLIW s0, a1, 2
  ADD s0, s1, s0
  SLLIW s4, a2, 2
  ADD s4, s1, s4
  LW s4, 0(s4)
  SW s4, 0(s0)
  ADDI s0, zero, 1
  SUBW a1, a1, s0
  JAL zero, bb18
bb22:
  ADDIW a2, a2, 1
  JAL zero, bb13
bb23:
  SLLIW s0, a2, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  SLT s0, s0, a0
  JAL zero, bb15
bb24:
  SLLIW s0, a2, 2
  ADD s0, s1, s0
  SLLIW s4, a1, 2
  ADD s4, s1, s4
  LW s4, 0(s4)
  SW s4, 0(s0)
  ADDIW a2, a2, 1
  JAL zero, bb12
bb25:
  ADDI s0, zero, 1
  SUBW a1, a1, s0
  JAL zero, bb7
bb26:
  SLLIW s0, a1, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  ADDI s4, zero, 1
  SUBW s4, a0, s4
  SLT s0, s4, s0
  JAL zero, bb9
main:
  ADDI sp, sp, -64
  SD ra, 40(sp)
  SD s0, 48(sp)
  LA a0, n
  ADDI a1, zero, 10
  SW a1, 0(a0)
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
  LA s0, n
  LW s0, 0(s0)
  BLT a0, s0, bb29
  # implict jump to bb28
bb28:
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb29:
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
  ADDIW a0, s0, 1
  LA s0, n
  LW s0, 0(s0)
  BLT a0, s0, bb31
  JAL zero, bb28
bb31:
  JAL zero, bb30
