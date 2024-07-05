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
  ADDI t0, t0, -768
  ADD sp, sp, t0
  LUI t5, 1
  ADDI t5, t5, 704
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t6, 1
  ADDI t6, t6, 712
  ADD t6, t6, sp
  SD s4, 0(t6)
  LUI t5, 1
  ADDI t5, t5, 720
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t6, 1
  ADDI t6, t6, 728
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t5, 1
  ADDI t5, t5, 736
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t6, 1
  ADDI t6, t6, 744
  ADD t6, t6, sp
  SD s5, 0(t6)
  LUI t5, 1
  ADDI t5, t5, 752
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
  JAL zero, bb1
bb1:
  LA s1, m
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s1, zero, 8
  MULW s2, s0, s1
  ADDI t6, sp, 0
  ADD s1, t6, s2
  ADDI s2, zero, 4
  MULW s3, zero, s2
  ADD s2, s1, s3
  CALL getint
  ADD s1, a0, zero
  SW s1, 0(s2)
  ADDI s1, zero, 8
  MULW s2, s0, s1
  ADDI t5, sp, 0
  ADD s1, t5, s2
  ADDI s2, zero, 4
  ADDI s3, zero, 1
  MULW s4, s2, s3
  ADD s2, s1, s4
  CALL getint
  ADD s1, a0, zero
  SW s1, 0(s2)
  ADDIW s1, s0, 1
  ADD s0, s1, zero
  JAL zero, bb1
bb3:
  ADD s0, zero, zero
  JAL zero, bb4
bb4:
  LA s1, m
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s1, zero, 8
  MULW s2, s0, s1
  ADDI t6, sp, 0
  ADD s1, t6, s2
  ADDI s2, zero, 4
  MULW s3, zero, s2
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 120
  MULW s3, s1, s2
  LA s1, graph
  ADD s2, s1, s3
  ADDI s1, zero, 8
  MULW s3, s0, s1
  ADDI t5, sp, 0
  ADD s1, t5, s3
  ADDI s3, zero, 4
  ADDI s4, zero, 1
  MULW s5, s3, s4
  ADD s3, s1, s5
  LW s1, 0(s3)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADD s1, s2, s4
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDI s1, zero, 8
  MULW s2, s0, s1
  ADDI t6, sp, 0
  ADD s1, t6, s2
  ADDI s2, zero, 4
  ADDI s3, zero, 1
  MULW s4, s2, s3
  ADD s2, s1, s4
  LW s1, 0(s2)
  ADDI s2, zero, 120
  MULW s3, s1, s2
  LA s1, graph
  ADD s2, s1, s3
  ADDI s1, zero, 8
  MULW s3, s0, s1
  ADDI t5, sp, 0
  ADD s1, t5, s3
  ADDI s3, zero, 4
  MULW s4, zero, s3
  ADD s3, s1, s4
  LW s1, 0(s3)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADD s1, s2, s4
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDIW s1, s0, 1
  ADD s0, s1, zero
  JAL zero, bb4
bb6:
  ADD a0, zero, zero
  ADDI a1, zero, 1
  CALL maxCliques
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL putint
  ADD a0, zero, zero
  LUI ra, 1
  ADDI ra, ra, 704
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 1
  ADDI t6, t6, 712
  ADD t6, t6, sp
  LD s4, 0(t6)
  LUI t5, 1
  ADDI t5, t5, 720
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t6, 1
  ADDI t6, t6, 728
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t5, 1
  ADDI t5, t5, 736
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t6, 1
  ADDI t6, t6, 744
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t5, 1
  ADDI t5, t5, 752
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t0, 1
  ADDI t0, t0, 768
  ADD sp, sp, t0
  JALR zero, 0(ra)
is_clique:
  ADDI sp, sp, -64
  SD s4, 0(sp)
  SD ra, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 1
  JAL zero, bb8
bb8:
  SLT s2, s1, s0
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb9
  JAL zero, bb10
bb9:
  ADDIW s2, s1, 1
  ADD s3, s2, zero
  JAL zero, bb11
bb10:
  ADDI a0, zero, 1
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb11:
  SLT s2, s3, s0
  XOR s4, s2, zero
  SLTU s2, zero, s4
  BNE s2, zero, bb12
  JAL zero, bb13
bb12:
  ADDI s2, zero, 4
  MULW s4, s1, s2
  LA s2, store
  ADD s5, s2, s4
  LW s2, 0(s5)
  ADDI s4, zero, 120
  MULW s5, s2, s4
  LA s2, graph
  ADD s4, s2, s5
  ADDI s2, zero, 4
  MULW s5, s3, s2
  LA s2, store
  ADD s6, s2, s5
  LW s2, 0(s6)
  ADDI s5, zero, 4
  MULW s6, s2, s5
  ADD s2, s4, s6
  LW s4, 0(s2)
  XOR s2, s4, zero
  SLTIU s4, s2, 1
  BNE s4, zero, bb14
  JAL zero, bb15
bb13:
  ADDIW s2, s1, 1
  ADD s1, s2, zero
  JAL zero, bb8
bb14:
  ADD a0, zero, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb15:
  ADDIW s2, s3, 1
  ADD s3, s2, zero
  JAL zero, bb11
maxCliques:
  ADDI sp, sp, -96
  SD s8, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s7, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD ra, 72(sp)
  SD s9, 80(sp)
  ADD s0, a0, zero
  ADD s0, a1, zero
  ADD s1, zero, zero
  ADDI s2, zero, 1
  ADD s3, zero, zero
  JAL zero, bb17
bb17:
  LA s4, n
  LW s5, 0(s4)
  SLT s4, s5, s2
  XORI s5, s4, 1
  XOR s4, s5, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb18
  JAL zero, bb19
bb18:
  ADDI s4, zero, 4
  MULW s5, s0, s4
  LA s4, store
  ADD s6, s4, s5
  SW s2, 0(s6)
  ADDIW s4, s0, 1
  ADD a0, s4, zero
  CALL is_clique
  ADD s4, a0, zero
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb20
  JAL zero, bb26
bb19:
  ADD a0, s3, zero
  LD s8, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD ra, 72(sp)
  LD s9, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb20:
  SLT s4, s3, s0
  BNE s4, zero, bb22
  JAL zero, bb27
bb21:
  ADDIW s9, s2, 1
  ADD s1, s7, zero
  ADD s2, s9, zero
  ADD s3, s8, zero
  JAL zero, bb17
bb22:
  ADD s4, s0, zero
  JAL zero, bb23
bb23:
  ADDIW s5, s0, 1
  ADD a0, s2, zero
  ADD a1, s5, zero
  CALL maxCliques
  ADD s5, a0, zero
  SLT s6, s4, s5
  BNE s6, zero, bb24
  JAL zero, bb28
bb24:
  ADD s6, s5, zero
  JAL zero, bb25
bb25:
  ADD s7, s5, zero
  ADD s8, s6, zero
  JAL zero, bb21
bb26:
  ADD s7, s1, zero
  ADD s8, s3, zero
  JAL zero, bb21
bb27:
  ADD s4, s3, zero
  JAL zero, bb23
bb28:
  ADD s6, s4, zero
  JAL zero, bb25
