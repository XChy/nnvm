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
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  LA s0, sum
  LW s0, 0(s0)
  LA s1, a
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LA s2, sum
  SW s0, 0(s2)
  LA s2, count
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s3, count
  SW s2, 0(s3)
  ADDW s0, s0, s1
  LA s1, sum
  SW s0, 0(s1)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
f1:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  LA s0, sum
  LW s0, 0(s0)
  ADDW s0, s0, a0
  LA s1, sum
  SW s0, 0(s1)
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  ADDW s0, s0, s1
  LA s2, sum
  SW s0, 0(s2)
  ADDIW s2, s1, 1
  LA s3, count
  SW s2, 0(s3)
  ADDW s0, s0, s2
  LA s2, sum
  SW s0, 0(s2)
  ADDW s0, s0, s1
  LA s2, sum
  SW s0, 0(s2)
  ADDW s0, s0, s1
  LA s1, sum
  SW s0, 0(s1)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
getA:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  LA s0, count
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s1, count
  SW s0, 0(s1)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  LA s0, sum
  ADDI s1, zero, 0
  SW s1, 0(s0)
  LA s0, count
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s1, count
  SW s0, 0(s1)
  LA s1, a
  SW s0, 0(s1)
  ADDW s1, s0, zero
  LA s2, sum
  SW s1, 0(s2)
  ADDIW s2, s0, 1
  LA s3, count
  SW s2, 0(s3)
  ADDW s1, s1, s2
  LA s3, sum
  SW s1, 0(s3)
  ADDIW s3, s2, 1
  LA s4, count
  SW s3, 0(s4)
  ADDW s1, s1, s3
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s4, s3, 1
  LA s5, count
  SW s4, 0(s5)
  ADDW s1, s1, s4
  LA s5, sum
  SW s1, 0(s5)
  ADDW s1, s1, s3
  LA s5, sum
  SW s1, 0(s5)
  ADDW s1, s1, s3
  LA s3, sum
  SW s1, 0(s3)
  ADDW s1, s1, s0
  LA s3, sum
  SW s1, 0(s3)
  ADDIW s3, s4, 1
  LA s4, count
  SW s3, 0(s4)
  ADDW s1, s1, s0
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s3, s3, 1
  LA s4, count
  SW s3, 0(s4)
  ADDW s1, s1, s3
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s3, s3, 1
  LA s4, count
  SW s3, 0(s4)
  ADDW s1, s1, s3
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s4, s3, 1
  LA s5, count
  SW s4, 0(s5)
  ADDW s1, s1, s3
  LA s3, sum
  SW s1, 0(s3)
  ADDW s1, s1, s2
  LA s3, sum
  SW s1, 0(s3)
  ADDIW s3, s4, 1
  LA s4, count
  SW s3, 0(s4)
  ADDW s1, s1, s3
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s4, s3, 1
  LA s5, count
  SW s4, 0(s5)
  ADDW s1, s1, s4
  LA s5, sum
  SW s1, 0(s5)
  ADDW s1, s1, s3
  LA s5, sum
  SW s1, 0(s5)
  ADDW s1, s1, s3
  LA s3, sum
  SW s1, 0(s3)
  ADDW s1, s1, s0
  LA s3, sum
  SW s1, 0(s3)
  ADDIW s3, s4, 1
  LA s4, count
  SW s3, 0(s4)
  ADDW s1, s1, s0
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s3, s3, 1
  LA s4, count
  SW s3, 0(s4)
  ADDW s1, s1, s3
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s3, s3, 1
  LA s4, count
  SW s3, 0(s4)
  ADDW s1, s1, s3
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s4, s3, 1
  LA s5, count
  SW s4, 0(s5)
  ADDW s1, s1, s3
  LA s3, sum
  SW s1, 0(s3)
  ADDIW s3, s4, 1
  LA s4, count
  SW s3, 0(s4)
  ADDW s1, s1, s2
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s3, s3, 1
  LA s4, count
  SW s3, 0(s4)
  ADDW s1, s1, s3
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s4, s3, 1
  LA s5, count
  SW s4, 0(s5)
  ADDW s1, s1, s4
  LA s5, sum
  SW s1, 0(s5)
  ADDW s1, s1, s3
  LA s5, sum
  SW s1, 0(s5)
  ADDW s1, s1, s3
  LA s3, sum
  SW s1, 0(s3)
  ADDW s1, s1, s0
  LA s3, sum
  SW s1, 0(s3)
  ADDIW s3, s4, 1
  LA s4, count
  SW s3, 0(s4)
  ADDW s1, s1, s0
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s3, s3, 1
  LA s4, count
  SW s3, 0(s4)
  ADDW s1, s1, s3
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s3, s3, 1
  LA s4, count
  SW s3, 0(s4)
  ADDW s1, s1, s3
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s4, s3, 1
  LA s5, count
  SW s4, 0(s5)
  ADDW s1, s1, s3
  LA s3, sum
  SW s1, 0(s3)
  ADDIW s3, s4, 1
  LA s4, count
  SW s3, 0(s4)
  ADDIW s3, s3, 1
  LA s4, count
  SW s3, 0(s4)
  ADDW s1, s1, s3
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s3, s3, 1
  LA s4, count
  SW s3, 0(s4)
  ADDW s1, s1, s3
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s4, s3, 1
  LA s5, count
  SW s4, 0(s5)
  ADDW s1, s1, s4
  LA s5, sum
  SW s1, 0(s5)
  ADDW s1, s1, s3
  LA s5, sum
  SW s1, 0(s5)
  ADDW s1, s1, s3
  LA s3, sum
  SW s1, 0(s3)
  ADDW s1, s1, s0
  LA s3, sum
  SW s1, 0(s3)
  ADDIW s3, s4, 1
  LA s4, count
  SW s3, 0(s4)
  ADDW s1, s1, s0
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s3, s3, 1
  LA s4, count
  SW s3, 0(s4)
  ADDW s1, s1, s3
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s3, s3, 1
  LA s4, count
  SW s3, 0(s4)
  ADDW s1, s1, s3
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s4, s3, 1
  LA s5, count
  SW s4, 0(s5)
  ADDW s1, s1, s3
  LA s3, sum
  SW s1, 0(s3)
  ADDIW s3, s4, 1
  LA s4, count
  SW s3, 0(s4)
  ADDW s1, s1, s3
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s3, s3, 1
  LA s4, count
  SW s3, 0(s4)
  ADDW s1, s1, s3
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s4, s3, 1
  LA s5, count
  SW s4, 0(s5)
  ADDW s1, s1, s4
  LA s5, sum
  SW s1, 0(s5)
  ADDW s1, s1, s3
  LA s5, sum
  SW s1, 0(s5)
  ADDW s1, s1, s3
  LA s3, sum
  SW s1, 0(s3)
  ADDW s1, s1, s0
  LA s3, sum
  SW s1, 0(s3)
  ADDIW s3, s4, 1
  LA s4, count
  SW s3, 0(s4)
  ADDW s1, s1, s0
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s3, s3, 1
  LA s4, count
  SW s3, 0(s4)
  ADDW s1, s1, s3
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s3, s3, 1
  LA s4, count
  SW s3, 0(s4)
  ADDW s1, s1, s3
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s4, s3, 1
  LA s5, count
  SW s4, 0(s5)
  ADDW s1, s1, s3
  LA s3, sum
  SW s1, 0(s3)
  ADDIW s3, s4, 1
  LA s4, count
  SW s3, 0(s4)
  ADDW s1, s1, s3
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s3, s3, 1
  LA s4, count
  SW s3, 0(s4)
  ADDW s1, s1, s3
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s4, s3, 1
  LA s5, count
  SW s4, 0(s5)
  ADDW s1, s1, s4
  LA s5, sum
  SW s1, 0(s5)
  ADDW s1, s1, s3
  LA s5, sum
  SW s1, 0(s5)
  ADDW s1, s1, s3
  LA s3, sum
  SW s1, 0(s3)
  ADDW s1, s1, s0
  LA s3, sum
  SW s1, 0(s3)
  ADDIW s3, s4, 1
  LA s4, count
  SW s3, 0(s4)
  ADDW s1, s1, s0
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s3, s3, 1
  LA s4, count
  SW s3, 0(s4)
  ADDW s1, s1, s3
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s3, s3, 1
  LA s4, count
  SW s3, 0(s4)
  ADDW s1, s1, s3
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s4, s3, 1
  LA s5, count
  SW s4, 0(s5)
  ADDW s1, s1, s3
  LA s3, sum
  SW s1, 0(s3)
  ADDW s1, s1, s2
  LA s3, sum
  SW s1, 0(s3)
  ADDIW s3, s4, 1
  LA s4, count
  SW s3, 0(s4)
  ADDW s1, s1, s3
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s4, s3, 1
  LA s5, count
  SW s4, 0(s5)
  ADDW s1, s1, s4
  LA s5, sum
  SW s1, 0(s5)
  ADDW s1, s1, s3
  LA s5, sum
  SW s1, 0(s5)
  ADDW s1, s1, s3
  LA s3, sum
  SW s1, 0(s3)
  ADDW s1, s1, s0
  LA s3, sum
  SW s1, 0(s3)
  ADDIW s3, s4, 1
  LA s4, count
  SW s3, 0(s4)
  ADDW s1, s1, s0
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s3, s3, 1
  LA s4, count
  SW s3, 0(s4)
  ADDW s1, s1, s3
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s3, s3, 1
  LA s4, count
  SW s3, 0(s4)
  ADDW s1, s1, s3
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s4, s3, 1
  LA s5, count
  SW s4, 0(s5)
  ADDW s1, s1, s3
  LA s3, sum
  SW s1, 0(s3)
  ADD s1, zero, zero
  ADD s3, zero, zero
  # implict jump to bb4
bb4:
  ADD s4, s2, zero
  ADD s5, s3, zero
  ADD s6, s1, zero
  SLTI s7, s5, 3
  BNE s7, zero, bb6
  # implict jump to bb5
bb5:
  LA s7, sum
  LW s7, 0(s7)
  ADD a0, s7, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb6:
  # implict jump to bb7
bb7:
  LA s7, sum
  LW s7, 0(s7)
  ADDW s7, s7, s4
  LA s8, sum
  SW s7, 0(s8)
  LA s8, count
  LW s8, 0(s8)
  ADDIW s8, s8, 1
  LA s9, count
  SW s8, 0(s9)
  ADDW s7, s7, s8
  LA s9, sum
  SW s7, 0(s9)
  ADDIW s9, s8, 1
  LA s10, count
  SW s9, 0(s10)
  ADDW s7, s7, s9
  LA s10, sum
  SW s7, 0(s10)
  ADDW s7, s7, s8
  LA s10, sum
  SW s7, 0(s10)
  ADDW s7, s7, s8
  LA s8, sum
  SW s7, 0(s8)
  ADDW s7, s7, s0
  LA s8, sum
  SW s7, 0(s8)
  ADDIW s8, s9, 1
  LA s9, count
  SW s8, 0(s9)
  ADDW s7, s7, s0
  LA s9, sum
  SW s7, 0(s9)
  ADDIW s8, s8, 1
  LA s9, count
  SW s8, 0(s9)
  ADDW s7, s7, s8
  LA s9, sum
  SW s7, 0(s9)
  ADDIW s8, s8, 1
  LA s9, count
  SW s8, 0(s9)
  ADDW s7, s7, s8
  LA s9, sum
  SW s7, 0(s9)
  ADDIW s9, s8, 1
  LA s10, count
  SW s9, 0(s10)
  ADDW s7, s7, s8
  LA s8, sum
  SW s7, 0(s8)
  XORI s7, s5, 1
  SLTIU s7, s7, 1
  BNE s7, zero, bb9
  # implict jump to bb8
bb8:
  LA s7, sum
  LW s7, 0(s7)
  ADDW s7, s7, s4
  LA s8, sum
  SW s7, 0(s8)
  LA s8, count
  LW s8, 0(s8)
  ADDIW s8, s8, 1
  LA s9, count
  SW s8, 0(s9)
  ADDW s7, s7, s8
  LA s9, sum
  SW s7, 0(s9)
  ADDIW s9, s8, 1
  LA s10, count
  SW s9, 0(s10)
  ADDW s7, s7, s9
  LA s10, sum
  SW s7, 0(s10)
  ADDW s7, s7, s8
  LA s10, sum
  SW s7, 0(s10)
  ADDW s7, s7, s8
  LA s8, sum
  SW s7, 0(s8)
  ADDW s7, s7, s0
  LA s8, sum
  SW s7, 0(s8)
  ADDIW s8, s9, 1
  LA s9, count
  SW s8, 0(s9)
  ADDW s7, s7, s0
  LA s9, sum
  SW s7, 0(s9)
  ADDIW s8, s8, 1
  LA s9, count
  SW s8, 0(s9)
  ADDW s7, s7, s8
  LA s9, sum
  SW s7, 0(s9)
  ADDIW s8, s8, 1
  LA s9, count
  SW s8, 0(s9)
  ADDW s7, s7, s8
  LA s9, sum
  SW s7, 0(s9)
  ADDIW s9, s8, 1
  LA s10, count
  SW s9, 0(s10)
  ADDW s7, s7, s8
  LA s8, sum
  SW s7, 0(s8)
  ADDIW s7, s9, 1
  LA s8, count
  SW s7, 0(s8)
  ADDIW s8, s5, 1
  ADD s1, s6, zero
  ADD s3, s8, zero
  ADD s2, s7, zero
  JAL zero, bb4
bb9:
  LA s6, count
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, count
  SW s6, 0(s7)
  LA s7, sum
  LW s7, 0(s7)
  ADDW s7, s7, s6
  LA s8, sum
  SW s7, 0(s8)
  ADDIW s8, s6, 1
  LA s9, count
  SW s8, 0(s9)
  ADDW s7, s7, s8
  LA s9, sum
  SW s7, 0(s9)
  ADDIW s9, s8, 1
  LA s10, count
  SW s9, 0(s10)
  ADDW s7, s7, s9
  LA s10, sum
  SW s7, 0(s10)
  ADDW s7, s7, s8
  LA s10, sum
  SW s7, 0(s10)
  ADDW s7, s7, s8
  LA s8, sum
  SW s7, 0(s8)
  ADDW s7, s7, s0
  LA s8, sum
  SW s7, 0(s8)
  ADDIW s8, s9, 1
  LA s9, count
  SW s8, 0(s9)
  ADDW s7, s7, s0
  LA s9, sum
  SW s7, 0(s9)
  ADDIW s8, s8, 1
  LA s9, count
  SW s8, 0(s9)
  ADDW s7, s7, s8
  LA s9, sum
  SW s7, 0(s9)
  ADDIW s8, s8, 1
  LA s9, count
  SW s8, 0(s9)
  ADDW s7, s7, s8
  LA s9, sum
  SW s7, 0(s9)
  ADDIW s9, s8, 1
  LA s10, count
  SW s9, 0(s10)
  ADDW s7, s7, s8
  LA s8, sum
  SW s7, 0(s8)
  ADDIW s5, s5, 1
  ADD s1, s6, zero
  ADD s3, s5, zero
  ADD s2, s4, zero
  JAL zero, bb4
f3:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  LA s0, count
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s1, count
  SW s0, 0(s1)
  LA s1, sum
  LW s1, 0(s1)
  ADDW s1, s1, s0
  LA s2, sum
  SW s1, 0(s2)
  ADDIW s0, s0, 1
  LA s2, count
  SW s0, 0(s2)
  ADDW s1, s1, s0
  LA s2, sum
  SW s1, 0(s2)
  ADDIW s2, s0, 1
  LA s3, count
  SW s2, 0(s3)
  ADDW s0, s1, s0
  LA s1, sum
  SW s0, 0(s1)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
