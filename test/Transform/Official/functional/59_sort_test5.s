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
  ADD s6, a0, zero
  ADDI s7, zero, 2
  DIVW s7, a1, s7
  ADDI s8, zero, 1
  SUBW s7, s7, s8
  ADDI s8, zero, -1
  BLT s8, s7, bb19
  # implict jump to bb1
bb1:
  ADDI s3, zero, 1
  SUBW s3, a1, s3
  ADDI s4, zero, 0
  BLT s4, s3, bb3
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
  ADD s4, s3, zero
  LW s8, 0(s6)
  SLLIW s9, s4, 2
  ADD s9, s6, s9
  LW s10, 0(s9)
  SW s10, 0(s6)
  SW s8, 0(s9)
  ADDI s8, zero, 1
  SUBW s1, s4, s8
  ADDI s8, zero, 1
  BLT s8, s4, bb8
  # implict jump to bb5
bb5:
  # implict jump to bb6
bb6:
  ADDI s0, zero, 0
  BLT s0, s1, bb7
  JAL zero, bb2
bb7:
  ADD s3, s1, zero
  JAL zero, bb4
bb8:
  ADD s8, zero, zero
  ADDI s9, zero, 1
  # implict jump to bb9
bb9:
  ADD s10, s9, zero
  ADD s11, s8, zero
  BLT s10, s1, bb18
  # implict jump to bb10
bb10:
  ADD t0, zero, zero
  # implict jump to bb11
bb11:
  BNE t0, zero, bb17
  # implict jump to bb12
bb12:
  ADD t0, s10, zero
  # implict jump to bb13
bb13:
  ADD s0, t0, zero
  SLLIW s10, s11, 2
  ADD s10, s6, s10
  LW s11, 0(s10)
  SLLIW t0, s0, 2
  ADD t0, s6, t0
  LW t1, 0(t0)
  BLT t1, s11, bb5
  # implict jump to bb14
bb14:
  LW s11, 0(s10)
  LW t1, 0(t0)
  SW t1, 0(s10)
  SW s11, 0(t0)
  SLLIW s10, s0, 1
  ADDIW s2, s10, 1
  # implict jump to bb15
bb15:
  BLT s2, s4, bb16
  JAL zero, bb5
bb16:
  ADD s8, s0, zero
  ADD s9, s2, zero
  JAL zero, bb9
bb17:
  ADDIW s10, s10, 1
  ADD t0, s10, zero
  JAL zero, bb13
bb18:
  SLLIW t1, s10, 2
  ADD t1, s6, t1
  LW t1, 0(t1)
  ADDIW t2, s10, 1
  SLLIW t2, t2, 2
  ADD t2, s6, t2
  LW t2, 0(t2)
  SLT t1, t1, t2
  ADD t0, t1, zero
  JAL zero, bb11
bb19:
  # implict jump to bb20
bb20:
  ADD s8, s7, zero
  ADDI s9, zero, 1
  SUBW s9, a1, s9
  SLLIW s10, s8, 1
  ADDIW s10, s10, 1
  BLT s10, a1, bb24
  # implict jump to bb21
bb21:
  ADDI s3, zero, 1
  SUBW s5, s8, s3
  # implict jump to bb22
bb22:
  ADDI s3, zero, -1
  BLT s3, s5, bb23
  JAL zero, bb1
bb23:
  ADD s7, s5, zero
  JAL zero, bb20
bb24:
  ADD s11, s8, zero
  # implict jump to bb25
bb25:
  ADD t0, s10, zero
  ADD t1, s11, zero
  BLT t0, s9, bb34
  # implict jump to bb26
bb26:
  ADD t2, zero, zero
  # implict jump to bb27
bb27:
  BNE t2, zero, bb33
  # implict jump to bb28
bb28:
  ADD t2, t0, zero
  # implict jump to bb29
bb29:
  ADD s3, t2, zero
  SLLIW t0, t1, 2
  ADD t0, s6, t0
  LW t1, 0(t0)
  SLLIW t2, s3, 2
  ADD t2, s6, t2
  LW a2, 0(t2)
  BLT a2, t1, bb21
  # implict jump to bb30
bb30:
  LW t1, 0(t0)
  LW a2, 0(t2)
  SW a2, 0(t0)
  SW t1, 0(t2)
  SLLIW t0, s3, 1
  ADDIW s4, t0, 1
  # implict jump to bb31
bb31:
  BLT s4, a1, bb32
  JAL zero, bb21
bb32:
  ADD s11, s3, zero
  ADD s10, s4, zero
  JAL zero, bb25
bb33:
  ADDIW t0, t0, 1
  ADD t2, t0, zero
  JAL zero, bb29
bb34:
  SLLIW a2, t0, 2
  ADD a2, s6, a2
  LW a2, 0(a2)
  ADDIW a3, t0, 1
  SLLIW a3, a3, 2
  ADD a3, s6, a3
  LW a3, 0(a3)
  SLT a2, a2, a3
  ADD t2, a2, zero
  JAL zero, bb27
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
  ADD s0, a0, zero
  SLLIW s1, a1, 1
  ADDIW s1, s1, 1
  ADD s2, a1, zero
  # implict jump to bb36
bb36:
  ADD s3, s2, zero
  ADD s4, s1, zero
  ADDIW s5, a2, 1
  BLT s4, s5, bb38
  # implict jump to bb37
bb37:
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
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb38:
  BLT s4, a2, bb46
  # implict jump to bb39
bb39:
  ADD s5, zero, zero
  # implict jump to bb40
bb40:
  BNE s5, zero, bb45
  # implict jump to bb41
bb41:
  ADD s5, s4, zero
  # implict jump to bb42
bb42:
  SLLIW s3, s3, 2
  ADD s3, s0, s3
  LW s4, 0(s3)
  SLLIW s6, s5, 2
  ADD s6, s0, s6
  LW s7, 0(s6)
  BLT s7, s4, bb44
  # implict jump to bb43
bb43:
  LW s4, 0(s3)
  LW s7, 0(s6)
  SW s7, 0(s3)
  SW s4, 0(s6)
  SLLIW s3, s5, 1
  ADDIW s3, s3, 1
  ADD s1, s3, zero
  ADD s2, s5, zero
  JAL zero, bb36
bb44:
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
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb45:
  ADDIW s4, s4, 1
  ADD s5, s4, zero
  JAL zero, bb42
bb46:
  SLLIW s6, s4, 2
  ADD s6, s0, s6
  LW s6, 0(s6)
  ADDIW s7, s4, 1
  SLLIW s7, s7, 2
  ADD s7, s0, s7
  LW s7, 0(s7)
  SLT s6, s6, s7
  ADD s5, s6, zero
  JAL zero, bb40
main:
  ADDI sp, sp, -144
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
  LA s7, n
  ADDI s8, zero, 10
  SW s8, 0(s7)
  ADDI s7, zero, 4
  SW s7, 104(sp)
  ADDI s7, sp, 108
  ADDI s8, zero, 3
  SW s8, 0(s7)
  ADDI s7, sp, 112
  ADDI s8, zero, 9
  SW s8, 0(s7)
  ADDI s7, sp, 116
  ADDI s8, zero, 2
  SW s8, 0(s7)
  ADDI s7, sp, 120
  SW zero, 0(s7)
  ADDI s7, sp, 124
  ADDI s8, zero, 1
  SW s8, 0(s7)
  ADDI s7, sp, 128
  ADDI s8, zero, 6
  SW s8, 0(s7)
  ADDI s7, sp, 132
  ADDI s8, zero, 5
  SW s8, 0(s7)
  ADDI s7, sp, 136
  ADDI s8, zero, 7
  SW s8, 0(s7)
  ADDI s7, sp, 140
  ADDI s8, zero, 8
  SW s8, 0(s7)
  ADDI s7, zero, 10
  ADDI s8, zero, 2
  DIVW s7, s7, s8
  ADDI s8, zero, 1
  SUBW s7, s7, s8
  ADDI s8, zero, -1
  BLT s8, s7, bb71
  # implict jump to bb48
bb48:
  ADDI s0, zero, 10
  ADDI s5, zero, 1
  SUBW s0, s0, s5
  BLT zero, s0, bb55
  # implict jump to bb49
bb49:
  LA s2, n
  LW s2, 0(s2)
  BLT zero, s2, bb51
  # implict jump to bb50
bb50:
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
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb51:
  ADD s2, zero, zero
  # implict jump to bb52
bb52:
  ADD s5, s2, zero
  SLLIW s6, s5, 2
  ADDI a0, sp, 104
  ADD s6, a0, s6
  LW s6, 0(s6)
  ADD a0, s6, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s3, s5, 1
  # implict jump to bb53
bb53:
  LA s5, n
  LW s5, 0(s5)
  BLT s3, s5, bb54
  JAL zero, bb50
bb54:
  ADD s2, s3, zero
  JAL zero, bb52
bb55:
  # implict jump to bb56
bb56:
  ADD s5, s0, zero
  LW s8, 104(sp)
  SLLIW s9, s5, 2
  ADDI t5, sp, 104
  ADD s9, t5, s9
  LW s10, 0(s9)
  SW s10, 104(sp)
  SW s8, 0(s9)
  ADDI s8, zero, 1
  SUBW s1, s5, s8
  ADDI s8, zero, 1
  BLT s8, s5, bb60
  # implict jump to bb57
bb57:
  # implict jump to bb58
bb58:
  BLT zero, s1, bb59
  JAL zero, bb49
bb59:
  ADD s0, s1, zero
  JAL zero, bb56
bb60:
  ADD s8, zero, zero
  ADDI s9, zero, 1
  # implict jump to bb61
bb61:
  ADD s10, s9, zero
  ADD s11, s8, zero
  BLT s10, s1, bb70
  # implict jump to bb62
bb62:
  ADD t0, zero, zero
  # implict jump to bb63
bb63:
  BNE t0, zero, bb69
  # implict jump to bb64
bb64:
  ADD t0, s10, zero
  # implict jump to bb65
bb65:
  ADD s2, t0, zero
  SLLIW s10, s11, 2
  ADDI t5, sp, 104
  ADD s10, t5, s10
  LW s11, 0(s10)
  SLLIW t0, s2, 2
  ADDI t1, sp, 104
  ADD t0, t1, t0
  LW t1, 0(t0)
  BLT t1, s11, bb57
  # implict jump to bb66
bb66:
  LW s11, 0(s10)
  LW t1, 0(t0)
  SW t1, 0(s10)
  SW s11, 0(t0)
  SLLIW s10, s2, 1
  ADDIW s6, s10, 1
  # implict jump to bb67
bb67:
  BLT s6, s5, bb68
  JAL zero, bb57
bb68:
  ADD s8, s2, zero
  ADD s9, s6, zero
  JAL zero, bb61
bb69:
  ADDIW s10, s10, 1
  ADD t0, s10, zero
  JAL zero, bb65
bb70:
  SLLIW t1, s10, 2
  ADDI t2, sp, 104
  ADD t1, t2, t1
  LW t1, 0(t1)
  ADDIW t2, s10, 1
  SLLIW t2, t2, 2
  ADDI t0, sp, 104
  ADD t2, t0, t2
  LW t2, 0(t2)
  SLT t1, t1, t2
  ADD t0, t1, zero
  JAL zero, bb63
bb71:
  # implict jump to bb72
bb72:
  ADD s8, s7, zero
  ADDI s9, zero, 10
  ADDI s10, zero, 1
  SUBW s9, s9, s10
  SLLIW s10, s8, 1
  ADDIW s10, s10, 1
  SLTI s11, s10, 10
  BNE s11, zero, bb76
  # implict jump to bb73
bb73:
  ADDI s0, zero, 1
  SUBW s4, s8, s0
  # implict jump to bb74
bb74:
  ADDI s0, zero, -1
  BLT s0, s4, bb75
  JAL zero, bb48
bb75:
  ADD s7, s4, zero
  JAL zero, bb72
bb76:
  ADD s11, s8, zero
  # implict jump to bb77
bb77:
  ADD t0, s10, zero
  ADD t1, s11, zero
  BLT t0, s9, bb86
  # implict jump to bb78
bb78:
  ADD t2, zero, zero
  # implict jump to bb79
bb79:
  BNE t2, zero, bb85
  # implict jump to bb80
bb80:
  ADD t2, t0, zero
  # implict jump to bb81
bb81:
  ADD s5, t2, zero
  SLLIW t0, t1, 2
  ADDI t1, sp, 104
  ADD t0, t1, t0
  LW t1, 0(t0)
  SLLIW t2, s5, 2
  ADDI a0, sp, 104
  ADD t2, a0, t2
  LW a0, 0(t2)
  BLT a0, t1, bb73
  # implict jump to bb82
bb82:
  LW t1, 0(t0)
  LW a0, 0(t2)
  SW a0, 0(t0)
  SW t1, 0(t2)
  SLLIW t0, s5, 1
  ADDIW s0, t0, 1
  # implict jump to bb83
bb83:
  SLTI t0, s0, 10
  BNE t0, zero, bb84
  JAL zero, bb73
bb84:
  ADD s11, s5, zero
  ADD s10, s0, zero
  JAL zero, bb77
bb85:
  ADDIW t0, t0, 1
  ADD t2, t0, zero
  JAL zero, bb81
bb86:
  SLLIW a0, t0, 2
  ADDI a1, sp, 104
  ADD a0, a1, a0
  LW a0, 0(a0)
  ADDIW a1, t0, 1
  SLLIW a1, a1, 2
  ADDI t2, sp, 104
  ADD a1, t2, a1
  LW a1, 0(a1)
  SLT a0, a0, a1
  ADD t2, a0, zero
  JAL zero, bb79
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
