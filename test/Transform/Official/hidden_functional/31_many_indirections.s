.global main
.section .bss
array:
.space 8000
.section .data

.section .text
main:
  ADDI sp, sp, -112
  SD ra, 8(sp)
  SD s0, 16(sp)
  SD s1, 24(sp)
  SD s2, 32(sp)
  SD s3, 40(sp)
  SD s4, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD s10, 96(sp)
  SD s11, 104(sp)
  ADD s0, zero, zero
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  ADDI s2, zero, 400
  MULW s2, s1, s2
  LA s3, array
  ADD t4, s3, s2
  SD t4, 0(sp)
  ADD s3, zero, zero
  # implict jump to bb2
bb2:
  ADD s4, s3, zero
  SLLIW s5, s4, 2
  LD t4, 0(sp)
  ADD s5, t4, s5
  SW s4, 0(s5)
  ADDIW s4, s4, 1
  SLTI s5, s4, 100
  BNE s5, zero, bb6
  # implict jump to bb3
bb3:
  ADDIW s5, s1, 1
  SLTI s6, s5, 20
  BNE s6, zero, bb5
  # implict jump to bb4
bb4:
  LA s6, array
  ADDI s6, s6, 400
  LA s7, array
  ADDI s7, s7, 800
  LA s8, array
  ADDI s8, s8, 1200
  LA s9, array
  ADDI s9, s9, 1600
  LA s10, array
  ADDI s10, s10, 2000
  LUI s11, 1
  ADDIW s11, s11, -1696
  LA ra, array
  ADD s11, ra, s11
  LUI ra, 1
  ADDIW ra, ra, -1296
  LA t0, array
  ADD ra, t0, ra
  LUI t0, 1
  ADDIW t0, t0, -896
  LA t1, array
  ADD t0, t1, t0
  LUI t1, 1
  ADDIW t1, t1, -496
  LA t2, array
  ADD t1, t2, t1
  LUI t2, 1
  ADDIW t2, t2, -96
  LA a0, array
  ADD t2, a0, t2
  LUI a0, 1
  ADDIW a0, a0, 304
  LA a1, array
  ADD a0, a1, a0
  LUI a1, 1
  ADDIW a1, a1, 704
  LA a2, array
  ADD a1, a2, a1
  LUI a2, 1
  ADDIW a2, a2, 1104
  LA a3, array
  ADD a2, a3, a2
  LUI a3, 1
  ADDIW a3, a3, 1504
  LA a4, array
  ADD a3, a4, a3
  LUI a4, 1
  ADDIW a4, a4, 1904
  LA a5, array
  ADD a4, a5, a4
  LUI a5, 2
  ADDIW a5, a5, -1792
  LA a6, array
  ADD a5, a6, a5
  LUI a6, 2
  ADDIW a6, a6, -1392
  LA a7, array
  ADD a6, a7, a6
  LUI a7, 2
  ADDIW a7, a7, -992
  LA t6, array
  ADD a7, t6, a7
  LUI t6, 2
  ADDIW t6, t6, -500
  LA s2, array
  ADD s2, s2, t6
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  ADD s2, a7, s2
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  ADD s2, a6, s2
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  ADD s2, a5, s2
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  ADD s2, a4, s2
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  ADD s2, a3, s2
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  ADD s2, a2, s2
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  ADD s2, a1, s2
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  ADD s2, a0, s2
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  ADD s2, t2, s2
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  ADD s2, t1, s2
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  ADD s2, t0, s2
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  ADD s2, ra, s2
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  ADD s2, s11, s2
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  ADD s2, s10, s2
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  ADD s2, s9, s2
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  ADD s2, s8, s2
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  ADD s2, s7, s2
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  ADD s2, s6, s2
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LA s6, array
  ADD s2, s6, s2
  LW s2, 0(s2)
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
  ADDW s2, s2, s6
  ADD a0, s2, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s3, 40(sp)
  LD s4, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb5:
  ADD s0, s5, zero
  JAL zero, bb1
bb6:
  ADD s3, s4, zero
  JAL zero, bb2
