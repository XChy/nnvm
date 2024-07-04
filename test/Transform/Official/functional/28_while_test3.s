.global main
.global EightWhile
.section .bss




.section .data
e:
.word 0x00000000
f:
.word 0x00000000
h:
.word 0x00000000
g:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
  LA s0, g
  ADDI s1, zero, 1
  SW s1, 0(s0)
  LA s0, h
  ADDI s1, zero, 2
  SW s1, 0(s0)
  LA s0, e
  ADDI s1, zero, 4
  SW s1, 0(s0)
  LA s0, f
  ADDI s1, zero, 6
  SW s1, 0(s0)
  CALL EightWhile
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
EightWhile:
  ADDI sp, sp, -80
  SD ra, 32(sp)
  SD s3, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  SD s0, 64(sp)
  ADDI s0, zero, 5
  SW s0, 24(sp)
  ADDI s0, zero, 6
  SW s0, 16(sp)
  ADDI s0, zero, 7
  SW s0, 8(sp)
  ADDI s0, zero, 10
  SW s0, 0(sp)
  JAL zero, bb2
bb2:
  LW s0, 24(sp)
  SLTI s1, s0, 20
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb3
  JAL zero, bb4
bb3:
  LW s0, 24(sp)
  ADDIW s1, s0, 3
  SW s1, 24(sp)
  JAL zero, bb5
bb4:
  LW s0, 24(sp)
  LW s1, 16(sp)
  LW s2, 0(sp)
  ADDW s3, s1, s2
  ADDW s1, s0, s3
  LW s0, 8(sp)
  ADDW s2, s1, s0
  LA s0, e
  LW s1, 0(s0)
  LW s0, 0(sp)
  ADDW s3, s1, s0
  LA s0, g
  LW s1, 0(s0)
  SUBW s0, s3, s1
  LA s1, h
  LW s3, 0(s1)
  ADDW s1, s0, s3
  SUBW s0, s2, s1
  ADD a0, s0, zero
  LD ra, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb5:
  LW s0, 16(sp)
  SLTI s1, s0, 10
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb6
  JAL zero, bb7
bb6:
  LW s0, 16(sp)
  ADDIW s1, s0, 1
  SW s1, 16(sp)
  JAL zero, bb8
bb7:
  LW s0, 16(sp)
  ADDI s1, zero, 2
  SUBW s2, s0, s1
  SW s2, 16(sp)
  JAL zero, bb2
bb8:
  LW s0, 8(sp)
  XORI s1, s0, 7
  SLTIU s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb9
  JAL zero, bb10
bb9:
  LW s0, 8(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 8(sp)
  JAL zero, bb11
bb10:
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb5
bb11:
  LW s0, 0(sp)
  SLTI s1, s0, 20
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb12
  JAL zero, bb13
bb12:
  LW s0, 0(sp)
  ADDIW s1, s0, 3
  SW s1, 0(sp)
  JAL zero, bb14
bb13:
  LW s0, 0(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 0(sp)
  JAL zero, bb8
bb14:
  LA s0, e
  LW s1, 0(s0)
  ADDI s0, zero, 1
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb15
  JAL zero, bb16
bb15:
  LA s0, e
  LW s1, 0(s0)
  ADDI s0, zero, 1
  SUBW s2, s1, s0
  LA s0, e
  SW s2, 0(s0)
  JAL zero, bb17
bb16:
  LA s0, e
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, e
  SW s0, 0(s1)
  JAL zero, bb11
bb17:
  LA s0, f
  LW s1, 0(s0)
  ADDI s0, zero, 2
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb18
  JAL zero, bb19
bb18:
  LA s0, f
  LW s1, 0(s0)
  ADDI s0, zero, 2
  SUBW s2, s1, s0
  LA s0, f
  SW s2, 0(s0)
  JAL zero, bb20
bb19:
  LA s0, f
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, f
  SW s0, 0(s1)
  JAL zero, bb14
bb20:
  LA s0, g
  LW s1, 0(s0)
  SLTI s0, s1, 3
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb21
  JAL zero, bb22
bb21:
  LA s0, g
  LW s1, 0(s0)
  ADDIW s0, s1, 10
  LA s1, g
  SW s0, 0(s1)
  JAL zero, bb23
bb22:
  LA s0, g
  LW s1, 0(s0)
  ADDI s0, zero, 8
  SUBW s2, s1, s0
  LA s0, g
  SW s2, 0(s0)
  JAL zero, bb17
bb23:
  LA s0, h
  LW s1, 0(s0)
  SLTI s0, s1, 10
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb24
  JAL zero, bb25
bb24:
  LA s0, h
  LW s1, 0(s0)
  ADDIW s0, s1, 8
  LA s1, h
  SW s0, 0(s1)
  JAL zero, bb23
bb25:
  LA s0, h
  LW s1, 0(s0)
  ADDI s0, zero, 1
  SUBW s2, s1, s0
  LA s0, h
  SW s2, 0(s0)
  JAL zero, bb20
