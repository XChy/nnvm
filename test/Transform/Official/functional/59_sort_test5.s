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
  # implict jump to bb1
bb1:
  ADD s2, s1, zero
  ADDI s3, zero, -1
  SLT s3, s3, s2
  BNE s3, zero, bb16
  # implict jump to bb2
bb2:
  ADDI s3, zero, 1
  SUBW s3, a1, s3
  # implict jump to bb3
bb3:
  ADD s4, s3, zero
  ADDI s5, zero, 0
  SLT s5, s5, s4
  BNE s5, zero, bb5
  # implict jump to bb4
bb4:
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
bb5:
  LW s5, 0(s0)
  SLLIW s6, s4, 2
  ADD s6, s0, s6
  LW s7, 0(s6)
  SW s7, 0(s0)
  SW s5, 0(s6)
  ADDI s5, zero, 1
  SUBW s5, s4, s5
  ADDI s6, zero, 1
  ADD s7, zero, zero
  # implict jump to bb6
bb6:
  ADD s8, s7, zero
  ADD s9, s6, zero
  SLT s10, s9, s4
  BNE s10, zero, bb8
  # implict jump to bb7
bb7:
  ADD s3, s5, zero
  JAL zero, bb3
bb8:
  SLT s10, s9, s5
  BNE s10, zero, bb15
  # implict jump to bb9
bb9:
  ADD s10, zero, zero
  # implict jump to bb10
bb10:
  BNE s10, zero, bb14
  # implict jump to bb11
bb11:
  ADD s10, s9, zero
  # implict jump to bb12
bb12:
  SLLIW s8, s8, 2
  ADD s8, s0, s8
  LW s9, 0(s8)
  SLLIW s11, s10, 2
  ADD s11, s0, s11
  LW t0, 0(s11)
  SLT s9, t0, s9
  BNE s9, zero, bb7
  # implict jump to bb13
bb13:
  LW s9, 0(s8)
  LW t0, 0(s11)
  SW t0, 0(s8)
  SW s9, 0(s11)
  SLLIW s8, s10, 1
  ADDIW s8, s8, 1
  ADD s6, s8, zero
  ADD s7, s10, zero
  JAL zero, bb6
bb14:
  ADDIW s9, s9, 1
  ADD s10, s9, zero
  JAL zero, bb12
bb15:
  SLLIW s11, s9, 2
  ADD s11, s0, s11
  LW s11, 0(s11)
  ADDIW t0, s9, 1
  SLLIW t0, t0, 2
  ADD t0, s0, t0
  LW t0, 0(t0)
  SLT s11, s11, t0
  ADD s10, s11, zero
  JAL zero, bb10
bb16:
  ADDI s3, zero, 1
  SUBW s3, a1, s3
  SLLIW s4, s2, 1
  ADDIW s4, s4, 1
  ADD s5, s2, zero
  # implict jump to bb17
bb17:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLT s8, s7, a1
  BNE s8, zero, bb19
  # implict jump to bb18
bb18:
  ADDI s3, zero, 1
  SUBW s2, s2, s3
  ADD s1, s2, zero
  JAL zero, bb1
bb19:
  SLT s8, s7, s3
  BNE s8, zero, bb26
  # implict jump to bb20
bb20:
  ADD s8, zero, zero
  # implict jump to bb21
bb21:
  BNE s8, zero, bb25
  # implict jump to bb22
bb22:
  ADD s8, s7, zero
  # implict jump to bb23
bb23:
  SLLIW s6, s6, 2
  ADD s6, s0, s6
  LW s7, 0(s6)
  SLLIW s9, s8, 2
  ADD s9, s0, s9
  LW s10, 0(s9)
  SLT s7, s10, s7
  BNE s7, zero, bb18
  # implict jump to bb24
bb24:
  LW s7, 0(s6)
  LW s10, 0(s9)
  SW s10, 0(s6)
  SW s7, 0(s9)
  SLLIW s6, s8, 1
  ADDIW s6, s6, 1
  ADD s4, s6, zero
  ADD s5, s8, zero
  JAL zero, bb17
bb25:
  ADDIW s7, s7, 1
  ADD s8, s7, zero
  JAL zero, bb23
bb26:
  SLLIW s9, s7, 2
  ADD s9, s0, s9
  LW s9, 0(s9)
  ADDIW s10, s7, 1
  SLLIW s10, s10, 2
  ADD s10, s0, s10
  LW s10, 0(s10)
  SLT s9, s9, s10
  ADD s8, s9, zero
  JAL zero, bb21
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
  # implict jump to bb28
bb28:
  ADD s4, s3, zero
  ADD s5, s1, zero
  SLT s6, s5, s2
  BNE s6, zero, bb30
  # implict jump to bb29
bb29:
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
bb30:
  SLT s6, s5, a2
  BNE s6, zero, bb38
  # implict jump to bb31
bb31:
  ADD s6, zero, zero
  # implict jump to bb32
bb32:
  BNE s6, zero, bb37
  # implict jump to bb33
bb33:
  ADD s6, s5, zero
  # implict jump to bb34
bb34:
  SLLIW s4, s4, 2
  ADD s4, s0, s4
  LW s5, 0(s4)
  SLLIW s7, s6, 2
  ADD s7, s0, s7
  LW s8, 0(s7)
  SLT s5, s8, s5
  BNE s5, zero, bb36
  # implict jump to bb35
bb35:
  LW s5, 0(s4)
  LW s8, 0(s7)
  SW s8, 0(s4)
  SW s5, 0(s7)
  SLLIW s4, s6, 1
  ADDIW s4, s4, 1
  ADD s1, s4, zero
  ADD s3, s6, zero
  JAL zero, bb28
bb36:
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
bb37:
  ADDIW s5, s5, 1
  ADD s6, s5, zero
  JAL zero, bb34
bb38:
  SLLIW s7, s5, 2
  ADD s7, s0, s7
  LW s7, 0(s7)
  ADDIW s8, s5, 1
  SLLIW s8, s8, 2
  ADD s8, s0, s8
  LW s8, 0(s8)
  SLT s7, s7, s8
  ADD s6, s7, zero
  JAL zero, bb32
main:
  ADDI sp, sp, -144
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s4, 16(sp)
  SD s8, 24(sp)
  SD s9, 32(sp)
  SD s0, 40(sp)
  SD s1, 48(sp)
  SD s2, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  LA s0, n
  ADDI s1, zero, 10
  SW s1, 0(s0)
  ADDI s0, zero, 4
  SW s0, 104(sp)
  ADDI s0, sp, 108
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 112
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 116
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 120
  SW zero, 0(s0)
  ADDI s0, sp, 124
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 128
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 132
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 136
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 140
  ADDI s1, zero, 8
  SW s1, 0(s0)
  LA s0, n
  LW s0, 0(s0)
  ADDI s1, zero, 2
  DIVW s1, s0, s1
  ADDI s2, zero, 1
  SUBW s1, s1, s2
  # implict jump to bb40
bb40:
  ADD s2, s1, zero
  ADDI s3, zero, -1
  SLT s3, s3, s2
  BNE s3, zero, bb58
  # implict jump to bb41
bb41:
  ADDI s3, zero, 1
  SUBW s3, s0, s3
  # implict jump to bb42
bb42:
  ADD s4, s3, zero
  SLT s5, zero, s4
  BNE s5, zero, bb47
  # implict jump to bb43
bb43:
  ADD s5, zero, zero
  # implict jump to bb44
bb44:
  ADD s6, s5, zero
  LA s7, n
  LW s7, 0(s7)
  SLT s7, s6, s7
  BNE s7, zero, bb46
  # implict jump to bb45
bb45:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s4, 16(sp)
  LD s8, 24(sp)
  LD s9, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb46:
  SLLIW s7, s6, 2
  ADDI a0, sp, 104
  ADD s7, a0, s7
  LW s7, 0(s7)
  ADD a0, s7, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s6, s6, 1
  ADD s5, s6, zero
  JAL zero, bb44
bb47:
  LW s5, 104(sp)
  SLLIW s6, s4, 2
  ADDI t5, sp, 104
  ADD s6, t5, s6
  LW s7, 0(s6)
  SW s7, 104(sp)
  SW s5, 0(s6)
  ADDI s5, zero, 1
  SUBW s5, s4, s5
  ADDI s6, zero, 1
  ADD s7, zero, zero
  # implict jump to bb48
bb48:
  ADD s8, s7, zero
  ADD s9, s6, zero
  SLT s10, s9, s4
  BNE s10, zero, bb50
  # implict jump to bb49
bb49:
  ADD s3, s5, zero
  JAL zero, bb42
bb50:
  SLT s10, s9, s5
  BNE s10, zero, bb57
  # implict jump to bb51
bb51:
  ADD s10, zero, zero
  # implict jump to bb52
bb52:
  BNE s10, zero, bb56
  # implict jump to bb53
bb53:
  ADD s10, s9, zero
  # implict jump to bb54
bb54:
  SLLIW s8, s8, 2
  ADDI t5, sp, 104
  ADD s8, t5, s8
  LW s9, 0(s8)
  SLLIW s11, s10, 2
  ADDI t0, sp, 104
  ADD s11, t0, s11
  LW t0, 0(s11)
  SLT s9, t0, s9
  BNE s9, zero, bb49
  # implict jump to bb55
bb55:
  LW s9, 0(s8)
  LW t0, 0(s11)
  SW t0, 0(s8)
  SW s9, 0(s11)
  SLLIW s8, s10, 1
  ADDIW s8, s8, 1
  ADD s6, s8, zero
  ADD s7, s10, zero
  JAL zero, bb48
bb56:
  ADDIW s9, s9, 1
  ADD s10, s9, zero
  JAL zero, bb54
bb57:
  SLLIW s11, s9, 2
  ADDI t0, sp, 104
  ADD s11, t0, s11
  LW s11, 0(s11)
  ADDIW t0, s9, 1
  SLLIW t0, t0, 2
  ADDI t5, sp, 104
  ADD t0, t5, t0
  LW t0, 0(t0)
  SLT s11, s11, t0
  ADD s10, s11, zero
  JAL zero, bb52
bb58:
  ADDI s3, zero, 1
  SUBW s3, s0, s3
  SLLIW s4, s2, 1
  ADDIW s4, s4, 1
  ADD s5, s2, zero
  # implict jump to bb59
bb59:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLT s8, s7, s0
  BNE s8, zero, bb61
  # implict jump to bb60
bb60:
  ADDI s3, zero, 1
  SUBW s2, s2, s3
  ADD s1, s2, zero
  JAL zero, bb40
bb61:
  SLT s8, s7, s3
  BNE s8, zero, bb68
  # implict jump to bb62
bb62:
  ADD s8, zero, zero
  # implict jump to bb63
bb63:
  BNE s8, zero, bb67
  # implict jump to bb64
bb64:
  ADD s8, s7, zero
  # implict jump to bb65
bb65:
  SLLIW s6, s6, 2
  ADDI t5, sp, 104
  ADD s6, t5, s6
  LW s7, 0(s6)
  SLLIW s9, s8, 2
  ADDI t5, sp, 104
  ADD s9, t5, s9
  LW s10, 0(s9)
  SLT s7, s10, s7
  BNE s7, zero, bb60
  # implict jump to bb66
bb66:
  LW s7, 0(s6)
  LW s10, 0(s9)
  SW s10, 0(s6)
  SW s7, 0(s9)
  SLLIW s6, s8, 1
  ADDIW s6, s6, 1
  ADD s4, s6, zero
  ADD s5, s8, zero
  JAL zero, bb59
bb67:
  ADDIW s7, s7, 1
  ADD s8, s7, zero
  JAL zero, bb65
bb68:
  SLLIW s9, s7, 2
  ADDI t5, sp, 104
  ADD s9, t5, s9
  LW s9, 0(s9)
  ADDIW s10, s7, 1
  SLLIW s10, s10, 2
  ADDI t5, sp, 104
  ADD s10, t5, s10
  LW s10, 0(s10)
  SLT s9, s9, s10
  ADD s8, s9, zero
  JAL zero, bb63
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
