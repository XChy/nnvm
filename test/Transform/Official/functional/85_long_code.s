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
  LUI t0, 1048575
  ADDIW t0, t0, -272
  ADD sp, sp, t0
  LUI t5, 1
  ADDIW t5, t5, 168
  ADD t5, t5, sp
  SD s11, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, 176
  ADD t6, t6, sp
  SD s10, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, 192
  ADD t6, t6, sp
  SD s5, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, 200
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, 208
  ADD t6, t6, sp
  SD s6, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, 216
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, 224
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, 232
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, 240
  ADD t6, t6, sp
  SD ra, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, 248
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, 256
  ADD t6, t6, sp
  SD s8, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, 264
  ADD t5, t5, sp
  SD s9, 0(t5)
  LA s0, n
  ADDI s1, zero, 32
  SW s1, 0(s0)
  ADDI s0, zero, 7
  LUI t6, 1
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  SW s0, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 4
  ADDI s1, zero, 23
  SW s1, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  ADDI s0, t6, 8
  ADDI s1, zero, 89
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 12
  ADDI s1, zero, 26
  SW s1, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  ADDI s0, t6, 16
  ADDI s1, zero, 282
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 20
  ADDI s1, zero, 254
  SW s1, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  ADDI s0, t6, 24
  ADDI s1, zero, 27
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 28
  ADDI s1, zero, 5
  SW s1, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  ADDI s0, t6, 32
  ADDI s1, zero, 83
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 36
  ADDI s1, zero, 273
  SW s1, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  ADDI s0, t6, 40
  ADDI s1, zero, 574
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 44
  ADDI s1, zero, 905
  SW s1, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  ADDI s0, t6, 48
  ADDI s1, zero, 354
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 52
  ADDI s1, zero, 657
  SW s1, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  ADDI s0, t6, 56
  ADDI s1, zero, 935
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 60
  ADDI s1, zero, 264
  SW s1, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  ADDI s0, t6, 64
  ADDI s1, zero, 639
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 68
  ADDI s1, zero, 459
  SW s1, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  ADDI s0, t6, 72
  ADDI s1, zero, 29
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 76
  ADDI s1, zero, 68
  SW s1, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  ADDI s0, t6, 80
  ADDI s1, zero, 929
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 84
  ADDI s1, zero, 756
  SW s1, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  ADDI s0, t6, 88
  ADDI s1, zero, 452
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 92
  ADDI s1, zero, 279
  SW s1, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  ADDI s0, t6, 96
  ADDI s1, zero, 58
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 100
  ADDI s1, zero, 87
  SW s1, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  ADDI s0, t6, 104
  ADDI s1, zero, 96
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 108
  ADDI s1, zero, 36
  SW s1, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  ADDI s0, t6, 112
  ADDI s1, zero, 39
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 116
  ADDI s1, zero, 28
  SW s1, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  ADDI s0, t6, 120
  ADDI s1, zero, 1
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 124
  ADDI s1, zero, 290
  SW s1, 0(s0)
  JAL zero, bb111
bb69:
  ADD s0, zero, zero
  JAL zero, bb70
bb70:
  ADD s1, s0, zero
  SLTI s2, s1, 32
  BNE s2, zero, bb71
  JAL zero, bb72
bb71:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LUI t6, 1
  ADDIW t6, t6, -96
  ADD t6, t6, sp
  ADD s2, t6, s3
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb70
bb72:
  JAL zero, bb167
bb73:
  ADD s0, zero, zero
  JAL zero, bb74
bb74:
  ADD s1, s0, zero
  SLTI s2, s1, 32
  BNE s2, zero, bb75
  JAL zero, bb76
bb75:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s2, t5, s3
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb74
bb76:
  LA s0, n
  LW s1, 0(s0)
  ADDI s0, zero, 2
  REMW s2, s1, s0
  XOR s0, s2, zero
  SLTIU s1, s0, 1
  BNE s1, zero, bb144
  JAL zero, bb145
bb77:
  LUI t4, 1
  ADDIW t4, t4, 160
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  ADD a0, s1, zero
  CALL putint
  JAL zero, bb135
bb78:
  ADD s2, s1, zero
  ADD a0, s2, zero
  CALL putint
  JAL zero, bb115
bb79:
  ADD s0, zero, zero
  JAL zero, bb80
bb80:
  ADD s1, s0, zero
  SLTI s2, s1, 32
  BNE s2, zero, bb81
  JAL zero, bb82
bb81:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LUI t6, 1
  ADDIW t6, t6, -96
  ADD t6, t6, sp
  ADD s2, t6, s3
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb80
bb82:
  JAL zero, bb119
bb83:
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
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s2, t5, s3
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb84
bb86:
  JAL zero, bb123
bb87:
  ADD s1, s0, zero
  SLTI s2, s1, 32
  BNE s2, zero, bb88
  JAL zero, bb89
bb88:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LUI t6, 1
  ADDIW t6, t6, -96
  ADD t6, t6, sp
  ADD s2, t6, s3
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb87
bb89:
  JAL zero, bb127
bb90:
  ADD s0, zero, zero
  JAL zero, bb91
bb91:
  ADD s1, s0, zero
  SLTI s2, s1, 32
  BNE s2, zero, bb92
  JAL zero, bb93
bb92:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s2, t5, s3
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb91
bb93:
  JAL zero, bb131
bb94:
  ADD s0, zero, zero
  JAL zero, bb95
bb95:
  ADD s1, s0, zero
  SLTI s2, s1, 32
  BNE s2, zero, bb96
  JAL zero, bb97
bb96:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LUI t6, 1
  ADDIW t6, t6, -96
  ADD t6, t6, sp
  ADD s2, t6, s3
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb95
bb97:
  ADD a0, zero, zero
  LUI t5, 1
  ADDIW t5, t5, 168
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, 176
  ADD t6, t6, sp
  LD s10, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, 192
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, 200
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, 208
  ADD t6, t6, sp
  LD s6, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, 216
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, 224
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, 232
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI ra, 1
  ADDIW ra, ra, 240
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 1
  ADDIW t6, t6, 248
  ADD t6, t6, sp
  LD s4, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, 256
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, 264
  ADD t6, t6, sp
  LD s9, 0(t6)
  LUI t0, 1
  ADDIW t0, t0, 272
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb98:
  ADD s0, zero, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  JAL zero, bb99
bb99:
  ADD s3, s2, zero
  ADD s4, s1, zero
  ADD s5, s0, zero
  LA s6, n
  LW s7, 0(s6)
  SLT s6, s4, s7
  BNE s6, zero, bb100
  JAL zero, bb101
bb100:
  SLTI s6, s4, 2
  BNE s6, zero, bb102
  JAL zero, bb104
bb101:
  LA s0, n
  LW s1, 0(s0)
  ADDI s0, zero, 3
  SUBW s2, s1, s0
  ADDIW s0, s2, 1
  ADD s1, s0, zero
  JAL zero, bb108
bb102:
  ADDI s6, zero, 4
  MULW s7, s4, s6
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s6, t5, s7
  LW s7, 0(s6)
  ADDW s6, s3, s7
  ADD s7, s5, zero
  ADD s8, s6, zero
  JAL zero, bb103
bb103:
  ADD s6, s8, zero
  ADD s9, s7, zero
  ADDIW s10, s4, 1
  ADD s0, s9, zero
  ADD s1, s10, zero
  ADD s2, s6, zero
  JAL zero, bb99
bb104:
  XORI s0, s4, 2
  SLTIU s1, s0, 1
  BNE s1, zero, bb105
  JAL zero, bb107
bb105:
  LUI t6, 1
  ADDIW t6, t6, -96
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADDI s1, zero, 3
  DIVW s2, s3, s1
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  SW s2, 0(t5)
  ADD s1, s0, zero
  ADD s0, s3, zero
  JAL zero, bb106
bb106:
  ADD s2, s0, zero
  ADD s6, s1, zero
  ADD s7, s6, zero
  ADD s8, s2, zero
  JAL zero, bb103
bb107:
  ADDI s2, zero, 4
  MULW s6, s4, s2
  LUI t6, 1
  ADDIW t6, t6, -96
  ADD t6, t6, sp
  ADD s2, t6, s6
  LW s6, 0(s2)
  ADDW s2, s3, s6
  SUBW s3, s2, s5
  ADDI s2, zero, 3
  SUBW s5, s4, s2
  ADDIW s2, s5, 1
  ADDI s5, zero, 4
  MULW s6, s2, s5
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s2, t5, s6
  LW s5, 0(s2)
  ADDI s6, zero, 3
  DIVW s7, s3, s6
  SW s7, 0(s2)
  ADD s1, s5, zero
  ADD s0, s3, zero
  JAL zero, bb106
bb108:
  ADD s0, s1, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s0, s3
  BNE s2, zero, bb109
  JAL zero, bb110
bb109:
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LUI t6, 1
  ADDIW t6, t6, -96
  ADD t6, t6, sp
  ADD s2, t6, s3
  SW zero, 0(s2)
  ADDIW s2, s0, 1
  ADD s1, s2, zero
  JAL zero, bb108
bb110:
  JAL zero, bb94
bb111:
  ADD s0, zero, zero
  JAL zero, bb112
bb112:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb113
  JAL zero, bb114
bb113:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s2, t5, s3
  LUI t6, 1
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  ADD s4, t6, s3
  LW s3, 0(s4)
  SW s3, 0(s2)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb112
bb114:
  JAL zero, bb156
bb115:
  ADD s1, zero, zero
  JAL zero, bb116
bb116:
  ADD s2, s1, zero
  LA s3, n
  LW s4, 0(s3)
  SLT s3, s2, s4
  BNE s3, zero, bb117
  JAL zero, bb118
bb117:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s3, t5, s4
  LUI t6, 1
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  ADD s5, t6, s4
  LW s4, 0(s5)
  SW s4, 0(s3)
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb116
bb118:
  JAL zero, bb176
bb119:
  ADD s0, zero, zero
  JAL zero, bb120
bb120:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb121
  JAL zero, bb122
bb121:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s2, t5, s3
  LUI t6, 1
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  ADD s4, t6, s3
  LW s3, 0(s4)
  SW s3, 0(s2)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb120
bb122:
  JAL zero, bb146
bb123:
  ADD s0, zero, zero
  JAL zero, bb124
bb124:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb125
  JAL zero, bb126
bb125:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s2, t5, s3
  LUI t6, 1
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  ADD s4, t6, s3
  LW s3, 0(s4)
  SW s3, 0(s2)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb124
bb126:
  LUI a0, 1
  ADDIW a0, a0, -96
  ADD a0, a0, sp
  ADD a0, a0, zero
  ADD a1, zero, zero
  ADDI a2, zero, 31
  CALL QuickSort
  ADD s0, a0, zero
  ADD s0, zero, zero
  JAL zero, bb87
bb127:
  ADD s0, zero, zero
  JAL zero, bb128
bb128:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb129
  JAL zero, bb130
bb129:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s2, t5, s3
  LUI t6, 1
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  ADD s4, t6, s3
  LW s3, 0(s4)
  SW s3, 0(s2)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb128
bb130:
  JAL zero, bb160
bb131:
  ADD s0, zero, zero
  JAL zero, bb132
bb132:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb133
  JAL zero, bb134
bb133:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s2, t5, s3
  LUI t6, 1
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  ADD s4, t6, s3
  LW s3, 0(s4)
  SW s3, 0(s2)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb132
bb134:
  JAL zero, bb98
bb135:
  ADD s1, zero, zero
  JAL zero, bb136
bb136:
  ADD s2, s1, zero
  SLTI s3, s2, 1000
  BNE s3, zero, bb137
  JAL zero, bb138
bb137:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADDI t5, sp, 0
  ADD s3, t5, s4
  SW zero, 0(s3)
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb136
bb138:
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  JAL zero, bb139
bb139:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s6, s1, zero
  LA s7, n
  LW s8, 0(s7)
  SLT s7, s4, s8
  BNE s7, zero, bb140
  JAL zero, bb141
bb140:
  ADDI s7, zero, 4
  MULW s8, s4, s7
  LUI t6, 1
  ADDIW t6, t6, -96
  ADD t6, t6, sp
  ADD s7, t6, s8
  LW s8, 0(s7)
  ADDI s7, zero, 4
  MULW s9, s8, s7
  ADDI t5, sp, 0
  ADD s7, t5, s9
  LW s9, 0(s7)
  ADDIW s10, s9, 1
  SW s10, 0(s7)
  SLT s9, s5, s10
  BNE s9, zero, bb142
  JAL zero, bb185
bb141:
  ADD s1, s6, zero
  JAL zero, bb78
bb142:
  LW s9, 0(s7)
  ADD s7, s8, zero
  ADD s8, s9, zero
  JAL zero, bb143
bb143:
  ADD s9, s8, zero
  ADD s10, s7, zero
  ADDIW s11, s4, 1
  ADD s1, s10, zero
  ADD s2, s9, zero
  ADD s3, s11, zero
  JAL zero, bb139
bb144:
  LA s0, n
  LW s1, 0(s0)
  ADDI s0, zero, 2
  DIVW s2, s1, s0
  ADDI s0, zero, 4
  MULW s1, s2, s0
  LUI t6, 1
  ADDIW t6, t6, -96
  ADD t6, t6, sp
  ADD s0, t6, s1
  LW s1, 0(s0)
  ADDI s0, zero, 1
  SUBW s3, s2, s0
  ADDI s0, zero, 4
  MULW s2, s3, s0
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s0, t5, s2
  LW s2, 0(s0)
  ADDW s0, s1, s2
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  ADD t4, s2, zero
  LUI t6, 1
  ADDIW t6, t6, 160
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb77
bb145:
  LA s0, n
  LW s1, 0(s0)
  ADDI s0, zero, 2
  DIVW s2, s1, s0
  ADDI s0, zero, 4
  MULW s1, s2, s0
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s0, t5, s1
  LW s1, 0(s0)
  ADD t4, s1, zero
  LUI t6, 1
  ADDIW t6, t6, 160
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb77
bb146:
  ADDI s0, zero, 1
  JAL zero, bb147
bb147:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb148
  JAL zero, bb149
bb148:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s2, t5, s3
  LW s3, 0(s2)
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADD s2, s4, zero
  JAL zero, bb150
bb149:
  JAL zero, bb83
bb150:
  ADD s4, s2, zero
  ADDI s5, zero, -1
  SLT s6, s5, s4
  BNE s6, zero, bb153
  JAL zero, bb154
bb151:
  ADDIW s5, s4, 1
  ADDI s7, zero, 4
  MULW s8, s5, s7
  LUI t6, 1
  ADDIW t6, t6, -96
  ADD t6, t6, sp
  ADD s5, t6, s8
  ADDI s7, zero, 4
  MULW s8, s4, s7
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s7, t5, s8
  LW s8, 0(s7)
  SW s8, 0(s5)
  ADDI s5, zero, 1
  SUBW s7, s4, s5
  ADD s2, s7, zero
  JAL zero, bb150
bb152:
  ADDIW s2, s4, 1
  ADDI s5, zero, 4
  MULW s7, s2, s5
  LUI t6, 1
  ADDIW t6, t6, -96
  ADD t6, t6, sp
  ADD s2, t6, s7
  SW s3, 0(s2)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb147
bb153:
  ADDI s5, zero, 4
  MULW s6, s4, s5
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s5, t5, s6
  LW s6, 0(s5)
  SLT s5, s3, s6
  ADD s6, s5, zero
  JAL zero, bb155
bb154:
  ADD s6, zero, zero
  JAL zero, bb155
bb155:
  ADD s5, s6, zero
  BNE s5, zero, bb151
  JAL zero, bb152
bb156:
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb157
bb157:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLT s4, s2, s3
  BNE s4, zero, bb158
  JAL zero, bb159
bb158:
  ADDI s4, zero, 4
  MULW s5, s2, s4
  LUI t6, 1
  ADDIW t6, t6, -96
  ADD t6, t6, sp
  ADD s4, t6, s5
  LW s5, 0(s4)
  ADDI s6, zero, 4
  MULW s7, s3, s6
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s6, t5, s7
  LW s7, 0(s6)
  SW s7, 0(s4)
  SW s5, 0(s6)
  ADDIW s4, s2, 1
  ADDI s2, zero, 1
  SUBW s5, s3, s2
  ADD s0, s5, zero
  ADD s1, s4, zero
  JAL zero, bb157
bb159:
  JAL zero, bb69
bb160:
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb161
bb161:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, n
  LW s5, 0(s4)
  SLT s4, s3, s5
  BNE s4, zero, bb162
  JAL zero, bb163
bb162:
  ADDI s4, zero, 4
  MULW s5, s3, s4
  LUI t6, 1
  ADDIW t6, t6, -96
  ADD t6, t6, sp
  ADD s4, t6, s5
  LW s5, 0(s4)
  ADDW s6, s2, s5
  ADDI s2, zero, 4
  REMW s5, s3, s2
  XORI s2, s5, 3
  SLTU s5, zero, s2
  BNE s5, zero, bb164
  JAL zero, bb166
bb163:
  JAL zero, bb90
bb164:
  SW zero, 0(s4)
  ADD s2, s6, zero
  JAL zero, bb165
bb165:
  ADD s5, s2, zero
  ADDIW s7, s3, 1
  ADD s0, s7, zero
  ADD s1, s5, zero
  JAL zero, bb161
bb166:
  SW s6, 0(s4)
  ADD s2, zero, zero
  JAL zero, bb165
bb167:
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb168
bb168:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, n
  LW s5, 0(s4)
  ADDI s4, zero, 1
  SUBW s6, s5, s4
  SLT s4, s2, s6
  BNE s4, zero, bb169
  JAL zero, bb170
bb169:
  ADD s4, s3, zero
  ADD s3, zero, zero
  JAL zero, bb171
bb170:
  JAL zero, bb73
bb171:
  ADD s5, s3, zero
  ADD s6, s4, zero
  LA s7, n
  LW s8, 0(s7)
  SUBW s7, s8, s2
  ADDI s8, zero, 1
  SUBW s9, s7, s8
  SLT s7, s5, s9
  BNE s7, zero, bb172
  JAL zero, bb173
bb172:
  ADDI s7, zero, 4
  MULW s8, s5, s7
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s7, t5, s8
  LW s8, 0(s7)
  ADDIW s9, s5, 1
  ADDI s5, zero, 4
  MULW s10, s9, s5
  LUI t6, 1
  ADDIW t6, t6, -96
  ADD t6, t6, sp
  ADD s5, t6, s10
  LW s10, 0(s5)
  SLT s11, s10, s8
  BNE s11, zero, bb174
  JAL zero, bb186
bb173:
  ADDIW s3, s2, 1
  ADD s0, s6, zero
  ADD s1, s3, zero
  JAL zero, bb168
bb174:
  LW s8, 0(s5)
  LW s10, 0(s7)
  SW s10, 0(s5)
  SW s8, 0(s7)
  ADD s5, s8, zero
  JAL zero, bb175
bb175:
  ADD s7, s5, zero
  ADD s4, s7, zero
  ADD s3, s9, zero
  JAL zero, bb171
bb176:
  ADD s1, zero, zero
  ADD s2, zero, zero
  JAL zero, bb177
bb177:
  ADD s3, s2, zero
  ADD s4, s1, zero
  LA s5, n
  LW s6, 0(s5)
  ADDI s5, zero, 1
  SUBW s7, s6, s5
  SLT s5, s3, s7
  BNE s5, zero, bb178
  JAL zero, bb179
bb178:
  ADD s5, s4, zero
  ADD s4, zero, zero
  JAL zero, bb180
bb179:
  JAL zero, bb79
bb180:
  ADD s6, s4, zero
  ADD s7, s5, zero
  LA s8, n
  LW s9, 0(s8)
  SUBW s8, s9, s3
  ADDI s9, zero, 1
  SUBW s10, s8, s9
  SLT s8, s6, s10
  BNE s8, zero, bb181
  JAL zero, bb182
bb181:
  ADDI s8, zero, 4
  MULW s9, s6, s8
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s8, t5, s9
  LW s9, 0(s8)
  ADDIW s10, s6, 1
  ADDI s6, zero, 4
  MULW s11, s10, s6
  LUI t6, 1
  ADDIW t6, t6, -96
  ADD t6, t6, sp
  ADD s6, t6, s11
  LW s11, 0(s6)
  SLT s0, s11, s9
  BNE s0, zero, bb183
  JAL zero, bb187
bb182:
  ADDIW s0, s3, 1
  ADD s1, s7, zero
  ADD s2, s0, zero
  JAL zero, bb177
bb183:
  LW s0, 0(s6)
  LW s9, 0(s8)
  SW s9, 0(s6)
  SW s0, 0(s8)
  ADD s6, s0, zero
  JAL zero, bb184
bb184:
  ADD s0, s6, zero
  ADD s5, s0, zero
  ADD s4, s10, zero
  JAL zero, bb180
bb185:
  ADD s7, s6, zero
  ADD s8, s5, zero
  JAL zero, bb143
bb186:
  ADD s5, s6, zero
  JAL zero, bb175
bb187:
  ADD s6, s7, zero
  JAL zero, bb184
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
  JAL zero, bb189
bb189:
  ADD s4, s3, zero
  ADD s5, s2, zero
  LA s6, n
  LW s7, 0(s6)
  SLT s6, s5, s7
  BNE s6, zero, bb190
  JAL zero, bb191
bb190:
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
  BNE s4, zero, bb192
  JAL zero, bb194
bb191:
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
bb192:
  SW zero, 0(s6)
  ADD s4, s8, zero
  JAL zero, bb193
bb193:
  ADD s7, s4, zero
  ADDIW s9, s5, 1
  ADD s2, s9, zero
  ADD s3, s7, zero
  JAL zero, bb189
bb194:
  SW s8, 0(s6)
  ADD s4, zero, zero
  JAL zero, bb193
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
  JAL zero, bb196
bb196:
  ADD s3, s2, zero
  ADD s4, s1, zero
  LA s5, n
  LW s6, 0(s5)
  ADDI s5, zero, 1
  SUBW s7, s6, s5
  SLT s5, s3, s7
  BNE s5, zero, bb197
  JAL zero, bb198
bb197:
  ADD s5, s4, zero
  ADD s4, zero, zero
  JAL zero, bb199
bb198:
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
bb199:
  ADD s6, s4, zero
  ADD s7, s5, zero
  LA s8, n
  LW s9, 0(s8)
  SUBW s8, s9, s3
  ADDI s9, zero, 1
  SUBW s10, s8, s9
  SLT s8, s6, s10
  BNE s8, zero, bb200
  JAL zero, bb201
bb200:
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
  BNE t0, zero, bb202
  JAL zero, bb204
bb201:
  ADDIW s4, s3, 1
  ADD s1, s7, zero
  ADD s2, s4, zero
  JAL zero, bb196
bb202:
  LW s9, 0(s6)
  LW s11, 0(s8)
  SW s11, 0(s6)
  SW s9, 0(s8)
  ADD s6, s9, zero
  JAL zero, bb203
bb203:
  ADD s8, s6, zero
  ADD s5, s8, zero
  ADD s4, s10, zero
  JAL zero, bb199
bb204:
  ADD s6, s7, zero
  JAL zero, bb203
