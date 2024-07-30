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
  LA s1, n
  LW s1, 0(s1)
  ADDI s2, zero, 0
  BLT s2, s1, bb7
  # implict jump to bb1
bb1:
  # implict jump to bb2
bb2:
  SUBW s1, s1, a1
  ADDIW s1, s1, 1
  LA s7, n
  LW s7, 0(s7)
  BLT s1, s7, bb4
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
  ADD s7, s1, zero
  SLLIW s8, s7, 2
  ADD s8, s0, s8
  SW zero, 0(s8)
  ADDIW s7, s7, 1
  LA s8, n
  LW s8, 0(s8)
  BLT s7, s8, bb6
  JAL zero, bb3
bb6:
  ADD s1, s7, zero
  JAL zero, bb5
bb7:
  ADDI s2, zero, 1
  SUBW s2, a1, s2
  ADD s3, zero, zero
  ADD s4, zero, zero
  ADD s5, zero, zero
  # implict jump to bb8
bb8:
  ADD s6, s5, zero
  ADD s7, s4, zero
  ADD s8, s3, zero
  BLT s7, s2, bb16
  # implict jump to bb9
bb9:
  XOR s9, s7, s2
  SLTIU s9, s9, 1
  BNE s9, zero, bb15
  # implict jump to bb10
bb10:
  SLLIW s9, s7, 2
  ADD s9, s0, s9
  LW s9, 0(s9)
  ADDW s9, s8, s9
  SUBW s9, s9, s6
  SUBW s10, s7, a1
  ADDIW s10, s10, 1
  SLLIW s10, s10, 2
  ADD s10, s0, s10
  LW s11, 0(s10)
  DIVW t0, s9, a1
  SW t0, 0(s10)
  ADD s10, s11, zero
  # implict jump to bb11
bb11:
  # implict jump to bb12
bb12:
  ADDIW s6, s7, 1
  LA s7, n
  LW s7, 0(s7)
  BLT s6, s7, bb14
  # implict jump to bb13
bb13:
  ADD s1, s7, zero
  JAL zero, bb2
bb14:
  ADD s3, s9, zero
  ADD s4, s6, zero
  ADD s5, s10, zero
  JAL zero, bb8
bb15:
  LW s11, 0(s0)
  DIVW t0, s8, a1
  SW t0, 0(s0)
  ADD s10, s11, zero
  ADD s9, s8, zero
  JAL zero, bb11
bb16:
  SLLIW s11, s7, 2
  ADD s11, s0, s11
  LW s11, 0(s11)
  ADDW s8, s8, s11
  ADD s10, s6, zero
  ADD s9, s8, zero
  JAL zero, bb12
arrCopy:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  ADD s0, a0, zero
  LA s1, n
  LW s1, 0(s1)
  BLT zero, s1, bb19
  # implict jump to bb18
bb18:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb19:
  ADD s1, zero, zero
  # implict jump to bb20
bb20:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  ADD s4, a1, s3
  ADD s3, s0, s3
  LW s3, 0(s3)
  SW s3, 0(s4)
  ADDIW s2, s2, 1
  LA s3, n
  LW s3, 0(s3)
  BLT s2, s3, bb21
  JAL zero, bb18
bb21:
  ADD s1, s2, zero
  JAL zero, bb20
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
  # implict jump to bb23
bb23:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  ADDI t5, sp, 0
  ADD s3, t5, s3
  SW zero, 0(s3)
  ADDIW s2, s2, 1
  SLTI s3, s2, 1000
  BNE s3, zero, bb34
  # implict jump to bb24
bb24:
  LA s3, n
  LW s3, 0(s3)
  BLT zero, s3, bb27
  # implict jump to bb25
bb25:
  ADD s3, zero, zero
  # implict jump to bb26
bb26:
  ADD a0, s3, zero
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
bb27:
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADD s6, zero, zero
  # implict jump to bb28
bb28:
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADD s9, s4, zero
  SLLIW s10, s9, 2
  ADD s10, s0, s10
  LW s10, 0(s10)
  SLLIW s11, s10, 2
  ADDI t0, sp, 0
  ADD s11, t0, s11
  LW t0, 0(s11)
  ADDIW t0, t0, 1
  SW t0, 0(s11)
  BLT s8, t0, bb33
  # implict jump to bb29
bb29:
  # implict jump to bb30
bb30:
  ADDIW s9, s9, 1
  LA s10, n
  LW s10, 0(s10)
  BLT s9, s10, bb32
  # implict jump to bb31
bb31:
  ADD s3, s7, zero
  JAL zero, bb26
bb32:
  ADD s4, s9, zero
  ADD s5, s8, zero
  ADD s6, s7, zero
  JAL zero, bb28
bb33:
  ADD s7, s10, zero
  ADD s8, t0, zero
  JAL zero, bb30
bb34:
  ADD s1, s2, zero
  JAL zero, bb23
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
  BNE s2, zero, bb37
  # implict jump to bb36
bb36:
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
bb37:
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
  LA s1, n
  LW s1, 0(s1)
  ADDI s2, zero, 1
  BLT s2, s1, bb40
  # implict jump to bb39
bb39:
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
bb40:
  ADDI s1, zero, 1
  # implict jump to bb41
bb41:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  ADD s3, s0, s3
  LW s3, 0(s3)
  ADDI s4, zero, 1
  SUBW s4, s2, s4
  # implict jump to bb42
bb42:
  ADD s5, s4, zero
  ADDI s6, zero, -1
  BLT s6, s5, bb48
  # implict jump to bb43
bb43:
  ADD s6, zero, zero
  # implict jump to bb44
bb44:
  BNE s6, zero, bb47
  # implict jump to bb45
bb45:
  ADDIW s6, s5, 1
  SLLIW s6, s6, 2
  ADD s6, s0, s6
  SW s3, 0(s6)
  ADDIW s6, s2, 1
  LA s7, n
  LW s7, 0(s7)
  BLT s6, s7, bb46
  JAL zero, bb39
bb46:
  ADD s1, s6, zero
  JAL zero, bb41
bb47:
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
  JAL zero, bb42
bb48:
  SLLIW s7, s5, 2
  ADD s7, s0, s7
  LW s7, 0(s7)
  SLT s7, s3, s7
  ADD s6, s7, zero
  JAL zero, bb44
revert:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  ADD s1, a0, zero
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
  ADDI sp, sp, 64
  JALR zero, 0(ra)
QuickSort:
  ADDI sp, sp, -112
  SD ra, 8(sp)
  SD s0, 16(sp)
  SD s4, 24(sp)
  SD s9, 32(sp)
  SD s10, 40(sp)
  SD s11, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s5, 80(sp)
  SD s6, 88(sp)
  SD s7, 96(sp)
  SD s8, 104(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  BLT s1, s2, bb53
  # implict jump to bb52
bb52:
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s4, 24(sp)
  LD s9, 32(sp)
  LD s10, 40(sp)
  LD s11, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s5, 80(sp)
  LD s6, 88(sp)
  LD s7, 96(sp)
  LD s8, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb53:
  SLLIW s3, s1, 2
  ADD s3, s0, s3
  LW s3, 0(s3)
  BLT s1, s2, bb56
  # implict jump to bb54
bb54:
  ADD s4, s1, zero
  # implict jump to bb55
bb55:
  SLLIW t1, s4, 2
  ADD t1, s0, t1
  SW s3, 0(t1)
  ADDI t1, zero, 1
  SUBW t1, s4, t1
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, t1, zero
  CALL QuickSort
  ADDIW s4, s4, 1
  ADD a0, s0, zero
  ADD a1, s4, zero
  ADD a2, s2, zero
  CALL QuickSort
  JAL zero, bb52
bb56:
  ADD s5, s1, zero
  ADD s6, s2, zero
  # implict jump to bb57
bb57:
  ADD s7, s6, zero
  ADD s8, s5, zero
  # implict jump to bb58
bb58:
  ADD s9, s7, zero
  BLT s8, s9, bb77
  # implict jump to bb59
bb59:
  ADD s10, zero, zero
  # implict jump to bb60
bb60:
  BNE s10, zero, bb76
  # implict jump to bb61
bb61:
  BLT s8, s9, bb75
  # implict jump to bb62
bb62:
  ADD s10, s8, zero
  # implict jump to bb63
bb63:
  # implict jump to bb64
bb64:
  ADD s11, s10, zero
  BLT s11, s9, bb74
  # implict jump to bb65
bb65:
  ADD t0, zero, zero
  # implict jump to bb66
bb66:
  BNE t0, zero, bb73
  # implict jump to bb67
bb67:
  BLT s11, s9, bb72
  # implict jump to bb68
bb68:
  ADD t0, s9, zero
  # implict jump to bb69
bb69:
  ADD t4, t0, zero
  SW t4, 0(sp)
  LW t4, 0(sp)
  BLT s11, t4, bb71
  # implict jump to bb70
bb70:
  ADD s4, s11, zero
  JAL zero, bb55
bb71:
  ADD s5, s11, zero
  LW t4, 0(sp)
  ADD s6, t4, zero
  JAL zero, bb57
bb72:
  SLLIW t1, s9, 2
  ADD t1, s0, t1
  SLLIW t2, s11, 2
  ADD t2, s0, t2
  LW t2, 0(t2)
  SW t2, 0(t1)
  ADDI t1, zero, 1
  SUBW t1, s9, t1
  ADD t0, t1, zero
  JAL zero, bb69
bb73:
  ADDIW s4, s11, 1
  ADD s10, s4, zero
  JAL zero, bb64
bb74:
  SLLIW t1, s11, 2
  ADD t1, s0, t1
  LW t1, 0(t1)
  SLT t1, t1, s3
  ADD t0, t1, zero
  JAL zero, bb66
bb75:
  SLLIW s11, s8, 2
  ADD s11, s0, s11
  SLLIW t0, s9, 2
  ADD t0, s0, t0
  LW t0, 0(t0)
  SW t0, 0(s11)
  ADDIW s11, s8, 1
  ADD s10, s11, zero
  JAL zero, bb63
bb76:
  ADDI s4, zero, 1
  SUBW s4, s9, s4
  ADD s7, s4, zero
  JAL zero, bb58
bb77:
  SLLIW s11, s9, 2
  ADD s11, s0, s11
  LW s11, 0(s11)
  ADDI t0, zero, 1
  SUBW t0, s3, t0
  SLT s11, t0, s11
  ADD s10, s11, zero
  JAL zero, bb60
main:
  LUI t0, 1048575
  ADDIW t0, t0, -528
  ADD sp, sp, t0
  SD ra, 264(sp)
  SD s0, 272(sp)
  SD s1, 280(sp)
  SD s2, 288(sp)
  LUI t5, 1
  ADDIW t5, t5, 328
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 344
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 352
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 488
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 496
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 504
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 512
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 520
  ADD t5, t5, sp
  SD s11, 0(t5)
  LA s4, n
  ADDI s3, zero, 32
  SW s3, 0(s4)
  ADDI s6, zero, 7
  SW s6, 296(sp)
  ADDI s6, zero, 23
  SW s6, 300(sp)
  ADDI s3, zero, 89
  SW s3, 304(sp)
  ADDI s4, zero, 26
  SW s4, 308(sp)
  ADDI s3, zero, 282
  SW s3, 312(sp)
  ADDI s0, zero, 254
  SW s0, 316(sp)
  ADDI s0, zero, 27
  SW s0, 320(sp)
  ADDI s0, zero, 5
  SW s0, 324(sp)
  ADDI s0, zero, 83
  SW s0, 328(sp)
  ADDI s0, zero, 273
  SW s0, 332(sp)
  ADDI s0, zero, 574
  SW s0, 336(sp)
  ADDI s0, zero, 905
  SW s0, 340(sp)
  ADDI s0, zero, 354
  SW s0, 344(sp)
  ADDI s0, zero, 657
  SW s0, 348(sp)
  ADDI s0, zero, 935
  SW s0, 352(sp)
  ADDI s0, zero, 264
  SW s0, 356(sp)
  ADDI s0, zero, 639
  SW s0, 360(sp)
  ADDI s0, zero, 459
  SW s0, 364(sp)
  ADDI s0, zero, 29
  SW s0, 368(sp)
  ADDI s0, zero, 68
  SW s0, 372(sp)
  ADDI s0, zero, 929
  SW s0, 376(sp)
  ADDI s0, zero, 756
  SW s0, 380(sp)
  ADDI s0, zero, 452
  SW s0, 384(sp)
  ADDI s0, zero, 279
  SW s0, 388(sp)
  ADDI s0, zero, 58
  SW s0, 392(sp)
  ADDI s0, zero, 87
  SW s0, 396(sp)
  ADDI s0, zero, 96
  SW s0, 400(sp)
  ADDI s0, zero, 36
  SW s0, 404(sp)
  ADDI s0, zero, 39
  SW s0, 408(sp)
  ADDI s0, zero, 28
  SW s0, 412(sp)
  ADDI s0, zero, 1
  SW s0, 416(sp)
  ADDI s0, zero, 290
  SW s0, 420(sp)
  ADD t4, zero, zero
  SW t4, 184(sp)
  # implict jump to bb79
bb79:
  LW t4, 184(sp)
  ADD s2, t4, zero
  SLLIW s3, s2, 2
  LUI t5, 1
  ADDIW t5, t5, 360
  ADD t5, t5, sp
  ADD s4, t5, s3
  ADDI t4, sp, 296
  ADD s3, t4, s3
  LW s3, 0(s3)
  SW s3, 0(s4)
  ADDIW t4, s2, 1
  SW t4, 188(sp)
  LW t4, 188(sp)
  SLTI s3, t4, 32
  BNE s3, zero, bb202
  # implict jump to bb80
bb80:
  ADD t4, zero, zero
  SW t4, 192(sp)
  # implict jump to bb81
bb81:
  LW t4, 192(sp)
  ADD s4, t4, zero
  SLLIW s5, s4, 2
  LUI a0, 1
  ADDIW a0, a0, 360
  ADD a0, a0, sp
  ADD s5, a0, s5
  LW s5, 0(s5)
  ADD a0, s5, zero
  CALL putint
  ADDIW t4, s4, 1
  SW t4, 196(sp)
  LW t4, 196(sp)
  SLTI s5, t4, 32
  BNE s5, zero, bb201
  # implict jump to bb82
bb82:
  LA s5, n
  LW s5, 0(s5)
  ADDI s6, zero, 1
  SUBW s5, s5, s6
  BLT zero, s5, bb189
  # implict jump to bb83
bb83:
  ADD t4, zero, zero
  SW t4, 232(sp)
  # implict jump to bb84
bb84:
  LW t4, 232(sp)
  ADD s5, t4, zero
  SLLIW s9, s5, 2
  LUI a0, 1
  ADDIW a0, a0, 360
  ADD a0, a0, sp
  ADD s9, a0, s9
  LW s9, 0(s9)
  ADD a0, s9, zero
  CALL putint
  ADDIW t4, s5, 1
  SW t4, 228(sp)
  LW t4, 228(sp)
  SLTI s9, t4, 32
  BNE s9, zero, bb188
  # implict jump to bb85
bb85:
  LA s9, n
  LW s9, 0(s9)
  ADDI s8, zero, 2
  REMW s8, s9, s8
  SLTIU s8, s8, 1
  BNE s8, zero, bb187
  # implict jump to bb86
bb86:
  LA s8, n
  LW s8, 0(s8)
  ADDI s9, zero, 2
  DIVW s8, s8, s9
  SLLIW s8, s8, 2
  LUI t5, 1
  ADDIW t5, t5, 360
  ADD t5, t5, sp
  ADD s8, t5, s8
  LW s8, 0(s8)
  # implict jump to bb87
bb87:
  ADD a0, s8, zero
  CALL putint
  ADD t4, zero, zero
  SW t4, 224(sp)
  # implict jump to bb88
bb88:
  LW t4, 224(sp)
  ADD s8, t4, zero
  SLLIW s9, s8, 2
  ADDI t4, sp, 424
  ADD s9, t4, s9
  SW zero, 0(s9)
  ADDIW t4, s8, 1
  SW t4, 220(sp)
  LW t4, 220(sp)
  SLTI s9, t4, 1000
  BNE s9, zero, bb186
  # implict jump to bb89
bb89:
  LA s9, n
  LW s9, 0(s9)
  BLT zero, s9, bb179
  # implict jump to bb90
bb90:
  ADD s9, zero, zero
  # implict jump to bb91
bb91:
  ADD a0, s9, zero
  CALL putint
  LA s3, n
  LW s3, 0(s3)
  BLT zero, s3, bb175
  # implict jump to bb92
bb92:
  # implict jump to bb93
bb93:
  ADD t4, s3, zero
  SW t4, 40(sp)
  ADDI s9, zero, 1
  LW t3, 40(sp)
  SUBW t4, t3, s9
  SW t4, 44(sp)
  LW t4, 44(sp)
  BLT zero, t4, bb163
  # implict jump to bb94
bb94:
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb95
bb95:
  LW t4, 4(sp)
  ADD s6, t4, zero
  SLLIW s9, s6, 2
  LUI a0, 1
  ADDIW a0, a0, 360
  ADD a0, a0, sp
  ADD s9, a0, s9
  LW s9, 0(s9)
  ADD a0, s9, zero
  CALL putint
  ADDIW t4, s6, 1
  SW t4, 36(sp)
  LW t4, 36(sp)
  SLTI s9, t4, 32
  BNE s9, zero, bb162
  # implict jump to bb96
bb96:
  LA s9, n
  LW s9, 0(s9)
  BLT zero, s9, bb158
  # implict jump to bb97
bb97:
  # implict jump to bb98
bb98:
  ADD t4, s9, zero
  SW t4, 124(sp)
  ADDI s2, zero, 1
  LW t4, 124(sp)
  BLT s2, t4, bb149
  # implict jump to bb99
bb99:
  ADD t4, zero, zero
  SW t4, 104(sp)
  # implict jump to bb100
bb100:
  LW t4, 104(sp)
  ADD s6, t4, zero
  SLLIW s5, s6, 2
  LUI a0, 1
  ADDIW a0, a0, 360
  ADD a0, a0, sp
  ADD s5, a0, s5
  LW s5, 0(s5)
  ADD a0, s5, zero
  CALL putint
  ADDIW t4, s6, 1
  SW t4, 100(sp)
  LW t4, 100(sp)
  SLTI s6, t4, 32
  BNE s6, zero, bb148
  # implict jump to bb101
bb101:
  LA s6, n
  LW s6, 0(s6)
  BLT zero, s6, bb145
  # implict jump to bb102
bb102:
  LUI a0, 1
  ADDIW a0, a0, 360
  ADD a0, a0, sp
  ADD a0, a0, zero
  ADD a1, zero, zero
  ADDI a2, zero, 31
  CALL QuickSort
  ADD t4, zero, zero
  SW t4, 88(sp)
  # implict jump to bb103
bb103:
  LW t4, 88(sp)
  ADD s8, t4, zero
  SLLIW s9, s8, 2
  LUI a0, 1
  ADDIW a0, a0, 360
  ADD a0, a0, sp
  ADD s9, a0, s9
  LW s9, 0(s9)
  ADD a0, s9, zero
  CALL putint
  ADDIW t4, s8, 1
  SW t4, 84(sp)
  LW t4, 84(sp)
  SLTI s9, t4, 32
  BNE s9, zero, bb144
  # implict jump to bb104
bb104:
  LA s9, n
  LW s9, 0(s9)
  BLT zero, s9, bb140
  # implict jump to bb105
bb105:
  # implict jump to bb106
bb106:
  ADD t4, s9, zero
  SW t4, 180(sp)
  LW t4, 180(sp)
  BLT zero, t4, bb134
  # implict jump to bb107
bb107:
  ADD t4, zero, zero
  SW t4, 160(sp)
  # implict jump to bb108
bb108:
  LW t4, 160(sp)
  ADD s6, t4, zero
  SLLIW s7, s6, 2
  LUI a0, 1
  ADDIW a0, a0, 360
  ADD a0, a0, sp
  ADD s7, a0, s7
  LW s7, 0(s7)
  ADD a0, s7, zero
  CALL putint
  ADDIW t4, s6, 1
  SW t4, 156(sp)
  LW t4, 156(sp)
  SLTI s7, t4, 32
  BNE s7, zero, bb133
  # implict jump to bb109
bb109:
  LA s7, n
  LW s7, 0(s7)
  BLT zero, s7, bb129
  # implict jump to bb110
bb110:
  # implict jump to bb111
bb111:
  ADD s1, s7, zero
  BLT zero, s1, bb120
  # implict jump to bb112
bb112:
  ADDIW s3, s1, -2
  BLT s3, s1, bb117
  # implict jump to bb113
bb113:
  ADD s8, zero, zero
  # implict jump to bb114
bb114:
  ADD s10, s8, zero
  SLLIW s2, s10, 2
  LUI a0, 1
  ADDIW a0, a0, 360
  ADD a0, a0, sp
  ADD s2, a0, s2
  LW s2, 0(s2)
  ADD a0, s2, zero
  CALL putint
  ADDIW s2, s10, 1
  SLTI s10, s2, 32
  BNE s10, zero, bb116
  # implict jump to bb115
bb115:
  ADD a0, zero, zero
  LD ra, 264(sp)
  LD s0, 272(sp)
  LD s1, 280(sp)
  LD s2, 288(sp)
  LUI t5, 1
  ADDIW t5, t5, 328
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 336
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 344
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 352
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 488
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 496
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 504
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 512
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 520
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, 528
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb116:
  ADD s8, s2, zero
  JAL zero, bb114
bb117:
  # implict jump to bb118
bb118:
  ADD s6, s3, zero
  SLLIW s8, s6, 2
  LUI t5, 1
  ADDIW t5, t5, 360
  ADD t5, t5, sp
  ADD s8, t5, s8
  SW zero, 0(s8)
  ADDIW s6, s6, 1
  BLT s6, s1, bb119
  JAL zero, bb113
bb119:
  ADD s3, s6, zero
  JAL zero, bb118
bb120:
  ADD s7, zero, zero
  ADD s9, zero, zero
  ADD s11, zero, zero
  # implict jump to bb121
bb121:
  ADD s10, s11, zero
  ADD s0, s9, zero
  ADD s3, s7, zero
  SLTI s5, s0, 2
  BNE s5, zero, bb128
  # implict jump to bb122
bb122:
  XORI s5, s0, 2
  SLTIU s5, s5, 1
  BNE s5, zero, bb127
  # implict jump to bb123
bb123:
  SLLIW s5, s0, 2
  LUI t5, 1
  ADDIW t5, t5, 360
  ADD t5, t5, sp
  ADD s5, t5, s5
  LW s5, 0(s5)
  ADDW s5, s3, s5
  SUBW s5, s5, s10
  ADDIW s4, s0, -2
  SLLIW s4, s4, 2
  LUI t5, 1
  ADDIW t5, t5, 360
  ADD t5, t5, sp
  ADD s4, t5, s4
  LW s6, 0(s4)
  ADDI s8, zero, 3
  DIVW s8, s5, s8
  SW s8, 0(s4)
  ADD s4, s6, zero
  # implict jump to bb124
bb124:
  # implict jump to bb125
bb125:
  ADDIW s0, s0, 1
  BLT s0, s1, bb126
  JAL zero, bb112
bb126:
  ADD s7, s5, zero
  ADD s9, s0, zero
  ADD s11, s4, zero
  JAL zero, bb121
bb127:
  LUI t5, 1
  ADDIW t5, t5, 360
  ADD t5, t5, sp
  LW s6, 0(t5)
  ADDI s8, zero, 3
  DIVW s8, s3, s8
  LUI t5, 1
  ADDIW t5, t5, 360
  ADD t5, t5, sp
  SW s8, 0(t5)
  ADD s4, s6, zero
  ADD s5, s3, zero
  JAL zero, bb124
bb128:
  SLLIW s6, s0, 2
  LUI t5, 1
  ADDIW t5, t5, 360
  ADD t5, t5, sp
  ADD s6, t5, s6
  LW s6, 0(s6)
  ADDW s3, s3, s6
  ADD s4, s10, zero
  ADD s5, s3, zero
  JAL zero, bb125
bb129:
  ADD t4, zero, zero
  SW t4, 152(sp)
  # implict jump to bb130
bb130:
  LW t4, 152(sp)
  ADD s11, t4, zero
  SLLIW s2, s11, 2
  LUI t5, 1
  ADDIW t5, t5, 360
  ADD t5, t5, sp
  ADD s9, t5, s2
  ADDI t4, sp, 296
  ADD s2, t4, s2
  LW s2, 0(s2)
  SW s2, 0(s9)
  ADDIW t4, s11, 1
  SW t4, 148(sp)
  LA s9, n
  LW s9, 0(s9)
  LW t4, 148(sp)
  BLT t4, s9, bb132
  # implict jump to bb131
bb131:
  ADD s7, s9, zero
  JAL zero, bb111
bb132:
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  JAL zero, bb130
bb133:
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  JAL zero, bb108
bb134:
  ADD t4, zero, zero
  SW t4, 168(sp)
  ADD t4, zero, zero
  SW t4, 176(sp)
  # implict jump to bb135
bb135:
  LW t4, 176(sp)
  ADD s4, t4, zero
  LW t4, 168(sp)
  ADD s5, t4, zero
  SLLIW s6, s4, 2
  LUI t5, 1
  ADDIW t5, t5, 360
  ADD t5, t5, sp
  ADD s6, t5, s6
  LW s0, 0(s6)
  ADDW s0, s5, s0
  ADDI s5, zero, 4
  REMW s5, s4, s5
  XORI s5, s5, 3
  BNE s5, zero, bb139
  # implict jump to bb136
bb136:
  SW s0, 0(s6)
  ADD s5, zero, zero
  # implict jump to bb137
bb137:
  ADD t4, s5, zero
  SW t4, 164(sp)
  ADDIW t4, s4, 1
  SW t4, 172(sp)
  LW t4, 172(sp)
  LW t3, 180(sp)
  BLT t4, t3, bb138
  JAL zero, bb107
bb138:
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LW t3, 172(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  JAL zero, bb135
bb139:
  SW zero, 0(s6)
  ADD s5, s0, zero
  JAL zero, bb137
bb140:
  ADD t4, zero, zero
  SW t4, 80(sp)
  # implict jump to bb141
bb141:
  LW t4, 80(sp)
  ADD s10, t4, zero
  SLLIW s2, s10, 2
  LUI t5, 1
  ADDIW t5, t5, 360
  ADD t5, t5, sp
  ADD s3, t5, s2
  ADDI t4, sp, 296
  ADD s2, t4, s2
  LW s2, 0(s2)
  SW s2, 0(s3)
  ADDIW t4, s10, 1
  SW t4, 76(sp)
  LA s3, n
  LW s3, 0(s3)
  LW t4, 76(sp)
  BLT t4, s3, bb143
  # implict jump to bb142
bb142:
  ADD s9, s3, zero
  JAL zero, bb106
bb143:
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  JAL zero, bb141
bb144:
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  JAL zero, bb103
bb145:
  ADD t4, zero, zero
  SW t4, 96(sp)
  # implict jump to bb146
bb146:
  LW t4, 96(sp)
  ADD s0, t4, zero
  SLLIW s7, s0, 2
  LUI t5, 1
  ADDIW t5, t5, 360
  ADD t5, t5, sp
  ADD s8, t5, s7
  ADDI t4, sp, 296
  ADD s7, t4, s7
  LW s7, 0(s7)
  SW s7, 0(s8)
  ADDIW t4, s0, 1
  SW t4, 92(sp)
  LA s7, n
  LW s7, 0(s7)
  LW t4, 92(sp)
  BLT t4, s7, bb147
  JAL zero, bb102
bb147:
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  JAL zero, bb146
bb148:
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  JAL zero, bb100
bb149:
  ADDI t4, zero, 1
  SW t4, 112(sp)
  # implict jump to bb150
bb150:
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t4, 128(sp)
  SLLIW s7, t4, 2
  LUI t4, 1
  ADDIW t4, t4, 360
  ADD t4, t4, sp
  ADD s7, t4, s7
  LW t4, 0(s7)
  SW t4, 132(sp)
  ADDI s11, zero, 1
  LW t4, 128(sp)
  SUBW s11, t4, s11
  ADD t4, s11, zero
  SW t4, 120(sp)
  # implict jump to bb151
bb151:
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  ADDI s3, zero, -1
  LW t4, 116(sp)
  BLT s3, t4, bb157
  # implict jump to bb152
bb152:
  ADD s3, zero, zero
  # implict jump to bb153
bb153:
  BNE s3, zero, bb156
  # implict jump to bb154
bb154:
  LW t4, 116(sp)
  ADDIW s3, t4, 1
  SLLIW s3, s3, 2
  LUI t4, 1
  ADDIW t4, t4, 360
  ADD t4, t4, sp
  ADD s3, t4, s3
  LW t4, 132(sp)
  SW t4, 0(s3)
  LW t3, 128(sp)
  ADDIW t4, t3, 1
  SW t4, 72(sp)
  LW t4, 72(sp)
  LW t3, 124(sp)
  BLT t4, t3, bb155
  JAL zero, bb99
bb155:
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  JAL zero, bb150
bb156:
  LW t4, 116(sp)
  ADDIW s0, t4, 1
  SLLIW s0, s0, 2
  LUI t4, 1
  ADDIW t4, t4, 360
  ADD t4, t4, sp
  ADD s0, t4, s0
  LW t4, 116(sp)
  SLLIW s1, t4, 2
  LUI t4, 1
  ADDIW t4, t4, 360
  ADD t4, t4, sp
  ADD s1, t4, s1
  LW s1, 0(s1)
  SW s1, 0(s0)
  ADDI s0, zero, 1
  LW t4, 116(sp)
  SUBW s0, t4, s0
  ADD t4, s0, zero
  SW t4, 120(sp)
  JAL zero, bb151
bb157:
  LW t4, 116(sp)
  SLLIW s4, t4, 2
  LUI t4, 1
  ADDIW t4, t4, 360
  ADD t4, t4, sp
  ADD s4, t4, s4
  LW s4, 0(s4)
  LW t4, 132(sp)
  SLT s4, t4, s4
  ADD s3, s4, zero
  JAL zero, bb153
bb158:
  ADD t4, zero, zero
  SW t4, 140(sp)
  # implict jump to bb159
bb159:
  LW t4, 140(sp)
  ADD s2, t4, zero
  SLLIW s0, s2, 2
  LUI t5, 1
  ADDIW t5, t5, 360
  ADD t5, t5, sp
  ADD s8, t5, s0
  ADDI t4, sp, 296
  ADD s0, t4, s0
  LW s0, 0(s0)
  SW s0, 0(s8)
  ADDIW t4, s2, 1
  SW t4, 136(sp)
  LA s2, n
  LW s2, 0(s2)
  LW t4, 136(sp)
  BLT t4, s2, bb161
  # implict jump to bb160
bb160:
  ADD s9, s2, zero
  JAL zero, bb98
bb161:
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  JAL zero, bb159
bb162:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  JAL zero, bb95
bb163:
  ADD t4, zero, zero
  SW t4, 12(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb164
bb164:
  LW t4, 20(sp)
  ADD s5, t4, zero
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t4, 40(sp)
  LW t3, 48(sp)
  SUBW s6, t4, t3
  ADDI s11, zero, 1
  SUBW t4, s6, s11
  SW t4, 52(sp)
  LW t4, 52(sp)
  BLT zero, t4, bb168
  # implict jump to bb165
bb165:
  ADD s11, s5, zero
  # implict jump to bb166
bb166:
  ADD t4, s11, zero
  SW t4, 16(sp)
  LW t3, 48(sp)
  ADDIW t4, t3, 1
  SW t4, 8(sp)
  LW t4, 8(sp)
  LW t3, 44(sp)
  BLT t4, t3, bb167
  JAL zero, bb94
bb167:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb164
bb168:
  ADD t4, zero, zero
  SW t4, 28(sp)
  ADD t4, s5, zero
  SW t4, 0(sp)
  # implict jump to bb169
bb169:
  LW t4, 0(sp)
  ADD s4, t4, zero
  LW t4, 28(sp)
  ADD s8, t4, zero
  SLLIW s6, s8, 2
  LUI t5, 1
  ADDIW t5, t5, 360
  ADD t5, t5, sp
  ADD s6, t5, s6
  LW s2, 0(s6)
  ADDIW t4, s8, 1
  SW t4, 24(sp)
  LW t4, 24(sp)
  SLLIW s9, t4, 2
  LUI t5, 1
  ADDIW t5, t5, 360
  ADD t5, t5, sp
  ADD s9, t5, s9
  LW s3, 0(s9)
  BLT s3, s2, bb174
  # implict jump to bb170
bb170:
  ADD s2, s4, zero
  # implict jump to bb171
bb171:
  ADD t4, s2, zero
  SW t4, 32(sp)
  LW t4, 24(sp)
  LW t3, 52(sp)
  BLT t4, t3, bb173
  # implict jump to bb172
bb172:
  LW t4, 32(sp)
  ADD s11, t4, zero
  JAL zero, bb166
bb173:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  JAL zero, bb169
bb174:
  LW s3, 0(s9)
  LW s4, 0(s6)
  SW s4, 0(s9)
  SW s3, 0(s6)
  ADD s2, s3, zero
  JAL zero, bb171
bb175:
  ADD t4, zero, zero
  SW t4, 60(sp)
  # implict jump to bb176
bb176:
  LW t4, 60(sp)
  ADD s9, t4, zero
  SLLIW s10, s9, 2
  LUI t5, 1
  ADDIW t5, t5, 360
  ADD t5, t5, sp
  ADD s8, t5, s10
  ADDI t4, sp, 296
  ADD s10, t4, s10
  LW s10, 0(s10)
  SW s10, 0(s8)
  ADDIW t4, s9, 1
  SW t4, 56(sp)
  LA s9, n
  LW s9, 0(s9)
  LW t4, 56(sp)
  BLT t4, s9, bb178
  # implict jump to bb177
bb177:
  ADD s3, s9, zero
  JAL zero, bb93
bb178:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  JAL zero, bb176
bb179:
  ADD t4, zero, zero
  SW t4, 68(sp)
  ADD t4, zero, zero
  SW t4, 144(sp)
  ADD t4, zero, zero
  SW t4, 216(sp)
  # implict jump to bb180
bb180:
  LW t4, 216(sp)
  ADD s10, t4, zero
  LW t4, 144(sp)
  ADD s6, t4, zero
  LW t4, 68(sp)
  ADD s3, t4, zero
  SLLIW s4, s3, 2
  LUI t5, 1
  ADDIW t5, t5, 360
  ADD t5, t5, sp
  ADD s4, t5, s4
  LW s4, 0(s4)
  SLLIW s5, s4, 2
  ADDI t5, sp, 424
  ADD s5, t5, s5
  LW s0, 0(s5)
  ADDIW s0, s0, 1
  SW s0, 0(s5)
  BLT s6, s0, bb185
  # implict jump to bb181
bb181:
  ADD s5, s10, zero
  # implict jump to bb182
bb182:
  ADD t4, s6, zero
  SW t4, 108(sp)
  ADD t4, s5, zero
  SW t4, 212(sp)
  ADDIW t4, s3, 1
  SW t4, 64(sp)
  LA s3, n
  LW s3, 0(s3)
  LW t4, 64(sp)
  BLT t4, s3, bb184
  # implict jump to bb183
bb183:
  LW t4, 212(sp)
  ADD s9, t4, zero
  JAL zero, bb91
bb184:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LW t3, 212(sp)
  ADD t4, t3, zero
  SW t4, 216(sp)
  JAL zero, bb180
bb185:
  ADD s5, s4, zero
  ADD s6, s0, zero
  JAL zero, bb182
bb186:
  LW t3, 220(sp)
  ADD t4, t3, zero
  SW t4, 224(sp)
  JAL zero, bb88
bb187:
  LA s9, n
  LW s9, 0(s9)
  ADDI s0, zero, 2
  DIVW s0, s9, s0
  SLLIW s9, s0, 2
  LUI t5, 1
  ADDIW t5, t5, 360
  ADD t5, t5, sp
  ADD s9, t5, s9
  LW s9, 0(s9)
  ADDI s11, zero, 1
  SUBW s0, s0, s11
  SLLIW s0, s0, 2
  LUI t5, 1
  ADDIW t5, t5, 360
  ADD t5, t5, sp
  ADD s0, t5, s0
  LW s0, 0(s0)
  ADDW s0, s9, s0
  ADDI s9, zero, 2
  DIVW s0, s0, s9
  ADD s8, s0, zero
  JAL zero, bb87
bb188:
  LW t3, 228(sp)
  ADD t4, t3, zero
  SW t4, 232(sp)
  JAL zero, bb84
bb189:
  LA s5, n
  LW t4, 0(s5)
  SW t4, 204(sp)
  ADD t4, zero, zero
  SW t4, 240(sp)
  ADD t4, zero, zero
  SW t4, 248(sp)
  # implict jump to bb190
bb190:
  LW t4, 248(sp)
  ADD s8, t4, zero
  LW t3, 240(sp)
  ADD t4, t3, zero
  SW t4, 200(sp)
  LW t4, 204(sp)
  LW t3, 200(sp)
  SUBW s10, t4, t3
  ADDI s11, zero, 1
  SUBW s10, s10, s11
  BLT zero, s10, bb194
  # implict jump to bb191
bb191:
  ADD s10, s8, zero
  # implict jump to bb192
bb192:
  ADD t4, s10, zero
  SW t4, 244(sp)
  LW t3, 200(sp)
  ADDIW t4, t3, 1
  SW t4, 236(sp)
  LA s4, n
  LW s4, 0(s4)
  ADDI s5, zero, 1
  SUBW s4, s4, s5
  LW t4, 236(sp)
  BLT t4, s4, bb193
  JAL zero, bb83
bb193:
  LW t3, 236(sp)
  ADD t4, t3, zero
  SW t4, 240(sp)
  LW t3, 244(sp)
  ADD t4, t3, zero
  SW t4, 248(sp)
  JAL zero, bb190
bb194:
  ADD t4, zero, zero
  SW t4, 256(sp)
  ADD t4, s8, zero
  SW t4, 260(sp)
  # implict jump to bb195
bb195:
  LW t4, 260(sp)
  ADD s0, t4, zero
  LW t4, 256(sp)
  ADD s2, t4, zero
  SLLIW s3, s2, 2
  LUI t5, 1
  ADDIW t5, t5, 360
  ADD t5, t5, sp
  ADD s3, t5, s3
  LW s4, 0(s3)
  ADDIW t4, s2, 1
  SW t4, 252(sp)
  LW t4, 252(sp)
  SLLIW s9, t4, 2
  LUI t5, 1
  ADDIW t5, t5, 360
  ADD t5, t5, sp
  ADD s9, t5, s9
  LW s5, 0(s9)
  BLT s5, s4, bb200
  # implict jump to bb196
bb196:
  # implict jump to bb197
bb197:
  ADD t4, s0, zero
  SW t4, 208(sp)
  LA s3, n
  LW s3, 0(s3)
  LW t4, 200(sp)
  SUBW s3, s3, t4
  ADDI s4, zero, 1
  SUBW s3, s3, s4
  LW t4, 252(sp)
  BLT t4, s3, bb199
  # implict jump to bb198
bb198:
  LW t4, 208(sp)
  ADD s10, t4, zero
  JAL zero, bb192
bb199:
  LW t3, 252(sp)
  ADD t4, t3, zero
  SW t4, 256(sp)
  LW t3, 208(sp)
  ADD t4, t3, zero
  SW t4, 260(sp)
  JAL zero, bb195
bb200:
  LW s4, 0(s9)
  LW s5, 0(s3)
  SW s5, 0(s9)
  SW s4, 0(s3)
  ADD s0, s4, zero
  JAL zero, bb197
bb201:
  LW t3, 196(sp)
  ADD t4, t3, zero
  SW t4, 192(sp)
  JAL zero, bb81
bb202:
  LW t3, 188(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  JAL zero, bb79
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
  LA s1, n
  LW s1, 0(s1)
  BLT zero, s1, bb205
  # implict jump to bb204
bb204:
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
bb205:
  ADDI s1, zero, 1
  SUBW s1, a1, s1
  ADD s2, zero, zero
  ADD s3, zero, zero
  # implict jump to bb206
bb206:
  ADD s4, s3, zero
  ADD s5, s2, zero
  SLLIW s6, s4, 2
  ADD s6, s0, s6
  LW s7, 0(s6)
  ADDW s5, s5, s7
  REMW s7, s4, a1
  BNE s7, s1, bb210
  # implict jump to bb207
bb207:
  SW s5, 0(s6)
  ADD s7, zero, zero
  # implict jump to bb208
bb208:
  ADDIW s4, s4, 1
  LA s5, n
  LW s5, 0(s5)
  BLT s4, s5, bb209
  JAL zero, bb204
bb209:
  ADD s2, s7, zero
  ADD s3, s4, zero
  JAL zero, bb206
bb210:
  SW zero, 0(s6)
  ADD s7, s5, zero
  JAL zero, bb208
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
  ADD s0, a0, zero
  LA s1, n
  LW s1, 0(s1)
  ADDI s2, zero, 1
  SUBW s1, s1, s2
  BLT zero, s1, bb213
  # implict jump to bb212
bb212:
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
bb213:
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb214
bb214:
  ADD s3, s2, zero
  ADD s4, s1, zero
  LA s5, n
  LW s5, 0(s5)
  SUBW s5, s5, s4
  ADDI s6, zero, 1
  SUBW s5, s5, s6
  BLT zero, s5, bb218
  # implict jump to bb215
bb215:
  ADD s5, s3, zero
  # implict jump to bb216
bb216:
  ADDIW s9, s4, 1
  LA s10, n
  LW s10, 0(s10)
  ADDI s11, zero, 1
  SUBW s10, s10, s11
  BLT s9, s10, bb217
  JAL zero, bb212
bb217:
  ADD s1, s9, zero
  ADD s2, s5, zero
  JAL zero, bb214
bb218:
  ADD s6, zero, zero
  # implict jump to bb219
bb219:
  ADD s7, s3, zero
  ADD s8, s6, zero
  SLLIW s9, s8, 2
  ADD s9, s0, s9
  LW s10, 0(s9)
  ADDIW s8, s8, 1
  SLLIW s11, s8, 2
  ADD s11, s0, s11
  LW t0, 0(s11)
  BLT t0, s10, bb224
  # implict jump to bb220
bb220:
  # implict jump to bb221
bb221:
  LA s9, n
  LW s9, 0(s9)
  SUBW s9, s9, s4
  ADDI s10, zero, 1
  SUBW s9, s9, s10
  BLT s8, s9, bb223
  # implict jump to bb222
bb222:
  ADD s5, s7, zero
  JAL zero, bb216
bb223:
  ADD s6, s8, zero
  ADD s3, s7, zero
  JAL zero, bb219
bb224:
  LW s10, 0(s11)
  LW t0, 0(s9)
  SW t0, 0(s11)
  SW s10, 0(s9)
  ADD s7, s10, zero
  JAL zero, bb221
