.global main
.section .bss
array:
.space 8000


.section .data

M:
.word 0x00000014
N:
.word 0x00000064
.section .text
main:
  ADDI sp, sp, -112
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
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  ADD s0, zero, zero
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  SLTI s2, s1, 20
  BNE s2, zero, bb3
  # implict jump to bb2
bb2:
  LA s2, array
  ADDI s2, s2, 400
  LA s3, array
  ADDI s3, s3, 800
  LA s4, array
  ADDI s4, s4, 1200
  LA s5, array
  ADDI s5, s5, 1600
  LA s6, array
  ADDI s6, s6, 2000
  LUI s7, 1
  ADDIW s7, s7, -1696
  LA s8, array
  ADD s7, s8, s7
  LUI s8, 1
  ADDIW s8, s8, -1296
  LA s9, array
  ADD s8, s9, s8
  LUI s9, 1
  ADDIW s9, s9, -896
  LA s10, array
  ADD s9, s10, s9
  LUI s10, 1
  ADDIW s10, s10, -496
  LA s11, array
  ADD s10, s11, s10
  LUI s11, 1
  ADDIW s11, s11, -96
  LA ra, array
  ADD s11, ra, s11
  LUI ra, 1
  ADDIW ra, ra, 304
  LA t0, array
  ADD ra, t0, ra
  LUI t0, 1
  ADDIW t0, t0, 704
  LA t1, array
  ADD t0, t1, t0
  LUI t1, 1
  ADDIW t1, t1, 1104
  LA t2, array
  ADD t1, t2, t1
  LUI t2, 1
  ADDIW t2, t2, 1504
  LA a0, array
  ADD t2, a0, t2
  LUI a0, 1
  ADDIW a0, a0, 1904
  LA a1, array
  ADD a0, a1, a0
  LUI a1, 2
  ADDIW a1, a1, -1792
  LA a2, array
  ADD a1, a2, a1
  LUI a2, 2
  ADDIW a2, a2, -1392
  LA a3, array
  ADD a2, a3, a2
  LUI a3, 2
  ADDIW a3, a3, -992
  LA a4, array
  ADD a3, a4, a3
  LUI a4, 2
  ADDIW a4, a4, -500
  LA a5, array
  ADD a4, a5, a4
  LW a4, 0(a4)
  SLLIW a4, a4, 2
  ADD a3, a3, a4
  LW a3, 0(a3)
  SLLIW a3, a3, 2
  ADD a2, a2, a3
  LW a2, 0(a2)
  SLLIW a2, a2, 2
  ADD a1, a1, a2
  LW a1, 0(a1)
  SLLIW a1, a1, 2
  ADD a0, a0, a1
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD t2, t2, a0
  LW t2, 0(t2)
  SLLIW t2, t2, 2
  ADD t1, t1, t2
  LW t1, 0(t1)
  SLLIW t1, t1, 2
  ADD t0, t0, t1
  LW t0, 0(t0)
  SLLIW t0, t0, 2
  ADD ra, ra, t0
  LW ra, 0(ra)
  SLLIW ra, ra, 2
  ADD s11, s11, ra
  LW s11, 0(s11)
  SLLIW s11, s11, 2
  ADD s10, s10, s11
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  ADD s9, s9, s10
  LW s9, 0(s9)
  SLLIW s9, s9, 2
  ADD s8, s8, s9
  LW s8, 0(s8)
  SLLIW s8, s8, 2
  ADD s7, s7, s8
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  ADD s6, s6, s7
  LW s6, 0(s6)
  SLLIW s6, s6, 2
  ADD s5, s5, s6
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  ADD s4, s4, s5
  LW s4, 0(s4)
  SLLIW s4, s4, 2
  ADD s3, s3, s4
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  ADD s2, s2, s3
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LA s3, array
  ADD s2, s3, s2
  LW s2, 0(s2)
  LUI s3, 2
  ADDIW s3, s3, -520
  LA s4, array
  ADD s3, s4, s3
  LW s3, 0(s3)
  ADDI s4, zero, 400
  MULW s3, s3, s4
  LA s4, array
  ADD s3, s4, s3
  LW s3, 68(s3)
  ADDI s4, zero, 400
  MULW s3, s3, s4
  LA s4, array
  ADD s3, s4, s3
  LW s3, 64(s3)
  ADDI s4, zero, 400
  MULW s3, s3, s4
  LA s4, array
  ADD s3, s4, s3
  LW s3, 60(s3)
  ADDI s4, zero, 400
  MULW s3, s3, s4
  LA s4, array
  ADD s3, s4, s3
  LW s3, 56(s3)
  ADDI s4, zero, 400
  MULW s3, s3, s4
  LA s4, array
  ADD s3, s4, s3
  LW s3, 52(s3)
  ADDI s4, zero, 400
  MULW s3, s3, s4
  LA s4, array
  ADD s3, s4, s3
  LW s3, 48(s3)
  ADDI s4, zero, 400
  MULW s3, s3, s4
  LA s4, array
  ADD s3, s4, s3
  LW s3, 44(s3)
  ADDI s4, zero, 400
  MULW s3, s3, s4
  LA s4, array
  ADD s3, s4, s3
  LW s3, 40(s3)
  ADDI s4, zero, 400
  MULW s3, s3, s4
  LA s4, array
  ADD s3, s4, s3
  LW s3, 36(s3)
  ADDI s4, zero, 400
  MULW s3, s3, s4
  LA s4, array
  ADD s3, s4, s3
  LW s3, 32(s3)
  ADDI s4, zero, 400
  MULW s3, s3, s4
  LA s4, array
  ADD s3, s4, s3
  LW s3, 28(s3)
  ADDI s4, zero, 400
  MULW s3, s3, s4
  LA s4, array
  ADD s3, s4, s3
  LW s3, 24(s3)
  ADDI s4, zero, 400
  MULW s3, s3, s4
  LA s4, array
  ADD s3, s4, s3
  LW s3, 20(s3)
  ADDI s4, zero, 400
  MULW s3, s3, s4
  LA s4, array
  ADD s3, s4, s3
  LW s3, 16(s3)
  ADDI s4, zero, 400
  MULW s3, s3, s4
  LA s4, array
  ADD s3, s4, s3
  LW s3, 12(s3)
  ADDI s4, zero, 400
  MULW s3, s3, s4
  LA s4, array
  ADD s3, s4, s3
  LW s3, 8(s3)
  ADDI s4, zero, 400
  MULW s3, s3, s4
  LA s4, array
  ADD s3, s4, s3
  LW s3, 4(s3)
  ADDI s4, zero, 400
  MULW s3, s3, s4
  LA s4, array
  ADD s3, s4, s3
  LW s3, 0(s3)
  ADDI s4, zero, 400
  MULW s3, s3, s4
  LA s4, array
  ADD s3, s4, s3
  LW s3, 224(s3)
  ADDW s2, s2, s3
  ADD a0, s2, zero
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
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb3:
  ADDI s2, zero, 400
  MULW s2, s1, s2
  LA s3, array
  ADD s2, s3, s2
  ADD s3, zero, zero
  # implict jump to bb4
bb4:
  ADD s4, s3, zero
  SLTI s5, s4, 100
  BNE s5, zero, bb6
  # implict jump to bb5
bb5:
  ADDIW s5, s1, 1
  ADD s0, s5, zero
  JAL zero, bb1
bb6:
  SLLIW s0, s4, 2
  ADD s0, s2, s0
  SW s4, 0(s0)
  ADDIW s0, s4, 1
  ADD s3, s0, zero
  JAL zero, bb4
