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
  ADD s7, a0, zero
  ADDI s8, zero, 2
  DIVW s8, a1, s8
  ADDI s9, zero, 1
  SUBW s8, s8, s9
  ADDI s9, zero, -1
  BLT s9, s8, bb21
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
  # implict jump to bb5
bb5:
  ADD s5, s4, zero
  LW s9, 0(s7)
  SLLIW s10, s5, 2
  ADD s10, s7, s10
  LW s11, 0(s10)
  SW s11, 0(s7)
  SW s9, 0(s10)
  ADDI s9, zero, 1
  SUBW s6, s5, s9
  ADDI s9, zero, 1
  BLT s9, s5, bb9
  # implict jump to bb6
bb6:
  # implict jump to bb7
bb7:
  ADDI s0, zero, 0
  BLT s0, s6, bb8
  JAL zero, bb2
bb8:
  ADD s4, s6, zero
  JAL zero, bb5
bb9:
  ADDI s9, zero, 1
  # implict jump to bb10
bb10:
  ADD s10, zero, zero
  # implict jump to bb11
bb11:
  ADD s11, s9, zero
  ADD t0, s10, zero
  BLT s11, s6, bb20
  # implict jump to bb12
bb12:
  ADD t1, zero, zero
  # implict jump to bb13
bb13:
  BNE t1, zero, bb19
  # implict jump to bb14
bb14:
  ADD t1, s11, zero
  # implict jump to bb15
bb15:
  ADD s1, t1, zero
  SLLIW s11, t0, 2
  ADD s11, s7, s11
  LW t0, 0(s11)
  SLLIW t1, s1, 2
  ADD t1, s7, t1
  LW t2, 0(t1)
  BLT t2, t0, bb6
  # implict jump to bb16
bb16:
  LW t0, 0(s11)
  LW t2, 0(t1)
  SW t2, 0(s11)
  SW t0, 0(t1)
  SLLIW s11, s1, 1
  ADDIW s0, s11, 1
  # implict jump to bb17
bb17:
  BLT s0, s5, bb18
  JAL zero, bb6
bb18:
  ADD s10, s1, zero
  ADD s9, s0, zero
  JAL zero, bb11
bb19:
  ADDIW s11, s11, 1
  ADD t1, s11, zero
  JAL zero, bb15
bb20:
  SLLIW t2, s11, 2
  ADD t2, s7, t2
  LW t2, 0(t2)
  ADDIW a2, s11, 1
  SLLIW a2, a2, 2
  ADD a2, s7, a2
  LW a2, 0(a2)
  SLT t2, t2, a2
  ADD t1, t2, zero
  JAL zero, bb13
bb21:
  # implict jump to bb22
bb22:
  ADDI s9, zero, 1
  SUBW s3, a1, s9
  # implict jump to bb23
bb23:
  ADD s9, s8, zero
  SLLIW s10, s9, 1
  ADDIW s10, s10, 1
  BLT s10, a1, bb27
  # implict jump to bb24
bb24:
  ADDI s4, zero, 1
  SUBW s2, s9, s4
  # implict jump to bb25
bb25:
  ADDI s4, zero, -1
  BLT s4, s2, bb26
  JAL zero, bb1
bb26:
  ADD s8, s2, zero
  JAL zero, bb23
bb27:
  # implict jump to bb28
bb28:
  ADD s11, s9, zero
  # implict jump to bb29
bb29:
  ADD t0, s10, zero
  ADD t1, s11, zero
  BLT t0, s3, bb38
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
  ADD t0, s7, t0
  LW t1, 0(t0)
  SLLIW t2, s4, 2
  ADD t2, s7, t2
  LW a2, 0(t2)
  BLT a2, t1, bb24
  # implict jump to bb34
bb34:
  LW t1, 0(t0)
  LW a2, 0(t2)
  SW a2, 0(t0)
  SW t1, 0(t2)
  SLLIW t0, s4, 1
  ADDIW s5, t0, 1
  # implict jump to bb35
bb35:
  BLT s5, a1, bb36
  JAL zero, bb24
bb36:
  ADD s11, s4, zero
  ADD s10, s5, zero
  JAL zero, bb29
bb37:
  ADDIW t0, t0, 1
  ADD t2, t0, zero
  JAL zero, bb33
bb38:
  SLLIW a2, t0, 2
  ADD a2, s7, a2
  LW a2, 0(a2)
  ADDIW a3, t0, 1
  SLLIW a3, a3, 2
  ADD a3, s7, a3
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
  SD s8, 72(sp)
  ADD s0, a0, zero
  SLLIW s1, a1, 1
  ADDIW s1, s1, 1
  ADDIW s2, a2, 1
  ADD s3, a1, zero
  # implict jump to bb40
bb40:
  ADD s4, s3, zero
  ADD s5, s1, zero
  BLT s5, s2, bb42
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
  LD s8, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb42:
  BLT s5, a2, bb50
  # implict jump to bb43
bb43:
  ADD s6, zero, zero
  # implict jump to bb44
bb44:
  BNE s6, zero, bb49
  # implict jump to bb45
bb45:
  ADD s6, s5, zero
  # implict jump to bb46
bb46:
  SLLIW s4, s4, 2
  ADD s4, s0, s4
  LW s5, 0(s4)
  SLLIW s7, s6, 2
  ADD s7, s0, s7
  LW s8, 0(s7)
  BLT s8, s5, bb48
  # implict jump to bb47
bb47:
  LW s5, 0(s4)
  LW s8, 0(s7)
  SW s8, 0(s4)
  SW s5, 0(s7)
  SLLIW s4, s6, 1
  ADDIW s4, s4, 1
  ADD s1, s4, zero
  ADD s3, s6, zero
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
  LD s8, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb49:
  ADDIW s5, s5, 1
  ADD s6, s5, zero
  JAL zero, bb46
bb50:
  SLLIW s7, s5, 2
  ADD s7, s0, s7
  LW s7, 0(s7)
  ADDIW s8, s5, 1
  SLLIW s8, s8, 2
  ADD s8, s0, s8
  LW s8, 0(s8)
  SLT s7, s7, s8
  ADD s6, s7, zero
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
  LA s8, n
  ADDI s9, zero, 10
  SW s9, 0(s8)
  ADDI s8, zero, 4
  SW s8, 104(sp)
  ADDI s8, zero, 3
  SW s8, 108(sp)
  ADDI s8, zero, 9
  SW s8, 112(sp)
  ADDI s8, zero, 2
  SW s8, 116(sp)
  SW zero, 120(sp)
  ADDI s8, zero, 1
  SW s8, 124(sp)
  ADDI s8, zero, 6
  SW s8, 128(sp)
  ADDI s8, zero, 5
  SW s8, 132(sp)
  ADDI s8, zero, 7
  SW s8, 136(sp)
  ADDI s8, zero, 8
  SW s8, 140(sp)
  ADDI s8, zero, 10
  ADDI s9, zero, 2
  DIVW s8, s8, s9
  ADDI s9, zero, 1
  SUBW s8, s8, s9
  ADDI s9, zero, -1
  BLT s9, s8, bb78
  # implict jump to bb52
bb52:
  ADDI s0, zero, 10
  ADDI s1, zero, 1
  SUBW s0, s0, s1
  BLT zero, s0, bb60
  # implict jump to bb53
bb53:
  LA s1, n
  LW s1, 0(s1)
  BLT zero, s1, bb55
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
  ADD s1, zero, zero
  # implict jump to bb57
bb57:
  ADD s3, s1, zero
  SLLIW s7, s3, 2
  ADDI a0, sp, 104
  ADD s7, a0, s7
  LW s7, 0(s7)
  ADD a0, s7, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s2, s3, 1
  # implict jump to bb58
bb58:
  LA s3, n
  LW s3, 0(s3)
  BLT s2, s3, bb59
  JAL zero, bb54
bb59:
  ADD s1, s2, zero
  JAL zero, bb57
bb60:
  # implict jump to bb61
bb61:
  # implict jump to bb62
bb62:
  ADD s1, s0, zero
  LW s9, 104(sp)
  SLLIW s10, s1, 2
  ADDI t5, sp, 104
  ADD s10, t5, s10
  LW s11, 0(s10)
  SW s11, 104(sp)
  SW s9, 0(s10)
  ADDI s9, zero, 1
  SUBW s6, s1, s9
  ADDI s9, zero, 1
  BLT s9, s1, bb66
  # implict jump to bb63
bb63:
  # implict jump to bb64
bb64:
  BLT zero, s6, bb65
  JAL zero, bb53
bb65:
  ADD s0, s6, zero
  JAL zero, bb62
bb66:
  ADDI s9, zero, 1
  # implict jump to bb67
bb67:
  ADD s10, zero, zero
  # implict jump to bb68
bb68:
  ADD s11, s9, zero
  ADD t0, s10, zero
  BLT s11, s6, bb77
  # implict jump to bb69
bb69:
  ADD t1, zero, zero
  # implict jump to bb70
bb70:
  BNE t1, zero, bb76
  # implict jump to bb71
bb71:
  ADD t1, s11, zero
  # implict jump to bb72
bb72:
  ADD s3, t1, zero
  SLLIW s11, t0, 2
  ADDI t0, sp, 104
  ADD s11, t0, s11
  LW t0, 0(s11)
  SLLIW t1, s3, 2
  ADDI t2, sp, 104
  ADD t1, t2, t1
  LW t2, 0(t1)
  BLT t2, t0, bb63
  # implict jump to bb73
bb73:
  LW t0, 0(s11)
  LW t2, 0(t1)
  SW t2, 0(s11)
  SW t0, 0(t1)
  SLLIW s11, s3, 1
  ADDIW s7, s11, 1
  # implict jump to bb74
bb74:
  BLT s7, s1, bb75
  JAL zero, bb63
bb75:
  ADD s10, s3, zero
  ADD s9, s7, zero
  JAL zero, bb68
bb76:
  ADDIW s11, s11, 1
  ADD t1, s11, zero
  JAL zero, bb72
bb77:
  SLLIW t2, s11, 2
  ADDI a0, sp, 104
  ADD t2, a0, t2
  LW t2, 0(t2)
  ADDIW a0, s11, 1
  SLLIW a0, a0, 2
  ADDI t1, sp, 104
  ADD a0, t1, a0
  LW a0, 0(a0)
  SLT t2, t2, a0
  ADD t1, t2, zero
  JAL zero, bb70
bb78:
  # implict jump to bb79
bb79:
  ADDI s9, zero, 10
  ADDI s10, zero, 1
  SUBW s4, s9, s10
  # implict jump to bb80
bb80:
  ADD s9, s8, zero
  SLLIW s10, s9, 1
  ADDIW s10, s10, 1
  SLTI s11, s10, 10
  BNE s11, zero, bb84
  # implict jump to bb81
bb81:
  ADDI s0, zero, 1
  SUBW s5, s9, s0
  # implict jump to bb82
bb82:
  ADDI s0, zero, -1
  BLT s0, s5, bb83
  JAL zero, bb52
bb83:
  ADD s8, s5, zero
  JAL zero, bb80
bb84:
  # implict jump to bb85
bb85:
  ADD s11, s9, zero
  # implict jump to bb86
bb86:
  ADD t0, s10, zero
  ADD t1, s11, zero
  BLT t0, s4, bb95
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
  ADD s1, t2, zero
  SLLIW t0, t1, 2
  ADDI t1, sp, 104
  ADD t0, t1, t0
  LW t1, 0(t0)
  SLLIW t2, s1, 2
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
  SLLIW t0, s1, 1
  ADDIW s0, t0, 1
  # implict jump to bb92
bb92:
  SLTI t0, s0, 10
  BNE t0, zero, bb93
  JAL zero, bb81
bb93:
  ADD s11, s1, zero
  ADD s10, s0, zero
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
