.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
  SD s10, 88(sp)
  ADD s6, a2, zero
  ADD s5, a1, zero
  BEQ a0, s5, bb12
  # implict jump to bb1
bb1:   # loop depth 0
  ADDI t1, zero, 40
  LA t0, used
  MULW s10, a0, t1
  LA a5, cap
  LA a4, to
  LA a3, size
  ADDI a2, zero, 1
  SH2ADD a1, a0, t0
  ADD t1, zero, zero
  ADD t0, zero, zero
  ADD t2, zero, zero
  ADD s9, a5, s10
  ADD s8, a4, s10
  SH2ADD s7, a0, a3
  SW a2, 0(a1)
  # implict jump to bb2
bb2:   # loop depth 1
  LW a0, 0(s7)
  ADD s0, t1, zero
  BLT s0, a0, bb4
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
  LD s10, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb4:   # loop depth 1
  SH2ADD s1, s0, s8
  LA a0, used
  LW t1, 0(s1)
  ADDIW s4, s0, 1
  SH2ADD t1, t1, a0
  LW t1, 0(t1)
  BNE t1, zero, bb11
  # implict jump to bb5
bb5:   # loop depth 1
  SH2ADD s3, s0, s9
  LW t1, 0(s3)
  BGE zero, t1, bb10
  # implict jump to bb6
bb6:   # loop depth 1
  LW a0, 0(s1)
  MIN s2, s6, t1
  ADD a2, s2, zero
  ADD a1, s5, zero
  CALL dfs
  ADD t2, a0, zero
  BLT zero, t2, bb9
  # implict jump to bb7
bb7:   # loop depth 1
  ADD t0, s2, zero
  # implict jump to bb8
bb8:   # loop depth 1
  ADD t1, s4, zero
  JAL zero, bb2
bb9:   # loop depth 0
  LW t0, 0(s3)
  LA t1, rev
  ADDI a1, zero, 40
  LA a2, cap
  ADD t1, t1, s10
  ADD a0, t2, zero
  SUBW t0, t0, t2
  SH2ADD t1, s0, t1
  SW t0, 0(s3)
  LW t0, 0(s1)
  MULW t0, t0, a1
  LW t1, 0(t1)
  ADD t0, a2, t0
  SH2ADD t0, t1, t0
  LW t1, 0(t0)
  ADDW t1, t1, t2
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
  LD s10, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb10:   # loop depth 1
  JAL zero, bb8
bb11:   # loop depth 1
  JAL zero, bb8
bb12:   # loop depth 0
  ADD a0, s6, zero
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
  LD s10, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
main:   # loop depth 0
  ADDI sp, sp, -112
  SD s2, 8(sp)
  SD s3, 16(sp)
  SD s4, 24(sp)
  SD s5, 32(sp)
  SD s6, 40(sp)
  SD s7, 48(sp)
  SD s8, 56(sp)
  SD s9, 64(sp)
  SD s10, 72(sp)
  SD ra, 80(sp)
  SD s1, 88(sp)
  LA s1, size
  CALL getint
  LA s2, size
  SW a0, 0(sp)
  LA s3, size
  LA s4, size
  LA s5, size
  LA s6, size
  LA s7, size
  LA s8, size
  LA s9, size
  LA s10, size
  CALL getint
  SW zero, 0(s1)
  SW zero, 4(s2)
  SW zero, 8(s3)
  SW zero, 12(s4)
  SW zero, 16(s5)
  SW zero, 20(s6)
  SW zero, 24(s7)
  SW zero, 28(s8)
  SW zero, 32(s9)
  SW zero, 36(s10)
  BLT zero, a0, bb18
  # implict jump to bb14
bb14:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb15
bb15:   # loop depth 1
  LA t1, used
  LA t2, used
  LA a0, used
  LA a1, used
  SW zero, 0(t1)
  LA t1, used
  SW zero, 4(t2)
  LA t2, used
  SW zero, 8(a0)
  LA a0, used
  SW zero, 12(a1)
  LA a1, used
  SW zero, 16(t1)
  LA t1, used
  SW zero, 20(t2)
  LUI a2, 458752
  SW zero, 24(a0)
  LA t2, used
  SW zero, 28(a1)
  ADDIW a2, a2, 0
  SW zero, 32(t1)
  ADD a2, zero, a2
  LW a1, 0(sp)
  ADDI a0, zero, 1
  SW zero, 36(t2)
  CALL dfs
  BEQ a0, zero, bb17
  # implict jump to bb16
bb16:   # loop depth 1
  ADDW s1, s1, a0
  JAL zero, bb15
bb17:   # loop depth 0
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD s2, 8(sp)
  LD s3, 16(sp)
  LD s4, 24(sp)
  LD s5, 32(sp)
  LD s6, 40(sp)
  LD s7, 48(sp)
  LD s8, 56(sp)
  LD s9, 64(sp)
  LD s10, 72(sp)
  LD ra, 80(sp)
  LD s1, 88(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb18:   # loop depth 0
  # implict jump to bb19
bb19:   # loop depth 1
  LA s4, size
  ADDI s2, zero, 40
  LA s6, to
  LA s9, size
  LA s7, cap
  ADDI t0, zero, 40
  SW t0, 4(sp)
  LA s8, rev
  LA t0, to
  SD t0, 96(sp)
  LA s10, cap
  LA t0, rev
  SD t0, 104(sp)
  ADD s1, a0, zero
  CALL getint
  ADD s3, a0, zero
  ADDIW s1, s1, -1
  SH2ADD s5, s3, s4
  MULW s4, s3, s2
  CALL getint
  ADD s2, a0, zero
  CALL getint
  ADD t1, s6, s4
  LW t2, 0(s5)
  ADD a1, s7, s4
  LW t0, 4(sp)
  MULW a4, s2, t0
  SH2ADD a3, s2, s9
  ADD a2, s8, s4
  SH2ADD t1, t2, t1
  SH2ADD a1, t2, a1
  SW s2, 0(t1)
  LD t0, 96(sp)
  ADD a5, t0, a4
  SW a0, 0(a1)
  SH2ADD t0, t2, a2
  LW t1, 0(a3)
  ADD a1, s10, a4
  LD a0, 104(sp)
  ADD a2, a0, a4
  ADDIW a4, t2, 1
  SH2ADD a0, t1, a5
  SW t1, 0(t0)
  SH2ADD t0, t1, a1
  SW s3, 0(a0)
  SH2ADD t1, t1, a2
  SW zero, 0(t0)
  SW t2, 0(t1)
  SW a4, 0(s5)
  LW t0, 0(a3)
  ADDIW t0, t0, 1
  SW t0, 0(a3)
  BLT zero, s1, bb20
  JAL zero, bb14
bb20:   # loop depth 1
  ADD a0, s1, zero
  JAL zero, bb19
