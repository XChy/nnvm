.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -48
  SD s4, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD ra, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADDI s0, zero, 5
  SLTI s1, s0, 6
  BNE s1, zero, bb1
  JAL zero, bb2
bb1:
  ADDI s0, zero, 1
  JAL zero, bb3
bb2:
  ADD s0, zero, zero
  JAL zero, bb3
bb3:
  ADD s1, s0, zero
  BNE s1, zero, bb4
  JAL zero, bb5
bb4:
  JAL zero, bb6
bb5:
  ADDI a0, zero, 1
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD ra, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb6:
  ADDI s1, zero, 1
  JAL zero, bb7
bb7:
  ADD s2, s1, zero
  BNE s2, zero, bb8
  JAL zero, bb9
bb8:
  JAL zero, bb10
bb9:
  ADDI a0, zero, 2
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD ra, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb10:
  ADD s1, zero, zero
  JAL zero, bb11
bb11:
  ADD s2, s1, zero
  BNE s2, zero, bb12
  JAL zero, bb13
bb12:
  ADDI a0, zero, 3
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD ra, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb13:
  ADDI s1, zero, 6
  ADDI s2, zero, 3
  REMW s3, s1, s2
  XOR s1, s3, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb14
  JAL zero, bb15
bb14:
  ADDI s1, zero, 1
  JAL zero, bb16
bb15:
  ADD s1, zero, zero
  JAL zero, bb16
bb16:
  ADD s2, s1, zero
  BNE s2, zero, bb17
  JAL zero, bb18
bb17:
  ADDI a0, zero, 4
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD ra, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb18:
  ADDI s2, zero, 4
  ADDI s3, zero, 2
  DIVW s4, s2, s3
  ADDIW s2, s4, 1
  SLTI s3, s2, 2
  XORI s2, s3, 1
  BNE s2, zero, bb19
  JAL zero, bb20
bb19:
  ADDI s2, zero, -1
  SLT s3, s2, zero
  XORI s2, s3, 1
  BNE s2, zero, bb21
  JAL zero, bb22
bb20:
  ADDI a0, zero, 5
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD ra, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb21:
  ADDI s2, zero, 1
  JAL zero, bb23
bb22:
  ADDI s3, zero, 4
  SLTI s4, s3, 4
  XOR s3, s4, zero
  SLTU s4, zero, s3
  ADD s2, s4, zero
  JAL zero, bb23
bb23:
  ADD s3, s2, zero
  BNE s3, zero, bb24
  JAL zero, bb25
bb24:
  ADDI a0, zero, 6
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD ra, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb25:
  JAL zero, bb26
bb26:
  ADDI s3, zero, 10
  SLTI s4, s3, 22
  BNE s4, zero, bb27
  JAL zero, bb28
bb27:
  ADDI s3, zero, 1
  XORI s4, s3, 1
  ADD s3, s4, zero
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb29
  JAL zero, bb30
bb28:
  ADDI a0, zero, 8
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD ra, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb29:
  ADDI a0, zero, 9
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD ra, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb30:
  ADDI a0, zero, 10
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD ra, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
