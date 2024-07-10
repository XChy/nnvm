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
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  ADD s4, zero, zero
  # implict jump to bb1
bb1:
  ADD s5, s4, zero
  ADD s6, s3, zero
  ADD s7, s2, zero
  LA s8, n
  LW s9, 0(s8)
  SLT s8, s6, s9
  BNE s8, zero, bb6
  # implict jump to bb2
bb2:
  LA s8, n
  LW s9, 0(s8)
  SUBW s8, s9, s1
  ADDIW s9, s8, 1
  ADD s8, s9, zero
  # implict jump to bb3
bb3:
  ADD s9, s8, zero
  LA s10, n
  LW s11, 0(s10)
  SLT s10, s9, s11
  BNE s10, zero, bb5
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
  SLLIW s10, s9, 2
  ADD s11, s0, s10
  SW zero, 0(s11)
  ADDIW s10, s9, 1
  ADD s8, s10, zero
  JAL zero, bb3
bb6:
  ADDI s8, zero, 1
  SUBW s9, s1, s8
  SLT s8, s6, s9
  BNE s8, zero, bb12
  # implict jump to bb7
bb7:
  XOR s8, s6, s9
  SLTIU s9, s8, 1
  BNE s9, zero, bb11
  # implict jump to bb8
bb8:
  SLLIW s8, s6, 2
  ADD s9, s0, s8
  LW s8, 0(s9)
  ADDW s9, s5, s8
  SUBW s8, s9, s7
  SUBW s9, s6, s1
  ADDIW s10, s9, 1
  SLLIW s9, s10, 2
  ADD s10, s0, s9
  LW s9, 0(s10)
  DIVW s11, s8, s1
  SW s11, 0(s10)
  ADD s10, s9, zero
  ADD s9, s8, zero
  # implict jump to bb9
bb9:
  ADD s8, s9, zero
  ADD s9, s10, zero
  ADD s10, s9, zero
  ADD s9, s8, zero
  # implict jump to bb10
bb10:
  ADD s5, s9, zero
  ADD s7, s10, zero
  ADDIW s8, s6, 1
  ADD s2, s7, zero
  ADD s3, s8, zero
  ADD s4, s5, zero
  JAL zero, bb1
bb11:
  LW s8, 0(s0)
  DIVW s11, s5, s1
  SW s11, 0(s0)
  ADD s10, s8, zero
  ADD s9, s5, zero
  JAL zero, bb9
bb12:
  SLLIW s8, s6, 2
  ADD s11, s0, s8
  LW s8, 0(s11)
  ADDW s11, s5, s8
  ADD s10, s7, zero
  ADD s9, s11, zero
  JAL zero, bb10
arrCopy:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, zero, zero
  # implict jump to bb14
bb14:
  ADD s3, s2, zero
  LA s4, n
  LW s5, 0(s4)
  SLT s4, s3, s5
  BNE s4, zero, bb16
  # implict jump to bb15
bb15:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb16:
  SLLIW s4, s3, 2
  ADD s5, s1, s4
  ADD s6, s0, s4
  LW s4, 0(s6)
  SW s4, 0(s5)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
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
  LW s10, 0(s9)
  SLT s9, s6, s10
  BNE s9, zero, bb22
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
  SLLIW s9, s6, 2
  ADD s10, s0, s9
  LW s9, 0(s10)
  SLLIW s10, s9, 2
  ADDI t5, sp, 0
  ADD s11, t5, s10
  LW s10, 0(s11)
  ADDIW t0, s10, 1
  SW t0, 0(s11)
  SLT s10, s7, t0
  BNE s10, zero, bb25
  # implict jump to bb23
bb23:
  ADD s10, s8, zero
  ADD s8, s7, zero
  # implict jump to bb24
bb24:
  ADD s7, s8, zero
  ADD s8, s10, zero
  ADDIW s9, s6, 1
  ADD s3, s8, zero
  ADD s4, s7, zero
  ADD s5, s9, zero
  JAL zero, bb20
bb25:
  LW s7, 0(s11)
  ADD s10, s9, zero
  ADD s8, s7, zero
  JAL zero, bb24
bb26:
  SLLIW s3, s2, 2
  ADDI t5, sp, 0
  ADD s4, t5, s3
  SW zero, 0(s4)
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb18
getMid:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  ADD s0, a0, zero
  LA s1, n
  LW s2, 0(s1)
  ADDI s1, zero, 2
  REMW s3, s2, s1
  XOR s1, s3, zero
  SLTIU s2, s1, 1
  BNE s2, zero, bb29
  # implict jump to bb28
bb28:
  LA s1, n
  LW s2, 0(s1)
  ADDI s1, zero, 2
  DIVW s3, s2, s1
  SLLIW s1, s3, 2
  ADD s2, s0, s1
  LW s1, 0(s2)
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb29:
  LA s1, n
  LW s2, 0(s1)
  ADDI s1, zero, 2
  DIVW s3, s2, s1
  SLLIW s1, s3, 2
  ADD s2, s0, s1
  LW s1, 0(s2)
  ADDI s2, zero, 1
  SUBW s4, s3, s2
  SLLIW s2, s4, 2
  ADD s3, s0, s2
  LW s0, 0(s3)
  ADDW s2, s1, s0
  ADDI s0, zero, 2
  DIVW s1, s2, s0
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
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
  ADD s0, a0, zero
  ADDI s1, zero, 1
  # implict jump to bb31
bb31:
  ADD s2, s1, zero
  LA s3, n
  LW s4, 0(s3)
  SLT s3, s2, s4
  BNE s3, zero, bb33
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
  LD s8, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb33:
  SLLIW s3, s2, 2
  ADD s4, s0, s3
  LW s3, 0(s4)
  ADDI s4, zero, 1
  SUBW s5, s2, s4
  ADD s4, s5, zero
  # implict jump to bb34
bb34:
  ADD s5, s4, zero
  ADDI s6, zero, -1
  SLT s7, s6, s5
  BNE s7, zero, bb39
  # implict jump to bb35
bb35:
  ADD s6, zero, zero
  # implict jump to bb36
bb36:
  ADD s7, s6, zero
  BNE s7, zero, bb38
  # implict jump to bb37
bb37:
  ADDIW s6, s5, 1
  SLLIW s7, s6, 2
  ADD s6, s0, s7
  SW s3, 0(s6)
  ADDIW s6, s2, 1
  ADD s1, s6, zero
  JAL zero, bb31
bb38:
  ADDIW s1, s5, 1
  SLLIW s6, s1, 2
  ADD s1, s0, s6
  SLLIW s6, s5, 2
  ADD s7, s0, s6
  LW s6, 0(s7)
  SW s6, 0(s1)
  ADDI s1, zero, 1
  SUBW s6, s5, s1
  ADD s4, s6, zero
  JAL zero, bb34
bb39:
  SLLIW s7, s5, 2
  ADD s8, s0, s7
  LW s7, 0(s8)
  SLT s8, s3, s7
  ADD s6, s8, zero
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
  SLT s5, s3, s4
  BNE s5, zero, bb43
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
  ADD s6, s0, s5
  LW s5, 0(s6)
  SLLIW s7, s4, 2
  ADD s8, s0, s7
  LW s7, 0(s8)
  SW s7, 0(s6)
  SW s5, 0(s8)
  ADDIW s5, s3, 1
  ADDI s3, zero, 1
  SUBW s6, s4, s3
  ADD s1, s6, zero
  ADD s2, s5, zero
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
  SLT s3, s1, s2
  BNE s3, zero, bb46
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
  ADD s4, s0, s3
  LW s3, 0(s4)
  ADD s4, s2, zero
  ADD s5, s1, zero
  # implict jump to bb47
bb47:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLT s8, s6, s7
  BNE s8, zero, bb49
  # implict jump to bb48
bb48:
  SLLIW s8, s6, 2
  ADD s9, s0, s8
  SW s3, 0(s9)
  ADDI s8, zero, 1
  SUBW s9, s6, s8
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s9, zero
  CALL QuickSort
  ADD s8, a0, zero
  ADDIW s8, s6, 1
  ADD a0, s0, zero
  ADD a1, s8, zero
  ADD a2, s2, zero
  CALL QuickSort
  ADD s8, a0, zero
  JAL zero, bb45
bb49:
  ADD s8, s7, zero
  # implict jump to bb50
bb50:
  ADD s7, s8, zero
  SLT s9, s6, s7
  BNE s9, zero, bb67
  # implict jump to bb51
bb51:
  ADD s10, zero, zero
  # implict jump to bb52
bb52:
  ADD s11, s10, zero
  BNE s11, zero, bb66
  # implict jump to bb53
bb53:
  BNE s9, zero, bb65
  # implict jump to bb54
bb54:
  ADD s9, s6, zero
  # implict jump to bb55
bb55:
  ADD s10, s9, zero
  ADD s9, s10, zero
  # implict jump to bb56
bb56:
  ADD s10, s9, zero
  SLT s11, s10, s7
  BNE s11, zero, bb64
  # implict jump to bb57
bb57:
  ADD ra, zero, zero
  # implict jump to bb58
bb58:
  ADD t0, ra, zero
  BNE t0, zero, bb63
  # implict jump to bb59
bb59:
  BNE s11, zero, bb62
  # implict jump to bb60
bb60:
  ADD s11, s7, zero
  # implict jump to bb61
bb61:
  ADD ra, s11, zero
  ADD s4, ra, zero
  ADD s5, s10, zero
  JAL zero, bb47
bb62:
  SLLIW ra, s7, 2
  ADD t0, s0, ra
  SLLIW ra, s10, 2
  ADD t1, s0, ra
  LW ra, 0(t1)
  SW ra, 0(t0)
  ADDI ra, zero, 1
  SUBW t0, s7, ra
  ADD s11, t0, zero
  JAL zero, bb61
bb63:
  ADDIW s4, s10, 1
  ADD s9, s4, zero
  JAL zero, bb56
bb64:
  SLLIW t0, s10, 2
  ADD t1, s0, t0
  LW t0, 0(t1)
  SLT t1, t0, s3
  ADD ra, t1, zero
  JAL zero, bb58
bb65:
  SLLIW s10, s6, 2
  ADD s11, s0, s10
  SLLIW s10, s7, 2
  ADD ra, s0, s10
  LW s10, 0(ra)
  SW s10, 0(s11)
  ADDIW s10, s6, 1
  ADD s9, s10, zero
  JAL zero, bb55
bb66:
  ADDI s4, zero, 1
  SUBW s5, s7, s4
  ADD s8, s5, zero
  JAL zero, bb50
bb67:
  SLLIW s11, s7, 2
  ADD ra, s0, s11
  LW s11, 0(ra)
  ADDI ra, zero, 1
  SUBW t0, s3, ra
  SLT ra, t0, s11
  ADD s10, ra, zero
  JAL zero, bb52
main:
  LUI t0, 1048575
  ADDIW t0, t0, -464
  ADD sp, sp, t0
  SD ra, 200(sp)
  SD s0, 208(sp)
  SD s1, 216(sp)
  SD s2, 224(sp)
  SD s3, 232(sp)
  SD s4, 240(sp)
  SD s5, 248(sp)
  SD s6, 256(sp)
  SD s7, 264(sp)
  SD s8, 272(sp)
  SD s9, 280(sp)
  SD s10, 288(sp)
  SD s11, 296(sp)
  LA s0, n
  ADDI s1, zero, 32
  SW s1, 0(s0)
  ADDI s0, zero, 7
  SW s0, 304(sp)
  ADDI s0, sp, 308
  ADDI s1, zero, 23
  SW s1, 0(s0)
  ADDI s0, sp, 312
  ADDI s1, zero, 89
  SW s1, 0(s0)
  ADDI s0, sp, 316
  ADDI s1, zero, 26
  SW s1, 0(s0)
  ADDI s0, sp, 320
  ADDI s1, zero, 282
  SW s1, 0(s0)
  ADDI s0, sp, 324
  ADDI s1, zero, 254
  SW s1, 0(s0)
  ADDI s0, sp, 328
  ADDI s1, zero, 27
  SW s1, 0(s0)
  ADDI s0, sp, 332
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 336
  ADDI s1, zero, 83
  SW s1, 0(s0)
  ADDI s0, sp, 340
  ADDI s1, zero, 273
  SW s1, 0(s0)
  ADDI s0, sp, 344
  ADDI s1, zero, 574
  SW s1, 0(s0)
  ADDI s0, sp, 348
  ADDI s1, zero, 905
  SW s1, 0(s0)
  ADDI s0, sp, 352
  ADDI s1, zero, 354
  SW s1, 0(s0)
  ADDI s0, sp, 356
  ADDI s1, zero, 657
  SW s1, 0(s0)
  ADDI s0, sp, 360
  ADDI s1, zero, 935
  SW s1, 0(s0)
  ADDI s0, sp, 364
  ADDI s1, zero, 264
  SW s1, 0(s0)
  ADDI s0, sp, 368
  ADDI s1, zero, 639
  SW s1, 0(s0)
  ADDI s0, sp, 372
  ADDI s1, zero, 459
  SW s1, 0(s0)
  ADDI s0, sp, 376
  ADDI s1, zero, 29
  SW s1, 0(s0)
  ADDI s0, sp, 380
  ADDI s1, zero, 68
  SW s1, 0(s0)
  ADDI s0, sp, 384
  ADDI s1, zero, 929
  SW s1, 0(s0)
  ADDI s0, sp, 388
  ADDI s1, zero, 756
  SW s1, 0(s0)
  ADDI s0, sp, 392
  ADDI s1, zero, 452
  SW s1, 0(s0)
  ADDI s0, sp, 396
  ADDI s1, zero, 279
  SW s1, 0(s0)
  ADDI s0, sp, 400
  ADDI s1, zero, 58
  SW s1, 0(s0)
  ADDI s0, sp, 404
  ADDI s1, zero, 87
  SW s1, 0(s0)
  ADDI s0, sp, 408
  ADDI s1, zero, 96
  SW s1, 0(s0)
  ADDI s0, sp, 412
  ADDI s1, zero, 36
  SW s1, 0(s0)
  ADDI s0, sp, 416
  ADDI s1, zero, 39
  SW s1, 0(s0)
  ADDI s0, sp, 420
  ADDI s1, zero, 28
  SW s1, 0(s0)
  ADDI s0, sp, 424
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 428
  ADDI s1, zero, 290
  SW s1, 0(s0)
  ADD t4, zero, zero
  SW t4, 140(sp)
  # implict jump to bb69
bb69:
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LA s2, n
  LW s3, 0(s2)
  LW t4, 144(sp)
  SLT s2, t4, s3
  BNE s2, zero, bb167
  # implict jump to bb70
bb70:
  ADD t4, zero, zero
  SW t4, 152(sp)
  ADD t4, zero, zero
  SW t4, 148(sp)
  # implict jump to bb71
bb71:
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  LW t4, 160(sp)
  LW t3, 156(sp)
  SLT s6, t4, t3
  BNE s6, zero, bb166
  # implict jump to bb72
bb72:
  ADD t4, zero, zero
  SW t4, 164(sp)
  # implict jump to bb73
bb73:
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 196(sp)
  LW t4, 196(sp)
  SLTI s8, t4, 32
  BNE s8, zero, bb165
  # implict jump to bb74
bb74:
  ADD t4, zero, zero
  SW t4, 176(sp)
  ADD t4, zero, zero
  SW t4, 172(sp)
  # implict jump to bb75
bb75:
  LW t3, 172(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 180(sp)
  LA ra, n
  LW t0, 0(ra)
  ADDI ra, zero, 1
  SUBW t1, t0, ra
  LW t4, 168(sp)
  SLT ra, t4, t1
  BNE ra, zero, bb158
  # implict jump to bb76
bb76:
  ADD t4, zero, zero
  SW t4, 136(sp)
  # implict jump to bb77
bb77:
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  LW t4, 132(sp)
  SLTI t1, t4, 32
  BNE t1, zero, bb157
  # implict jump to bb78
bb78:
  LA t1, n
  LW t2, 0(t1)
  ADDI t1, zero, 2
  REMW a0, t2, t1
  XOR t1, a0, zero
  SLTIU t2, t1, 1
  BNE t2, zero, bb156
  # implict jump to bb79
bb79:
  LA t1, n
  LW t2, 0(t1)
  ADDI t1, zero, 2
  DIVW a0, t2, t1
  SLLIW t1, a0, 2
  ADDI t2, sp, 432
  ADD t2, t2, t1
  LW t1, 0(t2)
  ADD t2, t1, zero
  # implict jump to bb80
bb80:
  ADD t1, t2, zero
  ADD a0, t1, zero
  CALL putint
  ADD t4, zero, zero
  SW t4, 184(sp)
  # implict jump to bb81
bb81:
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 188(sp)
  LW t4, 188(sp)
  SLTI s3, t4, 1000
  BNE s3, zero, bb155
  # implict jump to bb82
bb82:
  ADD t4, zero, zero
  SW t4, 64(sp)
  ADD t4, zero, zero
  SW t4, 128(sp)
  ADD t4, zero, zero
  SW t4, 192(sp)
  # implict jump to bb83
bb83:
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LA s10, n
  LW s9, 0(s10)
  LW t4, 4(sp)
  SLT s10, t4, s9
  BNE s10, zero, bb151
  # implict jump to bb84
bb84:
  LW t4, 12(sp)
  ADD a0, t4, zero
  CALL putint
  ADD t4, zero, zero
  SW t4, 16(sp)
  # implict jump to bb85
bb85:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LA s8, n
  LW s11, 0(s8)
  LW t4, 20(sp)
  SLT s8, t4, s11
  BNE s8, zero, bb150
  # implict jump to bb86
bb86:
  ADD t4, zero, zero
  SW t4, 32(sp)
  ADD t4, zero, zero
  SW t4, 28(sp)
  # implict jump to bb87
bb87:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LA s5, n
  LW s2, 0(s5)
  ADDI s5, zero, 1
  SUBW s3, s2, s5
  LW t4, 24(sp)
  SLT s2, t4, s3
  BNE s2, zero, bb143
  # implict jump to bb88
bb88:
  ADD t4, zero, zero
  SW t4, 40(sp)
  # implict jump to bb89
bb89:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t4, 44(sp)
  SLTI s5, t4, 32
  BNE s5, zero, bb142
  # implict jump to bb90
bb90:
  ADD t4, zero, zero
  SW t4, 48(sp)
  # implict jump to bb91
bb91:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LA s6, n
  LW s7, 0(s6)
  LW t4, 52(sp)
  SLT s6, t4, s7
  BNE s6, zero, bb141
  # implict jump to bb92
bb92:
  ADDI t4, zero, 1
  SW t4, 60(sp)
  # implict jump to bb93
bb93:
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LA s9, n
  LW s10, 0(s9)
  LW t4, 56(sp)
  SLT s9, t4, s10
  BNE s9, zero, bb134
  # implict jump to bb94
bb94:
  ADD t4, zero, zero
  SW t4, 0(sp)
  # implict jump to bb95
bb95:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LW t4, 68(sp)
  SLTI s0, t4, 32
  BNE s0, zero, bb133
  # implict jump to bb96
bb96:
  ADD t4, zero, zero
  SW t4, 72(sp)
  # implict jump to bb97
bb97:
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LA s8, n
  LW s1, 0(s8)
  LW t4, 76(sp)
  SLT s8, t4, s1
  BNE s8, zero, bb132
  # implict jump to bb98
bb98:
  ADDI a0, sp, 432
  ADD a0, a0, zero
  ADD a1, zero, zero
  ADDI a2, zero, 31
  CALL QuickSort
  ADD s1, a0, zero
  ADD t4, zero, zero
  SW t4, 80(sp)
  # implict jump to bb99
bb99:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  LW t4, 84(sp)
  SLTI s2, t4, 32
  BNE s2, zero, bb131
  # implict jump to bb100
bb100:
  ADD t4, zero, zero
  SW t4, 88(sp)
  # implict jump to bb101
bb101:
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  LA s5, n
  LW s4, 0(s5)
  LW t4, 92(sp)
  SLT s5, t4, s4
  BNE s5, zero, bb130
  # implict jump to bb102
bb102:
  ADD t4, zero, zero
  SW t4, 100(sp)
  ADD t4, zero, zero
  SW t4, 96(sp)
  # implict jump to bb103
bb103:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LA s9, n
  LW s10, 0(s9)
  LW t4, 104(sp)
  SLT s9, t4, s10
  BNE s9, zero, bb126
  # implict jump to bb104
bb104:
  ADD t4, zero, zero
  SW t4, 112(sp)
  # implict jump to bb105
bb105:
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  LW t4, 116(sp)
  SLTI s0, t4, 32
  BNE s0, zero, bb125
  # implict jump to bb106
bb106:
  ADD t4, zero, zero
  SW t4, 120(sp)
  # implict jump to bb107
bb107:
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LA s1, n
  LW s8, 0(s1)
  LW t4, 124(sp)
  SLT s1, t4, s8
  BNE s1, zero, bb124
  # implict jump to bb108
bb108:
  ADD s1, zero, zero
  ADD s8, zero, zero
  ADD s2, zero, zero
  # implict jump to bb109
bb109:
  ADD s3, s2, zero
  ADD s5, s8, zero
  ADD s4, s1, zero
  LA s6, n
  LW s7, 0(s6)
  SLT s6, s5, s7
  BNE s6, zero, bb117
  # implict jump to bb110
bb110:
  LA s6, n
  LW s7, 0(s6)
  ADDIW s6, s7, -2
  ADD s7, s6, zero
  # implict jump to bb111
bb111:
  ADD s6, s7, zero
  LA s9, n
  LW s10, 0(s9)
  SLT s9, s6, s10
  BNE s9, zero, bb116
  # implict jump to bb112
bb112:
  ADD s9, zero, zero
  # implict jump to bb113
bb113:
  ADD s10, s9, zero
  SLTI s0, s10, 32
  BNE s0, zero, bb115
  # implict jump to bb114
bb114:
  ADD a0, zero, zero
  LD ra, 200(sp)
  LD s0, 208(sp)
  LD s1, 216(sp)
  LD s2, 224(sp)
  LD s3, 232(sp)
  LD s4, 240(sp)
  LD s5, 248(sp)
  LD s6, 256(sp)
  LD s7, 264(sp)
  LD s8, 272(sp)
  LD s9, 280(sp)
  LD s10, 288(sp)
  LD s11, 296(sp)
  LUI t0, 1
  ADDIW t0, t0, 464
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb115:
  SLLIW s0, s10, 2
  ADDI t5, sp, 432
  ADD s11, t5, s0
  LW s0, 0(s11)
  ADD a0, s0, zero
  CALL putint
  ADDIW s0, s10, 1
  ADD s9, s0, zero
  JAL zero, bb113
bb116:
  SLLIW s0, s6, 2
  ADDI t5, sp, 432
  ADD s9, t5, s0
  SW zero, 0(s9)
  ADDIW s0, s6, 1
  ADD s7, s0, zero
  JAL zero, bb111
bb117:
  SLTI s0, s5, 2
  BNE s0, zero, bb123
  # implict jump to bb118
bb118:
  XORI s0, s5, 2
  SLTIU s6, s0, 1
  BNE s6, zero, bb122
  # implict jump to bb119
bb119:
  SLLIW s0, s5, 2
  ADDI t5, sp, 432
  ADD s6, t5, s0
  LW s0, 0(s6)
  ADDW s6, s3, s0
  SUBW s0, s6, s4
  ADDIW s6, s5, -2
  SLLIW s7, s6, 2
  ADDI t5, sp, 432
  ADD s6, t5, s7
  LW s7, 0(s6)
  ADDI s9, zero, 3
  DIVW s10, s0, s9
  SW s10, 0(s6)
  ADD s6, s7, zero
  ADD s7, s0, zero
  # implict jump to bb120
bb120:
  ADD s0, s7, zero
  ADD s7, s6, zero
  ADD s6, s7, zero
  ADD s7, s0, zero
  # implict jump to bb121
bb121:
  ADD s0, s7, zero
  ADD s3, s6, zero
  ADDIW s4, s5, 1
  ADD s1, s3, zero
  ADD s8, s4, zero
  ADD s2, s0, zero
  JAL zero, bb109
bb122:
  LW s0, 432(sp)
  ADDI s9, zero, 3
  DIVW s10, s3, s9
  SW s10, 432(sp)
  ADD s6, s0, zero
  ADD s7, s3, zero
  JAL zero, bb120
bb123:
  SLLIW s0, s5, 2
  ADDI t5, sp, 432
  ADD s9, t5, s0
  LW s0, 0(s9)
  ADDW s9, s3, s0
  ADD s6, s4, zero
  ADD s7, s9, zero
  JAL zero, bb121
bb124:
  LW t4, 124(sp)
  SLLIW s0, t4, 2
  ADDI t5, sp, 432
  ADD s1, t5, s0
  ADDI t5, sp, 304
  ADD s2, t5, s0
  LW s0, 0(s2)
  SW s0, 0(s1)
  LW t4, 124(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 120(sp)
  JAL zero, bb107
bb125:
  LW t4, 116(sp)
  SLLIW s0, t4, 2
  ADDI t5, sp, 432
  ADD s1, t5, s0
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  LW t4, 116(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 112(sp)
  JAL zero, bb105
bb126:
  LW t4, 104(sp)
  SLLIW s0, t4, 2
  ADDI t5, sp, 432
  ADD s1, t5, s0
  LW s0, 0(s1)
  LW t4, 108(sp)
  ADDW s2, t4, s0
  ADDI s0, zero, 4
  LW t4, 104(sp)
  REMW s3, t4, s0
  XORI s0, s3, 3
  SLTU s3, zero, s0
  BNE s3, zero, bb129
  # implict jump to bb127
bb127:
  SW s2, 0(s1)
  ADD s0, zero, zero
  # implict jump to bb128
bb128:
  ADD s1, s0, zero
  LW t4, 104(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 100(sp)
  ADD t4, s1, zero
  SW t4, 96(sp)
  JAL zero, bb103
bb129:
  SW zero, 0(s1)
  ADD s0, s2, zero
  JAL zero, bb128
bb130:
  LW t4, 92(sp)
  SLLIW s0, t4, 2
  ADDI t5, sp, 432
  ADD s1, t5, s0
  ADDI t5, sp, 304
  ADD s2, t5, s0
  LW s0, 0(s2)
  SW s0, 0(s1)
  LW t4, 92(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 88(sp)
  JAL zero, bb101
bb131:
  LW t4, 84(sp)
  SLLIW s0, t4, 2
  ADDI t5, sp, 432
  ADD s1, t5, s0
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  LW t4, 84(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 80(sp)
  JAL zero, bb99
bb132:
  LW t4, 76(sp)
  SLLIW s0, t4, 2
  ADDI t5, sp, 432
  ADD s1, t5, s0
  ADDI t5, sp, 304
  ADD s2, t5, s0
  LW s0, 0(s2)
  SW s0, 0(s1)
  LW t4, 76(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 72(sp)
  JAL zero, bb97
bb133:
  LW t4, 68(sp)
  SLLIW s0, t4, 2
  ADDI t5, sp, 432
  ADD s1, t5, s0
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  LW t4, 68(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 0(sp)
  JAL zero, bb95
bb134:
  LW t4, 56(sp)
  SLLIW s0, t4, 2
  ADDI t5, sp, 432
  ADD s1, t5, s0
  LW s0, 0(s1)
  ADDI s1, zero, 1
  LW t4, 56(sp)
  SUBW s2, t4, s1
  ADD s1, s2, zero
  # implict jump to bb135
bb135:
  ADD s2, s1, zero
  ADDI s3, zero, -1
  SLT s4, s3, s2
  BNE s4, zero, bb140
  # implict jump to bb136
bb136:
  ADD s3, zero, zero
  # implict jump to bb137
bb137:
  ADD s4, s3, zero
  BNE s4, zero, bb139
  # implict jump to bb138
bb138:
  ADDIW s3, s2, 1
  SLLIW s4, s3, 2
  ADDI t5, sp, 432
  ADD s3, t5, s4
  SW s0, 0(s3)
  LW t4, 56(sp)
  ADDIW s3, t4, 1
  ADD t4, s3, zero
  SW t4, 60(sp)
  JAL zero, bb93
bb139:
  ADDIW s3, s2, 1
  SLLIW s4, s3, 2
  ADDI t5, sp, 432
  ADD s3, t5, s4
  SLLIW s4, s2, 2
  ADDI t5, sp, 432
  ADD s5, t5, s4
  LW s4, 0(s5)
  SW s4, 0(s3)
  ADDI s3, zero, 1
  SUBW s4, s2, s3
  ADD s1, s4, zero
  JAL zero, bb135
bb140:
  SLLIW s4, s2, 2
  ADDI t5, sp, 432
  ADD s5, t5, s4
  LW s4, 0(s5)
  SLT s5, s0, s4
  ADD s3, s5, zero
  JAL zero, bb137
bb141:
  LW t4, 52(sp)
  SLLIW s0, t4, 2
  ADDI t5, sp, 432
  ADD s1, t5, s0
  ADDI t5, sp, 304
  ADD s2, t5, s0
  LW s0, 0(s2)
  SW s0, 0(s1)
  LW t4, 52(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 48(sp)
  JAL zero, bb91
bb142:
  LW t4, 44(sp)
  SLLIW s0, t4, 2
  ADDI t5, sp, 432
  ADD s1, t5, s0
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  LW t4, 44(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 40(sp)
  JAL zero, bb89
bb143:
  LW t4, 36(sp)
  ADD s0, t4, zero
  ADD s1, zero, zero
  # implict jump to bb144
bb144:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, n
  LW s5, 0(s4)
  LW t4, 24(sp)
  SUBW s4, s5, t4
  ADDI s5, zero, 1
  SUBW s6, s4, s5
  SLT s4, s2, s6
  BNE s4, zero, bb146
  # implict jump to bb145
bb145:
  LW t4, 24(sp)
  ADDIW s4, t4, 1
  ADD t4, s3, zero
  SW t4, 32(sp)
  ADD t4, s4, zero
  SW t4, 28(sp)
  JAL zero, bb87
bb146:
  SLLIW s4, s2, 2
  ADDI t5, sp, 432
  ADD s5, t5, s4
  LW s4, 0(s5)
  ADDIW s6, s2, 1
  SLLIW s2, s6, 2
  ADDI t5, sp, 432
  ADD s7, t5, s2
  LW s2, 0(s7)
  SLT s8, s2, s4
  BNE s8, zero, bb149
  # implict jump to bb147
bb147:
  ADD s2, s3, zero
  # implict jump to bb148
bb148:
  ADD s3, s2, zero
  ADD s0, s3, zero
  ADD s1, s6, zero
  JAL zero, bb144
bb149:
  LW s3, 0(s7)
  LW s4, 0(s5)
  SW s4, 0(s7)
  SW s3, 0(s5)
  ADD s2, s3, zero
  JAL zero, bb148
bb150:
  LW t4, 20(sp)
  SLLIW s0, t4, 2
  ADDI t5, sp, 432
  ADD s1, t5, s0
  ADDI t5, sp, 304
  ADD s2, t5, s0
  LW s0, 0(s2)
  SW s0, 0(s1)
  LW t4, 20(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 16(sp)
  JAL zero, bb85
bb151:
  LW t4, 4(sp)
  SLLIW s0, t4, 2
  ADDI t5, sp, 432
  ADD s1, t5, s0
  LW s0, 0(s1)
  SLLIW s1, s0, 2
  ADDI t5, sp, 560
  ADD s2, t5, s1
  LW s1, 0(s2)
  ADDIW s3, s1, 1
  SW s3, 0(s2)
  LW t4, 8(sp)
  SLT s1, t4, s3
  BNE s1, zero, bb154
  # implict jump to bb152
bb152:
  LW t4, 12(sp)
  ADD s1, t4, zero
  LW t4, 8(sp)
  ADD s3, t4, zero
  # implict jump to bb153
bb153:
  ADD s0, s3, zero
  ADD s2, s1, zero
  LW t4, 4(sp)
  ADDIW s1, t4, 1
  ADD t4, s2, zero
  SW t4, 64(sp)
  ADD t4, s0, zero
  SW t4, 128(sp)
  ADD t4, s1, zero
  SW t4, 192(sp)
  JAL zero, bb83
bb154:
  LW s4, 0(s2)
  ADD s1, s0, zero
  ADD s3, s4, zero
  JAL zero, bb153
bb155:
  LW t4, 188(sp)
  SLLIW s0, t4, 2
  ADDI t5, sp, 560
  ADD s1, t5, s0
  SW zero, 0(s1)
  LW t4, 188(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 184(sp)
  JAL zero, bb81
bb156:
  LA t1, n
  LW a0, 0(t1)
  ADDI t1, zero, 2
  DIVW a1, a0, t1
  SLLIW t1, a1, 2
  ADDI a0, sp, 432
  ADD a0, a0, t1
  LW t1, 0(a0)
  ADDI a0, zero, 1
  SUBW a2, a1, a0
  SLLIW a0, a2, 2
  ADDI a1, sp, 432
  ADD a1, a1, a0
  LW a0, 0(a1)
  ADDW a1, t1, a0
  ADDI t1, zero, 2
  DIVW a0, a1, t1
  ADD t2, a0, zero
  JAL zero, bb80
bb157:
  LW t4, 132(sp)
  SLLIW s0, t4, 2
  ADDI t5, sp, 432
  ADD s1, t5, s0
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  LW t4, 132(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 136(sp)
  JAL zero, bb77
bb158:
  LW t4, 180(sp)
  ADD s0, t4, zero
  ADD s1, zero, zero
  # implict jump to bb159
bb159:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, n
  LW s5, 0(s4)
  LW t4, 168(sp)
  SUBW s4, s5, t4
  ADDI s5, zero, 1
  SUBW s6, s4, s5
  SLT s4, s2, s6
  BNE s4, zero, bb161
  # implict jump to bb160
bb160:
  LW t4, 168(sp)
  ADDIW s4, t4, 1
  ADD t4, s3, zero
  SW t4, 176(sp)
  ADD t4, s4, zero
  SW t4, 172(sp)
  JAL zero, bb75
bb161:
  SLLIW s4, s2, 2
  ADDI t5, sp, 432
  ADD s5, t5, s4
  LW s4, 0(s5)
  ADDIW s6, s2, 1
  SLLIW s2, s6, 2
  ADDI t5, sp, 432
  ADD s7, t5, s2
  LW s2, 0(s7)
  SLT s8, s2, s4
  BNE s8, zero, bb164
  # implict jump to bb162
bb162:
  ADD s2, s3, zero
  # implict jump to bb163
bb163:
  ADD s3, s2, zero
  ADD s0, s3, zero
  ADD s1, s6, zero
  JAL zero, bb159
bb164:
  LW s3, 0(s7)
  LW s4, 0(s5)
  SW s4, 0(s7)
  SW s3, 0(s5)
  ADD s2, s3, zero
  JAL zero, bb163
bb165:
  LW t4, 196(sp)
  SLLIW s0, t4, 2
  ADDI t5, sp, 432
  ADD s1, t5, s0
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL putint
  LW t4, 196(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 164(sp)
  JAL zero, bb73
bb166:
  LW t4, 160(sp)
  SLLIW s0, t4, 2
  ADDI t5, sp, 432
  ADD s1, t5, s0
  LW s0, 0(s1)
  LW t4, 156(sp)
  SLLIW s2, t4, 2
  ADDI t5, sp, 432
  ADD s3, t5, s2
  LW s2, 0(s3)
  SW s2, 0(s1)
  SW s0, 0(s3)
  LW t4, 160(sp)
  ADDIW s0, t4, 1
  ADDI s1, zero, 1
  LW t4, 156(sp)
  SUBW s2, t4, s1
  ADD t4, s2, zero
  SW t4, 152(sp)
  ADD t4, s0, zero
  SW t4, 148(sp)
  JAL zero, bb71
bb167:
  LW t4, 144(sp)
  SLLIW s0, t4, 2
  ADDI t5, sp, 432
  ADD s1, t5, s0
  ADDI t5, sp, 304
  ADD s2, t5, s0
  LW s0, 0(s2)
  SW s0, 0(s1)
  LW t4, 144(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 140(sp)
  JAL zero, bb69
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
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  # implict jump to bb169
bb169:
  ADD s4, s3, zero
  ADD s5, s2, zero
  LA s6, n
  LW s7, 0(s6)
  SLT s6, s5, s7
  BNE s6, zero, bb171
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
  LD s8, 72(sp)
  LD s9, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb171:
  SLLIW s6, s5, 2
  ADD s7, s0, s6
  LW s6, 0(s7)
  ADDW s8, s4, s6
  REMW s4, s5, s1
  ADDI s6, zero, 1
  SUBW s9, s1, s6
  XOR s6, s4, s9
  SLTU s4, zero, s6
  BNE s4, zero, bb174
  # implict jump to bb172
bb172:
  SW s8, 0(s7)
  ADD s4, zero, zero
  # implict jump to bb173
bb173:
  ADD s6, s4, zero
  ADDIW s4, s5, 1
  ADD s2, s4, zero
  ADD s3, s6, zero
  JAL zero, bb169
bb174:
  SW zero, 0(s7)
  ADD s4, s8, zero
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
  SD s10, 88(sp)
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb176
bb176:
  ADD s3, s2, zero
  ADD s4, s1, zero
  LA s5, n
  LW s6, 0(s5)
  ADDI s5, zero, 1
  SUBW s7, s6, s5
  SLT s5, s3, s7
  BNE s5, zero, bb178
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
  LD s10, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb178:
  ADD s5, s4, zero
  ADD s4, zero, zero
  # implict jump to bb179
bb179:
  ADD s6, s4, zero
  ADD s7, s5, zero
  LA s8, n
  LW s9, 0(s8)
  SUBW s8, s9, s3
  ADDI s9, zero, 1
  SUBW s10, s8, s9
  SLT s8, s6, s10
  BNE s8, zero, bb181
  # implict jump to bb180
bb180:
  ADDIW s8, s3, 1
  ADD s1, s7, zero
  ADD s2, s8, zero
  JAL zero, bb176
bb181:
  SLLIW s1, s6, 2
  ADD s2, s0, s1
  LW s1, 0(s2)
  ADDIW s8, s6, 1
  SLLIW s6, s8, 2
  ADD s9, s0, s6
  LW s6, 0(s9)
  SLT s10, s6, s1
  BNE s10, zero, bb184
  # implict jump to bb182
bb182:
  ADD s1, s7, zero
  # implict jump to bb183
bb183:
  ADD s2, s1, zero
  ADD s5, s2, zero
  ADD s4, s8, zero
  JAL zero, bb179
bb184:
  LW s6, 0(s9)
  LW s7, 0(s2)
  SW s7, 0(s9)
  SW s6, 0(s2)
  ADD s1, s6, zero
  JAL zero, bb183
