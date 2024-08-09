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
  ADD s7, a0, zero
  ADD s8, a1, zero
  XOR a0, s7, s8
  ADD s9, a2, zero
  SLTIU a0, a0, 1
  BNE a0, zero, bb14
  # implict jump to bb1
bb1:   # loop depth 0
  LA a0, used
  SLLIW a2, s7, 2
  LA s3, size
  ADDI s2, zero, 1
  ADD s0, a0, a2
  ADD a1, zero, zero
  ADD s1, zero, zero
  ADD a0, zero, zero
  SW s2, 0(s0)
  ADD s0, s3, a2
  # implict jump to bb2
bb2:   # loop depth 1
  LW a2, 0(s0)
  BLT a0, a2, bb4
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
  ADDI a2, zero, 40
  LA s4, to
  MULW s2, s7, a2
  SLLIW s3, a0, 2
  LA a2, used
  ADDIW s5, a0, 1
  ADD a0, s4, s2
  ADD s4, a0, s3
  LW a0, 0(s4)
  SLLIW a0, a0, 2
  ADD a0, a2, a0
  LW a0, 0(a0)
  BNE a0, zero, bb13
  # implict jump to bb5
bb5:   # loop depth 1
  LA a0, cap
  ADD a0, a0, s2
  ADD s6, a0, s3
  LW a2, 0(s6)
  SLT a0, zero, a2
  XORI a0, a0, 1
  BNE a0, zero, bb12
  # implict jump to bb6
bb6:   # loop depth 1
  BLT s9, a2, bb11
  # implict jump to bb7
bb7:   # loop depth 1
  # implict jump to bb8
bb8:   # loop depth 1
  LW a0, 0(s4)
  ADD s1, a2, zero
  ADD a1, s8, zero
  ADD a2, s1, zero
  CALL dfs
  ADD a1, a0, zero
  BLT zero, a1, bb10
  # implict jump to bb9
bb9:   # loop depth 1
  ADD a0, s5, zero
  JAL zero, bb2
bb10:   # loop depth 0
  LW t0, 0(s6)
  LA t1, rev
  ADDI t2, zero, 40
  LA a2, cap
  ADD t1, t1, s2
  ADD a0, a1, zero
  SUBW t0, t0, a1
  ADD t1, t1, s3
  SW t0, 0(s6)
  LW t0, 0(s4)
  LW t1, 0(t1)
  MULW t0, t0, t2
  ADD t0, a2, t0
  SLLIW t1, t1, 2
  ADD t0, t0, t1
  LW t1, 0(t0)
  ADDW t1, t1, a1
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
  ADD a2, s9, zero
  JAL zero, bb8
bb12:   # loop depth 1
  ADD a0, s5, zero
  JAL zero, bb2
bb13:   # loop depth 1
  ADD a0, s5, zero
  JAL zero, bb2
bb14:   # loop depth 0
  ADD a0, s9, zero
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
  ADDI sp, sp, -208
  SD s1, 24(sp)
  SD ra, 48(sp)
  SD s0, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD s6, 96(sp)
  SD s7, 104(sp)
  SD s8, 112(sp)
  SD s9, 120(sp)
  SD s10, 128(sp)
  SD s11, 136(sp)
  CALL getint
  LA s1, size
  LA s3, size
  ADD s0, a0, zero
  SW s0, 16(sp)
  LA s4, size
  LA s5, size
  LA s6, size
  LA s7, size
  LA s8, size
  LA s11, size
  LA s9, size
  LA s10, size
  CALL getint
  SW zero, 0(s1)
  ADD s2, a0, zero
  SW zero, 4(s3)
  SW zero, 8(s4)
  SW zero, 12(s5)
  SW zero, 16(s6)
  SW zero, 20(s7)
  SW zero, 24(s8)
  SW zero, 28(s11)
  SW zero, 32(s9)
  SW zero, 36(s10)
  BLT zero, s2, bb20
  # implict jump to bb16
bb16:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb17
bb17:   # loop depth 1
  LA a0, used
  LA a1, used
  LA a2, used
  LA s2, used
  SW zero, 0(a0)
  LA a0, used
  SW zero, 4(a1)
  LA a1, used
  SW zero, 8(a2)
  LA a2, used
  SW zero, 12(s2)
  LA s2, used
  SW zero, 16(a0)
  LA a0, used
  SW zero, 20(a1)
  LA s3, used
  SW zero, 24(a2)
  LUI a2, 458752
  SW zero, 28(s2)
  ADDIW a2, a2, 0
  SW zero, 32(a0)
  ADDI a0, zero, 1
  LW a1, 16(sp)
  ADD a2, zero, a2
  SW zero, 36(s3)
  CALL dfs
  SLTIU s2, a0, 1
  BNE s2, zero, bb19
  # implict jump to bb18
bb18:   # loop depth 1
  ADDW s1, s1, a0
  JAL zero, bb17
bb19:   # loop depth 0
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD s1, 24(sp)
  LD ra, 48(sp)
  LD s0, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  LD s7, 104(sp)
  LD s8, 112(sp)
  LD s9, 120(sp)
  LD s10, 128(sp)
  LD s11, 136(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
bb20:   # loop depth 0
  # implict jump to bb21
bb21:   # loop depth 1
  LA s7, size
  ADDI s3, zero, 40
  LA s6, to
  LA s0, size
  SD s0, 168(sp)
  LA s0, cap
  SD s0, 152(sp)
  ADDI s0, zero, 40
  SW s0, 12(sp)
  LA s0, rev
  SD s0, 160(sp)
  LA s0, to
  SD s0, 184(sp)
  LA s0, cap
  SD s0, 192(sp)
  LA s0, rev
  SD s0, 200(sp)
  CALL getint
  ADD s4, a0, zero
  ADDIW s2, s2, -1
  SLLIW s1, s4, 2
  MULW s5, s4, s3
  CALL getint
  ADD s7, s7, s1
  ADD s3, a0, zero
  CALL getint
  ADD s6, s6, s5
  LW s8, 0(s7)
  LD s0, 152(sp)
  ADD s0, s0, s5
  SD s0, 176(sp)
  SLLIW s0, s3, 2
  SW s0, 0(sp)
  ADD s0, a0, zero
  SW s0, 20(sp)
  LD s0, 168(sp)
  LW s1, 0(sp)
  ADD s0, s0, s1
  SD s0, 144(sp)
  LW s0, 12(sp)
  MULW s0, s3, s0
  SW s0, 4(sp)
  SLLIW s0, s8, 2
  SW s0, 8(sp)
  LD s0, 160(sp)
  ADD s0, s0, s5
  SD s0, 32(sp)
  LW s0, 8(sp)
  ADD s5, s6, s0
  LD s0, 176(sp)
  LW s1, 8(sp)
  ADD s6, s0, s1
  SW s3, 0(s5)
  LD s0, 32(sp)
  LW s1, 8(sp)
  ADD s3, s0, s1
  LW s0, 20(sp)
  SW s0, 0(s6)
  LD s0, 184(sp)
  LW s1, 4(sp)
  ADD s5, s0, s1
  LD s0, 144(sp)
  LW s1, 0(s0)
  LD s0, 192(sp)
  LW s6, 4(sp)
  ADD s9, s0, s6
  LD s0, 200(sp)
  LW s6, 4(sp)
  ADD s10, s0, s6
  ADDIW s11, s8, 1
  SLLIW s6, s1, 2
  SW s1, 0(s3)
  ADD s1, s5, s6
  ADD s3, s9, s6
  SW s4, 0(s1)
  ADD s1, s10, s6
  SW zero, 0(s3)
  SW s8, 0(s1)
  SW s11, 0(s7)
  LD s0, 144(sp)
  LW s1, 0(s0)
  ADDIW s1, s1, 1
  LD s0, 144(sp)
  SW s1, 0(s0)
  BLT zero, s2, bb22
  JAL zero, bb16
bb22:   # loop depth 1
  JAL zero, bb21
