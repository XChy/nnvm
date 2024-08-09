.global main
.global exgcd
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 8(sp)
  SD s0, 16(sp)
  ADDI a0, zero, 1
  SW a0, 4(sp)
  ADDI a0, zero, 1
  SW a0, 0(sp)
  ADDI a0, zero, 7
  ADDI a1, zero, 15
  ADDI a2, sp, 4
  ADD a2, a2, zero
  ADDI a3, sp, 0
  ADD a3, a3, zero
  CALL exgcd
  LW a0, 4(sp)
  ADDI s0, zero, 15
  REMW a0, a0, s0
  ADDIW a0, a0, 15
  ADDI s0, zero, 15
  REMW a0, a0, s0
  SW a0, 4(sp)
  CALL putint
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
exgcd:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD s3, a0, zero
  ADD s2, a1, zero
  ADD s0, a2, zero
  ADD s1, a3, zero
  SLTIU a0, s2, 1
  BNE a0, zero, bb3
  # implict jump to bb2
bb2:   # loop depth 0
  REMW a1, s3, s2
  ADD a0, s2, zero
  ADD a2, s0, zero
  ADD a3, s1, zero
  CALL exgcd
  LW t0, 0(s0)
  LW t1, 0(s1)
  SW t1, 0(s0)
  DIVW t1, s3, s2
  LW t2, 0(s1)
  MULW t1, t1, t2
  SUBW t0, t0, t1
  SW t0, 0(s1)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb3:   # loop depth 0
  ADDI t0, zero, 1
  SW t0, 0(s0)
  SW zero, 0(s1)
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
