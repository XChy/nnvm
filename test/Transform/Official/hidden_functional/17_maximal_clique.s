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
  BLT s3, s2, bb8
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
  # implict jump to bb4
bb4:
  ADD s3, zero, zero
  # implict jump to bb5
bb5:
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
  # implict jump to bb6
bb6:
  LA s4, m
  LW s4, 0(s4)
  BLT s0, s4, bb7
  JAL zero, bb2
bb7:
  ADD s3, s0, zero
  JAL zero, bb5
bb8:
  # implict jump to bb9
bb9:
  ADD s2, zero, zero
  # implict jump to bb10
bb10:
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
  # implict jump to bb11
bb11:
  LA s3, m
  LW s3, 0(s3)
  BLT s1, s3, bb12
  JAL zero, bb1
bb12:
  ADD s2, s1, zero
  JAL zero, bb10
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
  # implict jump to bb14
bb14:
  ADD s2, s1, zero
  BLT s2, s0, bb16
  # implict jump to bb15
bb15:
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
bb16:
  ADDIW s3, s2, 1
  ADD s4, s3, zero
  # implict jump to bb17
bb17:
  ADD s5, s4, zero
  BLT s5, s0, bb19
  # implict jump to bb18
bb18:
  ADD s1, s3, zero
  JAL zero, bb14
bb19:
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
  BNE s1, zero, bb21
  # implict jump to bb20
bb20:
  ADDIW s1, s5, 1
  ADD s4, s1, zero
  JAL zero, bb17
bb21:
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
  SD s11, 8(sp)
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  SD s10, 104(sp)
  ADD s5, a1, zero
  LA s6, n
  LW s6, 0(s6)
  SLTI s6, s6, 1
  XORI s6, s6, 1
  BNE s6, zero, bb25
  # implict jump to bb23
bb23:
  ADD s6, zero, zero
  # implict jump to bb24
bb24:
  ADD a0, s6, zero
  LD s11, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  LD s10, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb25:
  ADDI s7, zero, 1
  # implict jump to bb26
bb26:
  SLLIW s8, s5, 2
  LA s9, store
  ADD s2, s9, s8
  ADDIW s0, s5, 1
  ADD s8, zero, zero
  ADD s9, zero, zero
  # implict jump to bb27
bb27:
  ADD s10, s9, zero
  ADD s11, s8, zero
  ADD t4, s7, zero
  SW t4, 0(sp)
  LW t4, 0(sp)
  SW t4, 0(s2)
  ADDI t1, zero, 1
  # implict jump to bb28
bb28:
  ADD t2, t1, zero
  BLT t2, s0, bb43
  # implict jump to bb29
bb29:
  ADDI a0, zero, 1
  # implict jump to bb30
bb30:
  BNE a0, zero, bb36
  # implict jump to bb31
bb31:
  ADD t4, s11, zero
  SW t4, 4(sp)
  # implict jump to bb32
bb32:
  LW t4, 4(sp)
  ADD s3, t4, zero
  ADD s1, s10, zero
  LW t4, 0(sp)
  ADDIW s4, t4, 1
  # implict jump to bb33
bb33:
  LA s10, n
  LW s10, 0(s10)
  SLT s10, s10, s4
  XORI s10, s10, 1
  BNE s10, zero, bb35
  # implict jump to bb34
bb34:
  ADD s6, s3, zero
  JAL zero, bb24
bb35:
  ADD s7, s4, zero
  ADD s8, s3, zero
  ADD s9, s1, zero
  JAL zero, bb27
bb36:
  BLT s11, s5, bb42
  # implict jump to bb37
bb37:
  # implict jump to bb38
bb38:
  LW t4, 0(sp)
  ADD a0, t4, zero
  ADD a1, s0, zero
  CALL maxCliques
  ADD t0, a0, zero
  BLT s11, t0, bb41
  # implict jump to bb39
bb39:
  # implict jump to bb40
bb40:
  ADD s10, t0, zero
  ADD t4, s11, zero
  SW t4, 4(sp)
  JAL zero, bb32
bb41:
  ADD s11, t0, zero
  JAL zero, bb40
bb42:
  ADD s11, s5, zero
  JAL zero, bb38
bb43:
  ADDIW a2, t2, 1
  ADD a3, a2, zero
  # implict jump to bb44
bb44:
  ADD a4, a3, zero
  BLT a4, s0, bb46
  # implict jump to bb45
bb45:
  ADD t1, a2, zero
  JAL zero, bb28
bb46:
  SLLIW t1, t2, 2
  LA a5, store
  ADD t1, a5, t1
  LW t1, 0(t1)
  ADDI a5, zero, 120
  MULW t1, t1, a5
  LA a5, graph
  ADD t1, a5, t1
  SLLIW a5, a4, 2
  LA a6, store
  ADD a5, a6, a5
  LW a5, 0(a5)
  SLLIW a5, a5, 2
  ADD t1, t1, a5
  LW t1, 0(t1)
  SLTIU t1, t1, 1
  BNE t1, zero, bb48
  # implict jump to bb47
bb47:
  ADDIW t1, a4, 1
  ADD a3, t1, zero
  JAL zero, bb44
bb48:
  ADD a0, zero, zero
  JAL zero, bb30
