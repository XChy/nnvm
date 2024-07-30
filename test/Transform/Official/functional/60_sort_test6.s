.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -224
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s2, 16(sp)
  SD s3, 24(sp)
  SD s4, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  SD s7, 56(sp)
  SD s11, 64(sp)
  SD s6, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD s10, 96(sp)
  LA s0, n
  ADDI s1, zero, 10
  SW s1, 0(s0)
  ADDI s0, zero, 4
  SW s0, 104(sp)
  ADDI s0, zero, 3
  SW s0, 108(sp)
  ADDI s0, zero, 9
  SW s0, 112(sp)
  ADDI s0, zero, 2
  SW s0, 116(sp)
  ADDI s0, zero, 0
  SW s0, 120(sp)
  ADDI s0, zero, 1
  SW s0, 124(sp)
  ADDI s0, zero, 6
  SW s0, 128(sp)
  ADDI s0, zero, 5
  SW s0, 132(sp)
  ADDI s0, zero, 7
  SW s0, 136(sp)
  ADDI s0, zero, 8
  SW s0, 140(sp)
  ADD s0, zero, zero
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  SLLIW s2, s1, 2
  ADDI t5, sp, 184
  ADD s2, t5, s2
  SW zero, 0(s2)
  ADDIW s1, s1, 1
  SLTI s2, s1, 10
  BNE s2, zero, bb16
  # implict jump to bb2
bb2:
  ADD s2, zero, zero
  # implict jump to bb3
bb3:
  ADD s3, s2, zero
  SLLIW s4, s3, 2
  ADDI t5, sp, 104
  ADD s4, t5, s4
  LW s4, 0(s4)
  SLLIW s4, s4, 2
  ADDI t5, sp, 184
  ADD s4, t5, s4
  LW s5, 0(s4)
  ADDIW s5, s5, 1
  SW s5, 0(s4)
  ADDIW s3, s3, 1
  SLTI s4, s3, 10
  BNE s4, zero, bb15
  # implict jump to bb4
bb4:
  ADDI s4, zero, 1
  # implict jump to bb5
bb5:
  ADD s5, s4, zero
  SLLIW s6, s5, 2
  ADDI t5, sp, 184
  ADD s6, t5, s6
  LW s7, 0(s6)
  ADDI s8, zero, 1
  SUBW s8, s5, s8
  SLLIW s8, s8, 2
  ADDI t5, sp, 184
  ADD s8, t5, s8
  LW s8, 0(s8)
  ADDW s7, s7, s8
  SW s7, 0(s6)
  ADDIW s5, s5, 1
  SLTI s6, s5, 10
  BNE s6, zero, bb14
  # implict jump to bb6
bb6:
  ADDI s6, zero, 10
  # implict jump to bb7
bb7:
  ADD s7, s6, zero
  ADDI s8, zero, 1
  SUBW s7, s7, s8
  SLLIW s8, s7, 2
  ADDI t5, sp, 104
  ADD s8, t5, s8
  LW s8, 0(s8)
  SLLIW s9, s8, 2
  ADDI t5, sp, 184
  ADD s9, t5, s9
  LW s10, 0(s9)
  ADDI s11, zero, 1
  SUBW s10, s10, s11
  SW s10, 0(s9)
  LW s9, 0(s9)
  SLLIW s9, s9, 2
  ADDI t5, sp, 144
  ADD s9, t5, s9
  SW s8, 0(s9)
  BLT zero, s7, bb13
  # implict jump to bb8
bb8:
  LA s8, n
  LW s8, 0(s8)
  BLT zero, s8, bb10
  # implict jump to bb9
bb9:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s2, 16(sp)
  LD s3, 24(sp)
  LD s4, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  LD s7, 56(sp)
  LD s11, 64(sp)
  LD s6, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb10:
  ADD s8, zero, zero
  # implict jump to bb11
bb11:
  ADD s9, s8, zero
  SLLIW s10, s9, 2
  ADDI a0, sp, 144
  ADD s10, a0, s10
  LW s10, 0(s10)
  ADD a0, s10, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s9, s9, 1
  LA s10, n
  LW s10, 0(s10)
  BLT s9, s10, bb12
  JAL zero, bb9
bb12:
  ADD s8, s9, zero
  JAL zero, bb11
bb13:
  ADD s6, s7, zero
  JAL zero, bb7
bb14:
  ADD s4, s5, zero
  JAL zero, bb5
bb15:
  ADD s2, s3, zero
  JAL zero, bb3
bb16:
  ADD s0, s1, zero
  JAL zero, bb1
