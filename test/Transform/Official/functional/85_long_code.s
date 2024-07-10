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
  LA s2, n
  LW s3, 0(s2)
  SUBW s2, s3, s1
  ADDIW s1, s2, 1
  ADD s2, s1, zero
  # implict jump to bb3
bb3:
  ADD s1, s2, zero
  LA s3, n
  LW s4, 0(s3)
  SLT s3, s1, s4
  BNE s3, zero, bb5
  # implict jump to bb4
bb4:
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
bb5:
  SLLIW s3, s1, 2
  ADD s4, s0, s3
  SW zero, 0(s4)
  ADDIW s3, s1, 1
  ADD s2, s3, zero
  JAL zero, bb3
bb6:
  ADDI s8, zero, 1
  SUBW s9, s1, s8
  SLT s8, s6, s9
  BNE s8, zero, bb12
  # implict jump to bb7
bb7:
  XOR s2, s6, s9
  SLTIU s3, s2, 1
  BNE s3, zero, bb11
  # implict jump to bb8
bb8:
  SLLIW s4, s6, 2
  ADD s8, s0, s4
  LW s4, 0(s8)
  ADDW s8, s5, s4
  SUBW s4, s8, s7
  SUBW s5, s6, s1
  ADDIW s7, s5, 1
  SLLIW s5, s7, 2
  ADD s7, s0, s5
  LW s5, 0(s7)
  DIVW s8, s4, s1
  SW s8, 0(s7)
  ADD s3, s5, zero
  ADD s2, s4, zero
  # implict jump to bb9
bb9:
  ADD s4, s2, zero
  ADD s9, s3, zero
  ADD s8, s9, zero
  ADD s11, s4, zero
  # implict jump to bb10
bb10:
  ADD s10, s11, zero
  ADD t0, s8, zero
  ADDIW t1, s6, 1
  ADD s2, t0, zero
  ADD s3, t1, zero
  ADD s4, s10, zero
  JAL zero, bb1
bb11:
  LW s2, 0(s0)
  DIVW s3, s5, s1
  SW s3, 0(s0)
  ADD s3, s2, zero
  ADD s2, s5, zero
  JAL zero, bb9
bb12:
  SLLIW s8, s6, 2
  ADD s10, s0, s8
  LW s8, 0(s10)
  ADDW s10, s5, s8
  ADD s8, s7, zero
  ADD s11, s10, zero
  JAL zero, bb10
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
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
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
  SD s11, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -88
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -80
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -72
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -64
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -56
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -48
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -40
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -32
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -24
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -8
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  SD s9, 0(t5)
  ADD s0, a0, zero
  ADD s1, zero, zero
  # implict jump to bb18
bb18:
  ADD s2, s1, zero
  SLTI s3, s2, 1000
  BNE s3, zero, bb26
  # implict jump to bb19
bb19:
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  # implict jump to bb20
bb20:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s6, s1, zero
  LA s7, n
  LW s8, 0(s7)
  SLT s7, s4, s8
  BNE s7, zero, bb22
  # implict jump to bb21
bb21:
  ADD a0, s6, zero
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI ra, 1
  ADDIW ra, ra, -88
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 1
  ADDIW t5, t5, -80
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -72
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -64
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -56
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -48
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -40
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -32
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -24
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -8
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, 16
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb22:
  SLLIW s7, s4, 2
  ADD s8, s0, s7
  LW s7, 0(s8)
  SLLIW s8, s7, 2
  ADDI t5, sp, 0
  ADD s9, t5, s8
  LW s8, 0(s9)
  ADDIW s10, s8, 1
  SW s10, 0(s9)
  SLT s8, s5, s10
  BNE s8, zero, bb25
  # implict jump to bb23
bb23:
  ADD s9, s6, zero
  ADD s7, s5, zero
  # implict jump to bb24
bb24:
  ADD s8, s7, zero
  ADD s10, s9, zero
  ADDIW s11, s4, 1
  ADD s1, s10, zero
  ADD s2, s8, zero
  ADD s3, s11, zero
  JAL zero, bb20
bb25:
  LW s8, 0(s9)
  ADD s9, s7, zero
  ADD s7, s8, zero
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
  BNE s2, zero, bb29
  # implict jump to bb28
bb28:
  LA s1, n
  LW s2, 0(s1)
  SRAIW s1, s2, 1
  SLLIW s2, s1, 2
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
bb29:
  LA s1, n
  LW s2, 0(s1)
  SRAIW s1, s2, 1
  SLLIW s2, s1, 2
  ADD s3, s0, s2
  LW s2, 0(s3)
  ADDI s3, zero, 1
  SUBW s4, s1, s3
  SLLIW s1, s4, 2
  ADD s3, s0, s1
  LW s1, 0(s3)
  ADDW s3, s2, s1
  SRAIW s1, s3, 1
  ADD a0, s1, zero
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
  ADDIW s4, s5, 1
  SLLIW s7, s4, 2
  ADD s4, s0, s7
  SW s3, 0(s4)
  ADDIW s4, s2, 1
  ADD s1, s4, zero
  JAL zero, bb31
bb38:
  ADDIW s7, s5, 1
  SLLIW s8, s7, 2
  ADD s7, s0, s8
  SLLIW s8, s5, 2
  ADD s9, s0, s8
  LW s8, 0(s9)
  SW s8, 0(s7)
  ADDI s7, zero, 1
  SUBW s8, s5, s7
  ADD s4, s8, zero
  JAL zero, bb34
bb39:
  SLLIW s6, s5, 2
  ADD s7, s0, s6
  LW s6, 0(s7)
  SLT s7, s3, s6
  ADD s6, s7, zero
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
  # implict jump to bb45
bb45:
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
  SLLIW s4, s6, 2
  ADD s5, s0, s4
  SW s3, 0(s5)
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
  ADD s11, s6, zero
  # implict jump to bb55
bb55:
  ADD s8, s11, zero
  ADD t0, s8, zero
  # implict jump to bb56
bb56:
  ADD s8, t0, zero
  SLT t1, s8, s7
  BNE t1, zero, bb64
  # implict jump to bb57
bb57:
  ADD t2, zero, zero
  # implict jump to bb58
bb58:
  ADD a3, t2, zero
  BNE a3, zero, bb63
  # implict jump to bb59
bb59:
  BNE t1, zero, bb62
  # implict jump to bb60
bb60:
  ADD t0, s7, zero
  # implict jump to bb61
bb61:
  ADD a3, t0, zero
  ADD s4, a3, zero
  ADD s5, s8, zero
  JAL zero, bb47
bb62:
  SLLIW t0, s7, 2
  ADD a3, s0, t0
  SLLIW t0, s8, 2
  ADD a4, s0, t0
  LW t0, 0(a4)
  SW t0, 0(a3)
  ADDI t0, zero, 1
  SUBW a3, s7, t0
  ADD t0, a3, zero
  JAL zero, bb61
bb63:
  ADDIW a3, s8, 1
  ADD t0, a3, zero
  JAL zero, bb56
bb64:
  SLLIW t2, s8, 2
  ADD a3, s0, t2
  LW t2, 0(a3)
  SLT a3, t2, s3
  ADD t2, a3, zero
  JAL zero, bb58
bb65:
  SLLIW s8, s6, 2
  ADD s11, s0, s8
  SLLIW s8, s7, 2
  ADD t0, s0, s8
  LW s8, 0(t0)
  SW s8, 0(s11)
  ADDIW s8, s6, 1
  ADD s11, s8, zero
  JAL zero, bb55
bb66:
  ADDI s11, zero, 1
  SUBW t0, s7, s11
  ADD s8, t0, zero
  JAL zero, bb50
bb67:
  SLLIW s10, s7, 2
  ADD s11, s0, s10
  LW s10, 0(s11)
  ADDI s11, zero, 1
  SUBW t0, s3, s11
  SLT s11, t0, s10
  ADD s10, s11, zero
  JAL zero, bb52
main:
  LUI t0, 1048575
  ADDIW t0, t0, -272
  ADD sp, sp, t0
  LUI t5, 1
  ADDIW t5, t5, 168
  ADD t5, t5, sp
  SD s11, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 176
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 192
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 200
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 208
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 216
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 224
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 232
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 240
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 248
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 256
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 264
  ADD t5, t5, sp
  SD s9, 0(t5)
  LA s0, n
  ADDI s1, zero, 32
  SW s1, 0(s0)
  ADDI s0, zero, 7
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  SW s0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 4
  ADDI s1, zero, 23
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 8
  ADDI s1, zero, 89
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 12
  ADDI s1, zero, 26
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 16
  ADDI s1, zero, 282
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 20
  ADDI s1, zero, 254
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 24
  ADDI s1, zero, 27
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 28
  ADDI s1, zero, 5
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 32
  ADDI s1, zero, 83
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 36
  ADDI s1, zero, 273
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 40
  ADDI s1, zero, 574
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 44
  ADDI s1, zero, 905
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 48
  ADDI s1, zero, 354
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 52
  ADDI s1, zero, 657
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 56
  ADDI s1, zero, 935
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 60
  ADDI s1, zero, 264
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 64
  ADDI s1, zero, 639
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 68
  ADDI s1, zero, 459
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 72
  ADDI s1, zero, 29
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 76
  ADDI s1, zero, 68
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 80
  ADDI s1, zero, 929
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 84
  ADDI s1, zero, 756
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 88
  ADDI s1, zero, 452
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 92
  ADDI s1, zero, 279
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 96
  ADDI s1, zero, 58
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 100
  ADDI s1, zero, 87
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 104
  ADDI s1, zero, 96
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 108
  ADDI s1, zero, 36
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 112
  ADDI s1, zero, 39
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 116
  ADDI s1, zero, 28
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 120
  ADDI s1, zero, 1
  SW s1, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADDI s0, t5, 124
  ADDI s1, zero, 290
  SW s1, 0(s0)
  ADD s0, zero, zero
  # implict jump to bb69
bb69:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb167
  # implict jump to bb70
bb70:
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb71
bb71:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLT s4, s2, s3
  BNE s4, zero, bb166
  # implict jump to bb72
bb72:
  ADD s0, zero, zero
  # implict jump to bb73
bb73:
  ADD s1, s0, zero
  SLTI s2, s1, 32
  BNE s2, zero, bb165
  # implict jump to bb74
bb74:
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb75
bb75:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, n
  LW s5, 0(s4)
  ADDI s4, zero, 1
  SUBW s6, s5, s4
  SLT s4, s2, s6
  BNE s4, zero, bb158
  # implict jump to bb76
bb76:
  ADD s0, zero, zero
  # implict jump to bb77
bb77:
  ADD s1, s0, zero
  SLTI s2, s1, 32
  BNE s2, zero, bb157
  # implict jump to bb78
bb78:
  LA s0, n
  LW s1, 0(s0)
  ADDI s0, zero, 2
  REMW s2, s1, s0
  XOR s0, s2, zero
  SLTIU s1, s0, 1
  BNE s1, zero, bb156
  # implict jump to bb79
bb79:
  LA s0, n
  LW s1, 0(s0)
  SRAIW s0, s1, 1
  SLLIW s1, s0, 2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s0, t5, s1
  LW s1, 0(s0)
  ADD t4, s1, zero
  LUI t5, 1
  ADDIW t5, t5, 160
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb80
bb80:
  LUI t4, 1
  ADDIW t4, t4, 160
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  ADD a0, s0, zero
  CALL putint
  ADD s0, zero, zero
  # implict jump to bb81
bb81:
  ADD s2, s0, zero
  SLTI s3, s2, 1000
  BNE s3, zero, bb155
  # implict jump to bb82
bb82:
  ADD s0, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  # implict jump to bb83
bb83:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s6, s0, zero
  LA s7, n
  LW s8, 0(s7)
  SLT s7, s4, s8
  BNE s7, zero, bb151
  # implict jump to bb84
bb84:
  ADD a0, s6, zero
  CALL putint
  ADD s0, zero, zero
  # implict jump to bb85
bb85:
  ADD s2, s0, zero
  LA s3, n
  LW s4, 0(s3)
  SLT s3, s2, s4
  BNE s3, zero, bb150
  # implict jump to bb86
bb86:
  ADD s0, zero, zero
  ADD s2, zero, zero
  # implict jump to bb87
bb87:
  ADD s3, s2, zero
  ADD s4, s0, zero
  LA s5, n
  LW s6, 0(s5)
  ADDI s5, zero, 1
  SUBW s7, s6, s5
  SLT s5, s3, s7
  BNE s5, zero, bb143
  # implict jump to bb88
bb88:
  ADD s0, zero, zero
  # implict jump to bb89
bb89:
  ADD s1, s0, zero
  SLTI s2, s1, 32
  BNE s2, zero, bb142
  # implict jump to bb90
bb90:
  ADD s0, zero, zero
  # implict jump to bb91
bb91:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb141
  # implict jump to bb92
bb92:
  ADDI s0, zero, 1
  # implict jump to bb93
bb93:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb134
  # implict jump to bb94
bb94:
  ADD s0, zero, zero
  # implict jump to bb95
bb95:
  ADD s1, s0, zero
  SLTI s2, s1, 32
  BNE s2, zero, bb133
  # implict jump to bb96
bb96:
  ADD s0, zero, zero
  # implict jump to bb97
bb97:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb132
  # implict jump to bb98
bb98:
  LUI a0, 1
  ADDIW a0, a0, -96
  ADD a0, a0, sp
  ADD a0, a0, zero
  ADD a1, zero, zero
  ADDI a2, zero, 31
  CALL QuickSort
  ADD s0, a0, zero
  ADD s0, zero, zero
  # implict jump to bb99
bb99:
  ADD s1, s0, zero
  SLTI s2, s1, 32
  BNE s2, zero, bb131
  # implict jump to bb100
bb100:
  ADD s0, zero, zero
  # implict jump to bb101
bb101:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb130
  # implict jump to bb102
bb102:
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb103
bb103:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, n
  LW s5, 0(s4)
  SLT s4, s3, s5
  BNE s4, zero, bb126
  # implict jump to bb104
bb104:
  ADD s0, zero, zero
  # implict jump to bb105
bb105:
  ADD s1, s0, zero
  SLTI s2, s1, 32
  BNE s2, zero, bb125
  # implict jump to bb106
bb106:
  ADD s0, zero, zero
  # implict jump to bb107
bb107:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb124
  # implict jump to bb108
bb108:
  ADD s0, zero, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb109
bb109:
  ADD s3, s2, zero
  ADD s4, s1, zero
  ADD s5, s0, zero
  LA s6, n
  LW s7, 0(s6)
  SLT s6, s4, s7
  BNE s6, zero, bb117
  # implict jump to bb110
bb110:
  LA s0, n
  LW s1, 0(s0)
  ADDIW s0, s1, -2
  ADD s1, s0, zero
  # implict jump to bb111
bb111:
  ADD s0, s1, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s0, s3
  BNE s2, zero, bb116
  # implict jump to bb112
bb112:
  ADD s0, zero, zero
  # implict jump to bb113
bb113:
  ADD s1, s0, zero
  SLTI s2, s1, 32
  BNE s2, zero, bb115
  # implict jump to bb114
bb114:
  ADD a0, zero, zero
  LUI t5, 1
  ADDIW t5, t5, 168
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 176
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 192
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 200
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 208
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 216
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 224
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 232
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI ra, 1
  ADDIW ra, ra, 240
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 1
  ADDIW t5, t5, 248
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 256
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 264
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, 272
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb115:
  SLLIW s2, s1, 2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s3, t5, s2
  LW s2, 0(s3)
  ADD a0, s2, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb113
bb116:
  SLLIW s2, s0, 2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s3, t5, s2
  SW zero, 0(s3)
  ADDIW s2, s0, 1
  ADD s1, s2, zero
  JAL zero, bb111
bb117:
  SLTI s6, s4, 2
  BNE s6, zero, bb123
  # implict jump to bb118
bb118:
  XORI s0, s4, 2
  SLTIU s1, s0, 1
  BNE s1, zero, bb122
  # implict jump to bb119
bb119:
  SLLIW s2, s4, 2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s6, t5, s2
  LW s2, 0(s6)
  ADDW s6, s3, s2
  SUBW s2, s6, s5
  ADDIW s3, s4, -2
  SLLIW s5, s3, 2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s3, t5, s5
  LW s5, 0(s3)
  ADDI s6, zero, 3
  DIVW s7, s2, s6
  SW s7, 0(s3)
  ADD s1, s5, zero
  ADD s0, s2, zero
  # implict jump to bb120
bb120:
  ADD s2, s0, zero
  ADD s7, s1, zero
  ADD s6, s7, zero
  ADD s8, s2, zero
  # implict jump to bb121
bb121:
  ADD s7, s8, zero
  ADD s9, s6, zero
  ADDIW s10, s4, 1
  ADD s0, s9, zero
  ADD s1, s10, zero
  ADD s2, s7, zero
  JAL zero, bb109
bb122:
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  LW s0, 0(t5)
  ADDI s1, zero, 3
  DIVW s2, s3, s1
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  SW s2, 0(t5)
  ADD s1, s0, zero
  ADD s0, s3, zero
  JAL zero, bb120
bb123:
  SLLIW s6, s4, 2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s7, t5, s6
  LW s6, 0(s7)
  ADDW s7, s3, s6
  ADD s6, s5, zero
  ADD s8, s7, zero
  JAL zero, bb121
bb124:
  SLLIW s2, s1, 2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s3, t5, s2
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADD s4, t5, s2
  LW s2, 0(s4)
  SW s2, 0(s3)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb107
bb125:
  SLLIW s2, s1, 2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s3, t5, s2
  LW s2, 0(s3)
  ADD a0, s2, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb105
bb126:
  SLLIW s4, s3, 2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s5, t5, s4
  LW s4, 0(s5)
  ADDW s6, s2, s4
  ADDI s2, zero, 4
  REMW s4, s3, s2
  XORI s2, s4, 3
  SLTU s4, zero, s2
  BNE s4, zero, bb129
  # implict jump to bb127
bb127:
  SW s6, 0(s5)
  ADD s2, zero, zero
  # implict jump to bb128
bb128:
  ADD s4, s2, zero
  ADDIW s7, s3, 1
  ADD s0, s7, zero
  ADD s1, s4, zero
  JAL zero, bb103
bb129:
  SW zero, 0(s5)
  ADD s2, s6, zero
  JAL zero, bb128
bb130:
  SLLIW s2, s1, 2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s3, t5, s2
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADD s4, t5, s2
  LW s2, 0(s4)
  SW s2, 0(s3)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb101
bb131:
  SLLIW s2, s1, 2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s3, t5, s2
  LW s2, 0(s3)
  ADD a0, s2, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb99
bb132:
  SLLIW s2, s1, 2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s3, t5, s2
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADD s4, t5, s2
  LW s2, 0(s4)
  SW s2, 0(s3)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb97
bb133:
  SLLIW s2, s1, 2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s3, t5, s2
  LW s2, 0(s3)
  ADD a0, s2, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb95
bb134:
  SLLIW s2, s1, 2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s3, t5, s2
  LW s2, 0(s3)
  ADDI s3, zero, 1
  SUBW s4, s1, s3
  ADD s3, s4, zero
  # implict jump to bb135
bb135:
  ADD s4, s3, zero
  ADDI s5, zero, -1
  SLT s6, s5, s4
  BNE s6, zero, bb140
  # implict jump to bb136
bb136:
  ADD s5, zero, zero
  # implict jump to bb137
bb137:
  ADD s6, s5, zero
  BNE s6, zero, bb139
  # implict jump to bb138
bb138:
  ADDIW s3, s4, 1
  SLLIW s6, s3, 2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s3, t5, s6
  SW s2, 0(s3)
  ADDIW s3, s1, 1
  ADD s0, s3, zero
  JAL zero, bb93
bb139:
  ADDIW s6, s4, 1
  SLLIW s7, s6, 2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s6, t5, s7
  SLLIW s7, s4, 2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s8, t5, s7
  LW s7, 0(s8)
  SW s7, 0(s6)
  ADDI s6, zero, 1
  SUBW s7, s4, s6
  ADD s3, s7, zero
  JAL zero, bb135
bb140:
  SLLIW s5, s4, 2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s6, t5, s5
  LW s5, 0(s6)
  SLT s6, s2, s5
  ADD s5, s6, zero
  JAL zero, bb137
bb141:
  SLLIW s2, s1, 2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s3, t5, s2
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADD s4, t5, s2
  LW s2, 0(s4)
  SW s2, 0(s3)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb91
bb142:
  SLLIW s2, s1, 2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s3, t5, s2
  LW s2, 0(s3)
  ADD a0, s2, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb89
bb143:
  ADD s5, s4, zero
  ADD s4, zero, zero
  # implict jump to bb144
bb144:
  ADD s6, s4, zero
  ADD s7, s5, zero
  LA s8, n
  LW s9, 0(s8)
  SUBW s8, s9, s3
  ADDI s9, zero, 1
  SUBW s10, s8, s9
  SLT s8, s6, s10
  BNE s8, zero, bb146
  # implict jump to bb145
bb145:
  ADDIW s1, s3, 1
  ADD s0, s7, zero
  ADD s2, s1, zero
  JAL zero, bb87
bb146:
  SLLIW s8, s6, 2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s9, t5, s8
  LW s8, 0(s9)
  ADDIW s10, s6, 1
  SLLIW s6, s10, 2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s11, t5, s6
  LW s6, 0(s11)
  SLT s1, s6, s8
  BNE s1, zero, bb149
  # implict jump to bb147
bb147:
  ADD s6, s7, zero
  # implict jump to bb148
bb148:
  ADD s1, s6, zero
  ADD s5, s1, zero
  ADD s4, s10, zero
  JAL zero, bb144
bb149:
  LW s1, 0(s11)
  LW s6, 0(s9)
  SW s6, 0(s11)
  SW s1, 0(s9)
  ADD s6, s1, zero
  JAL zero, bb148
bb150:
  SLLIW s3, s2, 2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s4, t5, s3
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADD s5, t5, s3
  LW s3, 0(s5)
  SW s3, 0(s4)
  ADDIW s3, s2, 1
  ADD s0, s3, zero
  JAL zero, bb85
bb151:
  SLLIW s7, s4, 2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s8, t5, s7
  LW s7, 0(s8)
  SLLIW s8, s7, 2
  ADDI t5, sp, 0
  ADD s9, t5, s8
  LW s8, 0(s9)
  ADDIW s10, s8, 1
  SW s10, 0(s9)
  SLT s8, s5, s10
  BNE s8, zero, bb154
  # implict jump to bb152
bb152:
  ADD s9, s6, zero
  ADD s7, s5, zero
  # implict jump to bb153
bb153:
  ADD s8, s7, zero
  ADD s10, s9, zero
  ADDIW s11, s4, 1
  ADD s0, s10, zero
  ADD s2, s8, zero
  ADD s3, s11, zero
  JAL zero, bb83
bb154:
  LW s8, 0(s9)
  ADD s9, s7, zero
  ADD s7, s8, zero
  JAL zero, bb153
bb155:
  SLLIW s3, s2, 2
  ADDI t5, sp, 0
  ADD s4, t5, s3
  SW zero, 0(s4)
  ADDIW s3, s2, 1
  ADD s0, s3, zero
  JAL zero, bb81
bb156:
  LA s0, n
  LW s1, 0(s0)
  SRAIW s0, s1, 1
  SLLIW s1, s0, 2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s2, t5, s1
  LW s1, 0(s2)
  ADDI s2, zero, 1
  SUBW s3, s0, s2
  SLLIW s0, s3, 2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s2, t5, s0
  LW s0, 0(s2)
  ADDW s2, s1, s0
  SRAIW s0, s2, 1
  ADD t4, s0, zero
  LUI t5, 1
  ADDIW t5, t5, 160
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb80
bb157:
  SLLIW s2, s1, 2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s3, t5, s2
  LW s2, 0(s3)
  ADD a0, s2, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb77
bb158:
  ADD s4, s3, zero
  ADD s3, zero, zero
  # implict jump to bb159
bb159:
  ADD s5, s3, zero
  ADD s6, s4, zero
  LA s7, n
  LW s8, 0(s7)
  SUBW s7, s8, s2
  ADDI s8, zero, 1
  SUBW s9, s7, s8
  SLT s7, s5, s9
  BNE s7, zero, bb161
  # implict jump to bb160
bb160:
  ADDIW s3, s2, 1
  ADD s0, s6, zero
  ADD s1, s3, zero
  JAL zero, bb75
bb161:
  SLLIW s7, s5, 2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s8, t5, s7
  LW s7, 0(s8)
  ADDIW s9, s5, 1
  SLLIW s5, s9, 2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s10, t5, s5
  LW s5, 0(s10)
  SLT s11, s5, s7
  BNE s11, zero, bb164
  # implict jump to bb162
bb162:
  ADD s7, s6, zero
  # implict jump to bb163
bb163:
  ADD s5, s7, zero
  ADD s4, s5, zero
  ADD s3, s9, zero
  JAL zero, bb159
bb164:
  LW s5, 0(s10)
  LW s7, 0(s8)
  SW s7, 0(s10)
  SW s5, 0(s8)
  ADD s7, s5, zero
  JAL zero, bb163
bb165:
  SLLIW s2, s1, 2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s3, t5, s2
  LW s2, 0(s3)
  ADD a0, s2, zero
  CALL putint
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb73
bb166:
  SLLIW s4, s2, 2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s5, t5, s4
  LW s4, 0(s5)
  SLLIW s6, s3, 2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s7, t5, s6
  LW s6, 0(s7)
  SW s6, 0(s5)
  SW s4, 0(s7)
  ADDIW s4, s2, 1
  ADDI s2, zero, 1
  SUBW s5, s3, s2
  ADD s0, s5, zero
  ADD s1, s4, zero
  JAL zero, bb71
bb167:
  SLLIW s2, s1, 2
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s3, t5, s2
  LUI t5, 1
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  ADD s4, t5, s2
  LW s2, 0(s4)
  SW s2, 0(s3)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb69
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
  ADDIW s9, s5, 1
  ADD s2, s9, zero
  ADD s3, s6, zero
  JAL zero, bb169
bb174:
  SW zero, 0(s7)
  ADD s4, s8, zero
  JAL zero, bb173
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
  ADDIW s4, s3, 1
  ADD s1, s7, zero
  ADD s2, s4, zero
  JAL zero, bb176
bb181:
  SLLIW s8, s6, 2
  ADD s9, s0, s8
  LW s8, 0(s9)
  ADDIW s10, s6, 1
  SLLIW s6, s10, 2
  ADD s11, s0, s6
  LW s6, 0(s11)
  SLT t0, s6, s8
  BNE t0, zero, bb184
  # implict jump to bb182
bb182:
  ADD s8, s7, zero
  # implict jump to bb183
bb183:
  ADD s6, s8, zero
  ADD s5, s6, zero
  ADD s4, s10, zero
  JAL zero, bb179
bb184:
  LW s6, 0(s11)
  LW s8, 0(s9)
  SW s8, 0(s11)
  SW s6, 0(s9)
  ADD s8, s6, zero
  JAL zero, bb183
