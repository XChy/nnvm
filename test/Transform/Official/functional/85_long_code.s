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
  LA s7, n
  LW s7, 0(s7)
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
  REMW s1, s1, s2
  SLTIU s1, s1, 1
  BNE s1, zero, bb29
  # implict jump to bb28
bb28:
  LA s1, n
  LW s1, 0(s1)
  ADDI s2, zero, 2
  DIVW s1, s1, s2
  SLLIW s1, s1, 2
  ADD s1, s0, s1
  LW s1, 0(s1)
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb29:
  LA s1, n
  LW s1, 0(s1)
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
  ADDIW t0, t0, -464
  ADD sp, sp, t0
  SD ra, 200(sp)
  SD s11, 208(sp)
  LUI t5, 1
  ADDIW t5, t5, 120
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 128
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 136
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 144
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 152
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 160
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 168
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 176
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 192
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 200
  ADD t5, t5, sp
  SD s10, 0(t5)
  LA s0, n
  ADDI s1, zero, 32
  SW s1, 0(s0)
  ADDI s0, zero, 7
  LUI t5, 1
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  SW s0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  ADDI s0, t5, 4
  ADDI s1, zero, 23
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  ADDI s0, t5, 8
  ADDI s1, zero, 89
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  ADDI s0, t5, 12
  ADDI s1, zero, 26
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  ADDI s0, t5, 16
  ADDI s1, zero, 282
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  ADDI s0, t5, 20
  ADDI s1, zero, 254
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  ADDI s0, t5, 24
  ADDI s1, zero, 27
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  ADDI s0, t5, 28
  ADDI s1, zero, 5
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  ADDI s0, t5, 32
  ADDI s1, zero, 83
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  ADDI s0, t5, 36
  ADDI s1, zero, 273
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  ADDI s0, t5, 40
  ADDI s1, zero, 574
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  ADDI s0, t5, 44
  ADDI s1, zero, 905
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  ADDI s0, t5, 48
  ADDI s1, zero, 354
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  ADDI s0, t5, 52
  ADDI s1, zero, 657
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  ADDI s0, t5, 56
  ADDI s1, zero, 935
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  ADDI s0, t5, 60
  ADDI s1, zero, 264
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  ADDI s0, t5, 64
  ADDI s1, zero, 639
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  ADDI s0, t5, 68
  ADDI s1, zero, 459
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  ADDI s0, t5, 72
  ADDI s1, zero, 29
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  ADDI s0, t5, 76
  ADDI s1, zero, 68
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  ADDI s0, t5, 80
  ADDI s1, zero, 929
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  ADDI s0, t5, 84
  ADDI s1, zero, 756
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  ADDI s0, t5, 88
  ADDI s1, zero, 452
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  ADDI s0, t5, 92
  ADDI s1, zero, 279
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  ADDI s0, t5, 96
  ADDI s1, zero, 58
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  ADDI s0, t5, 100
  ADDI s1, zero, 87
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  ADDI s0, t5, 104
  ADDI s1, zero, 96
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  ADDI s0, t5, 108
  ADDI s1, zero, 36
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  ADDI s0, t5, 112
  ADDI s1, zero, 39
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  ADDI s0, t5, 116
  ADDI s1, zero, 28
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  ADDI s0, t5, 120
  ADDI s1, zero, 1
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  ADDI s0, t5, 124
  ADDI s1, zero, 290
  SW s1, 0(s0)
  ADD t4, zero, zero
  SW t4, 164(sp)
  # implict jump to bb69
bb69:
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LW t4, 168(sp)
  SLTI s2, t4, 32
  BNE s2, zero, bb167
  # implict jump to bb70
bb70:
  ADD t4, zero, zero
  SW t4, 176(sp)
  ADD t4, zero, zero
  SW t4, 172(sp)
  # implict jump to bb71
bb71:
  LW t3, 172(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 180(sp)
  LW t4, 184(sp)
  LW t3, 180(sp)
  BLT t4, t3, bb166
  # implict jump to bb72
bb72:
  ADD t4, zero, zero
  SW t4, 188(sp)
  # implict jump to bb73
bb73:
  LW t3, 188(sp)
  ADD t4, t3, zero
  SW t4, 192(sp)
  LW t4, 192(sp)
  SLTI s8, t4, 32
  BNE s8, zero, bb165
  # implict jump to bb74
bb74:
  ADD t4, zero, zero
  SW t4, 4(sp)
  ADD t4, zero, zero
  SW t4, 52(sp)
  # implict jump to bb75
bb75:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LA ra, n
  LW ra, 0(ra)
  ADDI t0, zero, 1
  SUBW ra, ra, t0
  LW t4, 104(sp)
  BLT t4, ra, bb158
  # implict jump to bb76
bb76:
  ADD t4, zero, zero
  SW t4, 160(sp)
  # implict jump to bb77
bb77:
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  LW t4, 156(sp)
  SLTI t1, t4, 32
  BNE t1, zero, bb157
  # implict jump to bb78
bb78:
  LA t1, n
  LW t1, 0(t1)
  ADDI t2, zero, 2
  REMW t1, t1, t2
  SLTIU t1, t1, 1
  BNE t1, zero, bb156
  # implict jump to bb79
bb79:
  LA t1, n
  LW t1, 0(t1)
  ADDI t2, zero, 2
  DIVW t1, t1, t2
  SLLIW t1, t1, 2
  LUI t5, 1
  ADDIW t5, t5, 208
  ADD t5, t5, sp
  ADD t1, t5, t1
  LW t1, 0(t1)
  # implict jump to bb80
bb80:
  ADD a0, t1, zero
  CALL putint
  ADD t4, zero, zero
  SW t4, 12(sp)
  # implict jump to bb81
bb81:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t4, 16(sp)
  SLTI s3, t4, 1000
  BNE s3, zero, bb155
  # implict jump to bb82
bb82:
  ADD t4, zero, zero
  SW t4, 28(sp)
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb83
bb83:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LA s10, n
  LW s10, 0(s10)
  LW t4, 32(sp)
  BLT t4, s10, bb151
  # implict jump to bb84
bb84:
  LW t4, 40(sp)
  ADD a0, t4, zero
  CALL putint
  ADD t4, zero, zero
  SW t4, 44(sp)
  # implict jump to bb85
bb85:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LA s8, n
  LW s8, 0(s8)
  LW t4, 48(sp)
  BLT t4, s8, bb150
  # implict jump to bb86
bb86:
  ADD t4, zero, zero
  SW t4, 60(sp)
  ADD t4, zero, zero
  SW t4, 56(sp)
  # implict jump to bb87
bb87:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LA s5, n
  LW s5, 0(s5)
  ADDI s2, zero, 1
  SUBW s2, s5, s2
  LW t4, 0(sp)
  BLT t4, s2, bb143
  # implict jump to bb88
bb88:
  ADD t4, zero, zero
  SW t4, 68(sp)
  # implict jump to bb89
bb89:
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t4, 72(sp)
  SLTI s3, t4, 32
  BNE s3, zero, bb142
  # implict jump to bb90
bb90:
  ADD t4, zero, zero
  SW t4, 76(sp)
  # implict jump to bb91
bb91:
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LA s4, n
  LW s4, 0(s4)
  LW t4, 80(sp)
  BLT t4, s4, bb141
  # implict jump to bb92
bb92:
  ADDI t4, zero, 1
  SW t4, 88(sp)
  # implict jump to bb93
bb93:
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  LA s10, n
  LW s10, 0(s10)
  LW t4, 84(sp)
  BLT t4, s10, bb134
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
  SLTI s0, t4, 32
  BNE s0, zero, bb133
  # implict jump to bb96
bb96:
  ADD t4, zero, zero
  SW t4, 100(sp)
  # implict jump to bb97
bb97:
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LA s8, n
  LW s8, 0(s8)
  LW t4, 152(sp)
  BLT t4, s8, bb132
  # implict jump to bb98
bb98:
  LUI a0, 1
  ADDIW a0, a0, 208
  ADD a0, a0, sp
  ADD a0, a0, zero
  ADD a1, zero, zero
  ADDI a2, zero, 31
  CALL QuickSort
  ADD t4, zero, zero
  SW t4, 148(sp)
  # implict jump to bb99
bb99:
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LW t4, 144(sp)
  SLTI s2, t4, 32
  BNE s2, zero, bb131
  # implict jump to bb100
bb100:
  ADD t4, zero, zero
  SW t4, 140(sp)
  # implict jump to bb101
bb101:
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LA s3, n
  LW s3, 0(s3)
  LW t4, 136(sp)
  BLT t4, s3, bb130
  # implict jump to bb102
bb102:
  ADD t4, zero, zero
  SW t4, 128(sp)
  ADD t4, zero, zero
  SW t4, 132(sp)
  # implict jump to bb103
bb103:
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LA s10, n
  LW s10, 0(s10)
  LW t4, 124(sp)
  BLT t4, s10, bb126
  # implict jump to bb104
bb104:
  ADD t4, zero, zero
  SW t4, 116(sp)
  # implict jump to bb105
bb105:
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t4, 112(sp)
  SLTI s0, t4, 32
  BNE s0, zero, bb125
  # implict jump to bb106
bb106:
  ADD t4, zero, zero
  SW t4, 108(sp)
  # implict jump to bb107
bb107:
  LW t4, 108(sp)
  ADD s11, t4, zero
  LA s8, n
  LW s8, 0(s8)
  BLT s11, s8, bb124
  # implict jump to bb108
bb108:
  ADD s8, zero, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb109
bb109:
  ADD s5, s2, zero
  ADD s6, s1, zero
  ADD s3, s8, zero
  LA s4, n
  LW s4, 0(s4)
  BLT s6, s4, bb117
  # implict jump to bb110
bb110:
  LA s4, n
  LW s4, 0(s4)
  ADDIW s4, s4, -2
  # implict jump to bb111
bb111:
  ADD s7, s4, zero
  LA s10, n
  LW s10, 0(s10)
  BLT s7, s10, bb116
  # implict jump to bb112
bb112:
  ADD s10, zero, zero
  # implict jump to bb113
bb113:
  ADD s9, s10, zero
  SLTI s0, s9, 32
  BNE s0, zero, bb115
  # implict jump to bb114
bb114:
  ADD a0, zero, zero
  LD ra, 200(sp)
  LD s11, 208(sp)
  LUI t5, 1
  ADDIW t5, t5, 120
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 128
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 136
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 144
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 152
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 160
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 168
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 176
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 192
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 200
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, 464
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb115:
  SLLIW s0, s9, 2
  LUI a0, 1
  ADDIW a0, a0, 208
  ADD a0, a0, sp
  ADD s0, a0, s0
  LW s0, 0(s0)
  ADD a0, s0, zero
  CALL putint
  ADDIW s0, s9, 1
  ADD s10, s0, zero
  JAL zero, bb113
bb116:
  SLLIW s0, s7, 2
  LUI t5, 1
  ADDIW t5, t5, 208
  ADD t5, t5, sp
  ADD s0, t5, s0
  SW zero, 0(s0)
  ADDIW s0, s7, 1
  ADD s4, s0, zero
  JAL zero, bb111
bb117:
  SLTI s0, s6, 2
  BNE s0, zero, bb123
  # implict jump to bb118
bb118:
  XORI s0, s6, 2
  SLTIU s0, s0, 1
  BNE s0, zero, bb122
  # implict jump to bb119
bb119:
  SLLIW s0, s6, 2
  LUI t5, 1
  ADDIW t5, t5, 208
  ADD t5, t5, sp
  ADD s0, t5, s0
  LW s0, 0(s0)
  ADDW s0, s5, s0
  SUBW s0, s0, s3
  ADDIW s4, s6, -2
  SLLIW s4, s4, 2
  LUI t5, 1
  ADDIW t5, t5, 208
  ADD t5, t5, sp
  ADD s4, t5, s4
  LW s7, 0(s4)
  ADDI s9, zero, 3
  DIVW s9, s0, s9
  SW s9, 0(s4)
  ADD s4, s7, zero
  # implict jump to bb120
bb120:
  # implict jump to bb121
bb121:
  ADDIW s3, s6, 1
  ADD s8, s4, zero
  ADD s1, s3, zero
  ADD s2, s0, zero
  JAL zero, bb109
bb122:
  LUI t5, 1
  ADDIW t5, t5, 208
  ADD t5, t5, sp
  LW s7, 0(t5)
  ADDI s9, zero, 3
  DIVW s9, s5, s9
  LUI t5, 1
  ADDIW t5, t5, 208
  ADD t5, t5, sp
  SW s9, 0(t5)
  ADD s4, s7, zero
  ADD s0, s5, zero
  JAL zero, bb120
bb123:
  SLLIW s7, s6, 2
  LUI t5, 1
  ADDIW t5, t5, 208
  ADD t5, t5, sp
  ADD s7, t5, s7
  LW s7, 0(s7)
  ADDW s5, s5, s7
  ADD s4, s3, zero
  ADD s0, s5, zero
  JAL zero, bb121
bb124:
  SLLIW s0, s11, 2
  LUI t5, 1
  ADDIW t5, t5, 208
  ADD t5, t5, sp
  ADD s1, t5, s0
  LUI t4, 1
  ADDIW t4, t4, 336
  ADD t4, t4, sp
  ADD s0, t4, s0
  LW s0, 0(s0)
  SW s0, 0(s1)
  ADDIW s0, s11, 1
  ADD t4, s0, zero
  SW t4, 108(sp)
  JAL zero, bb107
bb125:
  LW t4, 112(sp)
  SLLIW s0, t4, 2
  LUI a0, 1
  ADDIW a0, a0, 208
  ADD a0, a0, sp
  ADD s0, a0, s0
  LW s0, 0(s0)
  ADD a0, s0, zero
  CALL putint
  LW t4, 112(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 116(sp)
  JAL zero, bb105
bb126:
  LW t4, 124(sp)
  SLLIW s0, t4, 2
  LUI t5, 1
  ADDIW t5, t5, 208
  ADD t5, t5, sp
  ADD s0, t5, s0
  LW s1, 0(s0)
  LW t4, 120(sp)
  ADDW s1, t4, s1
  ADDI s2, zero, 4
  LW t4, 124(sp)
  REMW s2, t4, s2
  XORI s2, s2, 3
  BNE s2, zero, bb129
  # implict jump to bb127
bb127:
  SW s1, 0(s0)
  ADD s2, zero, zero
  # implict jump to bb128
bb128:
  LW t4, 124(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 128(sp)
  ADD t4, s2, zero
  SW t4, 132(sp)
  JAL zero, bb103
bb129:
  SW zero, 0(s0)
  ADD s2, s1, zero
  JAL zero, bb128
bb130:
  LW t4, 136(sp)
  SLLIW s0, t4, 2
  LUI t5, 1
  ADDIW t5, t5, 208
  ADD t5, t5, sp
  ADD s1, t5, s0
  LUI t4, 1
  ADDIW t4, t4, 336
  ADD t4, t4, sp
  ADD s0, t4, s0
  LW s0, 0(s0)
  SW s0, 0(s1)
  LW t4, 136(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 140(sp)
  JAL zero, bb101
bb131:
  LW t4, 144(sp)
  SLLIW s0, t4, 2
  LUI a0, 1
  ADDIW a0, a0, 208
  ADD a0, a0, sp
  ADD s0, a0, s0
  LW s0, 0(s0)
  ADD a0, s0, zero
  CALL putint
  LW t4, 144(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 148(sp)
  JAL zero, bb99
bb132:
  LW t4, 152(sp)
  SLLIW s0, t4, 2
  LUI t5, 1
  ADDIW t5, t5, 208
  ADD t5, t5, sp
  ADD s1, t5, s0
  LUI t4, 1
  ADDIW t4, t4, 336
  ADD t4, t4, sp
  ADD s0, t4, s0
  LW s0, 0(s0)
  SW s0, 0(s1)
  LW t4, 152(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 100(sp)
  JAL zero, bb97
bb133:
  LW t4, 96(sp)
  SLLIW s0, t4, 2
  LUI a0, 1
  ADDIW a0, a0, 208
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
  LW t4, 84(sp)
  SLLIW s0, t4, 2
  LUI t5, 1
  ADDIW t5, t5, 208
  ADD t5, t5, sp
  ADD s0, t5, s0
  LW s0, 0(s0)
  ADDI s1, zero, 1
  LW t4, 84(sp)
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
  ADDIW t4, t4, 208
  ADD t4, t4, sp
  ADD s3, t4, s3
  SW s0, 0(s3)
  LW t4, 84(sp)
  ADDIW s3, t4, 1
  ADD t4, s3, zero
  SW t4, 88(sp)
  JAL zero, bb93
bb139:
  ADDIW s3, s2, 1
  SLLIW s3, s3, 2
  LUI t5, 1
  ADDIW t5, t5, 208
  ADD t5, t5, sp
  ADD s3, t5, s3
  SLLIW s4, s2, 2
  LUI t5, 1
  ADDIW t5, t5, 208
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
  ADDIW t5, t5, 208
  ADD t5, t5, sp
  ADD s4, t5, s4
  LW s4, 0(s4)
  SLT s4, s0, s4
  ADD s3, s4, zero
  JAL zero, bb137
bb141:
  LW t4, 80(sp)
  SLLIW s0, t4, 2
  LUI t5, 1
  ADDIW t5, t5, 208
  ADD t5, t5, sp
  ADD s1, t5, s0
  LUI t4, 1
  ADDIW t4, t4, 336
  ADD t4, t4, sp
  ADD s0, t4, s0
  LW s0, 0(s0)
  SW s0, 0(s1)
  LW t4, 80(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 76(sp)
  JAL zero, bb91
bb142:
  LW t4, 72(sp)
  SLLIW s0, t4, 2
  LUI a0, 1
  ADDIW a0, a0, 208
  ADD a0, a0, sp
  ADD s0, a0, s0
  LW s0, 0(s0)
  ADD a0, s0, zero
  CALL putint
  LW t4, 72(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 68(sp)
  JAL zero, bb89
bb143:
  LW t4, 64(sp)
  ADD s0, t4, zero
  ADD s1, zero, zero
  # implict jump to bb144
bb144:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, n
  LW s4, 0(s4)
  LW t4, 0(sp)
  SUBW s4, s4, t4
  ADDI s5, zero, 1
  SUBW s4, s4, s5
  BLT s2, s4, bb146
  # implict jump to bb145
bb145:
  LW t4, 0(sp)
  ADDIW s4, t4, 1
  ADD t4, s3, zero
  SW t4, 60(sp)
  ADD t4, s4, zero
  SW t4, 56(sp)
  JAL zero, bb87
bb146:
  SLLIW s4, s2, 2
  LUI t5, 1
  ADDIW t5, t5, 208
  ADD t5, t5, sp
  ADD s4, t5, s4
  LW s5, 0(s4)
  ADDIW s2, s2, 1
  SLLIW s6, s2, 2
  LUI t5, 1
  ADDIW t5, t5, 208
  ADD t5, t5, sp
  ADD s6, t5, s6
  LW s7, 0(s6)
  BLT s7, s5, bb149
  # implict jump to bb147
bb147:
  # implict jump to bb148
bb148:
  ADD s0, s3, zero
  ADD s1, s2, zero
  JAL zero, bb144
bb149:
  LW s5, 0(s6)
  LW s7, 0(s4)
  SW s7, 0(s6)
  SW s5, 0(s4)
  ADD s3, s5, zero
  JAL zero, bb148
bb150:
  LW t4, 48(sp)
  SLLIW s0, t4, 2
  LUI t5, 1
  ADDIW t5, t5, 208
  ADD t5, t5, sp
  ADD s1, t5, s0
  LUI t4, 1
  ADDIW t4, t4, 336
  ADD t4, t4, sp
  ADD s0, t4, s0
  LW s0, 0(s0)
  SW s0, 0(s1)
  LW t4, 48(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 44(sp)
  JAL zero, bb85
bb151:
  LW t4, 32(sp)
  SLLIW s0, t4, 2
  LUI t5, 1
  ADDIW t5, t5, 208
  ADD t5, t5, sp
  ADD s0, t5, s0
  LW s0, 0(s0)
  SLLIW s1, s0, 2
  ADDI t5, sp, 216
  ADD s1, t5, s1
  LW s2, 0(s1)
  ADDIW s2, s2, 1
  SW s2, 0(s1)
  LW t4, 36(sp)
  BLT t4, s2, bb154
  # implict jump to bb152
bb152:
  LW t4, 40(sp)
  ADD s1, t4, zero
  LW t4, 36(sp)
  ADD s3, t4, zero
  # implict jump to bb153
bb153:
  LW t4, 32(sp)
  ADDIW s0, t4, 1
  ADD t4, s1, zero
  SW t4, 28(sp)
  ADD t4, s0, zero
  SW t4, 24(sp)
  ADD t4, s3, zero
  SW t4, 20(sp)
  JAL zero, bb83
bb154:
  ADD s1, s0, zero
  ADD s3, s2, zero
  JAL zero, bb153
bb155:
  LW t4, 16(sp)
  SLLIW s0, t4, 2
  ADDI t4, sp, 216
  ADD s0, t4, s0
  SW zero, 0(s0)
  LW t4, 16(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 12(sp)
  JAL zero, bb81
bb156:
  LA t2, n
  LW t2, 0(t2)
  ADDI a0, zero, 2
  DIVW t2, t2, a0
  SLLIW a0, t2, 2
  LUI a1, 1
  ADDIW a1, a1, 208
  ADD a1, a1, sp
  ADD a0, a1, a0
  LW a0, 0(a0)
  ADDI a1, zero, 1
  SUBW t2, t2, a1
  SLLIW t2, t2, 2
  LUI t1, 1
  ADDIW t1, t1, 208
  ADD t1, t1, sp
  ADD t2, t1, t2
  LW t2, 0(t2)
  ADDW t2, a0, t2
  ADDI a0, zero, 2
  DIVW t2, t2, a0
  ADD t1, t2, zero
  JAL zero, bb80
bb157:
  LW t4, 156(sp)
  SLLIW s0, t4, 2
  LUI a0, 1
  ADDIW a0, a0, 208
  ADD a0, a0, sp
  ADD s0, a0, s0
  LW s0, 0(s0)
  ADD a0, s0, zero
  CALL putint
  LW t4, 156(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 160(sp)
  JAL zero, bb77
bb158:
  LW t4, 8(sp)
  ADD s0, t4, zero
  ADD s1, zero, zero
  # implict jump to bb159
bb159:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, n
  LW s4, 0(s4)
  LW t4, 104(sp)
  SUBW s4, s4, t4
  ADDI s5, zero, 1
  SUBW s4, s4, s5
  BLT s2, s4, bb161
  # implict jump to bb160
bb160:
  LW t4, 104(sp)
  ADDIW s4, t4, 1
  ADD t4, s3, zero
  SW t4, 4(sp)
  ADD t4, s4, zero
  SW t4, 52(sp)
  JAL zero, bb75
bb161:
  SLLIW s4, s2, 2
  LUI t5, 1
  ADDIW t5, t5, 208
  ADD t5, t5, sp
  ADD s4, t5, s4
  LW s5, 0(s4)
  ADDIW s2, s2, 1
  SLLIW s6, s2, 2
  LUI t5, 1
  ADDIW t5, t5, 208
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
  LW t4, 192(sp)
  SLLIW s0, t4, 2
  LUI a0, 1
  ADDIW a0, a0, 208
  ADD a0, a0, sp
  ADD s0, a0, s0
  LW s0, 0(s0)
  ADD a0, s0, zero
  CALL putint
  LW t4, 192(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 188(sp)
  JAL zero, bb73
bb166:
  LW t4, 184(sp)
  SLLIW s0, t4, 2
  LUI t5, 1
  ADDIW t5, t5, 208
  ADD t5, t5, sp
  ADD s0, t5, s0
  LW s1, 0(s0)
  LW t4, 180(sp)
  SLLIW s2, t4, 2
  LUI t5, 1
  ADDIW t5, t5, 208
  ADD t5, t5, sp
  ADD s2, t5, s2
  LW s3, 0(s2)
  SW s3, 0(s0)
  SW s1, 0(s2)
  LW t4, 184(sp)
  ADDIW s0, t4, 1
  ADDI s1, zero, 1
  LW t4, 180(sp)
  SUBW s1, t4, s1
  ADD t4, s1, zero
  SW t4, 176(sp)
  ADD t4, s0, zero
  SW t4, 172(sp)
  JAL zero, bb71
bb167:
  LW t4, 168(sp)
  SLLIW s0, t4, 2
  LUI t5, 1
  ADDIW t5, t5, 208
  ADD t5, t5, sp
  ADD s1, t5, s0
  LUI t4, 1
  ADDIW t4, t4, 336
  ADD t4, t4, sp
  ADD s0, t4, s0
  LW s0, 0(s0)
  SW s0, 0(s1)
  LW t4, 168(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 164(sp)
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
