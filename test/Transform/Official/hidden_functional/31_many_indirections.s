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
  SD s5, 16(sp)
  SD s10, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD s11, 96(sp)
  ADD s0, zero, zero
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  SLTI s2, s1, 20
  BNE s2, zero, bb3
  # implict jump to bb2
bb2:
  LA s0, array
  ADDI s1, s0, 400
  LA s0, array
  ADDI s2, s0, 800
  LA s0, array
  ADDI s3, s0, 1200
  LA s0, array
  ADDI s4, s0, 1600
  LA s0, array
  ADDI s5, s0, 2000
  LUI s0, 1
  ADDIW s0, s0, -1696
  LA s6, array
  ADD s7, s6, s0
  LUI s0, 1
  ADDIW s0, s0, -1296
  LA s6, array
  ADD s8, s6, s0
  LUI s0, 1
  ADDIW s0, s0, -896
  LA s6, array
  ADD s9, s6, s0
  LUI s0, 1
  ADDIW s0, s0, -496
  LA s6, array
  ADD s10, s6, s0
  LUI s0, 1
  ADDIW s0, s0, -96
  LA s6, array
  ADD s11, s6, s0
  LUI s0, 1
  ADDIW s0, s0, 304
  LA s6, array
  ADD ra, s6, s0
  LUI s0, 1
  ADDIW s0, s0, 704
  LA s6, array
  ADD t0, s6, s0
  LUI s0, 1
  ADDIW s0, s0, 1104
  LA s6, array
  ADD t1, s6, s0
  LUI s0, 1
  ADDIW s0, s0, 1504
  LA s6, array
  ADD t2, s6, s0
  LUI s0, 1
  ADDIW s0, s0, 1904
  LA s6, array
  ADD a0, s6, s0
  LUI s0, 2
  ADDIW s0, s0, -1792
  LA s6, array
  ADD a1, s6, s0
  LUI s0, 2
  ADDIW s0, s0, -1392
  LA s6, array
  ADD a2, s6, s0
  LUI s0, 2
  ADDIW s0, s0, -992
  LA s6, array
  ADD a3, s6, s0
  LUI s0, 2
  ADDIW s0, s0, -500
  LA s6, array
  ADD a4, s6, s0
  LW s0, 0(a4)
  ADDI s6, zero, 4
  MULW a4, s0, s6
  ADD s0, a3, a4
  LW s6, 0(s0)
  ADDI s0, zero, 4
  MULW a3, s6, s0
  ADD s0, a2, a3
  LW s6, 0(s0)
  ADDI s0, zero, 4
  MULW a2, s6, s0
  ADD s0, a1, a2
  LW s6, 0(s0)
  ADDI s0, zero, 4
  MULW a1, s6, s0
  ADD s0, a0, a1
  LW s6, 0(s0)
  ADDI s0, zero, 4
  MULW a0, s6, s0
  ADD s0, t2, a0
  LW s6, 0(s0)
  ADDI s0, zero, 4
  MULW t2, s6, s0
  ADD s0, t1, t2
  LW s6, 0(s0)
  ADDI s0, zero, 4
  MULW t1, s6, s0
  ADD s0, t0, t1
  LW s6, 0(s0)
  ADDI s0, zero, 4
  MULW t0, s6, s0
  ADD s0, ra, t0
  LW s6, 0(s0)
  ADDI s0, zero, 4
  MULW ra, s6, s0
  ADD s0, s11, ra
  LW s6, 0(s0)
  ADDI s0, zero, 4
  MULW s11, s6, s0
  ADD s0, s10, s11
  LW s6, 0(s0)
  ADDI s0, zero, 4
  MULW s10, s6, s0
  ADD s0, s9, s10
  LW s6, 0(s0)
  ADDI s0, zero, 4
  MULW s9, s6, s0
  ADD s0, s8, s9
  LW s6, 0(s0)
  ADDI s0, zero, 4
  MULW s8, s6, s0
  ADD s0, s7, s8
  LW s6, 0(s0)
  ADDI s0, zero, 4
  MULW s7, s6, s0
  ADD s0, s5, s7
  LW s5, 0(s0)
  ADDI s0, zero, 4
  MULW s6, s5, s0
  ADD s0, s4, s6
  LW s4, 0(s0)
  ADDI s0, zero, 4
  MULW s5, s4, s0
  ADD s0, s3, s5
  LW s3, 0(s0)
  ADDI s0, zero, 4
  MULW s4, s3, s0
  ADD s0, s2, s4
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, array
  ADD s1, s0, s2
  LW s0, 0(s1)
  LUI s1, 2
  ADDIW s1, s1, -520
  LA s2, array
  ADD s3, s2, s1
  LW s1, 0(s3)
  ADDI s2, zero, 400
  MULW s3, s1, s2
  LA s1, array
  ADD s2, s1, s3
  ADDI s1, s2, 68
  LW s2, 0(s1)
  ADDI s1, zero, 400
  MULW s3, s2, s1
  LA s1, array
  ADD s2, s1, s3
  ADDI s1, s2, 64
  LW s2, 0(s1)
  ADDI s1, zero, 400
  MULW s3, s2, s1
  LA s1, array
  ADD s2, s1, s3
  ADDI s1, s2, 60
  LW s2, 0(s1)
  ADDI s1, zero, 400
  MULW s3, s2, s1
  LA s1, array
  ADD s2, s1, s3
  ADDI s1, s2, 56
  LW s2, 0(s1)
  ADDI s1, zero, 400
  MULW s3, s2, s1
  LA s1, array
  ADD s2, s1, s3
  ADDI s1, s2, 52
  LW s2, 0(s1)
  ADDI s1, zero, 400
  MULW s3, s2, s1
  LA s1, array
  ADD s2, s1, s3
  ADDI s1, s2, 48
  LW s2, 0(s1)
  ADDI s1, zero, 400
  MULW s3, s2, s1
  LA s1, array
  ADD s2, s1, s3
  ADDI s1, s2, 44
  LW s2, 0(s1)
  ADDI s1, zero, 400
  MULW s3, s2, s1
  LA s1, array
  ADD s2, s1, s3
  ADDI s1, s2, 40
  LW s2, 0(s1)
  ADDI s1, zero, 400
  MULW s3, s2, s1
  LA s1, array
  ADD s2, s1, s3
  ADDI s1, s2, 36
  LW s2, 0(s1)
  ADDI s1, zero, 400
  MULW s3, s2, s1
  LA s1, array
  ADD s2, s1, s3
  ADDI s1, s2, 32
  LW s2, 0(s1)
  ADDI s1, zero, 400
  MULW s3, s2, s1
  LA s1, array
  ADD s2, s1, s3
  ADDI s1, s2, 28
  LW s2, 0(s1)
  ADDI s1, zero, 400
  MULW s3, s2, s1
  LA s1, array
  ADD s2, s1, s3
  ADDI s1, s2, 24
  LW s2, 0(s1)
  ADDI s1, zero, 400
  MULW s3, s2, s1
  LA s1, array
  ADD s2, s1, s3
  ADDI s1, s2, 20
  LW s2, 0(s1)
  ADDI s1, zero, 400
  MULW s3, s2, s1
  LA s1, array
  ADD s2, s1, s3
  ADDI s1, s2, 16
  LW s2, 0(s1)
  ADDI s1, zero, 400
  MULW s3, s2, s1
  LA s1, array
  ADD s2, s1, s3
  ADDI s1, s2, 12
  LW s2, 0(s1)
  ADDI s1, zero, 400
  MULW s3, s2, s1
  LA s1, array
  ADD s2, s1, s3
  ADDI s1, s2, 8
  LW s2, 0(s1)
  ADDI s1, zero, 400
  MULW s3, s2, s1
  LA s1, array
  ADD s2, s1, s3
  ADDI s1, s2, 4
  LW s2, 0(s1)
  ADDI s1, zero, 400
  MULW s3, s2, s1
  LA s1, array
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 400
  MULW s3, s1, s2
  LA s1, array
  ADD s2, s1, s3
  ADDI s1, s2, 224
  LW s2, 0(s1)
  ADDW s1, s0, s2
  ADD a0, s1, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s10, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
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
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb1
bb6:
  ADDI s4, zero, 400
  MULW s5, s1, s4
  LA s4, array
  ADD s6, s4, s5
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s4, s6, s5
  SW s3, 0(s4)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb4
