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
  ADDI sp, sp, -112
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  SD s10, 104(sp)
  ADD s3, a2, zero
  ADD s2, a1, zero
  BEQ a0, s2, bb12
  # implict jump to bb1
bb1:   # loop depth 0
  ADDI t1, zero, 40
  LA s10, used
  MULW s5, a0, t1
  LA a4, to
  LA a3, size
  LA t0, cap
  SD t0, 8(sp)
  ADDI a2, zero, 1
  SH2ADD a1, a0, s10
  ADD s0, zero, zero
  ADD s1, zero, zero
  ADD t1, zero, zero
  LD t0, 8(sp)
  ADD s7, t0, s5
  ADD s6, a4, s5
  SH2ADD s4, a0, a3
  SW a2, 0(a1)
  # implict jump to bb2
bb2:   # loop depth 1
  LW t0, 0(s4)
  SW s0, 0(sp)
  LW t2, 0(sp)
  BLT t2, t0, bb4
  # implict jump to bb3
bb3:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  LD s10, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb4:   # loop depth 1
  LW t0, 0(sp)
  SH2ADD s8, t0, s6
  LW t0, 0(sp)
  ADDIW s0, t0, 1
  LW t0, 0(s8)
  SH2ADD t0, t0, s10
  LW t0, 0(t0)
  BNE t0, zero, bb11
  # implict jump to bb5
bb5:   # loop depth 1
  LW t0, 0(sp)
  SH2ADD s9, t0, s7
  LW t2, 0(s9)
  BGE zero, t2, bb10
  # implict jump to bb6
bb6:   # loop depth 1
  LW a0, 0(s8)
  MIN s1, s3, t2
  ADD a2, s1, zero
  ADD a1, s2, zero
  CALL dfs
  ADD t1, a0, zero
  BLT zero, t1, bb9
  # implict jump to bb7
bb7:   # loop depth 1
  # implict jump to bb8
bb8:   # loop depth 1
  JAL zero, bb2
bb9:   # loop depth 0
  LW t2, 0(s9)
  LA a1, rev
  ADDI a2, zero, 40
  ADD a0, t1, zero
  ADD a1, a1, s5
  SUBW t2, t2, t1
  LW t0, 0(sp)
  SH2ADD a1, t0, a1
  SW t2, 0(s9)
  LW t2, 0(s8)
  MULW t2, t2, a2
  LW a1, 0(a1)
  LD t0, 8(sp)
  ADD t2, t0, t2
  SH2ADD t2, a1, t2
  LW a1, 0(t2)
  ADDW t0, a1, t1
  SW t0, 0(t2)
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  LD s10, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb10:   # loop depth 1
  JAL zero, bb2
bb11:   # loop depth 1
  JAL zero, bb2
bb12:   # loop depth 0
  ADD a0, s3, zero
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  LD s10, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
main:   # loop depth 0
  ADDI sp, sp, -112
  SD s3, 8(sp)
  SD s4, 16(sp)
  SD s5, 24(sp)
  SD s6, 32(sp)
  SD s8, 40(sp)
  SD s9, 48(sp)
  SD s10, 56(sp)
  SD s11, 64(sp)
  SD ra, 72(sp)
  SD s0, 80(sp)
  SD s1, 88(sp)
  SD s2, 96(sp)
  LA s9, size
  CALL getint
  SW a0, 4(sp)
  CALL getint
  SW zero, 0(s9)
  SW zero, 4(s9)
  SW zero, 8(s9)
  SW zero, 12(s9)
  SW zero, 16(s9)
  SW zero, 20(s9)
  SW zero, 24(s9)
  SW zero, 28(s9)
  SW zero, 32(s9)
  SW zero, 36(s9)
  BLT zero, a0, bb18
  # implict jump to bb14
bb14:   # loop depth 0
  LA s0, used
  ADD s1, zero, zero
  # implict jump to bb15
bb15:   # loop depth 1
  SW zero, 0(s0)
  LUI t1, 458752
  SW zero, 4(s0)
  ADDIW t1, t1, 0
  SW zero, 8(s0)
  ADD a2, zero, t1
  SW zero, 12(s0)
  LW a1, 4(sp)
  SW zero, 16(s0)
  ADDI a0, zero, 1
  SW zero, 20(s0)
  SW zero, 24(s0)
  SW zero, 28(s0)
  SW zero, 32(s0)
  SW zero, 36(s0)
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
  LD s3, 8(sp)
  LD s4, 16(sp)
  LD s5, 24(sp)
  LD s6, 32(sp)
  LD s8, 40(sp)
  LD s9, 48(sp)
  LD s10, 56(sp)
  LD s11, 64(sp)
  LD ra, 72(sp)
  LD s0, 80(sp)
  LD s1, 88(sp)
  LD s2, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb18:   # loop depth 0
  ADD s3, a0, zero
  # implict jump to bb19
bb19:   # loop depth 1
  CALL getint
  ADDI t0, zero, 40
  ADD s10, a0, zero
  LA s1, to
  SH2ADD s11, s10, s9
  MULW s0, s10, t0
  LA s2, cap
  ADDI t0, zero, 40
  SW t0, 0(sp)
  LA s5, rev
  ADD s6, s3, zero
  CALL getint
  ADD s3, s1, s0
  ADD s8, a0, zero
  ADD s4, s2, s0
  ADD s0, s5, s0
  ADDIW s6, s6, -1
  CALL getint
  LW t0, 0(sp)
  MULW a3, s8, t0
  LW t1, 0(s11)
  SH2ADD a2, s8, s9
  ADD a4, s1, a3
  ADD a5, s2, a3
  SH2ADD t2, t1, s3
  SH2ADD a1, t1, s4
  SW s8, 0(t2)
  SH2ADD t2, t1, s0
  SW a0, 0(a1)
  ADD a1, s5, a3
  LW t0, 0(a2)
  ADDIW a3, t1, 1
  SH2ADD a0, t0, a4
  SW t0, 0(t2)
  SH2ADD t2, t0, a5
  SW s10, 0(a0)
  SH2ADD t0, t0, a1
  SW zero, 0(t2)
  SW t1, 0(t0)
  SW a3, 0(s11)
  LW t0, 0(a2)
  ADDIW t0, t0, 1
  SW t0, 0(a2)
  BLT zero, s6, bb20
  JAL zero, bb14
bb20:   # loop depth 1
  ADD s3, s6, zero
  JAL zero, bb19
