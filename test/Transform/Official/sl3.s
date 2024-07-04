.global main
.section .bss
y:
.space 864000000
x:
.space 864000000
.section .data


.section .text
main:
  ADDI sp, sp, -96
  SD ra, 40(sp)
  SD s4, 48(sp)
  SD s3, 56(sp)
  SD s2, 64(sp)
  SD s1, 72(sp)
  SD s5, 80(sp)
  SD s0, 88(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 8(sp)
  ADDI a0, zero, 13
  CALL _sysy_starttime
  ADDI s0, zero, 0
  SW s0, 32(sp)
  ADDI s0, zero, 0
  SW s0, 24(sp)
  ADDI s0, zero, 0
  SW s0, 16(sp)
  JAL zero, bb1
bb1:
  LW s0, 32(sp)
  LW s1, 0(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s0, zero, 0
  SW s0, 24(sp)
  ADDI s0, zero, 0
  SW s0, 16(sp)
  JAL zero, bb4
bb3:
  ADDI s0, zero, 1
  SW s0, 32(sp)
  ADDI s0, zero, 1
  SW s0, 24(sp)
  ADDI s0, zero, 1
  SW s0, 16(sp)
  JAL zero, bb10
bb4:
  LW s0, 24(sp)
  LW s1, 0(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s0, zero, 0
  SW s0, 16(sp)
  JAL zero, bb7
bb6:
  LW s0, 32(sp)
  ADDIW s1, s0, 1
  SW s1, 32(sp)
  JAL zero, bb1
bb7:
  LW s0, 16(sp)
  LW s1, 0(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb8
  JAL zero, bb9
bb8:
  LW s0, 32(sp)
  LUI s1, 352
  ADDI s1, s1, -1792
  MULW s2, s0, s1
  LA s0, x
  ADD s1, s0, s2
  LW s0, 24(sp)
  LUI s2, 1
  ADDI s2, s2, -1696
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 16(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LW s0, 32(sp)
  LUI s1, 352
  ADDI s1, s1, -1792
  MULW s2, s0, s1
  LA s0, y
  ADD s1, s0, s2
  LW s0, 24(sp)
  LUI s2, 1
  ADDI s2, s2, -1696
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 16(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  ADDI s0, zero, 0
  SW s0, 0(s1)
  LW s0, 16(sp)
  ADDIW s1, s0, 1
  SW s1, 16(sp)
  JAL zero, bb7
bb9:
  LW s0, 24(sp)
  ADDIW s1, s0, 1
  SW s1, 24(sp)
  JAL zero, bb4
bb10:
  LW s0, 32(sp)
  LW s1, 0(sp)
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  SLT s1, s0, s3
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb11
  JAL zero, bb12
bb11:
  ADDI s0, zero, 1
  SW s0, 24(sp)
  ADDI s0, zero, 1
  SW s0, 16(sp)
  JAL zero, bb13
bb12:
  ADDI a0, zero, 53
  CALL _sysy_stoptime
  LW s0, 0(sp)
  LUI s1, 352
  ADDI s1, s1, -1792
  MULW s2, s1, zero
  LA s1, x
  ADD s3, s1, s2
  LUI s1, 1
  ADDI s1, s1, -1696
  MULW s2, zero, s1
  ADD s1, s3, s2
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL putarray
  LW s0, 0(sp)
  LW s1, 0(sp)
  ADDI s2, zero, 2
  DIVW s3, s1, s2
  LUI s1, 352
  ADDI s1, s1, -1792
  MULW s2, s3, s1
  LA s1, x
  ADD s3, s1, s2
  LW s1, 0(sp)
  ADDI s2, zero, 2
  DIVW s4, s1, s2
  LUI s1, 1
  ADDI s1, s1, -1696
  MULW s2, s4, s1
  ADD s1, s3, s2
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL putarray
  LW s0, 0(sp)
  LW s1, 32(sp)
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  LUI s1, 352
  ADDI s1, s1, -1792
  MULW s2, s3, s1
  LA s1, x
  ADD s3, s1, s2
  LW s1, 24(sp)
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  LUI s1, 1
  ADDI s1, s1, -1696
  MULW s2, s4, s1
  ADD s1, s3, s2
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s4, 48(sp)
  LD s3, 56(sp)
  LD s2, 64(sp)
  LD s1, 72(sp)
  LD s5, 80(sp)
  LD s0, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb13:
  LW s0, 24(sp)
  LW s1, 0(sp)
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  SLT s1, s0, s3
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb14
  JAL zero, bb15
bb14:
  ADDI s0, zero, 1
  SW s0, 16(sp)
  JAL zero, bb16
bb15:
  LW s0, 32(sp)
  ADDIW s1, s0, 1
  SW s1, 32(sp)
  JAL zero, bb10
bb16:
  LW s0, 16(sp)
  LW s1, 0(sp)
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  SLT s1, s0, s3
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb17
  JAL zero, bb18
bb17:
  LW s0, 32(sp)
  LUI s1, 352
  ADDI s1, s1, -1792
  MULW s2, s0, s1
  LA s0, x
  ADD s1, s0, s2
  LW s0, 24(sp)
  LUI s2, 1
  ADDI s2, s2, -1696
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 16(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s0, 32(sp)
  ADDI s2, zero, 1
  SUBW s3, s0, s2
  LUI s0, 352
  ADDI s0, s0, -1792
  MULW s2, s3, s0
  LA s0, x
  ADD s3, s0, s2
  LW s0, 24(sp)
  LUI s2, 1
  ADDI s2, s2, -1696
  MULW s4, s0, s2
  ADD s0, s3, s4
  LW s2, 16(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s0, 0(s2)
  LW s2, 32(sp)
  ADDIW s3, s2, 1
  LUI s2, 352
  ADDI s2, s2, -1792
  MULW s4, s3, s2
  LA s2, x
  ADD s3, s2, s4
  LW s2, 24(sp)
  LUI s4, 1
  ADDI s4, s4, -1696
  MULW s5, s2, s4
  ADD s2, s3, s5
  LW s3, 16(sp)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s2, s5
  LW s2, 0(s3)
  ADDW s3, s0, s2
  LW s0, 32(sp)
  LUI s2, 352
  ADDI s2, s2, -1792
  MULW s4, s0, s2
  LA s0, x
  ADD s2, s0, s4
  LW s0, 24(sp)
  ADDI s4, zero, 1
  SUBW s5, s0, s4
  LUI s0, 1
  ADDI s0, s0, -1696
  MULW s4, s5, s0
  ADD s0, s2, s4
  LW s2, 16(sp)
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s2, s0, s5
  LW s0, 0(s2)
  ADDW s2, s3, s0
  LW s0, 32(sp)
  LUI s3, 352
  ADDI s3, s3, -1792
  MULW s4, s0, s3
  LA s0, x
  ADD s3, s0, s4
  LW s0, 24(sp)
  ADDIW s4, s0, 1
  LUI s0, 1
  ADDI s0, s0, -1696
  MULW s5, s4, s0
  ADD s0, s3, s5
  LW s3, 16(sp)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s0, s5
  LW s0, 0(s3)
  ADDW s3, s2, s0
  LW s0, 32(sp)
  LUI s2, 352
  ADDI s2, s2, -1792
  MULW s4, s0, s2
  LA s0, x
  ADD s2, s0, s4
  LW s0, 24(sp)
  LUI s4, 1
  ADDI s4, s4, -1696
  MULW s5, s0, s4
  ADD s0, s2, s5
  LW s2, 16(sp)
  ADDI s4, zero, 1
  SUBW s5, s2, s4
  ADDI s2, zero, 4
  MULW s4, s5, s2
  ADD s2, s0, s4
  LW s0, 0(s2)
  ADDW s2, s3, s0
  LW s0, 32(sp)
  LUI s3, 352
  ADDI s3, s3, -1792
  MULW s4, s0, s3
  LA s0, x
  ADD s3, s0, s4
  LW s0, 24(sp)
  LUI s4, 1
  ADDI s4, s4, -1696
  MULW s5, s0, s4
  ADD s0, s3, s5
  LW s3, 16(sp)
  ADDIW s4, s3, 1
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADD s3, s0, s5
  LW s0, 0(s3)
  ADDW s3, s2, s0
  LW s0, 8(sp)
  DIVW s2, s3, s0
  SW s2, 0(s1)
  LW s0, 16(sp)
  ADDIW s1, s0, 1
  SW s1, 16(sp)
  JAL zero, bb16
bb18:
  LW s0, 24(sp)
  ADDIW s1, s0, 1
  SW s1, 24(sp)
  JAL zero, bb13
