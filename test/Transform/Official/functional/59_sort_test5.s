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
  BLT s8, s7, bb21
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
  # implict jump to bb5
bb5:
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
  BLT s8, s4, bb9
  # implict jump to bb6
bb6:
  # implict jump to bb7
bb7:
  ADDI s0, zero, 0
  BLT s0, s1, bb8
  JAL zero, bb2
bb8:
  ADD s3, s1, zero
  JAL zero, bb5
bb9:
  ADDI s8, zero, 1
  # implict jump to bb10
bb10:
  ADD s9, zero, zero
  # implict jump to bb11
bb11:
  ADD s10, s8, zero
  ADD s11, s9, zero
  BLT s10, s1, bb20
  # implict jump to bb12
bb12:
  ADD t0, zero, zero
  # implict jump to bb13
bb13:
  BNE t0, zero, bb19
  # implict jump to bb14
bb14:
  ADD t0, s10, zero
  # implict jump to bb15
bb15:
  ADD s0, t0, zero
  SLLIW s10, s11, 2
  ADD s10, s6, s10
  LW s11, 0(s10)
  SLLIW t0, s0, 2
  ADD t0, s6, t0
  LW t1, 0(t0)
  BLT t1, s11, bb6
  # implict jump to bb16
bb16:
  LW s11, 0(s10)
  LW t1, 0(t0)
  SW t1, 0(s10)
  SW s11, 0(t0)
  SLLIW s10, s0, 1
  ADDIW s2, s10, 1
  # implict jump to bb17
bb17:
  BLT s2, s4, bb18
  JAL zero, bb6
bb18:
  ADD s9, s0, zero
  ADD s8, s2, zero
  JAL zero, bb11
bb19:
  ADDIW s10, s10, 1
  ADD t0, s10, zero
  JAL zero, bb15
bb20:
  SLLIW t1, s10, 2
  ADD t1, s6, t1
  LW t1, 0(t1)
  ADDIW t2, s10, 1
  SLLIW t2, t2, 2
  ADD t2, s6, t2
  LW t2, 0(t2)
  SLT t1, t1, t2
  ADD t0, t1, zero
  JAL zero, bb13
bb21:
  # implict jump to bb22
bb22:
  # implict jump to bb23
bb23:
  ADD s8, s7, zero
  ADDI s9, zero, 1
  SUBW s9, a1, s9
  SLLIW s10, s8, 1
  ADDIW s10, s10, 1
  BLT s10, a1, bb27
  # implict jump to bb24
bb24:
  ADDI s3, zero, 1
  SUBW s5, s8, s3
  # implict jump to bb25
bb25:
  ADDI s3, zero, -1
  BLT s3, s5, bb26
  JAL zero, bb1
bb26:
  ADD s7, s5, zero
  JAL zero, bb23
bb27:
  # implict jump to bb28
bb28:
  ADD s11, s8, zero
  # implict jump to bb29
bb29:
  ADD t0, s10, zero
  ADD t1, s11, zero
  BLT t0, s9, bb38
  # implict jump to bb30
bb30:
  ADD t2, zero, zero
  # implict jump to bb31
bb31:
  BNE t2, zero, bb37
  # implict jump to bb32
bb32:
  ADD t2, t0, zero
  # implict jump to bb33
bb33:
  ADD s4, t2, zero
  SLLIW t0, t1, 2
  ADD t0, s6, t0
  LW t1, 0(t0)
  SLLIW t2, s4, 2
  ADD t2, s6, t2
  LW a2, 0(t2)
  BLT a2, t1, bb24
  # implict jump to bb34
bb34:
  LW t1, 0(t0)
  LW a2, 0(t2)
  SW a2, 0(t0)
  SW t1, 0(t2)
  SLLIW t0, s4, 1
  ADDIW s3, t0, 1
  # implict jump to bb35
bb35:
  BLT s3, a1, bb36
  JAL zero, bb24
bb36:
  ADD s11, s4, zero
  ADD s10, s3, zero
  JAL zero, bb29
bb37:
  ADDIW t0, t0, 1
  ADD t2, t0, zero
  JAL zero, bb33
bb38:
  SLLIW a2, t0, 2
  ADD a2, s6, a2
  LW a2, 0(a2)
  ADDIW a3, t0, 1
  SLLIW a3, a3, 2
  ADD a3, s6, a3
  LW a3, 0(a3)
  SLT a2, a2, a3
  ADD t2, a2, zero
  JAL zero, bb31
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
  # implict jump to bb40
bb40:
  ADD s3, s2, zero
  ADD s4, s1, zero
  ADDIW s5, a2, 1
  BLT s4, s5, bb42
  # implict jump to bb41
bb41:
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
bb42:
  BLT s4, a2, bb50
  # implict jump to bb43
bb43:
  ADD s5, zero, zero
  # implict jump to bb44
bb44:
  BNE s5, zero, bb49
  # implict jump to bb45
bb45:
  ADD s5, s4, zero
  # implict jump to bb46
bb46:
  SLLIW s3, s3, 2
  ADD s3, s0, s3
  LW s4, 0(s3)
  SLLIW s6, s5, 2
  ADD s6, s0, s6
  LW s7, 0(s6)
  BLT s7, s4, bb48
  # implict jump to bb47
bb47:
  LW s4, 0(s3)
  LW s7, 0(s6)
  SW s7, 0(s3)
  SW s4, 0(s6)
  SLLIW s3, s5, 1
  ADDIW s3, s3, 1
  ADD s1, s3, zero
  ADD s2, s5, zero
  JAL zero, bb40
bb48:
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
bb49:
  ADDIW s4, s4, 1
  ADD s5, s4, zero
  JAL zero, bb46
bb50:
  SLLIW s6, s4, 2
  ADD s6, s0, s6
  LW s6, 0(s6)
  ADDIW s7, s4, 1
  SLLIW s7, s7, 2
  ADD s7, s0, s7
  LW s7, 0(s7)
  SLT s6, s6, s7
  ADD s5, s6, zero
  JAL zero, bb44
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
  BLT s8, s7, bb78
  # implict jump to bb52
bb52:
  ADDI s3, zero, 10
  ADDI s4, zero, 1
  SUBW s3, s3, s4
  BLT zero, s3, bb60
  # implict jump to bb53
bb53:
  LA s4, n
  LW s4, 0(s4)
  BLT zero, s4, bb55
  # implict jump to bb54
bb54:
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
bb55:
  # implict jump to bb56
bb56:
  ADD s4, zero, zero
  # implict jump to bb57
bb57:
  ADD s5, s4, zero
  SLLIW s6, s5, 2
  ADDI a0, sp, 104
  ADD s6, a0, s6
  LW s6, 0(s6)
  ADD a0, s6, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s1, s5, 1
  # implict jump to bb58
bb58:
  LA s5, n
  LW s5, 0(s5)
  BLT s1, s5, bb59
  JAL zero, bb54
bb59:
  ADD s4, s1, zero
  JAL zero, bb57
bb60:
  # implict jump to bb61
bb61:
  # implict jump to bb62
bb62:
  ADD s4, s3, zero
  LW s8, 104(sp)
  SLLIW s9, s4, 2
  ADDI t5, sp, 104
  ADD s9, t5, s9
  LW s10, 0(s9)
  SW s10, 104(sp)
  SW s8, 0(s9)
  ADDI s8, zero, 1
  SUBW s2, s4, s8
  ADDI s8, zero, 1
  BLT s8, s4, bb66
  # implict jump to bb63
bb63:
  # implict jump to bb64
bb64:
  BLT zero, s2, bb65
  JAL zero, bb53
bb65:
  ADD s3, s2, zero
  JAL zero, bb62
bb66:
  ADDI s8, zero, 1
  # implict jump to bb67
bb67:
  ADD s9, zero, zero
  # implict jump to bb68
bb68:
  ADD s10, s8, zero
  ADD s11, s9, zero
  BLT s10, s2, bb77
  # implict jump to bb69
bb69:
  ADD t0, zero, zero
  # implict jump to bb70
bb70:
  BNE t0, zero, bb76
  # implict jump to bb71
bb71:
  ADD t0, s10, zero
  # implict jump to bb72
bb72:
  ADD s6, t0, zero
  SLLIW s10, s11, 2
  ADDI t5, sp, 104
  ADD s10, t5, s10
  LW s11, 0(s10)
  SLLIW t0, s6, 2
  ADDI t1, sp, 104
  ADD t0, t1, t0
  LW t1, 0(t0)
  BLT t1, s11, bb63
  # implict jump to bb73
bb73:
  LW s11, 0(s10)
  LW t1, 0(t0)
  SW t1, 0(s10)
  SW s11, 0(t0)
  SLLIW s10, s6, 1
  ADDIW s5, s10, 1
  # implict jump to bb74
bb74:
  BLT s5, s4, bb75
  JAL zero, bb63
bb75:
  ADD s9, s6, zero
  ADD s8, s5, zero
  JAL zero, bb68
bb76:
  ADDIW s10, s10, 1
  ADD t0, s10, zero
  JAL zero, bb72
bb77:
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
  JAL zero, bb70
bb78:
  # implict jump to bb79
bb79:
  # implict jump to bb80
bb80:
  ADD s8, s7, zero
  ADDI s9, zero, 10
  ADDI s10, zero, 1
  SUBW s9, s9, s10
  SLLIW s10, s8, 1
  ADDIW s10, s10, 1
  SLTI s11, s10, 10
  BNE s11, zero, bb84
  # implict jump to bb81
bb81:
  ADDI s3, zero, 1
  SUBW s0, s8, s3
  # implict jump to bb82
bb82:
  ADDI s3, zero, -1
  BLT s3, s0, bb83
  JAL zero, bb52
bb83:
  ADD s7, s0, zero
  JAL zero, bb80
bb84:
  # implict jump to bb85
bb85:
  ADD s11, s8, zero
  # implict jump to bb86
bb86:
  ADD t0, s10, zero
  ADD t1, s11, zero
  BLT t0, s9, bb95
  # implict jump to bb87
bb87:
  ADD t2, zero, zero
  # implict jump to bb88
bb88:
  BNE t2, zero, bb94
  # implict jump to bb89
bb89:
  ADD t2, t0, zero
  # implict jump to bb90
bb90:
  ADD s3, t2, zero
  SLLIW t0, t1, 2
  ADDI t1, sp, 104
  ADD t0, t1, t0
  LW t1, 0(t0)
  SLLIW t2, s3, 2
  ADDI a0, sp, 104
  ADD t2, a0, t2
  LW a0, 0(t2)
  BLT a0, t1, bb81
  # implict jump to bb91
bb91:
  LW t1, 0(t0)
  LW a0, 0(t2)
  SW a0, 0(t0)
  SW t1, 0(t2)
  SLLIW t0, s3, 1
  ADDIW s4, t0, 1
  # implict jump to bb92
bb92:
  SLTI t0, s4, 10
  BNE t0, zero, bb93
  JAL zero, bb81
bb93:
  ADD s11, s3, zero
  ADD s10, s4, zero
  JAL zero, bb86
bb94:
  ADDIW t0, t0, 1
  ADD t2, t0, zero
  JAL zero, bb90
bb95:
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
  JAL zero, bb88
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
