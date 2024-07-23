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
  ADDI sp, sp, -176
  SD ra, 56(sp)
  SD s0, 64(sp)
  SD s1, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
  SD s5, 104(sp)
  SD s6, 112(sp)
  SD s8, 120(sp)
  SD s7, 128(sp)
  SD s9, 136(sp)
  SD s11, 144(sp)
  SD s10, 160(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, n
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, m
  SW s0, 0(s1)
  ADDI t4, zero, 1
  SW t4, 4(sp)
  # implict jump to bb1
bb1:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LA s2, n
  LW t4, 0(s2)
  SW t4, 48(sp)
  LW t4, 48(sp)
  LW t3, 44(sp)
  SLT s3, t4, t3
  XORI s3, s3, 1
  BNE s3, zero, bb30
  # implict jump to bb2
bb2:
  ADDI t4, zero, 1
  SW t4, 40(sp)
  # implict jump to bb3
bb3:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LA s5, m
  LW s5, 0(s5)
  LW t4, 36(sp)
  SLT s5, s5, t4
  XORI s5, s5, 1
  BNE s5, zero, bb29
  # implict jump to bb4
bb4:
  LA s5, e
  ADDI t4, s5, 64
  SD t4, 152(sp)
  ADDI t4, zero, 1
  SW t4, 32(sp)
  # implict jump to bb5
bb5:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LA s8, n
  LW t4, 0(s8)
  SW t4, 16(sp)
  LW t4, 16(sp)
  LW t3, 28(sp)
  SLT s9, t4, t3
  XORI s9, s9, 1
  BNE s9, zero, bb28
  # implict jump to bb6
bb6:
  LA s9, book
  ADDI s10, zero, 1
  SW s10, 4(s9)
  ADDI s9, zero, 1
  LW t3, 16(sp)
  SUBW t4, t3, s9
  SW t4, 20(sp)
  ADD s10, zero, zero
  ADDI s11, zero, 1
  # implict jump to bb7
bb7:
  ADD t4, s11, zero
  SW t4, 24(sp)
  ADD s1, s10, zero
  LW t4, 20(sp)
  LW t3, 24(sp)
  SLT s0, t4, t3
  XORI s0, s0, 1
  BNE s0, zero, bb12
  # implict jump to bb8
bb8:
  ADDI s0, zero, 1
  # implict jump to bb9
bb9:
  ADD s3, s0, zero
  LA s4, n
  LW s4, 0(s4)
  SLT s4, s4, s3
  XORI s4, s4, 1
  BNE s4, zero, bb11
  # implict jump to bb10
bb10:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  LD s5, 104(sp)
  LD s6, 112(sp)
  LD s8, 120(sp)
  LD s7, 128(sp)
  LD s9, 136(sp)
  LD s11, 144(sp)
  LD s10, 160(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb11:
  SLLIW s4, s3, 2
  LA s5, dis
  ADD s4, s5, s4
  LW s4, 0(s4)
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s3, s3, 1
  ADD s0, s3, zero
  JAL zero, bb9
bb12:
  ADDI t4, zero, 1
  SW t4, 52(sp)
  ADD t4, s1, zero
  SB t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  LUI s4, 16
  ADDIW s4, s4, -1
  ADD t4, zero, s4
  SW t4, 12(sp)
  # implict jump to bb13
bb13:
  LW t4, 12(sp)
  ADD s5, t4, zero
  LW t4, 8(sp)
  ADD s6, t4, zero
  LB t4, 0(sp)
  ADD s7, t4, zero
  LW t4, 52(sp)
  ADD s2, t4, zero
  LW t4, 16(sp)
  SLT s9, t4, s2
  XORI s9, s9, 1
  BNE s9, zero, bb21
  # implict jump to bb14
bb14:
  SLLIW s9, s6, 2
  LA s8, book
  ADD s8, s8, s9
  ADDI s4, zero, 1
  SW s4, 0(s8)
  SLLIW s4, s6, 6
  LA s8, e
  ADD s4, s8, s4
  LA s8, dis
  ADD s8, s8, s9
  ADDI s9, zero, 1
  # implict jump to bb15
bb15:
  ADD s3, s9, zero
  LW t4, 16(sp)
  SLT s1, t4, s3
  XORI s1, s1, 1
  BNE s1, zero, bb17
  # implict jump to bb16
bb16:
  LW t4, 24(sp)
  ADDIW s1, t4, 1
  ADD s10, s7, zero
  ADD s11, s1, zero
  JAL zero, bb7
bb17:
  SLLIW s1, s3, 2
  ADD s10, s4, s1
  LW s10, 0(s10)
  LUI s11, 16
  ADDIW s11, s11, -1
  SLT s11, s10, s11
  BNE s11, zero, bb19
  # implict jump to bb18
bb18:
  ADDIW s0, s3, 1
  ADD s9, s0, zero
  JAL zero, bb15
bb19:
  LA s11, dis
  ADD s1, s11, s1
  LW s11, 0(s1)
  LW s0, 0(s8)
  ADDW s0, s0, s10
  BLT s0, s11, bb20
  JAL zero, bb18
bb20:
  LW s0, 0(s8)
  ADDW s0, s0, s10
  SW s0, 0(s1)
  JAL zero, bb18
bb21:
  SLLIW s0, s2, 2
  LA s1, dis
  ADD s1, s1, s0
  LW s1, 0(s1)
  BLT s1, s5, bb27
  # implict jump to bb22
bb22:
  ADD s3, zero, zero
  # implict jump to bb23
bb23:
  BNE s3, zero, bb26
  # implict jump to bb24
bb24:
  ADD s0, s6, zero
  ADD s4, s5, zero
  # implict jump to bb25
bb25:
  ADDIW s1, s2, 1
  ADD t4, s1, zero
  SW t4, 52(sp)
  ADD t4, s3, zero
  SB t4, 0(sp)
  ADD t4, s0, zero
  SW t4, 8(sp)
  ADD t4, s4, zero
  SW t4, 12(sp)
  JAL zero, bb13
bb26:
  ADD s0, s2, zero
  ADD s4, s1, zero
  JAL zero, bb25
bb27:
  LA s4, book
  ADD s0, s4, s0
  LW s0, 0(s0)
  SLTIU s0, s0, 1
  ADD s3, s0, zero
  JAL zero, bb23
bb28:
  LW t4, 28(sp)
  SLLIW s0, t4, 2
  LA s1, dis
  ADD s1, s1, s0
  LD t4, 152(sp)
  ADD s2, t4, s0
  LW s2, 0(s2)
  SW s2, 0(s1)
  LA s1, book
  ADD s0, s1, s0
  SW zero, 0(s0)
  LW t4, 28(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 32(sp)
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
  LW t4, 36(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 40(sp)
  JAL zero, bb3
bb30:
  LW t4, 44(sp)
  SLLIW s0, t4, 6
  LA s1, e
  ADD s0, s1, s0
  LW t4, 44(sp)
  SLLIW s1, t4, 6
  LA s2, e
  ADD s1, s2, s1
  ADDI s2, zero, 1
  # implict jump to bb31
bb31:
  ADD s3, s2, zero
  LW t4, 48(sp)
  SLT s4, t4, s3
  XORI s4, s4, 1
  BNE s4, zero, bb33
  # implict jump to bb32
bb32:
  LW t4, 44(sp)
  ADDIW s4, t4, 1
  ADD t4, s4, zero
  SW t4, 4(sp)
  JAL zero, bb1
bb33:
  LW t4, 44(sp)
  XOR s4, t4, s3
  SLTIU s4, s4, 1
  BNE s4, zero, bb36
  # implict jump to bb34
bb34:
  SLLIW s4, s3, 2
  ADD s4, s1, s4
  LUI s5, 16
  ADDIW s5, s5, -1
  SW s5, 0(s4)
  # implict jump to bb35
bb35:
  ADDIW s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb31
bb36:
  SLLIW s4, s3, 2
  ADD s4, s0, s4
  ADDI s5, zero, 0
  SW s5, 0(s4)
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
  LA s0, e
  ADDI s0, s0, 64
  ADDI s1, zero, 1
  # implict jump to bb38
bb38:
  ADD s2, s1, zero
  LA s3, n
  LW s3, 0(s3)
  SLT s4, s3, s2
  XORI s4, s4, 1
  BNE s4, zero, bb58
  # implict jump to bb39
bb39:
  LA s4, book
  ADDI s5, zero, 1
  SW s5, 4(s4)
  ADDI s4, zero, 1
  SUBW s4, s3, s4
  ADD s5, zero, zero
  ADDI s6, zero, 1
  # implict jump to bb40
bb40:
  ADD s7, s6, zero
  ADD s8, s5, zero
  SLT s9, s4, s7
  XORI s9, s9, 1
  BNE s9, zero, bb42
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
  ADDI s9, zero, 1
  ADD s10, zero, zero
  LUI s11, 16
  ADDIW s11, s11, -1
  ADD s11, zero, s11
  # implict jump to bb43
bb43:
  ADD t0, s11, zero
  ADD t1, s10, zero
  ADD t2, s8, zero
  ADD a0, s9, zero
  SLT a1, s3, a0
  XORI a1, a1, 1
  BNE a1, zero, bb51
  # implict jump to bb44
bb44:
  SLLIW a1, t1, 2
  LA a2, book
  ADD a2, a2, a1
  ADDI a3, zero, 1
  SW a3, 0(a2)
  SLLIW a2, t1, 6
  LA a3, e
  ADD a2, a3, a2
  LA a3, dis
  ADD a1, a3, a1
  ADDI a3, zero, 1
  # implict jump to bb45
bb45:
  ADD a4, a3, zero
  SLT a5, s3, a4
  XORI a5, a5, 1
  BNE a5, zero, bb47
  # implict jump to bb46
bb46:
  ADDIW a5, s7, 1
  ADD s5, t2, zero
  ADD s6, a5, zero
  JAL zero, bb40
bb47:
  SLLIW s5, a4, 2
  ADD s6, a2, s5
  LW s6, 0(s6)
  LUI a5, 16
  ADDIW a5, a5, -1
  SLT a5, s6, a5
  BNE a5, zero, bb49
  # implict jump to bb48
bb48:
  ADDIW s5, a4, 1
  ADD a3, s5, zero
  JAL zero, bb45
bb49:
  LA a5, dis
  ADD s5, a5, s5
  LW a5, 0(s5)
  LW a6, 0(a1)
  ADDW a6, a6, s6
  BLT a6, a5, bb50
  JAL zero, bb48
bb50:
  LW a5, 0(a1)
  ADDW s6, a5, s6
  SW s6, 0(s5)
  JAL zero, bb48
bb51:
  SLLIW s5, a0, 2
  LA s6, dis
  ADD s6, s6, s5
  LW s6, 0(s6)
  BLT s6, t0, bb57
  # implict jump to bb52
bb52:
  ADD t2, zero, zero
  # implict jump to bb53
bb53:
  BNE t2, zero, bb56
  # implict jump to bb54
bb54:
  ADD s5, t1, zero
  # implict jump to bb55
bb55:
  ADDIW s6, a0, 1
  ADD s9, s6, zero
  ADD s8, t2, zero
  ADD s10, s5, zero
  ADD s11, t0, zero
  JAL zero, bb43
bb56:
  ADD s5, a0, zero
  ADD t0, s6, zero
  JAL zero, bb55
bb57:
  LA a1, book
  ADD s5, a1, s5
  LW s5, 0(s5)
  SLTIU s5, s5, 1
  ADD t2, s5, zero
  JAL zero, bb53
bb58:
  SLLIW s3, s2, 2
  LA s4, dis
  ADD s4, s4, s3
  ADD s5, s0, s3
  LW s5, 0(s5)
  SW s5, 0(s4)
  LA s4, book
  ADD s3, s4, s3
  SW zero, 0(s3)
  ADDIW s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb38
