.global main
.section .bss


.section .data
arr:
.byte 1, 0, 0, 0, 2, 0, 0, 0, 33, 0, 0, 0, 4, 0, 0, 0, 5, 0, 0, 0, 6, 0, 0, 0
N:
.word 0xffffffff
.section .text
main:
  ADDI sp, sp, -80
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
  ADDI s2, zero, 0
  SLTI s2, s2, 6
  BNE s2, zero, bb3
  # implict jump to bb1
bb1:
  ADD s2, zero, zero
  # implict jump to bb2
bb2:
  ADD a0, s2, zero
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
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb3:
  # implict jump to bb4
bb4:
  ADD s3, zero, zero
  ADD s4, zero, zero
  # implict jump to bb5
bb5:
  ADD s5, s4, zero
  ADD s6, s3, zero
  SLLIW s7, s6, 2
  LA s8, arr
  ADD s7, s8, s7
  LW s7, 0(s7)
  ADDW s0, s5, s7
  ADDIW s1, s6, 1
  # implict jump to bb6
bb6:
  SLTI s5, s1, 6
  BNE s5, zero, bb8
  # implict jump to bb7
bb7:
  ADD s2, s0, zero
  JAL zero, bb2
bb8:
  ADD s3, s1, zero
  ADD s4, s0, zero
  JAL zero, bb5
