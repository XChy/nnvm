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
  XOR s9, s8, zero
  SLTU s8, zero, s9
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
  MULW s9, s6, s8
  ADD s8, s0, s9
  LW s9, 0(s8)
  ADDW s8, s5, s9
  ADD s9, s7, zero
  ADD s10, s8, zero
  JAL zero, bb5
bb5:
  ADD s8, s10, zero
  ADD s11, s9, zero
  ADDIW t0, s6, 1
  ADD s2, s11, zero
  ADD s3, t0, zero
  ADD s4, s8, zero
  JAL zero, bb1
bb6:
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  XOR s2, s6, s3
  SLTIU s3, s2, 1
  BNE s3, zero, bb7
  JAL zero, bb9
bb7:
  ADDI s2, zero, 4
  MULW s3, zero, s2
  ADD s2, s0, s3
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s4, zero, s2
  ADD s2, s0, s4
  DIVW s4, s5, s1
  SW s4, 0(s2)
  ADD s2, s3, zero
  ADD s3, s5, zero
  JAL zero, bb8
bb8:
  ADD s4, s3, zero
  ADD s8, s2, zero
  ADD s9, s8, zero
  ADD s10, s4, zero
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
  SUBW s4, s6, s1
  ADDIW s8, s4, 1
  ADDI s4, zero, 4
  MULW s9, s8, s4
  ADD s4, s0, s9
  DIVW s8, s5, s1
  SW s8, 0(s4)
  ADD s2, s7, zero
  ADD s3, s5, zero
  JAL zero, bb8
bb10:
  ADD s1, s2, zero
  LA s3, n
  LW s4, 0(s3)
  SLT s3, s1, s4
  XOR s4, s3, zero
  SLTU s3, zero, s4
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
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb15
  JAL zero, bb16
bb15:
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s4, s1, s5
  ADDI s5, zero, 4
  MULW s6, s3, s5
  ADD s5, s0, s6
  LW s6, 0(s5)
  SW s6, 0(s4)
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
  ADDI t0, t0, -16
  ADD sp, sp, t0
  LUI t5, 1
  ADDI t5, t5, -96
  ADD t5, t5, sp
  SD s11, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -88
  ADD t6, t6, sp
  SD ra, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -80
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -72
  ADD t6, t6, sp
  SD s5, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -64
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -56
  ADD t6, t6, sp
  SD s10, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -48
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -40
  ADD t6, t6, sp
  SD s6, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -32
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -24
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -16
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -8
  ADD t6, t6, sp
  SD s8, 0(t6)
  LUI t5, 1
  ADDI t5, t5, 0
  ADD t5, t5, sp
  SD s9, 0(t5)
  ADD s0, a0, zero
  ADD s1, zero, zero
  JAL zero, bb18
bb18:
  ADD s2, s1, zero
  SLTI s3, s2, 1000
  XOR s4, s3, zero
  SLTU s3, zero, s4
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
  XOR s8, s7, zero
  SLTU s7, zero, s8
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
  ADDI s9, zero, 4
  MULW s10, s8, s9
  ADDI t6, sp, 0
  ADD s9, t6, s10
  LW s10, 0(s9)
  ADDIW s9, s10, 1
  SW s9, 0(s7)
  ADDI s7, zero, 4
  MULW s9, s8, s7
  ADDI t5, sp, 0
  ADD s7, t5, s9
  LW s9, 0(s7)
  SLT s7, s5, s9
  BNE s7, zero, bb24
  JAL zero, bb26
bb23:
  ADD a0, s6, zero
  LUI t6, 1
  ADDI t6, t6, -96
  ADD t6, t6, sp
  LD s11, 0(t6)
  LUI ra, 1
  ADDI ra, ra, -88
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 1
  ADDI t5, t5, -80
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -72
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -64
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -56
  ADD t6, t6, sp
  LD s10, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -48
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -40
  ADD t6, t6, sp
  LD s6, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -32
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -24
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -16
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -8
  ADD t6, t6, sp
  LD s8, 0(t6)
  LUI t5, 1
  ADDI t5, t5, 0
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t0, 1
  ADDI t0, t0, 16
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb24:
  ADDI s7, zero, 4
  MULW s9, s8, s7
  ADDI t6, sp, 0
  ADD s7, t6, s9
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
  JAL zero, bb30
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
bb30:
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
  JAL zero, bb32
bb32:
  ADD s2, s1, zero
  LA s3, n
  LW s4, 0(s3)
  SLT s3, s2, s4
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb33
  JAL zero, bb34
bb33:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s3, s0, s4
  LW s4, 0(s3)
  ADDI s3, zero, 1
  SUBW s5, s2, s3
  ADD s3, s5, zero
  JAL zero, bb35
bb34:
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
bb35:
  ADD s5, s3, zero
  ADDI s6, zero, -1
  SLT s7, s6, s5
  BNE s7, zero, bb38
  JAL zero, bb39
bb36:
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
  JAL zero, bb35
bb37:
  ADDIW s3, s5, 1
  ADDI s6, zero, 4
  MULW s8, s3, s6
  ADD s3, s0, s8
  SW s4, 0(s3)
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb32
bb38:
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADD s6, s0, s7
  LW s7, 0(s6)
  SLT s6, s4, s7
  ADD s7, s6, zero
  JAL zero, bb40
bb39:
  ADD s7, zero, zero
  JAL zero, bb40
bb40:
  ADD s6, s7, zero
  XOR s8, s6, zero
  SLTU s6, zero, s8
  BNE s6, zero, bb36
  JAL zero, bb37
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
  JAL zero, bb42
bb42:
  ADD s3, s2, zero
  ADD s4, s1, zero
  SLT s5, s3, s4
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb43
  JAL zero, bb44
bb43:
  ADDI s5, zero, 4
  MULW s6, s3, s5
  ADD s5, s0, s6
  LW s6, 0(s5)
  ADDI s5, zero, 4
  MULW s7, s3, s5
  ADD s5, s0, s7
  ADDI s7, zero, 4
  MULW s8, s4, s7
  ADD s7, s0, s8
  LW s8, 0(s7)
  SW s8, 0(s5)
  ADDI s5, zero, 4
  MULW s7, s4, s5
  ADD s5, s0, s7
  SW s6, 0(s5)
  ADDIW s5, s3, 1
  ADDI s3, zero, 1
  SUBW s6, s4, s3
  ADD s1, s6, zero
  ADD s2, s5, zero
  JAL zero, bb42
bb44:
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
  SD s10, 0(sp)
  SD s11, 8(sp)
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
  BNE s3, zero, bb46
  JAL zero, bb47
bb46:
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADD s3, s0, s4
  LW s4, 0(s3)
  ADD s3, s2, zero
  ADD s5, s1, zero
  JAL zero, bb48
bb47:
  ADD a0, zero, zero
  LD s10, 0(sp)
  LD s11, 8(sp)
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
bb48:
  ADD s6, s5, zero
  ADD s7, s3, zero
  SLT s8, s6, s7
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb49
  JAL zero, bb50
bb49:
  ADD s8, s7, zero
  JAL zero, bb51
bb50:
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
  JAL zero, bb47
bb51:
  ADD s7, s8, zero
  SLT s9, s6, s7
  BNE s9, zero, bb54
  JAL zero, bb55
bb52:
  ADDI s9, zero, 1
  SUBW s11, s7, s9
  ADD s8, s11, zero
  JAL zero, bb51
bb53:
  SLT s8, s6, s7
  BNE s8, zero, bb57
  JAL zero, bb67
bb54:
  ADDI s9, zero, 4
  MULW s10, s7, s9
  ADD s9, s0, s10
  LW s10, 0(s9)
  ADDI s9, zero, 1
  SUBW s11, s4, s9
  SLT s9, s11, s10
  ADD s10, s9, zero
  JAL zero, bb56
bb55:
  ADD s10, zero, zero
  JAL zero, bb56
bb56:
  ADD s9, s10, zero
  XOR s11, s9, zero
  SLTU s9, zero, s11
  BNE s9, zero, bb52
  JAL zero, bb53
bb57:
  ADDI s8, zero, 4
  MULW s9, s6, s8
  ADD s8, s0, s9
  ADDI s9, zero, 4
  MULW s11, s7, s9
  ADD s9, s0, s11
  LW s11, 0(s9)
  SW s11, 0(s8)
  ADDIW s8, s6, 1
  ADD s9, s8, zero
  JAL zero, bb58
bb58:
  ADD s8, s9, zero
  ADD s11, s8, zero
  JAL zero, bb59
bb59:
  ADD s8, s11, zero
  SLT t0, s8, s7
  BNE t0, zero, bb62
  JAL zero, bb63
bb60:
  ADDIW t0, s8, 1
  ADD s11, t0, zero
  JAL zero, bb59
bb61:
  SLT s11, s8, s7
  BNE s11, zero, bb65
  JAL zero, bb68
bb62:
  ADDI t0, zero, 4
  MULW t1, s8, t0
  ADD t0, s0, t1
  LW t1, 0(t0)
  SLT t0, t1, s4
  ADD t1, t0, zero
  JAL zero, bb64
bb63:
  ADD t1, zero, zero
  JAL zero, bb64
bb64:
  ADD t0, t1, zero
  XOR t2, t0, zero
  SLTU t0, zero, t2
  BNE t0, zero, bb60
  JAL zero, bb61
bb65:
  ADDI s11, zero, 4
  MULW t0, s7, s11
  ADD s11, s0, t0
  ADDI t0, zero, 4
  MULW t2, s8, t0
  ADD t0, s0, t2
  LW t2, 0(t0)
  SW t2, 0(s11)
  ADDI s11, zero, 1
  SUBW t0, s7, s11
  ADD s11, t0, zero
  JAL zero, bb66
bb66:
  ADD t0, s11, zero
  ADD s3, t0, zero
  ADD s5, s8, zero
  JAL zero, bb48
bb67:
  ADD s9, s6, zero
  JAL zero, bb58
bb68:
  ADD s11, s7, zero
  JAL zero, bb66
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
  ADDI s0, zero, 4
  MUL s1, zero, s0
  ADDI t5, sp, 128
  ADD s0, t5, s1
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 1
  MULW s2, s0, s1
  ADDI t6, sp, 128
  ADD s0, t6, s2
  ADDI s1, zero, 23
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 2
  MULW s2, s0, s1
  ADDI t5, sp, 128
  ADD s0, t5, s2
  ADDI s1, zero, 89
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 3
  MULW s2, s0, s1
  ADDI t6, sp, 128
  ADD s0, t6, s2
  ADDI s1, zero, 26
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 128
  ADD s0, t5, s2
  ADDI s1, zero, 282
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 5
  MULW s2, s0, s1
  ADDI t6, sp, 128
  ADD s0, t6, s2
  ADDI s1, zero, 254
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 6
  MULW s2, s0, s1
  ADDI t5, sp, 128
  ADD s0, t5, s2
  ADDI s1, zero, 27
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 7
  MULW s2, s0, s1
  ADDI t6, sp, 128
  ADD s0, t6, s2
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 8
  MULW s2, s0, s1
  ADDI t5, sp, 128
  ADD s0, t5, s2
  ADDI s1, zero, 83
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 9
  MULW s2, s0, s1
  ADDI t6, sp, 128
  ADD s0, t6, s2
  ADDI s1, zero, 273
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 10
  MULW s2, s0, s1
  ADDI t5, sp, 128
  ADD s0, t5, s2
  ADDI s1, zero, 574
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 11
  MULW s2, s0, s1
  ADDI t6, sp, 128
  ADD s0, t6, s2
  ADDI s1, zero, 905
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 12
  MULW s2, s0, s1
  ADDI t5, sp, 128
  ADD s0, t5, s2
  ADDI s1, zero, 354
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 13
  MULW s2, s0, s1
  ADDI t6, sp, 128
  ADD s0, t6, s2
  ADDI s1, zero, 657
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 14
  MULW s2, s0, s1
  ADDI t5, sp, 128
  ADD s0, t5, s2
  ADDI s1, zero, 935
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 15
  MULW s2, s0, s1
  ADDI t6, sp, 128
  ADD s0, t6, s2
  ADDI s1, zero, 264
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 16
  MULW s2, s0, s1
  ADDI t5, sp, 128
  ADD s0, t5, s2
  ADDI s1, zero, 639
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 17
  MULW s2, s0, s1
  ADDI t6, sp, 128
  ADD s0, t6, s2
  ADDI s1, zero, 459
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 18
  MULW s2, s0, s1
  ADDI t5, sp, 128
  ADD s0, t5, s2
  ADDI s1, zero, 29
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 19
  MULW s2, s0, s1
  ADDI t6, sp, 128
  ADD s0, t6, s2
  ADDI s1, zero, 68
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 20
  MULW s2, s0, s1
  ADDI t5, sp, 128
  ADD s0, t5, s2
  ADDI s1, zero, 929
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 21
  MULW s2, s0, s1
  ADDI t6, sp, 128
  ADD s0, t6, s2
  ADDI s1, zero, 756
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 22
  MULW s2, s0, s1
  ADDI t5, sp, 128
  ADD s0, t5, s2
  ADDI s1, zero, 452
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 23
  MULW s2, s0, s1
  ADDI t6, sp, 128
  ADD s0, t6, s2
  ADDI s1, zero, 279
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 24
  MULW s2, s0, s1
  ADDI t5, sp, 128
  ADD s0, t5, s2
  ADDI s1, zero, 58
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 25
  MULW s2, s0, s1
  ADDI t6, sp, 128
  ADD s0, t6, s2
  ADDI s1, zero, 87
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 26
  MULW s2, s0, s1
  ADDI t5, sp, 128
  ADD s0, t5, s2
  ADDI s1, zero, 96
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 27
  MULW s2, s0, s1
  ADDI t6, sp, 128
  ADD s0, t6, s2
  ADDI s1, zero, 36
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 28
  MULW s2, s0, s1
  ADDI t5, sp, 128
  ADD s0, t5, s2
  ADDI s1, zero, 39
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 29
  MULW s2, s0, s1
  ADDI t6, sp, 128
  ADD s0, t6, s2
  ADDI s1, zero, 28
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 30
  MULW s2, s0, s1
  ADDI t5, sp, 128
  ADD s0, t5, s2
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 31
  MULW s2, s0, s1
  ADDI t6, sp, 128
  ADD s0, t6, s2
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
  JAL zero, bb70
bb70:
  ADD s1, s0, zero
  SLTI s2, s1, 32
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb71
  JAL zero, bb72
bb71:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 0
  ADD s2, t5, s3
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb70
bb72:
  ADDI a0, sp, 0
  ADD a0, a0, zero
  CALL bubblesort
  ADD s0, a0, zero
  ADD s0, zero, zero
  JAL zero, bb73
bb73:
  ADD s1, s0, zero
  SLTI s2, s1, 32
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb74
  JAL zero, bb75
bb74:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t6, sp, 0
  ADD s2, t6, s3
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb73
bb75:
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
  JAL zero, bb76
bb76:
  ADD s1, s0, zero
  SLTI s2, s1, 32
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb77
  JAL zero, bb78
bb77:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 0
  ADD s2, t5, s3
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb76
bb78:
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
  JAL zero, bb79
bb79:
  ADD s1, s0, zero
  SLTI s2, s1, 32
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb80
  JAL zero, bb81
bb80:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t6, sp, 0
  ADD s2, t6, s3
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb79
bb81:
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
  JAL zero, bb82
bb82:
  ADD s1, s0, zero
  SLTI s2, s1, 32
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb83
  JAL zero, bb84
bb83:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 0
  ADD s2, t5, s3
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb82
bb84:
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
  JAL zero, bb85
bb85:
  ADD s1, s0, zero
  SLTI s2, s1, 32
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb86
  JAL zero, bb87
bb86:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t6, sp, 0
  ADD s2, t6, s3
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb85
bb87:
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
  JAL zero, bb88
bb88:
  ADD s1, s0, zero
  SLTI s2, s1, 32
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb89
  JAL zero, bb90
bb89:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 0
  ADD s2, t5, s3
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb88
bb90:
  ADD a0, zero, zero
  LD ra, 256(sp)
  LD s3, 264(sp)
  LD s2, 272(sp)
  LD s1, 280(sp)
  LD s0, 288(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
calSum:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s8, 32(sp)
  SD s6, 40(sp)
  SD s1, 48(sp)
  SD s7, 56(sp)
  SD s5, 64(sp)
  SD s0, 72(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  JAL zero, bb92
bb92:
  ADD s4, s3, zero
  ADD s5, s2, zero
  LA s6, n
  LW s7, 0(s6)
  SLT s6, s5, s7
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb93
  JAL zero, bb94
bb93:
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADD s6, s0, s7
  LW s7, 0(s6)
  ADDW s6, s4, s7
  REMW s4, s5, s1
  ADDI s7, zero, 1
  SUBW s8, s1, s7
  XOR s7, s4, s8
  SLTU s4, zero, s7
  BNE s4, zero, bb95
  JAL zero, bb97
bb94:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s8, 32(sp)
  LD s6, 40(sp)
  LD s1, 48(sp)
  LD s7, 56(sp)
  LD s5, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb95:
  ADDI s4, zero, 4
  MULW s7, s5, s4
  ADD s4, s0, s7
  SW zero, 0(s4)
  ADD s4, s6, zero
  JAL zero, bb96
bb96:
  ADD s7, s4, zero
  ADDIW s8, s5, 1
  ADD s2, s8, zero
  ADD s3, s7, zero
  JAL zero, bb92
bb97:
  ADDI s2, zero, 4
  MULW s3, s5, s2
  ADD s2, s0, s3
  SW s6, 0(s2)
  ADD s4, zero, zero
  JAL zero, bb96
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
  JAL zero, bb99
bb99:
  ADD s3, s2, zero
  ADD s4, s1, zero
  LA s5, n
  LW s6, 0(s5)
  ADDI s5, zero, 1
  SUBW s7, s6, s5
  SLT s5, s3, s7
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb100
  JAL zero, bb101
bb100:
  ADD s5, s4, zero
  ADD s4, zero, zero
  JAL zero, bb102
bb101:
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
bb102:
  ADD s6, s4, zero
  ADD s7, s5, zero
  LA s8, n
  LW s9, 0(s8)
  SUBW s8, s9, s3
  ADDI s9, zero, 1
  SUBW s10, s8, s9
  SLT s8, s6, s10
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb103
  JAL zero, bb104
bb103:
  ADDI s8, zero, 4
  MULW s9, s6, s8
  ADD s8, s0, s9
  LW s9, 0(s8)
  ADDIW s8, s6, 1
  ADDI s10, zero, 4
  MULW s11, s8, s10
  ADD s8, s0, s11
  LW s10, 0(s8)
  SLT s8, s10, s9
  BNE s8, zero, bb105
  JAL zero, bb107
bb104:
  ADDIW s4, s3, 1
  ADD s1, s7, zero
  ADD s2, s4, zero
  JAL zero, bb99
bb105:
  ADDIW s8, s6, 1
  ADDI s9, zero, 4
  MULW s10, s8, s9
  ADD s8, s0, s10
  LW s9, 0(s8)
  ADDIW s8, s6, 1
  ADDI s10, zero, 4
  MULW s11, s8, s10
  ADD s8, s0, s11
  ADDI s10, zero, 4
  MULW s11, s6, s10
  ADD s10, s0, s11
  LW s11, 0(s10)
  SW s11, 0(s8)
  ADDI s8, zero, 4
  MULW s10, s6, s8
  ADD s8, s0, s10
  SW s9, 0(s8)
  ADD s8, s9, zero
  JAL zero, bb106
bb106:
  ADD s9, s8, zero
  ADDIW s10, s6, 1
  ADD s5, s9, zero
  ADD s4, s10, zero
  JAL zero, bb102
bb107:
  ADD s8, s7, zero
  JAL zero, bb106
