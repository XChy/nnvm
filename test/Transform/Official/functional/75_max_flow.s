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
  SD s0, 0(sp)
  SD s5, 8(sp)
  SD s7, 16(sp)
  SD s1, 24(sp)
  SD s6, 32(sp)
  SD s8, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD ra, 72(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, zero, zero
  # implict jump to bb1
bb1:
  ADD s3, s2, zero
  ADD s4, zero, zero
  # implict jump to bb2
bb2:
  ADD s5, s4, zero
  SLTI s6, s5, 10
  BNE s6, zero, bb6
  # implict jump to bb3
bb3:
  ADD a0, s0, zero
  ADD a1, s1, zero
  LUI s4, 458752
  ADDIW s4, s4, 0
  ADD a2, zero, s4
  CALL dfs
  ADD s4, a0, zero
  XOR s5, s4, zero
  SLTIU s6, s5, 1
  BNE s6, zero, bb5
  # implict jump to bb4
bb4:
  ADDW s5, s3, s4
  ADD s2, s5, zero
  JAL zero, bb1
bb5:
  ADD a0, s3, zero
  LD s0, 0(sp)
  LD s5, 8(sp)
  LD s7, 16(sp)
  LD s1, 24(sp)
  LD s6, 32(sp)
  LD s8, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD ra, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb6:
  SLLIW s6, s5, 2
  LA s7, used
  ADD s8, s7, s6
  SW zero, 0(s8)
  ADDIW s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb2
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
  BNE s4, zero, bb21
  # implict jump to bb8
bb8:
  SLLIW s3, s0, 2
  LA s4, used
  ADD s5, s4, s3
  ADDI s4, zero, 1
  SW s4, 0(s5)
  LA s4, size
  ADD s5, s4, s3
  ADD s3, zero, zero
  ADD s4, zero, zero
  ADD s6, zero, zero
  # implict jump to bb9
bb9:
  ADD s7, s6, zero
  ADD s8, s4, zero
  ADD s9, s3, zero
  LW s10, 0(s5)
  SLT s11, s7, s10
  BNE s11, zero, bb11
  # implict jump to bb10
bb10:
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
bb11:
  ADDI s10, zero, 40
  MULW s11, s0, s10
  LA s10, to
  ADD t0, s10, s11
  SLLIW s10, s7, 2
  ADD t4, t0, s10
  SD t4, 8(sp)
  LD t4, 8(sp)
  LW t0, 0(t4)
  SLLIW t2, t0, 2
  LA t0, used
  ADD a3, t0, t2
  LW t0, 0(a3)
  XOR t2, t0, zero
  SLTU t0, zero, t2
  BNE t0, zero, bb20
  # implict jump to bb12
bb12:
  LA t0, cap
  ADD t2, t0, s11
  ADD t4, t2, s10
  SD t4, 0(sp)
  LD t4, 0(sp)
  LW t2, 0(t4)
  SLT a3, zero, t2
  XORI t2, a3, 1
  BNE t2, zero, bb19
  # implict jump to bb13
bb13:
  LD t4, 0(sp)
  LW s8, 0(t4)
  SLT s9, s2, s8
  BNE s9, zero, bb18
  # implict jump to bb14
bb14:
  LD t4, 0(sp)
  LW s3, 0(t4)
  ADD s8, s3, zero
  # implict jump to bb15
bb15:
  ADD s9, s8, zero
  LD t4, 8(sp)
  LW t2, 0(t4)
  ADD a0, t2, zero
  ADD a1, s1, zero
  ADD a2, s9, zero
  CALL dfs
  ADD t0, a0, zero
  SLT t1, zero, t0
  BNE t1, zero, bb17
  # implict jump to bb16
bb16:
  ADDIW t1, s7, 1
  ADD s3, t0, zero
  ADD s4, s9, zero
  ADD s6, t1, zero
  JAL zero, bb9
bb17:
  LD t4, 0(sp)
  LW t1, 0(t4)
  SUBW t2, t1, t0
  LD t4, 0(sp)
  SW t2, 0(t4)
  LD t4, 8(sp)
  LW t1, 0(t4)
  ADDI t2, zero, 40
  MULW a1, t1, t2
  LA t1, cap
  ADD t2, t1, a1
  LA t1, rev
  ADD a1, t1, s11
  ADD t1, a1, s10
  LW a1, 0(t1)
  SLLIW t1, a1, 2
  ADD a1, t2, t1
  LW t1, 0(a1)
  ADDW t2, t1, t0
  SW t2, 0(a1)
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
  ADD s8, s2, zero
  JAL zero, bb15
bb19:
  ADDIW t2, s7, 1
  ADD s3, s9, zero
  ADD s4, s8, zero
  ADD s6, t2, zero
  JAL zero, bb9
bb20:
  ADDIW t0, s7, 1
  ADD s3, s9, zero
  ADD s4, s8, zero
  ADD s6, t0, zero
  JAL zero, bb9
bb21:
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
add_node:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s7, 48(sp)
  SD s5, 56(sp)
  SD s0, 64(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADDI s3, zero, 40
  MULW s4, s0, s3
  LA s3, to
  ADD s5, s3, s4
  SLLIW s3, s0, 2
  LA s6, size
  ADD s7, s6, s3
  LW s3, 0(s7)
  SLLIW s6, s3, 2
  ADD s3, s5, s6
  SW s1, 0(s3)
  LA s3, cap
  ADD s5, s3, s4
  LW s3, 0(s7)
  SLLIW s6, s3, 2
  ADD s3, s5, s6
  SW s2, 0(s3)
  LA s2, rev
  ADD s3, s2, s4
  LW s2, 0(s7)
  SLLIW s4, s2, 2
  ADD s2, s3, s4
  SLLIW s3, s1, 2
  LA s4, size
  ADD s5, s4, s3
  LW s3, 0(s5)
  SW s3, 0(s2)
  ADDI s2, zero, 40
  MULW s3, s1, s2
  LA s1, to
  ADD s2, s1, s3
  LW s1, 0(s5)
  SLLIW s4, s1, 2
  ADD s1, s2, s4
  SW s0, 0(s1)
  LA s0, cap
  ADD s1, s0, s3
  LW s0, 0(s5)
  SLLIW s2, s0, 2
  ADD s0, s1, s2
  SW zero, 0(s0)
  LA s0, rev
  ADD s1, s0, s3
  LW s0, 0(s5)
  SLLIW s2, s0, 2
  ADD s0, s1, s2
  LW s1, 0(s7)
  SW s1, 0(s0)
  LW s0, 0(s7)
  ADDIW s1, s0, 1
  SW s1, 0(s7)
  LW s0, 0(s5)
  ADDIW s1, s0, 1
  SW s1, 0(s5)
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s7, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s7, 24(sp)
  SD s10, 32(sp)
  SD s1, 40(sp)
  SD s6, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s1, a0, zero
  ADD s2, zero, zero
  # implict jump to bb24
bb24:
  ADD s3, s2, zero
  SLTI s4, s3, 10
  BNE s4, zero, bb35
  # implict jump to bb25
bb25:
  ADD s2, s1, zero
  # implict jump to bb26
bb26:
  ADD s1, s2, zero
  SLT s3, zero, s1
  BNE s3, zero, bb34
  # implict jump to bb27
bb27:
  ADD s1, zero, zero
  # implict jump to bb28
bb28:
  ADD s2, s1, zero
  ADD s3, zero, zero
  # implict jump to bb29
bb29:
  ADD s4, s3, zero
  SLTI s5, s4, 10
  BNE s5, zero, bb33
  # implict jump to bb30
bb30:
  ADDI a0, zero, 1
  ADD a1, s0, zero
  LUI s3, 458752
  ADDIW s3, s3, 0
  ADD a2, zero, s3
  CALL dfs
  ADD s3, a0, zero
  XOR s4, s3, zero
  SLTIU s5, s4, 1
  BNE s5, zero, bb32
  # implict jump to bb31
bb31:
  ADDW s4, s2, s3
  ADD s1, s4, zero
  JAL zero, bb28
bb32:
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s10, 32(sp)
  LD s1, 40(sp)
  LD s6, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb33:
  SLLIW s5, s4, 2
  LA s6, used
  ADD s7, s6, s5
  SW zero, 0(s7)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb29
bb34:
  CALL getint
  ADD s3, a0, zero
  CALL getint
  ADD s4, a0, zero
  CALL getint
  ADD s5, a0, zero
  ADDI s6, zero, 40
  MULW s7, s3, s6
  LA s6, to
  ADD s8, s6, s7
  SLLIW s6, s3, 2
  LA s9, size
  ADD s10, s9, s6
  LW s6, 0(s10)
  SLLIW s9, s6, 2
  ADD s6, s8, s9
  SW s4, 0(s6)
  LA s6, cap
  ADD s8, s6, s7
  LW s6, 0(s10)
  SLLIW s9, s6, 2
  ADD s6, s8, s9
  SW s5, 0(s6)
  LA s5, rev
  ADD s6, s5, s7
  LW s5, 0(s10)
  SLLIW s7, s5, 2
  ADD s5, s6, s7
  SLLIW s6, s4, 2
  LA s7, size
  ADD s8, s7, s6
  LW s6, 0(s8)
  SW s6, 0(s5)
  ADDI s5, zero, 40
  MULW s6, s4, s5
  LA s4, to
  ADD s5, s4, s6
  LW s4, 0(s8)
  SLLIW s7, s4, 2
  ADD s4, s5, s7
  SW s3, 0(s4)
  LA s3, cap
  ADD s4, s3, s6
  LW s3, 0(s8)
  SLLIW s5, s3, 2
  ADD s3, s4, s5
  SW zero, 0(s3)
  LA s3, rev
  ADD s4, s3, s6
  LW s3, 0(s8)
  SLLIW s5, s3, 2
  ADD s3, s4, s5
  LW s4, 0(s10)
  SW s4, 0(s3)
  LW s3, 0(s10)
  ADDIW s4, s3, 1
  SW s4, 0(s10)
  LW s3, 0(s8)
  ADDIW s4, s3, 1
  SW s4, 0(s8)
  ADDI s3, zero, 1
  SUBW s4, s1, s3
  ADD s2, s4, zero
  JAL zero, bb26
bb35:
  SLLIW s4, s3, 2
  LA s5, size
  ADD s6, s5, s4
  SW zero, 0(s6)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb24
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
  # implict jump to bb37
bb37:
  ADD s4, s3, zero
  SLT s5, s4, s2
  BNE s5, zero, bb39
  # implict jump to bb38
bb38:
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
bb39:
  SLLIW s5, s4, 2
  ADD s6, s0, s5
  SW s1, 0(s6)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb37
