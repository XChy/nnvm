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
  ADD s4, zero, zero
  JAL zero, bb1
bb1:
  LA s5, n
  LW s6, 0(s5)
  SLT s5, s3, s6
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s5, zero, 1
  SUBW s6, s1, s5
  SLT s5, s3, s6
  BNE s5, zero, bb4
  JAL zero, bb6
bb3:
  LA s2, n
  LW s3, 0(s2)
  SUBW s2, s3, s1
  ADDIW s1, s2, 1
  ADD s2, s1, zero
  JAL zero, bb10
bb4:
  ADDI s5, zero, 4
  MULW s6, s3, s5
  ADD s5, s0, s6
  LW s6, 0(s5)
  ADDW s5, s4, s6
  ADD s6, s2, zero
  ADD s7, s5, zero
  JAL zero, bb5
bb5:
  ADDIW s5, s3, 1
  ADD s2, s6, zero
  ADD s3, s5, zero
  ADD s4, s7, zero
  JAL zero, bb1
bb6:
  ADDI s5, zero, 1
  SUBW s8, s1, s5
  XOR s5, s3, s8
  SLTIU s8, s5, 1
  BNE s8, zero, bb7
  JAL zero, bb9
bb7:
  ADDI s5, zero, 4
  MULW s8, zero, s5
  ADD s5, s0, s8
  LW s8, 0(s5)
  ADDI s5, zero, 4
  MULW s9, zero, s5
  ADD s5, s0, s9
  DIVW s9, s4, s1
  SW s9, 0(s5)
  ADD s5, s8, zero
  ADD s8, s4, zero
  JAL zero, bb8
bb8:
  ADD s6, s5, zero
  ADD s7, s8, zero
  JAL zero, bb5
bb9:
  ADDI s6, zero, 4
  MULW s7, s3, s6
  ADD s6, s0, s7
  LW s7, 0(s6)
  ADDW s6, s4, s7
  SUBW s4, s6, s2
  SUBW s2, s3, s1
  ADDIW s6, s2, 1
  ADDI s2, zero, 4
  MULW s7, s6, s2
  ADD s2, s0, s7
  LW s6, 0(s2)
  SUBW s2, s3, s1
  ADDIW s7, s2, 1
  ADDI s2, zero, 4
  MULW s9, s7, s2
  ADD s2, s0, s9
  DIVW s7, s4, s1
  SW s7, 0(s2)
  ADD s5, s6, zero
  ADD s8, s4, zero
  JAL zero, bb8
bb10:
  LA s1, n
  LW s3, 0(s1)
  SLT s1, s2, s3
  XOR s3, s1, zero
  SLTU s1, zero, s3
  BNE s1, zero, bb11
  JAL zero, bb12
bb11:
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  SW zero, 0(s1)
  ADDIW s1, s2, 1
  ADD s2, s1, zero
  JAL zero, bb10
bb12:
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
arrCopy:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, zero, zero
  JAL zero, bb14
bb14:
  LA s3, n
  LW s4, 0(s3)
  SLT s3, s2, s4
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb15
  JAL zero, bb16
bb15:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s3, s1, s4
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s4, s0, s5
  LW s5, 0(s4)
  SW s5, 0(s3)
  ADDIW s3, s2, 1
  ADD s2, s3, zero
  JAL zero, bb14
bb16:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
getMost:
  LUI t0, 1048575
  ADDI t0, t0, 16
  ADD sp, sp, t0
  LUI t5, 1
  ADDI t5, t5, -96
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -88
  ADD t6, t6, sp
  SD s4, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -80
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -72
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -64
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -56
  ADD t6, t6, sp
  SD s1, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -48
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -40
  ADD t6, t6, sp
  SD s5, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -32
  ADD t5, t5, sp
  SD s0, 0(t5)
  ADD s0, a0, zero
  ADD s1, zero, zero
  JAL zero, bb18
bb18:
  SLTI s2, s1, 1000
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb19
  JAL zero, bb20
bb19:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t6, sp, 0
  ADD s2, t6, s3
  SW zero, 0(s2)
  ADDIW s2, s1, 1
  ADD s1, s2, zero
  JAL zero, bb18
bb20:
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  JAL zero, bb21
bb21:
  LA s4, n
  LW s5, 0(s4)
  SLT s4, s3, s5
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb22
  JAL zero, bb23
bb22:
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s4, s0, s5
  LW s5, 0(s4)
  ADDI s4, zero, 4
  MULW s6, s5, s4
  ADDI t5, sp, 0
  ADD s4, t5, s6
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADDI t6, sp, 0
  ADD s6, t6, s7
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  SW s6, 0(s4)
  ADDI s4, zero, 4
  MULW s6, s5, s4
  ADDI t5, sp, 0
  ADD s4, t5, s6
  LW s6, 0(s4)
  SLT s4, s2, s6
  BNE s4, zero, bb24
  JAL zero, bb26
bb23:
  ADD a0, s1, zero
  LUI ra, 1
  ADDI ra, ra, -96
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 1
  ADDI t6, t6, -88
  ADD t6, t6, sp
  LD s4, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -80
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -72
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -64
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -56
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -48
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -40
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -32
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t0, 1
  ADDI t0, t0, -16
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb24:
  ADDI s4, zero, 4
  MULW s6, s5, s4
  ADDI t6, sp, 0
  ADD s4, t6, s6
  LW s6, 0(s4)
  ADD s4, s5, zero
  ADD s5, s6, zero
  JAL zero, bb25
bb25:
  ADDIW s6, s3, 1
  ADD s1, s4, zero
  ADD s2, s5, zero
  ADD s3, s6, zero
  JAL zero, bb21
bb26:
  ADD s4, s1, zero
  ADD s5, s2, zero
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
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s7, 48(sp)
  SD s5, 56(sp)
  SD s0, 64(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 1
  JAL zero, bb32
bb32:
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb33
  JAL zero, bb34
bb33:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s2, s0, s3
  LW s3, 0(s2)
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  ADD s2, s4, zero
  JAL zero, bb35
bb34:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s7, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb35:
  ADDI s4, zero, 1
  SUB s5, zero, s4
  SLT s4, s5, s2
  BNE s4, zero, bb38
  JAL zero, bb39
bb36:
  ADDIW s4, s2, 1
  ADDI s6, zero, 4
  MULW s7, s4, s6
  ADD s4, s0, s7
  ADDI s6, zero, 4
  MULW s7, s2, s6
  ADD s6, s0, s7
  LW s7, 0(s6)
  SW s7, 0(s4)
  ADDI s4, zero, 1
  SUBW s6, s2, s4
  ADD s2, s6, zero
  JAL zero, bb35
bb37:
  ADDIW s4, s2, 1
  ADDI s6, zero, 4
  MULW s7, s4, s6
  ADD s4, s0, s7
  SW s3, 0(s4)
  ADDIW s4, s1, 1
  ADD s1, s4, zero
  JAL zero, bb32
bb38:
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s4, s0, s5
  LW s5, 0(s4)
  SLT s4, s3, s5
  ADD s5, s4, zero
  JAL zero, bb40
bb39:
  ADD s5, zero, zero
  JAL zero, bb40
bb40:
  XOR s4, s5, zero
  SLTU s6, zero, s4
  BNE s6, zero, bb36
  JAL zero, bb37
revert:
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
  ADD s1, zero, zero
  ADD s2, zero, zero
  JAL zero, bb42
bb42:
  SLT s3, s2, s1
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb43
  JAL zero, bb44
bb43:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s3, s0, s4
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s2, s3
  ADD s3, s0, s5
  ADDI s5, zero, 4
  MULW s6, s1, s5
  ADD s5, s0, s6
  LW s6, 0(s5)
  SW s6, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s1, s3
  ADD s3, s0, s5
  SW s4, 0(s3)
  ADDIW s3, s2, 1
  ADDI s4, zero, 1
  SUBW s5, s1, s4
  ADD s1, s5, zero
  ADD s2, s3, zero
  JAL zero, bb42
bb44:
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
QuickSort:
  ADDI sp, sp, -112
  SD s1, 0(sp)
  SD s0, 8(sp)
  SD s11, 16(sp)
  SD s10, 24(sp)
  SD s2, 32(sp)
  SD s7, 40(sp)
  SD s3, 48(sp)
  SD s8, 56(sp)
  SD s4, 64(sp)
  SD s9, 72(sp)
  SD s5, 80(sp)
  SD s6, 88(sp)
  SD ra, 96(sp)
  ADD s2, a0, zero
  ADD s3, a1, zero
  ADD s4, a2, zero
  SLT s5, s3, s4
  BNE s5, zero, bb46
  JAL zero, bb47
bb46:
  ADDI s5, zero, 4
  MULW s6, s3, s5
  ADD s5, s2, s6
  LW s6, 0(s5)
  ADD s5, zero, zero
  ADD s7, zero, zero
  ADD s8, s4, zero
  ADD s9, s3, zero
  JAL zero, bb48
bb47:
  ADD a0, zero, zero
  LD s1, 0(sp)
  LD s0, 8(sp)
  LD s11, 16(sp)
  LD s10, 24(sp)
  LD s2, 32(sp)
  LD s7, 40(sp)
  LD s3, 48(sp)
  LD s8, 56(sp)
  LD s4, 64(sp)
  LD s9, 72(sp)
  LD s5, 80(sp)
  LD s6, 88(sp)
  LD ra, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb48:
  SLT s10, s9, s8
  XOR s11, s10, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb49
  JAL zero, bb50
bb49:
  ADD s10, s8, zero
  JAL zero, bb51
bb50:
  ADDI s0, zero, 4
  MULW s1, s9, s0
  ADD s0, s2, s1
  SW s6, 0(s0)
  ADDI s0, zero, 1
  SUBW s1, s9, s0
  ADD a0, s2, zero
  ADD a1, s3, zero
  ADD a2, s1, zero
  CALL QuickSort
  ADD s0, a0, zero
  ADDIW s0, s9, 1
  ADD a0, s2, zero
  ADD a1, s0, zero
  ADD a2, s4, zero
  CALL QuickSort
  ADD s0, a0, zero
  JAL zero, bb47
bb51:
  SLT s11, s9, s10
  BNE s11, zero, bb54
  JAL zero, bb55
bb52:
  ADDI s11, zero, 1
  SUBW t0, s10, s11
  ADD s10, t0, zero
  JAL zero, bb51
bb53:
  SLT s11, s9, s10
  BNE s11, zero, bb57
  JAL zero, bb67
bb54:
  ADDI s11, zero, 4
  MULW t0, s10, s11
  ADD s11, s2, t0
  LW t0, 0(s11)
  ADDI s11, zero, 1
  SUBW t1, s6, s11
  SLT s11, t1, t0
  ADD s1, s11, zero
  JAL zero, bb56
bb55:
  ADD s1, zero, zero
  JAL zero, bb56
bb56:
  XOR s11, s1, zero
  SLTU t0, zero, s11
  BNE t0, zero, bb52
  JAL zero, bb53
bb57:
  ADDI s11, zero, 4
  MULW t0, s9, s11
  ADD s11, s2, t0
  ADDI t0, zero, 4
  MULW t1, s10, t0
  ADD t0, s2, t1
  LW t1, 0(t0)
  SW t1, 0(s11)
  ADDIW s11, s9, 1
  ADD t0, s11, zero
  JAL zero, bb58
bb58:
  ADD s11, t0, zero
  JAL zero, bb59
bb59:
  SLT t1, s11, s10
  BNE t1, zero, bb62
  JAL zero, bb63
bb60:
  ADDIW t1, s11, 1
  ADD s11, t1, zero
  JAL zero, bb59
bb61:
  SLT t1, s11, s10
  BNE t1, zero, bb65
  JAL zero, bb68
bb62:
  ADDI t1, zero, 4
  MULW t2, s11, t1
  ADD t1, s2, t2
  LW t2, 0(t1)
  SLT t1, t2, s6
  ADD s0, t1, zero
  JAL zero, bb64
bb63:
  ADD s0, zero, zero
  JAL zero, bb64
bb64:
  XOR t1, s0, zero
  SLTU t2, zero, t1
  BNE t2, zero, bb60
  JAL zero, bb61
bb65:
  ADDI t1, zero, 4
  MULW t2, s10, t1
  ADD t1, s2, t2
  ADDI t2, zero, 4
  MULW a3, s11, t2
  ADD t2, s2, a3
  LW a3, 0(t2)
  SW a3, 0(t1)
  ADDI t1, zero, 1
  SUBW t2, s10, t1
  ADD t1, t2, zero
  JAL zero, bb66
bb66:
  ADD s5, s0, zero
  ADD s7, s1, zero
  ADD s8, t1, zero
  ADD s9, s11, zero
  JAL zero, bb48
bb67:
  ADD t0, s9, zero
  JAL zero, bb58
bb68:
  ADD t1, s10, zero
  JAL zero, bb66
main:
  ADDI sp, sp, -288
  SD ra, 256(sp)
  SD s2, 264(sp)
  SD s1, 272(sp)
  SD s0, 280(sp)
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
  SLTI s1, s0, 32
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb71
  JAL zero, bb72
bb71:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 0
  ADD s1, t5, s2
  LW s2, 0(s1)
  ADD a0, s2, zero
  CALL putint
  ADDIW s1, s0, 1
  ADD s0, s1, zero
  JAL zero, bb70
bb72:
  ADDI a0, sp, 0
  ADD a0, a0, zero
  CALL bubblesort
  ADD s0, a0, zero
  ADD s0, zero, zero
  JAL zero, bb73
bb73:
  SLTI s1, s0, 32
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb74
  JAL zero, bb75
bb74:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t6, sp, 0
  ADD s1, t6, s2
  LW s2, 0(s1)
  ADD a0, s2, zero
  CALL putint
  ADDIW s1, s0, 1
  ADD s0, s1, zero
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
  SLTI s1, s0, 32
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb77
  JAL zero, bb78
bb77:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 0
  ADD s1, t5, s2
  LW s2, 0(s1)
  ADD a0, s2, zero
  CALL putint
  ADDIW s1, s0, 1
  ADD s0, s1, zero
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
  SLTI s1, s0, 32
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb80
  JAL zero, bb81
bb80:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t6, sp, 0
  ADD s1, t6, s2
  LW s2, 0(s1)
  ADD a0, s2, zero
  CALL putint
  ADDIW s1, s0, 1
  ADD s0, s1, zero
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
  SLTI s1, s0, 32
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb83
  JAL zero, bb84
bb83:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 0
  ADD s1, t5, s2
  LW s2, 0(s1)
  ADD a0, s2, zero
  CALL putint
  ADDIW s1, s0, 1
  ADD s0, s1, zero
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
  SLTI s1, s0, 32
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb86
  JAL zero, bb87
bb86:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t6, sp, 0
  ADD s1, t6, s2
  LW s2, 0(s1)
  ADD a0, s2, zero
  CALL putint
  ADDIW s1, s0, 1
  ADD s0, s1, zero
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
  SLTI s1, s0, 32
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb89
  JAL zero, bb90
bb89:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 0
  ADD s1, t5, s2
  LW s2, 0(s1)
  ADD a0, s2, zero
  CALL putint
  ADDIW s1, s0, 1
  ADD s0, s1, zero
  JAL zero, bb88
bb90:
  ADD a0, zero, zero
  LD ra, 256(sp)
  LD s2, 264(sp)
  LD s1, 272(sp)
  LD s0, 280(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
calSum:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s7, 48(sp)
  SD s5, 56(sp)
  SD s0, 64(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  JAL zero, bb92
bb92:
  LA s4, n
  LW s5, 0(s4)
  SLT s4, s2, s5
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb93
  JAL zero, bb94
bb93:
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s4, s0, s5
  LW s5, 0(s4)
  ADDW s4, s3, s5
  REMW s5, s2, s1
  ADDI s6, zero, 1
  SUBW s7, s1, s6
  XOR s6, s5, s7
  SLTU s5, zero, s6
  BNE s5, zero, bb95
  JAL zero, bb97
bb94:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s7, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb95:
  ADDI s5, zero, 4
  MULW s6, s2, s5
  ADD s5, s0, s6
  SW zero, 0(s5)
  ADD s5, s4, zero
  JAL zero, bb96
bb96:
  ADDIW s6, s2, 1
  ADD s2, s6, zero
  ADD s3, s5, zero
  JAL zero, bb92
bb97:
  ADDI s3, zero, 4
  MULW s6, s2, s3
  ADD s3, s0, s6
  SW s4, 0(s3)
  ADD s5, zero, zero
  JAL zero, bb96
bubblesort:
  ADDI sp, sp, -80
  SD s8, 0(sp)
  SD ra, 8(sp)
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
  JAL zero, bb99
bb99:
  LA s3, n
  LW s4, 0(s3)
  ADDI s3, zero, 1
  SUBW s5, s4, s3
  SLT s3, s2, s5
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb100
  JAL zero, bb101
bb100:
  ADD s3, s1, zero
  ADD s4, zero, zero
  JAL zero, bb102
bb101:
  ADD a0, zero, zero
  LD s8, 0(sp)
  LD ra, 8(sp)
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
bb102:
  LA s5, n
  LW s6, 0(s5)
  SUBW s5, s6, s2
  ADDI s6, zero, 1
  SUBW s7, s5, s6
  SLT s5, s4, s7
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb103
  JAL zero, bb104
bb103:
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s5, s0, s6
  LW s6, 0(s5)
  ADDIW s5, s4, 1
  ADDI s7, zero, 4
  MULW s8, s5, s7
  ADD s5, s0, s8
  LW s7, 0(s5)
  SLT s5, s7, s6
  BNE s5, zero, bb105
  JAL zero, bb107
bb104:
  ADDIW s4, s2, 1
  ADD s1, s3, zero
  ADD s2, s4, zero
  JAL zero, bb99
bb105:
  ADDIW s5, s4, 1
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADD s5, s0, s7
  LW s6, 0(s5)
  ADDIW s5, s4, 1
  ADDI s7, zero, 4
  MULW s8, s5, s7
  ADD s5, s0, s8
  ADDI s7, zero, 4
  MULW s8, s4, s7
  ADD s7, s0, s8
  LW s8, 0(s7)
  SW s8, 0(s5)
  ADDI s5, zero, 4
  MULW s7, s4, s5
  ADD s5, s0, s7
  SW s6, 0(s5)
  ADD s5, s6, zero
  JAL zero, bb106
bb106:
  ADDIW s6, s4, 1
  ADD s3, s5, zero
  ADD s4, s6, zero
  JAL zero, bb102
bb107:
  ADD s5, s3, zero
  JAL zero, bb106
