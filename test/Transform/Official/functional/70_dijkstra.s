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
  ADDI sp, sp, -144
  SD s9, 32(sp)
  SD s10, 40(sp)
  SD s8, 48(sp)
  SD s0, 56(sp)
  SD s5, 64(sp)
  SD s7, 72(sp)
  SD s1, 80(sp)
  SD s6, 88(sp)
  SD s2, 96(sp)
  SD s3, 104(sp)
  SD s4, 112(sp)
  SD ra, 120(sp)
  SD s11, 128(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, n
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, m
  SW s0, 0(s1)
  ADDI s0, zero, 1
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  BNE s3, zero, bb30
  # implict jump to bb2
bb2:
  ADDI s0, zero, 1
  # implict jump to bb3
bb3:
  ADD s1, s0, zero
  LA s2, m
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  BNE s3, zero, bb29
  # implict jump to bb4
bb4:
  ADDI s0, zero, 1
  # implict jump to bb5
bb5:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  BNE s3, zero, bb28
  # implict jump to bb6
bb6:
  LA s0, book
  ADDI s1, s0, 4
  ADDI s0, zero, 1
  SW s0, 0(s1)
  ADD t4, zero, zero
  SB t4, 5(sp)
  ADDI t4, zero, 1
  SW t4, 0(sp)
  # implict jump to bb7
bb7:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LB t4, 5(sp)
  ADD s3, t4, zero
  LA s4, n
  LW s5, 0(s4)
  ADDI s4, zero, 1
  SUBW s6, s5, s4
  LW t4, 8(sp)
  SLT s4, s6, t4
  XORI s5, s4, 1
  BNE s5, zero, bb12
  # implict jump to bb8
bb8:
  ADDI s0, zero, 1
  # implict jump to bb9
bb9:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  BNE s3, zero, bb11
  # implict jump to bb10
bb10:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD s9, 32(sp)
  LD s10, 40(sp)
  LD s8, 48(sp)
  LD s0, 56(sp)
  LD s5, 64(sp)
  LD s7, 72(sp)
  LD s1, 80(sp)
  LD s6, 88(sp)
  LD s2, 96(sp)
  LD s3, 104(sp)
  LD s4, 112(sp)
  LD ra, 120(sp)
  LD s11, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb11:
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
  JAL zero, bb9
bb12:
  ADD s4, s3, zero
  ADDI s3, zero, 1
  ADD s5, zero, zero
  LUI s6, 16
  ADDIW s6, s6, -1
  ADD s7, zero, s6
  # implict jump to bb13
bb13:
  ADD s6, s7, zero
  ADD t4, s5, zero
  SW t4, 12(sp)
  ADD t4, s3, zero
  SW t4, 24(sp)
  ADD t4, s4, zero
  SB t4, 4(sp)
  LA s11, n
  LW s1, 0(s11)
  LW t4, 24(sp)
  SLT s11, s1, t4
  XORI s1, s11, 1
  BNE s1, zero, bb21
  # implict jump to bb14
bb14:
  ADDI s0, zero, 4
  LW t4, 12(sp)
  MULW s1, t4, s0
  LA s0, book
  ADD s2, s0, s1
  ADDI s0, zero, 1
  SW s0, 0(s2)
  ADDI s0, zero, 1
  # implict jump to bb15
bb15:
  ADD s2, s0, zero
  LA s3, n
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s4, s3, 1
  BNE s4, zero, bb17
  # implict jump to bb16
bb16:
  LW t4, 8(sp)
  ADDIW s0, t4, 1
  LB t3, 4(sp)
  ADD t4, t3, zero
  SB t4, 5(sp)
  ADD t4, s0, zero
  SW t4, 0(sp)
  JAL zero, bb7
bb17:
  ADDI s3, zero, 64
  LW t4, 12(sp)
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
  BNE s7, zero, bb19
  # implict jump to bb18
bb18:
  ADDIW s3, s2, 1
  ADD s0, s3, zero
  JAL zero, bb15
bb19:
  LA s5, dis
  ADD s6, s5, s4
  LW s4, 0(s6)
  LA s5, dis
  ADD s7, s5, s1
  LW s5, 0(s7)
  LW s8, 0(s3)
  ADDW s9, s5, s8
  SLT s5, s9, s4
  BNE s5, zero, bb20
  JAL zero, bb18
bb20:
  LW s4, 0(s7)
  LW s5, 0(s3)
  ADDW s3, s4, s5
  SW s3, 0(s6)
  JAL zero, bb18
bb21:
  ADDI s1, zero, 4
  LW t4, 24(sp)
  MULW s11, t4, s1
  LA s1, dis
  ADD t4, s1, s11
  SD t4, 16(sp)
  LD t4, 16(sp)
  LW s1, 0(t4)
  SLT s0, s1, s6
  BNE s0, zero, bb27
  # implict jump to bb22
bb22:
  ADD s1, zero, zero
  # implict jump to bb23
bb23:
  ADD s0, s1, zero
  BNE s0, zero, bb26
  # implict jump to bb24
bb24:
  LW t4, 12(sp)
  ADD s2, t4, zero
  ADD s8, s6, zero
  # implict jump to bb25
bb25:
  ADD s11, s8, zero
  ADD s10, s2, zero
  LW t4, 24(sp)
  ADDIW s9, t4, 1
  ADD s4, s0, zero
  ADD s3, s9, zero
  ADD s5, s10, zero
  ADD s7, s11, zero
  JAL zero, bb13
bb26:
  LD t4, 16(sp)
  LW s11, 0(t4)
  LW t4, 24(sp)
  ADD s2, t4, zero
  ADD s8, s11, zero
  JAL zero, bb25
bb27:
  LA s0, book
  ADD s1, s0, s11
  LW s0, 0(s1)
  XOR s1, s0, zero
  SLTIU s0, s1, 1
  ADD s1, s0, zero
  JAL zero, bb23
bb28:
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
  JAL zero, bb5
bb29:
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
  JAL zero, bb3
bb30:
  ADDI s2, zero, 1
  # implict jump to bb31
bb31:
  ADD s3, s2, zero
  LA s4, n
  LW s5, 0(s4)
  SLT s4, s5, s3
  XORI s5, s4, 1
  BNE s5, zero, bb33
  # implict jump to bb32
bb32:
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb1
bb33:
  XOR s4, s1, s3
  SLTIU s5, s4, 1
  BNE s5, zero, bb36
  # implict jump to bb34
bb34:
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
  # implict jump to bb35
bb35:
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb31
bb36:
  ADDI s4, zero, 64
  MULW s5, s1, s4
  LA s4, e
  ADD s6, s4, s5
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s4, s6, s5
  ADDI s5, zero, 0
  SW s5, 0(s4)
  JAL zero, bb35
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
  # implict jump to bb38
bb38:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  BNE s3, zero, bb58
  # implict jump to bb39
bb39:
  LA s0, book
  ADDI s1, s0, 4
  ADDI s0, zero, 1
  SW s0, 0(s1)
  ADD s0, zero, zero
  ADDI s1, zero, 1
  # implict jump to bb40
bb40:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, n
  LW s5, 0(s4)
  ADDI s4, zero, 1
  SUBW s6, s5, s4
  SLT s4, s6, s2
  XORI s5, s4, 1
  BNE s5, zero, bb42
  # implict jump to bb41
bb41:
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
bb42:
  ADD s4, s3, zero
  ADDI s3, zero, 1
  ADD s5, zero, zero
  LUI s6, 16
  ADDIW s6, s6, -1
  ADD s7, zero, s6
  # implict jump to bb43
bb43:
  ADD s6, s7, zero
  ADD s8, s5, zero
  ADD s9, s3, zero
  ADD s10, s4, zero
  LA s11, n
  LW t0, 0(s11)
  SLT s11, t0, s9
  XORI t0, s11, 1
  BNE t0, zero, bb51
  # implict jump to bb44
bb44:
  ADDI s3, zero, 4
  MULW s4, s8, s3
  LA s3, book
  ADD s5, s3, s4
  ADDI s3, zero, 1
  SW s3, 0(s5)
  ADDI s3, zero, 1
  # implict jump to bb45
bb45:
  ADD s5, s3, zero
  LA s6, n
  LW s7, 0(s6)
  SLT s6, s7, s5
  XORI s7, s6, 1
  BNE s7, zero, bb47
  # implict jump to bb46
bb46:
  ADDIW s3, s2, 1
  ADD s0, s10, zero
  ADD s1, s3, zero
  JAL zero, bb40
bb47:
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
  BNE t0, zero, bb49
  # implict jump to bb48
bb48:
  ADDIW s6, s5, 1
  ADD s3, s6, zero
  JAL zero, bb45
bb49:
  LA s9, dis
  ADD s11, s9, s7
  LW s7, 0(s11)
  LA s9, dis
  ADD t0, s9, s4
  LW s9, 0(t0)
  LW t1, 0(s6)
  ADDW t2, s9, t1
  SLT s9, t2, s7
  BNE s9, zero, bb50
  JAL zero, bb48
bb50:
  LW s7, 0(t0)
  LW s9, 0(s6)
  ADDW s6, s7, s9
  SW s6, 0(s11)
  JAL zero, bb48
bb51:
  ADDI s11, zero, 4
  MULW t0, s9, s11
  LA s11, dis
  ADD t1, s11, t0
  LW s11, 0(t1)
  SLT t2, s11, s6
  BNE t2, zero, bb57
  # implict jump to bb52
bb52:
  ADD t0, zero, zero
  # implict jump to bb53
bb53:
  ADD s11, t0, zero
  BNE s11, zero, bb56
  # implict jump to bb54
bb54:
  ADD a0, s8, zero
  ADD a1, s6, zero
  # implict jump to bb55
bb55:
  ADD t2, a1, zero
  ADD a2, a0, zero
  ADDIW a3, s9, 1
  ADD s4, s11, zero
  ADD s3, a3, zero
  ADD s5, a2, zero
  ADD s7, t2, zero
  JAL zero, bb43
bb56:
  LW t2, 0(t1)
  ADD a0, s9, zero
  ADD a1, t2, zero
  JAL zero, bb55
bb57:
  LA s11, book
  ADD t2, s11, t0
  LW s11, 0(t2)
  XOR t0, s11, zero
  SLTIU s11, t0, 1
  ADD t0, s11, zero
  JAL zero, bb53
bb58:
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
