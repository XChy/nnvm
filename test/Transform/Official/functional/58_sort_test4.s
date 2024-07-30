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
  SD s8, 64(sp)
  SD s9, 72(sp)
  SD s10, 80(sp)
  SD s11, 88(sp)
  SD s7, 96(sp)
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
  ADDIW s4, s3, 1
  SLTI s5, s4, 10
  BNE s5, zero, bb13
  # implict jump to bb2
bb2:
  ADD s5, s3, zero
  # implict jump to bb3
bb3:
  BNE s5, s3, bb12
  # implict jump to bb4
bb4:
  ADD s10, s2, zero
  # implict jump to bb5
bb5:
  SLTI s5, s4, 9
  BNE s5, zero, bb11
  # implict jump to bb6
bb6:
  LA s5, n
  LW s5, 0(s5)
  BLT zero, s5, bb8
  # implict jump to bb7
bb7:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s2, 16(sp)
  LD s3, 24(sp)
  LD s4, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  LD s6, 56(sp)
  LD s8, 64(sp)
  LD s9, 72(sp)
  LD s10, 80(sp)
  LD s11, 88(sp)
  LD s7, 96(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb8:
  ADD s5, zero, zero
  # implict jump to bb9
bb9:
  ADD s11, s5, zero
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
  BLT s11, t0, bb10
  JAL zero, bb7
bb10:
  ADD s5, s11, zero
  JAL zero, bb9
bb11:
  ADD s0, s4, zero
  ADD s1, s10, zero
  JAL zero, bb1
bb12:
  SLLIW s5, s5, 2
  ADDI t5, sp, 104
  ADD s5, t5, s5
  LW s11, 0(s5)
  SLLIW t0, s3, 2
  ADDI t1, sp, 104
  ADD t0, t1, t0
  LW t1, 0(t0)
  SW t1, 0(s5)
  SW s11, 0(t0)
  ADD s10, s11, zero
  JAL zero, bb5
bb13:
  ADD s6, s4, zero
  ADD s7, s3, zero
  # implict jump to bb14
bb14:
  ADD s8, s7, zero
  ADD s9, s6, zero
  SLLIW s10, s8, 2
  ADDI t5, sp, 104
  ADD s10, t5, s10
  LW s10, 0(s10)
  SLLIW s11, s9, 2
  ADDI t5, sp, 104
  ADD s11, t5, s11
  LW s11, 0(s11)
  BLT s11, s10, bb19
  # implict jump to bb15
bb15:
  # implict jump to bb16
bb16:
  ADDIW s9, s9, 1
  SLTI s10, s9, 10
  BNE s10, zero, bb18
  # implict jump to bb17
bb17:
  ADD s5, s8, zero
  JAL zero, bb3
bb18:
  ADD s6, s9, zero
  ADD s7, s8, zero
  JAL zero, bb14
bb19:
  ADD s8, s9, zero
  JAL zero, bb16
