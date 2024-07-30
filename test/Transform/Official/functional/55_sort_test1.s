.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -144
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s2, 16(sp)
  SD s3, 24(sp)
  SD s4, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
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
  ADD s1, zero, zero
  # implict jump to bb1
bb1:
  ADD s2, s1, zero
  ADD s3, s0, zero
  ADDI s4, zero, 10
  SUBW s4, s4, s3
  ADDI s5, zero, 1
  SUBW s4, s4, s5
  BLT zero, s4, bb10
  # implict jump to bb2
bb2:
  ADD s5, s2, zero
  # implict jump to bb3
bb3:
  ADDIW s9, s3, 1
  SLTI s10, s9, 9
  BNE s10, zero, bb9
  # implict jump to bb4
bb4:
  LA s10, n
  LW s10, 0(s10)
  BLT zero, s10, bb6
  # implict jump to bb5
bb5:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s2, 16(sp)
  LD s3, 24(sp)
  LD s4, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb6:
  ADD s10, zero, zero
  # implict jump to bb7
bb7:
  ADD s11, s10, zero
  SLLIW t0, s11, 2
  ADDI a0, sp, 104
  ADD t0, a0, t0
  LW t0, 0(t0)
  ADD a0, t0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s11, s11, 1
  LA t0, n
  LW t0, 0(t0)
  BLT s11, t0, bb8
  JAL zero, bb5
bb8:
  ADD s10, s11, zero
  JAL zero, bb7
bb9:
  ADD s0, s9, zero
  ADD s1, s5, zero
  JAL zero, bb1
bb10:
  ADD s6, zero, zero
  # implict jump to bb11
bb11:
  ADD s7, s2, zero
  ADD s8, s6, zero
  SLLIW s9, s8, 2
  ADDI t5, sp, 104
  ADD s9, t5, s9
  LW s10, 0(s9)
  ADDIW s8, s8, 1
  SLLIW s11, s8, 2
  ADDI t0, sp, 104
  ADD s11, t0, s11
  LW t0, 0(s11)
  BLT t0, s10, bb16
  # implict jump to bb12
bb12:
  # implict jump to bb13
bb13:
  BLT s8, s4, bb15
  # implict jump to bb14
bb14:
  ADD s5, s7, zero
  JAL zero, bb3
bb15:
  ADD s6, s8, zero
  ADD s2, s7, zero
  JAL zero, bb11
bb16:
  LW s10, 0(s11)
  LW t0, 0(s9)
  SW t0, 0(s11)
  SW s10, 0(s9)
  ADD s7, s10, zero
  JAL zero, bb13
