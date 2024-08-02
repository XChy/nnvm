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
  ADDIW t0, t0, -736
  ADD sp, sp, t0
  LUI t5, 1
  ADDIW t5, t5, 704
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 712
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 720
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 728
  ADD t5, t5, sp
  SD s2, 0(t5)
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
  LA a0, m
  LW a0, 0(a0)
  BLT zero, a0, bb3
  # implict jump to bb2
bb2:
  ADD a0, zero, zero
  ADDI a1, zero, 1
  CALL maxCliques
  CALL putint
  ADD a0, zero, zero
  LUI ra, 1
  ADDIW ra, ra, 704
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 1
  ADDIW t5, t5, 712
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 720
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 728
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, 736
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb3:
  ADD a0, zero, zero
  # implict jump to bb4
bb4:
  SLLIW a1, a0, 3
  ADDI t5, sp, 0
  ADD a1, t5, a1
  LW s0, 0(a1)
  ADDI s1, zero, 120
  MULW s1, s0, s1
  LA s2, graph
  ADD s1, s2, s1
  LW a1, 4(a1)
  SLLIW s2, a1, 2
  ADD s1, s1, s2
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDI s1, zero, 120
  MULW a1, a1, s1
  LA s1, graph
  ADD a1, s1, a1
  SLLIW s0, s0, 2
  ADD a1, a1, s0
  ADDI s0, zero, 1
  SW s0, 0(a1)
  ADDIW a0, a0, 1
  LA a1, m
  LW a1, 0(a1)
  BLT a0, a1, bb5
  JAL zero, bb2
bb5:
  JAL zero, bb4
bb6:
  ADD s0, zero, zero
  # implict jump to bb7
bb7:
  SLLIW s1, s0, 3
  ADDI t5, sp, 0
  ADD s1, t5, s1
  CALL getint
  ADD s2, a0, zero
  SW s2, 0(s1)
  CALL getint
  ADD s2, a0, zero
  SW s2, 4(s1)
  ADDIW s0, s0, 1
  LA s1, m
  LW s1, 0(s1)
  BLT s0, s1, bb8
  JAL zero, bb1
bb8:
  JAL zero, bb7
maxCliques:
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
  ADD s4, a1, zero
  LA a0, n
  LW a0, 0(a0)
  SLTI a0, a0, 1
  XORI a0, a0, 1
  BNE a0, zero, bb12
  # implict jump to bb10
bb10:
  ADD t0, zero, zero
  # implict jump to bb11
bb11:
  ADD a0, t0, zero
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
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb12:
  SLLIW a0, s4, 2
  LA a1, store
  ADD s0, a1, a0
  ADDIW s1, s4, 1
  ADD s3, zero, zero
  ADDI s2, zero, 1
  ADD a0, zero, zero
  # implict jump to bb13
bb13:
  ADD a1, a0, zero
  ADD a0, s3, zero
  SW s2, 0(s0)
  ADDI s3, zero, 1
  # implict jump to bb14
bb14:
  BLT s3, s1, bb28
  # implict jump to bb15
bb15:
  ADDI s3, zero, 1
  # implict jump to bb16
bb16:
  BNE s3, zero, bb21
  # implict jump to bb17
bb17:
  ADD s3, a1, zero
  # implict jump to bb18
bb18:
  ADD a1, a0, zero
  ADD a0, s3, zero
  ADDIW s2, s2, 1
  LA s3, n
  LW s3, 0(s3)
  SLT s3, s3, s2
  XORI s3, s3, 1
  BNE s3, zero, bb20
  # implict jump to bb19
bb19:
  ADD t0, a1, zero
  JAL zero, bb11
bb20:
  ADD s3, a1, zero
  JAL zero, bb13
bb21:
  BLT a0, s4, bb27
  # implict jump to bb22
bb22:
  # implict jump to bb23
bb23:
  ADD s3, a0, zero
  ADD a0, s2, zero
  ADD a1, s1, zero
  CALL maxCliques
  BLT s3, a0, bb26
  # implict jump to bb24
bb24:
  ADD a1, s3, zero
  # implict jump to bb25
bb25:
  ADD s3, a0, zero
  ADD a0, a1, zero
  JAL zero, bb18
bb26:
  ADD a1, a0, zero
  JAL zero, bb25
bb27:
  ADD a0, s4, zero
  JAL zero, bb23
bb28:
  ADDIW s5, s3, 1
  ADD s6, s5, zero
  # implict jump to bb29
bb29:
  BLT s6, s1, bb31
  # implict jump to bb30
bb30:
  ADD s3, s5, zero
  JAL zero, bb14
bb31:
  SLLIW s7, s3, 2
  LA s8, store
  ADD s7, s8, s7
  LW s7, 0(s7)
  ADDI s8, zero, 120
  MULW s7, s7, s8
  LA s8, graph
  ADD s7, s8, s7
  SLLIW s8, s6, 2
  LA s9, store
  ADD s8, s9, s8
  LW s8, 0(s8)
  SLLIW s8, s8, 2
  ADD s7, s7, s8
  LW s7, 0(s7)
  SLTIU s7, s7, 1
  BNE s7, zero, bb33
  # implict jump to bb32
bb32:
  ADDIW s6, s6, 1
  JAL zero, bb29
bb33:
  ADD s3, zero, zero
  JAL zero, bb16
