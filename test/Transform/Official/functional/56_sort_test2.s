.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -128
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD s6, 96(sp)
  SD s7, 104(sp)
  SD s8, 112(sp)
  LA s0, n
  ADDI s1, zero, 10
  SW s1, 0(s0)
  ADDI s0, zero, 4
  SW s0, 0(sp)
  ADDI s0, zero, 3
  SW s0, 4(sp)
  ADDI s0, zero, 9
  SW s0, 8(sp)
  ADDI s0, zero, 2
  SW s0, 12(sp)
  ADDI s0, zero, 0
  SW s0, 16(sp)
  ADDI s0, zero, 1
  SW s0, 20(sp)
  ADDI s0, zero, 6
  SW s0, 24(sp)
  ADDI s0, zero, 5
  SW s0, 28(sp)
  ADDI s0, zero, 7
  SW s0, 32(sp)
  ADDI s0, zero, 8
  SW s0, 36(sp)
  ADDI s0, zero, 1
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  SLLIW s2, s1, 2
  ADDI t5, sp, 0
  ADD s2, t5, s2
  LW s2, 0(s2)
  ADDI s3, zero, 1
  SUBW s3, s1, s3
  # implict jump to bb2
bb2:
  ADD s4, s3, zero
  ADDI s5, zero, -1
  BLT s5, s4, bb13
  # implict jump to bb3
bb3:
  ADD s5, zero, zero
  # implict jump to bb4
bb4:
  BNE s5, zero, bb12
  # implict jump to bb5
bb5:
  ADDIW s5, s4, 1
  SLLIW s5, s5, 2
  ADDI t5, sp, 0
  ADD s5, t5, s5
  SW s2, 0(s5)
  ADDIW s5, s1, 1
  SLTI s6, s5, 10
  BNE s6, zero, bb11
  # implict jump to bb6
bb6:
  LA s6, n
  LW s6, 0(s6)
  BLT zero, s6, bb8
  # implict jump to bb7
bb7:
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  LD s7, 104(sp)
  LD s8, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb8:
  ADD s6, zero, zero
  # implict jump to bb9
bb9:
  ADD s7, s6, zero
  SLLIW s8, s7, 2
  ADDI a0, sp, 0
  ADD s8, a0, s8
  LW s8, 0(s8)
  ADD a0, s8, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s7, s7, 1
  LA s8, n
  LW s8, 0(s8)
  BLT s7, s8, bb10
  JAL zero, bb7
bb10:
  ADD s6, s7, zero
  JAL zero, bb9
bb11:
  ADD s0, s5, zero
  JAL zero, bb1
bb12:
  ADDIW s0, s4, 1
  SLLIW s0, s0, 2
  ADDI t5, sp, 0
  ADD s0, t5, s0
  SLLIW s5, s4, 2
  ADDI t5, sp, 0
  ADD s5, t5, s5
  LW s5, 0(s5)
  SW s5, 0(s0)
  ADDI s0, zero, 1
  SUBW s0, s4, s0
  ADD s3, s0, zero
  JAL zero, bb2
bb13:
  SLLIW s6, s4, 2
  ADDI t5, sp, 0
  ADD s6, t5, s6
  LW s6, 0(s6)
  SLT s6, s2, s6
  ADD s5, s6, zero
  JAL zero, bb4
