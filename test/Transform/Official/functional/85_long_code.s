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
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  # implict jump to bb1
bb1:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s6, s1, zero
  LA s7, n
  LW s7, 0(s7)
  BLT s5, s7, bb6
  # implict jump to bb2
bb2:
  SUBW s7, s7, a1
  ADDIW s7, s7, 1
  # implict jump to bb3
bb3:
  ADD s8, s7, zero
  LA s9, n
  LW s9, 0(s9)
  BLT s8, s9, bb5
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
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb5:
  SLLIW s9, s8, 2
  ADD s9, s0, s9
  SW zero, 0(s9)
  ADDIW s8, s8, 1
  ADD s7, s8, zero
  JAL zero, bb3
bb6:
  ADDI s7, zero, 1
  SUBW s7, a1, s7
  BLT s5, s7, bb12
  # implict jump to bb7
bb7:
  XOR s7, s5, s7
  SLTIU s7, s7, 1
  BNE s7, zero, bb11
  # implict jump to bb8
bb8:
  SLLIW s7, s5, 2
  ADD s7, s0, s7
  LW s7, 0(s7)
  ADDW s7, s4, s7
  SUBW s7, s7, s6
  SUBW s8, s5, a1
  ADDIW s8, s8, 1
  SLLIW s8, s8, 2
  ADD s8, s0, s8
  LW s9, 0(s8)
  DIVW s10, s7, a1
  SW s10, 0(s8)
  ADD s8, s9, zero
  # implict jump to bb9
bb9:
  # implict jump to bb10
bb10:
  ADDIW s4, s5, 1
  ADD s1, s8, zero
  ADD s2, s4, zero
  ADD s3, s7, zero
  JAL zero, bb1
bb11:
  LW s9, 0(s0)
  DIVW s10, s4, a1
  SW s10, 0(s0)
  ADD s8, s9, zero
  ADD s7, s4, zero
  JAL zero, bb9
bb12:
  SLLIW s9, s5, 2
  ADD s9, s0, s9
  LW s9, 0(s9)
  ADDW s4, s4, s9
  ADD s8, s6, zero
  ADD s7, s4, zero
  JAL zero, bb10
arrCopy:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  ADD s0, a0, zero
  ADD s1, zero, zero
  # implict jump to bb14
bb14:
  ADD s2, s1, zero
  LA s3, n
  LW s3, 0(s3)
  BLT s2, s3, bb16
  # implict jump to bb15
bb15:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb16:
  SLLIW s3, s2, 2
  ADD s4, a1, s3
  ADD s3, s0, s3
  LW s3, 0(s3)
  SW s3, 0(s4)
  ADDIW s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb14
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
  ADD s0, a0, zero
  ADD s1, zero, zero
  # implict jump to bb18
bb18:
  ADD s2, s1, zero
  SLTI s3, s2, 1000
  BNE s3, zero, bb26
  # implict jump to bb19
bb19:
  ADD s3, zero, zero
  ADD s4, zero, zero
  ADD s5, zero, zero
  # implict jump to bb20
bb20:
  ADD s6, s5, zero
  ADD s7, s4, zero
  ADD s8, s3, zero
  LA s9, n
  LW s9, 0(s9)
  BLT s7, s9, bb22
  # implict jump to bb21
bb21:
  ADD a0, s8, zero
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
bb22:
  SLLIW s9, s7, 2
  ADD s9, s0, s9
  LW s9, 0(s9)
  SLLIW s10, s9, 2
  ADDI t5, sp, 0
  ADD s10, t5, s10
  LW s11, 0(s10)
  ADDIW s11, s11, 1
  SW s11, 0(s10)
  BLT s6, s11, bb25
  # implict jump to bb23
bb23:
  # implict jump to bb24
bb24:
  ADDIW s7, s7, 1
  ADD s3, s8, zero
  ADD s4, s7, zero
  ADD s5, s6, zero
  JAL zero, bb20
bb25:
  ADD s8, s9, zero
  ADD s6, s11, zero
  JAL zero, bb24
bb26:
  SLLIW s3, s2, 2
  ADDI t5, sp, 0
  ADD s3, t5, s3
  SW zero, 0(s3)
  ADDIW s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb18
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
  BNE s2, zero, bb29
  # implict jump to bb28
bb28:
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
bb29:
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
  ADD s0, a0, zero
  ADDI s1, zero, 1
  # implict jump to bb31
bb31:
  ADD s2, s1, zero
  LA s3, n
  LW s3, 0(s3)
  BLT s2, s3, bb33
  # implict jump to bb32
bb32:
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
bb33:
  SLLIW s3, s2, 2
  ADD s3, s0, s3
  LW s3, 0(s3)
  ADDI s4, zero, 1
  SUBW s4, s2, s4
  # implict jump to bb34
bb34:
  ADD s5, s4, zero
  ADDI s6, zero, -1
  BLT s6, s5, bb39
  # implict jump to bb35
bb35:
  ADD s6, zero, zero
  # implict jump to bb36
bb36:
  BNE s6, zero, bb38
  # implict jump to bb37
bb37:
  ADDIW s6, s5, 1
  SLLIW s6, s6, 2
  ADD s6, s0, s6
  SW s3, 0(s6)
  ADDIW s6, s2, 1
  ADD s1, s6, zero
  JAL zero, bb31
bb38:
  ADDIW s1, s5, 1
  SLLIW s1, s1, 2
  ADD s1, s0, s1
  SLLIW s6, s5, 2
  ADD s6, s0, s6
  LW s6, 0(s6)
  SW s6, 0(s1)
  ADDI s1, zero, 1
  SUBW s1, s5, s1
  ADD s4, s1, zero
  JAL zero, bb34
bb39:
  SLLIW s7, s5, 2
  ADD s7, s0, s7
  LW s7, 0(s7)
  SLT s7, s3, s7
  ADD s6, s7, zero
  JAL zero, bb36
revert:
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
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb41
bb41:
  ADD s3, s2, zero
  ADD s4, s1, zero
  BLT s3, s4, bb43
  # implict jump to bb42
bb42:
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
bb43:
  SLLIW s5, s3, 2
  ADD s5, s0, s5
  LW s6, 0(s5)
  SLLIW s7, s4, 2
  ADD s7, s0, s7
  LW s8, 0(s7)
  SW s8, 0(s5)
  SW s6, 0(s7)
  ADDIW s3, s3, 1
  ADDI s5, zero, 1
  SUBW s4, s4, s5
  ADD s1, s4, zero
  ADD s2, s3, zero
  JAL zero, bb41
QuickSort:
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
  ADD s1, a1, zero
  ADD s2, a2, zero
  BLT s1, s2, bb46
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
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb46:
  SLLIW s3, s1, 2
  ADD s3, s0, s3
  LW s3, 0(s3)
  ADD s4, s2, zero
  ADD s5, s1, zero
  # implict jump to bb47
bb47:
  ADD s6, s5, zero
  ADD s7, s4, zero
  BLT s6, s7, bb49
  # implict jump to bb48
bb48:
  SLLIW s8, s6, 2
  ADD s8, s0, s8
  SW s3, 0(s8)
  ADDI s8, zero, 1
  SUBW s8, s6, s8
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s8, zero
  CALL QuickSort
  ADDIW s8, s6, 1
  ADD a0, s0, zero
  ADD a1, s8, zero
  ADD a2, s2, zero
  CALL QuickSort
  JAL zero, bb45
bb49:
  # implict jump to bb50
bb50:
  ADD s8, s7, zero
  BLT s6, s8, bb67
  # implict jump to bb51
bb51:
  ADD s9, zero, zero
  # implict jump to bb52
bb52:
  BNE s9, zero, bb66
  # implict jump to bb53
bb53:
  BLT s6, s8, bb65
  # implict jump to bb54
bb54:
  ADD s9, s6, zero
  # implict jump to bb55
bb55:
  # implict jump to bb56
bb56:
  ADD s10, s9, zero
  BLT s10, s8, bb64
  # implict jump to bb57
bb57:
  ADD s11, zero, zero
  # implict jump to bb58
bb58:
  BNE s11, zero, bb63
  # implict jump to bb59
bb59:
  BLT s10, s8, bb62
  # implict jump to bb60
bb60:
  ADD s11, s8, zero
  # implict jump to bb61
bb61:
  ADD s4, s11, zero
  ADD s5, s10, zero
  JAL zero, bb47
bb62:
  SLLIW ra, s8, 2
  ADD ra, s0, ra
  SLLIW t0, s10, 2
  ADD t0, s0, t0
  LW t0, 0(t0)
  SW t0, 0(ra)
  ADDI ra, zero, 1
  SUBW ra, s8, ra
  ADD s11, ra, zero
  JAL zero, bb61
bb63:
  ADDIW s4, s10, 1
  ADD s9, s4, zero
  JAL zero, bb56
bb64:
  SLLIW ra, s10, 2
  ADD ra, s0, ra
  LW ra, 0(ra)
  SLT ra, ra, s3
  ADD s11, ra, zero
  JAL zero, bb58
bb65:
  SLLIW s10, s6, 2
  ADD s10, s0, s10
  SLLIW s11, s8, 2
  ADD s11, s0, s11
  LW s11, 0(s11)
  SW s11, 0(s10)
  ADDIW s10, s6, 1
  ADD s9, s10, zero
  JAL zero, bb55
bb66:
  ADDI s4, zero, 1
  SUBW s4, s8, s4
  ADD s7, s4, zero
  JAL zero, bb50
bb67:
  SLLIW s10, s8, 2
  ADD s10, s0, s10
  LW s10, 0(s10)
  ADDI s11, zero, 1
  SUBW s11, s3, s11
  SLT s10, s11, s10
  ADD s9, s10, zero
  JAL zero, bb52
main:
  LUI t0, 1048575
  ADDIW t0, t0, -480
  ADD sp, sp, t0
  SD ra, 216(sp)
  SD s6, 224(sp)
  LUI t5, 1
  ADDIW t5, t5, 136
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 144
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 152
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 160
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 168
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 176
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 440
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 448
  ADD t5, t5, sp
  SD s11, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 456
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 464
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 472
  ADD t5, t5, sp
  SD s8, 0(t5)
  LA s1, n
  ADDI s2, zero, 32
  SW s2, 0(s1)
  ADDI s1, zero, 7
  LUI t5, 1
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  SW s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  ADDI s1, t5, 4
  ADDI s2, zero, 23
  SW s2, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  ADDI s1, t5, 8
  ADDI s2, zero, 89
  SW s2, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  ADDI s1, t5, 12
  ADDI s2, zero, 26
  SW s2, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  ADDI s1, t5, 16
  ADDI s2, zero, 282
  SW s2, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  ADDI s1, t5, 20
  ADDI s2, zero, 254
  SW s2, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  ADDI s1, t5, 24
  ADDI s2, zero, 27
  SW s2, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  ADDI s1, t5, 28
  ADDI s2, zero, 5
  SW s2, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  ADDI s1, t5, 32
  ADDI s2, zero, 83
  SW s2, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  ADDI s1, t5, 36
  ADDI s2, zero, 273
  SW s2, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  ADDI s1, t5, 40
  ADDI s2, zero, 574
  SW s2, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  ADDI s1, t5, 44
  ADDI s2, zero, 905
  SW s2, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  ADDI s1, t5, 48
  ADDI s2, zero, 354
  SW s2, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  ADDI s1, t5, 52
  ADDI s2, zero, 657
  SW s2, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  ADDI s1, t5, 56
  ADDI s2, zero, 935
  SW s2, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  ADDI s1, t5, 60
  ADDI s2, zero, 264
  SW s2, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  ADDI s1, t5, 64
  ADDI s2, zero, 639
  SW s2, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  ADDI s1, t5, 68
  ADDI s2, zero, 459
  SW s2, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  ADDI s1, t5, 72
  ADDI s2, zero, 29
  SW s2, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  ADDI s1, t5, 76
  ADDI s2, zero, 68
  SW s2, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  ADDI s1, t5, 80
  ADDI s2, zero, 929
  SW s2, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  ADDI s1, t5, 84
  ADDI s2, zero, 756
  SW s2, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  ADDI s1, t5, 88
  ADDI s2, zero, 452
  SW s2, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  ADDI s1, t5, 92
  ADDI s2, zero, 279
  SW s2, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  ADDI s1, t5, 96
  ADDI s2, zero, 58
  SW s2, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  ADDI s1, t5, 100
  ADDI s2, zero, 87
  SW s2, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  ADDI s1, t5, 104
  ADDI s2, zero, 96
  SW s2, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  ADDI s1, t5, 108
  ADDI s2, zero, 36
  SW s2, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  ADDI s1, t5, 112
  ADDI s2, zero, 39
  SW s2, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  ADDI s1, t5, 116
  ADDI s2, zero, 28
  SW s2, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  ADDI s1, t5, 120
  ADDI s2, zero, 1
  SW s2, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, 312
  ADD t5, t5, sp
  ADDI s1, t5, 124
  ADDI s2, zero, 290
  SW s2, 0(s1)
  ADD t4, zero, zero
  SW t4, 176(sp)
  # implict jump to bb69
bb69:
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 180(sp)
  LW t4, 180(sp)
  SLTI s3, t4, 32
  BNE s3, zero, bb167
  # implict jump to bb70
bb70:
  ADD t4, zero, zero
  SW t4, 188(sp)
  ADD t4, zero, zero
  SW t4, 184(sp)
  # implict jump to bb71
bb71:
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 196(sp)
  LW t3, 188(sp)
  ADD t4, t3, zero
  SW t4, 192(sp)
  LW t4, 196(sp)
  LW t3, 192(sp)
  BLT t4, t3, bb166
  # implict jump to bb72
bb72:
  ADD t4, zero, zero
  SW t4, 200(sp)
  # implict jump to bb73
bb73:
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 204(sp)
  LW t4, 204(sp)
  SLTI s9, t4, 32
  BNE s9, zero, bb165
  # implict jump to bb74
bb74:
  ADD t4, zero, zero
  SW t4, 112(sp)
  ADD t4, zero, zero
  SW t4, 212(sp)
  # implict jump to bb75
bb75:
  LW t3, 212(sp)
  ADD t4, t3, zero
  SW t4, 208(sp)
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LA t0, n
  LW t0, 0(t0)
  ADDI t1, zero, 1
  SUBW t0, t0, t1
  LW t4, 208(sp)
  BLT t4, t0, bb158
  # implict jump to bb76
bb76:
  ADD t4, zero, zero
  SW t4, 164(sp)
  # implict jump to bb77
bb77:
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  LW t4, 172(sp)
  SLTI t2, t4, 32
  BNE t2, zero, bb157
  # implict jump to bb78
bb78:
  LA t2, n
  LW t2, 0(t2)
  ADDI a0, zero, 2
  REMW t2, t2, a0
  SLTIU t2, t2, 1
  BNE t2, zero, bb156
  # implict jump to bb79
bb79:
  LA t2, n
  LW t2, 0(t2)
  ADDI a0, zero, 2
  DIVW t2, t2, a0
  SLLIW t2, t2, 2
  LUI t5, 1
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  ADD t2, t5, t2
  LW t2, 0(t2)
  # implict jump to bb80
bb80:
  ADD a0, t2, zero
  CALL putint
  ADD t4, zero, zero
  SW t4, 56(sp)
  # implict jump to bb81
bb81:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t4, 4(sp)
  SLTI s4, t4, 1000
  BNE s4, zero, bb155
  # implict jump to bb82
bb82:
  ADD t4, zero, zero
  SW t4, 16(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb83
bb83:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LA s11, n
  LW s11, 0(s11)
  LW t4, 20(sp)
  BLT t4, s11, bb151
  # implict jump to bb84
bb84:
  LW t4, 28(sp)
  ADD a0, t4, zero
  CALL putint
  ADD t4, zero, zero
  SW t4, 32(sp)
  # implict jump to bb85
bb85:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LA s9, n
  LW t4, 0(s9)
  SW t4, 48(sp)
  LW t4, 36(sp)
  LW t3, 48(sp)
  BLT t4, t3, bb150
  # implict jump to bb86
bb86:
  ADDI s1, zero, 1
  LW t3, 48(sp)
  SUBW t4, t3, s1
  SW t4, 44(sp)
  ADD t4, zero, zero
  SW t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 52(sp)
  # implict jump to bb87
bb87:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t4, 40(sp)
  LW t3, 44(sp)
  BLT t4, t3, bb143
  # implict jump to bb88
bb88:
  ADD t4, zero, zero
  SW t4, 64(sp)
  # implict jump to bb89
bb89:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LW t4, 68(sp)
  SLTI s8, t4, 32
  BNE s8, zero, bb142
  # implict jump to bb90
bb90:
  ADD t4, zero, zero
  SW t4, 72(sp)
  # implict jump to bb91
bb91:
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LA s10, n
  LW t4, 0(s10)
  SW t4, 84(sp)
  LW t4, 76(sp)
  LW t3, 84(sp)
  BLT t4, t3, bb141
  # implict jump to bb92
bb92:
  ADDI t4, zero, 1
  SW t4, 88(sp)
  # implict jump to bb93
bb93:
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t4, 80(sp)
  LW t3, 84(sp)
  BLT t4, t3, bb134
  # implict jump to bb94
bb94:
  ADD t4, zero, zero
  SW t4, 92(sp)
  # implict jump to bb95
bb95:
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t4, 96(sp)
  SLTI s2, t4, 32
  BNE s2, zero, bb133
  # implict jump to bb96
bb96:
  ADD t4, zero, zero
  SW t4, 100(sp)
  # implict jump to bb97
bb97:
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LA s7, n
  LW s7, 0(s7)
  LW t4, 104(sp)
  BLT t4, s7, bb132
  # implict jump to bb98
bb98:
  LUI a0, 1
  ADDIW a0, a0, 184
  ADD a0, a0, sp
  ADD a0, a0, zero
  ADD a1, zero, zero
  ADDI a2, zero, 31
  CALL QuickSort
  ADD t4, zero, zero
  SW t4, 108(sp)
  # implict jump to bb99
bb99:
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  LW t4, 160(sp)
  SLTI s8, t4, 32
  BNE s8, zero, bb131
  # implict jump to bb100
bb100:
  ADD t4, zero, zero
  SW t4, 156(sp)
  # implict jump to bb101
bb101:
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LA s1, n
  LW t4, 0(s1)
  SW t4, 148(sp)
  LW t4, 152(sp)
  LW t3, 148(sp)
  BLT t4, t3, bb130
  # implict jump to bb102
bb102:
  ADD t4, zero, zero
  SW t4, 140(sp)
  ADD t4, zero, zero
  SW t4, 144(sp)
  # implict jump to bb103
bb103:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t4, 136(sp)
  LW t3, 148(sp)
  BLT t4, t3, bb126
  # implict jump to bb104
bb104:
  ADD t4, zero, zero
  SW t4, 128(sp)
  # implict jump to bb105
bb105:
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LW t4, 124(sp)
  SLTI s7, t4, 32
  BNE s7, zero, bb125
  # implict jump to bb106
bb106:
  ADD t4, zero, zero
  SW t4, 120(sp)
  # implict jump to bb107
bb107:
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  LA s8, n
  LW s0, 0(s8)
  LW t4, 116(sp)
  BLT t4, s0, bb124
  # implict jump to bb108
bb108:
  ADD s8, zero, zero
  ADD s11, zero, zero
  ADD s1, zero, zero
  # implict jump to bb109
bb109:
  ADD s3, s1, zero
  ADD s10, s11, zero
  ADD s6, s8, zero
  BLT s10, s0, bb117
  # implict jump to bb110
bb110:
  ADDIW s9, s0, -2
  # implict jump to bb111
bb111:
  ADD s2, s9, zero
  BLT s2, s0, bb116
  # implict jump to bb112
bb112:
  ADD s4, zero, zero
  # implict jump to bb113
bb113:
  ADD s7, s4, zero
  SLTI s5, s7, 32
  BNE s5, zero, bb115
  # implict jump to bb114
bb114:
  ADD a0, zero, zero
  LD ra, 216(sp)
  LD s6, 224(sp)
  LUI t5, 1
  ADDIW t5, t5, 136
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 144
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 152
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 160
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 168
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 176
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 440
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 448
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 456
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 464
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 472
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, 480
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb115:
  SLLIW s5, s7, 2
  LUI a0, 1
  ADDIW a0, a0, 184
  ADD a0, a0, sp
  ADD s5, a0, s5
  LW s5, 0(s5)
  ADD a0, s5, zero
  CALL putint
  ADDIW s5, s7, 1
  ADD s4, s5, zero
  JAL zero, bb113
bb116:
  SLLIW s4, s2, 2
  LUI t5, 1
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  ADD s4, t5, s4
  SW zero, 0(s4)
  ADDIW s2, s2, 1
  ADD s9, s2, zero
  JAL zero, bb111
bb117:
  SLTI s2, s10, 2
  BNE s2, zero, bb123
  # implict jump to bb118
bb118:
  XORI s2, s10, 2
  SLTIU s2, s2, 1
  BNE s2, zero, bb122
  # implict jump to bb119
bb119:
  SLLIW s2, s10, 2
  LUI t5, 1
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  ADD s2, t5, s2
  LW s2, 0(s2)
  ADDW s2, s3, s2
  SUBW s2, s2, s6
  ADDIW s4, s10, -2
  SLLIW s4, s4, 2
  LUI t5, 1
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  ADD s4, t5, s4
  LW s5, 0(s4)
  ADDI s7, zero, 3
  DIVW s7, s2, s7
  SW s7, 0(s4)
  ADD s4, s5, zero
  # implict jump to bb120
bb120:
  # implict jump to bb121
bb121:
  ADDIW s3, s10, 1
  ADD s8, s4, zero
  ADD s11, s3, zero
  ADD s1, s2, zero
  JAL zero, bb109
bb122:
  LUI t5, 1
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  LW s5, 0(t5)
  ADDI s7, zero, 3
  DIVW s7, s3, s7
  LUI t5, 1
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  SW s7, 0(t5)
  ADD s4, s5, zero
  ADD s2, s3, zero
  JAL zero, bb120
bb123:
  SLLIW s5, s10, 2
  LUI t5, 1
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  ADD s5, t5, s5
  LW s5, 0(s5)
  ADDW s3, s3, s5
  ADD s4, s6, zero
  ADD s2, s3, zero
  JAL zero, bb121
bb124:
  LW t4, 116(sp)
  SLLIW s0, t4, 2
  LUI t5, 1
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  ADD s1, t5, s0
  LUI t4, 1
  ADDIW t4, t4, 312
  ADD t4, t4, sp
  ADD s0, t4, s0
  LW s0, 0(s0)
  SW s0, 0(s1)
  LW t4, 116(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 120(sp)
  JAL zero, bb107
bb125:
  LW t4, 124(sp)
  SLLIW s0, t4, 2
  LUI a0, 1
  ADDIW a0, a0, 184
  ADD a0, a0, sp
  ADD s0, a0, s0
  LW s0, 0(s0)
  ADD a0, s0, zero
  CALL putint
  LW t4, 124(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 128(sp)
  JAL zero, bb105
bb126:
  LW t4, 136(sp)
  SLLIW s0, t4, 2
  LUI t5, 1
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  ADD s0, t5, s0
  LW s1, 0(s0)
  LW t4, 132(sp)
  ADDW s1, t4, s1
  ADDI s2, zero, 4
  LW t4, 136(sp)
  REMW s2, t4, s2
  XORI s2, s2, 3
  BNE s2, zero, bb129
  # implict jump to bb127
bb127:
  SW s1, 0(s0)
  ADD s2, zero, zero
  # implict jump to bb128
bb128:
  LW t4, 136(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 140(sp)
  ADD t4, s2, zero
  SW t4, 144(sp)
  JAL zero, bb103
bb129:
  SW zero, 0(s0)
  ADD s2, s1, zero
  JAL zero, bb128
bb130:
  LW t4, 152(sp)
  SLLIW s0, t4, 2
  LUI t5, 1
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  ADD s1, t5, s0
  LUI t4, 1
  ADDIW t4, t4, 312
  ADD t4, t4, sp
  ADD s0, t4, s0
  LW s0, 0(s0)
  SW s0, 0(s1)
  LW t4, 152(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 156(sp)
  JAL zero, bb101
bb131:
  LW t4, 160(sp)
  SLLIW s0, t4, 2
  LUI a0, 1
  ADDIW a0, a0, 184
  ADD a0, a0, sp
  ADD s0, a0, s0
  LW s0, 0(s0)
  ADD a0, s0, zero
  CALL putint
  LW t4, 160(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 108(sp)
  JAL zero, bb99
bb132:
  LW t4, 104(sp)
  SLLIW s0, t4, 2
  LUI t5, 1
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  ADD s1, t5, s0
  LUI t4, 1
  ADDIW t4, t4, 312
  ADD t4, t4, sp
  ADD s0, t4, s0
  LW s0, 0(s0)
  SW s0, 0(s1)
  LW t4, 104(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 100(sp)
  JAL zero, bb97
bb133:
  LW t4, 96(sp)
  SLLIW s0, t4, 2
  LUI a0, 1
  ADDIW a0, a0, 184
  ADD a0, a0, sp
  ADD s0, a0, s0
  LW s0, 0(s0)
  ADD a0, s0, zero
  CALL putint
  LW t4, 96(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 92(sp)
  JAL zero, bb95
bb134:
  LW t4, 80(sp)
  SLLIW s0, t4, 2
  LUI t5, 1
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  ADD s0, t5, s0
  LW s0, 0(s0)
  ADDI s1, zero, 1
  LW t4, 80(sp)
  SUBW s1, t4, s1
  # implict jump to bb135
bb135:
  ADD s2, s1, zero
  ADDI s3, zero, -1
  BLT s3, s2, bb140
  # implict jump to bb136
bb136:
  ADD s3, zero, zero
  # implict jump to bb137
bb137:
  BNE s3, zero, bb139
  # implict jump to bb138
bb138:
  ADDIW s3, s2, 1
  SLLIW s3, s3, 2
  LUI t4, 1
  ADDIW t4, t4, 184
  ADD t4, t4, sp
  ADD s3, t4, s3
  SW s0, 0(s3)
  LW t4, 80(sp)
  ADDIW s3, t4, 1
  ADD t4, s3, zero
  SW t4, 88(sp)
  JAL zero, bb93
bb139:
  ADDIW s3, s2, 1
  SLLIW s3, s3, 2
  LUI t5, 1
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  ADD s3, t5, s3
  SLLIW s4, s2, 2
  LUI t5, 1
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  ADD s4, t5, s4
  LW s4, 0(s4)
  SW s4, 0(s3)
  ADDI s3, zero, 1
  SUBW s2, s2, s3
  ADD s1, s2, zero
  JAL zero, bb135
bb140:
  SLLIW s4, s2, 2
  LUI t5, 1
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  ADD s4, t5, s4
  LW s4, 0(s4)
  SLT s4, s0, s4
  ADD s3, s4, zero
  JAL zero, bb137
bb141:
  LW t4, 76(sp)
  SLLIW s0, t4, 2
  LUI t5, 1
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  ADD s1, t5, s0
  LUI t4, 1
  ADDIW t4, t4, 312
  ADD t4, t4, sp
  ADD s0, t4, s0
  LW s0, 0(s0)
  SW s0, 0(s1)
  LW t4, 76(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 72(sp)
  JAL zero, bb91
bb142:
  LW t4, 68(sp)
  SLLIW s0, t4, 2
  LUI a0, 1
  ADDIW a0, a0, 184
  ADD a0, a0, sp
  ADD s0, a0, s0
  LW s0, 0(s0)
  ADD a0, s0, zero
  CALL putint
  LW t4, 68(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 64(sp)
  JAL zero, bb89
bb143:
  LW t4, 48(sp)
  LW t3, 40(sp)
  SUBW s0, t4, t3
  LW t4, 60(sp)
  ADD s1, t4, zero
  ADD s2, zero, zero
  # implict jump to bb144
bb144:
  ADD s3, s2, zero
  ADD s4, s1, zero
  ADDI s5, zero, 1
  SUBW s5, s0, s5
  BLT s3, s5, bb146
  # implict jump to bb145
bb145:
  LW t4, 40(sp)
  ADDIW s5, t4, 1
  ADD t4, s4, zero
  SW t4, 0(sp)
  ADD t4, s5, zero
  SW t4, 52(sp)
  JAL zero, bb87
bb146:
  SLLIW s5, s3, 2
  LUI t5, 1
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  ADD s5, t5, s5
  LW s6, 0(s5)
  ADDIW s3, s3, 1
  SLLIW s7, s3, 2
  LUI t5, 1
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  ADD s7, t5, s7
  LW s8, 0(s7)
  BLT s8, s6, bb149
  # implict jump to bb147
bb147:
  # implict jump to bb148
bb148:
  ADD s1, s4, zero
  ADD s2, s3, zero
  JAL zero, bb144
bb149:
  LW s6, 0(s7)
  LW s8, 0(s5)
  SW s8, 0(s7)
  SW s6, 0(s5)
  ADD s4, s6, zero
  JAL zero, bb148
bb150:
  LW t4, 36(sp)
  SLLIW s0, t4, 2
  LUI t5, 1
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  ADD s1, t5, s0
  LUI t4, 1
  ADDIW t4, t4, 312
  ADD t4, t4, sp
  ADD s0, t4, s0
  LW s0, 0(s0)
  SW s0, 0(s1)
  LW t4, 36(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 32(sp)
  JAL zero, bb85
bb151:
  LW t4, 20(sp)
  SLLIW s0, t4, 2
  LUI t5, 1
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  ADD s0, t5, s0
  LW s0, 0(s0)
  SLLIW s1, s0, 2
  ADDI t5, sp, 232
  ADD s1, t5, s1
  LW s2, 0(s1)
  ADDIW s2, s2, 1
  SW s2, 0(s1)
  LW t4, 24(sp)
  BLT t4, s2, bb154
  # implict jump to bb152
bb152:
  LW t4, 28(sp)
  ADD s1, t4, zero
  LW t4, 24(sp)
  ADD s3, t4, zero
  # implict jump to bb153
bb153:
  LW t4, 20(sp)
  ADDIW s0, t4, 1
  ADD t4, s1, zero
  SW t4, 16(sp)
  ADD t4, s0, zero
  SW t4, 12(sp)
  ADD t4, s3, zero
  SW t4, 8(sp)
  JAL zero, bb83
bb154:
  ADD s1, s0, zero
  ADD s3, s2, zero
  JAL zero, bb153
bb155:
  LW t4, 4(sp)
  SLLIW s0, t4, 2
  ADDI t4, sp, 232
  ADD s0, t4, s0
  SW zero, 0(s0)
  LW t4, 4(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 56(sp)
  JAL zero, bb81
bb156:
  LA a0, n
  LW a0, 0(a0)
  ADDI a1, zero, 2
  DIVW a0, a0, a1
  SLLIW a1, a0, 2
  LUI a2, 1
  ADDIW a2, a2, 184
  ADD a2, a2, sp
  ADD a1, a2, a1
  LW a1, 0(a1)
  ADDI a2, zero, 1
  SUBW a0, a0, a2
  SLLIW a0, a0, 2
  LUI t2, 1
  ADDIW t2, t2, 184
  ADD t2, t2, sp
  ADD a0, t2, a0
  LW a0, 0(a0)
  ADDW a0, a1, a0
  ADDI a1, zero, 2
  DIVW a0, a0, a1
  ADD t2, a0, zero
  JAL zero, bb80
bb157:
  LW t4, 172(sp)
  SLLIW s0, t4, 2
  LUI a0, 1
  ADDIW a0, a0, 184
  ADD a0, a0, sp
  ADD s0, a0, s0
  LW s0, 0(s0)
  ADD a0, s0, zero
  CALL putint
  LW t4, 172(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 164(sp)
  JAL zero, bb77
bb158:
  LW t4, 168(sp)
  ADD s0, t4, zero
  ADD s1, zero, zero
  # implict jump to bb159
bb159:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, n
  LW s4, 0(s4)
  LW t4, 208(sp)
  SUBW s4, s4, t4
  ADDI s5, zero, 1
  SUBW s4, s4, s5
  BLT s2, s4, bb161
  # implict jump to bb160
bb160:
  LW t4, 208(sp)
  ADDIW s4, t4, 1
  ADD t4, s3, zero
  SW t4, 112(sp)
  ADD t4, s4, zero
  SW t4, 212(sp)
  JAL zero, bb75
bb161:
  SLLIW s4, s2, 2
  LUI t5, 1
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  ADD s4, t5, s4
  LW s5, 0(s4)
  ADDIW s2, s2, 1
  SLLIW s6, s2, 2
  LUI t5, 1
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  ADD s6, t5, s6
  LW s7, 0(s6)
  BLT s7, s5, bb164
  # implict jump to bb162
bb162:
  # implict jump to bb163
bb163:
  ADD s0, s3, zero
  ADD s1, s2, zero
  JAL zero, bb159
bb164:
  LW s5, 0(s6)
  LW s7, 0(s4)
  SW s7, 0(s6)
  SW s5, 0(s4)
  ADD s3, s5, zero
  JAL zero, bb163
bb165:
  LW t4, 204(sp)
  SLLIW s0, t4, 2
  LUI a0, 1
  ADDIW a0, a0, 184
  ADD a0, a0, sp
  ADD s0, a0, s0
  LW s0, 0(s0)
  ADD a0, s0, zero
  CALL putint
  LW t4, 204(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 200(sp)
  JAL zero, bb73
bb166:
  LW t4, 196(sp)
  SLLIW s0, t4, 2
  LUI t5, 1
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  ADD s0, t5, s0
  LW s1, 0(s0)
  LW t4, 192(sp)
  SLLIW s2, t4, 2
  LUI t5, 1
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  ADD s2, t5, s2
  LW s3, 0(s2)
  SW s3, 0(s0)
  SW s1, 0(s2)
  LW t4, 196(sp)
  ADDIW s0, t4, 1
  ADDI s1, zero, 1
  LW t4, 192(sp)
  SUBW s1, t4, s1
  ADD t4, s1, zero
  SW t4, 188(sp)
  ADD t4, s0, zero
  SW t4, 184(sp)
  JAL zero, bb71
bb167:
  LW t4, 180(sp)
  SLLIW s0, t4, 2
  LUI t5, 1
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  ADD s1, t5, s0
  LUI t4, 1
  ADDIW t4, t4, 312
  ADD t4, t4, sp
  ADD s0, t4, s0
  LW s0, 0(s0)
  SW s0, 0(s1)
  LW t4, 180(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 176(sp)
  JAL zero, bb69
calSum:
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
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb169
bb169:
  ADD s3, s2, zero
  ADD s4, s1, zero
  LA s5, n
  LW s5, 0(s5)
  BLT s4, s5, bb171
  # implict jump to bb170
bb170:
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
bb171:
  SLLIW s5, s4, 2
  ADD s5, s0, s5
  LW s6, 0(s5)
  ADDW s3, s3, s6
  REMW s6, s4, a1
  ADDI s7, zero, 1
  SUBW s7, a1, s7
  BNE s6, s7, bb174
  # implict jump to bb172
bb172:
  SW s3, 0(s5)
  ADD s6, zero, zero
  # implict jump to bb173
bb173:
  ADDIW s3, s4, 1
  ADD s1, s3, zero
  ADD s2, s6, zero
  JAL zero, bb169
bb174:
  SW zero, 0(s5)
  ADD s6, s3, zero
  JAL zero, bb173
bubblesort:
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
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb176
bb176:
  ADD s3, s2, zero
  ADD s4, s1, zero
  LA s5, n
  LW s5, 0(s5)
  ADDI s6, zero, 1
  SUBW s5, s5, s6
  BLT s3, s5, bb178
  # implict jump to bb177
bb177:
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
bb178:
  ADD s5, zero, zero
  # implict jump to bb179
bb179:
  ADD s6, s5, zero
  ADD s7, s4, zero
  LA s8, n
  LW s8, 0(s8)
  SUBW s8, s8, s3
  ADDI s9, zero, 1
  SUBW s8, s8, s9
  BLT s6, s8, bb181
  # implict jump to bb180
bb180:
  ADDIW s8, s3, 1
  ADD s1, s7, zero
  ADD s2, s8, zero
  JAL zero, bb176
bb181:
  SLLIW s1, s6, 2
  ADD s1, s0, s1
  LW s2, 0(s1)
  ADDIW s6, s6, 1
  SLLIW s8, s6, 2
  ADD s8, s0, s8
  LW s9, 0(s8)
  BLT s9, s2, bb184
  # implict jump to bb182
bb182:
  ADD s2, s7, zero
  # implict jump to bb183
bb183:
  ADD s4, s2, zero
  ADD s5, s6, zero
  JAL zero, bb179
bb184:
  LW s7, 0(s8)
  LW s9, 0(s1)
  SW s9, 0(s8)
  SW s7, 0(s1)
  ADD s2, s7, zero
  JAL zero, bb183
