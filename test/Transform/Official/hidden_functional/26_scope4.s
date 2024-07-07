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
  JAL zero, bb2
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
  ADDI sp, sp, -80
  SD s4, 0(sp)
  SD ra, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s7, 32(sp)
  SD s6, 40(sp)
  SD s1, 48(sp)
  SD s5, 56(sp)
  SD s0, 64(sp)
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
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, s0, zero
  JAL zero, bb7
bb6:
  LA s0, sum
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  ADD a0, zero, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s7, 32(sp)
  LD s6, 40(sp)
  LD s1, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb7:
  ADD s0, s3, zero
  ADD s4, s2, zero
  ADD s5, s1, zero
  SLTI s6, s4, 3
  BNE s6, zero, bb8
  JAL zero, bb9
bb8:
  ADD s6, s0, zero
  JAL zero, bb10
bb9:
  JAL zero, bb6
bb10:
  ADD s0, s6, zero
  JAL zero, bb12
bb11:
  XORI s6, s4, 1
  SLTIU s7, s6, 1
  BNE s7, zero, bb13
  JAL zero, bb15
bb12:
  ADD a0, s0, zero
  CALL f1
  CALL f2
  CALL f3
  JAL zero, bb11
bb13:
  CALL getA
  ADD s6, a0, zero
  ADD a0, s6, zero
  CALL f1
  CALL f2
  CALL f3
  ADDIW s7, s4, 1
  ADD s1, s6, zero
  ADD s2, s7, zero
  ADD s3, s0, zero
  JAL zero, bb7
bb14:
  CALL getA
  ADD s0, a0, zero
  ADDIW s6, s4, 1
  ADD s1, s5, zero
  ADD s2, s6, zero
  ADD s3, s0, zero
  JAL zero, bb7
bb15:
  ADD a0, s0, zero
  CALL f1
  CALL f2
  CALL f3
  JAL zero, bb14
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
