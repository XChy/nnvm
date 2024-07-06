.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -80
  SD s4, 0(sp)
  SD s3, 8(sp)
  SD ra, 16(sp)
  SD s7, 24(sp)
  SD s2, 32(sp)
  SD s6, 40(sp)
  SD s1, 48(sp)
  SD s5, 56(sp)
  SD s0, 64(sp)
  ADDI s0, zero, 2
  ADDI s1, zero, 1
  MULW s2, s0, s1
  ADDIW s0, s2, 3
  SLTI s1, s0, 6
  BNE s1, zero, bb1
  JAL zero, bb2
bb1:
  ADDI s0, zero, 0
  XORI s1, s0, 4
  SLTU s0, zero, s1
  ADD s1, s0, zero
  JAL zero, bb3
bb2:
  ADD s1, zero, zero
  JAL zero, bb3
bb3:
  ADD s0, s1, zero
  BNE s0, zero, bb4
  JAL zero, bb6
bb4:
  ADDI s0, zero, 0
  XORI s2, s0, 5
  SLTU s0, zero, s2
  BNE s0, zero, bb7
  JAL zero, bb8
bb5:
bb6:
  ADDI a0, zero, 1
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD ra, 16(sp)
  LD s7, 24(sp)
  LD s2, 32(sp)
  LD s6, 40(sp)
  LD s1, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb7:
  ADDI s0, zero, 1
  JAL zero, bb9
bb8:
  ADDI s2, zero, 0
  XORI s3, s2, 1
  SLTU s2, zero, s3
  XORI s3, s2, 1
  ADD s2, s3, zero
  ADDW s3, s2, zero
  XOR s2, s3, zero
  SLTU s3, zero, s2
  XOR s2, s3, zero
  SLTU s3, zero, s2
  ADD s0, s3, zero
  JAL zero, bb9
bb9:
  ADD s2, s0, zero
  BNE s2, zero, bb10
  JAL zero, bb12
bb10:
  ADDI s2, zero, 2
  XORI s3, s2, 3
  SLTIU s2, s3, 1
  BNE s2, zero, bb13
  JAL zero, bb14
bb11:
  JAL zero, bb5
bb12:
  ADDI a0, zero, 2
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD ra, 16(sp)
  LD s7, 24(sp)
  LD s2, 32(sp)
  LD s6, 40(sp)
  LD s1, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb13:
  ADDI s2, zero, 2
  SLTI s3, s2, 9
  ADD s2, s3, zero
  JAL zero, bb15
bb14:
  ADD s2, zero, zero
  JAL zero, bb15
bb15:
  ADD s3, s2, zero
  BNE s3, zero, bb16
  JAL zero, bb18
bb16:
  ADDI a0, zero, 3
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD ra, 16(sp)
  LD s7, 24(sp)
  LD s2, 32(sp)
  LD s6, 40(sp)
  LD s1, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb17:
  JAL zero, bb11
bb18:
  ADDI s3, zero, 6
  ADDI s4, zero, 3
  REMW s5, s3, s4
  XOR s3, s5, zero
  SLTU s4, zero, s3
  BNE s4, zero, bb19
  JAL zero, bb20
bb19:
  XORI s3, zero, 5
  SLTU s4, zero, s3
  ADD s3, s4, zero
  JAL zero, bb21
bb20:
  ADD s3, zero, zero
  JAL zero, bb21
bb21:
  ADD s4, s3, zero
  BNE s4, zero, bb22
  JAL zero, bb24
bb22:
  ADDI a0, zero, 4
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD ra, 16(sp)
  LD s7, 24(sp)
  LD s2, 32(sp)
  LD s6, 40(sp)
  LD s1, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb23:
  JAL zero, bb17
bb24:
  ADDI s4, zero, 4
  ADDI s5, zero, 2
  DIVW s6, s4, s5
  ADDIW s4, s6, 1
  SLTI s5, s4, 2
  XORI s4, s5, 1
  BNE s4, zero, bb25
  JAL zero, bb27
bb25:
  ADDI s4, zero, -1
  SLT s5, s4, zero
  XORI s4, s5, 1
  BNE s4, zero, bb28
  JAL zero, bb29
bb26:
  JAL zero, bb23
bb27:
  ADDI a0, zero, 5
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD ra, 16(sp)
  LD s7, 24(sp)
  LD s2, 32(sp)
  LD s6, 40(sp)
  LD s1, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb28:
  ADDI s4, zero, 1
  JAL zero, bb30
bb29:
  ADDI s5, zero, 4
  SLTI s6, s5, 4
  XOR s5, s6, zero
  SLTU s6, zero, s5
  ADD s4, s6, zero
  JAL zero, bb30
bb30:
  ADD s5, s4, zero
  BNE s5, zero, bb31
  JAL zero, bb33
bb31:
  ADDI a0, zero, 6
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD ra, 16(sp)
  LD s7, 24(sp)
  LD s2, 32(sp)
  LD s6, 40(sp)
  LD s1, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb32:
  JAL zero, bb26
bb33:
  ADDI s5, zero, 6
  XORI s6, s5, 3
  SLTU s5, zero, s6
  BNE s5, zero, bb34
  JAL zero, bb36
bb34:
  ADDI s5, zero, 4
  ADDI s6, zero, 5
  MULW s7, s5, s6
  ADDIW s5, s7, 2
  ADDI s6, zero, 10
  SLT s7, s6, s5
  BNE s7, zero, bb37
  JAL zero, bb39
bb35:
  JAL zero, bb32
bb36:
  ADDI a0, zero, 7
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD ra, 16(sp)
  LD s7, 24(sp)
  LD s2, 32(sp)
  LD s6, 40(sp)
  LD s1, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb37:
  XORI s5, zero, 6
  SLTU s6, zero, s5
  XORI s5, s6, 1
  ADD s6, s5, zero
  XOR s5, s6, zero
  SLTU s6, zero, s5
  BNE s6, zero, bb40
  JAL zero, bb42
bb38:
  JAL zero, bb35
bb39:
  ADDI a0, zero, 8
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD ra, 16(sp)
  LD s7, 24(sp)
  LD s2, 32(sp)
  LD s6, 40(sp)
  LD s1, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb40:
  ADDI a0, zero, 9
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD ra, 16(sp)
  LD s7, 24(sp)
  LD s2, 32(sp)
  LD s6, 40(sp)
  LD s1, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb41:
  JAL zero, bb38
bb42:
  ADDI a0, zero, 10
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD ra, 16(sp)
  LD s7, 24(sp)
  LD s2, 32(sp)
  LD s6, 40(sp)
  LD s1, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
