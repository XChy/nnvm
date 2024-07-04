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
  ADDI sp, sp, -80
  SD ra, 32(sp)
  SD s3, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  SD s0, 64(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 24(sp)
  SW s1, 16(sp)
  ADDI s0, zero, 0
  SW s0, 8(sp)
  JAL zero, bb1
bb1:
  ADDI s0, zero, 0
  XORI s1, s0, 1
  SLTU s0, zero, s1
  BNE s0, zero, bb2
  JAL zero, bb3
bb2:
  LA s0, used
  ADD a0, s0, zero
  ADD a1, zero, zero
  ADDI a2, zero, 10
  CALL my_memset
  LW s0, 24(sp)
  LW s1, 16(sp)
  LA s2, INF
  LW s3, 0(s2)
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s3, zero
  CALL dfs
  ADD s0, a0, zero
  SW s0, 0(sp)
  XOR s1, s0, zero
  SLTIU s0, s1, 1
  BNE s0, zero, bb4
  JAL zero, bb5
bb3:
bb4:
  LW s0, 8(sp)
  ADD a0, s0, zero
  LD ra, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb5:
  LW s0, 8(sp)
  LW s1, 0(sp)
  ADDW s2, s0, s1
  SW s2, 8(sp)
  JAL zero, bb1
dfs:
  ADDI sp, sp, -112
  SD s4, 48(sp)
  SD s3, 56(sp)
  SD ra, 64(sp)
  SD s2, 72(sp)
  SD s1, 80(sp)
  SD s5, 88(sp)
  SD s0, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  SW s0, 40(sp)
  SW s1, 32(sp)
  SW s2, 24(sp)
  LW s0, 40(sp)
  LW s1, 32(sp)
  XOR s2, s0, s1
  SLTIU s0, s2, 1
  BNE s0, zero, bb7
  JAL zero, bb8
bb7:
  LW s0, 24(sp)
  ADD a0, s0, zero
  LD s4, 48(sp)
  LD s3, 56(sp)
  LD ra, 64(sp)
  LD s2, 72(sp)
  LD s1, 80(sp)
  LD s5, 88(sp)
  LD s0, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb8:
  LW s0, 40(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, used
  ADD s1, s0, s2
  ADDI s0, zero, 1
  SW s0, 0(s1)
  SW zero, 16(sp)
  JAL zero, bb9
bb9:
  LW s0, 16(sp)
  LW s1, 40(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, size
  ADD s2, s1, s3
  LW s1, 0(s2)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb10
  JAL zero, bb11
bb10:
  LW s0, 40(sp)
  ADDI s1, zero, 40
  MULW s2, s0, s1
  LA s0, to
  ADD s1, s0, s2
  LW s0, 16(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, used
  ADD s1, s0, s2
  LW s0, 0(s1)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb12
  JAL zero, bb13
bb11:
  ADD a0, zero, zero
  LD s4, 48(sp)
  LD s3, 56(sp)
  LD ra, 64(sp)
  LD s2, 72(sp)
  LD s1, 80(sp)
  LD s5, 88(sp)
  LD s0, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb12:
  LW s0, 16(sp)
  ADDIW s1, s0, 1
  SW s1, 16(sp)
  JAL zero, bb9
bb13:
  LW s0, 40(sp)
  ADDI s1, zero, 40
  MULW s2, s0, s1
  LA s0, cap
  ADD s1, s0, s2
  LW s0, 16(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 0(s0)
  SLT s0, zero, s1
  XORI s1, s0, 1
  BNE s1, zero, bb14
  JAL zero, bb15
bb14:
  LW s0, 16(sp)
  ADDIW s1, s0, 1
  SW s1, 16(sp)
  JAL zero, bb9
bb15:
  LW s0, 24(sp)
  LW s1, 40(sp)
  ADDI s2, zero, 40
  MULW s3, s1, s2
  LA s1, cap
  ADD s2, s1, s3
  LW s1, 16(sp)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADD s1, s2, s4
  LW s2, 0(s1)
  SLT s1, s0, s2
  BNE s1, zero, bb16
  JAL zero, bb18
bb16:
  LW s0, 24(sp)
  SW s0, 8(sp)
  JAL zero, bb17
bb17:
  LW s0, 40(sp)
  ADDI s1, zero, 40
  MULW s2, s0, s1
  LA s0, to
  ADD s1, s0, s2
  LW s0, 16(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 0(s0)
  LW s0, 32(sp)
  LW s2, 8(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  ADD a2, s2, zero
  CALL dfs
  ADD s0, a0, zero
  SW s0, 0(sp)
  SLT s1, zero, s0
  BNE s1, zero, bb19
  JAL zero, bb20
bb18:
  LW s0, 40(sp)
  ADDI s1, zero, 40
  MULW s2, s0, s1
  LA s0, cap
  ADD s1, s0, s2
  LW s0, 16(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 0(s0)
  SW s1, 8(sp)
  JAL zero, bb17
bb19:
  LW s0, 40(sp)
  ADDI s1, zero, 40
  MULW s2, s0, s1
  LA s0, cap
  ADD s1, s0, s2
  LW s0, 16(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 40(sp)
  ADDI s2, zero, 40
  MULW s3, s1, s2
  LA s1, cap
  ADD s2, s1, s3
  LW s1, 16(sp)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADD s1, s2, s4
  LW s2, 0(s1)
  LW s1, 0(sp)
  SUBW s3, s2, s1
  SW s3, 0(s0)
  LW s0, 40(sp)
  ADDI s1, zero, 40
  MULW s2, s0, s1
  LA s0, to
  ADD s1, s0, s2
  LW s0, 16(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 0(s0)
  ADDI s0, zero, 40
  MULW s2, s1, s0
  LA s0, cap
  ADD s1, s0, s2
  LW s0, 40(sp)
  ADDI s2, zero, 40
  MULW s3, s0, s2
  LA s0, rev
  ADD s2, s0, s3
  LW s0, 16(sp)
  ADDI s3, zero, 4
  MULW s4, s0, s3
  ADD s0, s2, s4
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADD s0, s1, s3
  LW s1, 40(sp)
  ADDI s2, zero, 40
  MULW s3, s1, s2
  LA s1, to
  ADD s2, s1, s3
  LW s1, 16(sp)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADD s1, s2, s4
  LW s2, 0(s1)
  ADDI s1, zero, 40
  MULW s3, s2, s1
  LA s1, cap
  ADD s2, s1, s3
  LW s1, 40(sp)
  ADDI s3, zero, 40
  MULW s4, s1, s3
  LA s1, rev
  ADD s3, s1, s4
  LW s1, 16(sp)
  ADDI s4, zero, 4
  MULW s5, s1, s4
  ADD s1, s3, s5
  LW s3, 0(s1)
  ADDI s1, zero, 4
  MULW s4, s3, s1
  ADD s1, s2, s4
  LW s2, 0(s1)
  LW s1, 0(sp)
  ADDW s3, s2, s1
  SW s3, 0(s0)
  LW s0, 0(sp)
  ADD a0, s0, zero
  LD s4, 48(sp)
  LD s3, 56(sp)
  LD ra, 64(sp)
  LD s2, 72(sp)
  LD s1, 80(sp)
  LD s5, 88(sp)
  LD s0, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb20:
  LW s0, 16(sp)
  ADDIW s1, s0, 1
  SW s1, 16(sp)
  JAL zero, bb9
add_node:
  ADDI sp, sp, -64
  SD ra, 24(sp)
  SD s3, 32(sp)
  SD s2, 40(sp)
  SD s1, 48(sp)
  SD s0, 56(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  SW s0, 16(sp)
  SW s1, 8(sp)
  SW s2, 0(sp)
  LW s0, 16(sp)
  ADDI s1, zero, 40
  MULW s2, s0, s1
  LA s0, to
  ADD s1, s0, s2
  LW s0, 16(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, size
  ADD s2, s0, s3
  LW s0, 0(s2)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 8(sp)
  SW s1, 0(s0)
  LW s0, 16(sp)
  ADDI s1, zero, 40
  MULW s2, s0, s1
  LA s0, cap
  ADD s1, s0, s2
  LW s0, 16(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, size
  ADD s2, s0, s3
  LW s0, 0(s2)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 0(sp)
  SW s1, 0(s0)
  LW s0, 16(sp)
  ADDI s1, zero, 40
  MULW s2, s0, s1
  LA s0, rev
  ADD s1, s0, s2
  LW s0, 16(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, size
  ADD s2, s0, s3
  LW s0, 0(s2)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, size
  ADD s2, s1, s3
  LW s1, 0(s2)
  SW s1, 0(s0)
  LW s0, 8(sp)
  ADDI s1, zero, 40
  MULW s2, s0, s1
  LA s0, to
  ADD s1, s0, s2
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, size
  ADD s2, s0, s3
  LW s0, 0(s2)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 16(sp)
  SW s1, 0(s0)
  LW s0, 8(sp)
  ADDI s1, zero, 40
  MULW s2, s0, s1
  LA s0, cap
  ADD s1, s0, s2
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, size
  ADD s2, s0, s3
  LW s0, 0(s2)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  SW zero, 0(s0)
  LW s0, 8(sp)
  ADDI s1, zero, 40
  MULW s2, s0, s1
  LA s0, rev
  ADD s1, s0, s2
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, size
  ADD s2, s0, s3
  LW s0, 0(s2)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 16(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, size
  ADD s2, s1, s3
  LW s1, 0(s2)
  SW s1, 0(s0)
  LW s0, 16(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, size
  ADD s1, s0, s2
  LW s0, 16(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, size
  ADD s2, s0, s3
  LW s0, 0(s2)
  ADDIW s2, s0, 1
  SW s2, 0(s1)
  LW s0, 8(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, size
  ADD s1, s0, s2
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, size
  ADD s2, s0, s3
  LW s0, 0(s2)
  ADDIW s2, s0, 1
  SW s2, 0(s1)
  LD ra, 24(sp)
  LD s3, 32(sp)
  LD s2, 40(sp)
  LD s1, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -80
  SD ra, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  SD s0, 64(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 32(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 24(sp)
  LA s0, size
  ADD a0, s0, zero
  ADD a1, zero, zero
  ADDI a2, zero, 10
  CALL my_memset
  JAL zero, bb23
bb23:
  LW s0, 24(sp)
  SLT s1, zero, s0
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb24
  JAL zero, bb25
bb24:
  CALL getint
  ADD s0, a0, zero
  SW s0, 16(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 8(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(sp)
  LW s1, 16(sp)
  LW s2, 8(sp)
  ADD a0, s1, zero
  ADD a1, s2, zero
  ADD a2, s0, zero
  CALL add_node
  LW s0, 24(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 24(sp)
  JAL zero, bb23
bb25:
  LW s0, 32(sp)
  ADDI a0, zero, 1
  ADD a1, s0, zero
  CALL max_flow
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
my_memset:
  ADDI sp, sp, -64
  SD ra, 24(sp)
  SD s3, 32(sp)
  SD s2, 40(sp)
  SD s1, 48(sp)
  SD s0, 56(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  SW s1, 16(sp)
  SW s2, 8(sp)
  SW zero, 0(sp)
  JAL zero, bb27
bb27:
  LW s1, 0(sp)
  LW s2, 8(sp)
  SLT s3, s1, s2
  XOR s1, s3, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb28
  JAL zero, bb29
bb28:
  LW s1, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 16(sp)
  SW s2, 0(s1)
  LW s1, 0(sp)
  ADDIW s2, s1, 1
  SW s2, 0(sp)
  JAL zero, bb27
bb29:
  LD ra, 24(sp)
  LD s3, 32(sp)
  LD s2, 40(sp)
  LD s1, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
