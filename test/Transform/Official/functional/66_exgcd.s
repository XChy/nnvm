.global main
.global exgcd
.section .bss
.section .data
.section .text
main:
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
  LW s0, 4(sp)
  ADDI a0, zero, 15
  REMW a0, s0, a0
  ADDIW s0, a0, 15
  ADDI a0, zero, 15
  REMW a0, s0, a0
  SW a0, 4(sp)
  CALL putint
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
exgcd:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD s1, a0, zero
  ADD s0, a1, zero
  ADD s3, a2, zero
  ADD s2, a3, zero
  SLTIU a0, s0, 1
  BNE a0, zero, bb3
  # implict jump to bb2
bb2:
  REMW a1, s1, s0
  ADD a0, s0, zero
  ADD a2, s3, zero
  ADD a3, s2, zero
  CALL exgcd
  ADD t1, a0, zero
  LW t2, 0(s3)
  LW t0, 0(s2)
  SW t0, 0(s3)
  DIVW a0, s1, s0
  LW t0, 0(s2)
  MULW t0, a0, t0
  SUBW t0, t2, t0
  SW t0, 0(s2)
  ADD a0, t1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb3:
  ADDI t0, zero, 1
  SW t0, 0(s3)
  SW zero, 0(s2)
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
