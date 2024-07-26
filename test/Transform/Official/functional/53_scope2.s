.global main
.section .bss

.section .data
k:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -112
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
  SD s11, 96(sp)
  LA s4, k
  LUI s5, 1
  ADDIW s5, s5, -707
  SW s5, 0(s4)
  LA s4, k
  LUI s5, 1
  ADDIW s5, s5, -706
  SW s5, 0(s4)
  ADDI s4, zero, 10
  SLTI s4, s4, 112
  BNE s4, zero, bb3
  # implict jump to bb1
bb1:
  ADDI s4, zero, 112
  # implict jump to bb2
bb2:
  ADD a0, s4, zero
  CALL putint
  LA s4, k
  LW s4, 0(s4)
  ADD a0, s4, zero
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
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb3:
  ADDI s5, zero, 112
  ADD s6, zero, zero
  ADD s7, zero, zero
  ADD s8, zero, zero
  # implict jump to bb4
bb4:
  ADD s9, s8, zero
  ADD s10, s7, zero
  ADD s11, s6, zero
  ADD ra, s5, zero
  ADDI t0, zero, 88
  SUBW t0, ra, t0
  SLTI t1, t0, 1000
  BNE t1, zero, bb10
  # implict jump to bb5
bb5:
  # implict jump to bb6
bb6:
  ADD s1, t0, zero
  ADD s2, s11, zero
  ADD s0, s10, zero
  ADD s3, s9, zero
  # implict jump to bb7
bb7:
  ADDI s9, zero, 10
  BLT s9, s1, bb9
  # implict jump to bb8
bb8:
  ADD s4, s1, zero
  JAL zero, bb2
bb9:
  ADD s5, s1, zero
  ADD s6, s2, zero
  ADD s7, s0, zero
  ADD s8, s3, zero
  JAL zero, bb4
bb10:
  ADDIW ra, ra, -76
  ADDI s9, zero, 11
  ADDI s10, zero, 11
  ADDI s11, zero, 10
  ADD t0, ra, zero
  JAL zero, bb6
