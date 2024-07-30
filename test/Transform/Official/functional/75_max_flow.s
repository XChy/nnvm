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





.section .text
max_flow:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
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
  SLLIW s6, s5, 2
  LA s7, used
  ADD s6, s7, s6
  SW zero, 0(s6)
  ADDIW s5, s5, 1
  SLTI s6, s5, 10
  BNE s6, zero, bb6
  # implict jump to bb3
bb3:
  ADD a0, s0, zero
  ADD a1, s1, zero
  LUI s6, 458752
  ADDIW s6, s6, 0
  ADD a2, zero, s6
  CALL dfs
  ADD s6, a0, zero
  SLTIU s7, s6, 1
  BNE s7, zero, bb5
  # implict jump to bb4
bb4:
  ADDW s6, s3, s6
  ADD s2, s6, zero
  JAL zero, bb1
bb5:
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb6:
  ADD s4, s5, zero
  JAL zero, bb2
dfs:
  ADDI sp, sp, -128
  SD s4, 8(sp)
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD s10, 96(sp)
  SD s11, 104(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  XOR s3, s0, s1
  SLTIU s3, s3, 1
  BNE s3, zero, bb21
  # implict jump to bb8
bb8:
  SLLIW s3, s0, 2
  LA s4, used
  ADD s4, s4, s3
  ADDI s5, zero, 1
  SW s5, 0(s4)
  LA s4, size
  ADD s3, s4, s3
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADD s6, zero, zero
  # implict jump to bb9
bb9:
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADD s9, s4, zero
  LW s10, 0(s3)
  BLT s7, s10, bb11
  # implict jump to bb10
bb10:
  ADD a0, zero, zero
  LD s4, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb11:
  ADDI s10, zero, 40
  MULW s10, s0, s10
  LA s11, to
  ADD s11, s11, s10
  SLLIW t4, s7, 2
  SW t4, 4(sp)
  LW t4, 4(sp)
  ADD s11, s11, t4
  LW t1, 0(s11)
  SLLIW t1, t1, 2
  LA t2, used
  ADD t1, t2, t1
  LW t1, 0(t1)
  BNE t1, zero, bb20
  # implict jump to bb12
bb12:
  LA t1, cap
  ADD t1, t1, s10
  LW t3, 4(sp)
  ADD t4, t1, t3
  SD t4, 112(sp)
  LD t4, 112(sp)
  LW t2, 0(t4)
  SLT a3, zero, t2
  XORI a3, a3, 1
  BNE a3, zero, bb19
  # implict jump to bb13
bb13:
  BLT s2, t2, bb18
  # implict jump to bb14
bb14:
  # implict jump to bb15
bb15:
  ADD t4, t2, zero
  SW t4, 0(sp)
  LW a3, 0(s11)
  ADD a0, a3, zero
  ADD a1, s1, zero
  LW t4, 0(sp)
  ADD a2, t4, zero
  CALL dfs
  ADD t0, a0, zero
  BLT zero, t0, bb17
  # implict jump to bb16
bb16:
  ADDIW t1, s7, 1
  ADD s4, t0, zero
  LW t4, 0(sp)
  ADD s5, t4, zero
  ADD s6, t1, zero
  JAL zero, bb9
bb17:
  LD t4, 112(sp)
  LW t1, 0(t4)
  SUBW t1, t1, t0
  LD t4, 112(sp)
  SW t1, 0(t4)
  LW s11, 0(s11)
  ADDI t1, zero, 40
  MULW s11, s11, t1
  LA t1, cap
  ADD s11, t1, s11
  LA t1, rev
  ADD s10, t1, s10
  LW t4, 4(sp)
  ADD s10, s10, t4
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  ADD s10, s11, s10
  LW s11, 0(s10)
  ADDW s11, s11, t0
  SW s11, 0(s10)
  ADD a0, t0, zero
  LD s4, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb18:
  ADD t2, s2, zero
  JAL zero, bb15
bb19:
  ADDIW s10, s7, 1
  ADD s4, s9, zero
  ADD s5, s8, zero
  ADD s6, s10, zero
  JAL zero, bb9
bb20:
  ADDIW s7, s7, 1
  ADD s4, s9, zero
  ADD s5, s8, zero
  ADD s6, s7, zero
  JAL zero, bb9
bb21:
  ADD a0, s2, zero
  LD s4, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
add_node:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  ADDI s0, zero, 40
  MULW s0, a0, s0
  LA s1, to
  ADD s1, s1, s0
  SLLIW s2, a0, 2
  LA s3, size
  ADD s2, s3, s2
  LW s3, 0(s2)
  SLLIW s4, s3, 2
  ADD s1, s1, s4
  SW a1, 0(s1)
  LA s1, cap
  ADD s1, s1, s0
  ADD s1, s1, s4
  SW a2, 0(s1)
  LA s1, rev
  ADD s0, s1, s0
  ADD s0, s0, s4
  SLLIW s1, a1, 2
  LA s4, size
  ADD s1, s4, s1
  LW s4, 0(s1)
  SW s4, 0(s0)
  ADDI s0, zero, 40
  MULW s0, a1, s0
  LA s5, to
  ADD s5, s5, s0
  SLLIW s4, s4, 2
  ADD s5, s5, s4
  SW a0, 0(s5)
  LA s5, cap
  ADD s5, s5, s0
  ADD s5, s5, s4
  SW zero, 0(s5)
  LA s5, rev
  ADD s0, s5, s0
  ADD s0, s0, s4
  SW s3, 0(s0)
  ADDIW s0, s3, 1
  SW s0, 0(s2)
  LW s0, 0(s1)
  ADDIW s0, s0, 1
  SW s0, 0(s1)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -112
  SD s1, 8(sp)
  SD s8, 16(sp)
  SD s9, 24(sp)
  SD s11, 32(sp)
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s5, 80(sp)
  SD s6, 88(sp)
  SD s7, 96(sp)
  SD s10, 104(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 4(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 0(sp)
  ADD s2, zero, zero
  # implict jump to bb24
bb24:
  ADD s3, s2, zero
  SLLIW s4, s3, 2
  LA s5, size
  ADD s4, s5, s4
  SW zero, 0(s4)
  ADDIW s3, s3, 1
  SLTI s4, s3, 10
  BNE s4, zero, bb36
  # implict jump to bb25
bb25:
  LW t4, 0(sp)
  BLT zero, t4, bb33
  # implict jump to bb26
bb26:
  ADD s1, zero, zero
  # implict jump to bb27
bb27:
  ADD s5, s1, zero
  ADD s6, zero, zero
  # implict jump to bb28
bb28:
  ADD s7, s6, zero
  SLLIW s8, s7, 2
  LA s9, used
  ADD s8, s9, s8
  SW zero, 0(s8)
  ADDIW s7, s7, 1
  SLTI s8, s7, 10
  BNE s8, zero, bb32
  # implict jump to bb29
bb29:
  ADDI a0, zero, 1
  LW t4, 4(sp)
  ADD a1, t4, zero
  LUI s8, 458752
  ADDIW s8, s8, 0
  ADD a2, zero, s8
  CALL dfs
  ADD s8, a0, zero
  SLTIU s9, s8, 1
  BNE s9, zero, bb31
  # implict jump to bb30
bb30:
  ADDW s8, s5, s8
  ADD s1, s8, zero
  JAL zero, bb27
bb31:
  ADD a0, s5, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD s1, 8(sp)
  LD s8, 16(sp)
  LD s9, 24(sp)
  LD s11, 32(sp)
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s5, 80(sp)
  LD s6, 88(sp)
  LD s7, 96(sp)
  LD s10, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb32:
  ADD s6, s7, zero
  JAL zero, bb28
bb33:
  LW t4, 0(sp)
  ADD s4, t4, zero
  # implict jump to bb34
bb34:
  ADD s5, s4, zero
  CALL getint
  ADD s6, a0, zero
  CALL getint
  ADD s7, a0, zero
  CALL getint
  ADD s8, a0, zero
  ADDI s9, zero, 40
  MULW s9, s6, s9
  LA s10, to
  ADD s10, s10, s9
  SLLIW s11, s6, 2
  LA s1, size
  ADD s1, s1, s11
  LW s11, 0(s1)
  SLLIW s0, s11, 2
  ADD s10, s10, s0
  SW s7, 0(s10)
  LA s10, cap
  ADD s10, s10, s9
  ADD s10, s10, s0
  SW s8, 0(s10)
  LA s8, rev
  ADD s8, s8, s9
  ADD s0, s8, s0
  SLLIW s8, s7, 2
  LA s9, size
  ADD s8, s9, s8
  LW s9, 0(s8)
  SW s9, 0(s0)
  ADDI s0, zero, 40
  MULW s0, s7, s0
  LA s7, to
  ADD s7, s7, s0
  SLLIW s9, s9, 2
  ADD s7, s7, s9
  SW s6, 0(s7)
  LA s6, cap
  ADD s6, s6, s0
  ADD s6, s6, s9
  SW zero, 0(s6)
  LA s6, rev
  ADD s0, s6, s0
  ADD s0, s0, s9
  SW s11, 0(s0)
  ADDIW s0, s11, 1
  SW s0, 0(s1)
  LW s0, 0(s8)
  ADDIW s0, s0, 1
  SW s0, 0(s8)
  ADDI s0, zero, 1
  SUBW s0, s5, s0
  BLT zero, s0, bb35
  JAL zero, bb26
bb35:
  ADD s4, s0, zero
  JAL zero, bb34
bb36:
  ADD s2, s3, zero
  JAL zero, bb24
my_memset:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  BLT zero, a2, bb39
  # implict jump to bb38
bb38:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb39:
  ADD s0, zero, zero
  # implict jump to bb40
bb40:
  ADD s1, s0, zero
  SLLIW s2, s1, 2
  ADD s2, a0, s2
  SW a1, 0(s2)
  ADDIW s1, s1, 1
  BLT s1, a2, bb41
  JAL zero, bb38
bb41:
  ADD s0, s1, zero
  JAL zero, bb40
