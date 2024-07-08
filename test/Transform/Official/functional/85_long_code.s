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
  SD s11, 8(sp)
  SD s10, 16(sp)
  SD s0, 24(sp)
  SD s5, 32(sp)
  SD s7, 40(sp)
  SD s1, 48(sp)
  SD s6, 56(sp)
  SD s8, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD s9, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  ADD s4, zero, zero
  JAL zero, bb1
bb1:
  ADD s5, s4, zero
  ADD s6, s3, zero
  ADD s7, s2, zero
  LA s8, n
  LW s9, 0(s8)
  SLT s8, s6, s9
  BNE s8, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s8, zero, 1
  SUBW s9, s1, s8
  SLT s8, s6, s9
  BNE s8, zero, bb4
  JAL zero, bb6
bb3:
  LA s2, n
  LW s3, 0(s2)
  SUBW s2, s3, s1
  ADDIW s1, s2, 1
  ADD s2, s1, zero
  JAL zero, bb10
bb4:
  ADDI s8, zero, 4
  MULW s10, s6, s8
  ADD s8, s0, s10
  LW s10, 0(s8)
  ADDW s8, s5, s10
  ADD s10, s7, zero
  ADD s11, s8, zero
  JAL zero, bb5
bb5:
  ADD s8, s11, zero
  ADD t0, s10, zero
  ADDIW t1, s6, 1
  ADD s2, t0, zero
  ADD s3, t1, zero
  ADD s4, s8, zero
  JAL zero, bb1
bb6:
  XOR s2, s6, s9
  SLTIU s3, s2, 1
  BNE s3, zero, bb7
  JAL zero, bb9
bb7:
  LW s2, 0(s0)
  DIVW s3, s5, s1
  SW s3, 0(s0)
  ADD s3, s2, zero
  ADD s2, s5, zero
  JAL zero, bb8
bb8:
  ADD s4, s2, zero
  ADD s8, s3, zero
  ADD s10, s8, zero
  ADD s11, s4, zero
  JAL zero, bb5
bb9:
  ADDI s4, zero, 4
  MULW s8, s6, s4
  ADD s4, s0, s8
  LW s8, 0(s4)
  ADDW s4, s5, s8
  SUBW s5, s4, s7
  SUBW s4, s6, s1
  ADDIW s7, s4, 1
  ADDI s4, zero, 4
  MULW s8, s7, s4
  ADD s4, s0, s8
  LW s7, 0(s4)
  DIVW s8, s5, s1
  SW s8, 0(s4)
  ADD s3, s7, zero
  ADD s2, s5, zero
  JAL zero, bb8
bb10:
  ADD s1, s2, zero
  LA s3, n
  LW s4, 0(s3)
  SLT s3, s1, s4
  BNE s3, zero, bb11
  JAL zero, bb12
bb11:
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADD s3, s0, s4
  SW zero, 0(s3)
  ADDIW s3, s1, 1
  ADD s2, s3, zero
  JAL zero, bb10
bb12:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s11, 8(sp)
  LD s10, 16(sp)
  LD s0, 24(sp)
  LD s5, 32(sp)
  LD s7, 40(sp)
  LD s1, 48(sp)
  LD s6, 56(sp)
  LD s8, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s9, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
arrCopy:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, zero, zero
  JAL zero, bb14
bb14:
  ADD s3, s2, zero
  LA s4, n
  LW s5, 0(s4)
  SLT s4, s3, s5
  BNE s4, zero, bb15
  JAL zero, bb16
bb15:
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s4, s1, s5
  ADD s6, s0, s5
  LW s5, 0(s6)
  SW s5, 0(s4)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb14
bb16:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
getMost:
  LUI t0, 1048575
  ADDIW t0, t0, -16
  ADD sp, sp, t0
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  SD s11, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -88
  ADD t6, t6, sp
  SD ra, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -80
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -72
  ADD t6, t6, sp
  SD s5, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -64
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -56
  ADD t6, t6, sp
  SD s10, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -48
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -40
  ADD t6, t6, sp
  SD s6, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -32
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -8
  ADD t6, t6, sp
  SD s8, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  SD s9, 0(t5)
  ADD s0, a0, zero
  ADD s1, zero, zero
  JAL zero, bb18
bb18:
  ADD s2, s1, zero
  SLTI s3, s2, 1000
  BNE s3, zero, bb19
  JAL zero, bb20
bb19:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADDI t6, sp, 0
  ADD s3, t6, s4
  SW zero, 0(s3)
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb18
bb20:
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  JAL zero, bb21
bb21:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s6, s1, zero
  LA s7, n
  LW s8, 0(s7)
  SLT s7, s4, s8
  BNE s7, zero, bb22
  JAL zero, bb23
bb22:
  ADDI s7, zero, 4
  MULW s8, s4, s7
  ADD s7, s0, s8
  LW s8, 0(s7)
  ADDI s7, zero, 4
  MULW s9, s8, s7
  ADDI t5, sp, 0
  ADD s7, t5, s9
  LW s9, 0(s7)
  ADDIW s10, s9, 1
  SW s10, 0(s7)
  SLT s9, s5, s10
  BNE s9, zero, bb24
  JAL zero, bb26
bb23:
  ADD a0, s6, zero
  LUI t6, 1
  ADDIW t6, t6, -96
  ADD t6, t6, sp
  LD s11, 0(t6)
  LUI ra, 1
  ADDIW ra, ra, -88
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 1
  ADDIW t5, t5, -80
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -72
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -64
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -56
  ADD t6, t6, sp
  LD s10, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -48
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -40
  ADD t6, t6, sp
  LD s6, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -32
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -8
  ADD t6, t6, sp
  LD s8, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, 16
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb24:
  LW s9, 0(s7)
  ADD s7, s8, zero
  ADD s8, s9, zero
  JAL zero, bb25
bb25:
  ADD s9, s8, zero
  ADD s10, s7, zero
  ADDIW s11, s4, 1
  ADD s1, s10, zero
  ADD s2, s9, zero
  ADD s3, s11, zero
  JAL zero, bb21
bb26:
  ADD s7, s6, zero
  ADD s8, s5, zero
  JAL zero, bb25
getMid:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  LA s1, n
  LW s2, 0(s1)
  ADDI s1, zero, 2
  REMW s3, s2, s1
  XOR s1, s3, zero
  SLTIU s2, s1, 1
  BNE s2, zero, bb28
  JAL zero, bb29
bb28:
  LA s1, n
  LW s2, 0(s1)
  ADDI s1, zero, 2
  DIVW s3, s2, s1
  ADDI s1, zero, 4
  MULW s2, s3, s1
  ADD s1, s0, s2
  LW s2, 0(s1)
  ADDI s1, zero, 1
  SUBW s4, s3, s1
  ADDI s1, zero, 4
  MULW s3, s4, s1
  ADD s1, s0, s3
  LW s3, 0(s1)
  ADDW s1, s2, s3
  ADDI s2, zero, 2
  DIVW s3, s1, s2
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb29:
  LA s1, n
  LW s2, 0(s1)
  ADDI s1, zero, 2
  DIVW s3, s2, s1
  ADDI s1, zero, 4
  MULW s2, s3, s1
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
insertsort:
  ADDI sp, sp, -96
  SD s9, 0(sp)
  SD s8, 8(sp)
  SD ra, 16(sp)
  SD s4, 24(sp)
  SD s3, 32(sp)
  SD s2, 40(sp)
  SD s6, 48(sp)
  SD s1, 56(sp)
  SD s7, 64(sp)
  SD s5, 72(sp)
  SD s0, 80(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 1
  JAL zero, bb31
bb31:
  ADD s2, s1, zero
  LA s3, n
  LW s4, 0(s3)
  SLT s3, s2, s4
  BNE s3, zero, bb32
  JAL zero, bb33
bb32:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s3, s0, s4
  LW s4, 0(s3)
  ADDI s3, zero, 1
  SUBW s5, s2, s3
  ADD s3, s5, zero
  JAL zero, bb34
bb33:
  ADD a0, zero, zero
  LD s9, 0(sp)
  LD s8, 8(sp)
  LD ra, 16(sp)
  LD s4, 24(sp)
  LD s3, 32(sp)
  LD s2, 40(sp)
  LD s6, 48(sp)
  LD s1, 56(sp)
  LD s7, 64(sp)
  LD s5, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb34:
  ADD s5, s3, zero
  ADDI s6, zero, -1
  SLT s7, s6, s5
  BNE s7, zero, bb37
  JAL zero, bb38
bb35:
  ADDIW s6, s5, 1
  ADDI s8, zero, 4
  MULW s9, s6, s8
  ADD s6, s0, s9
  ADDI s8, zero, 4
  MULW s9, s5, s8
  ADD s8, s0, s9
  LW s9, 0(s8)
  SW s9, 0(s6)
  ADDI s6, zero, 1
  SUBW s8, s5, s6
  ADD s3, s8, zero
  JAL zero, bb34
bb36:
  ADDIW s3, s5, 1
  ADDI s6, zero, 4
  MULW s8, s3, s6
  ADD s3, s0, s8
  SW s4, 0(s3)
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb31
bb37:
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADD s6, s0, s7
  LW s7, 0(s6)
  SLT s6, s4, s7
  ADD s7, s6, zero
  JAL zero, bb39
bb38:
  ADD s7, zero, zero
  JAL zero, bb39
bb39:
  ADD s6, s7, zero
  BNE s6, zero, bb35
  JAL zero, bb36
revert:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s8, 8(sp)
  SD s4, 16(sp)
  SD s3, 24(sp)
  SD s2, 32(sp)
  SD s6, 40(sp)
  SD s1, 48(sp)
  SD s7, 56(sp)
  SD s5, 64(sp)
  SD s0, 72(sp)
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  JAL zero, bb41
bb41:
  ADD s3, s2, zero
  ADD s4, s1, zero
  SLT s5, s3, s4
  BNE s5, zero, bb42
  JAL zero, bb43
bb42:
  ADDI s5, zero, 4
  MULW s6, s3, s5
  ADD s5, s0, s6
  LW s6, 0(s5)
  ADDI s7, zero, 4
  MULW s8, s4, s7
  ADD s7, s0, s8
  LW s8, 0(s7)
  SW s8, 0(s5)
  SW s6, 0(s7)
  ADDIW s5, s3, 1
  ADDI s3, zero, 1
  SUBW s6, s4, s3
  ADD s1, s6, zero
  ADD s2, s5, zero
  JAL zero, bb41
bb43:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s8, 8(sp)
  LD s4, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD s6, 40(sp)
  LD s1, 48(sp)
  LD s7, 56(sp)
  LD s5, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
QuickSort:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD s9, 16(sp)
  SD s8, 24(sp)
  SD s0, 32(sp)
  SD s5, 40(sp)
  SD s7, 48(sp)
  SD s1, 56(sp)
  SD s6, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD ra, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  SLT s3, s1, s2
  BNE s3, zero, bb45
  JAL zero, bb46
bb45:
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADD s3, s0, s4
  LW s4, 0(s3)
  ADD s3, s2, zero
  ADD s5, s1, zero
  JAL zero, bb47
bb46:
  ADD a0, zero, zero
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  LD s8, 24(sp)
  LD s0, 32(sp)
  LD s5, 40(sp)
  LD s7, 48(sp)
  LD s1, 56(sp)
  LD s6, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD ra, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb47:
  ADD s6, s5, zero
  ADD s7, s3, zero
  SLT s8, s6, s7
  BNE s8, zero, bb48
  JAL zero, bb49
bb48:
  ADD s8, s7, zero
  JAL zero, bb50
bb49:
  ADDI s3, zero, 4
  MULW s5, s6, s3
  ADD s3, s0, s5
  SW s4, 0(s3)
  ADDI s3, zero, 1
  SUBW s4, s6, s3
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s4, zero
  CALL QuickSort
  ADD s1, a0, zero
  ADDIW s1, s6, 1
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL QuickSort
  ADD s0, a0, zero
  JAL zero, bb46
bb50:
  ADD s7, s8, zero
  SLT s9, s6, s7
  BNE s9, zero, bb53
  JAL zero, bb54
bb51:
  ADDI s10, zero, 1
  SUBW t0, s7, s10
  ADD s8, t0, zero
  JAL zero, bb50
bb52:
  BNE s9, zero, bb56
  JAL zero, bb66
bb53:
  ADDI s10, zero, 4
  MULW s11, s7, s10
  ADD s10, s0, s11
  LW s11, 0(s10)
  ADDI s10, zero, 1
  SUBW t0, s4, s10
  SLT s10, t0, s11
  ADD s11, s10, zero
  JAL zero, bb55
bb54:
  ADD s11, zero, zero
  JAL zero, bb55
bb55:
  ADD s10, s11, zero
  BNE s10, zero, bb51
  JAL zero, bb52
bb56:
  ADDI s8, zero, 4
  MULW s10, s6, s8
  ADD s8, s0, s10
  ADDI s10, zero, 4
  MULW t0, s7, s10
  ADD s10, s0, t0
  LW t0, 0(s10)
  SW t0, 0(s8)
  ADDIW s8, s6, 1
  ADD s10, s8, zero
  JAL zero, bb57
bb57:
  ADD s8, s10, zero
  ADD t0, s8, zero
  JAL zero, bb58
bb58:
  ADD s8, t0, zero
  SLT t1, s8, s7
  BNE t1, zero, bb61
  JAL zero, bb62
bb59:
  ADDIW t2, s8, 1
  ADD t0, t2, zero
  JAL zero, bb58
bb60:
  BNE t1, zero, bb64
  JAL zero, bb67
bb61:
  ADDI t2, zero, 4
  MULW a3, s8, t2
  ADD t2, s0, a3
  LW a3, 0(t2)
  SLT t2, a3, s4
  ADD a3, t2, zero
  JAL zero, bb63
bb62:
  ADD a3, zero, zero
  JAL zero, bb63
bb63:
  ADD t2, a3, zero
  BNE t2, zero, bb59
  JAL zero, bb60
bb64:
  ADDI t0, zero, 4
  MULW t2, s7, t0
  ADD t0, s0, t2
  ADDI t2, zero, 4
  MULW a4, s8, t2
  ADD t2, s0, a4
  LW a4, 0(t2)
  SW a4, 0(t0)
  ADDI t0, zero, 1
  SUBW t2, s7, t0
  ADD t0, t2, zero
  JAL zero, bb65
bb65:
  ADD t2, t0, zero
  ADD s3, t2, zero
  ADD s5, s8, zero
  JAL zero, bb47
bb66:
  ADD s10, s6, zero
  JAL zero, bb57
bb67:
  ADD t0, s7, zero
  JAL zero, bb65
main:
  ADDI sp, sp, -304
  SD ra, 256(sp)
  SD s3, 264(sp)
  SD s2, 272(sp)
  SD s1, 280(sp)
  SD s0, 288(sp)
  LA s0, n
  ADDI s1, zero, 32
  SW s1, 0(s0)
  ADDI s0, zero, 7
  SW s0, 128(sp)
  ADDI s0, sp, 132
  ADDI s1, zero, 23
  SW s1, 0(s0)
  ADDI s0, sp, 136
  ADDI s1, zero, 89
  SW s1, 0(s0)
  ADDI s0, sp, 140
  ADDI s1, zero, 26
  SW s1, 0(s0)
  ADDI s0, sp, 144
  ADDI s1, zero, 282
  SW s1, 0(s0)
  ADDI s0, sp, 148
  ADDI s1, zero, 254
  SW s1, 0(s0)
  ADDI s0, sp, 152
  ADDI s1, zero, 27
  SW s1, 0(s0)
  ADDI s0, sp, 156
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 160
  ADDI s1, zero, 83
  SW s1, 0(s0)
  ADDI s0, sp, 164
  ADDI s1, zero, 273
  SW s1, 0(s0)
  ADDI s0, sp, 168
  ADDI s1, zero, 574
  SW s1, 0(s0)
  ADDI s0, sp, 172
  ADDI s1, zero, 905
  SW s1, 0(s0)
  ADDI s0, sp, 176
  ADDI s1, zero, 354
  SW s1, 0(s0)
  ADDI s0, sp, 180
  ADDI s1, zero, 657
  SW s1, 0(s0)
  ADDI s0, sp, 184
  ADDI s1, zero, 935
  SW s1, 0(s0)
  ADDI s0, sp, 188
  ADDI s1, zero, 264
  SW s1, 0(s0)
  ADDI s0, sp, 192
  ADDI s1, zero, 639
  SW s1, 0(s0)
  ADDI s0, sp, 196
  ADDI s1, zero, 459
  SW s1, 0(s0)
  ADDI s0, sp, 200
  ADDI s1, zero, 29
  SW s1, 0(s0)
  ADDI s0, sp, 204
  ADDI s1, zero, 68
  SW s1, 0(s0)
  ADDI s0, sp, 208
  ADDI s1, zero, 929
  SW s1, 0(s0)
  ADDI s0, sp, 212
  ADDI s1, zero, 756
  SW s1, 0(s0)
  ADDI s0, sp, 216
  ADDI s1, zero, 452
  SW s1, 0(s0)
  ADDI s0, sp, 220
  ADDI s1, zero, 279
  SW s1, 0(s0)
  ADDI s0, sp, 224
  ADDI s1, zero, 58
  SW s1, 0(s0)
  ADDI s0, sp, 228
  ADDI s1, zero, 87
  SW s1, 0(s0)
  ADDI s0, sp, 232
  ADDI s1, zero, 96
  SW s1, 0(s0)
  ADDI s0, sp, 236
  ADDI s1, zero, 36
  SW s1, 0(s0)
  ADDI s0, sp, 240
  ADDI s1, zero, 39
  SW s1, 0(s0)
  ADDI s0, sp, 244
  ADDI s1, zero, 28
  SW s1, 0(s0)
  ADDI s0, sp, 248
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 252
  ADDI s1, zero, 290
  SW s1, 0(s0)
  ADDI a0, sp, 128
  ADD a0, a0, zero
  ADDI a1, sp, 0
  ADD a1, a1, zero
  CALL arrCopy
  ADD s0, a0, zero
  ADDI a0, sp, 0
  ADD a0, a0, zero
  CALL revert
  ADD s0, a0, zero
  ADD s0, zero, zero
  JAL zero, bb69
bb69:
  ADD s1, s0, zero
  SLTI s2, s1, 32
  BNE s2, zero, bb70
  JAL zero, bb71
bb70:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 0
  ADD s2, t5, s3
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb69
bb71:
  ADDI a0, sp, 0
  ADD a0, a0, zero
  CALL bubblesort
  ADD s0, a0, zero
  ADD s0, zero, zero
  JAL zero, bb72
bb72:
  ADD s1, s0, zero
  SLTI s2, s1, 32
  BNE s2, zero, bb73
  JAL zero, bb74
bb73:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t6, sp, 0
  ADD s2, t6, s3
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb72
bb74:
  ADDI a0, sp, 0
  ADD a0, a0, zero
  CALL getMid
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL putint
  ADDI a0, sp, 0
  ADD a0, a0, zero
  CALL getMost
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL putint
  ADDI a0, sp, 128
  ADD a0, a0, zero
  ADDI a1, sp, 0
  ADD a1, a1, zero
  CALL arrCopy
  ADD s0, a0, zero
  ADDI a0, sp, 0
  ADD a0, a0, zero
  CALL bubblesort
  ADD s0, a0, zero
  ADD s0, zero, zero
  JAL zero, bb75
bb75:
  ADD s1, s0, zero
  SLTI s2, s1, 32
  BNE s2, zero, bb76
  JAL zero, bb77
bb76:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 0
  ADD s2, t5, s3
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb75
bb77:
  ADDI a0, sp, 128
  ADD a0, a0, zero
  ADDI a1, sp, 0
  ADD a1, a1, zero
  CALL arrCopy
  ADD s0, a0, zero
  ADDI a0, sp, 0
  ADD a0, a0, zero
  CALL insertsort
  ADD s0, a0, zero
  ADD s0, zero, zero
  JAL zero, bb78
bb78:
  ADD s1, s0, zero
  SLTI s2, s1, 32
  BNE s2, zero, bb79
  JAL zero, bb80
bb79:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t6, sp, 0
  ADD s2, t6, s3
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb78
bb80:
  ADDI a0, sp, 128
  ADD a0, a0, zero
  ADDI a1, sp, 0
  ADD a1, a1, zero
  CALL arrCopy
  ADD s0, a0, zero
  ADDI a0, sp, 0
  ADD a0, a0, zero
  ADD a1, zero, zero
  ADDI a2, zero, 31
  CALL QuickSort
  ADD s0, a0, zero
  ADD s0, zero, zero
  JAL zero, bb81
bb81:
  ADD s1, s0, zero
  SLTI s2, s1, 32
  BNE s2, zero, bb82
  JAL zero, bb83
bb82:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 0
  ADD s2, t5, s3
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb81
bb83:
  ADDI a0, sp, 128
  ADD a0, a0, zero
  ADDI a1, sp, 0
  ADD a1, a1, zero
  CALL arrCopy
  ADD s0, a0, zero
  ADDI a0, sp, 0
  ADD a0, a0, zero
  ADDI a1, zero, 4
  CALL calSum
  ADD s0, a0, zero
  ADD s0, zero, zero
  JAL zero, bb84
bb84:
  ADD s1, s0, zero
  SLTI s2, s1, 32
  BNE s2, zero, bb85
  JAL zero, bb86
bb85:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t6, sp, 0
  ADD s2, t6, s3
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb84
bb86:
  ADDI a0, sp, 128
  ADD a0, a0, zero
  ADDI a1, sp, 0
  ADD a1, a1, zero
  CALL arrCopy
  ADD s0, a0, zero
  ADDI a0, sp, 0
  ADD a0, a0, zero
  ADDI a1, zero, 3
  CALL avgPooling
  ADD s0, a0, zero
  ADD s0, zero, zero
  JAL zero, bb87
bb87:
  ADD s1, s0, zero
  SLTI s2, s1, 32
  BNE s2, zero, bb88
  JAL zero, bb89
bb88:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 0
  ADD s2, t5, s3
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb87
bb89:
  ADD a0, zero, zero
  LD ra, 256(sp)
  LD s3, 264(sp)
  LD s2, 272(sp)
  LD s1, 280(sp)
  LD s0, 288(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
calSum:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s7, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s8, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s9, 80(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  JAL zero, bb91
bb91:
  ADD s4, s3, zero
  ADD s5, s2, zero
  LA s6, n
  LW s7, 0(s6)
  SLT s6, s5, s7
  BNE s6, zero, bb92
  JAL zero, bb93
bb92:
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADD s6, s0, s7
  LW s7, 0(s6)
  ADDW s8, s4, s7
  REMW s4, s5, s1
  ADDI s7, zero, 1
  SUBW s9, s1, s7
  XOR s7, s4, s9
  SLTU s4, zero, s7
  BNE s4, zero, bb94
  JAL zero, bb96
bb93:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s8, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s9, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb94:
  SW zero, 0(s6)
  ADD s4, s8, zero
  JAL zero, bb95
bb95:
  ADD s7, s4, zero
  ADDIW s9, s5, 1
  ADD s2, s9, zero
  ADD s3, s7, zero
  JAL zero, bb91
bb96:
  SW s8, 0(s6)
  ADD s4, zero, zero
  JAL zero, bb95
bubblesort:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD s0, 16(sp)
  SD s5, 24(sp)
  SD s7, 32(sp)
  SD s1, 40(sp)
  SD s6, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD ra, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  JAL zero, bb98
bb98:
  ADD s3, s2, zero
  ADD s4, s1, zero
  LA s5, n
  LW s6, 0(s5)
  ADDI s5, zero, 1
  SUBW s7, s6, s5
  SLT s5, s3, s7
  BNE s5, zero, bb99
  JAL zero, bb100
bb99:
  ADD s5, s4, zero
  ADD s4, zero, zero
  JAL zero, bb101
bb100:
  ADD a0, zero, zero
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s0, 16(sp)
  LD s5, 24(sp)
  LD s7, 32(sp)
  LD s1, 40(sp)
  LD s6, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb101:
  ADD s6, s4, zero
  ADD s7, s5, zero
  LA s8, n
  LW s9, 0(s8)
  SUBW s8, s9, s3
  ADDI s9, zero, 1
  SUBW s10, s8, s9
  SLT s8, s6, s10
  BNE s8, zero, bb102
  JAL zero, bb103
bb102:
  ADDI s8, zero, 4
  MULW s9, s6, s8
  ADD s8, s0, s9
  LW s9, 0(s8)
  ADDIW s10, s6, 1
  ADDI s6, zero, 4
  MULW s11, s10, s6
  ADD s6, s0, s11
  LW s11, 0(s6)
  SLT t0, s11, s9
  BNE t0, zero, bb104
  JAL zero, bb106
bb103:
  ADDIW s4, s3, 1
  ADD s1, s7, zero
  ADD s2, s4, zero
  JAL zero, bb98
bb104:
  LW s9, 0(s6)
  LW s11, 0(s8)
  SW s11, 0(s6)
  SW s9, 0(s8)
  ADD s6, s9, zero
  JAL zero, bb105
bb105:
  ADD s8, s6, zero
  ADD s5, s8, zero
  ADD s4, s10, zero
  JAL zero, bb101
bb106:
  ADD s6, s7, zero
  JAL zero, bb105
