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
  ADD s1, a0, zero
  LA s0, n
  SW s1, 0(s0)
  CALL getint
  ADD s1, a0, zero
  LA s0, m
  SW s1, 0(s0)
  LA s0, m
  LW s1, 0(s0)
  ADDI s0, zero, 0
  BLT s0, s1, bb6
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
  ADD s1, a0, zero
  SLLIW a0, s1, 3
  ADDI a1, sp, 0
  ADD a1, a1, a0
  LW s2, 0(a1)
  ADDI a0, zero, 120
  MULW s0, s2, a0
  LA a0, graph
  ADD a0, a0, s0
  LW s0, 4(a1)
  SLLIW a1, s0, 2
  ADD a1, a0, a1
  ADDI a0, zero, 1
  SW a0, 0(a1)
  ADDI a0, zero, 120
  MULW a1, s0, a0
  LA a0, graph
  ADD a1, a0, a1
  SLLIW a0, s2, 2
  ADD a1, a1, a0
  ADDI a0, zero, 1
  SW a0, 0(a1)
  ADDIW a1, s1, 1
  LA a0, m
  LW a0, 0(a0)
  BLT a1, a0, bb5
  JAL zero, bb2
bb5:
  ADD a0, a1, zero
  JAL zero, bb4
bb6:
  ADD s0, zero, zero
  # implict jump to bb7
bb7:
  ADD s1, s0, zero
  SLLIW s0, s1, 3
  ADDI t5, sp, 0
  ADD s2, t5, s0
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(s2)
  CALL getint
  ADD s0, a0, zero
  SW s0, 4(s2)
  ADDIW s1, s1, 1
  LA s0, m
  LW s0, 0(s0)
  BLT s1, s0, bb8
  JAL zero, bb1
bb8:
  ADD s0, s1, zero
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
  ADD s0, a1, zero
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
  SLLIW a1, s0, 2
  LA a0, store
  ADD s2, a0, a1
  ADDIW s1, s0, 1
  ADD s4, zero, zero
  ADDI a1, zero, 1
  ADD a0, zero, zero
  # implict jump to bb13
bb13:
  ADD s5, a0, zero
  ADD s3, a1, zero
  ADD a1, s4, zero
  SW s3, 0(s2)
  ADDI a0, zero, 1
  # implict jump to bb14
bb14:
  ADD s6, a0, zero
  BLT s6, s1, bb28
  # implict jump to bb15
bb15:
  ADDI a0, zero, 1
  # implict jump to bb16
bb16:
  BNE a0, zero, bb21
  # implict jump to bb17
bb17:
  ADD a0, s5, zero
  # implict jump to bb18
bb18:
  ADD s4, a1, zero
  ADD s5, a0, zero
  ADDIW a1, s3, 1
  LA a0, n
  LW a0, 0(a0)
  SLT a0, a0, a1
  XORI a0, a0, 1
  BNE a0, zero, bb20
  # implict jump to bb19
bb19:
  ADD t0, s4, zero
  JAL zero, bb11
bb20:
  ADD a0, s5, zero
  JAL zero, bb13
bb21:
  BLT a1, s0, bb27
  # implict jump to bb22
bb22:
  ADD a0, a1, zero
  # implict jump to bb23
bb23:
  ADD s5, a0, zero
  ADD a0, s3, zero
  ADD a1, s1, zero
  CALL maxCliques
  ADD s4, a0, zero
  BLT s5, s4, bb26
  # implict jump to bb24
bb24:
  ADD a0, s5, zero
  # implict jump to bb25
bb25:
  ADD a1, a0, zero
  ADD a0, s4, zero
  JAL zero, bb18
bb26:
  ADD a0, s4, zero
  JAL zero, bb25
bb27:
  ADD a0, s0, zero
  JAL zero, bb23
bb28:
  ADDIW s4, s6, 1
  ADD a0, s4, zero
  # implict jump to bb29
bb29:
  ADD s7, a0, zero
  BLT s7, s1, bb31
  # implict jump to bb30
bb30:
  ADD a0, s4, zero
  JAL zero, bb14
bb31:
  SLLIW s8, s6, 2
  LA a0, store
  ADD a0, a0, s8
  LW s8, 0(a0)
  ADDI a0, zero, 120
  MULW s8, s8, a0
  LA a0, graph
  ADD s8, a0, s8
  SLLIW s9, s7, 2
  LA a0, store
  ADD a0, a0, s9
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s8, a0
  LW a0, 0(a0)
  SLTIU a0, a0, 1
  BNE a0, zero, bb33
  # implict jump to bb32
bb32:
  ADDIW a0, s7, 1
  JAL zero, bb29
bb33:
  ADD a0, zero, zero
  JAL zero, bb16
