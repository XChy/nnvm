.global main
.global Dijkstra
.section .bss




book:
.space 64

e:
.space 1024
dis:
.space 64

.section .data
w:
.word 0x00000000
v2:
.word 0x00000000
v1:
.word 0x00000000
m:
.word 0x00000000

n:
.word 0x00000000


INF:
.word 0x0000ffff
.section .text
main:
  ADDI sp, sp, -80
  SD ra, 32(sp)
  SD s3, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  SD s0, 64(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, n
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, m
  SW s0, 0(s1)
  ADDI s0, zero, 1
  SW s0, 24(sp)
  JAL zero, bb1
bb1:
  LW s0, 24(sp)
  LA s1, n
  LW s2, 0(s1)
  SLT s1, s2, s0
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s0, zero, 1
  SW s0, 16(sp)
  JAL zero, bb4
bb3:
  ADDI s0, zero, 1
  SW s0, 24(sp)
  JAL zero, bb10
bb4:
  LW s0, 16(sp)
  LA s1, n
  LW s2, 0(s1)
  SLT s1, s2, s0
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb5
  JAL zero, bb6
bb5:
  LW s0, 24(sp)
  LW s1, 16(sp)
  XOR s2, s0, s1
  SLTIU s0, s2, 1
  BNE s0, zero, bb7
  JAL zero, bb9
bb6:
  LW s0, 24(sp)
  ADDIW s1, s0, 1
  SW s1, 24(sp)
  JAL zero, bb1
bb7:
  LW s0, 24(sp)
  ADDI s1, zero, 64
  MULW s2, s0, s1
  LA s0, e
  ADD s1, s0, s2
  LW s0, 16(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  ADDI s1, zero, 0
  SW s1, 0(s0)
  JAL zero, bb8
bb8:
  LW s0, 16(sp)
  ADDIW s1, s0, 1
  SW s1, 16(sp)
  JAL zero, bb4
bb9:
  LW s0, 24(sp)
  ADDI s1, zero, 64
  MULW s2, s0, s1
  LA s0, e
  ADD s1, s0, s2
  LW s0, 16(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LA s1, INF
  LW s2, 0(s1)
  SW s2, 0(s0)
  JAL zero, bb8
bb10:
  LW s0, 24(sp)
  LA s1, m
  LW s2, 0(s1)
  SLT s1, s2, s0
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb11
  JAL zero, bb12
bb11:
  CALL getint
  ADD s0, a0, zero
  SW s0, 8(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(sp)
  LW s1, 8(sp)
  ADDI s2, zero, 64
  MULW s3, s1, s2
  LA s1, e
  ADD s2, s1, s3
  ADDI s1, zero, 4
  MULW s3, s0, s1
  ADD s0, s2, s3
  CALL getint
  ADD s1, a0, zero
  SW s1, 0(s0)
  LW s0, 24(sp)
  ADDIW s1, s0, 1
  SW s1, 24(sp)
  JAL zero, bb10
bb12:
  CALL Dijkstra
  ADDI s0, zero, 1
  SW s0, 24(sp)
  JAL zero, bb13
bb13:
  LW s0, 24(sp)
  LA s1, n
  LW s2, 0(s1)
  SLT s1, s2, s0
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb14
  JAL zero, bb15
bb14:
  LW s0, 24(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, dis
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW s0, 24(sp)
  ADDIW s1, s0, 1
  SW s1, 24(sp)
  JAL zero, bb13
bb15:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
Dijkstra:
  ADDI sp, sp, -112
  SD ra, 48(sp)
  SD s4, 56(sp)
  SD s3, 64(sp)
  SD s2, 72(sp)
  SD s1, 80(sp)
  SD s5, 88(sp)
  SD s0, 96(sp)
  ADDI s0, zero, 1
  SW s0, 40(sp)
  JAL zero, bb17
bb17:
  LW s0, 40(sp)
  LA s1, n
  LW s2, 0(s1)
  SLT s1, s2, s0
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb18
  JAL zero, bb19
bb18:
  LW s0, 40(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, dis
  ADD s1, s0, s2
  ADDI s0, zero, 64
  ADDI s2, zero, 1
  MULW s3, s0, s2
  LA s0, e
  ADD s2, s0, s3
  LW s0, 40(sp)
  ADDI s3, zero, 4
  MULW s4, s0, s3
  ADD s0, s2, s4
  LW s2, 0(s0)
  SW s2, 0(s1)
  LW s0, 40(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, book
  ADD s1, s0, s2
  SW zero, 0(s1)
  LW s0, 40(sp)
  ADDIW s1, s0, 1
  SW s1, 40(sp)
  JAL zero, bb17
bb19:
  ADDI s0, zero, 4
  ADDI s1, zero, 1
  MULW s2, s0, s1
  LA s0, book
  ADD s1, s0, s2
  ADDI s0, zero, 1
  SW s0, 0(s1)
  ADDI s0, zero, 1
  SW s0, 40(sp)
  JAL zero, bb20
bb20:
  LW s0, 40(sp)
  LA s1, n
  LW s2, 0(s1)
  ADDI s1, zero, 1
  SUBW s3, s2, s1
  SLT s1, s3, s0
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb21
  JAL zero, bb22
bb21:
  LA s0, INF
  LW s1, 0(s0)
  SW s1, 32(sp)
  SW zero, 24(sp)
  ADDI s0, zero, 1
  SW s0, 16(sp)
  JAL zero, bb23
bb22:
  LD ra, 48(sp)
  LD s4, 56(sp)
  LD s3, 64(sp)
  LD s2, 72(sp)
  LD s1, 80(sp)
  LD s5, 88(sp)
  LD s0, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb23:
  LW s0, 16(sp)
  LA s1, n
  LW s2, 0(s1)
  SLT s1, s2, s0
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb24
  JAL zero, bb25
bb24:
  LW s0, 32(sp)
  LW s1, 16(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, dis
  ADD s2, s1, s3
  LW s1, 0(s2)
  SLT s2, s1, s0
  BNE s2, zero, bb26
  JAL zero, bb27
bb25:
  LW s0, 24(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, book
  ADD s1, s0, s2
  ADDI s0, zero, 1
  SW s0, 0(s1)
  ADDI s0, zero, 1
  SW s0, 0(sp)
  JAL zero, bb31
bb26:
  LW s0, 16(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, book
  ADD s1, s0, s2
  LW s0, 0(s1)
  XOR s1, s0, zero
  SLTIU s0, s1, 1
  SB s0, 8(sp)
  JAL zero, bb28
bb27:
  SB zero, 8(sp)
  JAL zero, bb28
bb28:
  LB s0, 8(sp)
  BNE s0, zero, bb29
  JAL zero, bb30
bb29:
  LW s0, 16(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, dis
  ADD s1, s0, s2
  LW s0, 0(s1)
  SW s0, 32(sp)
  LW s0, 16(sp)
  SW s0, 24(sp)
  JAL zero, bb30
bb30:
  LW s0, 16(sp)
  ADDIW s1, s0, 1
  SW s1, 16(sp)
  JAL zero, bb23
bb31:
  LW s0, 0(sp)
  LA s1, n
  LW s2, 0(s1)
  SLT s1, s2, s0
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb32
  JAL zero, bb33
bb32:
  LW s0, 24(sp)
  ADDI s1, zero, 64
  MULW s2, s0, s1
  LA s0, e
  ADD s1, s0, s2
  LW s0, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 0(s0)
  LA s0, INF
  LW s2, 0(s0)
  SLT s0, s1, s2
  BNE s0, zero, bb34
  JAL zero, bb35
bb33:
  LW s0, 40(sp)
  ADDIW s1, s0, 1
  SW s1, 40(sp)
  JAL zero, bb20
bb34:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, dis
  ADD s1, s0, s2
  LW s0, 0(s1)
  LW s1, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, dis
  ADD s2, s1, s3
  LW s1, 0(s2)
  LW s2, 24(sp)
  ADDI s3, zero, 64
  MULW s4, s2, s3
  LA s2, e
  ADD s3, s2, s4
  LW s2, 0(sp)
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s2, s3, s5
  LW s3, 0(s2)
  ADDW s2, s1, s3
  SLT s1, s2, s0
  BNE s1, zero, bb36
  JAL zero, bb37
bb35:
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb31
bb36:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, dis
  ADD s1, s0, s2
  LW s0, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, dis
  ADD s2, s0, s3
  LW s0, 0(s2)
  LW s2, 24(sp)
  ADDI s3, zero, 64
  MULW s4, s2, s3
  LA s2, e
  ADD s3, s2, s4
  LW s2, 0(sp)
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s2, s3, s5
  LW s3, 0(s2)
  ADDW s2, s0, s3
  SW s2, 0(s1)
  JAL zero, bb37
bb37:
  JAL zero, bb35
