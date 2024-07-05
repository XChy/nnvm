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
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, n
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, m
  SW s0, 0(s1)
  ADDI s0, zero, 1
  JAL zero, bb1
bb1:
  LA s1, n
  LW s2, 0(s1)
  SLT s1, s2, s0
  XORI s2, s1, 1
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s1, zero, 1
  JAL zero, bb4
bb3:
  ADDI s0, zero, 1
  JAL zero, bb10
bb4:
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb5
  JAL zero, bb6
bb5:
  XOR s2, s0, s1
  SLTIU s3, s2, 1
  BNE s3, zero, bb7
  JAL zero, bb9
bb6:
  ADDIW s1, s0, 1
  ADD s0, s1, zero
  JAL zero, bb1
bb7:
  ADDI s2, zero, 64
  MULW s3, s0, s2
  LA s2, e
  ADD s4, s2, s3
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s2, s4, s3
  ADDI s3, zero, 0
  SW s3, 0(s2)
  JAL zero, bb8
bb8:
  ADDIW s2, s1, 1
  ADD s1, s2, zero
  JAL zero, bb4
bb9:
  ADDI s2, zero, 64
  MULW s3, s0, s2
  LA s2, e
  ADD s4, s2, s3
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s2, s4, s3
  LA s3, INF
  LW s4, 0(s3)
  SW s4, 0(s2)
  JAL zero, bb8
bb10:
  LA s1, m
  LW s2, 0(s1)
  SLT s1, s2, s0
  XORI s2, s1, 1
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb11
  JAL zero, bb12
bb11:
  CALL getint
  ADD s1, a0, zero
  CALL getint
  ADD s2, a0, zero
  ADDI s3, zero, 64
  MULW s4, s1, s3
  LA s1, e
  ADD s3, s1, s4
  ADDI s1, zero, 4
  MULW s4, s2, s1
  ADD s1, s3, s4
  CALL getint
  ADD s2, a0, zero
  SW s2, 0(s1)
  ADDIW s1, s0, 1
  ADD s0, s1, zero
  JAL zero, bb10
bb12:
  CALL Dijkstra
  ADDI s0, zero, 1
  JAL zero, bb13
bb13:
  LA s1, n
  LW s2, 0(s1)
  SLT s1, s2, s0
  XORI s2, s1, 1
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb14
  JAL zero, bb15
bb14:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, dis
  ADD s3, s1, s2
  LW s1, 0(s3)
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s1, s0, 1
  ADD s0, s1, zero
  JAL zero, bb13
bb15:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
Dijkstra:
  ADDI sp, sp, -96
  SD s9, 0(sp)
  SD s8, 8(sp)
  SD s7, 16(sp)
  SD ra, 24(sp)
  SD s4, 32(sp)
  SD s3, 40(sp)
  SD s2, 48(sp)
  SD s6, 56(sp)
  SD s1, 64(sp)
  SD s5, 72(sp)
  SD s0, 80(sp)
  ADDI s0, zero, 1
  JAL zero, bb17
bb17:
  LA s1, n
  LW s2, 0(s1)
  SLT s1, s2, s0
  XORI s2, s1, 1
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb18
  JAL zero, bb19
bb18:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, dis
  ADD s3, s1, s2
  ADDI s1, zero, 64
  ADDI s2, zero, 1
  MULW s4, s1, s2
  LA s1, e
  ADD s2, s1, s4
  ADDI s1, zero, 4
  MULW s4, s0, s1
  ADD s1, s2, s4
  LW s2, 0(s1)
  SW s2, 0(s3)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, book
  ADD s3, s1, s2
  SW zero, 0(s3)
  ADDIW s1, s0, 1
  ADD s0, s1, zero
  JAL zero, bb17
bb19:
  ADDI s0, zero, 4
  ADDI s1, zero, 1
  MULW s2, s0, s1
  LA s0, book
  ADD s1, s0, s2
  ADDI s0, zero, 1
  SW s0, 0(s1)
  ADD s0, zero, zero
  ADDI s1, zero, 1
  JAL zero, bb20
bb20:
  LA s2, n
  LW s3, 0(s2)
  ADDI s2, zero, 1
  SUBW s4, s3, s2
  SLT s2, s4, s1
  XORI s3, s2, 1
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb21
  JAL zero, bb22
bb21:
  LA s2, INF
  LW s3, 0(s2)
  ADD s2, s0, zero
  ADDI s4, zero, 1
  ADD s5, zero, zero
  ADD s6, s3, zero
  JAL zero, bb23
bb22:
  LD s9, 0(sp)
  LD s8, 8(sp)
  LD s7, 16(sp)
  LD ra, 24(sp)
  LD s4, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD s6, 56(sp)
  LD s1, 64(sp)
  LD s5, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb23:
  LA s3, n
  LW s7, 0(s3)
  SLT s3, s7, s4
  XORI s7, s3, 1
  XOR s3, s7, zero
  SLTU s7, zero, s3
  BNE s7, zero, bb24
  JAL zero, bb25
bb24:
  ADDI s3, zero, 4
  MULW s7, s4, s3
  LA s3, dis
  ADD s8, s3, s7
  LW s3, 0(s8)
  SLT s7, s3, s6
  BNE s7, zero, bb26
  JAL zero, bb27
bb25:
  ADDI s3, zero, 4
  MULW s4, s5, s3
  LA s3, book
  ADD s6, s3, s4
  ADDI s3, zero, 1
  SW s3, 0(s6)
  ADDI s3, zero, 1
  JAL zero, bb31
bb26:
  ADDI s3, zero, 4
  MULW s7, s4, s3
  LA s3, book
  ADD s8, s3, s7
  LW s3, 0(s8)
  XOR s7, s3, zero
  SLTIU s3, s7, 1
  ADD s7, s3, zero
  JAL zero, bb28
bb27:
  ADD s7, zero, zero
  JAL zero, bb28
bb28:
  BNE s7, zero, bb29
  JAL zero, bb38
bb29:
  ADDI s3, zero, 4
  MULW s8, s4, s3
  LA s3, dis
  ADD s9, s3, s8
  LW s3, 0(s9)
  ADD s8, s4, zero
  ADD s9, s3, zero
  JAL zero, bb30
bb30:
  ADDIW s3, s4, 1
  ADD s2, s7, zero
  ADD s4, s3, zero
  ADD s5, s8, zero
  ADD s6, s9, zero
  JAL zero, bb23
bb31:
  LA s4, n
  LW s6, 0(s4)
  SLT s4, s6, s3
  XORI s6, s4, 1
  XOR s4, s6, zero
  SLTU s6, zero, s4
  BNE s6, zero, bb32
  JAL zero, bb33
bb32:
  ADDI s4, zero, 64
  MULW s6, s5, s4
  LA s4, e
  ADD s7, s4, s6
  ADDI s4, zero, 4
  MULW s6, s3, s4
  ADD s4, s7, s6
  LW s6, 0(s4)
  LA s4, INF
  LW s7, 0(s4)
  SLT s4, s6, s7
  BNE s4, zero, bb34
  JAL zero, bb35
bb33:
  ADDIW s3, s1, 1
  ADD s0, s2, zero
  ADD s1, s3, zero
  JAL zero, bb20
bb34:
  ADDI s4, zero, 4
  MULW s6, s3, s4
  LA s4, dis
  ADD s7, s4, s6
  LW s4, 0(s7)
  ADDI s6, zero, 4
  MULW s7, s5, s6
  LA s6, dis
  ADD s8, s6, s7
  LW s6, 0(s8)
  ADDI s7, zero, 64
  MULW s8, s5, s7
  LA s7, e
  ADD s9, s7, s8
  ADDI s7, zero, 4
  MULW s8, s3, s7
  ADD s7, s9, s8
  LW s8, 0(s7)
  ADDW s7, s6, s8
  SLT s6, s7, s4
  BNE s6, zero, bb36
  JAL zero, bb37
bb35:
  ADDIW s4, s3, 1
  ADD s3, s4, zero
  JAL zero, bb31
bb36:
  ADDI s4, zero, 4
  MULW s6, s3, s4
  LA s4, dis
  ADD s7, s4, s6
  ADDI s4, zero, 4
  MULW s6, s5, s4
  LA s4, dis
  ADD s8, s4, s6
  LW s4, 0(s8)
  ADDI s6, zero, 64
  MULW s8, s5, s6
  LA s6, e
  ADD s9, s6, s8
  ADDI s6, zero, 4
  MULW s8, s3, s6
  ADD s6, s9, s8
  LW s8, 0(s6)
  ADDW s6, s4, s8
  SW s6, 0(s7)
  JAL zero, bb37
bb37:
  JAL zero, bb35
bb38:
  ADD s8, s5, zero
  ADD s9, s6, zero
  JAL zero, bb30
