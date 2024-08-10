.global main
.global maxCliques
.section .bss


store:
.space 120
graph:
.space 3600
.section .data
m:
.word 0x00000000
n:
.word 0x00000000


.section .text
main:   # loop depth 0
  LUI t0, 1048575
  ADDIW t0, t0, -784
  ADD sp, sp, t0
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s3, 16(sp)
  SD s4, 24(sp)
  SD s5, 32(sp)
  SD s6, 40(sp)
  SD s7, 48(sp)
  SD s8, 56(sp)
  SD s0, 64(sp)
  SD s1, 72(sp)
  LA s1, n
  CALL getint
  ADD s0, a0, zero
  LA s2, m
  SW s0, 0(s1)
  ADDI s1, zero, 0
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(s2)
  BLT s1, s0, bb6
  # implict jump to bb1
bb1:   # loop depth 0
  LA a0, m
  LW a0, 0(a0)
  BLT zero, a0, bb3
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI a1, zero, 1
  ADD a0, zero, zero
  CALL maxCliques
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s3, 16(sp)
  LD s4, 24(sp)
  LD s5, 32(sp)
  LD s6, 40(sp)
  LD s7, 48(sp)
  LD s8, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LUI t0, 1
  ADDIW t0, t0, 784
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb3:   # loop depth 0
  LA a1, m
  ADD a0, zero, zero
  LW a1, 0(a1)
  # implict jump to bb4
bb4:   # loop depth 1
  ADDI s2, zero, 120
  SLLIW s0, a0, 3
  ADDI s4, zero, 120
  ADDI t6, sp, 80
  ADD s0, t6, s0
  LA s7, graph
  LW s1, 0(s0)
  LA s5, graph
  ADDI s3, zero, 1
  ADDI s6, zero, 1
  ADDIW a0, a0, 1
  LW s8, 4(s0)
  MULW s0, s1, s2
  SLLIW s2, s1, 2
  MULW s4, s8, s4
  SLLIW s1, s8, 2
  ADD s0, s7, s0
  ADD s0, s0, s1
  ADD s1, s5, s4
  SW s3, 0(s0)
  ADD s0, s1, s2
  SW s6, 0(s0)
  BLT a0, a1, bb5
  JAL zero, bb2
bb5:   # loop depth 1
  JAL zero, bb4
bb6:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb7
bb7:   # loop depth 1
  CALL getint
  SLLIW s2, s0, 3
  ADD s1, a0, zero
  ADDI t6, sp, 80
  ADD s2, t6, s2
  LA s3, m
  SW s1, 0(s2)
  ADDIW s0, s0, 1
  CALL getint
  ADD s1, a0, zero
  SW s1, 4(s2)
  LW s1, 0(s3)
  BLT s0, s1, bb8
  JAL zero, bb1
bb8:   # loop depth 1
  JAL zero, bb7
maxCliques:   # loop depth 0
  ADDI sp, sp, -96
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
  LA a0, n
  ADD s6, a1, zero
  LW a0, 0(a0)
  SLTI a0, a0, 1
  XORI a0, a0, 1
  BNE a0, zero, bb12
  # implict jump to bb10
bb10:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb11
bb11:   # loop depth 0
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
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb12:   # loop depth 0
  LA s3, store
  SLLIW s1, s6, 2
  ADD a1, zero, zero
  ADDI a0, zero, 1
  ADD s2, zero, zero
  ADDIW s0, s6, 1
  ADD s10, s3, s1
  # implict jump to bb13
bb13:   # loop depth 1
  ADD s1, a0, zero
  ADDI s3, zero, 1
  SW s1, 0(s10)
  ADD a0, s2, zero
  # implict jump to bb14
bb14:   # loop depth 2
  ADD s2, s3, zero
  BLT s2, s0, bb28
  # implict jump to bb15
bb15:   # loop depth 1
  ADDI s2, zero, 1
  # implict jump to bb16
bb16:   # loop depth 1
  BNE s2, zero, bb21
  # implict jump to bb17
bb17:   # loop depth 1
  ADD s2, a0, zero
  # implict jump to bb18
bb18:   # loop depth 1
  LA s3, n
  ADDIW a0, s1, 1
  LW s1, 0(s3)
  SLT s1, s1, a0
  XORI s1, s1, 1
  BNE s1, zero, bb20
  # implict jump to bb19
bb19:   # loop depth 0
  ADD a0, s2, zero
  JAL zero, bb11
bb20:   # loop depth 1
  JAL zero, bb13
bb21:   # loop depth 1
  BLT a0, s6, bb27
  # implict jump to bb22
bb22:   # loop depth 1
  ADD s2, a0, zero
  # implict jump to bb23
bb23:   # loop depth 1
  ADD a1, s0, zero
  ADD a0, s1, zero
  CALL maxCliques
  BLT s2, a0, bb26
  # implict jump to bb24
bb24:   # loop depth 1
  # implict jump to bb25
bb25:   # loop depth 1
  ADD a1, a0, zero
  JAL zero, bb18
bb26:   # loop depth 1
  ADD s2, a0, zero
  JAL zero, bb25
bb27:   # loop depth 1
  ADD s2, s6, zero
  JAL zero, bb23
bb28:   # loop depth 2
  ADDIW s3, s2, 1
  ADD s4, s3, zero
  # implict jump to bb29
bb29:   # loop depth 3
  BLT s4, s0, bb31
  # implict jump to bb30
bb30:   # loop depth 2
  JAL zero, bb14
bb31:   # loop depth 3
  LA s9, store
  SLLIW s5, s2, 2
  LA s8, store
  SLLIW s7, s4, 2
  ADD s5, s9, s5
  ADDI s9, zero, 120
  LW s5, 0(s5)
  ADD s7, s8, s7
  LA s8, graph
  LW s7, 0(s7)
  MULW s5, s5, s9
  SLLIW s7, s7, 2
  ADD s5, s8, s5
  ADD s5, s5, s7
  LW s5, 0(s5)
  SLTIU s5, s5, 1
  BNE s5, zero, bb33
  # implict jump to bb32
bb32:   # loop depth 3
  ADDIW s4, s4, 1
  JAL zero, bb29
bb33:   # loop depth 1
  ADD s2, zero, zero
  JAL zero, bb16
