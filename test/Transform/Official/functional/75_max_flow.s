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
  ADD s1, a1, zero
  ADD s0, a2, zero
  XOR a0, s2, s1
  SLTIU a0, a0, 1
  BNE a0, zero, bb14
  # implict jump to bb1
bb1:
  SLLIW a2, s2, 2
  LA a0, used
  ADD a1, a0, a2
  ADDI a0, zero, 1
  SW a0, 0(a1)
  LA a0, size
  ADD s3, a0, a2
  ADD a0, zero, zero
  ADD a1, zero, zero
  ADD a2, zero, zero
  # implict jump to bb2
bb2:
  ADD s6, a2, zero
  ADD a2, a0, zero
  LW a0, 0(s3)
  BLT s6, a0, bb4
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
  ADDI a0, zero, 40
  MULW s4, s2, a0
  LA a0, to
  ADD a0, a0, s4
  SLLIW s5, s6, 2
  ADD s7, a0, s5
  LW a0, 0(s7)
  SLLIW s8, a0, 2
  LA a0, used
  ADD a0, a0, s8
  LW a0, 0(a0)
  BNE a0, zero, bb13
  # implict jump to bb5
bb5:
  LA a0, cap
  ADD a0, a0, s4
  ADD s8, a0, s5
  LW s9, 0(s8)
  SLT a0, zero, s9
  XORI a0, a0, 1
  BNE a0, zero, bb12
  # implict jump to bb6
bb6:
  BLT s0, s9, bb11
  # implict jump to bb7
bb7:
  ADD a0, s9, zero
  # implict jump to bb8
bb8:
  ADD s9, a0, zero
  LW a0, 0(s7)
  ADD a1, s1, zero
  ADD a2, s9, zero
  CALL dfs
  BLT zero, a0, bb10
  # implict jump to bb9
bb9:
  ADDIW a2, s6, 1
  ADD a1, s9, zero
  JAL zero, bb2
bb10:
  LW t0, 0(s8)
  SUBW t0, t0, a0
  SW t0, 0(s8)
  LW t1, 0(s7)
  ADDI t0, zero, 40
  MULW t1, t1, t0
  LA t0, cap
  ADD t1, t0, t1
  LA t0, rev
  ADD t0, t0, s4
  ADD t0, t0, s5
  LW t0, 0(t0)
  SLLIW t0, t0, 2
  ADD t1, t1, t0
  LW t0, 0(t1)
  ADDW t0, t0, a0
  SW t0, 0(t1)
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
  ADD a0, s0, zero
  JAL zero, bb8
bb12:
  ADDIW s4, s6, 1
  ADD a0, a2, zero
  ADD a2, s4, zero
  JAL zero, bb2
bb13:
  ADDIW s4, s6, 1
  ADD a0, a2, zero
  ADD a2, s4, zero
  JAL zero, bb2
bb14:
  ADD a0, s0, zero
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
  SD s3, 8(sp)
  SD s4, 16(sp)
  SD s5, 24(sp)
  SD s6, 32(sp)
  SD s7, 40(sp)
  SD s8, 48(sp)
  SD s9, 56(sp)
  SD s10, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s2, a0, zero
  LA s1, size
  SW zero, 0(s1)
  LA s1, size
  SW zero, 4(s1)
  LA s1, size
  SW zero, 8(s1)
  LA s1, size
  SW zero, 12(s1)
  LA s1, size
  SW zero, 16(s1)
  LA s1, size
  SW zero, 20(s1)
  LA s1, size
  SW zero, 24(s1)
  LA s1, size
  SW zero, 28(s1)
  LA s1, size
  SW zero, 32(s1)
  LA s1, size
  SW zero, 36(s1)
  BLT zero, s2, bb20
  # implict jump to bb16
bb16:
  ADD a0, zero, zero
  # implict jump to bb17
bb17:
  ADD s1, a0, zero
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
  ADD a1, s0, zero
  LUI a2, 458752
  ADDIW a2, a2, 0
  ADD a2, zero, a2
  CALL dfs
  ADD s2, a0, zero
  SLTIU a0, s2, 1
  BNE a0, zero, bb19
  # implict jump to bb18
bb18:
  ADDW a0, s1, s2
  JAL zero, bb17
bb19:
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s4, 16(sp)
  LD s5, 24(sp)
  LD s6, 32(sp)
  LD s7, 40(sp)
  LD s8, 48(sp)
  LD s9, 56(sp)
  LD s10, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb20:
  ADD s1, s2, zero
  # implict jump to bb21
bb21:
  ADD s2, s1, zero
  CALL getint
  ADD s5, a0, zero
  CALL getint
  ADD s6, a0, zero
  CALL getint
  ADD s8, a0, zero
  ADDI s1, zero, 40
  MULW s7, s5, s1
  LA s1, to
  ADD s10, s1, s7
  SLLIW s3, s5, 2
  LA s1, size
  ADD s4, s1, s3
  LW s3, 0(s4)
  SLLIW s9, s3, 2
  ADD s1, s10, s9
  SW s6, 0(s1)
  LA s1, cap
  ADD s1, s1, s7
  ADD s1, s1, s9
  SW s8, 0(s1)
  LA s1, rev
  ADD s1, s1, s7
  ADD s9, s1, s9
  SLLIW s7, s6, 2
  LA s1, size
  ADD s7, s1, s7
  LW s8, 0(s7)
  SW s8, 0(s9)
  ADDI s1, zero, 40
  MULW s6, s6, s1
  LA s1, to
  ADD s1, s1, s6
  SLLIW s8, s8, 2
  ADD s1, s1, s8
  SW s5, 0(s1)
  LA s1, cap
  ADD s1, s1, s6
  ADD s1, s1, s8
  SW zero, 0(s1)
  LA s1, rev
  ADD s1, s1, s6
  ADD s1, s1, s8
  SW s3, 0(s1)
  ADDIW s1, s3, 1
  SW s1, 0(s4)
  LW s1, 0(s7)
  ADDIW s1, s1, 1
  SW s1, 0(s7)
  ADDI s1, zero, 1
  SUBW s1, s2, s1
  BLT zero, s1, bb22
  JAL zero, bb16
bb22:
  JAL zero, bb21
