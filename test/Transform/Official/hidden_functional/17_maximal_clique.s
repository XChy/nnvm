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
  LUI t5, 1
  ADDIW t5, t5, 704
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 712
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 720
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 728
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 736
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 744
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 752
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 760
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 768
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 776
  ADD t5, t5, sp
  SD s0, 0(t5)
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
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb6
  # implict jump to bb2
bb2:
  ADD s2, zero, zero
  # implict jump to bb3
bb3:
  ADD s3, s2, zero
  LA s4, m
  LW s5, 0(s4)
  SLT s4, s3, s5
  BNE s4, zero, bb5
  # implict jump to bb4
bb4:
  ADD a0, zero, zero
  ADDI a1, zero, 1
  CALL maxCliques
  ADD s4, a0, zero
  ADD a0, s4, zero
  CALL putint
  ADD a0, zero, zero
  LUI ra, 1
  ADDIW ra, ra, 704
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 1
  ADDIW t5, t5, 712
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 720
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 728
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 736
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 744
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 752
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 760
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 768
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 776
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, 784
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb5:
  SLLIW s4, s3, 3
  ADDI t5, sp, 0
  ADD s5, t5, s4
  LW s4, 0(s5)
  ADDI s6, zero, 120
  MULW s7, s4, s6
  LA s4, graph
  ADD s6, s4, s7
  ADDI s4, s5, 4
  LW s7, 0(s4)
  SLLIW s8, s7, 2
  ADD s7, s6, s8
  ADDI s6, zero, 1
  SW s6, 0(s7)
  LW s6, 0(s4)
  ADDI s4, zero, 120
  MULW s7, s6, s4
  LA s4, graph
  ADD s6, s4, s7
  LW s4, 0(s5)
  SLLIW s5, s4, 2
  ADD s4, s6, s5
  ADDI s5, zero, 1
  SW s5, 0(s4)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb3
bb6:
  SLLIW s2, s1, 3
  ADDI t5, sp, 0
  ADD s3, t5, s2
  CALL getint
  ADD s2, a0, zero
  SW s2, 0(s3)
  ADDI s2, s3, 4
  CALL getint
  ADD s3, a0, zero
  SW s3, 0(s2)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb1
is_clique:
  ADDI sp, sp, -80
  SD s8, 0(sp)
  SD ra, 8(sp)
  SD s4, 16(sp)
  SD s3, 24(sp)
  SD s2, 32(sp)
  SD s6, 40(sp)
  SD s1, 48(sp)
  SD s7, 56(sp)
  SD s5, 64(sp)
  SD s0, 72(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 1
  # implict jump to bb8
bb8:
  ADD s2, s1, zero
  SLT s3, s2, s0
  BNE s3, zero, bb10
  # implict jump to bb9
bb9:
  ADDI a0, zero, 1
  LD s8, 0(sp)
  LD ra, 8(sp)
  LD s4, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD s6, 40(sp)
  LD s1, 48(sp)
  LD s7, 56(sp)
  LD s5, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb10:
  ADDIW s3, s2, 1
  ADD s4, s3, zero
  # implict jump to bb11
bb11:
  ADD s5, s4, zero
  SLT s6, s5, s0
  BNE s6, zero, bb13
  # implict jump to bb12
bb12:
  ADD s1, s3, zero
  JAL zero, bb8
bb13:
  SLLIW s1, s2, 2
  LA s6, store
  ADD s7, s6, s1
  LW s1, 0(s7)
  ADDI s6, zero, 120
  MULW s7, s1, s6
  LA s1, graph
  ADD s6, s1, s7
  SLLIW s1, s5, 2
  LA s7, store
  ADD s8, s7, s1
  LW s1, 0(s8)
  SLLIW s7, s1, 2
  ADD s1, s6, s7
  LW s6, 0(s1)
  XOR s1, s6, zero
  SLTIU s6, s1, 1
  BNE s6, zero, bb15
  # implict jump to bb14
bb14:
  ADDIW s1, s5, 1
  ADD s4, s1, zero
  JAL zero, bb11
bb15:
  ADD a0, zero, zero
  LD s8, 0(sp)
  LD ra, 8(sp)
  LD s4, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD s6, 40(sp)
  LD s1, 48(sp)
  LD s7, 56(sp)
  LD s5, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
maxCliques:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD ra, 8(sp)
  SD s10, 16(sp)
  SD s0, 24(sp)
  SD s5, 32(sp)
  SD s7, 40(sp)
  SD s8, 48(sp)
  SD s1, 56(sp)
  SD s6, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD s9, 96(sp)
  ADD s0, a0, zero
  ADD s0, a1, zero
  ADD s1, zero, zero
  ADDI s2, zero, 1
  ADD s3, zero, zero
  # implict jump to bb17
bb17:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s6, s1, zero
  LA s7, n
  LW s8, 0(s7)
  SLT s7, s8, s5
  XORI s8, s7, 1
  BNE s8, zero, bb19
  # implict jump to bb18
bb18:
  ADD a0, s4, zero
  LD s11, 0(sp)
  LD ra, 8(sp)
  LD s10, 16(sp)
  LD s0, 24(sp)
  LD s5, 32(sp)
  LD s7, 40(sp)
  LD s8, 48(sp)
  LD s1, 56(sp)
  LD s6, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s9, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb19:
  SLLIW s7, s0, 2
  LA s8, store
  ADD s9, s8, s7
  SW s5, 0(s9)
  ADDIW s7, s0, 1
  ADDI s8, zero, 1
  # implict jump to bb20
bb20:
  ADD s9, s8, zero
  SLT s10, s9, s7
  BNE s10, zero, bb32
  # implict jump to bb21
bb21:
  ADDI s10, zero, 1
  # implict jump to bb22
bb22:
  ADD s8, s10, zero
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb25
  # implict jump to bb23
bb23:
  ADD s8, s6, zero
  ADD s6, s4, zero
  # implict jump to bb24
bb24:
  ADD s4, s6, zero
  ADD s6, s8, zero
  ADDIW s7, s5, 1
  ADD s1, s6, zero
  ADD s2, s7, zero
  ADD s3, s4, zero
  JAL zero, bb17
bb25:
  SLT s9, s4, s0
  BNE s9, zero, bb31
  # implict jump to bb26
bb26:
  ADD s9, s4, zero
  # implict jump to bb27
bb27:
  ADD s4, s9, zero
  ADD a0, s5, zero
  ADD a1, s7, zero
  CALL maxCliques
  ADD s7, a0, zero
  SLT s9, s4, s7
  BNE s9, zero, bb30
  # implict jump to bb28
bb28:
  ADD s9, s4, zero
  # implict jump to bb29
bb29:
  ADD s4, s9, zero
  ADD s8, s7, zero
  ADD s6, s4, zero
  JAL zero, bb24
bb30:
  ADD s9, s7, zero
  JAL zero, bb29
bb31:
  ADD s9, s0, zero
  JAL zero, bb27
bb32:
  ADDIW s11, s9, 1
  ADD t0, s11, zero
  # implict jump to bb33
bb33:
  ADD t1, t0, zero
  SLT t2, t1, s7
  BNE t2, zero, bb35
  # implict jump to bb34
bb34:
  ADD s8, s11, zero
  JAL zero, bb20
bb35:
  SLLIW s8, s9, 2
  LA t2, store
  ADD a2, t2, s8
  LW s8, 0(a2)
  ADDI t2, zero, 120
  MULW a2, s8, t2
  LA s8, graph
  ADD t2, s8, a2
  SLLIW s8, t1, 2
  LA a2, store
  ADD a3, a2, s8
  LW s8, 0(a3)
  SLLIW a2, s8, 2
  ADD s8, t2, a2
  LW t2, 0(s8)
  XOR s8, t2, zero
  SLTIU t2, s8, 1
  BNE t2, zero, bb37
  # implict jump to bb36
bb36:
  ADDIW s8, t1, 1
  ADD t0, s8, zero
  JAL zero, bb33
bb37:
  ADD s10, zero, zero
  JAL zero, bb22
