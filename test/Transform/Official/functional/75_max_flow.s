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
dfs:   # loop depth 0
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
  ADD s8, a0, zero
  ADD s9, a1, zero
  ADD s1, a2, zero
  XOR a0, s8, s9
  SLTIU a0, a0, 1
  BNE a0, zero, bb14
  # implict jump to bb1
bb1:   # loop depth 0
  SLLIW a0, s8, 2
  LA a1, used
  ADD a1, a1, a0
  ADDI a2, zero, 1
  SW a2, 0(a1)
  LA a1, size
  ADD s2, a1, a0
  ADD a0, zero, zero
  ADD s0, zero, zero
  ADD s3, zero, zero
  # implict jump to bb2
bb2:   # loop depth 1
  LW a1, 0(s2)
  BLT s3, a1, bb4
  # implict jump to bb3
bb3:   # loop depth 0
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
bb4:   # loop depth 1
  ADDI a1, zero, 40
  MULW s4, s8, a1
  LA a1, to
  ADD a1, a1, s4
  SLLIW s5, s3, 2
  ADD s6, a1, s5
  LW a1, 0(s6)
  SLLIW a1, a1, 2
  LA a2, used
  ADD a1, a2, a1
  LW a1, 0(a1)
  ADDIW s3, s3, 1
  BNE a1, zero, bb13
  # implict jump to bb5
bb5:   # loop depth 1
  LA a1, cap
  ADD a1, a1, s4
  ADD s7, a1, s5
  LW a1, 0(s7)
  SLT a2, zero, a1
  XORI a2, a2, 1
  BNE a2, zero, bb12
  # implict jump to bb6
bb6:   # loop depth 1
  BLT s1, a1, bb11
  # implict jump to bb7
bb7:   # loop depth 1
  ADD s0, a1, zero
  # implict jump to bb8
bb8:   # loop depth 1
  LW a0, 0(s6)
  ADD a1, s9, zero
  ADD a2, s0, zero
  CALL dfs
  BLT zero, a0, bb10
  # implict jump to bb9
bb9:   # loop depth 1
  JAL zero, bb2
bb10:   # loop depth 0
  LW t0, 0(s7)
  SUBW t0, t0, a0
  SW t0, 0(s7)
  LW t0, 0(s6)
  ADDI t1, zero, 40
  MULW t0, t0, t1
  LA t1, cap
  ADD t0, t1, t0
  LA t1, rev
  ADD t1, t1, s4
  ADD t1, t1, s5
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
bb11:   # loop depth 1
  ADD s0, s1, zero
  JAL zero, bb8
bb12:   # loop depth 1
  JAL zero, bb2
bb13:   # loop depth 1
  JAL zero, bb2
bb14:   # loop depth 0
  ADD a0, s1, zero
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
main:   # loop depth 0
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
  ADD s1, a0, zero
  CALL getint
  ADD s0, a0, zero
  LA s2, size
  SW zero, 0(s2)
  LA s2, size
  SW zero, 4(s2)
  LA s2, size
  SW zero, 8(s2)
  LA s2, size
  SW zero, 12(s2)
  LA s2, size
  SW zero, 16(s2)
  LA s2, size
  SW zero, 20(s2)
  LA s2, size
  SW zero, 24(s2)
  LA s2, size
  SW zero, 28(s2)
  LA s2, size
  SW zero, 32(s2)
  LA s2, size
  SW zero, 36(s2)
  BLT zero, s0, bb20
  # implict jump to bb16
bb16:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb17
bb17:   # loop depth 1
  LA a0, used
  SW zero, 0(a0)
  LA a0, used
  SW zero, 4(a0)
  LA a0, used
  SW zero, 8(a0)
  LA a0, used
  SW zero, 12(a0)
  LA a0, used
  SW zero, 16(a0)
  LA a0, used
  SW zero, 20(a0)
  LA a0, used
  SW zero, 24(a0)
  LA a0, used
  SW zero, 28(a0)
  LA a0, used
  SW zero, 32(a0)
  LA a0, used
  SW zero, 36(a0)
  ADDI a0, zero, 1
  ADD a1, s1, zero
  LUI a2, 458752
  ADDIW a2, a2, 0
  ADD a2, zero, a2
  CALL dfs
  SLTIU s2, a0, 1
  BNE s2, zero, bb19
  # implict jump to bb18
bb18:   # loop depth 1
  ADDW s0, s0, a0
  JAL zero, bb17
bb19:   # loop depth 0
  ADD a0, s0, zero
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
bb20:   # loop depth 0
  # implict jump to bb21
bb21:   # loop depth 1
  CALL getint
  ADD s4, a0, zero
  CALL getint
  ADD s3, a0, zero
  CALL getint
  ADD s2, a0, zero
  ADDI s5, zero, 40
  MULW s5, s4, s5
  LA s6, to
  ADD s6, s6, s5
  SLLIW s7, s4, 2
  LA s8, size
  ADD s7, s8, s7
  LW s8, 0(s7)
  SLLIW s9, s8, 2
  ADD s6, s6, s9
  SW s3, 0(s6)
  LA s6, cap
  ADD s6, s6, s5
  ADD s6, s6, s9
  SW s2, 0(s6)
  LA s2, rev
  ADD s2, s2, s5
  ADD s2, s2, s9
  SLLIW s5, s3, 2
  LA s6, size
  ADD s5, s6, s5
  LW s6, 0(s5)
  SW s6, 0(s2)
  ADDI s2, zero, 40
  MULW s2, s3, s2
  LA s3, to
  ADD s3, s3, s2
  SLLIW s6, s6, 2
  ADD s3, s3, s6
  SW s4, 0(s3)
  LA s3, cap
  ADD s3, s3, s2
  ADD s3, s3, s6
  SW zero, 0(s3)
  LA s3, rev
  ADD s2, s3, s2
  ADD s2, s2, s6
  SW s8, 0(s2)
  ADDIW s2, s8, 1
  SW s2, 0(s7)
  LW s2, 0(s5)
  ADDIW s2, s2, 1
  SW s2, 0(s5)
  ADDI s2, zero, 1
  SUBW s0, s0, s2
  BLT zero, s0, bb22
  JAL zero, bb16
bb22:   # loop depth 1433752896
  JAL zero, bb21
