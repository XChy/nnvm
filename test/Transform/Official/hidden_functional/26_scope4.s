.global f2
.global f1
.global getA
.global main
.global f3
.section .bss



.section .data
count:
.word 0x00000000
sum:
.word 0x00000000
a:
.word 0x00000000
.section .text
f2:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  LA s0, sum
  LW s1, 0(s0)
  LA s0, a
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LA s1, sum
  SW s0, 0(s1)
  CALL getA
  ADD s0, a0, zero
  LA s0, sum
  LW s1, 0(s0)
  LA s0, a
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LA s1, sum
  SW s0, 0(s1)
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
f1:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  LA s1, sum
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s0, sum
  SW s1, 0(s0)
  CALL getA
  ADD s0, a0, zero
  LA s1, sum
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s2, sum
  SW s1, 0(s2)
  ADDI s1, zero, 0
  XORI s2, s1, 1
  SLTU s1, zero, s2
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  CALL getA
  ADD s1, a0, zero
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  JAL zero, bb3
bb3:
  LA s1, sum
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s2, sum
  SW s1, 0(s2)
  ADDW s2, s1, s0
  LA s0, sum
  SW s2, 0(s0)
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
getA:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
  LA s0, count
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, count
  SW s0, 0(s1)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -64
  SD s4, 0(sp)
  SD s3, 8(sp)
  SD ra, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  LA s0, sum
  ADDI s1, zero, 0
  SW s1, 0(s0)
  CALL getA
  ADD s0, a0, zero
  LA s1, a
  SW s0, 0(s1)
  LA s1, sum
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s0, sum
  SW s1, 0(s0)
  CALL getA
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL f1
  CALL f2
  CALL f3
  ADD a0, s0, zero
  CALL f1
  CALL f2
  CALL f3
  CALL getA
  ADD s1, a0, zero
  ADD a0, s0, zero
  CALL f1
  CALL f2
  CALL f3
  CALL getA
  ADD s1, a0, zero
  CALL getA
  ADD s1, a0, zero
  ADD a0, s1, zero
  CALL f1
  CALL f2
  CALL f3
  CALL getA
  ADD s1, a0, zero
  ADD a0, s1, zero
  CALL f1
  CALL f2
  CALL f3
  CALL getA
  ADD s1, a0, zero
  ADD a0, s1, zero
  CALL f1
  CALL f2
  CALL f3
  ADD a0, s0, zero
  CALL f1
  CALL f2
  CALL f3
  JAL zero, bb6
bb6:
  ADDI s1, zero, 0
  XORI s2, s1, 1
  SLTU s1, zero, s2
  BNE s1, zero, bb7
  JAL zero, bb8
bb7:
  JAL zero, bb9
bb8:
  LA s1, sum
  LW s2, 0(s1)
  ADD a0, s2, zero
  CALL putint
  ADD a0, zero, zero
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD ra, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb9:
  XORI s1, zero, 1
  SLTU s2, zero, s1
  BNE s2, zero, bb10
  JAL zero, bb23
bb10:
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, s0, zero
  JAL zero, bb12
bb11:
  JAL zero, bb8
bb12:
  SLTI s0, s2, 3
  XOR s4, s0, zero
  SLTU s0, zero, s4
  BNE s0, zero, bb13
  JAL zero, bb14
bb13:
  ADD s0, s3, zero
  JAL zero, bb15
bb14:
  ADD s0, s2, zero
  JAL zero, bb11
bb15:
  XORI s4, zero, 1
  SLTU s5, zero, s4
  BNE s5, zero, bb16
  JAL zero, bb17
bb16:
  XORI s4, zero, 1
  SLTU s5, zero, s4
  BNE s5, zero, bb18
  JAL zero, bb19
bb17:
  XORI s4, s2, 1
  SLTIU s5, s4, 1
  BNE s5, zero, bb20
  JAL zero, bb22
bb18:
  ADD a0, s0, zero
  CALL f1
  CALL f2
  CALL f3
  JAL zero, bb17
bb19:
  CALL getA
  ADD s3, a0, zero
  ADD s0, s3, zero
  JAL zero, bb15
bb20:
  CALL getA
  ADD s4, a0, zero
  ADD a0, s4, zero
  CALL f1
  CALL f2
  CALL f3
  ADDIW s5, s2, 1
  ADD s1, s4, zero
  ADD s2, s5, zero
  ADD s3, s0, zero
  JAL zero, bb12
bb21:
  CALL getA
  ADD s4, a0, zero
  ADDIW s5, s2, 1
  ADD s1, s1, zero
  ADD s2, s5, zero
  ADD s3, s4, zero
  JAL zero, bb12
bb22:
  ADD a0, s0, zero
  CALL f1
  CALL f2
  CALL f3
  JAL zero, bb21
bb23:
  ADD s0, zero, zero
  JAL zero, bb11
f3:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  CALL getA
  ADD s0, a0, zero
  LA s1, sum
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s0, sum
  SW s1, 0(s0)
  CALL getA
  ADD s0, a0, zero
  LA s1, sum
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s2, sum
  SW s1, 0(s2)
  CALL getA
  ADD s1, a0, zero
  LA s1, sum
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s0, sum
  SW s1, 0(s0)
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
