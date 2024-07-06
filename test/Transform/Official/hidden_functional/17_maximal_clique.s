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
  ADD s1, s0, zero
  LA s2, m
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s2, zero, 8
  MULW s3, s1, s2
  ADDI t6, sp, 0
  ADD s2, t6, s3
  ADD s3, s2, zero
  CALL getint
  ADD s2, a0, zero
  SW s2, 0(s3)
  ADDI s2, zero, 8
  MULW s3, s1, s2
  ADDI t5, sp, 0
  ADD s2, t5, s3
  ADDI s3, s2, 4
  CALL getint
  ADD s2, a0, zero
  SW s2, 0(s3)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb1
bb3:
  ADD s0, zero, zero
  JAL zero, bb4
bb4:
  ADD s1, s0, zero
  LA s2, m
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s2, zero, 8
  MULW s3, s1, s2
  ADDI t6, sp, 0
  ADD s2, t6, s3
  ADD s3, s2, zero
  LW s2, 0(s3)
  ADDI s3, zero, 120
  MULW s4, s2, s3
  LA s2, graph
  ADD s3, s2, s4
  ADDI s2, zero, 8
  MULW s4, s1, s2
  ADDI t5, sp, 0
  ADD s2, t5, s4
  ADDI s4, s2, 4
  LW s2, 0(s4)
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s2, s3, s5
  ADDI s3, zero, 1
  SW s3, 0(s2)
  ADDI s2, zero, 8
  MULW s3, s1, s2
  ADDI t6, sp, 0
  ADD s2, t6, s3
  ADDI s3, s2, 4
  LW s2, 0(s3)
  ADDI s3, zero, 120
  MULW s4, s2, s3
  LA s2, graph
  ADD s3, s2, s4
  ADDI s2, zero, 8
  MULW s4, s1, s2
  ADDI t5, sp, 0
  ADD s2, t5, s4
  ADD s4, s2, zero
  LW s2, 0(s4)
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s2, s3, s5
  ADDI s3, zero, 1
  SW s3, 0(s2)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
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
  JAL zero, bb8
bb8:
  ADD s2, s1, zero
  SLT s3, s2, s0
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb9
  JAL zero, bb10
bb9:
  ADDIW s3, s2, 1
  ADD s4, s3, zero
  JAL zero, bb11
bb10:
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
bb11:
  ADD s3, s4, zero
  SLT s5, s3, s0
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb12
  JAL zero, bb13
bb12:
  ADDI s5, zero, 4
  MULW s6, s2, s5
  LA s5, store
  ADD s7, s5, s6
  LW s5, 0(s7)
  ADDI s6, zero, 120
  MULW s7, s5, s6
  LA s5, graph
  ADD s6, s5, s7
  ADDI s5, zero, 4
  MULW s7, s3, s5
  LA s5, store
  ADD s8, s5, s7
  LW s5, 0(s8)
  ADDI s7, zero, 4
  MULW s8, s5, s7
  ADD s5, s6, s8
  LW s6, 0(s5)
  XOR s5, s6, zero
  SLTIU s6, s5, 1
  BNE s6, zero, bb14
  JAL zero, bb15
bb13:
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb8
bb14:
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
bb15:
  ADDIW s5, s3, 1
  ADD s4, s5, zero
  JAL zero, bb11
maxCliques:
  ADDI sp, sp, -112
  SD s10, 0(sp)
  SD s11, 8(sp)
  SD ra, 16(sp)
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
  JAL zero, bb17
bb17:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s6, s1, zero
  LA s7, n
  LW s8, 0(s7)
  SLT s7, s8, s5
  XORI s8, s7, 1
  XOR s7, s8, zero
  SLTU s8, zero, s7
  BNE s8, zero, bb18
  JAL zero, bb19
bb18:
  ADDI s7, zero, 4
  MULW s8, s0, s7
  LA s7, store
  ADD s9, s7, s8
  SW s5, 0(s9)
  ADDIW s7, s0, 1
  ADD a0, s7, zero
  CALL is_clique
  ADD s7, a0, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb20
  JAL zero, bb26
bb19:
  ADD a0, s4, zero
  LD s10, 0(sp)
  LD s11, 8(sp)
  LD ra, 16(sp)
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
bb20:
  SLT s7, s4, s0
  BNE s7, zero, bb22
  JAL zero, bb27
bb21:
  ADD s11, t1, zero
  ADD t2, t0, zero
  ADDIW a1, s5, 1
  ADD s1, t2, zero
  ADD s2, a1, zero
  ADD s3, s11, zero
  JAL zero, bb17
bb22:
  ADD s7, s0, zero
  JAL zero, bb23
bb23:
  ADD s8, s7, zero
  ADDIW s9, s0, 1
  ADD a0, s5, zero
  ADD a1, s9, zero
  CALL maxCliques
  ADD s9, a0, zero
  SLT s10, s8, s9
  BNE s10, zero, bb24
  JAL zero, bb28
bb24:
  ADD s10, s9, zero
  JAL zero, bb25
bb25:
  ADD s11, s10, zero
  ADD t0, s9, zero
  ADD t1, s11, zero
  JAL zero, bb21
bb26:
  ADD t0, s6, zero
  ADD t1, s4, zero
  JAL zero, bb21
bb27:
  ADD s7, s4, zero
  JAL zero, bb23
bb28:
  ADD s10, s8, zero
  JAL zero, bb25
