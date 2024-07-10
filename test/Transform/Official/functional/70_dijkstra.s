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
  SD ra, 48(sp)
  SD s0, 56(sp)
  SD s5, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s1, 88(sp)
  SD s2, 96(sp)
  SD s3, 104(sp)
  SD s4, 112(sp)
  SD s6, 120(sp)
  SD s7, 128(sp)
  SD s10, 136(sp)
  SD s11, 144(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, n
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, m
  SW s0, 0(s1)
  ADDI t4, zero, 1
  SW t4, 32(sp)
  # implict jump to bb1
bb1:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LA s2, n
  LW s2, 0(s2)
  LW t4, 28(sp)
  SLT s2, s2, t4
  XORI s2, s2, 1
  BNE s2, zero, bb30
  # implict jump to bb2
bb2:
  ADDI t4, zero, 1
  SW t4, 36(sp)
  # implict jump to bb3
bb3:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LA s4, m
  LW s4, 0(s4)
  LW t4, 40(sp)
  SLT s4, s4, t4
  XORI s4, s4, 1
  BNE s4, zero, bb29
  # implict jump to bb4
bb4:
  ADDI t4, zero, 1
  SW t4, 44(sp)
  # implict jump to bb5
bb5:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LA s6, n
  LW s6, 0(s6)
  LW t4, 24(sp)
  SLT s6, s6, t4
  XORI s6, s6, 1
  BNE s6, zero, bb28
  # implict jump to bb6
bb6:
  LA s6, book
  ADDI s6, s6, 4
  ADDI s7, zero, 1
  SW s7, 0(s6)
  ADD s6, zero, zero
  ADDI s7, zero, 1
  # implict jump to bb7
bb7:
  ADD t4, s7, zero
  SW t4, 20(sp)
  ADD s9, s6, zero
  LA s10, n
  LW s10, 0(s10)
  ADDI s11, zero, 1
  SUBW s10, s10, s11
  LW t4, 20(sp)
  SLT s10, s10, t4
  XORI s10, s10, 1
  BNE s10, zero, bb12
  # implict jump to bb8
bb8:
  ADDI s10, zero, 1
  # implict jump to bb9
bb9:
  ADD s11, s10, zero
  LA s1, n
  LW s1, 0(s1)
  SLT s1, s1, s11
  XORI s1, s1, 1
  BNE s1, zero, bb11
  # implict jump to bb10
bb10:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 48(sp)
  LD s0, 56(sp)
  LD s5, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s1, 88(sp)
  LD s2, 96(sp)
  LD s3, 104(sp)
  LD s4, 112(sp)
  LD s6, 120(sp)
  LD s7, 128(sp)
  LD s10, 136(sp)
  LD s11, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb11:
  SLLIW s1, s11, 2
  LA s0, dis
  ADD s0, s0, s1
  LW s0, 0(s0)
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s0, s11, 1
  ADD s10, s0, zero
  JAL zero, bb9
bb12:
  ADD t4, s9, zero
  SB t4, 0(sp)
  ADDI t4, zero, 1
  SW t4, 8(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  LUI s10, 16
  ADDIW s10, s10, -1
  ADD t4, zero, s10
  SW t4, 16(sp)
  # implict jump to bb13
bb13:
  LW t4, 16(sp)
  ADD s11, t4, zero
  LW t4, 12(sp)
  ADD s2, t4, zero
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LB t4, 0(sp)
  ADD s4, t4, zero
  LA s5, n
  LW s5, 0(s5)
  LW t4, 4(sp)
  SLT s5, s5, t4
  XORI s5, s5, 1
  BNE s5, zero, bb21
  # implict jump to bb14
bb14:
  SLLIW s5, s2, 2
  LA s8, book
  ADD s8, s8, s5
  ADDI s10, zero, 1
  SW s10, 0(s8)
  ADDI s8, zero, 1
  # implict jump to bb15
bb15:
  ADD s10, s8, zero
  LA s9, n
  LW s9, 0(s9)
  SLT s9, s9, s10
  XORI s9, s9, 1
  BNE s9, zero, bb17
  # implict jump to bb16
bb16:
  LW t4, 20(sp)
  ADDIW s9, t4, 1
  ADD s6, s4, zero
  ADD s7, s9, zero
  JAL zero, bb7
bb17:
  SLLIW s6, s2, 6
  LA s7, e
  ADD s6, s7, s6
  SLLIW s7, s10, 2
  ADD s6, s6, s7
  LW s9, 0(s6)
  LUI s1, 16
  ADDIW s1, s1, -1
  SLT s1, s9, s1
  BNE s1, zero, bb19
  # implict jump to bb18
bb18:
  ADDIW s0, s10, 1
  ADD s8, s0, zero
  JAL zero, bb15
bb19:
  LA s1, dis
  ADD s1, s1, s7
  LW s7, 0(s1)
  LA s9, dis
  ADD s9, s9, s5
  LW s0, 0(s9)
  LW s3, 0(s6)
  ADDW s0, s0, s3
  SLT s0, s0, s7
  BNE s0, zero, bb20
  JAL zero, bb18
bb20:
  LW s0, 0(s9)
  LW s3, 0(s6)
  ADDW s0, s0, s3
  SW s0, 0(s1)
  JAL zero, bb18
bb21:
  LW t4, 4(sp)
  SLLIW s0, t4, 2
  LA s1, dis
  ADD s1, s1, s0
  LW s3, 0(s1)
  SLT s3, s3, s11
  BNE s3, zero, bb27
  # implict jump to bb22
bb22:
  ADD s3, zero, zero
  # implict jump to bb23
bb23:
  BNE s3, zero, bb26
  # implict jump to bb24
bb24:
  ADD s0, s2, zero
  ADD s2, s11, zero
  # implict jump to bb25
bb25:
  LW t4, 4(sp)
  ADDIW s1, t4, 1
  ADD t4, s3, zero
  SB t4, 0(sp)
  ADD t4, s1, zero
  SW t4, 8(sp)
  ADD t4, s0, zero
  SW t4, 12(sp)
  ADD t4, s2, zero
  SW t4, 16(sp)
  JAL zero, bb13
bb26:
  LW s1, 0(s1)
  LW t4, 4(sp)
  ADD s0, t4, zero
  ADD s2, s1, zero
  JAL zero, bb25
bb27:
  LA s4, book
  ADD s0, s4, s0
  LW s0, 0(s0)
  XOR s0, s0, zero
  SLTIU s0, s0, 1
  ADD s3, s0, zero
  JAL zero, bb23
bb28:
  LW t4, 24(sp)
  SLLIW s0, t4, 2
  LA s1, dis
  ADD s1, s1, s0
  LA s2, e
  ADDI s2, s2, 64
  ADD s2, s2, s0
  LW s2, 0(s2)
  SW s2, 0(s1)
  LA s1, book
  ADD s0, s1, s0
  SW zero, 0(s0)
  LW t4, 24(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 44(sp)
  JAL zero, bb5
bb29:
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s1, a0, zero
  SLLIW s0, s0, 6
  LA s2, e
  ADD s0, s2, s0
  SLLIW s1, s1, 2
  ADD s0, s0, s1
  CALL getint
  SW a0, 0(s0)
  LW t4, 40(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 36(sp)
  JAL zero, bb3
bb30:
  ADDI s0, zero, 1
  # implict jump to bb31
bb31:
  ADD s1, s0, zero
  LA s2, n
  LW s2, 0(s2)
  SLT s2, s2, s1
  XORI s2, s2, 1
  BNE s2, zero, bb33
  # implict jump to bb32
bb32:
  LW t4, 28(sp)
  ADDIW s2, t4, 1
  ADD t4, s2, zero
  SW t4, 32(sp)
  JAL zero, bb1
bb33:
  LW t4, 28(sp)
  XOR s2, t4, s1
  SLTIU s2, s2, 1
  BNE s2, zero, bb36
  # implict jump to bb34
bb34:
  LW t4, 28(sp)
  SLLIW s2, t4, 6
  LA s3, e
  ADD s2, s3, s2
  SLLIW s3, s1, 2
  ADD s2, s2, s3
  LUI s3, 16
  ADDIW s3, s3, -1
  SW s3, 0(s2)
  # implict jump to bb35
bb35:
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb31
bb36:
  LW t4, 28(sp)
  SLLIW s2, t4, 6
  LA s3, e
  ADD s2, s3, s2
  SLLIW s3, s1, 2
  ADD s2, s2, s3
  ADDI s3, zero, 0
  SW s3, 0(s2)
  JAL zero, bb35
Dijkstra:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  ADDI s0, zero, 1
  # implict jump to bb38
bb38:
  ADD s1, s0, zero
  LA s2, n
  LW s2, 0(s2)
  SLT s2, s2, s1
  XORI s2, s2, 1
  BNE s2, zero, bb58
  # implict jump to bb39
bb39:
  LA s2, book
  ADDI s2, s2, 4
  ADDI s3, zero, 1
  SW s3, 0(s2)
  ADD s2, zero, zero
  ADDI s3, zero, 1
  # implict jump to bb40
bb40:
  ADD s4, s3, zero
  ADD s5, s2, zero
  LA s6, n
  LW s6, 0(s6)
  ADDI s7, zero, 1
  SUBW s6, s6, s7
  SLT s6, s6, s4
  XORI s6, s6, 1
  BNE s6, zero, bb42
  # implict jump to bb41
bb41:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb42:
  ADDI s6, zero, 1
  ADD s7, zero, zero
  LUI s8, 16
  ADDIW s8, s8, -1
  ADD s8, zero, s8
  # implict jump to bb43
bb43:
  ADD s9, s8, zero
  ADD s10, s7, zero
  ADD s11, s6, zero
  ADD t0, s5, zero
  LA t1, n
  LW t1, 0(t1)
  SLT t1, t1, s11
  XORI t1, t1, 1
  BNE t1, zero, bb51
  # implict jump to bb44
bb44:
  SLLIW t1, s10, 2
  LA t2, book
  ADD t2, t2, t1
  ADDI a0, zero, 1
  SW a0, 0(t2)
  ADDI t2, zero, 1
  # implict jump to bb45
bb45:
  ADD a0, t2, zero
  LA a1, n
  LW a1, 0(a1)
  SLT a1, a1, a0
  XORI a1, a1, 1
  BNE a1, zero, bb47
  # implict jump to bb46
bb46:
  ADDIW a1, s4, 1
  ADD s2, t0, zero
  ADD s3, a1, zero
  JAL zero, bb40
bb47:
  SLLIW s2, s10, 6
  LA s3, e
  ADD s2, s3, s2
  SLLIW s3, a0, 2
  ADD s2, s2, s3
  LW a1, 0(s2)
  LUI a2, 16
  ADDIW a2, a2, -1
  SLT a1, a1, a2
  BNE a1, zero, bb49
  # implict jump to bb48
bb48:
  ADDIW s2, a0, 1
  ADD t2, s2, zero
  JAL zero, bb45
bb49:
  LA a1, dis
  ADD s3, a1, s3
  LW a1, 0(s3)
  LA a2, dis
  ADD a2, a2, t1
  LW a3, 0(a2)
  LW a4, 0(s2)
  ADDW a3, a3, a4
  SLT a1, a3, a1
  BNE a1, zero, bb50
  JAL zero, bb48
bb50:
  LW a1, 0(a2)
  LW s2, 0(s2)
  ADDW s2, a1, s2
  SW s2, 0(s3)
  JAL zero, bb48
bb51:
  SLLIW s2, s11, 2
  LA s3, dis
  ADD s3, s3, s2
  LW t0, 0(s3)
  SLT t0, t0, s9
  BNE t0, zero, bb57
  # implict jump to bb52
bb52:
  ADD t0, zero, zero
  # implict jump to bb53
bb53:
  BNE t0, zero, bb56
  # implict jump to bb54
bb54:
  ADD s2, s10, zero
  # implict jump to bb55
bb55:
  ADDIW s3, s11, 1
  ADD s5, t0, zero
  ADD s6, s3, zero
  ADD s7, s2, zero
  ADD s8, s9, zero
  JAL zero, bb43
bb56:
  LW s3, 0(s3)
  ADD s2, s11, zero
  ADD s9, s3, zero
  JAL zero, bb55
bb57:
  LA t1, book
  ADD s2, t1, s2
  LW s2, 0(s2)
  XOR s2, s2, zero
  SLTIU s2, s2, 1
  ADD t0, s2, zero
  JAL zero, bb53
bb58:
  SLLIW s2, s1, 2
  LA s3, dis
  ADD s3, s3, s2
  LA s4, e
  ADDI s4, s4, 64
  ADD s4, s4, s2
  LW s4, 0(s4)
  SW s4, 0(s3)
  LA s3, book
  ADD s2, s3, s2
  SW zero, 0(s2)
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb38
