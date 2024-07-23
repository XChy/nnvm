.global main
.global is_clique
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

maxM:
.word 0x00000258

maxN:
.word 0x0000001e
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
  ADD s0, zero, zero
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  LA s2, m
  LW s2, 0(s2)
  BLT s1, s2, bb6
  # implict jump to bb2
bb2:
  ADD s2, zero, zero
  # implict jump to bb3
bb3:
  ADD s3, s2, zero
  LA s4, m
  LW s4, 0(s4)
  BLT s3, s4, bb5
  # implict jump to bb4
bb4:
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
bb5:
  SLLIW s4, s3, 3
  ADDI t5, sp, 72
  ADD s4, t5, s4
  LW s5, 0(s4)
  ADDI s6, zero, 120
  MULW s6, s5, s6
  LA s7, graph
  ADD s6, s7, s6
  ADDI s4, s4, 4
  LW s4, 0(s4)
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
  ADD s2, s3, zero
  JAL zero, bb3
bb6:
  SLLIW s2, s1, 3
  ADDI t5, sp, 72
  ADD s2, t5, s2
  CALL getint
  ADD s3, a0, zero
  SW s3, 0(s2)
  ADDI s2, s2, 4
  CALL getint
  SW a0, 0(s2)
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb1
is_clique:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 1
  # implict jump to bb8
bb8:
  ADD s2, s1, zero
  BLT s2, s0, bb10
  # implict jump to bb9
bb9:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb10:
  ADDIW s3, s2, 1
  SLLIW s2, s2, 2
  LA s4, store
  ADD s2, s4, s2
  ADD s4, s3, zero
  # implict jump to bb11
bb11:
  ADD s5, s4, zero
  BLT s5, s0, bb13
  # implict jump to bb12
bb12:
  ADD s1, s3, zero
  JAL zero, bb8
bb13:
  LW s1, 0(s2)
  ADDI s6, zero, 120
  MULW s1, s1, s6
  LA s6, graph
  ADD s1, s6, s1
  SLLIW s6, s5, 2
  LA s7, store
  ADD s6, s7, s6
  LW s6, 0(s6)
  SLLIW s6, s6, 2
  ADD s1, s1, s6
  LW s1, 0(s1)
  SLTIU s1, s1, 1
  BNE s1, zero, bb15
  # implict jump to bb14
bb14:
  ADDIW s1, s5, 1
  ADD s4, s1, zero
  JAL zero, bb11
bb15:
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
  ADDI sp, sp, 80
  JALR zero, 0(ra)
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
  SLLIW s1, s0, 2
  LA s2, store
  ADD s1, s2, s1
  ADDIW s2, s0, 1
  ADD s3, zero, zero
  ADD s4, zero, zero
  ADDI s5, zero, 1
  # implict jump to bb17
bb17:
  ADD s6, s5, zero
  ADD s7, s4, zero
  ADD s8, s3, zero
  LA s9, n
  LW s9, 0(s9)
  SLT s9, s9, s6
  XORI s9, s9, 1
  BNE s9, zero, bb19
  # implict jump to bb18
bb18:
  ADD a0, s7, zero
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
bb19:
  SW s6, 0(s1)
  ADDI s9, zero, 1
  # implict jump to bb20
bb20:
  ADD s10, s9, zero
  BLT s10, s2, bb32
  # implict jump to bb21
bb21:
  ADDI s11, zero, 1
  # implict jump to bb22
bb22:
  BNE s11, zero, bb25
  # implict jump to bb23
bb23:
  ADD s9, s7, zero
  # implict jump to bb24
bb24:
  ADDIW s6, s6, 1
  ADD s3, s8, zero
  ADD s4, s9, zero
  ADD s5, s6, zero
  JAL zero, bb17
bb25:
  BLT s7, s0, bb31
  # implict jump to bb26
bb26:
  # implict jump to bb27
bb27:
  ADD a0, s6, zero
  ADD a1, s2, zero
  CALL maxCliques
  BLT s7, a0, bb30
  # implict jump to bb28
bb28:
  # implict jump to bb29
bb29:
  ADD s8, a0, zero
  ADD s9, s7, zero
  JAL zero, bb24
bb30:
  ADD s7, a0, zero
  JAL zero, bb29
bb31:
  ADD s7, s0, zero
  JAL zero, bb27
bb32:
  ADDIW t0, s10, 1
  SLLIW s10, s10, 2
  LA t1, store
  ADD s10, t1, s10
  ADD t1, t0, zero
  # implict jump to bb33
bb33:
  ADD t2, t1, zero
  BLT t2, s2, bb35
  # implict jump to bb34
bb34:
  ADD s9, t0, zero
  JAL zero, bb20
bb35:
  LW s9, 0(s10)
  ADDI a2, zero, 120
  MULW s9, s9, a2
  LA a2, graph
  ADD s9, a2, s9
  SLLIW a2, t2, 2
  LA a3, store
  ADD a2, a3, a2
  LW a2, 0(a2)
  SLLIW a2, a2, 2
  ADD s9, s9, a2
  LW s9, 0(s9)
  SLTIU s9, s9, 1
  BNE s9, zero, bb37
  # implict jump to bb36
bb36:
  ADDIW s9, t2, 1
  ADD t1, s9, zero
  JAL zero, bb33
bb37:
  ADD s11, zero, zero
  JAL zero, bb22
