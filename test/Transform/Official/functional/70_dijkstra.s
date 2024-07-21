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
  SD ra, 56(sp)
  SD s0, 64(sp)
  SD s1, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
  SD s7, 104(sp)
  SD s8, 112(sp)
  SD s5, 120(sp)
  SD s6, 128(sp)
  SD s9, 136(sp)
  SD s10, 144(sp)
  SD s11, 152(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, n
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, m
  SW s0, 0(s1)
  ADDI t4, zero, 1
  SW t4, 36(sp)
  # implict jump to bb1
bb1:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LA s2, n
  LW t4, 0(s2)
  SW t4, 28(sp)
  LW t4, 28(sp)
  LW t3, 32(sp)
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
  SW t4, 44(sp)
  LA s5, m
  LW s5, 0(s5)
  LW t4, 44(sp)
  SLT s5, s5, t4
  XORI s5, s5, 1
  BNE s5, zero, bb29
  # implict jump to bb4
bb4:
  ADDI t4, zero, 1
  SW t4, 48(sp)
  # implict jump to bb5
bb5:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LA s7, n
  LW t4, 0(s7)
  SW t4, 16(sp)
  LW t4, 16(sp)
  LW t3, 52(sp)
  SLT s8, t4, t3
  XORI s8, s8, 1
  BNE s8, zero, bb28
  # implict jump to bb6
bb6:
  LA s8, book
  ADDI s8, s8, 4
  ADDI s9, zero, 1
  SW s9, 0(s8)
  ADDI s8, zero, 1
  LW t3, 16(sp)
  SUBW t4, t3, s8
  SW t4, 20(sp)
  ADD s9, zero, zero
  ADDI s10, zero, 1
  # implict jump to bb7
bb7:
  ADD t4, s10, zero
  SW t4, 24(sp)
  ADD s2, s9, zero
  LW t4, 20(sp)
  LW t3, 24(sp)
  SLT s1, t4, t3
  XORI s1, s1, 1
  BNE s1, zero, bb12
  # implict jump to bb8
bb8:
  ADDI s1, zero, 1
  # implict jump to bb9
bb9:
  ADD s0, s1, zero
  LA s3, n
  LW s3, 0(s3)
  SLT s3, s3, s0
  XORI s3, s3, 1
  BNE s3, zero, bb11
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
  LD s7, 104(sp)
  LD s8, 112(sp)
  LD s5, 120(sp)
  LD s6, 128(sp)
  LD s9, 136(sp)
  LD s10, 144(sp)
  LD s11, 152(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb11:
  SLLIW s3, s0, 2
  LA s4, dis
  ADD s3, s4, s3
  LW s3, 0(s3)
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s0, s0, 1
  ADD s1, s0, zero
  JAL zero, bb9
bb12:
  ADDI t4, zero, 1
  SW t4, 4(sp)
  ADD t4, s2, zero
  SB t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  LUI s3, 16
  ADDIW s3, s3, -1
  ADD t4, zero, s3
  SW t4, 12(sp)
  # implict jump to bb13
bb13:
  LW t4, 12(sp)
  ADD s4, t4, zero
  LW t4, 8(sp)
  ADD s5, t4, zero
  LB t4, 0(sp)
  ADD s6, t4, zero
  LW t4, 4(sp)
  ADD s11, t4, zero
  LW t4, 16(sp)
  SLT s8, t4, s11
  XORI s8, s8, 1
  BNE s8, zero, bb21
  # implict jump to bb14
bb14:
  SLLIW s8, s5, 2
  LA s7, book
  ADD s7, s7, s8
  ADDI s3, zero, 1
  SW s3, 0(s7)
  ADDI s3, zero, 1
  # implict jump to bb15
bb15:
  ADD s7, s3, zero
  LW t4, 16(sp)
  SLT s2, t4, s7
  XORI s2, s2, 1
  BNE s2, zero, bb17
  # implict jump to bb16
bb16:
  LW t4, 24(sp)
  ADDIW s2, t4, 1
  ADD s9, s6, zero
  ADD s10, s2, zero
  JAL zero, bb7
bb17:
  SLLIW s2, s5, 6
  LA s9, e
  ADD s2, s9, s2
  SLLIW s9, s7, 2
  ADD s2, s2, s9
  LW s2, 0(s2)
  LUI s10, 16
  ADDIW s10, s10, -1
  SLT s10, s2, s10
  BNE s10, zero, bb19
  # implict jump to bb18
bb18:
  ADDIW s0, s7, 1
  ADD s3, s0, zero
  JAL zero, bb15
bb19:
  LA s10, dis
  ADD s9, s10, s9
  LW s10, 0(s9)
  LA s1, dis
  ADD s1, s1, s8
  LW s0, 0(s1)
  ADDW s0, s0, s2
  BLT s0, s10, bb20
  JAL zero, bb18
bb20:
  LW s0, 0(s1)
  ADDW s0, s0, s2
  SW s0, 0(s9)
  JAL zero, bb18
bb21:
  SLLIW s0, s11, 2
  LA s1, dis
  ADD s1, s1, s0
  LW s1, 0(s1)
  BLT s1, s4, bb27
  # implict jump to bb22
bb22:
  ADD s2, zero, zero
  # implict jump to bb23
bb23:
  BNE s2, zero, bb26
  # implict jump to bb24
bb24:
  ADD s0, s5, zero
  ADD s3, s4, zero
  # implict jump to bb25
bb25:
  ADDIW s1, s11, 1
  ADD t4, s1, zero
  SW t4, 4(sp)
  ADD t4, s2, zero
  SB t4, 0(sp)
  ADD t4, s0, zero
  SW t4, 8(sp)
  ADD t4, s3, zero
  SW t4, 12(sp)
  JAL zero, bb13
bb26:
  ADD s0, s11, zero
  ADD s3, s1, zero
  JAL zero, bb25
bb27:
  LA s3, book
  ADD s0, s3, s0
  LW s0, 0(s0)
  SLTIU s0, s0, 1
  ADD s2, s0, zero
  JAL zero, bb23
bb28:
  LW t4, 52(sp)
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
  LW t4, 52(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 48(sp)
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
  LW t4, 44(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 40(sp)
  JAL zero, bb3
bb30:
  ADDI s0, zero, 1
  # implict jump to bb31
bb31:
  ADD s1, s0, zero
  LW t4, 28(sp)
  SLT s2, t4, s1
  XORI s2, s2, 1
  BNE s2, zero, bb33
  # implict jump to bb32
bb32:
  LW t4, 32(sp)
  ADDIW s2, t4, 1
  ADD t4, s2, zero
  SW t4, 36(sp)
  JAL zero, bb1
bb33:
  LW t4, 32(sp)
  XOR s2, t4, s1
  SLTIU s2, s2, 1
  BNE s2, zero, bb36
  # implict jump to bb34
bb34:
  LW t4, 32(sp)
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
  LW t4, 32(sp)
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
  SLT s3, s2, s1
  XORI s3, s3, 1
  BNE s3, zero, bb58
  # implict jump to bb39
bb39:
  LA s3, book
  ADDI s3, s3, 4
  ADDI s4, zero, 1
  SW s4, 0(s3)
  ADDI s3, zero, 1
  SUBW s3, s2, s3
  ADD s4, zero, zero
  ADDI s5, zero, 1
  # implict jump to bb40
bb40:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLT s8, s3, s6
  XORI s8, s8, 1
  BNE s8, zero, bb42
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
  ADDI s8, zero, 1
  ADD s9, zero, zero
  LUI s10, 16
  ADDIW s10, s10, -1
  ADD s10, zero, s10
  # implict jump to bb43
bb43:
  ADD s11, s10, zero
  ADD t0, s9, zero
  ADD t1, s7, zero
  ADD t2, s8, zero
  SLT a0, s2, t2
  XORI a0, a0, 1
  BNE a0, zero, bb51
  # implict jump to bb44
bb44:
  SLLIW a0, t0, 2
  LA a1, book
  ADD a1, a1, a0
  ADDI a2, zero, 1
  SW a2, 0(a1)
  ADDI a1, zero, 1
  # implict jump to bb45
bb45:
  ADD a2, a1, zero
  SLT a3, s2, a2
  XORI a3, a3, 1
  BNE a3, zero, bb47
  # implict jump to bb46
bb46:
  ADDIW a3, s6, 1
  ADD s4, t1, zero
  ADD s5, a3, zero
  JAL zero, bb40
bb47:
  SLLIW s4, t0, 6
  LA s5, e
  ADD s4, s5, s4
  SLLIW s5, a2, 2
  ADD s4, s4, s5
  LW s4, 0(s4)
  LUI a3, 16
  ADDIW a3, a3, -1
  SLT a3, s4, a3
  BNE a3, zero, bb49
  # implict jump to bb48
bb48:
  ADDIW s4, a2, 1
  ADD a1, s4, zero
  JAL zero, bb45
bb49:
  LA a3, dis
  ADD s5, a3, s5
  LW a3, 0(s5)
  LA a4, dis
  ADD a4, a4, a0
  LW a5, 0(a4)
  ADDW a5, a5, s4
  BLT a5, a3, bb50
  JAL zero, bb48
bb50:
  LW a3, 0(a4)
  ADDW s4, a3, s4
  SW s4, 0(s5)
  JAL zero, bb48
bb51:
  SLLIW s4, t2, 2
  LA s5, dis
  ADD s5, s5, s4
  LW s5, 0(s5)
  BLT s5, s11, bb57
  # implict jump to bb52
bb52:
  ADD t1, zero, zero
  # implict jump to bb53
bb53:
  BNE t1, zero, bb56
  # implict jump to bb54
bb54:
  ADD s4, t0, zero
  # implict jump to bb55
bb55:
  ADDIW s5, t2, 1
  ADD s8, s5, zero
  ADD s7, t1, zero
  ADD s9, s4, zero
  ADD s10, s11, zero
  JAL zero, bb43
bb56:
  ADD s4, t2, zero
  ADD s11, s5, zero
  JAL zero, bb55
bb57:
  LA a0, book
  ADD s4, a0, s4
  LW s4, 0(s4)
  SLTIU s4, s4, 1
  ADD t1, s4, zero
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
