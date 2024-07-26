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
  ADD s4, a0, zero
  LA s5, n
  LW s5, 0(s5)
  ADDI s6, zero, 0
  BLT s6, s5, bb8
  # implict jump to bb1
bb1:
  # implict jump to bb2
bb2:
  SUBW s5, s5, a1
  ADDIW s5, s5, 1
  LA s9, n
  LW s9, 0(s9)
  BLT s5, s9, bb4
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
  ADD s9, s5, zero
  SLLIW s10, s9, 2
  ADD s10, s4, s10
  ADDI s11, zero, 0
  SW s11, 0(s10)
  ADDIW s3, s9, 1
  # implict jump to bb6
bb6:
  LA s9, n
  LW s9, 0(s9)
  BLT s3, s9, bb7
  JAL zero, bb3
bb7:
  ADD s5, s3, zero
  JAL zero, bb5
bb8:
  ADD s6, zero, zero
  ADD s7, zero, zero
  ADD s8, zero, zero
  # implict jump to bb9
bb9:
  ADD s9, s8, zero
  ADD s10, s7, zero
  ADD s11, s6, zero
  ADDI t0, zero, 1
  SUBW t0, a1, t0
  BLT s10, t0, bb18
  # implict jump to bb10
bb10:
  XOR t0, s10, t0
  SLTIU t0, t0, 1
  BNE t0, zero, bb17
  # implict jump to bb11
bb11:
  SLLIW t0, s10, 2
  ADD t0, s4, t0
  LW t0, 0(t0)
  ADDW t0, s11, t0
  SUBW t0, t0, s9
  SUBW t1, s10, a1
  ADDIW t1, t1, 1
  SLLIW t1, t1, 2
  ADD t1, s4, t1
  LW t2, 0(t1)
  DIVW a2, t0, a1
  SW a2, 0(t1)
  ADD t1, t2, zero
  # implict jump to bb12
bb12:
  # implict jump to bb13
bb13:
  ADD s0, t0, zero
  ADD s1, t1, zero
  ADDIW s2, s10, 1
  # implict jump to bb14
bb14:
  LA s9, n
  LW s9, 0(s9)
  BLT s2, s9, bb16
  # implict jump to bb15
bb15:
  ADD s5, s9, zero
  JAL zero, bb2
bb16:
  ADD s6, s0, zero
  ADD s7, s2, zero
  ADD s8, s1, zero
  JAL zero, bb9
bb17:
  LW t2, 0(s4)
  DIVW a2, s11, a1
  SW a2, 0(s4)
  ADD t1, t2, zero
  ADD t0, s11, zero
  JAL zero, bb12
bb18:
  SLLIW t2, s10, 2
  ADD t2, s4, t2
  LW t2, 0(t2)
  ADDW s11, s11, t2
  ADD t1, s9, zero
  ADD t0, s11, zero
  JAL zero, bb13
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
  BLT zero, s2, bb21
  # implict jump to bb20
bb20:
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
bb21:
  ADD s2, zero, zero
  # implict jump to bb22
bb22:
  ADD s3, s2, zero
  SLLIW s4, s3, 2
  ADD s5, a1, s4
  ADD s4, s1, s4
  LW s4, 0(s4)
  SW s4, 0(s5)
  ADDIW s0, s3, 1
  # implict jump to bb23
bb23:
  LA s3, n
  LW s3, 0(s3)
  BLT s0, s3, bb24
  JAL zero, bb20
bb24:
  ADD s2, s0, zero
  JAL zero, bb22
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
  BNE s5, zero, bb37
  # implict jump to bb26
bb26:
  LA s6, n
  LW s6, 0(s6)
  BLT zero, s6, bb29
  # implict jump to bb27
bb27:
  ADD s6, zero, zero
  # implict jump to bb28
bb28:
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
bb29:
  ADD s7, zero, zero
  ADD s8, zero, zero
  ADD s9, zero, zero
  # implict jump to bb30
bb30:
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
  BLT t0, a1, bb36
  # implict jump to bb31
bb31:
  # implict jump to bb32
bb32:
  ADD s0, t0, zero
  ADD s1, s10, zero
  ADDIW s3, s11, 1
  # implict jump to bb33
bb33:
  LA s10, n
  LW s10, 0(s10)
  BLT s3, s10, bb35
  # implict jump to bb34
bb34:
  ADD s6, s1, zero
  JAL zero, bb28
bb35:
  ADD s7, s0, zero
  ADD s8, s3, zero
  ADD s9, s1, zero
  JAL zero, bb30
bb36:
  ADD s10, t1, zero
  ADD t0, a1, zero
  JAL zero, bb32
bb37:
  ADD s5, zero, zero
  # implict jump to bb38
bb38:
  ADD s6, s5, zero
  SLLIW s7, s6, 2
  ADDI t5, sp, 0
  ADD s7, t5, s7
  SW zero, 0(s7)
  ADDIW s2, s6, 1
  # implict jump to bb39
bb39:
  SLTI s6, s2, 1000
  BNE s6, zero, bb40
  JAL zero, bb26
bb40:
  ADD s5, s2, zero
  JAL zero, bb38
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
  BNE s2, zero, bb43
  # implict jump to bb42
bb42:
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
bb43:
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
  BLT s3, s2, bb46
  # implict jump to bb45
bb45:
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
bb46:
  ADDI s2, zero, 1
  # implict jump to bb47
bb47:
  ADD s3, s2, zero
  SLLIW s4, s3, 2
  ADD s4, s1, s4
  LW s4, 0(s4)
  ADDI s5, zero, 1
  SUBW s5, s3, s5
  # implict jump to bb48
bb48:
  ADD s6, s5, zero
  ADDI s7, zero, -1
  BLT s7, s6, bb55
  # implict jump to bb49
bb49:
  ADD s7, zero, zero
  # implict jump to bb50
bb50:
  BNE s7, zero, bb54
  # implict jump to bb51
bb51:
  ADDIW s7, s6, 1
  SLLIW s7, s7, 2
  ADD s7, s1, s7
  SW s4, 0(s7)
  ADDIW s0, s3, 1
  # implict jump to bb52
bb52:
  LA s7, n
  LW s7, 0(s7)
  BLT s0, s7, bb53
  JAL zero, bb45
bb53:
  ADD s2, s0, zero
  JAL zero, bb47
bb54:
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
  JAL zero, bb48
bb55:
  SLLIW s8, s6, 2
  ADD s8, s1, s8
  LW s8, 0(s8)
  SLT s8, s4, s8
  ADD s7, s8, zero
  JAL zero, bb50
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
  BLT zero, zero, bb58
  # implict jump to bb57
bb57:
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
bb58:
  ADD s3, zero, zero
  ADD s4, zero, zero
  # implict jump to bb59
bb59:
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
  # implict jump to bb60
bb60:
  BLT s0, s1, bb61
  JAL zero, bb57
bb61:
  ADD s3, s0, zero
  ADD s4, s1, zero
  JAL zero, bb59
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
  BLT s3, s4, bb64
  # implict jump to bb63
bb63:
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
bb64:
  SLLIW s5, s3, 2
  ADD s5, s2, s5
  LW s5, 0(s5)
  BLT s3, s4, bb67
  # implict jump to bb65
bb65:
  ADD s6, s3, zero
  # implict jump to bb66
bb66:
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
  JAL zero, bb63
bb67:
  ADD s7, s3, zero
  ADD s8, s4, zero
  # implict jump to bb68
bb68:
  ADD s9, s8, zero
  ADD s10, s7, zero
  # implict jump to bb69
bb69:
  ADD s11, s9, zero
  BLT s10, s11, bb89
  # implict jump to bb70
bb70:
  ADD t0, zero, zero
  # implict jump to bb71
bb71:
  BNE t0, zero, bb88
  # implict jump to bb72
bb72:
  BLT s10, s11, bb87
  # implict jump to bb73
bb73:
  ADD t0, s10, zero
  # implict jump to bb74
bb74:
  ADD t4, t0, zero
  SW t4, 0(sp)
  # implict jump to bb75
bb75:
  LW t4, 0(sp)
  ADD s0, t4, zero
  BLT s0, s11, bb86
  # implict jump to bb76
bb76:
  ADD t1, zero, zero
  # implict jump to bb77
bb77:
  BNE t1, zero, bb85
  # implict jump to bb78
bb78:
  BLT s0, s11, bb84
  # implict jump to bb79
bb79:
  ADD t1, s11, zero
  # implict jump to bb80
bb80:
  ADD s1, t1, zero
  # implict jump to bb81
bb81:
  BLT s0, s1, bb83
  # implict jump to bb82
bb82:
  ADD s6, s0, zero
  JAL zero, bb66
bb83:
  ADD s7, s0, zero
  ADD s8, s1, zero
  JAL zero, bb68
bb84:
  SLLIW t2, s11, 2
  ADD t2, s2, t2
  SLLIW a3, s0, 2
  ADD a3, s2, a3
  LW a3, 0(a3)
  SW a3, 0(t2)
  ADDI t2, zero, 1
  SUBW t2, s11, t2
  ADD t1, t2, zero
  JAL zero, bb80
bb85:
  ADDIW s0, s0, 1
  ADD t4, s0, zero
  SW t4, 0(sp)
  JAL zero, bb75
bb86:
  SLLIW t2, s0, 2
  ADD t2, s2, t2
  LW t2, 0(t2)
  SLT t2, t2, s5
  ADD t1, t2, zero
  JAL zero, bb77
bb87:
  SLLIW t1, s10, 2
  ADD t1, s2, t1
  SLLIW t2, s11, 2
  ADD t2, s2, t2
  LW t2, 0(t2)
  SW t2, 0(t1)
  ADDIW t1, s10, 1
  ADD t0, t1, zero
  JAL zero, bb74
bb88:
  ADDI s0, zero, 1
  SUBW s0, s11, s0
  ADD s9, s0, zero
  JAL zero, bb69
bb89:
  SLLIW t1, s11, 2
  ADD t1, s2, t1
  LW t1, 0(t1)
  ADDI t2, zero, 1
  SUBW t2, s5, t2
  SLT t1, t2, t1
  ADD t0, t1, zero
  JAL zero, bb71
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
  ADDIW t5, t5, 504
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 512
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 520
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 528
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI a5, 1
  ADDIW a5, a5, 536
  ADD a5, a5, sp
  SD s10, 0(a5)
  LUI a5, 1
  ADDIW a5, a5, 544
  ADD a5, a5, sp
  SD s11, 0(a5)
  LA a5, n
  ADDI s8, zero, 32
  SW s8, 0(a5)
  ADDI s8, zero, 7
  LUI a5, 1
  ADDIW a5, a5, 376
  ADD a5, a5, sp
  SW s8, 0(a5)
  LUI t5, 1
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  ADDI s8, t5, 4
  ADDI a5, zero, 23
  SW a5, 0(s8)
  LUI t5, 1
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  ADDI s8, t5, 8
  ADDI a5, zero, 89
  SW a5, 0(s8)
  LUI t5, 1
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  ADDI s8, t5, 12
  ADDI a5, zero, 26
  SW a5, 0(s8)
  LUI t5, 1
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  ADDI s8, t5, 16
  ADDI a5, zero, 282
  SW a5, 0(s8)
  LUI t5, 1
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  ADDI s8, t5, 20
  ADDI a5, zero, 254
  SW a5, 0(s8)
  LUI t5, 1
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  ADDI s8, t5, 24
  ADDI a5, zero, 27
  SW a5, 0(s8)
  LUI t5, 1
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  ADDI s8, t5, 28
  ADDI a5, zero, 5
  SW a5, 0(s8)
  LUI t5, 1
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  ADDI s8, t5, 32
  ADDI a5, zero, 83
  SW a5, 0(s8)
  LUI t5, 1
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  ADDI s8, t5, 36
  ADDI a5, zero, 273
  SW a5, 0(s8)
  LUI t5, 1
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  ADDI s8, t5, 40
  ADDI a5, zero, 574
  SW a5, 0(s8)
  LUI t5, 1
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  ADDI s8, t5, 44
  ADDI a5, zero, 905
  SW a5, 0(s8)
  LUI t5, 1
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  ADDI s8, t5, 48
  ADDI a5, zero, 354
  SW a5, 0(s8)
  LUI t5, 1
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  ADDI s8, t5, 52
  ADDI a5, zero, 657
  SW a5, 0(s8)
  LUI t5, 1
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  ADDI s8, t5, 56
  ADDI a5, zero, 935
  SW a5, 0(s8)
  LUI t5, 1
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  ADDI s8, t5, 60
  ADDI a5, zero, 264
  SW a5, 0(s8)
  LUI t5, 1
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  ADDI s8, t5, 64
  ADDI a5, zero, 639
  SW a5, 0(s8)
  LUI t5, 1
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  ADDI s8, t5, 68
  ADDI a5, zero, 459
  SW a5, 0(s8)
  LUI t5, 1
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  ADDI s8, t5, 72
  ADDI a5, zero, 29
  SW a5, 0(s8)
  LUI t5, 1
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  ADDI s8, t5, 76
  ADDI a5, zero, 68
  SW a5, 0(s8)
  LUI t5, 1
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  ADDI s8, t5, 80
  ADDI a5, zero, 929
  SW a5, 0(s8)
  LUI t5, 1
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  ADDI s8, t5, 84
  ADDI a5, zero, 756
  SW a5, 0(s8)
  LUI t5, 1
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  ADDI s8, t5, 88
  ADDI a5, zero, 452
  SW a5, 0(s8)
  LUI t5, 1
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  ADDI s8, t5, 92
  ADDI a5, zero, 279
  SW a5, 0(s8)
  LUI t5, 1
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  ADDI s8, t5, 96
  ADDI a5, zero, 58
  SW a5, 0(s8)
  LUI t5, 1
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  ADDI s8, t5, 100
  ADDI a5, zero, 87
  SW a5, 0(s8)
  LUI t5, 1
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  ADDI s8, t5, 104
  ADDI a5, zero, 96
  SW a5, 0(s8)
  LUI t5, 1
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  ADDI s8, t5, 108
  ADDI a5, zero, 36
  SW a5, 0(s8)
  LUI t5, 1
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  ADDI s8, t5, 112
  ADDI a5, zero, 39
  SW a5, 0(s8)
  LUI t5, 1
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  ADDI s8, t5, 116
  ADDI a5, zero, 28
  SW a5, 0(s8)
  LUI t5, 1
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  ADDI s8, t5, 120
  ADDI a5, zero, 1
  SW a5, 0(s8)
  LUI t5, 1
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  ADDI s8, t5, 124
  ADDI a5, zero, 290
  SW a5, 0(s8)
  SLTI s8, zero, 32
  BNE s8, zero, bb248
  # implict jump to bb91
bb91:
  BLT zero, zero, bb244
  # implict jump to bb92
bb92:
  SLTI s0, zero, 32
  BNE s0, zero, bb240
  # implict jump to bb93
bb93:
  LA s1, n
  LW s1, 0(s1)
  ADDI s8, zero, 1
  SUBW s1, s1, s8
  BLT zero, s1, bb226
  # implict jump to bb94
bb94:
  SLTI s0, zero, 32
  BNE s0, zero, bb222
  # implict jump to bb95
bb95:
  LA s1, n
  LW s1, 0(s1)
  ADDI s6, zero, 2
  REMW s1, s1, s6
  SLTIU s1, s1, 1
  BNE s1, zero, bb221
  # implict jump to bb96
bb96:
  LA s1, n
  LW s1, 0(s1)
  ADDI s6, zero, 2
  DIVW s1, s1, s6
  SLLIW s1, s1, 2
  LUI t5, 1
  ADDIW t5, t5, 248
  ADD t5, t5, sp
  ADD s1, t5, s1
  LW s1, 0(s1)
  # implict jump to bb97
bb97:
  ADD a0, s1, zero
  CALL putint
  SLTI s1, zero, 1000
  BNE s1, zero, bb217
  # implict jump to bb98
bb98:
  LA s6, n
  LW s6, 0(s6)
  BLT zero, s6, bb209
  # implict jump to bb99
bb99:
  ADD s6, zero, zero
  # implict jump to bb100
bb100:
  ADD a0, s6, zero
  CALL putint
  LA s0, n
  LW s0, 0(s0)
  BLT zero, s0, bb204
  # implict jump to bb101
bb101:
  # implict jump to bb102
bb102:
  ADD t4, s0, zero
  SW t4, 156(sp)
  ADDI s2, zero, 1
  LW t4, 156(sp)
  SUBW s2, t4, s2
  BLT zero, s2, bb190
  # implict jump to bb103
bb103:
  SLTI s0, zero, 32
  BNE s0, zero, bb186
  # implict jump to bb104
bb104:
  LA s1, n
  LW s1, 0(s1)
  BLT zero, s1, bb181
  # implict jump to bb105
bb105:
  # implict jump to bb106
bb106:
  ADD t4, s1, zero
  SW t4, 80(sp)
  ADDI s7, zero, 1
  LW t4, 80(sp)
  BLT s7, t4, bb171
  # implict jump to bb107
bb107:
  SLTI s6, zero, 32
  BNE s6, zero, bb167
  # implict jump to bb108
bb108:
  LA s8, n
  LW s8, 0(s8)
  BLT zero, s8, bb163
  # implict jump to bb109
bb109:
  LUI a0, 1
  ADDIW a0, a0, 248
  ADD a0, a0, sp
  ADD a0, a0, zero
  ADD a1, zero, zero
  ADDI a2, zero, 31
  CALL QuickSort
  SLTI s1, zero, 32
  BNE s1, zero, bb159
  # implict jump to bb110
bb110:
  LA s2, n
  LW s2, 0(s2)
  BLT zero, s2, bb154
  # implict jump to bb111
bb111:
  # implict jump to bb112
bb112:
  ADD t4, s2, zero
  SW t4, 84(sp)
  LW t4, 84(sp)
  BLT zero, t4, bb147
  # implict jump to bb113
bb113:
  SLTI s1, zero, 32
  BNE s1, zero, bb143
  # implict jump to bb114
bb114:
  LA s7, n
  LW s7, 0(s7)
  BLT zero, s7, bb138
  # implict jump to bb115
bb115:
  # implict jump to bb116
bb116:
  ADD t4, s7, zero
  SW t4, 236(sp)
  LW t4, 236(sp)
  BLT zero, t4, bb128
  # implict jump to bb117
bb117:
  LW t4, 236(sp)
  ADDIW s0, t4, -2
  LW t4, 236(sp)
  BLT s0, t4, bb124
  # implict jump to bb118
bb118:
  SLTI s1, zero, 32
  BNE s1, zero, bb120
  # implict jump to bb119
bb119:
  ADD a0, zero, zero
  LD ra, 288(sp)
  LD s0, 296(sp)
  LD s1, 304(sp)
  LD s2, 312(sp)
  LD s3, 320(sp)
  LD s4, 328(sp)
  LD s5, 336(sp)
  LUI t5, 1
  ADDIW t5, t5, 504
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 512
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 520
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 528
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 536
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 544
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, 560
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb120:
  ADD s1, zero, zero
  # implict jump to bb121
bb121:
  ADD s4, s1, zero
  SLLIW s5, s4, 2
  LUI a0, 1
  ADDIW a0, a0, 248
  ADD a0, a0, sp
  ADD s5, a0, s5
  LW s5, 0(s5)
  ADD a0, s5, zero
  CALL putint
  ADDIW s3, s4, 1
  # implict jump to bb122
bb122:
  SLTI s4, s3, 32
  BNE s4, zero, bb123
  JAL zero, bb119
bb123:
  ADD s1, s3, zero
  JAL zero, bb121
bb124:
  # implict jump to bb125
bb125:
  ADD s1, s0, zero
  SLLIW s4, s1, 2
  LUI t4, 1
  ADDIW t4, t4, 248
  ADD t4, t4, sp
  ADD s4, t4, s4
  SW zero, 0(s4)
  ADDIW t4, s1, 1
  SW t4, 232(sp)
  # implict jump to bb126
bb126:
  LW t4, 232(sp)
  LW t3, 236(sp)
  BLT t4, t3, bb127
  JAL zero, bb118
bb127:
  LW t4, 232(sp)
  ADD s0, t4, zero
  JAL zero, bb125
bb128:
  ADD s2, zero, zero
  ADD s7, zero, zero
  ADD s9, zero, zero
  # implict jump to bb129
bb129:
  ADD s10, s9, zero
  ADD s6, s7, zero
  ADD s5, s2, zero
  SLTI s0, s6, 2
  BNE s0, zero, bb137
  # implict jump to bb130
bb130:
  XORI s0, s6, 2
  SLTIU s0, s0, 1
  BNE s0, zero, bb136
  # implict jump to bb131
bb131:
  SLLIW s0, s6, 2
  LUI t5, 1
  ADDIW t5, t5, 248
  ADD t5, t5, sp
  ADD s0, t5, s0
  LW s0, 0(s0)
  ADDW s0, s5, s0
  SUBW s0, s0, s10
  ADDIW s1, s6, -2
  SLLIW s1, s1, 2
  LUI t5, 1
  ADDIW t5, t5, 248
  ADD t5, t5, sp
  ADD s1, t5, s1
  LW s4, 0(s1)
  ADDI s8, zero, 3
  DIVW s8, s0, s8
  SW s8, 0(s1)
  ADD s1, s4, zero
  # implict jump to bb132
bb132:
  # implict jump to bb133
bb133:
  ADD t4, s0, zero
  SW t4, 72(sp)
  ADD t4, s1, zero
  SW t4, 160(sp)
  ADDIW t4, s6, 1
  SW t4, 240(sp)
  # implict jump to bb134
bb134:
  LW t4, 240(sp)
  LW t3, 236(sp)
  BLT t4, t3, bb135
  JAL zero, bb117
bb135:
  LW t4, 72(sp)
  ADD s2, t4, zero
  LW t4, 240(sp)
  ADD s7, t4, zero
  LW t4, 160(sp)
  ADD s9, t4, zero
  JAL zero, bb129
bb136:
  LUI t5, 1
  ADDIW t5, t5, 248
  ADD t5, t5, sp
  LW s4, 0(t5)
  ADDI s8, zero, 3
  DIVW s8, s5, s8
  LUI t5, 1
  ADDIW t5, t5, 248
  ADD t5, t5, sp
  SW s8, 0(t5)
  ADD s1, s4, zero
  ADD s0, s5, zero
  JAL zero, bb132
bb137:
  SLLIW s4, s6, 2
  LUI t5, 1
  ADDIW t5, t5, 248
  ADD t5, t5, sp
  ADD s4, t5, s4
  LW s4, 0(s4)
  ADDW s4, s5, s4
  ADD s1, s10, zero
  ADD s0, s4, zero
  JAL zero, bb133
bb138:
  ADD t4, zero, zero
  SW t4, 164(sp)
  # implict jump to bb139
bb139:
  LW t4, 164(sp)
  ADD s10, t4, zero
  SLLIW s9, s10, 2
  LUI t5, 1
  ADDIW t5, t5, 248
  ADD t5, t5, sp
  ADD s2, t5, s9
  LUI t5, 1
  ADDIW t5, t5, 376
  ADD t5, t5, sp
  ADD s9, t5, s9
  LW s9, 0(s9)
  SW s9, 0(s2)
  ADDIW s11, s10, 1
  # implict jump to bb140
bb140:
  LA s2, n
  LW s2, 0(s2)
  BLT s11, s2, bb142
  # implict jump to bb141
bb141:
  ADD s7, s2, zero
  JAL zero, bb116
bb142:
  ADD t4, s11, zero
  SW t4, 164(sp)
  JAL zero, bb139
bb143:
  ADD t4, zero, zero
  SW t4, 172(sp)
  # implict jump to bb144
bb144:
  LW t4, 172(sp)
  ADD s7, t4, zero
  SLLIW s8, s7, 2
  LUI a0, 1
  ADDIW a0, a0, 248
  ADD a0, a0, sp
  ADD s8, a0, s8
  LW s8, 0(s8)
  ADD a0, s8, zero
  CALL putint
  ADDIW t4, s7, 1
  SW t4, 168(sp)
  # implict jump to bb145
bb145:
  LW t4, 168(sp)
  SLTI s7, t4, 32
  BNE s7, zero, bb146
  JAL zero, bb114
bb146:
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  JAL zero, bb144
bb147:
  ADD t4, zero, zero
  SW t4, 176(sp)
  ADD t4, zero, zero
  SW t4, 184(sp)
  # implict jump to bb148
bb148:
  LW t4, 184(sp)
  ADD s7, t4, zero
  LW t4, 176(sp)
  ADD s8, t4, zero
  SLLIW s10, s7, 2
  LUI t5, 1
  ADDIW t5, t5, 248
  ADD t5, t5, sp
  ADD s10, t5, s10
  LW s1, 0(s10)
  ADDW s1, s8, s1
  ADDI s8, zero, 4
  REMW s8, s7, s8
  XORI s8, s8, 3
  BNE s8, zero, bb153
  # implict jump to bb149
bb149:
  SW s1, 0(s10)
  ADD s8, zero, zero
  # implict jump to bb150
bb150:
  ADD t4, s8, zero
  SW t4, 244(sp)
  ADDIW t4, s7, 1
  SW t4, 180(sp)
  # implict jump to bb151
bb151:
  LW t4, 180(sp)
  LW t3, 84(sp)
  BLT t4, t3, bb152
  JAL zero, bb113
bb152:
  LW t3, 244(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  JAL zero, bb148
bb153:
  SW zero, 0(s10)
  ADD s8, s1, zero
  JAL zero, bb150
bb154:
  ADD t4, zero, zero
  SW t4, 88(sp)
  # implict jump to bb155
bb155:
  LW t4, 88(sp)
  ADD s0, t4, zero
  SLLIW s7, s0, 2
  LUI t5, 1
  ADDIW t5, t5, 248
  ADD t5, t5, sp
  ADD s6, t5, s7
  LUI t4, 1
  ADDIW t4, t4, 376
  ADD t4, t4, sp
  ADD s7, t4, s7
  LW s7, 0(s7)
  SW s7, 0(s6)
  ADDIW t4, s0, 1
  SW t4, 120(sp)
  # implict jump to bb156
bb156:
  LA s0, n
  LW s0, 0(s0)
  LW t4, 120(sp)
  BLT t4, s0, bb158
  # implict jump to bb157
bb157:
  ADD s2, s0, zero
  JAL zero, bb112
bb158:
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  JAL zero, bb155
bb159:
  ADD t4, zero, zero
  SW t4, 92(sp)
  # implict jump to bb160
bb160:
  LW t4, 92(sp)
  ADD s2, t4, zero
  SLLIW s9, s2, 2
  LUI a0, 1
  ADDIW a0, a0, 248
  ADD a0, a0, sp
  ADD s9, a0, s9
  LW s9, 0(s9)
  ADD a0, s9, zero
  CALL putint
  ADDIW t4, s2, 1
  SW t4, 76(sp)
  # implict jump to bb161
bb161:
  LW t4, 76(sp)
  SLTI s2, t4, 32
  BNE s2, zero, bb162
  JAL zero, bb110
bb162:
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  JAL zero, bb160
bb163:
  ADD t4, zero, zero
  SW t4, 100(sp)
  # implict jump to bb164
bb164:
  LW t4, 100(sp)
  ADD s9, t4, zero
  SLLIW s1, s9, 2
  LUI t5, 1
  ADDIW t5, t5, 248
  ADD t5, t5, sp
  ADD s2, t5, s1
  LUI t4, 1
  ADDIW t4, t4, 376
  ADD t4, t4, sp
  ADD s1, t4, s1
  LW s1, 0(s1)
  SW s1, 0(s2)
  ADDIW t4, s9, 1
  SW t4, 96(sp)
  # implict jump to bb165
bb165:
  LA s1, n
  LW s1, 0(s1)
  LW t4, 96(sp)
  BLT t4, s1, bb166
  JAL zero, bb109
bb166:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  JAL zero, bb164
bb167:
  ADD t4, zero, zero
  SW t4, 104(sp)
  # implict jump to bb168
bb168:
  LW t4, 104(sp)
  ADD s9, t4, zero
  SLLIW s8, s9, 2
  LUI a0, 1
  ADDIW a0, a0, 248
  ADD a0, a0, sp
  ADD s8, a0, s8
  LW s8, 0(s8)
  ADD a0, s8, zero
  CALL putint
  ADDIW t4, s9, 1
  SW t4, 8(sp)
  # implict jump to bb169
bb169:
  LW t4, 8(sp)
  SLTI s8, t4, 32
  BNE s8, zero, bb170
  JAL zero, bb108
bb170:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  JAL zero, bb168
bb171:
  ADDI t4, zero, 1
  SW t4, 108(sp)
  # implict jump to bb172
bb172:
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LW t4, 124(sp)
  SLLIW s9, t4, 2
  LUI t4, 1
  ADDIW t4, t4, 248
  ADD t4, t4, sp
  ADD s9, t4, s9
  LW t4, 0(s9)
  SW t4, 128(sp)
  ADDI s2, zero, 1
  LW t4, 124(sp)
  SUBW s2, t4, s2
  ADD t4, s2, zero
  SW t4, 116(sp)
  # implict jump to bb173
bb173:
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  ADDI s6, zero, -1
  LW t4, 112(sp)
  BLT s6, t4, bb180
  # implict jump to bb174
bb174:
  ADD s6, zero, zero
  # implict jump to bb175
bb175:
  BNE s6, zero, bb179
  # implict jump to bb176
bb176:
  LW t4, 112(sp)
  ADDIW s6, t4, 1
  SLLIW s6, s6, 2
  LUI t4, 1
  ADDIW t4, t4, 248
  ADD t4, t4, sp
  ADD s6, t4, s6
  LW t4, 128(sp)
  SW t4, 0(s6)
  LW t3, 124(sp)
  ADDIW t4, t3, 1
  SW t4, 32(sp)
  # implict jump to bb177
bb177:
  LW t4, 32(sp)
  LW t3, 80(sp)
  BLT t4, t3, bb178
  JAL zero, bb107
bb178:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  JAL zero, bb172
bb179:
  LW t4, 112(sp)
  ADDIW s0, t4, 1
  SLLIW s0, s0, 2
  LUI t4, 1
  ADDIW t4, t4, 248
  ADD t4, t4, sp
  ADD s0, t4, s0
  LW t4, 112(sp)
  SLLIW s1, t4, 2
  LUI t4, 1
  ADDIW t4, t4, 248
  ADD t4, t4, sp
  ADD s1, t4, s1
  LW s1, 0(s1)
  SW s1, 0(s0)
  ADDI s0, zero, 1
  LW t4, 112(sp)
  SUBW s0, t4, s0
  ADD t4, s0, zero
  SW t4, 116(sp)
  JAL zero, bb173
bb180:
  LW t4, 112(sp)
  SLLIW s9, t4, 2
  LUI t4, 1
  ADDIW t4, t4, 248
  ADD t4, t4, sp
  ADD s9, t4, s9
  LW s9, 0(s9)
  LW t4, 128(sp)
  SLT s9, t4, s9
  ADD s6, s9, zero
  JAL zero, bb175
bb181:
  ADD t4, zero, zero
  SW t4, 132(sp)
  # implict jump to bb182
bb182:
  LW t4, 132(sp)
  ADD s7, t4, zero
  SLLIW s8, s7, 2
  LUI t5, 1
  ADDIW t5, t5, 248
  ADD t5, t5, sp
  ADD s9, t5, s8
  LUI t4, 1
  ADDIW t4, t4, 376
  ADD t4, t4, sp
  ADD s8, t4, s8
  LW s8, 0(s8)
  SW s8, 0(s9)
  ADDIW t4, s7, 1
  SW t4, 36(sp)
  # implict jump to bb183
bb183:
  LA s7, n
  LW s7, 0(s7)
  LW t4, 36(sp)
  BLT t4, s7, bb185
  # implict jump to bb184
bb184:
  ADD s1, s7, zero
  JAL zero, bb106
bb185:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  JAL zero, bb182
bb186:
  ADD t4, zero, zero
  SW t4, 136(sp)
  # implict jump to bb187
bb187:
  LW t4, 136(sp)
  ADD s1, t4, zero
  SLLIW s6, s1, 2
  LUI a0, 1
  ADDIW a0, a0, 248
  ADD a0, a0, sp
  ADD s6, a0, s6
  LW s6, 0(s6)
  ADD a0, s6, zero
  CALL putint
  ADDIW t4, s1, 1
  SW t4, 68(sp)
  # implict jump to bb188
bb188:
  LW t4, 68(sp)
  SLTI s1, t4, 32
  BNE s1, zero, bb189
  JAL zero, bb104
bb189:
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  JAL zero, bb187
bb190:
  ADD t4, zero, zero
  SW t4, 140(sp)
  ADD t4, zero, zero
  SW t4, 144(sp)
  # implict jump to bb191
bb191:
  LW t4, 144(sp)
  ADD s7, t4, zero
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t4, 156(sp)
  LW t3, 40(sp)
  SUBW s9, t4, t3
  ADDI s1, zero, 1
  SUBW s1, s9, s1
  BLT zero, s1, bb196
  # implict jump to bb192
bb192:
  ADD s1, s7, zero
  # implict jump to bb193
bb193:
  ADD t4, s1, zero
  SW t4, 228(sp)
  LW t3, 40(sp)
  ADDIW t4, t3, 1
  SW t4, 64(sp)
  # implict jump to bb194
bb194:
  ADDI s0, zero, 1
  LW t4, 156(sp)
  SUBW s0, t4, s0
  LW t4, 64(sp)
  BLT t4, s0, bb195
  JAL zero, bb103
bb195:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  LW t3, 228(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  JAL zero, bb191
bb196:
  ADD t4, zero, zero
  SW t4, 148(sp)
  ADD t4, s7, zero
  SW t4, 152(sp)
  # implict jump to bb197
bb197:
  LW t4, 152(sp)
  ADD s8, t4, zero
  LW t4, 148(sp)
  ADD s0, t4, zero
  SLLIW s7, s0, 2
  LUI t5, 1
  ADDIW t5, t5, 248
  ADD t5, t5, sp
  ADD s7, t5, s7
  LW s9, 0(s7)
  ADDIW t4, s0, 1
  SW t4, 248(sp)
  LW t4, 248(sp)
  SLLIW s0, t4, 2
  LUI t5, 1
  ADDIW t5, t5, 248
  ADD t5, t5, sp
  ADD s0, t5, s0
  LW s6, 0(s0)
  BLT s6, s9, bb203
  # implict jump to bb198
bb198:
  ADD s6, s8, zero
  # implict jump to bb199
bb199:
  ADD t4, s6, zero
  SW t4, 252(sp)
  # implict jump to bb200
bb200:
  LW t4, 156(sp)
  LW t3, 40(sp)
  SUBW s0, t4, t3
  ADDI s6, zero, 1
  SUBW s0, s0, s6
  LW t4, 248(sp)
  BLT t4, s0, bb202
  # implict jump to bb201
bb201:
  LW t4, 252(sp)
  ADD s1, t4, zero
  JAL zero, bb193
bb202:
  LW t3, 248(sp)
  ADD t4, t3, zero
  SW t4, 148(sp)
  LW t3, 252(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  JAL zero, bb197
bb203:
  LW s8, 0(s0)
  LW s9, 0(s7)
  SW s9, 0(s0)
  SW s8, 0(s7)
  ADD s6, s8, zero
  JAL zero, bb199
bb204:
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb205
bb205:
  LW t4, 4(sp)
  ADD s2, t4, zero
  SLLIW s6, s2, 2
  LUI t5, 1
  ADDIW t5, t5, 248
  ADD t5, t5, sp
  ADD s7, t5, s6
  LUI t4, 1
  ADDIW t4, t4, 376
  ADD t4, t4, sp
  ADD s6, t4, s6
  LW s6, 0(s6)
  SW s6, 0(s7)
  ADDIW t4, s2, 1
  SW t4, 256(sp)
  # implict jump to bb206
bb206:
  LA s2, n
  LW s2, 0(s2)
  LW t4, 256(sp)
  BLT t4, s2, bb208
  # implict jump to bb207
bb207:
  ADD s0, s2, zero
  JAL zero, bb102
bb208:
  LW t3, 256(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  JAL zero, bb205
bb209:
  ADD t4, zero, zero
  SW t4, 12(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb210
bb210:
  LW t4, 20(sp)
  ADD s0, t4, zero
  LW t4, 16(sp)
  ADD s1, t4, zero
  LW t4, 12(sp)
  ADD s9, t4, zero
  SLLIW s8, s1, 2
  LUI t5, 1
  ADDIW t5, t5, 248
  ADD t5, t5, sp
  ADD s8, t5, s8
  LW s8, 0(s8)
  SLLIW s7, s8, 2
  ADDI t5, sp, 344
  ADD s7, t5, s7
  LW s2, 0(s7)
  ADDIW s2, s2, 1
  SW s2, 0(s7)
  BLT s9, s2, bb216
  # implict jump to bb211
bb211:
  ADD s7, s9, zero
  # implict jump to bb212
bb212:
  ADD t4, s7, zero
  SW t4, 268(sp)
  ADD t4, s0, zero
  SW t4, 224(sp)
  ADDIW t4, s1, 1
  SW t4, 276(sp)
  # implict jump to bb213
bb213:
  LA s0, n
  LW s0, 0(s0)
  LW t4, 276(sp)
  BLT t4, s0, bb215
  # implict jump to bb214
bb214:
  LW t4, 224(sp)
  ADD s6, t4, zero
  JAL zero, bb100
bb215:
  LW t3, 268(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 276(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 224(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb210
bb216:
  ADD s0, s8, zero
  ADD s7, s2, zero
  JAL zero, bb212
bb217:
  ADD t4, zero, zero
  SW t4, 24(sp)
  # implict jump to bb218
bb218:
  LW t4, 24(sp)
  ADD s6, t4, zero
  SLLIW s7, s6, 2
  ADDI t4, sp, 344
  ADD s7, t4, s7
  SW zero, 0(s7)
  ADDIW t4, s6, 1
  SW t4, 280(sp)
  # implict jump to bb219
bb219:
  LW t4, 280(sp)
  SLTI s6, t4, 1000
  BNE s6, zero, bb220
  JAL zero, bb98
bb220:
  LW t3, 280(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  JAL zero, bb218
bb221:
  LA s6, n
  LW s6, 0(s6)
  ADDI s7, zero, 2
  DIVW s6, s6, s7
  SLLIW s7, s6, 2
  LUI t5, 1
  ADDIW t5, t5, 248
  ADD t5, t5, sp
  ADD s7, t5, s7
  LW s7, 0(s7)
  ADDI s8, zero, 1
  SUBW s6, s6, s8
  SLLIW s6, s6, 2
  LUI t5, 1
  ADDIW t5, t5, 248
  ADD t5, t5, sp
  ADD s6, t5, s6
  LW s6, 0(s6)
  ADDW s6, s7, s6
  ADDI s7, zero, 2
  DIVW s6, s6, s7
  ADD s1, s6, zero
  JAL zero, bb97
bb222:
  ADD t4, zero, zero
  SW t4, 28(sp)
  # implict jump to bb223
bb223:
  LW t4, 28(sp)
  ADD s1, t4, zero
  SLLIW s6, s1, 2
  LUI a0, 1
  ADDIW a0, a0, 248
  ADD a0, a0, sp
  ADD s6, a0, s6
  LW s6, 0(s6)
  ADD a0, s6, zero
  CALL putint
  ADDIW t4, s1, 1
  SW t4, 216(sp)
  # implict jump to bb224
bb224:
  LW t4, 216(sp)
  SLTI s1, t4, 32
  BNE s1, zero, bb225
  JAL zero, bb95
bb225:
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  JAL zero, bb223
bb226:
  ADD t4, zero, zero
  SW t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 52(sp)
  # implict jump to bb227
bb227:
  LW t4, 52(sp)
  ADD s9, t4, zero
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LA s0, n
  LW s0, 0(s0)
  LW t4, 56(sp)
  SUBW s0, s0, t4
  ADDI s8, zero, 1
  SUBW s0, s0, s8
  BLT zero, s0, bb232
  # implict jump to bb228
bb228:
  ADD s0, s9, zero
  # implict jump to bb229
bb229:
  ADD t4, s0, zero
  SW t4, 208(sp)
  LW t3, 56(sp)
  ADDIW t4, t3, 1
  SW t4, 212(sp)
  # implict jump to bb230
bb230:
  LA s0, n
  LW s0, 0(s0)
  ADDI s1, zero, 1
  SUBW s0, s0, s1
  LW t4, 212(sp)
  BLT t4, s0, bb231
  JAL zero, bb94
bb231:
  LW t3, 212(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t3, 208(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  JAL zero, bb227
bb232:
  ADD t4, zero, zero
  SW t4, 44(sp)
  ADD t4, s9, zero
  SW t4, 48(sp)
  # implict jump to bb233
bb233:
  LW t4, 48(sp)
  ADD s9, t4, zero
  LW t4, 44(sp)
  ADD s8, t4, zero
  SLLIW s1, s8, 2
  LUI t5, 1
  ADDIW t5, t5, 248
  ADD t5, t5, sp
  ADD s1, t5, s1
  LW s6, 0(s1)
  ADDIW t4, s8, 1
  SW t4, 204(sp)
  LW t4, 204(sp)
  SLLIW s8, t4, 2
  LUI t5, 1
  ADDIW t5, t5, 248
  ADD t5, t5, sp
  ADD s8, t5, s8
  LW s7, 0(s8)
  BLT s7, s6, bb239
  # implict jump to bb234
bb234:
  ADD s6, s9, zero
  # implict jump to bb235
bb235:
  ADD t4, s6, zero
  SW t4, 200(sp)
  # implict jump to bb236
bb236:
  LA s1, n
  LW s1, 0(s1)
  LW t4, 56(sp)
  SUBW s1, s1, t4
  ADDI s6, zero, 1
  SUBW s1, s1, s6
  LW t4, 204(sp)
  BLT t4, s1, bb238
  # implict jump to bb237
bb237:
  LW t4, 200(sp)
  ADD s0, t4, zero
  JAL zero, bb229
bb238:
  LW t3, 204(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb233
bb239:
  LW s7, 0(s8)
  LW s9, 0(s1)
  SW s9, 0(s8)
  SW s7, 0(s1)
  ADD s6, s7, zero
  JAL zero, bb235
bb240:
  ADD t4, zero, zero
  SW t4, 60(sp)
  # implict jump to bb241
bb241:
  LW t4, 60(sp)
  ADD s1, t4, zero
  SLLIW s8, s1, 2
  LUI a0, 1
  ADDIW a0, a0, 248
  ADD a0, a0, sp
  ADD s8, a0, s8
  LW s8, 0(s8)
  ADD a0, s8, zero
  CALL putint
  ADDIW t4, s1, 1
  SW t4, 196(sp)
  # implict jump to bb242
bb242:
  LW t4, 196(sp)
  SLTI s1, t4, 32
  BNE s1, zero, bb243
  JAL zero, bb93
bb243:
  LW t3, 196(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  JAL zero, bb241
bb244:
  ADD t4, zero, zero
  SW t4, 260(sp)
  ADD t4, zero, zero
  SW t4, 264(sp)
  # implict jump to bb245
bb245:
  LW t4, 264(sp)
  ADD a5, t4, zero
  LW t4, 260(sp)
  ADD s9, t4, zero
  SLLIW s8, s9, 2
  LUI t2, 1
  ADDIW t2, t2, 248
  ADD t2, t2, sp
  ADD s8, t2, s8
  LW t2, 0(s8)
  SLLIW s0, a5, 2
  LUI t5, 1
  ADDIW t5, t5, 248
  ADD t5, t5, sp
  ADD s0, t5, s0
  LW s1, 0(s0)
  SW s1, 0(s8)
  SW t2, 0(s0)
  ADDIW t4, s9, 1
  SW t4, 192(sp)
  ADDI s0, zero, 1
  SUBW t4, a5, s0
  SW t4, 188(sp)
  # implict jump to bb246
bb246:
  LW t4, 192(sp)
  LW t3, 188(sp)
  BLT t4, t3, bb247
  JAL zero, bb92
bb247:
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 260(sp)
  LW t3, 188(sp)
  ADD t4, t3, zero
  SW t4, 264(sp)
  JAL zero, bb245
bb248:
  ADD t4, zero, zero
  SW t4, 272(sp)
  # implict jump to bb249
bb249:
  LW t4, 272(sp)
  ADD a5, t4, zero
  SLLIW s8, a5, 2
  LUI t5, 1
  ADDIW t5, t5, 248
  ADD t5, t5, sp
  ADD s9, t5, s8
  LUI t4, 1
  ADDIW t4, t4, 376
  ADD t4, t4, sp
  ADD s8, t4, s8
  LW s8, 0(s8)
  SW s8, 0(s9)
  ADDIW t4, a5, 1
  SW t4, 220(sp)
  # implict jump to bb250
bb250:
  LW t4, 220(sp)
  SLTI s8, t4, 32
  BNE s8, zero, bb251
  JAL zero, bb91
bb251:
  LW t3, 220(sp)
  ADD t4, t3, zero
  SW t4, 272(sp)
  JAL zero, bb249
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
  ADD s2, a0, zero
  LA s3, n
  LW s3, 0(s3)
  BLT zero, s3, bb254
  # implict jump to bb253
bb253:
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
bb254:
  ADD s3, zero, zero
  ADD s4, zero, zero
  # implict jump to bb255
bb255:
  ADD s5, s4, zero
  ADD s6, s3, zero
  SLLIW s7, s5, 2
  ADD s7, s2, s7
  LW s8, 0(s7)
  ADDW s6, s6, s8
  REMW s8, s5, a1
  ADDI s9, zero, 1
  SUBW s9, a1, s9
  BNE s8, s9, bb260
  # implict jump to bb256
bb256:
  SW s6, 0(s7)
  ADD s8, zero, zero
  # implict jump to bb257
bb257:
  ADD s0, s8, zero
  ADDIW s1, s5, 1
  # implict jump to bb258
bb258:
  LA s5, n
  LW s5, 0(s5)
  BLT s1, s5, bb259
  JAL zero, bb253
bb259:
  ADD s3, s0, zero
  ADD s4, s1, zero
  JAL zero, bb255
bb260:
  SW zero, 0(s7)
  ADD s8, s6, zero
  JAL zero, bb257
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
  BLT zero, s5, bb263
  # implict jump to bb262
bb262:
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
bb263:
  ADD s5, zero, zero
  ADD s6, zero, zero
  # implict jump to bb264
bb264:
  ADD s7, s6, zero
  ADD s8, s5, zero
  LA s9, n
  LW s9, 0(s9)
  SUBW s9, s9, s8
  ADDI s10, zero, 1
  SUBW s9, s9, s10
  BLT zero, s9, bb269
  # implict jump to bb265
bb265:
  ADD s9, s7, zero
  # implict jump to bb266
bb266:
  ADD s0, s9, zero
  ADDIW s2, s8, 1
  # implict jump to bb267
bb267:
  LA s9, n
  LW s9, 0(s9)
  ADDI s11, zero, 1
  SUBW s9, s9, s11
  BLT s2, s9, bb268
  JAL zero, bb262
bb268:
  ADD s5, s2, zero
  ADD s6, s0, zero
  JAL zero, bb264
bb269:
  ADD s10, zero, zero
  # implict jump to bb270
bb270:
  ADD s11, s7, zero
  ADD t0, s10, zero
  SLLIW t1, t0, 2
  ADD t1, s4, t1
  LW t2, 0(t1)
  ADDIW s3, t0, 1
  SLLIW t0, s3, 2
  ADD t0, s4, t0
  LW a1, 0(t0)
  BLT a1, t2, bb276
  # implict jump to bb271
bb271:
  # implict jump to bb272
bb272:
  ADD s1, s11, zero
  # implict jump to bb273
bb273:
  LA s11, n
  LW s11, 0(s11)
  SUBW s11, s11, s8
  ADDI t0, zero, 1
  SUBW s11, s11, t0
  BLT s3, s11, bb275
  # implict jump to bb274
bb274:
  ADD s9, s1, zero
  JAL zero, bb266
bb275:
  ADD s10, s3, zero
  ADD s7, s1, zero
  JAL zero, bb270
bb276:
  LW t2, 0(t0)
  LW a1, 0(t1)
  SW a1, 0(t0)
  SW t2, 0(t1)
  ADD s11, t2, zero
  JAL zero, bb272
