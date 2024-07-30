.global main
.section .bss


.section .data
arr:
.byte 1, 0, 0, 0, 2, 0, 0, 0, 33, 0, 0, 0, 4, 0, 0, 0, 5, 0, 0, 0, 6, 0, 0, 0
N:
.word 0xffffffff
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
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb1
bb1:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLLIW s4, s3, 2
  LA s5, arr
  ADD s4, s5, s4
  LW s4, 0(s4)
  ADDW s2, s2, s4
  ADDIW s3, s3, 1
  SLTI s4, s3, 6
  BNE s4, zero, bb4
  # implict jump to bb2
bb2:
  # implict jump to bb3
bb3:
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb4:
  ADD s0, s3, zero
  ADD s1, s2, zero
  JAL zero, bb1
