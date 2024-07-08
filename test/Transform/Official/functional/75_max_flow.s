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
  LA s4, used
  ADD a0, s4, zero
  ADD a1, zero, zero
  ADDI a2, zero, 10
  CALL my_memset
  ADD a0, s0, zero
  ADD a1, s1, zero
  LUI s4, 458752
  ADDIW s4, s4, 0
  ADD a2, zero, s4
  CALL dfs
  ADD s4, a0, zero
  XOR s5, s4, zero
  SLTIU s6, s5, 1
  BNE s6, zero, bb2
  JAL zero, bb3
bb2:
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
bb3:
  ADDW s5, s3, s4
  ADD s2, s5, zero
  JAL zero, bb1
dfs:
  ADDI sp, sp, -128
  SD s11, 16(sp)
  SD s10, 24(sp)
  SD s9, 32(sp)
  SD s8, 40(sp)
  SD s0, 48(sp)
  SD s5, 56(sp)
  SD s7, 64(sp)
  SD s1, 72(sp)
  SD s6, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  SD s4, 104(sp)
  SD ra, 112(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  XOR s3, s0, s1
  SLTIU s4, s3, 1
  BNE s4, zero, bb5
  JAL zero, bb6
bb5:
  ADD a0, s2, zero
  LD s11, 16(sp)
  LD s10, 24(sp)
  LD s9, 32(sp)
  LD s8, 40(sp)
  LD s0, 48(sp)
  LD s5, 56(sp)
  LD s7, 64(sp)
  LD s1, 72(sp)
  LD s6, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  LD ra, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb6:
  ADDI s3, zero, 4
  MULW s4, s0, s3
  LA s3, used
  ADD s5, s3, s4
  ADDI s3, zero, 1
  SW s3, 0(s5)
  ADD s3, zero, zero
  ADD s5, zero, zero
  ADD s6, zero, zero
  JAL zero, bb7
bb7:
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADD s9, s3, zero
  LA s10, size
  ADD s11, s10, s4
  LW s10, 0(s11)
  SLT s11, s7, s10
  BNE s11, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s10, zero, 40
  MULW s11, s0, s10
  LA s10, to
  ADD t0, s10, s11
  ADDI s10, zero, 4
  MULW t4, s7, s10
  SW t4, 8(sp)
  LW t4, 8(sp)
  ADD s10, t0, t4
  LW t0, 0(s10)
  ADDI t2, zero, 4
  MULW a3, t0, t2
  LA t0, used
  ADD t2, t0, a3
  LW t0, 0(t2)
  XOR t2, t0, zero
  SLTU t0, zero, t2
  BNE t0, zero, bb10
  JAL zero, bb11
bb9:
  ADD a0, zero, zero
  LD s11, 16(sp)
  LD s10, 24(sp)
  LD s9, 32(sp)
  LD s8, 40(sp)
  LD s0, 48(sp)
  LD s5, 56(sp)
  LD s7, 64(sp)
  LD s1, 72(sp)
  LD s6, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  LD ra, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb10:
  ADDIW t0, s7, 1
  ADD s3, s9, zero
  ADD s5, s8, zero
  ADD s6, t0, zero
  JAL zero, bb7
bb11:
  LA t0, cap
  ADD t2, t0, s11
  LW t3, 8(sp)
  ADD t4, t2, t3
  SD t4, 0(sp)
  LD t4, 0(sp)
  LW t2, 0(t4)
  SLT a3, zero, t2
  XORI t2, a3, 1
  BNE t2, zero, bb12
  JAL zero, bb13
bb12:
  ADDIW t2, s7, 1
  ADD s3, s9, zero
  ADD s5, s8, zero
  ADD s6, t2, zero
  JAL zero, bb7
bb13:
  LD t4, 0(sp)
  LW s8, 0(t4)
  SLT s9, s2, s8
  BNE s9, zero, bb14
  JAL zero, bb16
bb14:
  ADD s8, s2, zero
  JAL zero, bb15
bb15:
  ADD s9, s8, zero
  LW t2, 0(s10)
  ADD a0, t2, zero
  ADD a1, s1, zero
  ADD a2, s9, zero
  CALL dfs
  ADD t0, a0, zero
  SLT t1, zero, t0
  BNE t1, zero, bb17
  JAL zero, bb18
bb16:
  LD t4, 0(sp)
  LW s3, 0(t4)
  ADD s8, s3, zero
  JAL zero, bb15
bb17:
  LD t4, 0(sp)
  LW t1, 0(t4)
  SUBW t2, t1, t0
  LD t4, 0(sp)
  SW t2, 0(t4)
  LW t1, 0(s10)
  ADDI t2, zero, 40
  MULW a1, t1, t2
  LA t1, cap
  ADD t2, t1, a1
  LA t1, rev
  ADD a1, t1, s11
  LW t4, 8(sp)
  ADD t1, a1, t4
  LW a1, 0(t1)
  ADDI a2, zero, 4
  MULW a3, a1, a2
  ADD a1, t2, a3
  LW t2, 0(s10)
  ADDI a2, zero, 40
  MULW a3, t2, a2
  LA t2, cap
  ADD a2, t2, a3
  LW t2, 0(t1)
  ADDI t1, zero, 4
  MULW a3, t2, t1
  ADD t1, a2, a3
  LW t2, 0(t1)
  ADDW t1, t2, t0
  SW t1, 0(a1)
  ADD a0, t0, zero
  LD s11, 16(sp)
  LD s10, 24(sp)
  LD s9, 32(sp)
  LD s8, 40(sp)
  LD s0, 48(sp)
  LD s5, 56(sp)
  LD s7, 64(sp)
  LD s1, 72(sp)
  LD s6, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  LD ra, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb18:
  ADDIW t1, s7, 1
  ADD s3, t0, zero
  ADD s5, s9, zero
  ADD s6, t1, zero
  JAL zero, bb7
add_node:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s7, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s8, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADDI s3, zero, 40
  MULW s4, s0, s3
  LA s3, to
  ADD s5, s3, s4
  ADDI s3, zero, 4
  MULW s6, s0, s3
  LA s3, size
  ADD s7, s3, s6
  LW s3, 0(s7)
  ADDI s6, zero, 4
  MULW s8, s3, s6
  ADD s3, s5, s8
  SW s1, 0(s3)
  LA s3, cap
  ADD s5, s3, s4
  LW s3, 0(s7)
  ADDI s6, zero, 4
  MULW s8, s3, s6
  ADD s3, s5, s8
  SW s2, 0(s3)
  LA s2, rev
  ADD s3, s2, s4
  LW s2, 0(s7)
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s2, s3, s5
  ADDI s3, zero, 4
  MULW s4, s1, s3
  LA s3, size
  ADD s5, s3, s4
  LW s3, 0(s5)
  SW s3, 0(s2)
  ADDI s2, zero, 40
  MULW s3, s1, s2
  LA s1, to
  ADD s2, s1, s3
  LW s1, 0(s5)
  ADDI s4, zero, 4
  MULW s6, s1, s4
  ADD s1, s2, s6
  SW s0, 0(s1)
  LA s0, cap
  ADD s1, s0, s3
  LW s0, 0(s5)
  ADDI s2, zero, 4
  MULW s4, s0, s2
  ADD s0, s1, s4
  SW zero, 0(s0)
  LA s0, rev
  ADD s1, s0, s3
  LW s0, 0(s5)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 0(s7)
  SW s1, 0(s0)
  LW s0, 0(s7)
  ADDIW s1, s0, 1
  SW s1, 0(s7)
  LW s0, 0(s5)
  ADDIW s1, s0, 1
  SW s1, 0(s5)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s8, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  ADDI sp, sp, 80
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
  JAL zero, bb21
bb21:
  ADD s1, s2, zero
  SLT s3, zero, s1
  BNE s3, zero, bb22
  JAL zero, bb23
bb22:
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
  JAL zero, bb21
bb23:
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
  JAL zero, bb25
bb25:
  ADD s4, s3, zero
  SLT s5, s4, s2
  BNE s5, zero, bb26
  JAL zero, bb27
bb26:
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s5, s0, s6
  SW s1, 0(s5)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb25
bb27:
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
