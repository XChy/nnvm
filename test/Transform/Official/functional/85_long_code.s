.global avgPooling
.global arrCopy
.global getMost
.global getMid
.global insertsort
.global revert
.global QuickSort
.global main
.global calSum
.global bubblesort
.section .bss

.section .data
n:
.word 0x00000000
.section .text
avgPooling:
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
  ADD s5, a0, zero
  LA s6, n
  LW s6, 0(s6)
  ADDI s7, zero, 0
  BLT s7, s6, bb9
  # implict jump to bb1
bb1:
  # implict jump to bb2
bb2:
  SUBW s6, s6, a1
  ADDIW s6, s6, 1
  LA s10, n
  LW s10, 0(s10)
  BLT s6, s10, bb4
  # implict jump to bb3
bb3:
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
bb4:
  # implict jump to bb5
bb5:
  # implict jump to bb6
bb6:
  ADD s10, s6, zero
  SLLIW s11, s10, 2
  ADD s11, s5, s11
  ADDI t0, zero, 0
  SW t0, 0(s11)
  ADDIW s0, s10, 1
  # implict jump to bb7
bb7:
  LA s10, n
  LW s10, 0(s10)
  BLT s0, s10, bb8
  JAL zero, bb3
bb8:
  ADD s6, s0, zero
  JAL zero, bb6
bb9:
  # implict jump to bb10
bb10:
  ADDI s7, zero, 1
  SUBW s1, a1, s7
  ADD s7, zero, zero
  ADD s8, zero, zero
  ADD s9, zero, zero
  # implict jump to bb11
bb11:
  ADD s10, s9, zero
  ADD s11, s8, zero
  ADD t0, s7, zero
  BLT s11, s1, bb20
  # implict jump to bb12
bb12:
  XOR t1, s11, s1
  SLTIU t1, t1, 1
  BNE t1, zero, bb19
  # implict jump to bb13
bb13:
  SLLIW t1, s11, 2
  ADD t1, s5, t1
  LW t1, 0(t1)
  ADDW t1, t0, t1
  SUBW t1, t1, s10
  SUBW t2, s11, a1
  ADDIW t2, t2, 1
  SLLIW t2, t2, 2
  ADD t2, s5, t2
  LW a2, 0(t2)
  DIVW a3, t1, a1
  SW a3, 0(t2)
  ADD t2, a2, zero
  # implict jump to bb14
bb14:
  # implict jump to bb15
bb15:
  ADD s2, t1, zero
  ADD s3, t2, zero
  ADDIW s4, s11, 1
  # implict jump to bb16
bb16:
  LA s10, n
  LW s10, 0(s10)
  BLT s4, s10, bb18
  # implict jump to bb17
bb17:
  ADD s6, s10, zero
  JAL zero, bb2
bb18:
  ADD s7, s2, zero
  ADD s8, s4, zero
  ADD s9, s3, zero
  JAL zero, bb11
bb19:
  LW a2, 0(s5)
  DIVW a3, t0, a1
  SW a3, 0(s5)
  ADD t2, a2, zero
  ADD t1, t0, zero
  JAL zero, bb14
bb20:
  SLLIW a2, s11, 2
  ADD a2, s5, a2
  LW a2, 0(a2)
  ADDW t0, t0, a2
  ADD t2, s10, zero
  ADD t1, t0, zero
  JAL zero, bb15
arrCopy:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  ADD s1, a0, zero
  LA s2, n
  LW s2, 0(s2)
  BLT zero, s2, bb23
  # implict jump to bb22
bb22:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb23:
  # implict jump to bb24
bb24:
  ADD s2, zero, zero
  # implict jump to bb25
bb25:
  ADD s3, s2, zero
  SLLIW s4, s3, 2
  ADD s5, a1, s4
  ADD s4, s1, s4
  LW s4, 0(s4)
  SW s4, 0(s5)
  ADDIW s0, s3, 1
  # implict jump to bb26
bb26:
  LA s3, n
  LW s3, 0(s3)
  BLT s0, s3, bb27
  JAL zero, bb22
bb27:
  ADD s2, s0, zero
  JAL zero, bb25
getMost:
  LUI t0, 1048575
  ADDIW t0, t0, -16
  ADD sp, sp, t0
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -88
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -80
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -72
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -64
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -56
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -48
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -40
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -32
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -24
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -8
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  SD s11, 0(t5)
  ADD s4, a0, zero
  SLTI s5, zero, 1000
  BNE s5, zero, bb41
  # implict jump to bb29
bb29:
  LA s6, n
  LW s6, 0(s6)
  BLT zero, s6, bb32
  # implict jump to bb30
bb30:
  ADD s6, zero, zero
  # implict jump to bb31
bb31:
  ADD a0, s6, zero
  LUI ra, 1
  ADDIW ra, ra, -96
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 1
  ADDIW t5, t5, -88
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -80
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -72
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -64
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -56
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -48
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -40
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -32
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -24
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -8
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, 16
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb32:
  # implict jump to bb33
bb33:
  ADD s7, zero, zero
  ADD s8, zero, zero
  ADD s9, zero, zero
  # implict jump to bb34
bb34:
  ADD s10, s9, zero
  ADD s11, s8, zero
  ADD t0, s7, zero
  SLLIW t1, s11, 2
  ADD t1, s4, t1
  LW t1, 0(t1)
  SLLIW t2, t1, 2
  ADDI a1, sp, 0
  ADD t2, a1, t2
  LW a1, 0(t2)
  ADDIW a1, a1, 1
  SW a1, 0(t2)
  BLT t0, a1, bb40
  # implict jump to bb35
bb35:
  # implict jump to bb36
bb36:
  ADD s1, t0, zero
  ADD s2, s10, zero
  ADDIW s3, s11, 1
  # implict jump to bb37
bb37:
  LA s10, n
  LW s10, 0(s10)
  BLT s3, s10, bb39
  # implict jump to bb38
bb38:
  ADD s6, s2, zero
  JAL zero, bb31
bb39:
  ADD s7, s1, zero
  ADD s8, s3, zero
  ADD s9, s2, zero
  JAL zero, bb34
bb40:
  ADD s10, t1, zero
  ADD t0, a1, zero
  JAL zero, bb36
bb41:
  # implict jump to bb42
bb42:
  ADD s5, zero, zero
  # implict jump to bb43
bb43:
  ADD s6, s5, zero
  SLLIW s7, s6, 2
  ADDI t5, sp, 0
  ADD s7, t5, s7
  SW zero, 0(s7)
  ADDIW s0, s6, 1
  # implict jump to bb44
bb44:
  SLTI s6, s0, 1000
  BNE s6, zero, bb45
  JAL zero, bb29
bb45:
  ADD s5, s0, zero
  JAL zero, bb43
getMid:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD s0, a0, zero
  LA s1, n
  LW s1, 0(s1)
  ADDI s2, zero, 2
  REMW s2, s1, s2
  SLTIU s2, s2, 1
  BNE s2, zero, bb48
  # implict jump to bb47
bb47:
  ADDI s2, zero, 2
  DIVW s2, s1, s2
  SLLIW s2, s2, 2
  ADD s2, s0, s2
  LW s2, 0(s2)
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb48:
  ADDI s2, zero, 2
  DIVW s1, s1, s2
  SLLIW s2, s1, 2
  ADD s2, s0, s2
  LW s2, 0(s2)
  ADDI s3, zero, 1
  SUBW s1, s1, s3
  SLLIW s1, s1, 2
  ADD s0, s0, s1
  LW s0, 0(s0)
  ADDW s0, s2, s0
  ADDI s1, zero, 2
  DIVW s0, s0, s1
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
insertsort:
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
  ADD s1, a0, zero
  LA s2, n
  LW s2, 0(s2)
  ADDI s3, zero, 1
  BLT s3, s2, bb51
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
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb51:
  ADDI s2, zero, 1
  # implict jump to bb52
bb52:
  # implict jump to bb53
bb53:
  ADD s3, s2, zero
  SLLIW s4, s3, 2
  ADD s4, s1, s4
  LW s4, 0(s4)
  ADDI s5, zero, 1
  SUBW s5, s3, s5
  # implict jump to bb54
bb54:
  ADD s6, s5, zero
  ADDI s7, zero, -1
  BLT s7, s6, bb61
  # implict jump to bb55
bb55:
  ADD s7, zero, zero
  # implict jump to bb56
bb56:
  BNE s7, zero, bb60
  # implict jump to bb57
bb57:
  ADDIW s7, s6, 1
  SLLIW s7, s7, 2
  ADD s7, s1, s7
  SW s4, 0(s7)
  ADDIW s0, s3, 1
  # implict jump to bb58
bb58:
  LA s7, n
  LW s7, 0(s7)
  BLT s0, s7, bb59
  JAL zero, bb50
bb59:
  ADD s2, s0, zero
  JAL zero, bb53
bb60:
  ADDIW s0, s6, 1
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  SLLIW s2, s6, 2
  ADD s2, s1, s2
  LW s2, 0(s2)
  SW s2, 0(s0)
  ADDI s0, zero, 1
  SUBW s0, s6, s0
  ADD s5, s0, zero
  JAL zero, bb54
bb61:
  SLLIW s8, s6, 2
  ADD s8, s1, s8
  LW s8, 0(s8)
  SLT s8, s4, s8
  ADD s7, s8, zero
  JAL zero, bb56
revert:
  ADDI sp, sp, -96
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
  ADD s2, a0, zero
  BLT zero, zero, bb64
  # implict jump to bb63
bb63:
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
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb64:
  # implict jump to bb65
bb65:
  ADD s3, zero, zero
  ADD s4, zero, zero
  # implict jump to bb66
bb66:
  ADD s5, s4, zero
  ADD s6, s3, zero
  SLLIW s7, s6, 2
  ADD s7, s2, s7
  LW s8, 0(s7)
  SLLIW s9, s5, 2
  ADD s9, s2, s9
  LW s10, 0(s9)
  SW s10, 0(s7)
  SW s8, 0(s9)
  ADDIW s0, s6, 1
  ADDI s6, zero, 1
  SUBW s1, s5, s6
  # implict jump to bb67
bb67:
  BLT s0, s1, bb68
  JAL zero, bb63
bb68:
  ADD s3, s0, zero
  ADD s4, s1, zero
  JAL zero, bb66
QuickSort:
  ADDI sp, sp, -112
  SD ra, 8(sp)
  SD s0, 16(sp)
  SD s1, 24(sp)
  SD s2, 32(sp)
  SD s3, 40(sp)
  SD s4, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD s10, 96(sp)
  SD s11, 104(sp)
  ADD s2, a0, zero
  ADD s3, a1, zero
  ADD s4, a2, zero
  BLT s3, s4, bb71
  # implict jump to bb70
bb70:
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s3, 40(sp)
  LD s4, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb71:
  SLLIW s5, s3, 2
  ADD s5, s2, s5
  LW s5, 0(s5)
  BLT s3, s4, bb74
  # implict jump to bb72
bb72:
  ADD s6, s3, zero
  # implict jump to bb73
bb73:
  SLLIW t1, s6, 2
  ADD t1, s2, t1
  SW s5, 0(t1)
  ADDI t1, zero, 1
  SUBW t1, s6, t1
  ADD a0, s2, zero
  ADD a1, s3, zero
  ADD a2, t1, zero
  CALL QuickSort
  ADDIW s6, s6, 1
  ADD a0, s2, zero
  ADD a1, s6, zero
  ADD a2, s4, zero
  CALL QuickSort
  JAL zero, bb70
bb74:
  # implict jump to bb75
bb75:
  ADD s7, s3, zero
  ADD s8, s4, zero
  # implict jump to bb76
bb76:
  ADD s9, s8, zero
  ADD s10, s7, zero
  # implict jump to bb77
bb77:
  ADD s11, s9, zero
  BLT s10, s11, bb97
  # implict jump to bb78
bb78:
  ADD t0, zero, zero
  # implict jump to bb79
bb79:
  BNE t0, zero, bb96
  # implict jump to bb80
bb80:
  BLT s10, s11, bb95
  # implict jump to bb81
bb81:
  ADD t0, s10, zero
  # implict jump to bb82
bb82:
  ADD t4, t0, zero
  SW t4, 0(sp)
  # implict jump to bb83
bb83:
  LW t4, 0(sp)
  ADD s0, t4, zero
  BLT s0, s11, bb94
  # implict jump to bb84
bb84:
  ADD t1, zero, zero
  # implict jump to bb85
bb85:
  BNE t1, zero, bb93
  # implict jump to bb86
bb86:
  BLT s0, s11, bb92
  # implict jump to bb87
bb87:
  ADD t1, s11, zero
  # implict jump to bb88
bb88:
  ADD s1, t1, zero
  # implict jump to bb89
bb89:
  BLT s0, s1, bb91
  # implict jump to bb90
bb90:
  ADD s6, s0, zero
  JAL zero, bb73
bb91:
  ADD s7, s0, zero
  ADD s8, s1, zero
  JAL zero, bb76
bb92:
  SLLIW t2, s11, 2
  ADD t2, s2, t2
  SLLIW a3, s0, 2
  ADD a3, s2, a3
  LW a3, 0(a3)
  SW a3, 0(t2)
  ADDI t2, zero, 1
  SUBW t2, s11, t2
  ADD t1, t2, zero
  JAL zero, bb88
bb93:
  ADDIW s0, s0, 1
  ADD t4, s0, zero
  SW t4, 0(sp)
  JAL zero, bb83
bb94:
  SLLIW t2, s0, 2
  ADD t2, s2, t2
  LW t2, 0(t2)
  SLT t2, t2, s5
  ADD t1, t2, zero
  JAL zero, bb85
bb95:
  SLLIW t1, s10, 2
  ADD t1, s2, t1
  SLLIW t2, s11, 2
  ADD t2, s2, t2
  LW t2, 0(t2)
  SW t2, 0(t1)
  ADDIW t1, s10, 1
  ADD t0, t1, zero
  JAL zero, bb82
bb96:
  ADDI s0, zero, 1
  SUBW s0, s11, s0
  ADD s9, s0, zero
  JAL zero, bb77
bb97:
  SLLIW t1, s11, 2
  ADD t1, s2, t1
  LW t1, 0(t1)
  ADDI t2, zero, 1
  SUBW t2, s5, t2
  SLT t1, t2, t1
  ADD t0, t1, zero
  JAL zero, bb79
main:
  LUI t0, 1048575
  ADDIW t0, t0, -560
  ADD sp, sp, t0
  SD ra, 288(sp)
  SD s0, 296(sp)
  SD s1, 304(sp)
  SD s2, 312(sp)
  SD s3, 320(sp)
  SD s4, 328(sp)
  SD s5, 336(sp)
  LUI t5, 1
  ADDIW t5, t5, 248
  ADD t5, t5, sp
  SD s11, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 512
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 520
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 528
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI a2, 1
  ADDIW a2, a2, 536
  ADD a2, a2, sp
  SD s10, 0(a2)
  LUI a2, 1
  ADDIW a2, a2, 544
  ADD a2, a2, sp
  SD s7, 0(a2)
  LA a2, n
  ADDI s10, zero, 32
  SW s10, 0(a2)
  ADDI s10, zero, 7
  LUI a2, 1
  ADDIW a2, a2, 384
  ADD a2, a2, sp
  SW s10, 0(a2)
  LUI t5, 1
  ADDIW t5, t5, 384
  ADD t5, t5, sp
  ADDI s10, t5, 4
  ADDI a2, zero, 23
  SW a2, 0(s10)
  LUI t5, 1
  ADDIW t5, t5, 384
  ADD t5, t5, sp
  ADDI s10, t5, 8
  ADDI a2, zero, 89
  SW a2, 0(s10)
  LUI t5, 1
  ADDIW t5, t5, 384
  ADD t5, t5, sp
  ADDI s10, t5, 12
  ADDI a2, zero, 26
  SW a2, 0(s10)
  LUI t5, 1
  ADDIW t5, t5, 384
  ADD t5, t5, sp
  ADDI s10, t5, 16
  ADDI a2, zero, 282
  SW a2, 0(s10)
  LUI t5, 1
  ADDIW t5, t5, 384
  ADD t5, t5, sp
  ADDI s10, t5, 20
  ADDI a2, zero, 254
  SW a2, 0(s10)
  LUI t5, 1
  ADDIW t5, t5, 384
  ADD t5, t5, sp
  ADDI s10, t5, 24
  ADDI a2, zero, 27
  SW a2, 0(s10)
  LUI t5, 1
  ADDIW t5, t5, 384
  ADD t5, t5, sp
  ADDI s10, t5, 28
  ADDI a2, zero, 5
  SW a2, 0(s10)
  LUI t5, 1
  ADDIW t5, t5, 384
  ADD t5, t5, sp
  ADDI s10, t5, 32
  ADDI a2, zero, 83
  SW a2, 0(s10)
  LUI t5, 1
  ADDIW t5, t5, 384
  ADD t5, t5, sp
  ADDI s10, t5, 36
  ADDI a2, zero, 273
  SW a2, 0(s10)
  LUI t5, 1
  ADDIW t5, t5, 384
  ADD t5, t5, sp
  ADDI s10, t5, 40
  ADDI a2, zero, 574
  SW a2, 0(s10)
  LUI t5, 1
  ADDIW t5, t5, 384
  ADD t5, t5, sp
  ADDI s10, t5, 44
  ADDI a2, zero, 905
  SW a2, 0(s10)
  LUI t5, 1
  ADDIW t5, t5, 384
  ADD t5, t5, sp
  ADDI s10, t5, 48
  ADDI a2, zero, 354
  SW a2, 0(s10)
  LUI t5, 1
  ADDIW t5, t5, 384
  ADD t5, t5, sp
  ADDI s10, t5, 52
  ADDI a2, zero, 657
  SW a2, 0(s10)
  LUI t5, 1
  ADDIW t5, t5, 384
  ADD t5, t5, sp
  ADDI s10, t5, 56
  ADDI a2, zero, 935
  SW a2, 0(s10)
  LUI t5, 1
  ADDIW t5, t5, 384
  ADD t5, t5, sp
  ADDI s10, t5, 60
  ADDI a2, zero, 264
  SW a2, 0(s10)
  LUI t5, 1
  ADDIW t5, t5, 384
  ADD t5, t5, sp
  ADDI s10, t5, 64
  ADDI a2, zero, 639
  SW a2, 0(s10)
  LUI t5, 1
  ADDIW t5, t5, 384
  ADD t5, t5, sp
  ADDI s10, t5, 68
  ADDI a2, zero, 459
  SW a2, 0(s10)
  LUI t5, 1
  ADDIW t5, t5, 384
  ADD t5, t5, sp
  ADDI s10, t5, 72
  ADDI a2, zero, 29
  SW a2, 0(s10)
  LUI t5, 1
  ADDIW t5, t5, 384
  ADD t5, t5, sp
  ADDI s10, t5, 76
  ADDI a2, zero, 68
  SW a2, 0(s10)
  LUI t5, 1
  ADDIW t5, t5, 384
  ADD t5, t5, sp
  ADDI s10, t5, 80
  ADDI a2, zero, 929
  SW a2, 0(s10)
  LUI t5, 1
  ADDIW t5, t5, 384
  ADD t5, t5, sp
  ADDI s10, t5, 84
  ADDI a2, zero, 756
  SW a2, 0(s10)
  LUI t5, 1
  ADDIW t5, t5, 384
  ADD t5, t5, sp
  ADDI s10, t5, 88
  ADDI a2, zero, 452
  SW a2, 0(s10)
  LUI t5, 1
  ADDIW t5, t5, 384
  ADD t5, t5, sp
  ADDI s10, t5, 92
  ADDI a2, zero, 279
  SW a2, 0(s10)
  LUI t5, 1
  ADDIW t5, t5, 384
  ADD t5, t5, sp
  ADDI s10, t5, 96
  ADDI a2, zero, 58
  SW a2, 0(s10)
  LUI t5, 1
  ADDIW t5, t5, 384
  ADD t5, t5, sp
  ADDI s10, t5, 100
  ADDI a2, zero, 87
  SW a2, 0(s10)
  LUI t5, 1
  ADDIW t5, t5, 384
  ADD t5, t5, sp
  ADDI s10, t5, 104
  ADDI a2, zero, 96
  SW a2, 0(s10)
  LUI t5, 1
  ADDIW t5, t5, 384
  ADD t5, t5, sp
  ADDI s10, t5, 108
  ADDI a2, zero, 36
  SW a2, 0(s10)
  LUI t5, 1
  ADDIW t5, t5, 384
  ADD t5, t5, sp
  ADDI s10, t5, 112
  ADDI a2, zero, 39
  SW a2, 0(s10)
  LUI t5, 1
  ADDIW t5, t5, 384
  ADD t5, t5, sp
  ADDI s10, t5, 116
  ADDI a2, zero, 28
  SW a2, 0(s10)
  LUI t5, 1
  ADDIW t5, t5, 384
  ADD t5, t5, sp
  ADDI s10, t5, 120
  ADDI a2, zero, 1
  SW a2, 0(s10)
  LUI t5, 1
  ADDIW t5, t5, 384
  ADD t5, t5, sp
  ADDI s10, t5, 124
  ADDI a2, zero, 290
  SW a2, 0(s10)
  SLTI s10, zero, 32
  BNE s10, zero, bb279
  # implict jump to bb99
bb99:
  BLT zero, zero, bb274
  # implict jump to bb100
bb100:
  SLTI s2, zero, 32
  BNE s2, zero, bb269
  # implict jump to bb101
bb101:
  LA s8, n
  LW s8, 0(s8)
  ADDI s10, zero, 1
  SUBW s8, s8, s10
  BLT zero, s8, bb253
  # implict jump to bb102
bb102:
  SLTI s0, zero, 32
  BNE s0, zero, bb248
  # implict jump to bb103
bb103:
  LA s1, n
  LW s1, 0(s1)
  ADDI s2, zero, 2
  REMW s1, s1, s2
  SLTIU s1, s1, 1
  BNE s1, zero, bb247
  # implict jump to bb104
bb104:
  LA s1, n
  LW s1, 0(s1)
  ADDI s2, zero, 2
  DIVW s1, s1, s2
  SLLIW s1, s1, 2
  LUI t5, 1
  ADDIW t5, t5, 256
  ADD t5, t5, sp
  ADD s1, t5, s1
  LW s1, 0(s1)
  # implict jump to bb105
bb105:
  ADD a0, s1, zero
  CALL putint
  SLTI s1, zero, 1000
  BNE s1, zero, bb242
  # implict jump to bb106
bb106:
  LA s2, n
  LW s2, 0(s2)
  BLT zero, s2, bb233
  # implict jump to bb107
bb107:
  ADD s2, zero, zero
  # implict jump to bb108
bb108:
  ADD a0, s2, zero
  CALL putint
  LA s0, n
  LW s0, 0(s0)
  BLT zero, s0, bb227
  # implict jump to bb109
bb109:
  # implict jump to bb110
bb110:
  ADD t4, s0, zero
  SW t4, 156(sp)
  ADDI s2, zero, 1
  LW t4, 156(sp)
  SUBW s2, t4, s2
  BLT zero, s2, bb211
  # implict jump to bb111
bb111:
  SLTI s0, zero, 32
  BNE s0, zero, bb206
  # implict jump to bb112
bb112:
  LA s1, n
  LW s1, 0(s1)
  BLT zero, s1, bb200
  # implict jump to bb113
bb113:
  # implict jump to bb114
bb114:
  ADD t4, s1, zero
  SW t4, 80(sp)
  ADDI s8, zero, 1
  LW t4, 80(sp)
  BLT s8, t4, bb189
  # implict jump to bb115
bb115:
  SLTI s3, zero, 32
  BNE s3, zero, bb184
  # implict jump to bb116
bb116:
  LA s10, n
  LW s10, 0(s10)
  BLT zero, s10, bb179
  # implict jump to bb117
bb117:
  LUI a0, 1
  ADDIW a0, a0, 256
  ADD a0, a0, sp
  ADD a0, a0, zero
  ADD a1, zero, zero
  ADDI a2, zero, 31
  CALL QuickSort
  SLTI s1, zero, 32
  BNE s1, zero, bb174
  # implict jump to bb118
bb118:
  LA s2, n
  LW s2, 0(s2)
  BLT zero, s2, bb168
  # implict jump to bb119
bb119:
  # implict jump to bb120
bb120:
  ADD t4, s2, zero
  SW t4, 84(sp)
  LW t4, 84(sp)
  BLT zero, t4, bb160
  # implict jump to bb121
bb121:
  SLTI s1, zero, 32
  BNE s1, zero, bb155
  # implict jump to bb122
bb122:
  LA s3, n
  LW s3, 0(s3)
  BLT zero, s3, bb149
  # implict jump to bb123
bb123:
  # implict jump to bb124
bb124:
  ADD t4, s3, zero
  SW t4, 68(sp)
  LW t4, 68(sp)
  BLT zero, t4, bb138
  # implict jump to bb125
bb125:
  LW t4, 68(sp)
  ADDIW s0, t4, -2
  LW t4, 68(sp)
  BLT s0, t4, bb133
  # implict jump to bb126
bb126:
  SLTI s1, zero, 32
  BNE s1, zero, bb128
  # implict jump to bb127
bb127:
  ADD a0, zero, zero
  LD ra, 288(sp)
  LD s0, 296(sp)
  LD s1, 304(sp)
  LD s2, 312(sp)
  LD s3, 320(sp)
  LD s4, 328(sp)
  LD s5, 336(sp)
  LUI t5, 1
  ADDIW t5, t5, 248
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 512
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 520
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 528
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 536
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 544
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, 560
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb128:
  # implict jump to bb129
bb129:
  ADD s1, zero, zero
  # implict jump to bb130
bb130:
  ADD s5, s1, zero
  SLLIW s6, s5, 2
  LUI a0, 1
  ADDIW a0, a0, 256
  ADD a0, a0, sp
  ADD s6, a0, s6
  LW s6, 0(s6)
  ADD a0, s6, zero
  CALL putint
  ADDIW t4, s5, 1
  SW t4, 236(sp)
  # implict jump to bb131
bb131:
  LW t4, 236(sp)
  SLTI s5, t4, 32
  BNE s5, zero, bb132
  JAL zero, bb127
bb132:
  LW t4, 236(sp)
  ADD s1, t4, zero
  JAL zero, bb130
bb133:
  # implict jump to bb134
bb134:
  # implict jump to bb135
bb135:
  ADD s1, s0, zero
  SLLIW s5, s1, 2
  LUI t5, 1
  ADDIW t5, t5, 256
  ADD t5, t5, sp
  ADD s5, t5, s5
  SW zero, 0(s5)
  ADDIW s4, s1, 1
  # implict jump to bb136
bb136:
  LW t4, 68(sp)
  BLT s4, t4, bb137
  JAL zero, bb126
bb137:
  ADD s0, s4, zero
  JAL zero, bb135
bb138:
  # implict jump to bb139
bb139:
  ADD s2, zero, zero
  ADD s3, zero, zero
  ADD s10, zero, zero
  # implict jump to bb140
bb140:
  ADD s11, s10, zero
  ADD s8, s3, zero
  ADD s6, s2, zero
  SLTI s0, s8, 2
  BNE s0, zero, bb148
  # implict jump to bb141
bb141:
  XORI s0, s8, 2
  SLTIU s0, s0, 1
  BNE s0, zero, bb147
  # implict jump to bb142
bb142:
  SLLIW s0, s8, 2
  LUI t5, 1
  ADDIW t5, t5, 256
  ADD t5, t5, sp
  ADD s0, t5, s0
  LW s0, 0(s0)
  ADDW s0, s6, s0
  SUBW s0, s0, s11
  ADDIW s7, s8, -2
  SLLIW s7, s7, 2
  LUI t5, 1
  ADDIW t5, t5, 256
  ADD t5, t5, sp
  ADD s7, t5, s7
  LW s1, 0(s7)
  ADDI s5, zero, 3
  DIVW s5, s0, s5
  SW s5, 0(s7)
  # implict jump to bb143
bb143:
  # implict jump to bb144
bb144:
  ADD t4, s0, zero
  SW t4, 244(sp)
  ADD t4, s1, zero
  SW t4, 76(sp)
  ADDIW t4, s8, 1
  SW t4, 72(sp)
  # implict jump to bb145
bb145:
  LW t4, 72(sp)
  LW t3, 68(sp)
  BLT t4, t3, bb146
  JAL zero, bb125
bb146:
  LW t4, 244(sp)
  ADD s2, t4, zero
  LW t4, 72(sp)
  ADD s3, t4, zero
  LW t4, 76(sp)
  ADD s10, t4, zero
  JAL zero, bb140
bb147:
  LUI t5, 1
  ADDIW t5, t5, 256
  ADD t5, t5, sp
  LW s5, 0(t5)
  ADDI s7, zero, 3
  DIVW s7, s6, s7
  LUI t5, 1
  ADDIW t5, t5, 256
  ADD t5, t5, sp
  SW s7, 0(t5)
  ADD s1, s5, zero
  ADD s0, s6, zero
  JAL zero, bb143
bb148:
  SLLIW s5, s8, 2
  LUI t5, 1
  ADDIW t5, t5, 256
  ADD t5, t5, sp
  ADD s5, t5, s5
  LW s5, 0(s5)
  ADDW s5, s6, s5
  ADD s1, s11, zero
  ADD s0, s5, zero
  JAL zero, bb144
bb149:
  # implict jump to bb150
bb150:
  ADD s9, zero, zero
  # implict jump to bb151
bb151:
  ADD s10, s9, zero
  SLLIW s11, s10, 2
  LUI t5, 1
  ADDIW t5, t5, 256
  ADD t5, t5, sp
  ADD s2, t5, s11
  LUI t4, 1
  ADDIW t4, t4, 384
  ADD t4, t4, sp
  ADD s11, t4, s11
  LW s11, 0(s11)
  SW s11, 0(s2)
  ADDIW t4, s10, 1
  SW t4, 120(sp)
  # implict jump to bb152
bb152:
  LA s2, n
  LW s2, 0(s2)
  LW t4, 120(sp)
  BLT t4, s2, bb154
  # implict jump to bb153
bb153:
  ADD s3, s2, zero
  JAL zero, bb124
bb154:
  LW t4, 120(sp)
  ADD s9, t4, zero
  JAL zero, bb151
bb155:
  # implict jump to bb156
bb156:
  ADD t4, zero, zero
  SW t4, 220(sp)
  # implict jump to bb157
bb157:
  LW t4, 220(sp)
  ADD s3, t4, zero
  SLLIW s9, s3, 2
  LUI a0, 1
  ADDIW a0, a0, 256
  ADD a0, a0, sp
  ADD s9, a0, s9
  LW s9, 0(s9)
  ADD a0, s9, zero
  CALL putint
  ADDIW t4, s3, 1
  SW t4, 224(sp)
  # implict jump to bb158
bb158:
  LW t4, 224(sp)
  SLTI s3, t4, 32
  BNE s3, zero, bb159
  JAL zero, bb122
bb159:
  LW t3, 224(sp)
  ADD t4, t3, zero
  SW t4, 220(sp)
  JAL zero, bb157
bb160:
  # implict jump to bb161
bb161:
  ADD t4, zero, zero
  SW t4, 212(sp)
  ADD t4, zero, zero
  SW t4, 204(sp)
  # implict jump to bb162
bb162:
  LW t4, 204(sp)
  ADD s9, t4, zero
  LW t4, 212(sp)
  ADD s3, t4, zero
  SLLIW s10, s9, 2
  LUI t5, 1
  ADDIW t5, t5, 256
  ADD t5, t5, sp
  ADD s10, t5, s10
  LW s1, 0(s10)
  ADDW s1, s3, s1
  ADDI s3, zero, 4
  REMW s3, s9, s3
  XORI s3, s3, 3
  BNE s3, zero, bb167
  # implict jump to bb163
bb163:
  SW s1, 0(s10)
  ADD s3, zero, zero
  # implict jump to bb164
bb164:
  ADD t4, s3, zero
  SW t4, 216(sp)
  ADDIW t4, s9, 1
  SW t4, 208(sp)
  # implict jump to bb165
bb165:
  LW t4, 208(sp)
  LW t3, 84(sp)
  BLT t4, t3, bb166
  JAL zero, bb121
bb166:
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 212(sp)
  LW t3, 208(sp)
  ADD t4, t3, zero
  SW t4, 204(sp)
  JAL zero, bb162
bb167:
  SW zero, 0(s10)
  ADD s3, s1, zero
  JAL zero, bb164
bb168:
  # implict jump to bb169
bb169:
  ADD t4, zero, zero
  SW t4, 88(sp)
  # implict jump to bb170
bb170:
  LW t4, 88(sp)
  ADD s0, t4, zero
  SLLIW s8, s0, 2
  LUI t5, 1
  ADDIW t5, t5, 256
  ADD t5, t5, sp
  ADD s9, t5, s8
  LUI t4, 1
  ADDIW t4, t4, 384
  ADD t4, t4, sp
  ADD s8, t4, s8
  LW s8, 0(s8)
  SW s8, 0(s9)
  ADDIW t4, s0, 1
  SW t4, 196(sp)
  # implict jump to bb171
bb171:
  LA s0, n
  LW s0, 0(s0)
  LW t4, 196(sp)
  BLT t4, s0, bb173
  # implict jump to bb172
bb172:
  ADD s2, s0, zero
  JAL zero, bb120
bb173:
  LW t3, 196(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  JAL zero, bb170
bb174:
  # implict jump to bb175
bb175:
  ADD t4, zero, zero
  SW t4, 92(sp)
  # implict jump to bb176
bb176:
  LW t4, 92(sp)
  ADD s2, t4, zero
  SLLIW s11, s2, 2
  LUI a0, 1
  ADDIW a0, a0, 256
  ADD a0, a0, sp
  ADD s11, a0, s11
  LW s11, 0(s11)
  ADD a0, s11, zero
  CALL putint
  ADDIW t4, s2, 1
  SW t4, 64(sp)
  # implict jump to bb177
bb177:
  LW t4, 64(sp)
  SLTI s2, t4, 32
  BNE s2, zero, bb178
  JAL zero, bb118
bb178:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  JAL zero, bb176
bb179:
  # implict jump to bb180
bb180:
  ADD t4, zero, zero
  SW t4, 96(sp)
  # implict jump to bb181
bb181:
  LW t4, 96(sp)
  ADD s11, t4, zero
  SLLIW s1, s11, 2
  LUI t5, 1
  ADDIW t5, t5, 256
  ADD t5, t5, sp
  ADD s2, t5, s1
  LUI t4, 1
  ADDIW t4, t4, 384
  ADD t4, t4, sp
  ADD s1, t4, s1
  LW s1, 0(s1)
  SW s1, 0(s2)
  ADDIW t4, s11, 1
  SW t4, 232(sp)
  # implict jump to bb182
bb182:
  LA s1, n
  LW s1, 0(s1)
  LW t4, 232(sp)
  BLT t4, s1, bb183
  JAL zero, bb117
bb183:
  LW t3, 232(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  JAL zero, bb181
bb184:
  # implict jump to bb185
bb185:
  ADD t4, zero, zero
  SW t4, 100(sp)
  # implict jump to bb186
bb186:
  LW t4, 100(sp)
  ADD s11, t4, zero
  SLLIW s10, s11, 2
  LUI a0, 1
  ADDIW a0, a0, 256
  ADD a0, a0, sp
  ADD s10, a0, s10
  LW s10, 0(s10)
  ADD a0, s10, zero
  CALL putint
  ADDIW t4, s11, 1
  SW t4, 248(sp)
  # implict jump to bb187
bb187:
  LW t4, 248(sp)
  SLTI s10, t4, 32
  BNE s10, zero, bb188
  JAL zero, bb116
bb188:
  LW t3, 248(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  JAL zero, bb186
bb189:
  ADDI s8, zero, 1
  # implict jump to bb190
bb190:
  ADD t4, s8, zero
  SW t4, 108(sp)
  # implict jump to bb191
bb191:
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LW t4, 124(sp)
  SLLIW s11, t4, 2
  LUI t4, 1
  ADDIW t4, t4, 256
  ADD t4, t4, sp
  ADD s11, t4, s11
  LW t4, 0(s11)
  SW t4, 128(sp)
  ADDI s2, zero, 1
  LW t4, 124(sp)
  SUBW s2, t4, s2
  ADD t4, s2, zero
  SW t4, 116(sp)
  # implict jump to bb192
bb192:
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  ADDI s3, zero, -1
  LW t4, 112(sp)
  BLT s3, t4, bb199
  # implict jump to bb193
bb193:
  ADD s3, zero, zero
  # implict jump to bb194
bb194:
  BNE s3, zero, bb198
  # implict jump to bb195
bb195:
  LW t4, 112(sp)
  ADDIW s3, t4, 1
  SLLIW s3, s3, 2
  LUI t4, 1
  ADDIW t4, t4, 256
  ADD t4, t4, sp
  ADD s3, t4, s3
  LW t4, 128(sp)
  SW t4, 0(s3)
  LW t3, 124(sp)
  ADDIW t4, t3, 1
  SW t4, 104(sp)
  # implict jump to bb196
bb196:
  LW t4, 104(sp)
  LW t3, 80(sp)
  BLT t4, t3, bb197
  JAL zero, bb115
bb197:
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  JAL zero, bb191
bb198:
  LW t4, 112(sp)
  ADDIW s0, t4, 1
  SLLIW s0, s0, 2
  LUI t4, 1
  ADDIW t4, t4, 256
  ADD t4, t4, sp
  ADD s0, t4, s0
  LW t4, 112(sp)
  SLLIW s1, t4, 2
  LUI t4, 1
  ADDIW t4, t4, 256
  ADD t4, t4, sp
  ADD s1, t4, s1
  LW s1, 0(s1)
  SW s1, 0(s0)
  ADDI s0, zero, 1
  LW t4, 112(sp)
  SUBW s0, t4, s0
  ADD t4, s0, zero
  SW t4, 116(sp)
  JAL zero, bb192
bb199:
  LW t4, 112(sp)
  SLLIW s11, t4, 2
  LUI t4, 1
  ADDIW t4, t4, 256
  ADD t4, t4, sp
  ADD s11, t4, s11
  LW s11, 0(s11)
  LW t4, 128(sp)
  SLT s11, t4, s11
  ADD s3, s11, zero
  JAL zero, bb194
bb200:
  # implict jump to bb201
bb201:
  ADD t4, zero, zero
  SW t4, 132(sp)
  # implict jump to bb202
bb202:
  LW t4, 132(sp)
  ADD s8, t4, zero
  SLLIW s10, s8, 2
  LUI t5, 1
  ADDIW t5, t5, 256
  ADD t5, t5, sp
  ADD s11, t5, s10
  LUI t4, 1
  ADDIW t4, t4, 384
  ADD t4, t4, sp
  ADD s10, t4, s10
  LW s10, 0(s10)
  SW s10, 0(s11)
  ADDIW t4, s8, 1
  SW t4, 240(sp)
  # implict jump to bb203
bb203:
  LA s8, n
  LW s8, 0(s8)
  LW t4, 240(sp)
  BLT t4, s8, bb205
  # implict jump to bb204
bb204:
  ADD s1, s8, zero
  JAL zero, bb114
bb205:
  LW t3, 240(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  JAL zero, bb202
bb206:
  # implict jump to bb207
bb207:
  ADD t4, zero, zero
  SW t4, 136(sp)
  # implict jump to bb208
bb208:
  LW t4, 136(sp)
  ADD s1, t4, zero
  SLLIW s3, s1, 2
  LUI a0, 1
  ADDIW a0, a0, 256
  ADD a0, a0, sp
  ADD s3, a0, s3
  LW s3, 0(s3)
  ADD a0, s3, zero
  CALL putint
  ADDIW t4, s1, 1
  SW t4, 8(sp)
  # implict jump to bb209
bb209:
  LW t4, 8(sp)
  SLTI s1, t4, 32
  BNE s1, zero, bb210
  JAL zero, bb112
bb210:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  JAL zero, bb208
bb211:
  # implict jump to bb212
bb212:
  ADD t4, zero, zero
  SW t4, 140(sp)
  ADD t4, zero, zero
  SW t4, 144(sp)
  # implict jump to bb213
bb213:
  LW t4, 144(sp)
  ADD s8, t4, zero
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t4, 156(sp)
  LW t3, 40(sp)
  SUBW s11, t4, t3
  ADDI s1, zero, 1
  SUBW s1, s11, s1
  BLT zero, s1, bb218
  # implict jump to bb214
bb214:
  ADD s1, s8, zero
  # implict jump to bb215
bb215:
  ADD t4, s1, zero
  SW t4, 36(sp)
  LW t3, 40(sp)
  ADDIW t4, t3, 1
  SW t4, 32(sp)
  # implict jump to bb216
bb216:
  ADDI s0, zero, 1
  LW t4, 156(sp)
  SUBW s0, t4, s0
  LW t4, 32(sp)
  BLT t4, s0, bb217
  JAL zero, bb111
bb217:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  JAL zero, bb213
bb218:
  # implict jump to bb219
bb219:
  ADD t4, zero, zero
  SW t4, 148(sp)
  ADD t4, s8, zero
  SW t4, 152(sp)
  # implict jump to bb220
bb220:
  LW t4, 152(sp)
  ADD s10, t4, zero
  LW t4, 148(sp)
  ADD s0, t4, zero
  SLLIW s8, s0, 2
  LUI t5, 1
  ADDIW t5, t5, 256
  ADD t5, t5, sp
  ADD s8, t5, s8
  LW s11, 0(s8)
  ADDIW t4, s0, 1
  SW t4, 252(sp)
  LW t4, 252(sp)
  SLLIW s0, t4, 2
  LUI t5, 1
  ADDIW t5, t5, 256
  ADD t5, t5, sp
  ADD s0, t5, s0
  LW s3, 0(s0)
  BLT s3, s11, bb226
  # implict jump to bb221
bb221:
  ADD s3, s10, zero
  # implict jump to bb222
bb222:
  ADD t4, s3, zero
  SW t4, 256(sp)
  # implict jump to bb223
bb223:
  LW t4, 156(sp)
  LW t3, 40(sp)
  SUBW s0, t4, t3
  ADDI s3, zero, 1
  SUBW s0, s0, s3
  LW t4, 252(sp)
  BLT t4, s0, bb225
  # implict jump to bb224
bb224:
  LW t4, 256(sp)
  ADD s1, t4, zero
  JAL zero, bb215
bb225:
  LW t3, 252(sp)
  ADD t4, t3, zero
  SW t4, 148(sp)
  LW t3, 256(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  JAL zero, bb220
bb226:
  LW s10, 0(s0)
  LW s11, 0(s8)
  SW s11, 0(s0)
  SW s10, 0(s8)
  ADD s3, s10, zero
  JAL zero, bb222
bb227:
  # implict jump to bb228
bb228:
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb229
bb229:
  LW t4, 4(sp)
  ADD s2, t4, zero
  SLLIW s3, s2, 2
  LUI t5, 1
  ADDIW t5, t5, 256
  ADD t5, t5, sp
  ADD s8, t5, s3
  LUI t4, 1
  ADDIW t4, t4, 384
  ADD t4, t4, sp
  ADD s3, t4, s3
  LW s3, 0(s3)
  SW s3, 0(s8)
  ADDIW t4, s2, 1
  SW t4, 260(sp)
  # implict jump to bb230
bb230:
  LA s2, n
  LW s2, 0(s2)
  LW t4, 260(sp)
  BLT t4, s2, bb232
  # implict jump to bb231
bb231:
  ADD s0, s2, zero
  JAL zero, bb110
bb232:
  LW t3, 260(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  JAL zero, bb229
bb233:
  # implict jump to bb234
bb234:
  ADD t4, zero, zero
  SW t4, 12(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb235
bb235:
  LW t4, 20(sp)
  ADD s0, t4, zero
  LW t4, 16(sp)
  ADD s1, t4, zero
  LW t4, 12(sp)
  ADD s11, t4, zero
  SLLIW s10, s1, 2
  LUI t5, 1
  ADDIW t5, t5, 256
  ADD t5, t5, sp
  ADD s10, t5, s10
  LW s10, 0(s10)
  SLLIW s8, s10, 2
  ADDI t5, sp, 344
  ADD s8, t5, s8
  LW s3, 0(s8)
  ADDIW s3, s3, 1
  SW s3, 0(s8)
  BLT s11, s3, bb241
  # implict jump to bb236
bb236:
  ADD s8, s11, zero
  # implict jump to bb237
bb237:
  ADD t4, s8, zero
  SW t4, 272(sp)
  ADD t4, s0, zero
  SW t4, 228(sp)
  ADDIW t4, s1, 1
  SW t4, 280(sp)
  # implict jump to bb238
bb238:
  LA s0, n
  LW s0, 0(s0)
  LW t4, 280(sp)
  BLT t4, s0, bb240
  # implict jump to bb239
bb239:
  LW t4, 228(sp)
  ADD s2, t4, zero
  JAL zero, bb108
bb240:
  LW t3, 272(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 280(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 228(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb235
bb241:
  ADD s0, s10, zero
  ADD s8, s3, zero
  JAL zero, bb237
bb242:
  # implict jump to bb243
bb243:
  ADD t4, zero, zero
  SW t4, 24(sp)
  # implict jump to bb244
bb244:
  LW t4, 24(sp)
  ADD s2, t4, zero
  SLLIW s8, s2, 2
  ADDI t4, sp, 344
  ADD s8, t4, s8
  SW zero, 0(s8)
  ADDIW t4, s2, 1
  SW t4, 164(sp)
  # implict jump to bb245
bb245:
  LW t4, 164(sp)
  SLTI s2, t4, 1000
  BNE s2, zero, bb246
  JAL zero, bb106
bb246:
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  JAL zero, bb244
bb247:
  LA s2, n
  LW s2, 0(s2)
  ADDI s8, zero, 2
  DIVW s2, s2, s8
  SLLIW s8, s2, 2
  LUI t5, 1
  ADDIW t5, t5, 256
  ADD t5, t5, sp
  ADD s8, t5, s8
  LW s8, 0(s8)
  ADDI s10, zero, 1
  SUBW s2, s2, s10
  SLLIW s2, s2, 2
  LUI t5, 1
  ADDIW t5, t5, 256
  ADD t5, t5, sp
  ADD s2, t5, s2
  LW s2, 0(s2)
  ADDW s2, s8, s2
  ADDI s8, zero, 2
  DIVW s2, s2, s8
  ADD s1, s2, zero
  JAL zero, bb105
bb248:
  # implict jump to bb249
bb249:
  ADD t4, zero, zero
  SW t4, 28(sp)
  # implict jump to bb250
bb250:
  LW t4, 28(sp)
  ADD s1, t4, zero
  SLLIW s2, s1, 2
  LUI a0, 1
  ADDIW a0, a0, 256
  ADD a0, a0, sp
  ADD s2, a0, s2
  LW s2, 0(s2)
  ADD a0, s2, zero
  CALL putint
  ADDIW t4, s1, 1
  SW t4, 284(sp)
  # implict jump to bb251
bb251:
  LW t4, 284(sp)
  SLTI s1, t4, 32
  BNE s1, zero, bb252
  JAL zero, bb103
bb252:
  LW t3, 284(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  JAL zero, bb250
bb253:
  # implict jump to bb254
bb254:
  LA s8, n
  LW t4, 0(s8)
  SW t4, 188(sp)
  ADD t4, zero, zero
  SW t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 52(sp)
  # implict jump to bb255
bb255:
  LW t4, 52(sp)
  ADD s11, t4, zero
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t4, 188(sp)
  LW t3, 56(sp)
  SUBW s2, t4, t3
  ADDI s10, zero, 1
  SUBW s2, s2, s10
  BLT zero, s2, bb260
  # implict jump to bb256
bb256:
  ADD s2, s11, zero
  # implict jump to bb257
bb257:
  ADD t4, s2, zero
  SW t4, 176(sp)
  LW t3, 56(sp)
  ADDIW t4, t3, 1
  SW t4, 168(sp)
  # implict jump to bb258
bb258:
  LA s0, n
  LW s0, 0(s0)
  ADDI s1, zero, 1
  SUBW s0, s0, s1
  LW t4, 168(sp)
  BLT t4, s0, bb259
  JAL zero, bb102
bb259:
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  JAL zero, bb255
bb260:
  # implict jump to bb261
bb261:
  ADD t4, zero, zero
  SW t4, 44(sp)
  ADD t4, s11, zero
  SW t4, 48(sp)
  # implict jump to bb262
bb262:
  LW t4, 48(sp)
  ADD s11, t4, zero
  LW t4, 44(sp)
  ADD s10, t4, zero
  SLLIW s8, s10, 2
  LUI t5, 1
  ADDIW t5, t5, 256
  ADD t5, t5, sp
  ADD s8, t5, s8
  LW s1, 0(s8)
  ADDIW t4, s10, 1
  SW t4, 180(sp)
  LW t4, 180(sp)
  SLLIW s10, t4, 2
  LUI t5, 1
  ADDIW t5, t5, 256
  ADD t5, t5, sp
  ADD s10, t5, s10
  LW s0, 0(s10)
  BLT s0, s1, bb268
  # implict jump to bb263
bb263:
  ADD s0, s11, zero
  # implict jump to bb264
bb264:
  ADD t4, s0, zero
  SW t4, 184(sp)
  # implict jump to bb265
bb265:
  LA s0, n
  LW s0, 0(s0)
  LW t4, 56(sp)
  SUBW s0, s0, t4
  ADDI s1, zero, 1
  SUBW s0, s0, s1
  LW t4, 180(sp)
  BLT t4, s0, bb267
  # implict jump to bb266
bb266:
  LW t4, 184(sp)
  ADD s2, t4, zero
  JAL zero, bb257
bb267:
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb262
bb268:
  LW s1, 0(s10)
  LW s11, 0(s8)
  SW s11, 0(s10)
  SW s1, 0(s8)
  ADD s0, s1, zero
  JAL zero, bb264
bb269:
  # implict jump to bb270
bb270:
  ADD t4, zero, zero
  SW t4, 60(sp)
  # implict jump to bb271
bb271:
  LW t4, 60(sp)
  ADD s8, t4, zero
  SLLIW s10, s8, 2
  LUI a0, 1
  ADDIW a0, a0, 256
  ADD a0, a0, sp
  ADD s10, a0, s10
  LW s10, 0(s10)
  ADD a0, s10, zero
  CALL putint
  ADDIW t4, s8, 1
  SW t4, 192(sp)
  # implict jump to bb272
bb272:
  LW t4, 192(sp)
  SLTI s8, t4, 32
  BNE s8, zero, bb273
  JAL zero, bb101
bb273:
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  JAL zero, bb271
bb274:
  # implict jump to bb275
bb275:
  ADD t4, zero, zero
  SW t4, 264(sp)
  ADD t4, zero, zero
  SW t4, 268(sp)
  # implict jump to bb276
bb276:
  LW t4, 268(sp)
  ADD a2, t4, zero
  LW t4, 264(sp)
  ADD s11, t4, zero
  SLLIW s10, s11, 2
  LUI a4, 1
  ADDIW a4, a4, 256
  ADD a4, a4, sp
  ADD s10, a4, s10
  LW a4, 0(s10)
  SLLIW s2, a2, 2
  LUI t5, 1
  ADDIW t5, t5, 256
  ADD t5, t5, sp
  ADD s2, t5, s2
  LW s8, 0(s2)
  SW s8, 0(s10)
  SW a4, 0(s2)
  ADDIW t4, s11, 1
  SW t4, 160(sp)
  ADDI s2, zero, 1
  SUBW t4, a2, s2
  SW t4, 200(sp)
  # implict jump to bb277
bb277:
  LW t4, 160(sp)
  LW t3, 200(sp)
  BLT t4, t3, bb278
  JAL zero, bb100
bb278:
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 264(sp)
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 268(sp)
  JAL zero, bb276
bb279:
  # implict jump to bb280
bb280:
  ADD t4, zero, zero
  SW t4, 276(sp)
  # implict jump to bb281
bb281:
  LW t4, 276(sp)
  ADD a2, t4, zero
  SLLIW s10, a2, 2
  LUI t5, 1
  ADDIW t5, t5, 256
  ADD t5, t5, sp
  ADD s11, t5, s10
  LUI t4, 1
  ADDIW t4, t4, 384
  ADD t4, t4, sp
  ADD s10, t4, s10
  LW s10, 0(s10)
  SW s10, 0(s11)
  ADDIW t4, a2, 1
  SW t4, 172(sp)
  # implict jump to bb282
bb282:
  LW t4, 172(sp)
  SLTI s10, t4, 32
  BNE s10, zero, bb283
  JAL zero, bb99
bb283:
  LW t3, 172(sp)
  ADD t4, t3, zero
  SW t4, 276(sp)
  JAL zero, bb281
calSum:
  ADDI sp, sp, -96
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
  ADD s3, a0, zero
  LA s4, n
  LW s4, 0(s4)
  BLT zero, s4, bb286
  # implict jump to bb285
bb285:
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
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb286:
  # implict jump to bb287
bb287:
  ADDI s4, zero, 1
  SUBW s1, a1, s4
  ADD s4, zero, zero
  ADD s5, zero, zero
  # implict jump to bb288
bb288:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLLIW s8, s6, 2
  ADD s8, s3, s8
  LW s9, 0(s8)
  ADDW s7, s7, s9
  REMW s9, s6, a1
  BNE s9, s1, bb293
  # implict jump to bb289
bb289:
  SW s7, 0(s8)
  ADD s9, zero, zero
  # implict jump to bb290
bb290:
  ADD s2, s9, zero
  ADDIW s0, s6, 1
  # implict jump to bb291
bb291:
  LA s6, n
  LW s6, 0(s6)
  BLT s0, s6, bb292
  JAL zero, bb285
bb292:
  ADD s4, s2, zero
  ADD s5, s0, zero
  JAL zero, bb288
bb293:
  SW zero, 0(s8)
  ADD s9, s7, zero
  JAL zero, bb290
bubblesort:
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
  LA s5, n
  LW s5, 0(s5)
  ADDI s6, zero, 1
  SUBW s5, s5, s6
  BLT zero, s5, bb296
  # implict jump to bb295
bb295:
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
bb296:
  # implict jump to bb297
bb297:
  ADD s5, zero, zero
  ADD s6, zero, zero
  # implict jump to bb298
bb298:
  ADD s7, s6, zero
  ADD s8, s5, zero
  LA s9, n
  LW s9, 0(s9)
  SUBW s9, s9, s8
  ADDI s10, zero, 1
  SUBW s9, s9, s10
  BLT zero, s9, bb303
  # implict jump to bb299
bb299:
  ADD s9, s7, zero
  # implict jump to bb300
bb300:
  ADD s1, s9, zero
  ADDIW s0, s8, 1
  # implict jump to bb301
bb301:
  LA s9, n
  LW s9, 0(s9)
  ADDI s11, zero, 1
  SUBW s9, s9, s11
  BLT s0, s9, bb302
  JAL zero, bb295
bb302:
  ADD s5, s0, zero
  ADD s6, s1, zero
  JAL zero, bb298
bb303:
  # implict jump to bb304
bb304:
  ADD s10, zero, zero
  # implict jump to bb305
bb305:
  ADD s11, s7, zero
  ADD t0, s10, zero
  SLLIW t1, t0, 2
  ADD t1, s4, t1
  LW t2, 0(t1)
  ADDIW s3, t0, 1
  SLLIW t0, s3, 2
  ADD t0, s4, t0
  LW a1, 0(t0)
  BLT a1, t2, bb311
  # implict jump to bb306
bb306:
  # implict jump to bb307
bb307:
  ADD s2, s11, zero
  # implict jump to bb308
bb308:
  LA s11, n
  LW s11, 0(s11)
  SUBW s11, s11, s8
  ADDI t0, zero, 1
  SUBW s11, s11, t0
  BLT s3, s11, bb310
  # implict jump to bb309
bb309:
  ADD s9, s2, zero
  JAL zero, bb300
bb310:
  ADD s10, s3, zero
  ADD s7, s2, zero
  JAL zero, bb305
bb311:
  LW t2, 0(t0)
  LW a1, 0(t1)
  SW a1, 0(t0)
  SW t2, 0(t1)
  ADD s11, t2, zero
  JAL zero, bb307
