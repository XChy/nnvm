.global main
.section .bss
y:
.space 864000000
x:
.space 864000000
.section .data


.section .text
main:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD s9, 16(sp)
  SD s0, 24(sp)
  SD s5, 32(sp)
  SD s7, 40(sp)
  SD s1, 48(sp)
  SD s6, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s8, 88(sp)
  SD ra, 96(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s1, a0, zero
  ADDI a0, zero, 13
  CALL _sysy_starttime
  ADD s2, zero, zero
  JAL zero, bb1
bb1:
  SLT s3, s2, s0
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb2
  JAL zero, bb3
bb2:
  ADD s3, zero, zero
  JAL zero, bb4
bb3:
  ADDI s2, zero, 1
  ADDI s3, zero, 1
  JAL zero, bb10
bb4:
  SLT s4, s3, s0
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb5
  JAL zero, bb6
bb5:
  ADD s4, zero, zero
  JAL zero, bb7
bb6:
  ADDIW s3, s2, 1
  ADD s2, s3, zero
  JAL zero, bb1
bb7:
  SLT s5, s4, s0
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb8
  JAL zero, bb9
bb8:
  LUI s5, 352
  ADDI s5, s5, -1792
  MULW s6, s2, s5
  LA s5, x
  ADD s7, s5, s6
  LUI s5, 1
  ADDI s5, s5, -1696
  MULW s6, s3, s5
  ADD s5, s7, s6
  ADDI s6, zero, 4
  MULW s7, s4, s6
  ADD s6, s5, s7
  ADDI s5, zero, 1
  SW s5, 0(s6)
  LUI s5, 352
  ADDI s5, s5, -1792
  MULW s6, s2, s5
  LA s5, y
  ADD s7, s5, s6
  LUI s5, 1
  ADDI s5, s5, -1696
  MULW s6, s3, s5
  ADD s5, s7, s6
  ADDI s6, zero, 4
  MULW s7, s4, s6
  ADD s6, s5, s7
  SW zero, 0(s6)
  ADDIW s5, s4, 1
  ADD s4, s5, zero
  JAL zero, bb7
bb9:
  ADDIW s4, s3, 1
  ADD s3, s4, zero
  JAL zero, bb4
bb10:
  ADDI s4, zero, 1
  SUBW s5, s0, s4
  SLT s4, s2, s5
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb11
  JAL zero, bb12
bb11:
  ADDI s4, zero, 1
  JAL zero, bb13
bb12:
  ADDI a0, zero, 53
  CALL _sysy_stoptime
  LUI s1, 352
  ADDI s1, s1, -1792
  MULW s4, zero, s1
  LA s1, x
  ADD s5, s1, s4
  LUI s1, 1
  ADDI s1, s1, -1696
  MULW s4, zero, s1
  ADD s1, s5, s4
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL putarray
  ADDI s1, zero, 2
  DIVW s4, s0, s1
  LUI s1, 352
  ADDI s1, s1, -1792
  MULW s5, s4, s1
  LA s1, x
  ADD s4, s1, s5
  ADDI s1, zero, 2
  DIVW s5, s0, s1
  LUI s1, 1
  ADDI s1, s1, -1696
  MULW s6, s5, s1
  ADD s1, s4, s6
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL putarray
  ADDI s1, zero, 1
  SUBW s4, s2, s1
  LUI s1, 352
  ADDI s1, s1, -1792
  MULW s2, s4, s1
  LA s1, x
  ADD s4, s1, s2
  ADDI s1, zero, 1
  SUBW s2, s3, s1
  LUI s1, 1
  ADDI s1, s1, -1696
  MULW s3, s2, s1
  ADD s1, s4, s3
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL putarray
  ADD a0, zero, zero
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  LD s0, 24(sp)
  LD s5, 32(sp)
  LD s7, 40(sp)
  LD s1, 48(sp)
  LD s6, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s8, 88(sp)
  LD ra, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb13:
  ADDI s5, zero, 1
  SUBW s6, s0, s5
  SLT s5, s4, s6
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb14
  JAL zero, bb15
bb14:
  ADDI s5, zero, 1
  JAL zero, bb16
bb15:
  ADDIW s5, s2, 1
  ADD s2, s5, zero
  ADD s3, s4, zero
  JAL zero, bb10
bb16:
  ADDI s6, zero, 1
  SUBW s7, s0, s6
  SLT s6, s5, s7
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb17
  JAL zero, bb18
bb17:
  LUI s6, 352
  ADDI s6, s6, -1792
  MULW s7, s2, s6
  LA s6, x
  ADD s8, s6, s7
  LUI s6, 1
  ADDI s6, s6, -1696
  MULW s7, s4, s6
  ADD s6, s8, s7
  ADDI s7, zero, 4
  MULW s8, s5, s7
  ADD s7, s6, s8
  ADDI s6, zero, 1
  SUBW s8, s2, s6
  LUI s6, 352
  ADDI s6, s6, -1792
  MULW s9, s8, s6
  LA s6, x
  ADD s8, s6, s9
  LUI s6, 1
  ADDI s6, s6, -1696
  MULW s9, s4, s6
  ADD s6, s8, s9
  ADDI s8, zero, 4
  MULW s9, s5, s8
  ADD s8, s6, s9
  LW s6, 0(s8)
  ADDIW s8, s2, 1
  LUI s9, 352
  ADDI s9, s9, -1792
  MULW s10, s8, s9
  LA s8, x
  ADD s9, s8, s10
  LUI s8, 1
  ADDI s8, s8, -1696
  MULW s10, s4, s8
  ADD s8, s9, s10
  ADDI s9, zero, 4
  MULW s10, s5, s9
  ADD s9, s8, s10
  LW s8, 0(s9)
  ADDW s9, s6, s8
  LUI s6, 352
  ADDI s6, s6, -1792
  MULW s8, s2, s6
  LA s6, x
  ADD s10, s6, s8
  ADDI s6, zero, 1
  SUBW s8, s4, s6
  LUI s6, 1
  ADDI s6, s6, -1696
  MULW s11, s8, s6
  ADD s6, s10, s11
  ADDI s8, zero, 4
  MULW s10, s5, s8
  ADD s8, s6, s10
  LW s6, 0(s8)
  ADDW s8, s9, s6
  LUI s6, 352
  ADDI s6, s6, -1792
  MULW s9, s2, s6
  LA s6, x
  ADD s10, s6, s9
  ADDIW s6, s4, 1
  LUI s9, 1
  ADDI s9, s9, -1696
  MULW s11, s6, s9
  ADD s6, s10, s11
  ADDI s9, zero, 4
  MULW s10, s5, s9
  ADD s9, s6, s10
  LW s6, 0(s9)
  ADDW s9, s8, s6
  LUI s6, 352
  ADDI s6, s6, -1792
  MULW s8, s2, s6
  LA s6, x
  ADD s10, s6, s8
  LUI s6, 1
  ADDI s6, s6, -1696
  MULW s8, s4, s6
  ADD s6, s10, s8
  ADDI s8, zero, 1
  SUBW s10, s5, s8
  ADDI s8, zero, 4
  MULW s11, s10, s8
  ADD s8, s6, s11
  LW s6, 0(s8)
  ADDW s8, s9, s6
  LUI s6, 352
  ADDI s6, s6, -1792
  MULW s9, s2, s6
  LA s6, x
  ADD s10, s6, s9
  LUI s6, 1
  ADDI s6, s6, -1696
  MULW s9, s4, s6
  ADD s6, s10, s9
  ADDIW s9, s5, 1
  ADDI s10, zero, 4
  MULW s11, s9, s10
  ADD s9, s6, s11
  LW s6, 0(s9)
  ADDW s9, s8, s6
  DIVW s6, s9, s1
  SW s6, 0(s7)
  ADDIW s6, s5, 1
  ADD s5, s6, zero
  JAL zero, bb16
bb18:
  ADDIW s5, s4, 1
  ADD s4, s5, zero
  JAL zero, bb13
