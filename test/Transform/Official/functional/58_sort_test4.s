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
  ADD s4, a0, zero
  ADDI s5, zero, 1
  SUBW s5, a1, s5
  ADDI s6, zero, 0
  BLT s6, s5, bb2
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
  # implict jump to bb3
bb3:
  ADD s5, zero, zero
  ADD s6, zero, zero
  # implict jump to bb4
bb4:
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADDIW s0, s8, 1
  BLT s0, a1, bb12
  # implict jump to bb5
bb5:
  ADD s9, s8, zero
  # implict jump to bb6
bb6:
  BNE s9, s8, bb11
  # implict jump to bb7
bb7:
  ADD t0, s7, zero
  # implict jump to bb8
bb8:
  ADD s2, t0, zero
  # implict jump to bb9
bb9:
  ADDI s9, zero, 1
  SUBW s9, a1, s9
  BLT s0, s9, bb10
  JAL zero, bb1
bb10:
  ADD s5, s0, zero
  ADD s6, s2, zero
  JAL zero, bb4
bb11:
  SLLIW s9, s9, 2
  ADD s9, s4, s9
  LW t1, 0(s9)
  SLLIW t2, s8, 2
  ADD t2, s4, t2
  LW a2, 0(t2)
  SW a2, 0(s9)
  SW t1, 0(t2)
  ADD t0, t1, zero
  JAL zero, bb8
bb12:
  # implict jump to bb13
bb13:
  ADD s10, s0, zero
  ADD s11, s8, zero
  # implict jump to bb14
bb14:
  ADD t0, s11, zero
  ADD t1, s10, zero
  SLLIW t2, t0, 2
  ADD t2, s4, t2
  LW t2, 0(t2)
  SLLIW a2, t1, 2
  ADD a2, s4, a2
  LW a2, 0(a2)
  BLT a2, t2, bb20
  # implict jump to bb15
bb15:
  # implict jump to bb16
bb16:
  ADD s1, t0, zero
  ADDIW s3, t1, 1
  # implict jump to bb17
bb17:
  BLT s3, a1, bb19
  # implict jump to bb18
bb18:
  ADD s9, s1, zero
  JAL zero, bb6
bb19:
  ADD s10, s3, zero
  ADD s11, s1, zero
  JAL zero, bb14
bb20:
  ADD t0, t1, zero
  JAL zero, bb16
main:
  ADDI sp, sp, -160
  SD ra, 8(sp)
  SD s8, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s9, 88(sp)
  SD s10, 96(sp)
  SD s11, 104(sp)
  LA s5, n
  ADDI s6, zero, 10
  SW s6, 0(s5)
  ADDI s5, zero, 4
  SW s5, 112(sp)
  ADDI s5, sp, 116
  ADDI s6, zero, 3
  SW s6, 0(s5)
  ADDI s5, sp, 120
  ADDI s6, zero, 9
  SW s6, 0(s5)
  ADDI s5, sp, 124
  ADDI s6, zero, 2
  SW s6, 0(s5)
  ADDI s5, sp, 128
  SW zero, 0(s5)
  ADDI s5, sp, 132
  ADDI s6, zero, 1
  SW s6, 0(s5)
  ADDI s5, sp, 136
  ADDI s6, zero, 6
  SW s6, 0(s5)
  ADDI s5, sp, 140
  ADDI s6, zero, 5
  SW s6, 0(s5)
  ADDI s5, sp, 144
  ADDI s6, zero, 7
  SW s6, 0(s5)
  ADDI s5, sp, 148
  ADDI s6, zero, 8
  SW s6, 0(s5)
  ADDI s5, zero, 10
  ADDI s6, zero, 1
  SUBW s5, s5, s6
  BLT zero, s5, bb29
  # implict jump to bb22
bb22:
  LA s9, n
  LW s9, 0(s9)
  BLT zero, s9, bb24
  # implict jump to bb23
bb23:
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s8, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb24:
  # implict jump to bb25
bb25:
  ADD s9, zero, zero
  # implict jump to bb26
bb26:
  ADD t4, s9, zero
  SW t4, 0(sp)
  LW t4, 0(sp)
  SLLIW t1, t4, 2
  ADDI a0, sp, 112
  ADD t1, a0, t1
  LW t1, 0(t1)
  ADD a0, t1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t4, 0(sp)
  ADDIW s4, t4, 1
  # implict jump to bb27
bb27:
  LA t0, n
  LW t0, 0(t0)
  BLT s4, t0, bb28
  JAL zero, bb23
bb28:
  ADD s9, s4, zero
  JAL zero, bb26
bb29:
  # implict jump to bb30
bb30:
  ADD s5, zero, zero
  ADD s6, zero, zero
  # implict jump to bb31
bb31:
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADDIW s3, s8, 1
  SLTI s9, s3, 10
  BNE s9, zero, bb39
  # implict jump to bb32
bb32:
  ADD s9, s8, zero
  # implict jump to bb33
bb33:
  BNE s9, s8, bb38
  # implict jump to bb34
bb34:
  ADD t0, s7, zero
  # implict jump to bb35
bb35:
  ADD s2, t0, zero
  # implict jump to bb36
bb36:
  ADDI s9, zero, 10
  ADDI t0, zero, 1
  SUBW s9, s9, t0
  BLT s3, s9, bb37
  JAL zero, bb22
bb37:
  ADD s5, s3, zero
  ADD s6, s2, zero
  JAL zero, bb31
bb38:
  SLLIW s9, s9, 2
  ADDI t1, sp, 112
  ADD s9, t1, s9
  LW t1, 0(s9)
  SLLIW t2, s8, 2
  ADDI a0, sp, 112
  ADD t2, a0, t2
  LW a0, 0(t2)
  SW a0, 0(s9)
  SW t1, 0(t2)
  ADD t0, t1, zero
  JAL zero, bb35
bb39:
  # implict jump to bb40
bb40:
  ADD s10, s3, zero
  ADD s11, s8, zero
  # implict jump to bb41
bb41:
  ADD t0, s11, zero
  ADD t1, s10, zero
  SLLIW t2, t0, 2
  ADDI a0, sp, 112
  ADD t2, a0, t2
  LW t2, 0(t2)
  SLLIW a0, t1, 2
  ADDI t5, sp, 112
  ADD a0, t5, a0
  LW a0, 0(a0)
  BLT a0, t2, bb47
  # implict jump to bb42
bb42:
  # implict jump to bb43
bb43:
  ADD s1, t0, zero
  ADDIW s0, t1, 1
  # implict jump to bb44
bb44:
  SLTI t0, s0, 10
  BNE t0, zero, bb46
  # implict jump to bb45
bb45:
  ADD s9, s1, zero
  JAL zero, bb33
bb46:
  ADD s10, s0, zero
  ADD s11, s1, zero
  JAL zero, bb41
bb47:
  ADD t0, t1, zero
  JAL zero, bb43
