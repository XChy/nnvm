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
  SD s8, 72(sp)
  CALL getint
  ADD s2, a0, zero
  LA s3, n
  SW s2, 0(s3)
  CALL getint
  ADD s2, a0, zero
  LA s3, m
  SW s2, 0(s3)
  LA s2, m
  LW s2, 0(s2)
  ADDI s3, zero, 0
  BLT s3, s2, bb7
  # implict jump to bb1
bb1:
  LA s3, m
  LW s3, 0(s3)
  ADDI s4, zero, 0
  BLT s4, s3, bb3
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
  LD s8, 72(sp)
  LUI t0, 1
  ADDIW t0, t0, 784
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb3:
  ADD s3, zero, zero
  # implict jump to bb4
bb4:
  ADD s4, s3, zero
  SLLIW s5, s4, 3
  ADDI t5, sp, 80
  ADD s5, t5, s5
  LW s6, 0(s5)
  ADDI s7, zero, 120
  MULW s7, s6, s7
  LA s8, graph
  ADD s7, s8, s7
  LW s5, 4(s5)
  SLLIW s8, s5, 2
  ADD s7, s7, s8
  ADDI s8, zero, 1
  SW s8, 0(s7)
  ADDI s7, zero, 120
  MULW s5, s5, s7
  LA s7, graph
  ADD s5, s7, s5
  SLLIW s6, s6, 2
  ADD s5, s5, s6
  ADDI s6, zero, 1
  SW s6, 0(s5)
  ADDIW s0, s4, 1
  # implict jump to bb5
bb5:
  LA s4, m
  LW s4, 0(s4)
  BLT s0, s4, bb6
  JAL zero, bb2
bb6:
  ADD s3, s0, zero
  JAL zero, bb4
bb7:
  ADD s2, zero, zero
  # implict jump to bb8
bb8:
  ADD s3, s2, zero
  SLLIW s4, s3, 3
  ADDI t5, sp, 80
  ADD s4, t5, s4
  CALL getint
  ADD s5, a0, zero
  SW s5, 0(s4)
  CALL getint
  ADD s5, a0, zero
  SW s5, 4(s4)
  ADDIW s1, s3, 1
  # implict jump to bb9
bb9:
  LA s3, m
  LW s3, 0(s3)
  BLT s1, s3, bb10
  JAL zero, bb1
bb10:
  ADD s2, s1, zero
  JAL zero, bb8
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
  # implict jump to bb12
bb12:
  ADD s2, s1, zero
  BLT s2, s0, bb14
  # implict jump to bb13
bb13:
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
bb14:
  ADDIW s3, s2, 1
  ADD s4, s3, zero
  # implict jump to bb15
bb15:
  ADD s5, s4, zero
  BLT s5, s0, bb17
  # implict jump to bb16
bb16:
  ADD s1, s3, zero
  JAL zero, bb12
bb17:
  SLLIW s1, s2, 2
  LA s6, store
  ADD s1, s6, s1
  LW s1, 0(s1)
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
  BNE s1, zero, bb19
  # implict jump to bb18
bb18:
  ADDIW s1, s5, 1
  ADD s4, s1, zero
  JAL zero, bb15
bb19:
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
  ADD s3, a1, zero
  LA s4, n
  LW s4, 0(s4)
  SLTI s4, s4, 1
  XORI s4, s4, 1
  BNE s4, zero, bb23
  # implict jump to bb21
bb21:
  ADD s4, zero, zero
  # implict jump to bb22
bb22:
  ADD a0, s4, zero
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
bb23:
  ADDI s5, zero, 1
  ADD s6, zero, zero
  ADD s7, zero, zero
  # implict jump to bb24
bb24:
  ADD s8, s7, zero
  ADD s9, s6, zero
  ADD s10, s5, zero
  SLLIW s11, s3, 2
  LA t0, store
  ADD s11, t0, s11
  SW s10, 0(s11)
  ADDIW s11, s3, 1
  ADDI t0, zero, 1
  # implict jump to bb25
bb25:
  ADD t1, t0, zero
  BLT t1, s11, bb40
  # implict jump to bb26
bb26:
  ADDI t2, zero, 1
  # implict jump to bb27
bb27:
  BNE t2, zero, bb33
  # implict jump to bb28
bb28:
  ADD t4, s9, zero
  SW t4, 0(sp)
  # implict jump to bb29
bb29:
  LW t4, 0(sp)
  ADD s1, t4, zero
  ADD s0, s8, zero
  ADDIW s2, s10, 1
  # implict jump to bb30
bb30:
  LA s8, n
  LW s8, 0(s8)
  SLT s8, s8, s2
  XORI s8, s8, 1
  BNE s8, zero, bb32
  # implict jump to bb31
bb31:
  ADD s4, s1, zero
  JAL zero, bb22
bb32:
  ADD s5, s2, zero
  ADD s6, s1, zero
  ADD s7, s0, zero
  JAL zero, bb24
bb33:
  BLT s9, s3, bb39
  # implict jump to bb34
bb34:
  # implict jump to bb35
bb35:
  ADD a0, s10, zero
  ADD a1, s11, zero
  CALL maxCliques
  ADD s11, a0, zero
  BLT s9, s11, bb38
  # implict jump to bb36
bb36:
  # implict jump to bb37
bb37:
  ADD s8, s11, zero
  ADD t4, s9, zero
  SW t4, 0(sp)
  JAL zero, bb29
bb38:
  ADD s9, s11, zero
  JAL zero, bb37
bb39:
  ADD s9, s3, zero
  JAL zero, bb35
bb40:
  ADDIW a0, t1, 1
  ADD a2, a0, zero
  # implict jump to bb41
bb41:
  ADD a3, a2, zero
  BLT a3, s11, bb43
  # implict jump to bb42
bb42:
  ADD t0, a0, zero
  JAL zero, bb25
bb43:
  SLLIW t0, t1, 2
  LA a4, store
  ADD t0, a4, t0
  LW t0, 0(t0)
  ADDI a4, zero, 120
  MULW t0, t0, a4
  LA a4, graph
  ADD t0, a4, t0
  SLLIW a4, a3, 2
  LA a5, store
  ADD a4, a5, a4
  LW a4, 0(a4)
  SLLIW a4, a4, 2
  ADD t0, t0, a4
  LW t0, 0(t0)
  SLTIU t0, t0, 1
  BNE t0, zero, bb45
  # implict jump to bb44
bb44:
  ADDIW t0, a3, 1
  ADD a2, t0, zero
  JAL zero, bb41
bb45:
  ADD t2, zero, zero
  JAL zero, bb27
