.global median
.global swap
.global main
.global meanless_calculation
.section .bss
a:
.space 40000000

.section .data

n:
.word 0x00000000
.section .text
median:
  ADDI sp, sp, -96
  SD ra, 56(sp)
  SD s3, 64(sp)
  SD s2, 72(sp)
  SD s1, 80(sp)
  SD s0, 88(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  SW s1, 48(sp)
  SW s2, 40(sp)
  SW s3, 32(sp)
  LW s1, 48(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 0(s1)
  SW s2, 24(sp)
  LW s1, 48(sp)
  SW s1, 16(sp)
  LW s1, 40(sp)
  ADDIW s2, s1, 1
  SW s2, 8(sp)
  ADDI s1, zero, 0
  SW s1, 0(sp)
  JAL zero, bb1
bb1:
  ADDI s1, zero, 1
  XORI s2, s1, 1
  SLTIU s1, s2, 1
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  JAL zero, bb4
bb3:
  LW s1, 48(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 24(sp)
  SW s2, 0(s1)
  LW s1, 48(sp)
  LW s2, 16(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL swap
  ADD s1, a0, zero
  LW s1, 16(sp)
  LW s2, 32(sp)
  SLT s3, s2, s1
  BNE s3, zero, bb17
  JAL zero, bb18
bb4:
  LW s1, 16(sp)
  LW s2, 8(sp)
  SLT s3, s1, s2
  XOR s1, s3, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb5
  JAL zero, bb6
bb5:
  LW s1, 8(sp)
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  SW s3, 8(sp)
  ADDI s1, zero, 4
  MULW s2, s3, s1
  ADD s1, s0, s2
  LW s2, 0(s1)
  LW s1, 24(sp)
  SLT s3, s2, s1
  BNE s3, zero, bb7
  JAL zero, bb8
bb6:
  JAL zero, bb9
bb7:
  JAL zero, bb6
bb8:
  LW s1, 0(sp)
  ADDIW s2, s1, 1
  SW s2, 0(sp)
  JAL zero, bb4
bb9:
  LW s1, 16(sp)
  LW s2, 8(sp)
  SLT s3, s1, s2
  XOR s1, s3, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb10
  JAL zero, bb11
bb10:
  LW s1, 16(sp)
  ADDIW s2, s1, 1
  SW s2, 16(sp)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  LW s2, 0(s1)
  LW s1, 24(sp)
  SLT s3, s2, s1
  XORI s1, s3, 1
  BNE s1, zero, bb12
  JAL zero, bb13
bb11:
  LW s1, 16(sp)
  LW s2, 8(sp)
  XOR s3, s1, s2
  SLTIU s1, s3, 1
  BNE s1, zero, bb14
  JAL zero, bb16
bb12:
  JAL zero, bb11
bb13:
  LW s1, 0(sp)
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  SW s3, 0(sp)
  JAL zero, bb9
bb14:
  JAL zero, bb3
bb15:
  JAL zero, bb1
bb16:
  LW s1, 16(sp)
  LW s2, 8(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  CALL swap
  ADD s1, a0, zero
  JAL zero, bb15
bb17:
  LW s1, 48(sp)
  LW s2, 16(sp)
  LW s3, 32(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  CALL median
  ADD s1, a0, zero
  ADD a0, s1, zero
  LD ra, 56(sp)
  LD s3, 64(sp)
  LD s2, 72(sp)
  LD s1, 80(sp)
  LD s0, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb18:
  LW s1, 16(sp)
  LW s2, 32(sp)
  SLT s3, s1, s2
  BNE s3, zero, bb19
  JAL zero, bb20
bb19:
  LW s1, 16(sp)
  ADDIW s2, s1, 1
  LW s1, 40(sp)
  LW s3, 32(sp)
  ADD a0, s0, zero
  ADD a1, s2, zero
  ADD a2, s1, zero
  ADD a3, s3, zero
  CALL median
  ADD s1, a0, zero
  ADD a0, s1, zero
  LD ra, 56(sp)
  LD s3, 64(sp)
  LD s2, 72(sp)
  LD s1, 80(sp)
  LD s0, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb20:
  LW s1, 0(sp)
  ADD a0, s1, zero
  LD ra, 56(sp)
  LD s3, 64(sp)
  LD s2, 72(sp)
  LD s1, 80(sp)
  LD s0, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
swap:
  ADDI sp, sp, -80
  SD ra, 24(sp)
  SD s4, 32(sp)
  SD s3, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  SD s0, 64(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  SW s1, 16(sp)
  SW s2, 8(sp)
  LW s1, 16(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 0(s1)
  SW s2, 0(sp)
  LW s1, 16(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 8(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s3, 0(s2)
  SW s3, 0(s1)
  LW s1, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s0, 0(sp)
  SW s0, 0(s1)
  LW s0, 16(sp)
  LW s1, 8(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL meanless_calculation
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 24(sp)
  LD s4, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  LA s0, a
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  LA s1, n
  SW s0, 0(s1)
  ADDI a0, zero, 59
  CALL _sysy_starttime
  LA s0, n
  LW s1, 0(s0)
  ADDI s0, zero, 1
  SUBW s2, s1, s0
  LA s0, n
  LW s1, 0(s0)
  ADDI s0, zero, 2
  DIVW s3, s1, s0
  LA s0, a
  ADD a0, s0, zero
  ADD a1, zero, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  CALL median
  ADD s0, a0, zero
  ADDI a0, zero, 61
  CALL _sysy_stoptime
  LA s0, n
  LW s1, 0(s0)
  ADD a0, s1, zero
  LA s0, a
  ADD a1, s0, zero
  CALL putarray
  LA s0, n
  LW s1, 0(s0)
  ADDI s0, zero, 2
  DIVW s2, s1, s0
  ADDI s0, zero, 4
  MULW s1, s2, s0
  LA s0, a
  ADD s2, s0, s1
  LW s0, 0(s2)
  ADDI s1, zero, 256
  REMW s2, s0, s1
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
meanless_calculation:
  ADDI sp, sp, -80
  SD ra, 40(sp)
  SD s3, 48(sp)
  SD s2, 56(sp)
  SD s1, 64(sp)
  SD s0, 72(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 32(sp)
  SW s1, 24(sp)
  SW zero, 16(sp)
  SW zero, 8(sp)
  JAL zero, bb24
bb24:
  LW s0, 16(sp)
  LW s1, 32(sp)
  SLT s2, s0, s1
  BNE s2, zero, bb27
  JAL zero, bb28
bb25:
  LW s0, 16(sp)
  ADDIW s1, s0, 1
  SW s1, 16(sp)
  LW s0, 8(sp)
  LW s2, 32(sp)
  ADDW s3, s0, s2
  ADDW s0, s3, s1
  SW s0, 8(sp)
  JAL zero, bb24
bb26:
  LW s0, 8(sp)
  ADD a0, s0, zero
  LD ra, 40(sp)
  LD s3, 48(sp)
  LD s2, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb27:
  LW s0, 16(sp)
  LW s1, 24(sp)
  SLT s2, s0, s1
  SB s2, 0(sp)
  JAL zero, bb29
bb28:
  SB zero, 0(sp)
  JAL zero, bb29
bb29:
  LB s0, 0(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb25
  JAL zero, bb26
