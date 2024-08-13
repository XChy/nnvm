.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.global exgcd
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 8(sp)
  SD s0, 16(sp)
  SD s1, 24(sp)
  ADDI a0, zero, 1
  ADDI s0, zero, 1
  SW a0, 4(sp)
  ADDI a3, sp, 0
  ADD a3, a3, zero
  ADDI a2, sp, 4
  ADD a2, a2, zero
  ADDI a1, zero, 15
  ADDI a0, zero, 7
  SW s0, 0(sp)
  ADDI s0, zero, 15
  ADDI s1, zero, 15
  CALL exgcd
  LW a0, 4(sp)
  REMW a0, a0, s0
  ADDIW a0, a0, 15
  REMW s0, a0, s1
  ADD a0, s0, zero
  SW s0, 4(sp)
  CALL putint
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
exgcd:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD s2, a1, zero
  ADD s0, a3, zero
  SLTIU a1, s2, 1
  ADD s1, a2, zero
  BNE a1, zero, bb3
  # implict jump to bb2
bb2:   # loop depth 0
  REMW a1, a0, s2
  ADD a3, s0, zero
  DIVW s3, a0, s2
  ADD a2, s1, zero
  ADD a0, s2, zero
  CALL exgcd
  LW t0, 0(s1)
  LW t1, 0(s0)
  SW t1, 0(s1)
  LW t1, 0(s0)
  MULW t1, s3, t1
  SUBW t0, t0, t1
  SW t0, 0(s0)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb3:   # loop depth 0
  ADDI t0, zero, 1
  SW t0, 0(s1)
  SW zero, 0(s0)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
