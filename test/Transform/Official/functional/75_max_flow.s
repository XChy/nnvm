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
  ADDI sp, sp, -96
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
  ADD s2, a0, zero
  ADD s3, a1, zero
  ADD s4, a2, zero
  XOR a0, s2, s3
  SLTIU a0, a0, 1
  BNE a0, zero, bb14
  # implict jump to bb1
bb1:
  SLLIW a0, s2, 2
  LA a1, used
  ADD a1, a1, a0
  ADDI a2, zero, 1
  SW a2, 0(a1)
  LA a1, size
  ADD s0, a1, a0
  ADD a0, zero, zero
  ADD s5, zero, zero
  ADD a1, zero, zero
  # implict jump to bb2
bb2:
  ADD s1, a1, zero
  ADD a1, s5, zero
  LW a2, 0(s0)
  BLT s1, a2, bb4
  # implict jump to bb3
bb3:
  ADD a0, zero, zero
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
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb4:
  ADDI a2, zero, 40
  MULW s5, s2, a2
  LA a2, to
  ADD a2, a2, s5
  SLLIW s6, s1, 2
  ADD s7, a2, s6
  LW a2, 0(s7)
  SLLIW a2, a2, 2
  LA s8, used
  ADD a2, s8, a2
  LW a2, 0(a2)
  BNE a2, zero, bb13
  # implict jump to bb5
bb5:
  LA a2, cap
  ADD a2, a2, s5
  ADD s8, a2, s6
  LW a2, 0(s8)
  SLT s9, zero, a2
  XORI s9, s9, 1
  BNE s9, zero, bb12
  # implict jump to bb6
bb6:
  BLT s4, a2, bb11
  # implict jump to bb7
bb7:
  ADD a0, a2, zero
  # implict jump to bb8
bb8:
  ADD s9, a0, zero
  LW a0, 0(s7)
  ADD a1, s3, zero
  ADD a2, s9, zero
  CALL dfs
  BLT zero, a0, bb10
  # implict jump to bb9
bb9:
  ADDIW a1, s1, 1
  ADD s5, s9, zero
  JAL zero, bb2
bb10:
  LW t0, 0(s8)
  SUBW t0, t0, a0
  SW t0, 0(s8)
  LW t0, 0(s7)
  ADDI t1, zero, 40
  MULW t0, t0, t1
  LA t1, cap
  ADD t0, t1, t0
  LA t1, rev
  ADD t1, t1, s5
  ADD t1, t1, s6
  LW t1, 0(t1)
  SLLIW t1, t1, 2
  ADD t0, t0, t1
  LW t1, 0(t0)
  ADDW t1, t1, a0
  SW t1, 0(t0)
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
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb11:
  ADD a0, s4, zero
  JAL zero, bb8
bb12:
  ADDIW a2, s1, 1
  ADD s5, a1, zero
  ADD a1, a2, zero
  JAL zero, bb2
bb13:
  ADDIW a2, s1, 1
  ADD s5, a1, zero
  ADD a1, a2, zero
  JAL zero, bb2
bb14:
  ADD a0, s4, zero
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
  ADDI sp, sp, 96
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s3, 16(sp)
  SD s4, 24(sp)
  SD s5, 32(sp)
  SD s6, 40(sp)
  SD s7, 48(sp)
  SD s8, 56(sp)
  SD s9, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s1, a0, zero
  ADD s2, zero, zero
  # implict jump to bb16
bb16:
  SLLIW s3, s2, 2
  LA s4, size
  ADD s3, s4, s3
  SW zero, 0(s3)
  ADDIW s2, s2, 1
  SLTI s3, s2, 10
  BNE s3, zero, bb28
  # implict jump to bb17
bb17:
  BLT zero, s1, bb25
  # implict jump to bb18
bb18:
  ADD a0, zero, zero
  # implict jump to bb19
bb19:
  ADD s1, a0, zero
  ADD a0, zero, zero
  # implict jump to bb20
bb20:
  SLLIW a1, a0, 2
  LA a2, used
  ADD a1, a2, a1
  SW zero, 0(a1)
  ADDIW a0, a0, 1
  SLTI a1, a0, 10
  BNE a1, zero, bb24
  # implict jump to bb21
bb21:
  ADDI a0, zero, 1
  ADD a1, s0, zero
  LUI a2, 458752
  ADDIW a2, a2, 0
  ADD a2, zero, a2
  CALL dfs
  SLTIU s2, a0, 1
  BNE s2, zero, bb23
  # implict jump to bb22
bb22:
  ADDW a0, s1, a0
  JAL zero, bb19
bb23:
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s3, 16(sp)
  LD s4, 24(sp)
  LD s5, 32(sp)
  LD s6, 40(sp)
  LD s7, 48(sp)
  LD s8, 56(sp)
  LD s9, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb24:
  JAL zero, bb20
bb25:
  # implict jump to bb26
bb26:
  CALL getint
  ADD s2, a0, zero
  CALL getint
  ADD s3, a0, zero
  CALL getint
  ADD s4, a0, zero
  ADDI s5, zero, 40
  MULW s5, s2, s5
  LA s6, to
  ADD s6, s6, s5
  SLLIW s7, s2, 2
  LA s8, size
  ADD s7, s8, s7
  LW s8, 0(s7)
  SLLIW s9, s8, 2
  ADD s6, s6, s9
  SW s3, 0(s6)
  LA s6, cap
  ADD s6, s6, s5
  ADD s6, s6, s9
  SW s4, 0(s6)
  LA s4, rev
  ADD s4, s4, s5
  ADD s4, s4, s9
  SLLIW s5, s3, 2
  LA s6, size
  ADD s5, s6, s5
  LW s6, 0(s5)
  SW s6, 0(s4)
  ADDI s4, zero, 40
  MULW s3, s3, s4
  LA s4, to
  ADD s4, s4, s3
  SLLIW s6, s6, 2
  ADD s4, s4, s6
  SW s2, 0(s4)
  LA s2, cap
  ADD s2, s2, s3
  ADD s2, s2, s6
  SW zero, 0(s2)
  LA s2, rev
  ADD s2, s2, s3
  ADD s2, s2, s6
  SW s8, 0(s2)
  ADDIW s2, s8, 1
  SW s2, 0(s7)
  LW s2, 0(s5)
  ADDIW s2, s2, 1
  SW s2, 0(s5)
  ADDI s2, zero, 1
  SUBW s1, s1, s2
  BLT zero, s1, bb27
  JAL zero, bb18
bb27:
  JAL zero, bb26
bb28:
  JAL zero, bb16
