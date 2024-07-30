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
main:
  LUI t0, 1048575
  ADDIW t0, t0, -784
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
  CALL getint
  ADD s0, a0, zero
  LA s1, n
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, m
  SW s0, 0(s1)
  LA s0, m
  LW s0, 0(s0)
  ADDI s1, zero, 0
  BLT s1, s0, bb6
  # implict jump to bb1
bb1:
  LA s2, m
  LW s2, 0(s2)
  BLT zero, s2, bb3
  # implict jump to bb2
bb2:
  ADD a0, zero, zero
  ADDI a1, zero, 1
  CALL maxCliques
  ADD s4, a0, zero
  ADD a0, s4, zero
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
  LUI t0, 1
  ADDIW t0, t0, 784
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb3:
  ADD s2, zero, zero
  # implict jump to bb4
bb4:
  ADD s3, s2, zero
  SLLIW s4, s3, 3
  ADDI t5, sp, 72
  ADD s4, t5, s4
  LW s5, 0(s4)
  ADDI s6, zero, 120
  MULW s6, s5, s6
  LA s7, graph
  ADD s6, s7, s6
  LW s4, 4(s4)
  SLLIW s7, s4, 2
  ADD s6, s6, s7
  ADDI s7, zero, 1
  SW s7, 0(s6)
  ADDI s6, zero, 120
  MULW s4, s4, s6
  LA s6, graph
  ADD s4, s6, s4
  SLLIW s5, s5, 2
  ADD s4, s4, s5
  ADDI s5, zero, 1
  SW s5, 0(s4)
  ADDIW s3, s3, 1
  LA s4, m
  LW s4, 0(s4)
  BLT s3, s4, bb5
  JAL zero, bb2
bb5:
  ADD s2, s3, zero
  JAL zero, bb4
bb6:
  ADD s0, zero, zero
  # implict jump to bb7
bb7:
  ADD s1, s0, zero
  SLLIW s2, s1, 3
  ADDI t5, sp, 72
  ADD s2, t5, s2
  CALL getint
  ADD s3, a0, zero
  SW s3, 0(s2)
  CALL getint
  ADD s3, a0, zero
  SW s3, 4(s2)
  ADDIW s1, s1, 1
  LA s2, m
  LW s2, 0(s2)
  BLT s1, s2, bb8
  JAL zero, bb1
bb8:
  ADD s0, s1, zero
  JAL zero, bb7
maxCliques:
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
  ADD s0, a1, zero
  LA s1, n
  LW s1, 0(s1)
  SLTI s1, s1, 1
  XORI s1, s1, 1
  BNE s1, zero, bb12
  # implict jump to bb10
bb10:
  ADD s1, zero, zero
  # implict jump to bb11
bb11:
  ADD a0, s1, zero
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
bb12:
  SLLIW s2, s0, 2
  LA s3, store
  ADD s2, s3, s2
  ADDIW s3, s0, 1
  ADD s4, zero, zero
  ADDI s5, zero, 1
  ADD s6, zero, zero
  # implict jump to bb13
bb13:
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADD s9, s4, zero
  SW s8, 0(s2)
  ADDI s10, zero, 1
  # implict jump to bb14
bb14:
  ADD s11, s10, zero
  BLT s11, s3, bb28
  # implict jump to bb15
bb15:
  ADDI t0, zero, 1
  # implict jump to bb16
bb16:
  BNE t0, zero, bb21
  # implict jump to bb17
bb17:
  ADD s10, s9, zero
  # implict jump to bb18
bb18:
  ADDIW s8, s8, 1
  LA s9, n
  LW s9, 0(s9)
  SLT s9, s9, s8
  XORI s9, s9, 1
  BNE s9, zero, bb20
  # implict jump to bb19
bb19:
  ADD s1, s10, zero
  JAL zero, bb11
bb20:
  ADD s4, s10, zero
  ADD s5, s8, zero
  ADD s6, s7, zero
  JAL zero, bb13
bb21:
  BLT s9, s0, bb27
  # implict jump to bb22
bb22:
  # implict jump to bb23
bb23:
  ADD a0, s8, zero
  ADD a1, s3, zero
  CALL maxCliques
  ADD s11, a0, zero
  BLT s9, s11, bb26
  # implict jump to bb24
bb24:
  # implict jump to bb25
bb25:
  ADD s7, s11, zero
  ADD s10, s9, zero
  JAL zero, bb18
bb26:
  ADD s9, s11, zero
  JAL zero, bb25
bb27:
  ADD s9, s0, zero
  JAL zero, bb23
bb28:
  ADDIW t1, s11, 1
  ADD t2, t1, zero
  # implict jump to bb29
bb29:
  ADD a0, t2, zero
  BLT a0, s3, bb31
  # implict jump to bb30
bb30:
  ADD s10, t1, zero
  JAL zero, bb14
bb31:
  SLLIW s10, s11, 2
  LA a2, store
  ADD s10, a2, s10
  LW s10, 0(s10)
  ADDI a2, zero, 120
  MULW s10, s10, a2
  LA a2, graph
  ADD s10, a2, s10
  SLLIW a2, a0, 2
  LA a3, store
  ADD a2, a3, a2
  LW a2, 0(a2)
  SLLIW a2, a2, 2
  ADD s10, s10, a2
  LW s10, 0(s10)
  SLTIU s10, s10, 1
  BNE s10, zero, bb33
  # implict jump to bb32
bb32:
  ADDIW s10, a0, 1
  ADD t2, s10, zero
  JAL zero, bb29
bb33:
  ADD t0, zero, zero
  JAL zero, bb16
