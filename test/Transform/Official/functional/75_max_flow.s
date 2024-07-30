.global dfs
.global main
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
dfs:
  ADDI sp, sp, -128
  SD ra, 8(sp)
  SD s4, 16(sp)
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
  BNE s3, zero, bb14
  # implict jump to bb1
bb1:
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
  # implict jump to bb2
bb2:
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADD s9, s4, zero
  LW s10, 0(s3)
  BLT s7, s10, bb4
  # implict jump to bb3
bb3:
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s4, 16(sp)
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
bb4:
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
  BNE t1, zero, bb13
  # implict jump to bb5
bb5:
  LA t1, cap
  ADD t1, t1, s10
  LW t3, 4(sp)
  ADD t4, t1, t3
  SD t4, 112(sp)
  LD t4, 112(sp)
  LW t2, 0(t4)
  SLT a3, zero, t2
  XORI a3, a3, 1
  BNE a3, zero, bb12
  # implict jump to bb6
bb6:
  BLT s2, t2, bb11
  # implict jump to bb7
bb7:
  # implict jump to bb8
bb8:
  ADD t4, t2, zero
  SW t4, 0(sp)
  LW a3, 0(s11)
  ADD a0, a3, zero
  ADD a1, s1, zero
  LW t4, 0(sp)
  ADD a2, t4, zero
  CALL dfs
  ADD t0, a0, zero
  BLT zero, t0, bb10
  # implict jump to bb9
bb9:
  ADDIW t1, s7, 1
  ADD s4, t0, zero
  LW t4, 0(sp)
  ADD s5, t4, zero
  ADD s6, t1, zero
  JAL zero, bb2
bb10:
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
  LD ra, 8(sp)
  LD s4, 16(sp)
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
  ADD t2, s2, zero
  JAL zero, bb8
bb12:
  ADDIW s10, s7, 1
  ADD s4, s9, zero
  ADD s5, s8, zero
  ADD s6, s10, zero
  JAL zero, bb2
bb13:
  ADDIW s7, s7, 1
  ADD s4, s9, zero
  ADD s5, s8, zero
  ADD s6, s7, zero
  JAL zero, bb2
bb14:
  ADD a0, s2, zero
  LD ra, 8(sp)
  LD s4, 16(sp)
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
  # implict jump to bb16
bb16:
  ADD s3, s2, zero
  SLLIW s4, s3, 2
  LA s5, size
  ADD s4, s5, s4
  SW zero, 0(s4)
  ADDIW s3, s3, 1
  SLTI s4, s3, 10
  BNE s4, zero, bb28
  # implict jump to bb17
bb17:
  LW t4, 0(sp)
  BLT zero, t4, bb25
  # implict jump to bb18
bb18:
  ADD s1, zero, zero
  # implict jump to bb19
bb19:
  ADD s5, s1, zero
  ADD s6, zero, zero
  # implict jump to bb20
bb20:
  ADD s7, s6, zero
  SLLIW s8, s7, 2
  LA s9, used
  ADD s8, s9, s8
  SW zero, 0(s8)
  ADDIW s7, s7, 1
  SLTI s8, s7, 10
  BNE s8, zero, bb24
  # implict jump to bb21
bb21:
  ADDI a0, zero, 1
  LW t4, 4(sp)
  ADD a1, t4, zero
  LUI s8, 458752
  ADDIW s8, s8, 0
  ADD a2, zero, s8
  CALL dfs
  ADD s8, a0, zero
  SLTIU s9, s8, 1
  BNE s9, zero, bb23
  # implict jump to bb22
bb22:
  ADDW s8, s5, s8
  ADD s1, s8, zero
  JAL zero, bb19
bb23:
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
bb24:
  ADD s6, s7, zero
  JAL zero, bb20
bb25:
  LW t4, 0(sp)
  ADD s4, t4, zero
  # implict jump to bb26
bb26:
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
  BLT zero, s0, bb27
  JAL zero, bb18
bb27:
  ADD s4, s0, zero
  JAL zero, bb26
bb28:
  ADD s2, s3, zero
  JAL zero, bb16
