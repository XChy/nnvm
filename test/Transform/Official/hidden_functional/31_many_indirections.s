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
  ADDI s2, zero, 0
  SLTI s2, s2, 20
  BNE s2, zero, bb2
  # implict jump to bb1
bb1:
  LA s5, array
  ADDI s5, s5, 400
  LA s6, array
  ADDI s6, s6, 800
  LA s7, array
  ADDI s7, s7, 1200
  LA s8, array
  ADDI s8, s8, 1600
  LA s9, array
  ADDI s9, s9, 2000
  LUI s10, 1
  ADDIW s10, s10, -1696
  LA s11, array
  ADD s10, s11, s10
  LUI s11, 1
  ADDIW s11, s11, -1296
  LA ra, array
  ADD s11, ra, s11
  LUI ra, 1
  ADDIW ra, ra, -896
  LA t0, array
  ADD ra, t0, ra
  LUI t0, 1
  ADDIW t0, t0, -496
  LA t1, array
  ADD t0, t1, t0
  LUI t1, 1
  ADDIW t1, t1, -96
  LA t2, array
  ADD t1, t2, t1
  LUI t2, 1
  ADDIW t2, t2, 304
  LA a0, array
  ADD t2, a0, t2
  LUI a0, 1
  ADDIW a0, a0, 704
  LA a1, array
  ADD a0, a1, a0
  LUI a1, 1
  ADDIW a1, a1, 1104
  LA a2, array
  ADD a1, a2, a1
  LUI a2, 1
  ADDIW a2, a2, 1504
  LA a3, array
  ADD a2, a3, a2
  LUI a3, 1
  ADDIW a3, a3, 1904
  LA a4, array
  ADD a3, a4, a3
  LUI a4, 2
  ADDIW a4, a4, -1792
  LA a5, array
  ADD a4, a5, a4
  LUI a5, 2
  ADDIW a5, a5, -1392
  LA a6, array
  ADD a5, a6, a5
  LUI a6, 2
  ADDIW a6, a6, -992
  LA a7, array
  ADD a6, a7, a6
  LUI a7, 2
  ADDIW a7, a7, -500
  LA t6, array
  ADD a7, t6, a7
  LW a7, 0(a7)
  SLLIW a7, a7, 2
  ADD a6, a6, a7
  LW a6, 0(a6)
  SLLIW a6, a6, 2
  ADD a5, a5, a6
  LW a5, 0(a5)
  SLLIW a5, a5, 2
  ADD a4, a4, a5
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
  LA s6, array
  ADD s5, s6, s5
  LW s5, 0(s5)
  LUI s6, 2
  ADDIW s6, s6, -520
  LA s7, array
  ADD s6, s7, s6
  LW s6, 0(s6)
  ADDI s7, zero, 400
  MULW s6, s6, s7
  LA s7, array
  ADD s6, s7, s6
  LW s6, 68(s6)
  ADDI s7, zero, 400
  MULW s6, s6, s7
  LA s7, array
  ADD s6, s7, s6
  LW s6, 64(s6)
  ADDI s7, zero, 400
  MULW s6, s6, s7
  LA s7, array
  ADD s6, s7, s6
  LW s6, 60(s6)
  ADDI s7, zero, 400
  MULW s6, s6, s7
  LA s7, array
  ADD s6, s7, s6
  LW s6, 56(s6)
  ADDI s7, zero, 400
  MULW s6, s6, s7
  LA s7, array
  ADD s6, s7, s6
  LW s6, 52(s6)
  ADDI s7, zero, 400
  MULW s6, s6, s7
  LA s7, array
  ADD s6, s7, s6
  LW s6, 48(s6)
  ADDI s7, zero, 400
  MULW s6, s6, s7
  LA s7, array
  ADD s6, s7, s6
  LW s6, 44(s6)
  ADDI s7, zero, 400
  MULW s6, s6, s7
  LA s7, array
  ADD s6, s7, s6
  LW s6, 40(s6)
  ADDI s7, zero, 400
  MULW s6, s6, s7
  LA s7, array
  ADD s6, s7, s6
  LW s6, 36(s6)
  ADDI s7, zero, 400
  MULW s6, s6, s7
  LA s7, array
  ADD s6, s7, s6
  LW s6, 32(s6)
  ADDI s7, zero, 400
  MULW s6, s6, s7
  LA s7, array
  ADD s6, s7, s6
  LW s6, 28(s6)
  ADDI s7, zero, 400
  MULW s6, s6, s7
  LA s7, array
  ADD s6, s7, s6
  LW s6, 24(s6)
  ADDI s7, zero, 400
  MULW s6, s6, s7
  LA s7, array
  ADD s6, s7, s6
  LW s6, 20(s6)
  ADDI s7, zero, 400
  MULW s6, s6, s7
  LA s7, array
  ADD s6, s7, s6
  LW s6, 16(s6)
  ADDI s7, zero, 400
  MULW s6, s6, s7
  LA s7, array
  ADD s6, s7, s6
  LW s6, 12(s6)
  ADDI s7, zero, 400
  MULW s6, s6, s7
  LA s7, array
  ADD s6, s7, s6
  LW s6, 8(s6)
  ADDI s7, zero, 400
  MULW s6, s6, s7
  LA s7, array
  ADD s6, s7, s6
  LW s6, 4(s6)
  ADDI s7, zero, 400
  MULW s6, s6, s7
  LA s7, array
  ADD s6, s7, s6
  LW s6, 0(s6)
  ADDI s7, zero, 400
  MULW s6, s6, s7
  LA s7, array
  ADD s6, s7, s6
  LW s6, 224(s6)
  ADDW s5, s5, s6
  ADD a0, s5, zero
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
bb2:
  ADD s2, zero, zero
  # implict jump to bb3
bb3:
  ADD s3, s2, zero
  ADDI s4, zero, 0
  SLTI s4, s4, 100
  BNE s4, zero, bb7
  # implict jump to bb4
bb4:
  ADDIW s0, s3, 1
  # implict jump to bb5
bb5:
  SLTI s5, s0, 20
  BNE s5, zero, bb6
  JAL zero, bb1
bb6:
  ADD s2, s0, zero
  JAL zero, bb3
bb7:
  ADD s4, zero, zero
  # implict jump to bb8
bb8:
  ADD s5, s4, zero
  ADDI s6, zero, 400
  MULW s6, s3, s6
  LA s7, array
  ADD s6, s7, s6
  SLLIW s7, s5, 2
  ADD s6, s6, s7
  SW s5, 0(s6)
  ADDIW s1, s5, 1
  # implict jump to bb9
bb9:
  SLTI s5, s1, 100
  BNE s5, zero, bb10
  JAL zero, bb4
bb10:
  ADD s4, s1, zero
  JAL zero, bb8
