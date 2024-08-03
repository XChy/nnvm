.global main
.section .bss

.section .data
k:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  LA s0, k
  LUI a0, 1
  ADDIW a0, a0, -707
  SW a0, 0(s0)
  LA s0, k
  LUI a0, 1
  ADDIW a0, a0, -706
  SW a0, 0(s0)
  ADDI s2, zero, 112
  ADD s1, zero, zero
  ADD s0, zero, zero
  ADD a0, zero, zero
  # implict jump to bb1
bb1:
  ADD s4, a0, zero
  ADD s5, s1, zero
  ADD s1, s2, zero
  ADDI a0, zero, 88
  SUBW s3, s1, a0
  SLTI a0, s3, 1000
  BNE a0, zero, bb6
  # implict jump to bb2
bb2:
  ADD s2, s4, zero
  ADD s1, s0, zero
  ADD s0, s5, zero
  ADD a0, s3, zero
  # implict jump to bb3
bb3:
  ADD s3, a0, zero
  ADD s4, s0, zero
  ADD s0, s1, zero
  ADD s5, s2, zero
  ADDI a0, zero, 10
  BLT a0, s3, bb5
  # implict jump to bb4
bb4:
  ADD a0, s3, zero
  CALL putint
  LA t0, k
  LW t0, 0(t0)
  ADD a0, t0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb5:
  ADD s2, s3, zero
  ADD s1, s4, zero
  ADD a0, s5, zero
  JAL zero, bb1
bb6:
  ADDIW a0, s1, -76
  ADDI s2, zero, 11
  ADDI s1, zero, 11
  ADDI s0, zero, 10
  JAL zero, bb3
