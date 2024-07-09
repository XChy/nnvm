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
  ADDI sp, sp, -160
  SD s9, 56(sp)
  SD s10, 64(sp)
  SD s8, 72(sp)
  SD s0, 80(sp)
  SD s5, 88(sp)
  SD s7, 96(sp)
  SD s1, 104(sp)
  SD s6, 112(sp)
  SD s2, 120(sp)
  SD s3, 128(sp)
  SD s4, 136(sp)
  SD ra, 144(sp)
  SD s11, 152(sp)
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
  LUI s4, 16
  ADDIW s4, s4, -1
  SW s4, 0(s2)
  JAL zero, bb8
bb10:
  ADD s1, s0, zero
  LA s2, m
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
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
  ADDI s0, zero, 1
  JAL zero, bb16
bb13:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
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
  LD s9, 56(sp)
  LD s10, 64(sp)
  LD s8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s7, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  LD s11, 152(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb16:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  BNE s3, zero, bb17
  JAL zero, bb18
bb17:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, dis
  ADD s4, s2, s3
  LA s2, e
  ADDI s5, s2, 64
  ADD s2, s5, s3
  LW s5, 0(s2)
  SW s5, 0(s4)
  LA s2, book
  ADD s4, s2, s3
  SW zero, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb16
bb18:
  LA s0, book
  ADDI s1, s0, 4
  ADDI s0, zero, 1
  SW s0, 0(s1)
  ADD t4, zero, zero
  SB t4, 16(sp)
  ADDI t4, zero, 1
  SW t4, 0(sp)
  JAL zero, bb19
bb19:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LB t4, 16(sp)
  ADD s3, t4, zero
  LA s4, n
  LW s5, 0(s4)
  ADDI s4, zero, 1
  SUBW s6, s5, s4
  LW t4, 24(sp)
  SLT s4, s6, t4
  XORI s5, s4, 1
  BNE s5, zero, bb20
  JAL zero, bb21
bb20:
  ADD s4, s3, zero
  ADDI s3, zero, 1
  ADD s5, zero, zero
  LUI s6, 16
  ADDIW s6, s6, -1
  ADD s7, zero, s6
  JAL zero, bb22
bb21:
  ADDI s0, zero, 1
  JAL zero, bb13
bb22:
  ADD s6, s7, zero
  ADD t4, s5, zero
  SW t4, 32(sp)
  ADD t4, s3, zero
  SW t4, 48(sp)
  ADD t4, s4, zero
  SB t4, 8(sp)
  LA s11, n
  LW s1, 0(s11)
  LW t4, 48(sp)
  SLT s11, s1, t4
  XORI s1, s11, 1
  BNE s1, zero, bb23
  JAL zero, bb24
bb23:
  ADDI s1, zero, 4
  LW t4, 48(sp)
  MULW s11, t4, s1
  LA s1, dis
  ADD t4, s1, s11
  SD t4, 40(sp)
  LD t4, 40(sp)
  LW s1, 0(t4)
  SLT s0, s1, s6
  BNE s0, zero, bb25
  JAL zero, bb26
bb24:
  ADDI s0, zero, 4
  LW t4, 32(sp)
  MULW s1, t4, s0
  LA s0, book
  ADD s2, s0, s1
  ADDI s0, zero, 1
  SW s0, 0(s2)
  ADDI s0, zero, 1
  JAL zero, bb30
bb25:
  LA s0, book
  ADD s1, s0, s11
  LW s0, 0(s1)
  XOR s1, s0, zero
  SLTIU s0, s1, 1
  ADD s1, s0, zero
  JAL zero, bb27
bb26:
  ADD s1, zero, zero
  JAL zero, bb27
bb27:
  ADD s0, s1, zero
  BNE s0, zero, bb28
  JAL zero, bb36
bb28:
  LD t4, 40(sp)
  LW s11, 0(t4)
  LW t4, 48(sp)
  ADD s2, t4, zero
  ADD s8, s11, zero
  JAL zero, bb29
bb29:
  ADD s11, s8, zero
  ADD s10, s2, zero
  LW t4, 48(sp)
  ADDIW s9, t4, 1
  ADD s4, s0, zero
  ADD s3, s9, zero
  ADD s5, s10, zero
  ADD s7, s11, zero
  JAL zero, bb22
bb30:
  ADD s2, s0, zero
  LA s3, n
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb31
  JAL zero, bb32
bb31:
  ADDI s3, zero, 64
  LW t4, 32(sp)
  MULW s4, t4, s3
  LA s3, e
  ADD s5, s3, s4
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s3, s5, s4
  LW s5, 0(s3)
  LUI s6, 16
  ADDIW s6, s6, -1
  SLT s7, s5, s6
  BNE s7, zero, bb33
  JAL zero, bb34
bb32:
  LW t4, 24(sp)
  ADDIW s0, t4, 1
  LB t3, 8(sp)
  ADD t4, t3, zero
  SB t4, 16(sp)
  ADD t4, s0, zero
  SW t4, 0(sp)
  JAL zero, bb19
bb33:
  LA s5, dis
  ADD s6, s5, s4
  LW s4, 0(s6)
  LA s5, dis
  ADD s7, s5, s1
  LW s5, 0(s7)
  LW s8, 0(s3)
  ADDW s9, s5, s8
  SLT s5, s9, s4
  BNE s5, zero, bb35
  JAL zero, bb34
bb34:
  ADDIW s3, s2, 1
  ADD s0, s3, zero
  JAL zero, bb30
bb35:
  LW s4, 0(s7)
  LW s5, 0(s3)
  ADDW s3, s4, s5
  SW s3, 0(s6)
  JAL zero, bb34
bb36:
  LW t4, 32(sp)
  ADD s2, t4, zero
  ADD s8, s6, zero
  JAL zero, bb29
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
  JAL zero, bb38
bb38:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  BNE s3, zero, bb39
  JAL zero, bb40
bb39:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, dis
  ADD s4, s2, s3
  LA s2, e
  ADDI s5, s2, 64
  ADD s2, s5, s3
  LW s5, 0(s2)
  SW s5, 0(s4)
  LA s2, book
  ADD s4, s2, s3
  SW zero, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb38
bb40:
  LA s0, book
  ADDI s1, s0, 4
  ADDI s0, zero, 1
  SW s0, 0(s1)
  ADD s0, zero, zero
  ADDI s1, zero, 1
  JAL zero, bb41
bb41:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, n
  LW s5, 0(s4)
  ADDI s4, zero, 1
  SUBW s6, s5, s4
  SLT s4, s6, s2
  XORI s5, s4, 1
  BNE s5, zero, bb42
  JAL zero, bb43
bb42:
  ADD s4, s3, zero
  ADDI s3, zero, 1
  ADD s5, zero, zero
  LUI s6, 16
  ADDIW s6, s6, -1
  ADD s7, zero, s6
  JAL zero, bb44
bb43:
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
bb44:
  ADD s6, s7, zero
  ADD s8, s5, zero
  ADD s9, s3, zero
  ADD s10, s4, zero
  LA s11, n
  LW t0, 0(s11)
  SLT s11, t0, s9
  XORI t0, s11, 1
  BNE t0, zero, bb45
  JAL zero, bb46
bb45:
  ADDI s11, zero, 4
  MULW t0, s9, s11
  LA s11, dis
  ADD t1, s11, t0
  LW s11, 0(t1)
  SLT t2, s11, s6
  BNE t2, zero, bb47
  JAL zero, bb48
bb46:
  ADDI s3, zero, 4
  MULW s4, s8, s3
  LA s3, book
  ADD s5, s3, s4
  ADDI s3, zero, 1
  SW s3, 0(s5)
  ADDI s3, zero, 1
  JAL zero, bb52
bb47:
  LA s11, book
  ADD t2, s11, t0
  LW s11, 0(t2)
  XOR t0, s11, zero
  SLTIU s11, t0, 1
  ADD t0, s11, zero
  JAL zero, bb49
bb48:
  ADD t0, zero, zero
  JAL zero, bb49
bb49:
  ADD s11, t0, zero
  BNE s11, zero, bb50
  JAL zero, bb58
bb50:
  LW t2, 0(t1)
  ADD a0, s9, zero
  ADD a1, t2, zero
  JAL zero, bb51
bb51:
  ADD t2, a1, zero
  ADD a2, a0, zero
  ADDIW a3, s9, 1
  ADD s4, s11, zero
  ADD s3, a3, zero
  ADD s5, a2, zero
  ADD s7, t2, zero
  JAL zero, bb44
bb52:
  ADD s5, s3, zero
  LA s6, n
  LW s7, 0(s6)
  SLT s6, s7, s5
  XORI s7, s6, 1
  BNE s7, zero, bb53
  JAL zero, bb54
bb53:
  ADDI s6, zero, 64
  MULW s7, s8, s6
  LA s6, e
  ADD s9, s6, s7
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADD s6, s9, s7
  LW s9, 0(s6)
  LUI s11, 16
  ADDIW s11, s11, -1
  SLT t0, s9, s11
  BNE t0, zero, bb55
  JAL zero, bb56
bb54:
  ADDIW s3, s2, 1
  ADD s0, s10, zero
  ADD s1, s3, zero
  JAL zero, bb41
bb55:
  LA s9, dis
  ADD s11, s9, s7
  LW s7, 0(s11)
  LA s9, dis
  ADD t0, s9, s4
  LW s9, 0(t0)
  LW t1, 0(s6)
  ADDW t2, s9, t1
  SLT s9, t2, s7
  BNE s9, zero, bb57
  JAL zero, bb56
bb56:
  ADDIW s6, s5, 1
  ADD s3, s6, zero
  JAL zero, bb52
bb57:
  LW s7, 0(t0)
  LW s9, 0(s6)
  ADDW s6, s7, s9
  SW s6, 0(s11)
  JAL zero, bb56
bb58:
  ADD a0, s8, zero
  ADD a1, s6, zero
  JAL zero, bb51
