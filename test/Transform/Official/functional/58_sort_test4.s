.global select_sort
.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
select_sort:
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
  ADD s0, a0, zero
  ADDI s1, zero, 1
  SUBW s1, a1, s1
  ADDI s2, zero, 0
  BLT s2, s1, bb2
  # implict jump to bb1
bb1:
  ADD a0, zero, zero
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
bb2:
  ADD s2, zero, zero
  ADD s3, zero, zero
  # implict jump to bb3
bb3:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADDIW s6, s5, 1
  BLT s6, a1, bb10
  # implict jump to bb4
bb4:
  ADD s7, s5, zero
  # implict jump to bb5
bb5:
  BNE s7, s5, bb9
  # implict jump to bb6
bb6:
  ADD t0, s4, zero
  # implict jump to bb7
bb7:
  BLT s6, s1, bb8
  JAL zero, bb1
bb8:
  ADD s2, s6, zero
  ADD s3, t0, zero
  JAL zero, bb3
bb9:
  SLLIW s7, s7, 2
  ADD s7, s0, s7
  LW t1, 0(s7)
  SLLIW t2, s5, 2
  ADD t2, s0, t2
  LW a2, 0(t2)
  SW a2, 0(s7)
  SW t1, 0(t2)
  ADD t0, t1, zero
  JAL zero, bb7
bb10:
  ADD s8, s6, zero
  ADD s9, s5, zero
  # implict jump to bb11
bb11:
  ADD s10, s9, zero
  ADD s11, s8, zero
  SLLIW t0, s10, 2
  ADD t0, s0, t0
  LW t0, 0(t0)
  SLLIW t1, s11, 2
  ADD t1, s0, t1
  LW t1, 0(t1)
  BLT t1, t0, bb16
  # implict jump to bb12
bb12:
  # implict jump to bb13
bb13:
  ADDIW s11, s11, 1
  BLT s11, a1, bb15
  # implict jump to bb14
bb14:
  ADD s7, s10, zero
  JAL zero, bb5
bb15:
  ADD s8, s11, zero
  ADD s9, s10, zero
  JAL zero, bb11
bb16:
  ADD s10, s11, zero
  JAL zero, bb13
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
  SW zero, 120(sp)
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
  # implict jump to bb18
bb18:
  ADD s2, s1, zero
  ADD s3, s0, zero
  ADDIW s4, s3, 1
  SLTI s5, s4, 10
  BNE s5, zero, bb30
  # implict jump to bb19
bb19:
  ADD s5, s3, zero
  # implict jump to bb20
bb20:
  BNE s5, s3, bb29
  # implict jump to bb21
bb21:
  ADD s10, s2, zero
  # implict jump to bb22
bb22:
  SLTI s5, s4, 9
  BNE s5, zero, bb28
  # implict jump to bb23
bb23:
  LA s5, n
  LW s5, 0(s5)
  BLT zero, s5, bb25
  # implict jump to bb24
bb24:
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
bb25:
  ADD s5, zero, zero
  # implict jump to bb26
bb26:
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
  BLT s11, t0, bb27
  JAL zero, bb24
bb27:
  ADD s5, s11, zero
  JAL zero, bb26
bb28:
  ADD s0, s4, zero
  ADD s1, s10, zero
  JAL zero, bb18
bb29:
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
  JAL zero, bb22
bb30:
  ADD s6, s4, zero
  ADD s7, s3, zero
  # implict jump to bb31
bb31:
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
  BLT s11, s10, bb36
  # implict jump to bb32
bb32:
  # implict jump to bb33
bb33:
  ADDIW s9, s9, 1
  SLTI s10, s9, 10
  BNE s10, zero, bb35
  # implict jump to bb34
bb34:
  ADD s5, s8, zero
  JAL zero, bb20
bb35:
  ADD s6, s9, zero
  ADD s7, s8, zero
  JAL zero, bb31
bb36:
  ADD s8, s9, zero
  JAL zero, bb33
