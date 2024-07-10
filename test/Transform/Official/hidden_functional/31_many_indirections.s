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
  ADDI s3, s2, 400
  LA s2, array
  ADDI s4, s2, 800
  LA s2, array
  ADDI s5, s2, 1200
  LA s2, array
  ADDI s6, s2, 1600
  LA s2, array
  ADDI s7, s2, 2000
  LUI s2, 1
  ADDIW s2, s2, -1696
  LA s8, array
  ADD s9, s8, s2
  LUI s2, 1
  ADDIW s2, s2, -1296
  LA s8, array
  ADD s10, s8, s2
  LUI s2, 1
  ADDIW s2, s2, -896
  LA s8, array
  ADD s11, s8, s2
  LUI s2, 1
  ADDIW s2, s2, -496
  LA s8, array
  ADD ra, s8, s2
  LUI s2, 1
  ADDIW s2, s2, -96
  LA s8, array
  ADD t0, s8, s2
  LUI s2, 1
  ADDIW s2, s2, 304
  LA s8, array
  ADD t1, s8, s2
  LUI s2, 1
  ADDIW s2, s2, 704
  LA s8, array
  ADD t2, s8, s2
  LUI s2, 1
  ADDIW s2, s2, 1104
  LA s8, array
  ADD a0, s8, s2
  LUI s2, 1
  ADDIW s2, s2, 1504
  LA s8, array
  ADD a1, s8, s2
  LUI s2, 1
  ADDIW s2, s2, 1904
  LA s8, array
  ADD a2, s8, s2
  LUI s2, 2
  ADDIW s2, s2, -1792
  LA s8, array
  ADD a3, s8, s2
  LUI s2, 2
  ADDIW s2, s2, -1392
  LA s8, array
  ADD a4, s8, s2
  LUI s2, 2
  ADDIW s2, s2, -992
  LA s8, array
  ADD a5, s8, s2
  LUI s2, 2
  ADDIW s2, s2, -500
  LA s8, array
  ADD a6, s8, s2
  LW s2, 0(a6)
  SLLIW s8, s2, 2
  ADD s2, a5, s8
  LW s8, 0(s2)
  SLLIW s2, s8, 2
  ADD s8, a4, s2
  LW s2, 0(s8)
  SLLIW s8, s2, 2
  ADD s2, a3, s8
  LW s8, 0(s2)
  SLLIW s2, s8, 2
  ADD s8, a2, s2
  LW s2, 0(s8)
  SLLIW s8, s2, 2
  ADD s2, a1, s8
  LW s8, 0(s2)
  SLLIW s2, s8, 2
  ADD s8, a0, s2
  LW s2, 0(s8)
  SLLIW s8, s2, 2
  ADD s2, t2, s8
  LW s8, 0(s2)
  SLLIW s2, s8, 2
  ADD s8, t1, s2
  LW s2, 0(s8)
  SLLIW s8, s2, 2
  ADD s2, t0, s8
  LW s8, 0(s2)
  SLLIW s2, s8, 2
  ADD s8, ra, s2
  LW s2, 0(s8)
  SLLIW s8, s2, 2
  ADD s2, s11, s8
  LW s8, 0(s2)
  SLLIW s2, s8, 2
  ADD s8, s10, s2
  LW s2, 0(s8)
  SLLIW s8, s2, 2
  ADD s2, s9, s8
  LW s8, 0(s2)
  SLLIW s2, s8, 2
  ADD s8, s7, s2
  LW s2, 0(s8)
  SLLIW s7, s2, 2
  ADD s2, s6, s7
  LW s6, 0(s2)
  SLLIW s2, s6, 2
  ADD s6, s5, s2
  LW s2, 0(s6)
  SLLIW s5, s2, 2
  ADD s2, s4, s5
  LW s4, 0(s2)
  SLLIW s2, s4, 2
  ADD s4, s3, s2
  LW s2, 0(s4)
  SLLIW s3, s2, 2
  LA s2, array
  ADD s4, s2, s3
  LW s2, 0(s4)
  LUI s3, 2
  ADDIW s3, s3, -520
  LA s4, array
  ADD s5, s4, s3
  LW s3, 0(s5)
  ADDI s4, zero, 400
  MULW s5, s3, s4
  LA s3, array
  ADD s4, s3, s5
  ADDI s3, s4, 68
  LW s4, 0(s3)
  ADDI s3, zero, 400
  MULW s5, s4, s3
  LA s3, array
  ADD s4, s3, s5
  ADDI s3, s4, 64
  LW s4, 0(s3)
  ADDI s3, zero, 400
  MULW s5, s4, s3
  LA s3, array
  ADD s4, s3, s5
  ADDI s3, s4, 60
  LW s4, 0(s3)
  ADDI s3, zero, 400
  MULW s5, s4, s3
  LA s3, array
  ADD s4, s3, s5
  ADDI s3, s4, 56
  LW s4, 0(s3)
  ADDI s3, zero, 400
  MULW s5, s4, s3
  LA s3, array
  ADD s4, s3, s5
  ADDI s3, s4, 52
  LW s4, 0(s3)
  ADDI s3, zero, 400
  MULW s5, s4, s3
  LA s3, array
  ADD s4, s3, s5
  ADDI s3, s4, 48
  LW s4, 0(s3)
  ADDI s3, zero, 400
  MULW s5, s4, s3
  LA s3, array
  ADD s4, s3, s5
  ADDI s3, s4, 44
  LW s4, 0(s3)
  ADDI s3, zero, 400
  MULW s5, s4, s3
  LA s3, array
  ADD s4, s3, s5
  ADDI s3, s4, 40
  LW s4, 0(s3)
  ADDI s3, zero, 400
  MULW s5, s4, s3
  LA s3, array
  ADD s4, s3, s5
  ADDI s3, s4, 36
  LW s4, 0(s3)
  ADDI s3, zero, 400
  MULW s5, s4, s3
  LA s3, array
  ADD s4, s3, s5
  ADDI s3, s4, 32
  LW s4, 0(s3)
  ADDI s3, zero, 400
  MULW s5, s4, s3
  LA s3, array
  ADD s4, s3, s5
  ADDI s3, s4, 28
  LW s4, 0(s3)
  ADDI s3, zero, 400
  MULW s5, s4, s3
  LA s3, array
  ADD s4, s3, s5
  ADDI s3, s4, 24
  LW s4, 0(s3)
  ADDI s3, zero, 400
  MULW s5, s4, s3
  LA s3, array
  ADD s4, s3, s5
  ADDI s3, s4, 20
  LW s4, 0(s3)
  ADDI s3, zero, 400
  MULW s5, s4, s3
  LA s3, array
  ADD s4, s3, s5
  ADDI s3, s4, 16
  LW s4, 0(s3)
  ADDI s3, zero, 400
  MULW s5, s4, s3
  LA s3, array
  ADD s4, s3, s5
  ADDI s3, s4, 12
  LW s4, 0(s3)
  ADDI s3, zero, 400
  MULW s5, s4, s3
  LA s3, array
  ADD s4, s3, s5
  ADDI s3, s4, 8
  LW s4, 0(s3)
  ADDI s3, zero, 400
  MULW s5, s4, s3
  LA s3, array
  ADD s4, s3, s5
  ADDI s3, s4, 4
  LW s4, 0(s3)
  ADDI s3, zero, 400
  MULW s5, s4, s3
  LA s3, array
  ADD s4, s3, s5
  LW s3, 0(s4)
  ADDI s4, zero, 400
  MULW s5, s3, s4
  LA s3, array
  ADD s4, s3, s5
  ADDI s3, s4, 224
  LW s4, 0(s3)
  ADDW s3, s2, s4
  ADD a0, s3, zero
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
  ADD s2, zero, zero
  # implict jump to bb4
bb4:
  ADD s3, s2, zero
  SLTI s4, s3, 100
  BNE s4, zero, bb6
  # implict jump to bb5
bb5:
  ADDIW s4, s1, 1
  ADD s0, s4, zero
  JAL zero, bb1
bb6:
  ADDI s0, zero, 400
  MULW s4, s1, s0
  LA s0, array
  ADD s5, s0, s4
  SLLIW s0, s3, 2
  ADD s4, s5, s0
  SW s3, 0(s4)
  ADDIW s0, s3, 1
  ADD s2, s0, zero
  JAL zero, bb4
