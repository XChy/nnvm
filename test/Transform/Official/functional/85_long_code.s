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
  ADDI sp, sp, -80
  SD ra, 32(sp)
  SD s4, 40(sp)
  SD s3, 48(sp)
  SD s2, 56(sp)
  SD s1, 64(sp)
  SD s0, 72(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s1, 24(sp)
  ADDI s1, zero, 0
  SW s1, 8(sp)
  ADDI s1, zero, 0
  SW s1, 16(sp)
  JAL zero, bb1
bb1:
  LW s1, 8(sp)
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb2
  JAL zero, bb3
bb2:
  LW s1, 8(sp)
  LW s2, 24(sp)
  ADDI s3, zero, 1
  SUBW s4, s2, s3
  SLT s2, s1, s4
  BNE s2, zero, bb4
  JAL zero, bb6
bb3:
  LA s1, n
  LW s2, 0(s1)
  LW s1, 24(sp)
  SUBW s3, s2, s1
  ADDIW s1, s3, 1
  SW s1, 8(sp)
  JAL zero, bb10
bb4:
  LW s1, 16(sp)
  LW s2, 8(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s3, 0(s2)
  ADDW s2, s1, s3
  SW s2, 16(sp)
  JAL zero, bb5
bb5:
  LW s1, 8(sp)
  ADDIW s2, s1, 1
  SW s2, 8(sp)
  JAL zero, bb1
bb6:
  LW s1, 8(sp)
  LW s2, 24(sp)
  ADDI s3, zero, 1
  SUBW s4, s2, s3
  XOR s2, s1, s4
  SLTIU s1, s2, 1
  BNE s1, zero, bb7
  JAL zero, bb9
bb7:
  ADDI s1, zero, 4
  MULW s2, s1, zero
  ADD s1, s0, s2
  LW s2, 0(s1)
  SW s2, 0(sp)
  ADDI s1, zero, 4
  MULW s2, zero, s1
  ADD s1, s0, s2
  LW s2, 16(sp)
  LW s3, 24(sp)
  DIVW s4, s2, s3
  SW s4, 0(s1)
  JAL zero, bb8
bb8:
  JAL zero, bb5
bb9:
  LW s1, 16(sp)
  LW s2, 8(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s3, 0(s2)
  ADDW s2, s1, s3
  LW s1, 0(sp)
  SUBW s3, s2, s1
  SW s3, 16(sp)
  LW s1, 8(sp)
  LW s2, 24(sp)
  SUBW s4, s1, s2
  ADDIW s1, s4, 1
  ADDI s2, zero, 4
  MULW s4, s1, s2
  ADD s1, s0, s4
  LW s2, 0(s1)
  SW s2, 0(sp)
  LW s1, 8(sp)
  LW s2, 24(sp)
  SUBW s4, s1, s2
  ADDIW s1, s4, 1
  ADDI s2, zero, 4
  MULW s4, s1, s2
  ADD s1, s0, s4
  LW s2, 24(sp)
  DIVW s4, s3, s2
  SW s4, 0(s1)
  JAL zero, bb8
bb10:
  LW s1, 8(sp)
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb11
  JAL zero, bb12
bb11:
  LW s1, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  SW zero, 0(s1)
  LW s1, 8(sp)
  ADDIW s2, s1, 1
  SW s2, 8(sp)
  JAL zero, bb10
bb12:
  ADD a0, zero, zero
  LD ra, 32(sp)
  LD s4, 40(sp)
  LD s3, 48(sp)
  LD s2, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
arrCopy:
  ADDI sp, sp, -64
  SD ra, 8(sp)
  SD s4, 16(sp)
  SD s3, 24(sp)
  SD s2, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW zero, 0(sp)
  JAL zero, bb14
bb14:
  LW s2, 0(sp)
  LA s3, n
  LW s4, 0(s3)
  SLT s3, s2, s4
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb15
  JAL zero, bb16
bb15:
  LW s2, 0(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s2, s1, s4
  LW s3, 0(sp)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s0, s5
  LW s4, 0(s3)
  SW s4, 0(s2)
  LW s2, 0(sp)
  ADDIW s3, s2, 1
  SW s3, 0(sp)
  JAL zero, bb14
bb16:
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s4, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
getMost:
  LUI t0, 1048575
  ADDI t0, t0, 16
  ADD sp, sp, t0
  LUI t5, 1
  ADDI t5, t5, -64
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -56
  ADD t6, t6, sp
  SD s4, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -48
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -40
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -32
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -24
  ADD t6, t6, sp
  SD s0, 0(t6)
  ADD s0, a0, zero
  SW zero, 24(sp)
  JAL zero, bb18
bb18:
  LW s1, 24(sp)
  SLTI s2, s1, 1000
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb19
  JAL zero, bb20
bb19:
  LW s1, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 32
  ADD s1, t5, s3
  SW zero, 0(s1)
  LW s1, 24(sp)
  ADDIW s2, s1, 1
  SW s2, 24(sp)
  JAL zero, bb18
bb20:
  SW zero, 24(sp)
  SW zero, 16(sp)
  JAL zero, bb21
bb21:
  LW s1, 24(sp)
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb22
  JAL zero, bb23
bb22:
  LW s1, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 0(s1)
  SW s2, 0(sp)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADDI t6, sp, 32
  ADD s1, t6, s3
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADDI t5, sp, 32
  ADD s3, t5, s4
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  SW s3, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADDI t6, sp, 32
  ADD s1, t6, s3
  LW s2, 0(s1)
  LW s1, 16(sp)
  SLT s3, s1, s2
  BNE s3, zero, bb24
  JAL zero, bb25
bb23:
  LW s0, 8(sp)
  ADD a0, s0, zero
  LUI ra, 1
  ADDI ra, ra, -64
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 1
  ADDI t5, t5, -56
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -48
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -40
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -32
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -24
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t0, 1
  ADDI t0, t0, -16
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb24:
  LW s1, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t6, sp, 32
  ADD s1, t6, s3
  LW s2, 0(s1)
  SW s2, 16(sp)
  LW s1, 0(sp)
  SW s1, 8(sp)
  JAL zero, bb25
bb25:
  LW s1, 24(sp)
  ADDIW s2, s1, 1
  SW s2, 24(sp)
  JAL zero, bb21
getMid:
  ADDI sp, sp, -64
  SD ra, 8(sp)
  SD s4, 16(sp)
  SD s3, 24(sp)
  SD s2, 32(sp)
  SD s1, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  LA s1, n
  LW s2, 0(s1)
  ADDI s1, zero, 2
  REMW s3, s2, s1
  XOR s1, s3, zero
  SLTIU s2, s1, 1
  BNE s2, zero, bb27
  JAL zero, bb29
bb27:
  LA s1, n
  LW s2, 0(s1)
  ADDI s1, zero, 2
  DIVW s3, s2, s1
  SW s3, 0(sp)
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
  LD ra, 8(sp)
  LD s4, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb28:
bb29:
  LA s1, n
  LW s2, 0(s1)
  ADDI s1, zero, 2
  DIVW s3, s2, s1
  SW s3, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s3, s1
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  LD ra, 8(sp)
  LD s4, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
insertsort:
  ADDI sp, sp, -80
  SD s4, 32(sp)
  SD ra, 40(sp)
  SD s3, 48(sp)
  SD s2, 56(sp)
  SD s1, 64(sp)
  SD s0, 72(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 1
  SW s1, 24(sp)
  JAL zero, bb31
bb31:
  LW s1, 24(sp)
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb32
  JAL zero, bb33
bb32:
  LW s1, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 0(s1)
  SW s2, 16(sp)
  LW s1, 24(sp)
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  SW s3, 8(sp)
  JAL zero, bb34
bb33:
  ADD a0, zero, zero
  LD s4, 32(sp)
  LD ra, 40(sp)
  LD s3, 48(sp)
  LD s2, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb34:
  LW s1, 8(sp)
  ADDI s2, zero, 1
  SUB s3, zero, s2
  SLT s2, s3, s1
  BNE s2, zero, bb37
  JAL zero, bb38
bb35:
  LW s1, 8(sp)
  ADDIW s2, s1, 1
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  LW s2, 8(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s3, 0(s2)
  SW s3, 0(s1)
  LW s1, 8(sp)
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  SW s3, 8(sp)
  JAL zero, bb34
bb36:
  LW s1, 8(sp)
  ADDIW s2, s1, 1
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  LW s2, 16(sp)
  SW s2, 0(s1)
  LW s1, 24(sp)
  ADDIW s2, s1, 1
  SW s2, 24(sp)
  JAL zero, bb31
bb37:
  LW s1, 16(sp)
  LW s2, 8(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s3, 0(s2)
  SLT s2, s1, s3
  SB s2, 0(sp)
  JAL zero, bb39
bb38:
  SB zero, 0(sp)
  JAL zero, bb39
bb39:
  LB s1, 0(sp)
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb35
  JAL zero, bb36
revert:
  ADDI sp, sp, -80
  SD ra, 24(sp)
  SD s4, 32(sp)
  SD s3, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  SD s5, 64(sp)
  SD s0, 72(sp)
  ADD s0, a0, zero
  SW zero, 8(sp)
  SW zero, 0(sp)
  JAL zero, bb41
bb41:
  LW s1, 8(sp)
  LW s2, 0(sp)
  SLT s3, s1, s2
  XOR s1, s3, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb42
  JAL zero, bb43
bb42:
  LW s1, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 0(s1)
  SW s2, 16(sp)
  LW s1, 8(sp)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADD s1, s0, s4
  LW s3, 0(sp)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s0, s5
  LW s4, 0(s3)
  SW s4, 0(s1)
  LW s1, 0(sp)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADD s1, s0, s4
  SW s2, 0(s1)
  LW s1, 8(sp)
  ADDIW s2, s1, 1
  SW s2, 8(sp)
  LW s1, 0(sp)
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  SW s3, 0(sp)
  JAL zero, bb41
bb43:
  ADD a0, zero, zero
  LD ra, 24(sp)
  LD s4, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s5, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
QuickSort:
  ADDI sp, sp, -112
  SD s4, 64(sp)
  SD ra, 72(sp)
  SD s3, 80(sp)
  SD s2, 88(sp)
  SD s1, 96(sp)
  SD s0, 104(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  SW s1, 56(sp)
  SW s2, 48(sp)
  SLT s3, s1, s2
  BNE s3, zero, bb45
  JAL zero, bb46
bb45:
  LW s1, 56(sp)
  SW s1, 40(sp)
  LW s1, 48(sp)
  SW s1, 32(sp)
  LW s1, 56(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 0(s1)
  SW s2, 24(sp)
  JAL zero, bb47
bb46:
  ADD a0, zero, zero
  LD s4, 64(sp)
  LD ra, 72(sp)
  LD s3, 80(sp)
  LD s2, 88(sp)
  LD s1, 96(sp)
  LD s0, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb47:
  LW s1, 40(sp)
  LW s2, 32(sp)
  SLT s3, s1, s2
  XOR s1, s3, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb48
  JAL zero, bb49
bb48:
  JAL zero, bb50
bb49:
  LW s1, 40(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 24(sp)
  SW s2, 0(s1)
  LW s1, 40(sp)
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  SW s3, 0(sp)
  LW s1, 56(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s3, zero
  CALL QuickSort
  ADD s1, a0, zero
  SW s1, 0(sp)
  LW s1, 40(sp)
  ADDIW s2, s1, 1
  SW s2, 0(sp)
  LW s1, 48(sp)
  ADD a0, s0, zero
  ADD a1, s2, zero
  ADD a2, s1, zero
  CALL QuickSort
  ADD s0, a0, zero
  SW s0, 0(sp)
  JAL zero, bb46
bb50:
  LW s1, 40(sp)
  LW s2, 32(sp)
  SLT s3, s1, s2
  BNE s3, zero, bb53
  JAL zero, bb54
bb51:
  LW s1, 32(sp)
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  SW s3, 32(sp)
  JAL zero, bb50
bb52:
  LW s1, 40(sp)
  LW s2, 32(sp)
  SLT s3, s1, s2
  BNE s3, zero, bb56
  JAL zero, bb57
bb53:
  LW s1, 32(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 0(s1)
  LW s1, 24(sp)
  ADDI s3, zero, 1
  SUBW s4, s1, s3
  SLT s1, s4, s2
  SB s1, 16(sp)
  JAL zero, bb55
bb54:
  SB zero, 16(sp)
  JAL zero, bb55
bb55:
  LB s1, 16(sp)
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb51
  JAL zero, bb52
bb56:
  LW s1, 40(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 32(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s3, 0(s2)
  SW s3, 0(s1)
  LW s1, 40(sp)
  ADDIW s2, s1, 1
  SW s2, 40(sp)
  JAL zero, bb57
bb57:
  JAL zero, bb58
bb58:
  LW s1, 40(sp)
  LW s2, 32(sp)
  SLT s3, s1, s2
  BNE s3, zero, bb61
  JAL zero, bb62
bb59:
  LW s1, 40(sp)
  ADDIW s2, s1, 1
  SW s2, 40(sp)
  JAL zero, bb58
bb60:
  LW s1, 40(sp)
  LW s2, 32(sp)
  SLT s3, s1, s2
  BNE s3, zero, bb64
  JAL zero, bb65
bb61:
  LW s1, 40(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 0(s1)
  LW s1, 24(sp)
  SLT s3, s2, s1
  SB s3, 8(sp)
  JAL zero, bb63
bb62:
  SB zero, 8(sp)
  JAL zero, bb63
bb63:
  LB s1, 8(sp)
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb59
  JAL zero, bb60
bb64:
  LW s1, 32(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 40(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s3, 0(s2)
  SW s3, 0(s1)
  LW s1, 32(sp)
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  SW s3, 32(sp)
  JAL zero, bb65
bb65:
  JAL zero, bb47
main:
  ADDI sp, sp, -304
  SD ra, 272(sp)
  SD s2, 280(sp)
  SD s1, 288(sp)
  SD s0, 296(sp)
  LA s0, n
  ADDI s1, zero, 32
  SW s1, 0(s0)
  ADDI s0, zero, 4
  MUL s1, zero, s0
  ADDI t5, sp, 144
  ADD s0, t5, s1
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 1
  MULW s2, s0, s1
  ADDI t6, sp, 144
  ADD s0, t6, s2
  ADDI s1, zero, 23
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 2
  MULW s2, s0, s1
  ADDI t5, sp, 144
  ADD s0, t5, s2
  ADDI s1, zero, 89
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 3
  MULW s2, s0, s1
  ADDI t6, sp, 144
  ADD s0, t6, s2
  ADDI s1, zero, 26
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 144
  ADD s0, t5, s2
  ADDI s1, zero, 282
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 5
  MULW s2, s0, s1
  ADDI t6, sp, 144
  ADD s0, t6, s2
  ADDI s1, zero, 254
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 6
  MULW s2, s0, s1
  ADDI t5, sp, 144
  ADD s0, t5, s2
  ADDI s1, zero, 27
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 7
  MULW s2, s0, s1
  ADDI t6, sp, 144
  ADD s0, t6, s2
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 8
  MULW s2, s0, s1
  ADDI t5, sp, 144
  ADD s0, t5, s2
  ADDI s1, zero, 83
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 9
  MULW s2, s0, s1
  ADDI t6, sp, 144
  ADD s0, t6, s2
  ADDI s1, zero, 273
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 10
  MULW s2, s0, s1
  ADDI t5, sp, 144
  ADD s0, t5, s2
  ADDI s1, zero, 574
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 11
  MULW s2, s0, s1
  ADDI t6, sp, 144
  ADD s0, t6, s2
  ADDI s1, zero, 905
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 12
  MULW s2, s0, s1
  ADDI t5, sp, 144
  ADD s0, t5, s2
  ADDI s1, zero, 354
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 13
  MULW s2, s0, s1
  ADDI t6, sp, 144
  ADD s0, t6, s2
  ADDI s1, zero, 657
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 14
  MULW s2, s0, s1
  ADDI t5, sp, 144
  ADD s0, t5, s2
  ADDI s1, zero, 935
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 15
  MULW s2, s0, s1
  ADDI t6, sp, 144
  ADD s0, t6, s2
  ADDI s1, zero, 264
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 16
  MULW s2, s0, s1
  ADDI t5, sp, 144
  ADD s0, t5, s2
  ADDI s1, zero, 639
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 17
  MULW s2, s0, s1
  ADDI t6, sp, 144
  ADD s0, t6, s2
  ADDI s1, zero, 459
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 18
  MULW s2, s0, s1
  ADDI t5, sp, 144
  ADD s0, t5, s2
  ADDI s1, zero, 29
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 19
  MULW s2, s0, s1
  ADDI t6, sp, 144
  ADD s0, t6, s2
  ADDI s1, zero, 68
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 20
  MULW s2, s0, s1
  ADDI t5, sp, 144
  ADD s0, t5, s2
  ADDI s1, zero, 929
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 21
  MULW s2, s0, s1
  ADDI t6, sp, 144
  ADD s0, t6, s2
  ADDI s1, zero, 756
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 22
  MULW s2, s0, s1
  ADDI t5, sp, 144
  ADD s0, t5, s2
  ADDI s1, zero, 452
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 23
  MULW s2, s0, s1
  ADDI t6, sp, 144
  ADD s0, t6, s2
  ADDI s1, zero, 279
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 24
  MULW s2, s0, s1
  ADDI t5, sp, 144
  ADD s0, t5, s2
  ADDI s1, zero, 58
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 25
  MULW s2, s0, s1
  ADDI t6, sp, 144
  ADD s0, t6, s2
  ADDI s1, zero, 87
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 26
  MULW s2, s0, s1
  ADDI t5, sp, 144
  ADD s0, t5, s2
  ADDI s1, zero, 96
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 27
  MULW s2, s0, s1
  ADDI t6, sp, 144
  ADD s0, t6, s2
  ADDI s1, zero, 36
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 28
  MULW s2, s0, s1
  ADDI t5, sp, 144
  ADD s0, t5, s2
  ADDI s1, zero, 39
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 29
  MULW s2, s0, s1
  ADDI t6, sp, 144
  ADD s0, t6, s2
  ADDI s1, zero, 28
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 30
  MULW s2, s0, s1
  ADDI t5, sp, 144
  ADD s0, t5, s2
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 31
  MULW s2, s0, s1
  ADDI t6, sp, 144
  ADD s0, t6, s2
  ADDI s1, zero, 290
  SW s1, 0(s0)
  ADDI a0, sp, 144
  ADD a0, a0, zero
  ADDI a1, sp, 16
  ADD a1, a1, zero
  CALL arrCopy
  ADD s0, a0, zero
  SW s0, 8(sp)
  ADDI a0, sp, 16
  ADD a0, a0, zero
  CALL revert
  ADD s0, a0, zero
  SW s0, 8(sp)
  SW zero, 0(sp)
  JAL zero, bb67
bb67:
  LW s0, 0(sp)
  SLTI s1, s0, 32
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb68
  JAL zero, bb69
bb68:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 16
  ADD s0, t5, s2
  LW s1, 0(s0)
  SW s1, 8(sp)
  ADD a0, s1, zero
  CALL putint
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb67
bb69:
  ADDI a0, sp, 16
  ADD a0, a0, zero
  CALL bubblesort
  ADD s0, a0, zero
  SW s0, 8(sp)
  SW zero, 0(sp)
  JAL zero, bb70
bb70:
  LW s0, 0(sp)
  SLTI s1, s0, 32
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb71
  JAL zero, bb72
bb71:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t6, sp, 16
  ADD s0, t6, s2
  LW s1, 0(s0)
  SW s1, 8(sp)
  ADD a0, s1, zero
  CALL putint
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb70
bb72:
  ADDI a0, sp, 16
  ADD a0, a0, zero
  CALL getMid
  ADD s0, a0, zero
  SW s0, 8(sp)
  ADD a0, s0, zero
  CALL putint
  ADDI a0, sp, 16
  ADD a0, a0, zero
  CALL getMost
  ADD s0, a0, zero
  SW s0, 8(sp)
  ADD a0, s0, zero
  CALL putint
  ADDI a0, sp, 144
  ADD a0, a0, zero
  ADDI a1, sp, 16
  ADD a1, a1, zero
  CALL arrCopy
  ADD s0, a0, zero
  SW s0, 8(sp)
  ADDI a0, sp, 16
  ADD a0, a0, zero
  CALL bubblesort
  ADD s0, a0, zero
  SW s0, 8(sp)
  SW zero, 0(sp)
  JAL zero, bb73
bb73:
  LW s0, 0(sp)
  SLTI s1, s0, 32
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb74
  JAL zero, bb75
bb74:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 16
  ADD s0, t5, s2
  LW s1, 0(s0)
  SW s1, 8(sp)
  ADD a0, s1, zero
  CALL putint
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb73
bb75:
  ADDI a0, sp, 144
  ADD a0, a0, zero
  ADDI a1, sp, 16
  ADD a1, a1, zero
  CALL arrCopy
  ADD s0, a0, zero
  SW s0, 8(sp)
  ADDI a0, sp, 16
  ADD a0, a0, zero
  CALL insertsort
  ADD s0, a0, zero
  SW s0, 8(sp)
  SW zero, 0(sp)
  JAL zero, bb76
bb76:
  LW s0, 0(sp)
  SLTI s1, s0, 32
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb77
  JAL zero, bb78
bb77:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t6, sp, 16
  ADD s0, t6, s2
  LW s1, 0(s0)
  SW s1, 8(sp)
  ADD a0, s1, zero
  CALL putint
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb76
bb78:
  ADDI a0, sp, 144
  ADD a0, a0, zero
  ADDI a1, sp, 16
  ADD a1, a1, zero
  CALL arrCopy
  ADD s0, a0, zero
  SW s0, 8(sp)
  SW zero, 0(sp)
  ADDI s0, zero, 31
  SW s0, 8(sp)
  ADDI a0, sp, 16
  ADD a0, a0, zero
  ADD a1, zero, zero
  ADDI a2, zero, 31
  CALL QuickSort
  ADD s0, a0, zero
  SW s0, 8(sp)
  JAL zero, bb79
bb79:
  LW s0, 0(sp)
  SLTI s1, s0, 32
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb80
  JAL zero, bb81
bb80:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 16
  ADD s0, t5, s2
  LW s1, 0(s0)
  SW s1, 8(sp)
  ADD a0, s1, zero
  CALL putint
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb79
bb81:
  ADDI a0, sp, 144
  ADD a0, a0, zero
  ADDI a1, sp, 16
  ADD a1, a1, zero
  CALL arrCopy
  ADD s0, a0, zero
  SW s0, 8(sp)
  ADDI a0, sp, 16
  ADD a0, a0, zero
  ADDI a1, zero, 4
  CALL calSum
  ADD s0, a0, zero
  SW s0, 8(sp)
  SW zero, 0(sp)
  JAL zero, bb82
bb82:
  LW s0, 0(sp)
  SLTI s1, s0, 32
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb83
  JAL zero, bb84
bb83:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t6, sp, 16
  ADD s0, t6, s2
  LW s1, 0(s0)
  SW s1, 8(sp)
  ADD a0, s1, zero
  CALL putint
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb82
bb84:
  ADDI a0, sp, 144
  ADD a0, a0, zero
  ADDI a1, sp, 16
  ADD a1, a1, zero
  CALL arrCopy
  ADD s0, a0, zero
  SW s0, 8(sp)
  ADDI a0, sp, 16
  ADD a0, a0, zero
  ADDI a1, zero, 3
  CALL avgPooling
  ADD s0, a0, zero
  SW s0, 8(sp)
  SW zero, 0(sp)
  JAL zero, bb85
bb85:
  LW s0, 0(sp)
  SLTI s1, s0, 32
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb86
  JAL zero, bb87
bb86:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 16
  ADD s0, t5, s2
  LW s1, 0(s0)
  SW s1, 8(sp)
  ADD a0, s1, zero
  CALL putint
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb85
bb87:
  ADD a0, zero, zero
  LD ra, 272(sp)
  LD s2, 280(sp)
  LD s1, 288(sp)
  LD s0, 296(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
calSum:
  ADDI sp, sp, -80
  SD ra, 24(sp)
  SD s4, 32(sp)
  SD s3, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  SD s0, 64(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s1, 16(sp)
  SW zero, 8(sp)
  SW zero, 0(sp)
  JAL zero, bb89
bb89:
  LW s1, 0(sp)
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb90
  JAL zero, bb91
bb90:
  LW s1, 8(sp)
  LW s2, 0(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s3, 0(s2)
  ADDW s2, s1, s3
  SW s2, 8(sp)
  LW s1, 0(sp)
  LW s2, 16(sp)
  REMW s3, s1, s2
  LW s1, 16(sp)
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  XOR s1, s3, s4
  SLTU s2, zero, s1
  BNE s2, zero, bb92
  JAL zero, bb94
bb91:
  ADD a0, zero, zero
  LD ra, 24(sp)
  LD s4, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb92:
  LW s1, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  SW zero, 0(s1)
  JAL zero, bb93
bb93:
  LW s1, 0(sp)
  ADDIW s2, s1, 1
  SW s2, 0(sp)
  JAL zero, bb89
bb94:
  LW s1, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 8(sp)
  SW s2, 0(s1)
  SW zero, 8(sp)
  JAL zero, bb93
bubblesort:
  ADDI sp, sp, -80
  SD ra, 24(sp)
  SD s4, 32(sp)
  SD s3, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  SD s5, 64(sp)
  SD s0, 72(sp)
  ADD s0, a0, zero
  SW zero, 16(sp)
  JAL zero, bb96
bb96:
  LW s1, 16(sp)
  LA s2, n
  LW s3, 0(s2)
  ADDI s2, zero, 1
  SUBW s4, s3, s2
  SLT s2, s1, s4
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb97
  JAL zero, bb98
bb97:
  SW zero, 8(sp)
  JAL zero, bb99
bb98:
  ADD a0, zero, zero
  LD ra, 24(sp)
  LD s4, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s5, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb99:
  LW s1, 8(sp)
  LA s2, n
  LW s3, 0(s2)
  LW s2, 16(sp)
  SUBW s4, s3, s2
  ADDI s2, zero, 1
  SUBW s3, s4, s2
  SLT s2, s1, s3
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb100
  JAL zero, bb101
bb100:
  LW s1, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 0(s1)
  LW s1, 8(sp)
  ADDIW s3, s1, 1
  ADDI s1, zero, 4
  MULW s4, s3, s1
  ADD s1, s0, s4
  LW s3, 0(s1)
  SLT s1, s3, s2
  BNE s1, zero, bb102
  JAL zero, bb103
bb101:
  LW s1, 16(sp)
  ADDIW s2, s1, 1
  SW s2, 16(sp)
  JAL zero, bb96
bb102:
  LW s1, 8(sp)
  ADDIW s2, s1, 1
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  LW s2, 0(s1)
  SW s2, 0(sp)
  LW s1, 8(sp)
  ADDIW s3, s1, 1
  ADDI s1, zero, 4
  MULW s4, s3, s1
  ADD s1, s0, s4
  LW s3, 8(sp)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s0, s5
  LW s4, 0(s3)
  SW s4, 0(s1)
  LW s1, 8(sp)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADD s1, s0, s4
  SW s2, 0(s1)
  JAL zero, bb103
bb103:
  LW s1, 8(sp)
  ADDIW s2, s1, 1
  SW s2, 8(sp)
  JAL zero, bb99
