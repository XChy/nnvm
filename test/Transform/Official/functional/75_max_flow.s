.global max_flow
.global dfs
.global add_node
.global main
.global my_memset
.section .bss
rev:
.space 400
cap:
.space 400
used:
.space 40
to:
.space 400
size:
.space 40

.section .data





INF:
.word 0x70000000
.section .text
max_flow:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, zero, zero
  JAL zero, bb1
bb1:
  XORI s3, zero, 1
  SLTU s4, zero, s3
  BNE s4, zero, bb2
  JAL zero, bb3
bb2:
  LA s3, used
  ADD a0, s3, zero
  ADD a1, zero, zero
  ADDI a2, zero, 10
  CALL my_memset
  LA s3, INF
  LW s4, 0(s3)
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s4, zero
  CALL dfs
  ADD s3, a0, zero
  XOR s4, s3, zero
  SLTIU s5, s4, 1
  BNE s5, zero, bb4
  JAL zero, bb5
bb3:
bb4:
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb5:
  ADDW s4, s2, s3
  ADD s2, s4, zero
  JAL zero, bb1
dfs:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD s9, 16(sp)
  SD s8, 24(sp)
  SD s0, 32(sp)
  SD s5, 40(sp)
  SD s7, 48(sp)
  SD s1, 56(sp)
  SD s6, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD ra, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  XOR s3, s0, s1
  SLTIU s4, s3, 1
  BNE s4, zero, bb7
  JAL zero, bb8
bb7:
  ADD a0, s2, zero
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  LD s8, 24(sp)
  LD s0, 32(sp)
  LD s5, 40(sp)
  LD s7, 48(sp)
  LD s1, 56(sp)
  LD s6, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD ra, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb8:
  ADDI s3, zero, 4
  MULW s4, s0, s3
  LA s3, used
  ADD s5, s3, s4
  ADDI s3, zero, 1
  SW s3, 0(s5)
  ADD s3, zero, zero
  ADD s4, zero, zero
  ADD s5, zero, zero
  JAL zero, bb9
bb9:
  ADDI s6, zero, 4
  MULW s7, s0, s6
  LA s6, size
  ADD s8, s6, s7
  LW s6, 0(s8)
  SLT s7, s5, s6
  XOR s6, s7, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb10
  JAL zero, bb11
bb10:
  ADDI s6, zero, 40
  MULW s7, s0, s6
  LA s6, to
  ADD s8, s6, s7
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADD s6, s8, s7
  LW s7, 0(s6)
  ADDI s6, zero, 4
  MULW s8, s7, s6
  LA s6, used
  ADD s7, s6, s8
  LW s6, 0(s7)
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb12
  JAL zero, bb13
bb11:
  ADD a0, zero, zero
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  LD s8, 24(sp)
  LD s0, 32(sp)
  LD s5, 40(sp)
  LD s7, 48(sp)
  LD s1, 56(sp)
  LD s6, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD ra, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb12:
  ADDIW s6, s5, 1
  ADD s3, s3, zero
  ADD s4, s4, zero
  ADD s5, s6, zero
  JAL zero, bb9
bb13:
  ADDI s6, zero, 40
  MULW s7, s0, s6
  LA s6, cap
  ADD s8, s6, s7
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADD s6, s8, s7
  LW s7, 0(s6)
  SLT s6, zero, s7
  XORI s7, s6, 1
  BNE s7, zero, bb14
  JAL zero, bb15
bb14:
  ADDIW s6, s5, 1
  ADD s3, s3, zero
  ADD s4, s4, zero
  ADD s5, s6, zero
  JAL zero, bb9
bb15:
  ADDI s6, zero, 40
  MULW s7, s0, s6
  LA s6, cap
  ADD s8, s6, s7
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADD s6, s8, s7
  LW s7, 0(s6)
  SLT s6, s2, s7
  BNE s6, zero, bb16
  JAL zero, bb18
bb16:
  ADD s6, s2, zero
  JAL zero, bb17
bb17:
  ADDI s7, zero, 40
  MULW s8, s0, s7
  LA s7, to
  ADD s9, s7, s8
  ADDI s7, zero, 4
  MULW s8, s5, s7
  ADD s7, s9, s8
  LW s8, 0(s7)
  ADD a0, s8, zero
  ADD a1, s1, zero
  ADD a2, s6, zero
  CALL dfs
  ADD s7, a0, zero
  SLT s8, zero, s7
  BNE s8, zero, bb19
  JAL zero, bb20
bb18:
  ADDI s3, zero, 40
  MULW s4, s0, s3
  LA s3, cap
  ADD s7, s3, s4
  ADDI s3, zero, 4
  MULW s4, s5, s3
  ADD s3, s7, s4
  LW s4, 0(s3)
  ADD s6, s4, zero
  JAL zero, bb17
bb19:
  ADDI s8, zero, 40
  MULW s9, s0, s8
  LA s8, cap
  ADD s10, s8, s9
  ADDI s8, zero, 4
  MULW s9, s5, s8
  ADD s8, s10, s9
  ADDI s9, zero, 40
  MULW s10, s0, s9
  LA s9, cap
  ADD s11, s9, s10
  ADDI s9, zero, 4
  MULW s10, s5, s9
  ADD s9, s11, s10
  LW s10, 0(s9)
  SUBW s9, s10, s7
  SW s9, 0(s8)
  ADDI s8, zero, 40
  MULW s9, s0, s8
  LA s8, to
  ADD s10, s8, s9
  ADDI s8, zero, 4
  MULW s9, s5, s8
  ADD s8, s10, s9
  LW s9, 0(s8)
  ADDI s8, zero, 40
  MULW s10, s9, s8
  LA s8, cap
  ADD s9, s8, s10
  ADDI s8, zero, 40
  MULW s10, s0, s8
  LA s8, rev
  ADD s11, s8, s10
  ADDI s8, zero, 4
  MULW s10, s5, s8
  ADD s8, s11, s10
  LW s10, 0(s8)
  ADDI s8, zero, 4
  MULW s11, s10, s8
  ADD s8, s9, s11
  ADDI s9, zero, 40
  MULW s10, s0, s9
  LA s9, to
  ADD s11, s9, s10
  ADDI s9, zero, 4
  MULW s10, s5, s9
  ADD s9, s11, s10
  LW s10, 0(s9)
  ADDI s9, zero, 40
  MULW s11, s10, s9
  LA s9, cap
  ADD s10, s9, s11
  ADDI s9, zero, 40
  MULW s11, s0, s9
  LA s9, rev
  ADD t0, s9, s11
  ADDI s9, zero, 4
  MULW s11, s5, s9
  ADD s9, t0, s11
  LW s11, 0(s9)
  ADDI s9, zero, 4
  MULW t0, s11, s9
  ADD s9, s10, t0
  LW s10, 0(s9)
  ADDW s9, s10, s7
  SW s9, 0(s8)
  ADD a0, s7, zero
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  LD s8, 24(sp)
  LD s0, 32(sp)
  LD s5, 40(sp)
  LD s7, 48(sp)
  LD s1, 56(sp)
  LD s6, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD ra, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb20:
  ADDIW s8, s5, 1
  ADD s3, s7, zero
  ADD s4, s6, zero
  ADD s5, s8, zero
  JAL zero, bb9
add_node:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADDI s3, zero, 40
  MULW s4, s0, s3
  LA s3, to
  ADD s5, s3, s4
  ADDI s3, zero, 4
  MULW s4, s0, s3
  LA s3, size
  ADD s6, s3, s4
  LW s3, 0(s6)
  ADDI s4, zero, 4
  MULW s6, s3, s4
  ADD s3, s5, s6
  SW s1, 0(s3)
  ADDI s3, zero, 40
  MULW s4, s0, s3
  LA s3, cap
  ADD s5, s3, s4
  ADDI s3, zero, 4
  MULW s4, s0, s3
  LA s3, size
  ADD s6, s3, s4
  LW s3, 0(s6)
  ADDI s4, zero, 4
  MULW s6, s3, s4
  ADD s3, s5, s6
  SW s2, 0(s3)
  ADDI s2, zero, 40
  MULW s3, s0, s2
  LA s2, rev
  ADD s4, s2, s3
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s2, size
  ADD s5, s2, s3
  LW s2, 0(s5)
  ADDI s3, zero, 4
  MULW s5, s2, s3
  ADD s2, s4, s5
  ADDI s3, zero, 4
  MULW s4, s1, s3
  LA s3, size
  ADD s5, s3, s4
  LW s3, 0(s5)
  SW s3, 0(s2)
  ADDI s2, zero, 40
  MULW s3, s1, s2
  LA s2, to
  ADD s4, s2, s3
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, size
  ADD s5, s2, s3
  LW s2, 0(s5)
  ADDI s3, zero, 4
  MULW s5, s2, s3
  ADD s2, s4, s5
  SW s0, 0(s2)
  ADDI s2, zero, 40
  MULW s3, s1, s2
  LA s2, cap
  ADD s4, s2, s3
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, size
  ADD s5, s2, s3
  LW s2, 0(s5)
  ADDI s3, zero, 4
  MULW s5, s2, s3
  ADD s2, s4, s5
  SW zero, 0(s2)
  ADDI s2, zero, 40
  MULW s3, s1, s2
  LA s2, rev
  ADD s4, s2, s3
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, size
  ADD s5, s2, s3
  LW s2, 0(s5)
  ADDI s3, zero, 4
  MULW s5, s2, s3
  ADD s2, s4, s5
  ADDI s3, zero, 4
  MULW s4, s0, s3
  LA s3, size
  ADD s5, s3, s4
  LW s3, 0(s5)
  SW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s2, size
  ADD s4, s2, s3
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, size
  ADD s2, s0, s3
  LW s0, 0(s2)
  ADDIW s2, s0, 1
  SW s2, 0(s4)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, size
  ADD s3, s0, s2
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, size
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADDIW s1, s0, 1
  SW s1, 0(s3)
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
  CALL getint
  ADD s1, a0, zero
  LA s2, size
  ADD a0, s2, zero
  ADD a1, zero, zero
  ADDI a2, zero, 10
  CALL my_memset
  ADD s2, s1, zero
  JAL zero, bb23
bb23:
  SLT s1, zero, s2
  XOR s3, s1, zero
  SLTU s1, zero, s3
  BNE s1, zero, bb24
  JAL zero, bb25
bb24:
  CALL getint
  ADD s1, a0, zero
  CALL getint
  ADD s3, a0, zero
  CALL getint
  ADD s4, a0, zero
  ADD a0, s1, zero
  ADD a1, s3, zero
  ADD a2, s4, zero
  CALL add_node
  ADDI s1, zero, 1
  SUBW s3, s2, s1
  ADD s2, s3, zero
  JAL zero, bb23
bb25:
  ADDI a0, zero, 1
  ADD a1, s0, zero
  CALL max_flow
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL putint
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
my_memset:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, zero, zero
  JAL zero, bb27
bb27:
  SLT s4, s3, s2
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb28
  JAL zero, bb29
bb28:
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s4, s0, s5
  SW s1, 0(s4)
  ADDIW s4, s3, 1
  ADD s3, s4, zero
  JAL zero, bb27
bb29:
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
