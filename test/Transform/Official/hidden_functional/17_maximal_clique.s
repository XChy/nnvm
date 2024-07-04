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
  ADDI t5, t5, 712
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t6, 1
  ADDI t6, t6, 720
  ADD t6, t6, sp
  SD s4, 0(t6)
  LUI t5, 1
  ADDI t5, t5, 728
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t6, 1
  ADDI t6, t6, 736
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t5, 1
  ADDI t5, t5, 744
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t6, 1
  ADDI t6, t6, 752
  ADD t6, t6, sp
  SD s0, 0(t6)
  CALL getint
  ADD s0, a0, zero
  LA s1, n
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, m
  SW s0, 0(s1)
  ADDI s0, zero, 0
  SW s0, 0(sp)
  JAL zero, bb1
bb1:
  LW s0, 0(sp)
  LA s1, m
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  LW s0, 0(sp)
  ADDI s1, zero, 8
  MULW s2, s0, s1
  ADDI t5, sp, 8
  ADD s0, t5, s2
  ADDI s1, zero, 4
  MULW s2, s1, zero
  ADD s1, s0, s2
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(s1)
  LW s0, 0(sp)
  ADDI s1, zero, 8
  MULW s2, s0, s1
  ADDI t6, sp, 8
  ADD s0, t6, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADD s1, s0, s3
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(s1)
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb1
bb3:
  SW zero, 0(sp)
  JAL zero, bb4
bb4:
  LW s0, 0(sp)
  LA s1, m
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb5
  JAL zero, bb6
bb5:
  LW s0, 0(sp)
  ADDI s1, zero, 8
  MULW s2, s0, s1
  ADDI t5, sp, 8
  ADD s0, t5, s2
  ADDI s1, zero, 4
  MULW s2, zero, s1
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADDI s1, zero, 120
  MULW s2, s0, s1
  LA s0, graph
  ADD s1, s0, s2
  LW s0, 0(sp)
  ADDI s2, zero, 8
  MULW s3, s0, s2
  ADDI t6, sp, 8
  ADD s0, t6, s3
  ADDI s2, zero, 4
  ADDI s3, zero, 1
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s0, 0(s2)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  ADDI s1, zero, 1
  SW s1, 0(s0)
  LW s0, 0(sp)
  ADDI s1, zero, 8
  MULW s2, s0, s1
  ADDI t5, sp, 8
  ADD s0, t5, s2
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s0, 0(s1)
  ADDI s1, zero, 120
  MULW s2, s0, s1
  LA s0, graph
  ADD s1, s0, s2
  LW s0, 0(sp)
  ADDI s2, zero, 8
  MULW s3, s0, s2
  ADDI t6, sp, 8
  ADD s0, t6, s3
  ADDI s2, zero, 4
  MULW s3, zero, s2
  ADD s2, s0, s3
  LW s0, 0(s2)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  ADDI s1, zero, 1
  SW s1, 0(s0)
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
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
  ADDI ra, ra, 712
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 1
  ADDI t5, t5, 720
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t6, 1
  ADDI t6, t6, 728
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t5, 1
  ADDI t5, t5, 736
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t6, 1
  ADDI t6, t6, 744
  ADD t6, t6, sp
  LD s1, 0(t6)
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
  SD s3, 24(sp)
  SD ra, 32(sp)
  SD s2, 40(sp)
  SD s1, 48(sp)
  SD s0, 56(sp)
  ADD s0, a0, zero
  SW s0, 16(sp)
  ADDI s0, zero, 1
  SW s0, 8(sp)
  JAL zero, bb8
bb8:
  LW s0, 8(sp)
  LW s1, 16(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb9
  JAL zero, bb10
bb9:
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb11
bb10:
  ADDI a0, zero, 1
  LD s3, 24(sp)
  LD ra, 32(sp)
  LD s2, 40(sp)
  LD s1, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb11:
  LW s0, 0(sp)
  LW s1, 16(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb12
  JAL zero, bb13
bb12:
  LW s0, 8(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, store
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADDI s1, zero, 120
  MULW s2, s0, s1
  LA s0, graph
  ADD s1, s0, s2
  LW s0, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, store
  ADD s2, s0, s3
  LW s0, 0(s2)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 0(s0)
  XOR s0, s1, zero
  SLTIU s1, s0, 1
  BNE s1, zero, bb14
  JAL zero, bb15
bb13:
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb8
bb14:
  ADD a0, zero, zero
  LD s3, 24(sp)
  LD ra, 32(sp)
  LD s2, 40(sp)
  LD s1, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb15:
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb11
maxCliques:
  ADDI sp, sp, -80
  SD ra, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  SD s0, 64(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 32(sp)
  SW s1, 24(sp)
  SW zero, 16(sp)
  ADDI s0, zero, 1
  SW s0, 8(sp)
  ADDI s0, zero, 1
  SW s0, 32(sp)
  JAL zero, bb17
bb17:
  LW s0, 8(sp)
  LA s1, n
  LW s2, 0(s1)
  SLT s1, s2, s0
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb18
  JAL zero, bb19
bb18:
  LW s0, 24(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, store
  ADD s1, s0, s2
  LW s0, 8(sp)
  SW s0, 0(s1)
  LW s0, 24(sp)
  ADDIW s1, s0, 1
  ADD a0, s1, zero
  CALL is_clique
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb20
  JAL zero, bb21
bb19:
  LW s0, 16(sp)
  ADD a0, s0, zero
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb20:
  LW s0, 24(sp)
  LW s1, 16(sp)
  SLT s2, s1, s0
  BNE s2, zero, bb22
  JAL zero, bb23
bb21:
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb17
bb22:
  LW s0, 24(sp)
  SW s0, 16(sp)
  JAL zero, bb23
bb23:
  LW s0, 8(sp)
  LW s1, 24(sp)
  ADDIW s2, s1, 1
  ADD a0, s0, zero
  ADD a1, s2, zero
  CALL maxCliques
  ADD s0, a0, zero
  SW s0, 0(sp)
  LW s1, 16(sp)
  SLT s2, s1, s0
  BNE s2, zero, bb24
  JAL zero, bb25
bb24:
  LW s0, 0(sp)
  SW s0, 16(sp)
  JAL zero, bb25
bb25:
  JAL zero, bb21
