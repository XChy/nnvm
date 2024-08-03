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
  ADD s0, a2, zero
  BLT a1, s0, bb2
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
  ADD a0, s1, a0
  LW a2, 0(a0)
  BLT a1, s0, bb5
  # implict jump to bb3
bb3:
  ADD a0, a1, zero
  # implict jump to bb4
bb4:
  ADD s2, a0, zero
  SLLIW a0, s2, 2
  ADD a0, s1, a0
  SW a2, 0(a0)
  ADDI a0, zero, 1
  SUBW a2, s2, a0
  ADD a0, s1, zero
  CALL QuickSort
  ADDIW a1, s2, 1
  ADD a0, s1, zero
  ADD a2, s0, zero
  CALL QuickSort
  JAL zero, bb1
bb5:
  ADD a0, a1, zero
  ADD s2, s0, zero
  # implict jump to bb6
bb6:
  ADD s4, a0, zero
  ADD a0, s2, zero
  # implict jump to bb7
bb7:
  ADD s2, a0, zero
  BLT s4, s2, bb26
  # implict jump to bb8
bb8:
  ADD a0, zero, zero
  # implict jump to bb9
bb9:
  BNE a0, zero, bb25
  # implict jump to bb10
bb10:
  BLT s4, s2, bb24
  # implict jump to bb11
bb11:
  ADD a0, s4, zero
  # implict jump to bb12
bb12:
  # implict jump to bb13
bb13:
  ADD s3, a0, zero
  BLT s3, s2, bb23
  # implict jump to bb14
bb14:
  ADD a0, zero, zero
  # implict jump to bb15
bb15:
  BNE a0, zero, bb22
  # implict jump to bb16
bb16:
  BLT s3, s2, bb21
  # implict jump to bb17
bb17:
  ADD a0, s2, zero
  # implict jump to bb18
bb18:
  ADD s2, a0, zero
  BLT s3, s2, bb20
  # implict jump to bb19
bb19:
  ADD a0, s3, zero
  JAL zero, bb4
bb20:
  ADD a0, s3, zero
  JAL zero, bb6
bb21:
  SLLIW a0, s2, 2
  ADD s4, s1, a0
  SLLIW a0, s3, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  SW a0, 0(s4)
  ADDI a0, zero, 1
  SUBW a0, s2, a0
  JAL zero, bb18
bb22:
  ADDIW a0, s3, 1
  JAL zero, bb13
bb23:
  SLLIW a0, s3, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  SLT a0, a0, a2
  JAL zero, bb15
bb24:
  SLLIW a0, s4, 2
  ADD s3, s1, a0
  SLLIW a0, s2, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  SW a0, 0(s3)
  ADDIW a0, s4, 1
  JAL zero, bb12
bb25:
  ADDI a0, zero, 1
  SUBW a0, s2, a0
  JAL zero, bb7
bb26:
  SLLIW a0, s2, 2
  ADD a0, s1, a0
  LW s3, 0(a0)
  ADDI a0, zero, 1
  SUBW a0, a2, a0
  SLT a0, a0, s3
  JAL zero, bb9
main:
  LUI t0, 1048575
  ADDIW t0, t0, -240
  ADD sp, sp, t0
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  LA a0, n
  ADDI s0, zero, 32
  SW s0, 0(a0)
  ADDI a0, zero, 7
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SW a0, 0(t5)
  ADDI a0, zero, 23
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SW a0, 4(t5)
  ADDI a0, zero, 89
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SW a0, 8(t5)
  ADDI a0, zero, 26
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SW a0, 12(t5)
  ADDI a0, zero, 282
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SW a0, 16(t5)
  ADDI a0, zero, 254
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SW a0, 20(t5)
  ADDI a0, zero, 27
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SW a0, 24(t5)
  ADDI a0, zero, 5
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SW a0, 28(t5)
  ADDI a0, zero, 83
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SW a0, 32(t5)
  ADDI a0, zero, 273
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SW a0, 36(t5)
  ADDI a0, zero, 574
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SW a0, 40(t5)
  ADDI a0, zero, 905
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SW a0, 44(t5)
  ADDI a0, zero, 354
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SW a0, 48(t5)
  ADDI a0, zero, 657
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SW a0, 52(t5)
  ADDI a0, zero, 935
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SW a0, 56(t5)
  ADDI a0, zero, 264
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SW a0, 60(t5)
  ADDI a0, zero, 639
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SW a0, 64(t5)
  ADDI a0, zero, 459
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SW a0, 68(t5)
  ADDI a0, zero, 29
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SW a0, 72(t5)
  ADDI a0, zero, 68
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SW a0, 76(t5)
  ADDI a0, zero, 929
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SW a0, 80(t5)
  ADDI a0, zero, 756
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SW a0, 84(t5)
  ADDI a0, zero, 452
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SW a0, 88(t5)
  ADDI a0, zero, 279
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SW a0, 92(t5)
  ADDI a0, zero, 58
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SW a0, 96(t5)
  ADDI a0, zero, 87
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SW a0, 100(t5)
  ADDI a0, zero, 96
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SW a0, 104(t5)
  ADDI a0, zero, 36
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SW a0, 108(t5)
  ADDI a0, zero, 39
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SW a0, 112(t5)
  ADDI a0, zero, 28
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SW a0, 116(t5)
  ADDI a0, zero, 1
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SW a0, 120(t5)
  ADDI a0, zero, 290
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SW a0, 124(t5)
  LUI a0, 1
  ADDIW a0, a0, 112
  ADD a0, a0, sp
  LW a0, 0(a0)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SW a0, 0(t5)
  LUI a0, 1
  ADDIW a0, a0, 112
  ADD a0, a0, sp
  LW a0, 4(a0)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SW a0, 4(t5)
  LUI a0, 1
  ADDIW a0, a0, 112
  ADD a0, a0, sp
  LW a0, 8(a0)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SW a0, 8(t5)
  LUI a0, 1
  ADDIW a0, a0, 112
  ADD a0, a0, sp
  LW a0, 12(a0)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SW a0, 12(t5)
  LUI a0, 1
  ADDIW a0, a0, 112
  ADD a0, a0, sp
  LW a0, 16(a0)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SW a0, 16(t5)
  LUI a0, 1
  ADDIW a0, a0, 112
  ADD a0, a0, sp
  LW a0, 20(a0)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SW a0, 20(t5)
  LUI a0, 1
  ADDIW a0, a0, 112
  ADD a0, a0, sp
  LW a0, 24(a0)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SW a0, 24(t5)
  LUI a0, 1
  ADDIW a0, a0, 112
  ADD a0, a0, sp
  LW a0, 28(a0)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SW a0, 28(t5)
  LUI a0, 1
  ADDIW a0, a0, 112
  ADD a0, a0, sp
  LW a0, 32(a0)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SW a0, 32(t5)
  LUI a0, 1
  ADDIW a0, a0, 112
  ADD a0, a0, sp
  LW a0, 36(a0)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SW a0, 36(t5)
  LUI a0, 1
  ADDIW a0, a0, 112
  ADD a0, a0, sp
  LW a0, 40(a0)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SW a0, 40(t5)
  LUI a0, 1
  ADDIW a0, a0, 112
  ADD a0, a0, sp
  LW a0, 44(a0)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SW a0, 44(t5)
  LUI a0, 1
  ADDIW a0, a0, 112
  ADD a0, a0, sp
  LW a0, 48(a0)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SW a0, 48(t5)
  LUI a0, 1
  ADDIW a0, a0, 112
  ADD a0, a0, sp
  LW a0, 52(a0)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SW a0, 52(t5)
  LUI a0, 1
  ADDIW a0, a0, 112
  ADD a0, a0, sp
  LW a0, 56(a0)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SW a0, 56(t5)
  LUI a0, 1
  ADDIW a0, a0, 112
  ADD a0, a0, sp
  LW a0, 60(a0)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SW a0, 60(t5)
  LUI a0, 1
  ADDIW a0, a0, 112
  ADD a0, a0, sp
  LW a0, 64(a0)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SW a0, 64(t5)
  LUI a0, 1
  ADDIW a0, a0, 112
  ADD a0, a0, sp
  LW a0, 68(a0)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SW a0, 68(t5)
  LUI a0, 1
  ADDIW a0, a0, 112
  ADD a0, a0, sp
  LW a0, 72(a0)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SW a0, 72(t5)
  LUI a0, 1
  ADDIW a0, a0, 112
  ADD a0, a0, sp
  LW a0, 76(a0)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SW a0, 76(t5)
  LUI a0, 1
  ADDIW a0, a0, 112
  ADD a0, a0, sp
  LW a0, 80(a0)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SW a0, 80(t5)
  LUI a0, 1
  ADDIW a0, a0, 112
  ADD a0, a0, sp
  LW a0, 84(a0)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SW a0, 84(t5)
  LUI a0, 1
  ADDIW a0, a0, 112
  ADD a0, a0, sp
  LW a0, 88(a0)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SW a0, 88(t5)
  LUI a0, 1
  ADDIW a0, a0, 112
  ADD a0, a0, sp
  LW a0, 92(a0)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SW a0, 92(t5)
  LUI a0, 1
  ADDIW a0, a0, 112
  ADD a0, a0, sp
  LW a0, 96(a0)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SW a0, 96(t5)
  LUI a0, 1
  ADDIW a0, a0, 112
  ADD a0, a0, sp
  LW a0, 100(a0)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SW a0, 100(t5)
  LUI a0, 1
  ADDIW a0, a0, 112
  ADD a0, a0, sp
  LW a0, 104(a0)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SW a0, 104(t5)
  LUI a0, 1
  ADDIW a0, a0, 112
  ADD a0, a0, sp
  LW a0, 108(a0)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SW a0, 108(t5)
  LUI a0, 1
  ADDIW a0, a0, 112
  ADD a0, a0, sp
  LW a0, 112(a0)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SW a0, 112(t5)
  LUI a0, 1
  ADDIW a0, a0, 112
  ADD a0, a0, sp
  LW a0, 116(a0)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SW a0, 116(t5)
  LUI a0, 1
  ADDIW a0, a0, 112
  ADD a0, a0, sp
  LW a0, 120(a0)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SW a0, 120(t5)
  LUI a0, 1
  ADDIW a0, a0, 112
  ADD a0, a0, sp
  LW a0, 124(a0)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SW a0, 124(t5)
  # implict jump to bb28
bb28:
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 0(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 4(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 8(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 12(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 16(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 20(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 24(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 28(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 32(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 36(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 40(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 44(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 48(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 52(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 56(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 60(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 64(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 68(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 72(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 76(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 80(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 84(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 88(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 92(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 96(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 100(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 104(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 108(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 112(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 116(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 120(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 124(a0)
  CALL putint
  LA a0, n
  LW a0, 0(a0)
  ADDI s0, zero, 1
  SUBW a0, a0, s0
  BLT zero, a0, bb117
  # implict jump to bb29
bb29:
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 0(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 4(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 8(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 12(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 16(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 20(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 24(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 28(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 32(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 36(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 40(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 44(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 48(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 52(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 56(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 60(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 64(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 68(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 72(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 76(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 80(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 84(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 88(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 92(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 96(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 100(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 104(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 108(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 112(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 116(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 120(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 124(a0)
  CALL putint
  LA a0, n
  LW a0, 0(a0)
  ANDI a0, a0, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb116
  # implict jump to bb30
bb30:
  LA a0, n
  LW s0, 0(a0)
  SRAIW a0, s0, 31
  SRLIW a0, a0, 31
  ADD a0, s0, a0
  SRAIW a0, a0, 1
  SLLIW a0, a0, 2
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  ADD a0, t5, a0
  LW a0, 0(a0)
  # implict jump to bb31
bb31:
  CALL putint
  ADD a0, zero, zero
  # implict jump to bb32
bb32:
  SLLIW s0, a0, 2
  ADDI t5, sp, 80
  ADD s0, t5, s0
  SW zero, 0(s0)
  ADDIW a0, a0, 1
  SLTI s0, a0, 1000
  BNE s0, zero, bb115
  # implict jump to bb33
bb33:
  LA a0, n
  LW a0, 0(a0)
  BLT zero, a0, bb108
  # implict jump to bb34
bb34:
  ADD a0, zero, zero
  # implict jump to bb35
bb35:
  CALL putint
  LA a0, n
  LW a0, 0(a0)
  BLT zero, a0, bb104
  # implict jump to bb36
bb36:
  # implict jump to bb37
bb37:
  ADD s4, a0, zero
  ADDI a0, zero, 1
  SUBW s5, s4, a0
  BLT zero, s5, bb92
  # implict jump to bb38
bb38:
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 0(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 4(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 8(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 12(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 16(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 20(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 24(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 28(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 32(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 36(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 40(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 44(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 48(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 52(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 56(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 60(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 64(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 68(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 72(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 76(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 80(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 84(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 88(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 92(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 96(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 100(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 104(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 108(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 112(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 116(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 120(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 124(a0)
  CALL putint
  LA a0, n
  LW a0, 0(a0)
  BLT zero, a0, bb88
  # implict jump to bb39
bb39:
  # implict jump to bb40
bb40:
  ADD s0, a0, zero
  ADDI a0, zero, 1
  BLT a0, s0, bb79
  # implict jump to bb41
bb41:
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 0(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 4(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 8(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 12(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 16(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 20(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 24(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 28(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 32(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 36(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 40(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 44(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 48(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 52(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 56(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 60(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 64(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 68(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 72(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 76(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 80(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 84(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 88(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 92(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 96(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 100(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 104(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 108(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 112(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 116(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 120(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 124(a0)
  CALL putint
  LA a0, n
  LW a0, 0(a0)
  BLT zero, a0, bb76
  # implict jump to bb42
bb42:
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  ADD a0, a0, zero
  ADD a1, zero, zero
  ADDI a2, zero, 31
  CALL QuickSort
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 0(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 4(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 8(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 12(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 16(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 20(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 24(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 28(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 32(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 36(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 40(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 44(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 48(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 52(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 56(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 60(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 64(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 68(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 72(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 76(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 80(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 84(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 88(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 92(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 96(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 100(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 104(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 108(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 112(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 116(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 120(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 124(a0)
  CALL putint
  LA a0, n
  LW a0, 0(a0)
  BLT zero, a0, bb72
  # implict jump to bb43
bb43:
  # implict jump to bb44
bb44:
  ADD s3, a0, zero
  BLT zero, s3, bb66
  # implict jump to bb45
bb45:
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 0(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 4(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 8(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 12(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 16(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 20(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 24(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 28(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 32(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 36(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 40(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 44(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 48(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 52(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 56(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 60(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 64(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 68(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 72(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 76(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 80(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 84(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 88(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 92(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 96(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 100(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 104(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 108(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 112(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 116(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 120(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 124(a0)
  CALL putint
  LA a0, n
  LW a0, 0(a0)
  BLT zero, a0, bb62
  # implict jump to bb46
bb46:
  # implict jump to bb47
bb47:
  BLT zero, a0, bb53
  # implict jump to bb48
bb48:
  ADDIW s0, a0, -2
  BLT s0, a0, bb50
  # implict jump to bb49
bb49:
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 0(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 4(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 8(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 12(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 16(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 20(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 24(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 28(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 32(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 36(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 40(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 44(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 48(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 52(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 56(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 60(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 64(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 68(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 72(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 76(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 80(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 84(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 88(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 92(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 96(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 100(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 104(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 108(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 112(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 116(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 120(a0)
  CALL putint
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  LW a0, 124(a0)
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LUI t0, 1
  ADDIW t0, t0, 240
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb50:
  # implict jump to bb51
bb51:
  ADD s1, s0, zero
  SLLIW s0, s1, 2
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  ADD s0, t5, s0
  SW zero, 0(s0)
  ADDIW s0, s1, 1
  BLT s0, a0, bb52
  JAL zero, bb49
bb52:
  JAL zero, bb51
bb53:
  ADD s3, zero, zero
  ADD s2, zero, zero
  ADD s0, zero, zero
  # implict jump to bb54
bb54:
  ADD s1, s0, zero
  SLTI s0, s2, 2
  BNE s0, zero, bb61
  # implict jump to bb55
bb55:
  XORI s0, s2, 2
  SLTIU s0, s0, 1
  BNE s0, zero, bb60
  # implict jump to bb56
bb56:
  SLLIW s0, s2, 2
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  ADD s0, t5, s0
  LW s0, 0(s0)
  ADDW s0, s3, s0
  SUBW s4, s0, s1
  ADDIW s0, s2, -2
  SLLIW s0, s0, 2
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  ADD s3, t5, s0
  LW s1, 0(s3)
  ADDI s0, zero, 3
  DIVW s0, s4, s0
  SW s0, 0(s3)
  ADD s0, s4, zero
  # implict jump to bb57
bb57:
  ADD s3, s0, zero
  ADD s0, s1, zero
  ADD s1, s0, zero
  ADD s0, s3, zero
  # implict jump to bb58
bb58:
  ADD s3, s0, zero
  ADD s0, s1, zero
  ADDIW s1, s2, 1
  BLT s1, a0, bb59
  JAL zero, bb48
bb59:
  ADD s2, s1, zero
  JAL zero, bb54
bb60:
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  LW s1, 0(t5)
  ADDI s0, zero, 3
  DIVW s0, s3, s0
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SW s0, 0(t5)
  ADD s0, s3, zero
  JAL zero, bb57
bb61:
  SLLIW s0, s2, 2
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  ADD s0, t5, s0
  LW s0, 0(s0)
  ADDW s0, s3, s0
  JAL zero, bb58
bb62:
  ADD a0, zero, zero
  # implict jump to bb63
bb63:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  ADD s1, t5, a0
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  ADD a0, t5, a0
  LW a0, 0(a0)
  SW a0, 0(s1)
  ADDIW a0, s0, 1
  LA s0, n
  LW s0, 0(s0)
  BLT a0, s0, bb65
  # implict jump to bb64
bb64:
  ADD a0, s0, zero
  JAL zero, bb47
bb65:
  JAL zero, bb63
bb66:
  ADD a0, zero, zero
  ADD s0, zero, zero
  # implict jump to bb67
bb67:
  ADD s1, s0, zero
  SLLIW s0, s1, 2
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  ADD s2, t5, s0
  LW s0, 0(s2)
  ADDW s0, a0, s0
  SLLI a0, s1, 1
  SRLI a0, a0, 62
  ADD a0, s1, a0
  ANDI a0, a0, -4
  SUBW a0, s1, a0
  XORI a0, a0, 3
  BNE a0, zero, bb71
  # implict jump to bb68
bb68:
  SW s0, 0(s2)
  ADD a0, zero, zero
  # implict jump to bb69
bb69:
  ADDIW s0, s1, 1
  BLT s0, s3, bb70
  JAL zero, bb45
bb70:
  JAL zero, bb67
bb71:
  SW zero, 0(s2)
  ADD a0, s0, zero
  JAL zero, bb69
bb72:
  ADD a0, zero, zero
  # implict jump to bb73
bb73:
  SLLIW s0, a0, 2
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  ADD s1, t5, s0
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  ADD s0, t5, s0
  LW s0, 0(s0)
  SW s0, 0(s1)
  ADDIW s0, a0, 1
  LA a0, n
  LW a0, 0(a0)
  BLT s0, a0, bb75
  # implict jump to bb74
bb74:
  JAL zero, bb44
bb75:
  ADD a0, s0, zero
  JAL zero, bb73
bb76:
  ADD a0, zero, zero
  # implict jump to bb77
bb77:
  ADD a2, a0, zero
  SLLIW a0, a2, 2
  LUI a1, 1
  ADDIW a1, a1, -16
  ADD a1, a1, sp
  ADD a1, a1, a0
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  ADD a0, t5, a0
  LW a0, 0(a0)
  SW a0, 0(a1)
  ADDIW a0, a2, 1
  LA a1, n
  LW a1, 0(a1)
  BLT a0, a1, bb78
  JAL zero, bb42
bb78:
  JAL zero, bb77
bb79:
  ADDI a0, zero, 1
  # implict jump to bb80
bb80:
  ADD s1, a0, zero
  SLLIW a0, s1, 2
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  ADD a0, t5, a0
  LW s2, 0(a0)
  ADDI a0, zero, 1
  SUBW a0, s1, a0
  # implict jump to bb81
bb81:
  ADD s3, a0, zero
  ADDI a0, zero, -1
  BLT a0, s3, bb87
  # implict jump to bb82
bb82:
  ADD a0, zero, zero
  # implict jump to bb83
bb83:
  BNE a0, zero, bb86
  # implict jump to bb84
bb84:
  ADDIW a0, s3, 1
  SLLIW a0, a0, 2
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  ADD a0, t5, a0
  SW s2, 0(a0)
  ADDIW a0, s1, 1
  BLT a0, s0, bb85
  JAL zero, bb41
bb85:
  JAL zero, bb80
bb86:
  ADDIW a0, s3, 1
  SLLIW a0, a0, 2
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  ADD s4, t5, a0
  SLLIW a0, s3, 2
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  ADD a0, t5, a0
  LW a0, 0(a0)
  SW a0, 0(s4)
  ADDI a0, zero, 1
  SUBW a0, s3, a0
  JAL zero, bb81
bb87:
  SLLIW a0, s3, 2
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  ADD a0, t5, a0
  LW a0, 0(a0)
  SLT a0, s2, a0
  JAL zero, bb83
bb88:
  ADD a0, zero, zero
  # implict jump to bb89
bb89:
  ADD s0, a0, zero
  SLLIW s1, s0, 2
  LUI a0, 1
  ADDIW a0, a0, -16
  ADD a0, a0, sp
  ADD a0, a0, s1
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  ADD s1, t5, s1
  LW s1, 0(s1)
  SW s1, 0(a0)
  ADDIW s0, s0, 1
  LA a0, n
  LW a0, 0(a0)
  BLT s0, a0, bb91
  # implict jump to bb90
bb90:
  JAL zero, bb40
bb91:
  ADD a0, s0, zero
  JAL zero, bb89
bb92:
  ADD s2, zero, zero
  ADD a0, zero, zero
  # implict jump to bb93
bb93:
  ADD s1, a0, zero
  ADD a0, s2, zero
  SUBW s0, s4, a0
  ADDI s2, zero, 1
  SUBW s0, s0, s2
  BLT zero, s0, bb97
  # implict jump to bb94
bb94:
  ADD s0, s1, zero
  # implict jump to bb95
bb95:
  ADDIW a0, a0, 1
  BLT a0, s5, bb96
  JAL zero, bb38
bb96:
  ADD s2, a0, zero
  ADD a0, s0, zero
  JAL zero, bb93
bb97:
  ADD s2, zero, zero
  # implict jump to bb98
bb98:
  SLLIW s3, s2, 2
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  ADD s3, t5, s3
  LW s6, 0(s3)
  ADDIW s2, s2, 1
  SLLIW s7, s2, 2
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  ADD s7, t5, s7
  LW s8, 0(s7)
  BLT s8, s6, bb103
  # implict jump to bb99
bb99:
  # implict jump to bb100
bb100:
  BLT s2, s0, bb102
  # implict jump to bb101
bb101:
  ADD s0, s1, zero
  JAL zero, bb95
bb102:
  JAL zero, bb98
bb103:
  LW s1, 0(s7)
  LW s6, 0(s3)
  SW s6, 0(s7)
  SW s1, 0(s3)
  JAL zero, bb100
bb104:
  ADD a0, zero, zero
  # implict jump to bb105
bb105:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  ADD s1, t5, a0
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  ADD a0, t5, a0
  LW a0, 0(a0)
  SW a0, 0(s1)
  ADDIW s0, s0, 1
  LA a0, n
  LW a0, 0(a0)
  BLT s0, a0, bb107
  # implict jump to bb106
bb106:
  JAL zero, bb37
bb107:
  ADD a0, s0, zero
  JAL zero, bb105
bb108:
  ADD a0, zero, zero
  ADD s2, zero, zero
  ADD s0, zero, zero
  # implict jump to bb109
bb109:
  ADD s1, s0, zero
  ADD s0, s2, zero
  SLLIW s2, a0, 2
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  ADD s2, t5, s2
  LW s2, 0(s2)
  SLLIW s3, s2, 2
  ADDI t5, sp, 80
  ADD s3, t5, s3
  LW s4, 0(s3)
  ADDIW s4, s4, 1
  SW s4, 0(s3)
  BLT s0, s4, bb114
  # implict jump to bb110
bb110:
  # implict jump to bb111
bb111:
  ADD s3, s1, zero
  ADDIW s1, a0, 1
  LA a0, n
  LW a0, 0(a0)
  BLT s1, a0, bb113
  # implict jump to bb112
bb112:
  ADD a0, s3, zero
  JAL zero, bb35
bb113:
  ADD a0, s1, zero
  ADD s2, s0, zero
  ADD s0, s3, zero
  JAL zero, bb109
bb114:
  ADD s1, s2, zero
  ADD s0, s4, zero
  JAL zero, bb111
bb115:
  JAL zero, bb32
bb116:
  LA a0, n
  LW s0, 0(a0)
  SRAIW a0, s0, 31
  SRLIW a0, a0, 31
  ADD a0, s0, a0
  SRAIW s0, a0, 1
  SLLIW a0, s0, 2
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  ADD a0, t5, a0
  LW s1, 0(a0)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SLLIW a0, a0, 2
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  ADD a0, t5, a0
  LW a0, 0(a0)
  ADDW s0, s1, a0
  SRAIW a0, s0, 31
  SRLIW a0, a0, 31
  ADD a0, s0, a0
  SRAIW a0, a0, 1
  JAL zero, bb31
bb117:
  LA a0, n
  LW s5, 0(a0)
  ADD s0, zero, zero
  ADD a0, zero, zero
  # implict jump to bb118
bb118:
  ADD s1, a0, zero
  ADD s6, s0, zero
  SUBW s0, s5, s6
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  BLT zero, a0, bb122
  # implict jump to bb119
bb119:
  ADD a0, s1, zero
  # implict jump to bb120
bb120:
  ADDIW s1, s6, 1
  LA s0, n
  LW s0, 0(s0)
  ADDI s2, zero, 1
  SUBW s0, s0, s2
  BLT s1, s0, bb121
  JAL zero, bb29
bb121:
  ADD s0, s1, zero
  JAL zero, bb118
bb122:
  ADD a0, zero, zero
  ADD s0, s1, zero
  # implict jump to bb123
bb123:
  ADD s1, s0, zero
  SLLIW s0, a0, 2
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  ADD s2, t5, s0
  LW s0, 0(s2)
  ADDIW s3, a0, 1
  SLLIW a0, s3, 2
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  ADD s4, t5, a0
  LW a0, 0(s4)
  BLT a0, s0, bb128
  # implict jump to bb124
bb124:
  ADD a0, s1, zero
  # implict jump to bb125
bb125:
  ADD s0, a0, zero
  LA a0, n
  LW a0, 0(a0)
  SUBW a0, a0, s6
  ADDI s1, zero, 1
  SUBW a0, a0, s1
  BLT s3, a0, bb127
  # implict jump to bb126
bb126:
  ADD a0, s0, zero
  JAL zero, bb120
bb127:
  ADD a0, s3, zero
  JAL zero, bb123
bb128:
  LW s0, 0(s4)
  LW a0, 0(s2)
  SW a0, 0(s4)
  SW s0, 0(s2)
  ADD a0, s0, zero
  JAL zero, bb125
