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
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
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
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s2, zero, 1
  JAL zero, bb4
bb3:
  ADDI s0, zero, 1
  JAL zero, bb10
bb4:
  ADD s3, s2, zero
  LA s4, n
  LW s5, 0(s4)
  SLT s4, s5, s3
  XORI s5, s4, 1
  XOR s4, s5, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb5
  JAL zero, bb6
bb5:
  XOR s4, s1, s3
  SLTIU s5, s4, 1
  BNE s5, zero, bb7
  JAL zero, bb9
bb6:
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb1
bb7:
  ADDI s4, zero, 64
  MULW s5, s1, s4
  LA s4, e
  ADD s6, s4, s5
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s4, s6, s5
  ADDI s5, zero, 0
  SW s5, 0(s4)
  JAL zero, bb8
bb8:
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb4
bb9:
  ADDI s2, zero, 64
  MULW s4, s1, s2
  LA s2, e
  ADD s5, s2, s4
  ADDI s2, zero, 4
  MULW s4, s3, s2
  ADD s2, s5, s4
  LA s4, INF
  LW s5, 0(s4)
  SW s5, 0(s2)
  JAL zero, bb8
bb10:
  ADD s1, s0, zero
  LA s2, m
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb11
  JAL zero, bb12
bb11:
  CALL getint
  ADD s2, a0, zero
  CALL getint
  ADD s3, a0, zero
  ADDI s4, zero, 64
  MULW s5, s2, s4
  LA s2, e
  ADD s4, s2, s5
  ADDI s2, zero, 4
  MULW s5, s3, s2
  ADD s2, s4, s5
  CALL getint
  ADD s3, a0, zero
  SW s3, 0(s2)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb10
bb12:
  CALL Dijkstra
  ADDI s0, zero, 1
  JAL zero, bb13
bb13:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb14
  JAL zero, bb15
bb14:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, dis
  ADD s4, s2, s3
  LW s2, 0(s4)
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb13
bb15:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
Dijkstra:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s10, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s7, 72(sp)
  SD ra, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  ADDI s0, zero, 1
  JAL zero, bb17
bb17:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb18
  JAL zero, bb19
bb18:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, dis
  ADD s4, s2, s3
  LA s2, e
  ADDI s3, s2, 64
  ADDI s2, zero, 4
  MULW s5, s1, s2
  ADD s2, s3, s5
  LW s3, 0(s2)
  SW s3, 0(s4)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, book
  ADD s4, s2, s3
  SW zero, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb17
bb19:
  LA s0, book
  ADDI s1, s0, 4
  ADDI s0, zero, 1
  SW s0, 0(s1)
  ADD s0, zero, zero
  ADDI s1, zero, 1
  JAL zero, bb20
bb20:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, n
  LW s5, 0(s4)
  ADDI s4, zero, 1
  SUBW s6, s5, s4
  SLT s4, s6, s2
  XORI s5, s4, 1
  XOR s4, s5, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb21
  JAL zero, bb22
bb21:
  LA s4, INF
  LW s5, 0(s4)
  ADD s4, s3, zero
  ADDI s3, zero, 1
  ADD s6, zero, zero
  ADD s7, s5, zero
  JAL zero, bb23
bb22:
  LD s11, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s10, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s7, 72(sp)
  LD ra, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb23:
  ADD s5, s7, zero
  ADD s8, s6, zero
  ADD s9, s3, zero
  ADD s10, s4, zero
  LA s11, n
  LW t0, 0(s11)
  SLT s11, t0, s9
  XORI t0, s11, 1
  XOR s11, t0, zero
  SLTU t0, zero, s11
  BNE t0, zero, bb24
  JAL zero, bb25
bb24:
  ADDI s11, zero, 4
  MULW t0, s9, s11
  LA s11, dis
  ADD t1, s11, t0
  LW s11, 0(t1)
  SLT t0, s11, s5
  BNE t0, zero, bb26
  JAL zero, bb27
bb25:
  ADDI s3, zero, 4
  MULW s4, s8, s3
  LA s3, book
  ADD s5, s3, s4
  ADDI s3, zero, 1
  SW s3, 0(s5)
  ADDI s3, zero, 1
  JAL zero, bb31
bb26:
  ADDI s11, zero, 4
  MULW t0, s9, s11
  LA s11, book
  ADD t1, s11, t0
  LW s11, 0(t1)
  XOR t0, s11, zero
  SLTIU s11, t0, 1
  ADD t0, s11, zero
  JAL zero, bb28
bb27:
  ADD t0, zero, zero
  JAL zero, bb28
bb28:
  ADD s11, t0, zero
  BNE s11, zero, bb29
  JAL zero, bb38
bb29:
  ADDI t1, zero, 4
  MULW t2, s9, t1
  LA t1, dis
  ADD a0, t1, t2
  LW t1, 0(a0)
  ADD t2, s9, zero
  ADD a0, t1, zero
  JAL zero, bb30
bb30:
  ADD t1, a0, zero
  ADD a1, t2, zero
  ADDIW a2, s9, 1
  ADD s4, s11, zero
  ADD s3, a2, zero
  ADD s6, a1, zero
  ADD s7, t1, zero
  JAL zero, bb23
bb31:
  ADD s4, s3, zero
  LA s5, n
  LW s6, 0(s5)
  SLT s5, s6, s4
  XORI s6, s5, 1
  XOR s5, s6, zero
  SLTU s6, zero, s5
  BNE s6, zero, bb32
  JAL zero, bb33
bb32:
  ADDI s5, zero, 64
  MULW s6, s8, s5
  LA s5, e
  ADD s7, s5, s6
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s5, s7, s6
  LW s6, 0(s5)
  LA s5, INF
  LW s7, 0(s5)
  SLT s5, s6, s7
  BNE s5, zero, bb34
  JAL zero, bb35
bb33:
  ADDIW s3, s2, 1
  ADD s0, s10, zero
  ADD s1, s3, zero
  JAL zero, bb20
bb34:
  ADDI s5, zero, 4
  MULW s6, s4, s5
  LA s5, dis
  ADD s7, s5, s6
  LW s5, 0(s7)
  ADDI s6, zero, 4
  MULW s7, s8, s6
  LA s6, dis
  ADD s9, s6, s7
  LW s6, 0(s9)
  ADDI s7, zero, 64
  MULW s9, s8, s7
  LA s7, e
  ADD s11, s7, s9
  ADDI s7, zero, 4
  MULW s9, s4, s7
  ADD s7, s11, s9
  LW s9, 0(s7)
  ADDW s7, s6, s9
  SLT s6, s7, s5
  BNE s6, zero, bb36
  JAL zero, bb37
bb35:
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb31
bb36:
  ADDI s5, zero, 4
  MULW s6, s4, s5
  LA s5, dis
  ADD s7, s5, s6
  ADDI s5, zero, 4
  MULW s6, s8, s5
  LA s5, dis
  ADD s9, s5, s6
  LW s5, 0(s9)
  ADDI s6, zero, 64
  MULW s9, s8, s6
  LA s6, e
  ADD s11, s6, s9
  ADDI s6, zero, 4
  MULW s9, s4, s6
  ADD s6, s11, s9
  LW s9, 0(s6)
  ADDW s6, s5, s9
  SW s6, 0(s7)
  JAL zero, bb37
bb37:
  JAL zero, bb35
bb38:
  ADD t2, s8, zero
  ADD a0, s5, zero
  JAL zero, bb30
