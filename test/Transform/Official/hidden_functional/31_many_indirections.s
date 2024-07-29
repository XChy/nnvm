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
  ADDI sp, sp, -128
  SD ra, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s0, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s10, 80(sp)
  SD s8, 96(sp)
  SD s9, 104(sp)
  SD s11, 112(sp)
  ADDI s4, zero, 0
  SLTI s4, s4, 20
  BNE s4, zero, bb2
  # implict jump to bb1
bb1:
  LA s7, array
  ADDI s7, s7, 400
  LA s8, array
  ADDI s8, s8, 800
  LA s9, array
  ADDI s9, s9, 1200
  LA s10, array
  ADDI s10, s10, 1600
  LA s11, array
  ADDI s11, s11, 2000
  LUI ra, 1
  ADDIW ra, ra, -1696
  LA t0, array
  ADD ra, t0, ra
  LUI t0, 1
  ADDIW t0, t0, -1296
  LA t1, array
  ADD t0, t1, t0
  LUI t1, 1
  ADDIW t1, t1, -896
  LA t2, array
  ADD t1, t2, t1
  LUI t2, 1
  ADDIW t2, t2, -496
  LA a0, array
  ADD t2, a0, t2
  LUI a0, 1
  ADDIW a0, a0, -96
  LA a1, array
  ADD a0, a1, a0
  LUI a1, 1
  ADDIW a1, a1, 304
  LA a2, array
  ADD a1, a2, a1
  LUI a2, 1
  ADDIW a2, a2, 704
  LA a3, array
  ADD a2, a3, a2
  LUI a3, 1
  ADDIW a3, a3, 1104
  LA a4, array
  ADD a3, a4, a3
  LUI a4, 1
  ADDIW a4, a4, 1504
  LA a5, array
  ADD a4, a5, a4
  LUI a5, 1
  ADDIW a5, a5, 1904
  LA a6, array
  ADD a5, a6, a5
  LUI a6, 2
  ADDIW a6, a6, -1792
  LA a7, array
  ADD a6, a7, a6
  LUI a7, 2
  ADDIW a7, a7, -1392
  LA t6, array
  ADD a7, t6, a7
  LUI t6, 2
  ADDIW t6, t6, -992
  LA s0, array
  ADD s0, s0, t6
  LUI t6, 2
  ADDIW t6, t6, -500
  LA s5, array
  ADD s5, s5, t6
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  ADD s0, s0, s5
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, a7, s0
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, a6, s0
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, a5, s0
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, a4, s0
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, a3, s0
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, a2, s0
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, a1, s0
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, a0, s0
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, t2, s0
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, t1, s0
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, t0, s0
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, ra, s0
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s11, s0
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s10, s0
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s9, s0
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s8, s0
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADD s0, s7, s0
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s5, array
  ADD s0, s5, s0
  LW s0, 0(s0)
  LUI s5, 2
  ADDIW s5, s5, -520
  LA s7, array
  ADD s5, s7, s5
  LW s5, 0(s5)
  ADDI s7, zero, 400
  MULW s5, s5, s7
  LA s7, array
  ADD s5, s7, s5
  LW s5, 68(s5)
  ADDI s7, zero, 400
  MULW s5, s5, s7
  LA s7, array
  ADD s5, s7, s5
  LW s5, 64(s5)
  ADDI s7, zero, 400
  MULW s5, s5, s7
  LA s7, array
  ADD s5, s7, s5
  LW s5, 60(s5)
  ADDI s7, zero, 400
  MULW s5, s5, s7
  LA s7, array
  ADD s5, s7, s5
  LW s5, 56(s5)
  ADDI s7, zero, 400
  MULW s5, s5, s7
  LA s7, array
  ADD s5, s7, s5
  LW s5, 52(s5)
  ADDI s7, zero, 400
  MULW s5, s5, s7
  LA s7, array
  ADD s5, s7, s5
  LW s5, 48(s5)
  ADDI s7, zero, 400
  MULW s5, s5, s7
  LA s7, array
  ADD s5, s7, s5
  LW s5, 44(s5)
  ADDI s7, zero, 400
  MULW s5, s5, s7
  LA s7, array
  ADD s5, s7, s5
  LW s5, 40(s5)
  ADDI s7, zero, 400
  MULW s5, s5, s7
  LA s7, array
  ADD s5, s7, s5
  LW s5, 36(s5)
  ADDI s7, zero, 400
  MULW s5, s5, s7
  LA s7, array
  ADD s5, s7, s5
  LW s5, 32(s5)
  ADDI s7, zero, 400
  MULW s5, s5, s7
  LA s7, array
  ADD s5, s7, s5
  LW s5, 28(s5)
  ADDI s7, zero, 400
  MULW s5, s5, s7
  LA s7, array
  ADD s5, s7, s5
  LW s5, 24(s5)
  ADDI s7, zero, 400
  MULW s5, s5, s7
  LA s7, array
  ADD s5, s7, s5
  LW s5, 20(s5)
  ADDI s7, zero, 400
  MULW s5, s5, s7
  LA s7, array
  ADD s5, s7, s5
  LW s5, 16(s5)
  ADDI s7, zero, 400
  MULW s5, s5, s7
  LA s7, array
  ADD s5, s7, s5
  LW s5, 12(s5)
  ADDI s7, zero, 400
  MULW s5, s5, s7
  LA s7, array
  ADD s5, s7, s5
  LW s5, 8(s5)
  ADDI s7, zero, 400
  MULW s5, s5, s7
  LA s7, array
  ADD s5, s7, s5
  LW s5, 4(s5)
  ADDI s7, zero, 400
  MULW s5, s5, s7
  LA s7, array
  ADD s5, s7, s5
  LW s5, 0(s5)
  ADDI s7, zero, 400
  MULW s5, s5, s7
  LA s7, array
  ADD s5, s7, s5
  LW s5, 224(s5)
  ADDW s0, s0, s5
  ADD a0, s0, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s0, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s10, 80(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  LD s11, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb2:
  # implict jump to bb3
bb3:
  ADDI s4, zero, 0
  SLTI s1, s4, 100
  ADD s4, zero, zero
  # implict jump to bb4
bb4:
  ADD t4, s4, zero
  SW t4, 0(sp)
  BNE s1, zero, bb8
  # implict jump to bb5
bb5:
  LW t4, 0(sp)
  ADDIW s2, t4, 1
  # implict jump to bb6
bb6:
  SLTI s7, s2, 20
  BNE s7, zero, bb7
  JAL zero, bb1
bb7:
  ADD s4, s2, zero
  JAL zero, bb4
bb8:
  # implict jump to bb9
bb9:
  ADDI s6, zero, 400
  LW t4, 0(sp)
  MULW s6, t4, s6
  LA s7, array
  ADD t4, s7, s6
  SD t4, 88(sp)
  ADD s6, zero, zero
  # implict jump to bb10
bb10:
  ADD s7, s6, zero
  SLLIW s8, s7, 2
  LD t4, 88(sp)
  ADD s8, t4, s8
  SW s7, 0(s8)
  ADDIW s3, s7, 1
  # implict jump to bb11
bb11:
  SLTI s7, s3, 100
  BNE s7, zero, bb12
  JAL zero, bb5
bb12:
  ADD s6, s3, zero
  JAL zero, bb10
