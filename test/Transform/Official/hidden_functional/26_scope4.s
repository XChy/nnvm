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
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  LA s0, sum
  LW s1, 0(s0)
  LA s0, a
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LA s1, sum
  SW s0, 0(s1)
  CALL getA
  ADD s0, a0, zero
  SW s0, 0(sp)
  LA s0, sum
  LW s1, 0(s0)
  LA s0, a
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LA s1, sum
  SW s0, 0(s1)
  LD ra, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
f1:
  ADDI sp, sp, -48
  SD ra, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  SW s0, 8(sp)
  LA s1, sum
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s0, sum
  SW s1, 0(s0)
  CALL getA
  ADD s0, a0, zero
  SW s0, 8(sp)
  LA s1, sum
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s0, sum
  SW s1, 0(s0)
  ADDI s0, zero, 0
  XORI s1, s0, 1
  SLTU s0, zero, s1
  BNE s0, zero, bb2
  JAL zero, bb3
bb2:
  CALL getA
  ADD s0, a0, zero
  SW s0, 0(sp)
  LA s1, sum
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s0, sum
  SW s1, 0(s0)
  JAL zero, bb3
bb3:
  LA s0, sum
  LW s1, 0(s0)
  LW s0, 8(sp)
  ADDW s2, s1, s0
  LA s0, sum
  SW s2, 0(s0)
  LW s0, 8(sp)
  ADDW s1, s2, s0
  LA s0, sum
  SW s1, 0(s0)
  LD ra, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
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
  ADDI sp, sp, -96
  SD ra, 56(sp)
  SD s2, 64(sp)
  SD s1, 72(sp)
  SD s0, 80(sp)
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
  SW s0, 48(sp)
  ADD a0, s0, zero
  CALL f1
  CALL f2
  CALL f3
  LW s0, 48(sp)
  ADD a0, s0, zero
  CALL f1
  CALL f2
  CALL f3
  CALL getA
  ADD s0, a0, zero
  SW s0, 40(sp)
  LW s0, 48(sp)
  ADD a0, s0, zero
  CALL f1
  CALL f2
  CALL f3
  CALL getA
  ADD s0, a0, zero
  SW s0, 32(sp)
  CALL getA
  ADD s0, a0, zero
  SW s0, 24(sp)
  ADD a0, s0, zero
  CALL f1
  CALL f2
  CALL f3
  CALL getA
  ADD s0, a0, zero
  SW s0, 16(sp)
  ADD a0, s0, zero
  CALL f1
  CALL f2
  CALL f3
  CALL getA
  ADD s0, a0, zero
  SW s0, 16(sp)
  ADD a0, s0, zero
  CALL f1
  CALL f2
  CALL f3
  LW s0, 48(sp)
  ADD a0, s0, zero
  CALL f1
  CALL f2
  CALL f3
  JAL zero, bb6
bb6:
  ADDI s0, zero, 0
  XORI s1, s0, 1
  SLTU s0, zero, s1
  BNE s0, zero, bb7
  JAL zero, bb8
bb7:
  JAL zero, bb9
bb8:
  LA s0, sum
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s2, 64(sp)
  LD s1, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb9:
  XORI s0, zero, 1
  SLTU s1, zero, s0
  BNE s1, zero, bb10
  JAL zero, bb11
bb10:
  SW zero, 8(sp)
  JAL zero, bb12
bb11:
  JAL zero, bb8
bb12:
  LW s0, 8(sp)
  SLTI s1, s0, 3
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb13
  JAL zero, bb14
bb13:
  JAL zero, bb15
bb14:
  JAL zero, bb11
  JAL zero, bb11
bb15:
  XORI s0, zero, 1
  SLTU s1, zero, s0
  BNE s1, zero, bb16
  JAL zero, bb17
bb16:
  XORI s0, zero, 1
  SLTU s1, zero, s0
  BNE s1, zero, bb18
  JAL zero, bb19
bb17:
  LW s0, 8(sp)
  XORI s1, s0, 1
  SLTIU s0, s1, 1
  BNE s0, zero, bb20
  JAL zero, bb22
bb18:
  LW s0, 48(sp)
  ADD a0, s0, zero
  CALL f1
  CALL f2
  CALL f3
  JAL zero, bb17
bb19:
  CALL getA
  ADD s0, a0, zero
  SW s0, 48(sp)
  JAL zero, bb15
bb20:
  CALL getA
  ADD s0, a0, zero
  SW s0, 0(sp)
  ADD a0, s0, zero
  CALL f1
  CALL f2
  CALL f3
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb12
bb21:
  CALL getA
  ADD s0, a0, zero
  SW s0, 48(sp)
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb12
bb22:
  LW s0, 48(sp)
  ADD a0, s0, zero
  CALL f1
  CALL f2
  CALL f3
  JAL zero, bb21
f3:
  ADDI sp, sp, -48
  SD ra, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  CALL getA
  ADD s0, a0, zero
  SW s0, 8(sp)
  LA s1, sum
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s0, sum
  SW s1, 0(s0)
  CALL getA
  ADD s0, a0, zero
  SW s0, 8(sp)
  LA s1, sum
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s0, sum
  SW s1, 0(s0)
  CALL getA
  ADD s0, a0, zero
  SW s0, 0(sp)
  LA s0, sum
  LW s1, 0(s0)
  LW s0, 8(sp)
  ADDW s2, s1, s0
  LA s0, sum
  SW s2, 0(s0)
  LD ra, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
