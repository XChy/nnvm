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
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  LA s0, sum
  LW s1, 0(s0)
  LA s0, a
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LA s1, sum
  SW s0, 0(s1)
  LA s0, count
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, count
  SW s0, 0(s1)
  LA s0, sum
  LW s1, 0(s0)
  LA s0, a
  LW s2, 0(s0)
  ADDW s0, s1, s2
  LA s1, sum
  SW s0, 0(s1)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
f1:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD s0, a0, zero
  LA s1, sum
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s0, sum
  SW s1, 0(s0)
  LA s0, count
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, count
  SW s0, 0(s1)
  LA s1, sum
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  ADDW s1, s2, s0
  LA s2, sum
  SW s1, 0(s2)
  ADDW s2, s1, s0
  LA s0, sum
  SW s2, 0(s0)
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
  LW s1, 0(s0)
  ADDIW s0, s1, 1
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
  LA s0, sum
  ADDI s1, zero, 0
  SW s1, 0(s0)
  LA s0, count
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, count
  SW s0, 0(s1)
  LA s1, a
  SW s0, 0(s1)
  LA s1, sum
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s0, sum
  SW s1, 0(s0)
  LA s0, count
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, count
  SW s0, 0(s1)
  LA s1, sum
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, count
  SW s2, 0(s3)
  LA s3, sum
  LW s4, 0(s3)
  ADDW s3, s4, s2
  LA s2, sum
  SW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  ADDW s3, s2, s1
  LA s1, sum
  SW s3, 0(s1)
  LA s1, sum
  LW s2, 0(s1)
  LA s1, a
  LW s3, 0(s1)
  ADDW s1, s2, s3
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s1, sum
  LW s2, 0(s1)
  LA s1, a
  LW s3, 0(s1)
  ADDW s1, s2, s3
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, count
  SW s2, 0(s3)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  LA s1, sum
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, count
  SW s2, 0(s3)
  LA s3, sum
  LW s4, 0(s3)
  ADDW s3, s4, s2
  LA s2, sum
  SW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  ADDW s3, s2, s1
  LA s1, sum
  SW s3, 0(s1)
  LA s1, sum
  LW s2, 0(s1)
  LA s1, a
  LW s3, 0(s1)
  ADDW s1, s2, s3
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s1, sum
  LW s2, 0(s1)
  LA s1, a
  LW s3, 0(s1)
  ADDW s1, s2, s3
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, count
  SW s2, 0(s3)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s1, sum
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, count
  SW s2, 0(s3)
  LA s3, sum
  LW s4, 0(s3)
  ADDW s3, s4, s2
  LA s2, sum
  SW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  ADDW s3, s2, s1
  LA s1, sum
  SW s3, 0(s1)
  LA s1, sum
  LW s2, 0(s1)
  LA s1, a
  LW s3, 0(s1)
  ADDW s1, s2, s3
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s1, sum
  LW s2, 0(s1)
  LA s1, a
  LW s3, 0(s1)
  ADDW s1, s2, s3
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, count
  SW s2, 0(s3)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, count
  SW s2, 0(s3)
  LA s3, sum
  LW s4, 0(s3)
  ADDW s3, s4, s2
  LA s2, sum
  SW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  ADDW s3, s2, s1
  LA s1, sum
  SW s3, 0(s1)
  LA s1, sum
  LW s2, 0(s1)
  LA s1, a
  LW s3, 0(s1)
  ADDW s1, s2, s3
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s1, sum
  LW s2, 0(s1)
  LA s1, a
  LW s3, 0(s1)
  ADDW s1, s2, s3
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, count
  SW s2, 0(s3)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, count
  SW s2, 0(s3)
  LA s3, sum
  LW s4, 0(s3)
  ADDW s3, s4, s2
  LA s2, sum
  SW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  ADDW s3, s2, s1
  LA s1, sum
  SW s3, 0(s1)
  LA s1, sum
  LW s2, 0(s1)
  LA s1, a
  LW s3, 0(s1)
  ADDW s1, s2, s3
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s1, sum
  LW s2, 0(s1)
  LA s1, a
  LW s3, 0(s1)
  ADDW s1, s2, s3
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, count
  SW s2, 0(s3)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, count
  SW s2, 0(s3)
  LA s3, sum
  LW s4, 0(s3)
  ADDW s3, s4, s2
  LA s2, sum
  SW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  ADDW s3, s2, s1
  LA s1, sum
  SW s3, 0(s1)
  LA s1, sum
  LW s2, 0(s1)
  LA s1, a
  LW s3, 0(s1)
  ADDW s1, s2, s3
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s1, sum
  LW s2, 0(s1)
  LA s1, a
  LW s3, 0(s1)
  ADDW s1, s2, s3
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, count
  SW s2, 0(s3)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  LA s1, sum
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, count
  SW s2, 0(s3)
  LA s3, sum
  LW s4, 0(s3)
  ADDW s3, s4, s2
  LA s2, sum
  SW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  ADDW s3, s2, s1
  LA s1, sum
  SW s3, 0(s1)
  LA s1, sum
  LW s2, 0(s1)
  LA s1, a
  LW s3, 0(s1)
  ADDW s1, s2, s3
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s1, sum
  LW s2, 0(s1)
  LA s1, a
  LW s3, 0(s1)
  ADDW s1, s2, s3
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, count
  SW s2, 0(s3)
  LA s2, sum
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, sum
  SW s2, 0(s1)
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, s0, zero
  # implict jump to bb4
bb4:
  ADD s0, s3, zero
  ADD s4, s2, zero
  ADD s5, s1, zero
  SLTI s6, s4, 3
  BNE s6, zero, bb6
  # implict jump to bb5
bb5:
  LA s6, sum
  LW s7, 0(s6)
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
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb6:
  # implict jump to bb7
bb7:
  LA s6, sum
  LW s7, 0(s6)
  ADDW s6, s7, s0
  LA s7, sum
  SW s6, 0(s7)
  LA s6, count
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, count
  SW s6, 0(s7)
  LA s7, sum
  LW s8, 0(s7)
  ADDW s7, s8, s6
  LA s8, sum
  SW s7, 0(s8)
  LA s7, count
  LW s8, 0(s7)
  ADDIW s7, s8, 1
  LA s8, count
  SW s7, 0(s8)
  LA s8, sum
  LW s9, 0(s8)
  ADDW s8, s9, s7
  LA s7, sum
  SW s8, 0(s7)
  ADDW s7, s8, s6
  LA s8, sum
  SW s7, 0(s8)
  ADDW s8, s7, s6
  LA s6, sum
  SW s8, 0(s6)
  LA s6, sum
  LW s7, 0(s6)
  LA s6, a
  LW s8, 0(s6)
  ADDW s6, s7, s8
  LA s7, sum
  SW s6, 0(s7)
  LA s6, count
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, count
  SW s6, 0(s7)
  LA s6, sum
  LW s7, 0(s6)
  LA s6, a
  LW s8, 0(s6)
  ADDW s6, s7, s8
  LA s7, sum
  SW s6, 0(s7)
  LA s6, count
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, count
  SW s6, 0(s7)
  LA s7, sum
  LW s8, 0(s7)
  ADDW s7, s8, s6
  LA s6, sum
  SW s7, 0(s6)
  LA s6, count
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, count
  SW s6, 0(s7)
  LA s7, sum
  LW s8, 0(s7)
  ADDW s7, s8, s6
  LA s8, sum
  SW s7, 0(s8)
  LA s7, count
  LW s8, 0(s7)
  ADDIW s7, s8, 1
  LA s8, count
  SW s7, 0(s8)
  LA s7, sum
  LW s8, 0(s7)
  ADDW s7, s8, s6
  LA s6, sum
  SW s7, 0(s6)
  XORI s6, s4, 1
  SLTIU s7, s6, 1
  BNE s7, zero, bb9
  # implict jump to bb8
bb8:
  LA s6, sum
  LW s7, 0(s6)
  ADDW s6, s7, s0
  LA s7, sum
  SW s6, 0(s7)
  LA s6, count
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, count
  SW s6, 0(s7)
  LA s7, sum
  LW s8, 0(s7)
  ADDW s7, s8, s6
  LA s8, sum
  SW s7, 0(s8)
  LA s7, count
  LW s8, 0(s7)
  ADDIW s7, s8, 1
  LA s8, count
  SW s7, 0(s8)
  LA s8, sum
  LW s9, 0(s8)
  ADDW s8, s9, s7
  LA s7, sum
  SW s8, 0(s7)
  ADDW s7, s8, s6
  LA s8, sum
  SW s7, 0(s8)
  ADDW s8, s7, s6
  LA s6, sum
  SW s8, 0(s6)
  LA s6, sum
  LW s7, 0(s6)
  LA s6, a
  LW s8, 0(s6)
  ADDW s6, s7, s8
  LA s7, sum
  SW s6, 0(s7)
  LA s6, count
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, count
  SW s6, 0(s7)
  LA s6, sum
  LW s7, 0(s6)
  LA s6, a
  LW s8, 0(s6)
  ADDW s6, s7, s8
  LA s7, sum
  SW s6, 0(s7)
  LA s6, count
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, count
  SW s6, 0(s7)
  LA s7, sum
  LW s8, 0(s7)
  ADDW s7, s8, s6
  LA s6, sum
  SW s7, 0(s6)
  LA s6, count
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, count
  SW s6, 0(s7)
  LA s7, sum
  LW s8, 0(s7)
  ADDW s7, s8, s6
  LA s8, sum
  SW s7, 0(s8)
  LA s7, count
  LW s8, 0(s7)
  ADDIW s7, s8, 1
  LA s8, count
  SW s7, 0(s8)
  LA s7, sum
  LW s8, 0(s7)
  ADDW s7, s8, s6
  LA s6, sum
  SW s7, 0(s6)
  LA s6, count
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, count
  SW s6, 0(s7)
  ADDIW s7, s4, 1
  ADD s1, s5, zero
  ADD s2, s7, zero
  ADD s3, s6, zero
  JAL zero, bb4
bb9:
  LA s5, count
  LW s6, 0(s5)
  ADDIW s5, s6, 1
  LA s6, count
  SW s5, 0(s6)
  LA s6, sum
  LW s7, 0(s6)
  ADDW s6, s7, s5
  LA s7, sum
  SW s6, 0(s7)
  LA s6, count
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, count
  SW s6, 0(s7)
  LA s7, sum
  LW s8, 0(s7)
  ADDW s7, s8, s6
  LA s8, sum
  SW s7, 0(s8)
  LA s7, count
  LW s8, 0(s7)
  ADDIW s7, s8, 1
  LA s8, count
  SW s7, 0(s8)
  LA s8, sum
  LW s9, 0(s8)
  ADDW s8, s9, s7
  LA s7, sum
  SW s8, 0(s7)
  ADDW s7, s8, s6
  LA s8, sum
  SW s7, 0(s8)
  ADDW s8, s7, s6
  LA s6, sum
  SW s8, 0(s6)
  LA s6, sum
  LW s7, 0(s6)
  LA s6, a
  LW s8, 0(s6)
  ADDW s6, s7, s8
  LA s7, sum
  SW s6, 0(s7)
  LA s6, count
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, count
  SW s6, 0(s7)
  LA s6, sum
  LW s7, 0(s6)
  LA s6, a
  LW s8, 0(s6)
  ADDW s6, s7, s8
  LA s7, sum
  SW s6, 0(s7)
  LA s6, count
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, count
  SW s6, 0(s7)
  LA s7, sum
  LW s8, 0(s7)
  ADDW s7, s8, s6
  LA s6, sum
  SW s7, 0(s6)
  LA s6, count
  LW s7, 0(s6)
  ADDIW s6, s7, 1
  LA s7, count
  SW s6, 0(s7)
  LA s7, sum
  LW s8, 0(s7)
  ADDW s7, s8, s6
  LA s8, sum
  SW s7, 0(s8)
  LA s7, count
  LW s8, 0(s7)
  ADDIW s7, s8, 1
  LA s8, count
  SW s7, 0(s8)
  LA s7, sum
  LW s8, 0(s7)
  ADDW s7, s8, s6
  LA s6, sum
  SW s7, 0(s6)
  ADDIW s6, s4, 1
  ADD s1, s5, zero
  ADD s2, s6, zero
  ADD s3, s0, zero
  JAL zero, bb4
f3:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  LA s0, count
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, count
  SW s0, 0(s1)
  LA s1, sum
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s0, sum
  SW s1, 0(s0)
  LA s0, count
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, count
  SW s0, 0(s1)
  LA s1, sum
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, count
  SW s1, 0(s2)
  LA s1, sum
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s0, sum
  SW s1, 0(s0)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
