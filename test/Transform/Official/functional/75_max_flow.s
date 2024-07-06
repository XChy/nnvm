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
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, zero, zero
  JAL zero, bb1
bb1:
  ADD s3, s2, zero
  JAL zero, bb2
bb2:
  LA s4, used
  ADD a0, s4, zero
  ADD a1, zero, zero
  ADDI a2, zero, 10
  CALL my_memset
  LA s4, INF
  LW s5, 0(s4)
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s5, zero
  CALL dfs
  ADD s4, a0, zero
  XOR s5, s4, zero
  SLTIU s6, s5, 1
  BNE s6, zero, bb3
  JAL zero, bb4
bb3:
  ADD a0, s3, zero
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
bb4:
  ADDW s5, s3, s4
  ADD s2, s5, zero
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
  BNE s4, zero, bb6
  JAL zero, bb7
bb6:
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
bb7:
  ADDI s3, zero, 4
  MULW s4, s0, s3
  LA s3, used
  ADD s5, s3, s4
  ADDI s3, zero, 1
  SW s3, 0(s5)
  ADD s3, zero, zero
  ADD s4, zero, zero
  ADD s5, zero, zero
  JAL zero, bb8
bb8:
  ADD s6, s5, zero
  ADD s7, s4, zero
  ADD s8, s3, zero
  ADDI s9, zero, 4
  MULW s10, s0, s9
  LA s9, size
  ADD s11, s9, s10
  LW s9, 0(s11)
  SLT s10, s6, s9
  XOR s9, s10, zero
  SLTU s10, zero, s9
  BNE s10, zero, bb9
  JAL zero, bb10
bb9:
  ADDI s9, zero, 40
  MULW s10, s0, s9
  LA s9, to
  ADD s11, s9, s10
  ADDI s9, zero, 4
  MULW s10, s6, s9
  ADD s9, s11, s10
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s10, s9
  LA s9, used
  ADD s10, s9, s11
  LW s9, 0(s10)
  XOR s10, s9, zero
  SLTU s9, zero, s10
  BNE s9, zero, bb11
  JAL zero, bb12
bb10:
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
bb11:
  ADDIW s9, s6, 1
  ADD s3, s8, zero
  ADD s4, s7, zero
  ADD s5, s9, zero
  JAL zero, bb8
bb12:
  ADDI s9, zero, 40
  MULW s10, s0, s9
  LA s9, cap
  ADD s11, s9, s10
  ADDI s9, zero, 4
  MULW s10, s6, s9
  ADD s9, s11, s10
  LW s10, 0(s9)
  SLT s9, zero, s10
  XORI s10, s9, 1
  BNE s10, zero, bb13
  JAL zero, bb14
bb13:
  ADDIW s9, s6, 1
  ADD s3, s8, zero
  ADD s4, s7, zero
  ADD s5, s9, zero
  JAL zero, bb8
bb14:
  ADDI s7, zero, 40
  MULW s8, s0, s7
  LA s7, cap
  ADD s9, s7, s8
  ADDI s7, zero, 4
  MULW s8, s6, s7
  ADD s7, s9, s8
  LW s8, 0(s7)
  SLT s7, s2, s8
  BNE s7, zero, bb15
  JAL zero, bb17
bb15:
  ADD s7, s2, zero
  JAL zero, bb16
bb16:
  ADD s8, s7, zero
  ADDI s9, zero, 40
  MULW s10, s0, s9
  LA s9, to
  ADD s11, s9, s10
  ADDI s9, zero, 4
  MULW s10, s6, s9
  ADD s9, s11, s10
  LW s10, 0(s9)
  ADD a0, s10, zero
  ADD a1, s1, zero
  ADD a2, s8, zero
  CALL dfs
  ADD s9, a0, zero
  SLT s10, zero, s9
  BNE s10, zero, bb18
  JAL zero, bb19
bb17:
  ADDI s3, zero, 40
  MULW s4, s0, s3
  LA s3, cap
  ADD s5, s3, s4
  ADDI s3, zero, 4
  MULW s4, s6, s3
  ADD s3, s5, s4
  LW s4, 0(s3)
  ADD s7, s4, zero
  JAL zero, bb16
bb18:
  ADDI s10, zero, 40
  MULW s11, s0, s10
  LA s10, cap
  ADD t0, s10, s11
  ADDI s10, zero, 4
  MULW s11, s6, s10
  ADD s10, t0, s11
  ADDI s11, zero, 40
  MULW t0, s0, s11
  LA s11, cap
  ADD t1, s11, t0
  ADDI s11, zero, 4
  MULW t0, s6, s11
  ADD s11, t1, t0
  LW t0, 0(s11)
  SUBW s11, t0, s9
  SW s11, 0(s10)
  ADDI s10, zero, 40
  MULW s11, s0, s10
  LA s10, to
  ADD t0, s10, s11
  ADDI s10, zero, 4
  MULW s11, s6, s10
  ADD s10, t0, s11
  LW s11, 0(s10)
  ADDI s10, zero, 40
  MULW t0, s11, s10
  LA s10, cap
  ADD s11, s10, t0
  ADDI s10, zero, 40
  MULW t0, s0, s10
  LA s10, rev
  ADD t1, s10, t0
  ADDI s10, zero, 4
  MULW t0, s6, s10
  ADD s10, t1, t0
  LW t0, 0(s10)
  ADDI s10, zero, 4
  MULW t1, t0, s10
  ADD s10, s11, t1
  ADDI s11, zero, 40
  MULW t0, s0, s11
  LA s11, to
  ADD t1, s11, t0
  ADDI s11, zero, 4
  MULW t0, s6, s11
  ADD s11, t1, t0
  LW t0, 0(s11)
  ADDI s11, zero, 40
  MULW t1, t0, s11
  LA s11, cap
  ADD t0, s11, t1
  ADDI s11, zero, 40
  MULW t1, s0, s11
  LA s11, rev
  ADD t2, s11, t1
  ADDI s11, zero, 4
  MULW t1, s6, s11
  ADD s11, t2, t1
  LW t1, 0(s11)
  ADDI s11, zero, 4
  MULW t2, t1, s11
  ADD s11, t0, t2
  LW t0, 0(s11)
  ADDW s11, t0, s9
  SW s11, 0(s10)
  ADD a0, s9, zero
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
bb19:
  ADDIW s10, s6, 1
  ADD s3, s9, zero
  ADD s4, s8, zero
  ADD s5, s10, zero
  JAL zero, bb8
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
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
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
  JAL zero, bb22
bb22:
  ADD s1, s2, zero
  SLT s3, zero, s1
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb23
  JAL zero, bb24
bb23:
  CALL getint
  ADD s3, a0, zero
  CALL getint
  ADD s4, a0, zero
  CALL getint
  ADD s5, a0, zero
  ADD a0, s3, zero
  ADD a1, s4, zero
  ADD a2, s5, zero
  CALL add_node
  ADDI s3, zero, 1
  SUBW s4, s1, s3
  ADD s2, s4, zero
  JAL zero, bb22
bb24:
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
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
my_memset:
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
  ADD s3, zero, zero
  JAL zero, bb26
bb26:
  ADD s4, s3, zero
  SLT s5, s4, s2
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb27
  JAL zero, bb28
bb27:
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s5, s0, s6
  SW s1, 0(s5)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb26
bb28:
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
