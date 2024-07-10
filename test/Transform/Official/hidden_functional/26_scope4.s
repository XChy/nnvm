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
  LA s0, sum
  LW s0, 0(s0)
  LA s1, a
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LA s1, sum
  SW s0, 0(s1)
  LA s0, count
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s1, count
  SW s0, 0(s1)
  LA s0, sum
  LW s0, 0(s0)
  LA s1, a
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LA s1, sum
  SW s0, 0(s1)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
f1:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD a0, a0, zero
  LA s0, sum
  LW s0, 0(s0)
  ADDW s0, s0, a0
  LA s1, sum
  SW s0, 0(s1)
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
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s2, 0(s2)
  ADDW s1, s2, s1
  LA s2, sum
  SW s1, 0(s2)
  ADDW s1, s1, s0
  LA s2, sum
  SW s1, 0(s2)
  ADDW s0, s1, s0
  LA s1, sum
  SW s0, 0(s1)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
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
  ADDI sp, sp, -80
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
  LA s1, sum
  LW s1, 0(s1)
  ADDW s0, s1, s0
  LA s1, sum
  SW s0, 0(s1)
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
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s2, 0(s2)
  ADDW s2, s2, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s3, count
  SW s2, 0(s3)
  LA s3, sum
  LW s3, 0(s3)
  ADDW s2, s3, s2
  LA s3, sum
  SW s2, 0(s3)
  ADDW s2, s2, s1
  LA s3, sum
  SW s2, 0(s3)
  ADDW s1, s2, s1
  LA s2, sum
  SW s1, 0(s2)
  LA s1, sum
  LW s1, 0(s1)
  LA s2, a
  LW s2, 0(s2)
  ADDW s1, s1, s2
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s1, sum
  LW s1, 0(s1)
  LA s2, a
  LW s2, 0(s2)
  ADDW s1, s1, s2
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s2, 0(s2)
  ADDW s1, s2, s1
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s2, 0(s2)
  ADDW s2, s2, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s3, count
  SW s2, 0(s3)
  LA s2, sum
  LW s2, 0(s2)
  ADDW s1, s2, s1
  LA s2, sum
  SW s1, 0(s2)
  LA s1, sum
  LW s1, 0(s1)
  ADDW s1, s1, s0
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s2, 0(s2)
  ADDW s2, s2, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s3, count
  SW s2, 0(s3)
  LA s3, sum
  LW s3, 0(s3)
  ADDW s2, s3, s2
  LA s3, sum
  SW s2, 0(s3)
  ADDW s2, s2, s1
  LA s3, sum
  SW s2, 0(s3)
  ADDW s1, s2, s1
  LA s2, sum
  SW s1, 0(s2)
  LA s1, sum
  LW s1, 0(s1)
  LA s2, a
  LW s2, 0(s2)
  ADDW s1, s1, s2
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s1, sum
  LW s1, 0(s1)
  LA s2, a
  LW s2, 0(s2)
  ADDW s1, s1, s2
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s2, 0(s2)
  ADDW s1, s2, s1
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s2, 0(s2)
  ADDW s2, s2, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s3, count
  SW s2, 0(s3)
  LA s2, sum
  LW s2, 0(s2)
  ADDW s1, s2, s1
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s1, sum
  LW s1, 0(s1)
  ADDW s1, s1, s0
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s2, 0(s2)
  ADDW s2, s2, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s3, count
  SW s2, 0(s3)
  LA s3, sum
  LW s3, 0(s3)
  ADDW s2, s3, s2
  LA s3, sum
  SW s2, 0(s3)
  ADDW s2, s2, s1
  LA s3, sum
  SW s2, 0(s3)
  ADDW s1, s2, s1
  LA s2, sum
  SW s1, 0(s2)
  LA s1, sum
  LW s1, 0(s1)
  LA s2, a
  LW s2, 0(s2)
  ADDW s1, s1, s2
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s1, sum
  LW s1, 0(s1)
  LA s2, a
  LW s2, 0(s2)
  ADDW s1, s1, s2
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s2, 0(s2)
  ADDW s1, s2, s1
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s2, 0(s2)
  ADDW s2, s2, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s3, count
  SW s2, 0(s3)
  LA s2, sum
  LW s2, 0(s2)
  ADDW s1, s2, s1
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s2, 0(s2)
  ADDW s1, s2, s1
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s2, 0(s2)
  ADDW s2, s2, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s3, count
  SW s2, 0(s3)
  LA s3, sum
  LW s3, 0(s3)
  ADDW s2, s3, s2
  LA s3, sum
  SW s2, 0(s3)
  ADDW s2, s2, s1
  LA s3, sum
  SW s2, 0(s3)
  ADDW s1, s2, s1
  LA s2, sum
  SW s1, 0(s2)
  LA s1, sum
  LW s1, 0(s1)
  LA s2, a
  LW s2, 0(s2)
  ADDW s1, s1, s2
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s1, sum
  LW s1, 0(s1)
  LA s2, a
  LW s2, 0(s2)
  ADDW s1, s1, s2
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s2, 0(s2)
  ADDW s1, s2, s1
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s2, 0(s2)
  ADDW s2, s2, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s3, count
  SW s2, 0(s3)
  LA s2, sum
  LW s2, 0(s2)
  ADDW s1, s2, s1
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s2, 0(s2)
  ADDW s1, s2, s1
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s2, 0(s2)
  ADDW s2, s2, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s3, count
  SW s2, 0(s3)
  LA s3, sum
  LW s3, 0(s3)
  ADDW s2, s3, s2
  LA s3, sum
  SW s2, 0(s3)
  ADDW s2, s2, s1
  LA s3, sum
  SW s2, 0(s3)
  ADDW s1, s2, s1
  LA s2, sum
  SW s1, 0(s2)
  LA s1, sum
  LW s1, 0(s1)
  LA s2, a
  LW s2, 0(s2)
  ADDW s1, s1, s2
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s1, sum
  LW s1, 0(s1)
  LA s2, a
  LW s2, 0(s2)
  ADDW s1, s1, s2
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s2, 0(s2)
  ADDW s1, s2, s1
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s2, 0(s2)
  ADDW s2, s2, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s3, count
  SW s2, 0(s3)
  LA s2, sum
  LW s2, 0(s2)
  ADDW s1, s2, s1
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s2, 0(s2)
  ADDW s1, s2, s1
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s2, 0(s2)
  ADDW s2, s2, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s3, count
  SW s2, 0(s3)
  LA s3, sum
  LW s3, 0(s3)
  ADDW s2, s3, s2
  LA s3, sum
  SW s2, 0(s3)
  ADDW s2, s2, s1
  LA s3, sum
  SW s2, 0(s3)
  ADDW s1, s2, s1
  LA s2, sum
  SW s1, 0(s2)
  LA s1, sum
  LW s1, 0(s1)
  LA s2, a
  LW s2, 0(s2)
  ADDW s1, s1, s2
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s1, sum
  LW s1, 0(s1)
  LA s2, a
  LW s2, 0(s2)
  ADDW s1, s1, s2
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s2, 0(s2)
  ADDW s1, s2, s1
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s2, 0(s2)
  ADDW s2, s2, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s3, count
  SW s2, 0(s3)
  LA s2, sum
  LW s2, 0(s2)
  ADDW s1, s2, s1
  LA s2, sum
  SW s1, 0(s2)
  LA s1, sum
  LW s1, 0(s1)
  ADDW s1, s1, s0
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s2, 0(s2)
  ADDW s2, s2, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s3, count
  SW s2, 0(s3)
  LA s3, sum
  LW s3, 0(s3)
  ADDW s2, s3, s2
  LA s3, sum
  SW s2, 0(s3)
  ADDW s2, s2, s1
  LA s3, sum
  SW s2, 0(s3)
  ADDW s1, s2, s1
  LA s2, sum
  SW s1, 0(s2)
  LA s1, sum
  LW s1, 0(s1)
  LA s2, a
  LW s2, 0(s2)
  ADDW s1, s1, s2
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s1, sum
  LW s1, 0(s1)
  LA s2, a
  LW s2, 0(s2)
  ADDW s1, s1, s2
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s2, 0(s2)
  ADDW s1, s2, s1
  LA s2, sum
  SW s1, 0(s2)
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s2, sum
  LW s2, 0(s2)
  ADDW s2, s2, s1
  LA s3, sum
  SW s2, 0(s3)
  LA s2, count
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s3, count
  SW s2, 0(s3)
  LA s2, sum
  LW s2, 0(s2)
  ADDW s1, s2, s1
  LA s2, sum
  SW s1, 0(s2)
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s0, s0, zero
  # implict jump to bb4
bb4:
  ADD s3, s0, zero
  ADD s4, s2, zero
  ADD s5, s1, zero
  SLTI s6, s4, 3
  BNE s6, zero, bb6
  # implict jump to bb5
bb5:
  LA s6, sum
  LW s6, 0(s6)
  ADD a0, s6, zero
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
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb6:
  # implict jump to bb7
bb7:
  LA s6, sum
  LW s6, 0(s6)
  ADDW s6, s6, s3
  LA s7, sum
  SW s6, 0(s7)
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
  LA s7, count
  LW s7, 0(s7)
  ADDIW s7, s7, 1
  LA s8, count
  SW s7, 0(s8)
  LA s8, sum
  LW s8, 0(s8)
  ADDW s7, s8, s7
  LA s8, sum
  SW s7, 0(s8)
  ADDW s7, s7, s6
  LA s8, sum
  SW s7, 0(s8)
  ADDW s6, s7, s6
  LA s7, sum
  SW s6, 0(s7)
  LA s6, sum
  LW s6, 0(s6)
  LA s7, a
  LW s7, 0(s7)
  ADDW s6, s6, s7
  LA s7, sum
  SW s6, 0(s7)
  LA s6, count
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, count
  SW s6, 0(s7)
  LA s6, sum
  LW s6, 0(s6)
  LA s7, a
  LW s7, 0(s7)
  ADDW s6, s6, s7
  LA s7, sum
  SW s6, 0(s7)
  LA s6, count
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, count
  SW s6, 0(s7)
  LA s7, sum
  LW s7, 0(s7)
  ADDW s6, s7, s6
  LA s7, sum
  SW s6, 0(s7)
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
  LA s7, count
  LW s7, 0(s7)
  ADDIW s7, s7, 1
  LA s8, count
  SW s7, 0(s8)
  LA s7, sum
  LW s7, 0(s7)
  ADDW s6, s7, s6
  LA s7, sum
  SW s6, 0(s7)
  XORI s6, s4, 1
  SLTIU s6, s6, 1
  BNE s6, zero, bb9
  # implict jump to bb8
bb8:
  LA s6, sum
  LW s6, 0(s6)
  ADDW s6, s6, s3
  LA s7, sum
  SW s6, 0(s7)
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
  LA s7, count
  LW s7, 0(s7)
  ADDIW s7, s7, 1
  LA s8, count
  SW s7, 0(s8)
  LA s8, sum
  LW s8, 0(s8)
  ADDW s7, s8, s7
  LA s8, sum
  SW s7, 0(s8)
  ADDW s7, s7, s6
  LA s8, sum
  SW s7, 0(s8)
  ADDW s6, s7, s6
  LA s7, sum
  SW s6, 0(s7)
  LA s6, sum
  LW s6, 0(s6)
  LA s7, a
  LW s7, 0(s7)
  ADDW s6, s6, s7
  LA s7, sum
  SW s6, 0(s7)
  LA s6, count
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, count
  SW s6, 0(s7)
  LA s6, sum
  LW s6, 0(s6)
  LA s7, a
  LW s7, 0(s7)
  ADDW s6, s6, s7
  LA s7, sum
  SW s6, 0(s7)
  LA s6, count
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, count
  SW s6, 0(s7)
  LA s7, sum
  LW s7, 0(s7)
  ADDW s6, s7, s6
  LA s7, sum
  SW s6, 0(s7)
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
  LA s7, count
  LW s7, 0(s7)
  ADDIW s7, s7, 1
  LA s8, count
  SW s7, 0(s8)
  LA s7, sum
  LW s7, 0(s7)
  ADDW s6, s7, s6
  LA s7, sum
  SW s6, 0(s7)
  LA s6, count
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, count
  SW s6, 0(s7)
  ADDIW s7, s4, 1
  ADD s1, s5, zero
  ADD s2, s7, zero
  ADD s0, s6, zero
  JAL zero, bb4
bb9:
  LA s5, count
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, count
  SW s5, 0(s6)
  LA s6, sum
  LW s6, 0(s6)
  ADDW s6, s6, s5
  LA s7, sum
  SW s6, 0(s7)
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
  LA s7, count
  LW s7, 0(s7)
  ADDIW s7, s7, 1
  LA s8, count
  SW s7, 0(s8)
  LA s8, sum
  LW s8, 0(s8)
  ADDW s7, s8, s7
  LA s8, sum
  SW s7, 0(s8)
  ADDW s7, s7, s6
  LA s8, sum
  SW s7, 0(s8)
  ADDW s6, s7, s6
  LA s7, sum
  SW s6, 0(s7)
  LA s6, sum
  LW s6, 0(s6)
  LA s7, a
  LW s7, 0(s7)
  ADDW s6, s6, s7
  LA s7, sum
  SW s6, 0(s7)
  LA s6, count
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, count
  SW s6, 0(s7)
  LA s6, sum
  LW s6, 0(s6)
  LA s7, a
  LW s7, 0(s7)
  ADDW s6, s6, s7
  LA s7, sum
  SW s6, 0(s7)
  LA s6, count
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, count
  SW s6, 0(s7)
  LA s7, sum
  LW s7, 0(s7)
  ADDW s6, s7, s6
  LA s7, sum
  SW s6, 0(s7)
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
  LA s7, count
  LW s7, 0(s7)
  ADDIW s7, s7, 1
  LA s8, count
  SW s7, 0(s8)
  LA s7, sum
  LW s7, 0(s7)
  ADDW s6, s7, s6
  LA s7, sum
  SW s6, 0(s7)
  ADDIW s4, s4, 1
  ADD s1, s5, zero
  ADD s2, s4, zero
  ADD s0, s3, zero
  JAL zero, bb4
f3:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  LA s0, count
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s1, count
  SW s0, 0(s1)
  LA s1, sum
  LW s1, 0(s1)
  ADDW s0, s1, s0
  LA s1, sum
  SW s0, 0(s1)
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
  LA s1, count
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, count
  SW s1, 0(s2)
  LA s1, sum
  LW s1, 0(s1)
  ADDW s0, s1, s0
  LA s1, sum
  SW s0, 0(s1)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
