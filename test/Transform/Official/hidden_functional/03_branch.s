.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -80
  SD ra, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
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
  SB s0, 32(sp)
  JAL zero, bb3
bb2:
  ADDI s0, zero, 0
  SB s0, 32(sp)
  JAL zero, bb3
bb3:
  LB s0, 32(sp)
  BNE s0, zero, bb4
  JAL zero, bb6
bb4:
  ADDI s0, zero, 0
  XORI s1, s0, 5
  SLTU s0, zero, s1
  BNE s0, zero, bb7
  JAL zero, bb8
bb5:
bb6:
  ADDI a0, zero, 1
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb7:
  ADDI s0, zero, 1
  SB s0, 24(sp)
  JAL zero, bb9
bb8:
  ADDI s0, zero, 0
  XORI s1, s0, 1
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  ADDW s1, s0, zero
  XOR s0, s1, zero
  SLTU s1, zero, s0
  XOR s0, s1, zero
  SLTU s1, zero, s0
  SB s1, 24(sp)
  JAL zero, bb9
bb9:
  LB s0, 24(sp)
  BNE s0, zero, bb10
  JAL zero, bb12
bb10:
  ADDI s0, zero, 2
  XORI s1, s0, 3
  SLTIU s0, s1, 1
  BNE s0, zero, bb13
  JAL zero, bb14
bb11:
  JAL zero, bb5
bb12:
  ADDI a0, zero, 2
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb13:
  ADDI s0, zero, 5
  ADDIW s1, s0, 4
  ADDI s0, zero, 2
  SLT s2, s0, s1
  SB s2, 16(sp)
  JAL zero, bb15
bb14:
  SB zero, 16(sp)
  JAL zero, bb15
bb15:
  LB s0, 16(sp)
  BNE s0, zero, bb16
  JAL zero, bb18
bb16:
  ADDI a0, zero, 3
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb17:
  JAL zero, bb11
bb18:
  ADDI s0, zero, 6
  ADDI s1, zero, 3
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb19
  JAL zero, bb20
bb19:
  XORI s0, zero, 5
  SLTU s1, zero, s0
  SB s1, 8(sp)
  JAL zero, bb21
bb20:
  SB zero, 8(sp)
  JAL zero, bb21
bb21:
  LB s0, 8(sp)
  BNE s0, zero, bb22
  JAL zero, bb24
bb22:
  ADDI a0, zero, 4
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb23:
  JAL zero, bb17
bb24:
  ADDI s0, zero, 4
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  ADDIW s0, s2, 1
  SLTI s1, s0, 2
  XORI s0, s1, 1
  BNE s0, zero, bb25
  JAL zero, bb27
bb25:
  ADDI s0, zero, 5
  ADDI s1, zero, 6
  SUBW s2, s0, s1
  SLT s0, s2, zero
  XORI s1, s0, 1
  BNE s1, zero, bb28
  JAL zero, bb29
bb26:
  JAL zero, bb23
bb27:
  ADDI a0, zero, 5
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb28:
  ADDI s0, zero, 1
  SB s0, 0(sp)
  JAL zero, bb30
bb29:
  ADDI s0, zero, 4
  SLTI s1, s0, 4
  XOR s0, s1, zero
  SLTU s1, zero, s0
  SB s1, 0(sp)
  JAL zero, bb30
bb30:
  LB s0, 0(sp)
  BNE s0, zero, bb31
  JAL zero, bb33
bb31:
  ADDI a0, zero, 6
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb32:
  JAL zero, bb26
bb33:
  ADDI s0, zero, 6
  XORI s1, s0, 3
  SLTU s0, zero, s1
  BNE s0, zero, bb34
  JAL zero, bb36
bb34:
  ADDI s0, zero, 4
  ADDI s1, zero, 5
  MULW s2, s0, s1
  ADDIW s0, s2, 2
  ADDI s1, zero, 10
  SLT s2, s1, s0
  BNE s2, zero, bb37
  JAL zero, bb39
bb35:
  JAL zero, bb32
bb36:
  ADDI a0, zero, 7
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb37:
  XORI s0, zero, 6
  SLTU s1, zero, s0
  XORI s0, s1, 1
  ADD s1, s0, zero
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb40
  JAL zero, bb42
bb38:
  JAL zero, bb35
bb39:
  ADDI a0, zero, 8
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb40:
  ADDI a0, zero, 9
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb41:
  JAL zero, bb38
bb42:
  ADDI a0, zero, 10
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
