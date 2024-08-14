.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
  ADDIW t0, t0, -736
  ADD sp, sp, t0
  LUI t6, 1
  ADDIW t6, t6, 704
  ADD t6, t6, sp
  SD ra, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 712
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 720
  ADD t6, t6, sp
  SD s1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 728
  ADD t6, t6, sp
  SD s2, 0(t6)
  LA s0, n
  CALL getint
  LA s1, m
  SW a0, 0(s0)
  ADDI s0, zero, 0
  CALL getint
  SW a0, 0(s1)
  BLT s0, a0, bb6
  # implict jump to bb1
bb1:   # loop depth 0
  LA t0, m
  LW t0, 0(t0)
  BLT zero, t0, bb3
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI a1, zero, 1
  ADD a0, zero, zero
  CALL maxCliques
  CALL putint
  ADD a0, zero, zero
  LUI ra, 1
  ADDIW ra, ra, 704
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 1
  ADDIW t6, t6, 712
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 720
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t6, 1
  ADDIW t6, t6, 728
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t0, 1
  ADDIW t0, t0, 736
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb3:   # loop depth 0
  LA t1, m
  ADD t0, zero, zero
  LW t1, 0(t1)
  # implict jump to bb4
bb4:   # loop depth 1
  ADDI a2, zero, 120
  SLLIW t2, t0, 3
  ADDI a5, zero, 120
  ADDI a3, sp, 0
  ADD t2, a3, t2
  LA a3, graph
  LW a0, 0(t2)
  LA a6, graph
  ADDI a4, zero, 1
  ADDI a7, zero, 1
  ADDIW t0, t0, 1
  LW a1, 4(t2)
  MULW t2, a0, a2
  MULW a2, a1, a5
  ADD t2, a3, t2
  SH2ADD t2, a1, t2
  SW a4, 0(t2)
  ADD t2, a6, a2
  SH2ADD t2, a0, t2
  SW a7, 0(t2)
  BLT t0, t1, bb5
  JAL zero, bb2
bb5:   # loop depth 1
  JAL zero, bb4
bb6:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb7
bb7:   # loop depth 1
  CALL getint
  SLLIW t0, s0, 3
  ADDI t6, sp, 0
  ADD s1, t6, t0
  LA s2, m
  SW a0, 0(s1)
  ADDIW s0, s0, 1
  CALL getint
  SW a0, 4(s1)
  LW t0, 0(s2)
  BLT s0, t0, bb8
  JAL zero, bb1
bb8:   # loop depth 1
  JAL zero, bb7
maxCliques:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  LA t0, n
  ADD s3, a1, zero
  LW t0, 0(t0)
  SLTI t0, t0, 1
  BEQ t0, zero, bb12
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
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb12:   # loop depth 0
  LA t0, store
  ADD a0, zero, zero
  ADDI s1, zero, 1
  ADD a2, zero, zero
  ADDIW s0, s3, 1
  SH2ADD s4, s3, t0
  # implict jump to bb13
bb13:   # loop depth 1
  ADDI t1, zero, 1
  SW s1, 0(s4)
  # implict jump to bb14
bb14:   # loop depth 2
  BLT t1, s0, bb22
  # implict jump to bb15
bb15:   # loop depth 1
  ADDI t0, zero, 1
  # implict jump to bb16
bb16:   # loop depth 1
  BNE t0, zero, bb21
  # implict jump to bb17
bb17:   # loop depth 1
  # implict jump to bb18
bb18:   # loop depth 1
  LA t0, n
  ADDIW s1, s1, 1
  LW t0, 0(t0)
  BGE t0, s1, bb20
  # implict jump to bb19
bb19:   # loop depth 0
  ADD a0, a2, zero
  JAL zero, bb11
bb20:   # loop depth 1
  JAL zero, bb13
bb21:   # loop depth 1
  ADD a1, s0, zero
  ADD a0, s1, zero
  MAX s2, s3, a2
  CALL maxCliques
  MAX a2, a0, s2
  JAL zero, bb18
bb22:   # loop depth 2
  LA a1, store
  ADDIW t2, t1, 1
  ADD t0, t2, zero
  SH2ADD t1, t1, a1
  # implict jump to bb23
bb23:   # loop depth 3
  BLT t0, s0, bb25
  # implict jump to bb24
bb24:   # loop depth 2
  ADD t1, t2, zero
  JAL zero, bb14
bb25:   # loop depth 3
  LW a1, 0(t1)
  LA a3, store
  ADDI a4, zero, 120
  LA a5, graph
  SH2ADD a3, t0, a3
  MULW a1, a1, a4
  LW a3, 0(a3)
  ADD a1, a5, a1
  SH2ADD a1, a3, a1
  LW a1, 0(a1)
  BEQ a1, zero, bb27
  # implict jump to bb26
bb26:   # loop depth 3
  ADDIW t0, t0, 1
  JAL zero, bb23
bb27:   # loop depth 1
  ADD t0, zero, zero
  JAL zero, bb16
