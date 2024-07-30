.global heap_sort
.global heap_ajust
.global main
.global swap
.section .bss

.section .data
n:
.word 0x00000000
.section .text
heap_sort:
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
  ADDI s1, zero, 2
  DIVW s1, a1, s1
  ADDI s2, zero, 1
  SUBW s1, s1, s2
  ADDI s2, zero, -1
  BLT s2, s1, bb17
  # implict jump to bb1
bb1:
  ADDI s4, zero, 1
  SUBW s4, a1, s4
  ADDI s5, zero, 0
  BLT s5, s4, bb3
  # implict jump to bb2
bb2:
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
bb3:
  # implict jump to bb4
bb4:
  ADD s5, s4, zero
  LW s6, 0(s0)
  SLLIW s7, s5, 2
  ADD s7, s0, s7
  LW s8, 0(s7)
  SW s8, 0(s0)
  SW s6, 0(s7)
  ADDI s6, zero, 1
  SUBW s6, s5, s6
  ADDI s7, zero, 1
  BLT s7, s5, bb7
  # implict jump to bb5
bb5:
  ADDI s5, zero, 0
  BLT s5, s6, bb6
  JAL zero, bb2
bb6:
  ADD s4, s6, zero
  JAL zero, bb4
bb7:
  ADD s7, zero, zero
  ADDI s8, zero, 1
  # implict jump to bb8
bb8:
  ADD s9, s8, zero
  ADD s10, s7, zero
  BLT s9, s6, bb16
  # implict jump to bb9
bb9:
  ADD s11, zero, zero
  # implict jump to bb10
bb10:
  BNE s11, zero, bb15
  # implict jump to bb11
bb11:
  ADD s11, s9, zero
  # implict jump to bb12
bb12:
  SLLIW s9, s10, 2
  ADD s9, s0, s9
  LW s10, 0(s9)
  SLLIW t0, s11, 2
  ADD t0, s0, t0
  LW t1, 0(t0)
  BLT t1, s10, bb5
  # implict jump to bb13
bb13:
  LW s10, 0(s9)
  LW t1, 0(t0)
  SW t1, 0(s9)
  SW s10, 0(t0)
  SLLIW s9, s11, 1
  ADDIW s9, s9, 1
  BLT s9, s5, bb14
  JAL zero, bb5
bb14:
  ADD s7, s11, zero
  ADD s8, s9, zero
  JAL zero, bb8
bb15:
  ADDIW s9, s9, 1
  ADD s11, s9, zero
  JAL zero, bb12
bb16:
  SLLIW t0, s9, 2
  ADD t0, s0, t0
  LW t0, 0(t0)
  ADDIW t1, s9, 1
  SLLIW t1, t1, 2
  ADD t1, s0, t1
  LW t1, 0(t1)
  SLT t0, t0, t1
  ADD s11, t0, zero
  JAL zero, bb10
bb17:
  ADDI s2, zero, 1
  SUBW s2, a1, s2
  # implict jump to bb18
bb18:
  ADD s3, s1, zero
  SLLIW s4, s3, 1
  ADDIW s4, s4, 1
  BLT s4, a1, bb21
  # implict jump to bb19
bb19:
  ADDI s4, zero, 1
  SUBW s3, s3, s4
  ADDI s4, zero, -1
  BLT s4, s3, bb20
  JAL zero, bb1
bb20:
  ADD s1, s3, zero
  JAL zero, bb18
bb21:
  ADD s5, s3, zero
  # implict jump to bb22
bb22:
  ADD s6, s4, zero
  ADD s7, s5, zero
  BLT s6, s2, bb30
  # implict jump to bb23
bb23:
  ADD s8, zero, zero
  # implict jump to bb24
bb24:
  BNE s8, zero, bb29
  # implict jump to bb25
bb25:
  ADD s8, s6, zero
  # implict jump to bb26
bb26:
  SLLIW s6, s7, 2
  ADD s6, s0, s6
  LW s7, 0(s6)
  SLLIW s9, s8, 2
  ADD s9, s0, s9
  LW s10, 0(s9)
  BLT s10, s7, bb19
  # implict jump to bb27
bb27:
  LW s7, 0(s6)
  LW s10, 0(s9)
  SW s10, 0(s6)
  SW s7, 0(s9)
  SLLIW s6, s8, 1
  ADDIW s6, s6, 1
  BLT s6, a1, bb28
  JAL zero, bb19
bb28:
  ADD s5, s8, zero
  ADD s4, s6, zero
  JAL zero, bb22
bb29:
  ADDIW s6, s6, 1
  ADD s8, s6, zero
  JAL zero, bb26
bb30:
  SLLIW s9, s6, 2
  ADD s9, s0, s9
  LW s9, 0(s9)
  ADDIW s10, s6, 1
  SLLIW s10, s10, 2
  ADD s10, s0, s10
  LW s10, 0(s10)
  SLT s9, s9, s10
  ADD s8, s9, zero
  JAL zero, bb24
heap_ajust:
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
  ADD s0, a0, zero
  SLLIW s1, a1, 1
  ADDIW s1, s1, 1
  ADDIW s2, a2, 1
  ADD s3, a1, zero
  # implict jump to bb32
bb32:
  ADD s4, s3, zero
  ADD s5, s1, zero
  BLT s5, s2, bb34
  # implict jump to bb33
bb33:
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
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb34:
  BLT s5, a2, bb42
  # implict jump to bb35
bb35:
  ADD s6, zero, zero
  # implict jump to bb36
bb36:
  BNE s6, zero, bb41
  # implict jump to bb37
bb37:
  ADD s6, s5, zero
  # implict jump to bb38
bb38:
  SLLIW s4, s4, 2
  ADD s4, s0, s4
  LW s5, 0(s4)
  SLLIW s7, s6, 2
  ADD s7, s0, s7
  LW s8, 0(s7)
  BLT s8, s5, bb40
  # implict jump to bb39
bb39:
  LW s5, 0(s4)
  LW s8, 0(s7)
  SW s8, 0(s4)
  SW s5, 0(s7)
  SLLIW s4, s6, 1
  ADDIW s4, s4, 1
  ADD s1, s4, zero
  ADD s3, s6, zero
  JAL zero, bb32
bb40:
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
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb41:
  ADDIW s5, s5, 1
  ADD s6, s5, zero
  JAL zero, bb38
bb42:
  SLLIW s7, s5, 2
  ADD s7, s0, s7
  LW s7, 0(s7)
  ADDIW s8, s5, 1
  SLLIW s8, s8, 2
  ADD s8, s0, s8
  LW s8, 0(s8)
  SLT s7, s7, s8
  ADD s6, s7, zero
  JAL zero, bb36
main:
  ADDI sp, sp, -144
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s4, 16(sp)
  SD s8, 24(sp)
  SD s0, 32(sp)
  SD s1, 40(sp)
  SD s3, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
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
  ADDI s0, zero, 4
  # implict jump to bb44
bb44:
  ADD s1, s0, zero
  SLLIW s2, s1, 1
  ADDIW s2, s2, 1
  SLTI s3, s2, 10
  BNE s3, zero, bb66
  # implict jump to bb45
bb45:
  ADDI s2, zero, 1
  SUBW s1, s1, s2
  ADDI s2, zero, -1
  BLT s2, s1, bb65
  # implict jump to bb46
bb46:
  ADDI s2, zero, 9
  # implict jump to bb47
bb47:
  ADD s3, s2, zero
  LW s4, 104(sp)
  SLLIW s5, s3, 2
  ADDI t5, sp, 104
  ADD s5, t5, s5
  LW s6, 0(s5)
  SW s6, 104(sp)
  SW s4, 0(s5)
  ADDI s4, zero, 1
  SUBW s4, s3, s4
  ADDI s5, zero, 1
  BLT s5, s3, bb55
  # implict jump to bb48
bb48:
  BLT zero, s4, bb54
  # implict jump to bb49
bb49:
  LA s3, n
  LW s3, 0(s3)
  BLT zero, s3, bb51
  # implict jump to bb50
bb50:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s4, 16(sp)
  LD s8, 24(sp)
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s3, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb51:
  ADD s3, zero, zero
  # implict jump to bb52
bb52:
  ADD s5, s3, zero
  SLLIW s6, s5, 2
  ADDI a0, sp, 104
  ADD s6, a0, s6
  LW s6, 0(s6)
  ADD a0, s6, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s5, s5, 1
  LA s6, n
  LW s6, 0(s6)
  BLT s5, s6, bb53
  JAL zero, bb50
bb53:
  ADD s3, s5, zero
  JAL zero, bb52
bb54:
  ADD s2, s4, zero
  JAL zero, bb47
bb55:
  ADD s5, zero, zero
  ADDI s6, zero, 1
  # implict jump to bb56
bb56:
  ADD s7, s6, zero
  ADD s8, s5, zero
  BLT s7, s4, bb64
  # implict jump to bb57
bb57:
  ADD s9, zero, zero
  # implict jump to bb58
bb58:
  BNE s9, zero, bb63
  # implict jump to bb59
bb59:
  ADD s9, s7, zero
  # implict jump to bb60
bb60:
  SLLIW s7, s8, 2
  ADDI t5, sp, 104
  ADD s7, t5, s7
  LW s8, 0(s7)
  SLLIW s10, s9, 2
  ADDI t5, sp, 104
  ADD s10, t5, s10
  LW s11, 0(s10)
  BLT s11, s8, bb48
  # implict jump to bb61
bb61:
  LW s8, 0(s7)
  LW s11, 0(s10)
  SW s11, 0(s7)
  SW s8, 0(s10)
  SLLIW s7, s9, 1
  ADDIW s7, s7, 1
  BLT s7, s3, bb62
  JAL zero, bb48
bb62:
  ADD s5, s9, zero
  ADD s6, s7, zero
  JAL zero, bb56
bb63:
  ADDIW s7, s7, 1
  ADD s9, s7, zero
  JAL zero, bb60
bb64:
  SLLIW s10, s7, 2
  ADDI t5, sp, 104
  ADD s10, t5, s10
  LW s10, 0(s10)
  ADDIW s11, s7, 1
  SLLIW s11, s11, 2
  ADDI t5, sp, 104
  ADD s11, t5, s11
  LW s11, 0(s11)
  SLT s10, s10, s11
  ADD s9, s10, zero
  JAL zero, bb58
bb65:
  ADD s0, s1, zero
  JAL zero, bb44
bb66:
  ADD s3, s1, zero
  # implict jump to bb67
bb67:
  ADD s4, s2, zero
  ADD s5, s3, zero
  SLTI s6, s4, 9
  BNE s6, zero, bb75
  # implict jump to bb68
bb68:
  ADD s6, zero, zero
  # implict jump to bb69
bb69:
  BNE s6, zero, bb74
  # implict jump to bb70
bb70:
  ADD s6, s4, zero
  # implict jump to bb71
bb71:
  SLLIW s4, s5, 2
  ADDI t5, sp, 104
  ADD s4, t5, s4
  LW s5, 0(s4)
  SLLIW s7, s6, 2
  ADDI t5, sp, 104
  ADD s7, t5, s7
  LW s8, 0(s7)
  BLT s8, s5, bb45
  # implict jump to bb72
bb72:
  LW s5, 0(s4)
  LW s8, 0(s7)
  SW s8, 0(s4)
  SW s5, 0(s7)
  SLLIW s4, s6, 1
  ADDIW s4, s4, 1
  SLTI s5, s4, 10
  BNE s5, zero, bb73
  JAL zero, bb45
bb73:
  ADD s3, s6, zero
  ADD s2, s4, zero
  JAL zero, bb67
bb74:
  ADDIW s4, s4, 1
  ADD s6, s4, zero
  JAL zero, bb71
bb75:
  SLLIW s7, s4, 2
  ADDI t5, sp, 104
  ADD s7, t5, s7
  LW s7, 0(s7)
  ADDIW s8, s4, 1
  SLLIW s8, s8, 2
  ADDI t5, sp, 104
  ADD s8, t5, s8
  LW s8, 0(s8)
  SLT s7, s7, s8
  ADD s6, s7, zero
  JAL zero, bb69
swap:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD s0, a0, zero
  SLLIW s1, a1, 2
  ADD s1, s0, s1
  LW s2, 0(s1)
  SLLIW s3, a2, 2
  ADD s0, s0, s3
  LW s3, 0(s0)
  SW s3, 0(s1)
  SW s2, 0(s0)
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
