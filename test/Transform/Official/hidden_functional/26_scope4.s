.global main
.section .bss



.section .data
count:
.word 0x00000000
sum:
.word 0x00000000
a:
.word 0x00000000
.section .text
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
  LA a0, sum
  ADDI s0, zero, 0
  SW s0, 0(a0)
  LA a0, count
  LW a0, 0(a0)
  ADDIW s2, a0, 1
  LA s0, count
  SW s2, 0(s0)
  LA s0, a
  SW s2, 0(s0)
  LA s0, sum
  SW s2, 0(s0)
  ADDIW s1, a0, 2
  LA s0, count
  SW s1, 0(s0)
  ADDW s0, s2, s1
  LA s3, sum
  SW s0, 0(s3)
  ADDIW s3, a0, 3
  LA s4, count
  SW s3, 0(s4)
  ADDW s0, s0, s3
  LA s4, sum
  SW s0, 0(s4)
  ADDIW s4, a0, 4
  LA s5, count
  SW s4, 0(s5)
  ADDW s0, s0, s4
  LA s4, sum
  SW s0, 0(s4)
  ADDW s0, s0, s3
  LA s4, sum
  SW s0, 0(s4)
  ADDW s0, s0, s3
  LA s3, sum
  SW s0, 0(s3)
  ADDW s0, s0, s2
  LA s3, sum
  SW s0, 0(s3)
  ADDIW s3, a0, 5
  LA s4, count
  SW s3, 0(s4)
  ADDW s0, s0, s2
  LA s3, sum
  SW s0, 0(s3)
  ADDIW s3, a0, 6
  LA s4, count
  SW s3, 0(s4)
  ADDW s0, s0, s3
  LA s3, sum
  SW s0, 0(s3)
  ADDIW s3, a0, 7
  LA s4, count
  SW s3, 0(s4)
  ADDW s0, s0, s3
  LA s4, sum
  SW s0, 0(s4)
  ADDIW s4, a0, 8
  LA s5, count
  SW s4, 0(s5)
  ADDW s0, s0, s3
  LA s3, sum
  SW s0, 0(s3)
  ADDW s0, s0, s1
  LA s3, sum
  SW s0, 0(s3)
  ADDIW s3, a0, 9
  LA s4, count
  SW s3, 0(s4)
  ADDW s0, s0, s3
  LA s4, sum
  SW s0, 0(s4)
  ADDIW s4, a0, 10
  LA s5, count
  SW s4, 0(s5)
  ADDW s0, s0, s4
  LA s4, sum
  SW s0, 0(s4)
  ADDW s0, s0, s3
  LA s4, sum
  SW s0, 0(s4)
  ADDW s0, s0, s3
  LA s3, sum
  SW s0, 0(s3)
  ADDW s0, s0, s2
  LA s3, sum
  SW s0, 0(s3)
  ADDIW s3, a0, 11
  LA s4, count
  SW s3, 0(s4)
  ADDW s0, s0, s2
  LA s3, sum
  SW s0, 0(s3)
  ADDIW s3, a0, 12
  LA s4, count
  SW s3, 0(s4)
  ADDW s0, s0, s3
  LA s3, sum
  SW s0, 0(s3)
  ADDIW s3, a0, 13
  LA s4, count
  SW s3, 0(s4)
  ADDW s0, s0, s3
  LA s4, sum
  SW s0, 0(s4)
  ADDIW s4, a0, 14
  LA s5, count
  SW s4, 0(s5)
  ADDW s0, s0, s3
  LA s3, sum
  SW s0, 0(s3)
  ADDIW s3, a0, 15
  LA s4, count
  SW s3, 0(s4)
  ADDW s0, s0, s1
  LA s3, sum
  SW s0, 0(s3)
  ADDIW s3, a0, 16
  LA s4, count
  SW s3, 0(s4)
  ADDW s0, s0, s3
  LA s4, sum
  SW s0, 0(s4)
  ADDIW s4, a0, 17
  LA s5, count
  SW s4, 0(s5)
  ADDW s0, s0, s4
  LA s4, sum
  SW s0, 0(s4)
  ADDW s0, s0, s3
  LA s4, sum
  SW s0, 0(s4)
  ADDW s0, s0, s3
  LA s3, sum
  SW s0, 0(s3)
  ADDW s0, s0, s2
  LA s3, sum
  SW s0, 0(s3)
  ADDIW s3, a0, 18
  LA s4, count
  SW s3, 0(s4)
  ADDW s0, s0, s2
  LA s3, sum
  SW s0, 0(s3)
  ADDIW s3, a0, 19
  LA s4, count
  SW s3, 0(s4)
  ADDW s0, s0, s3
  LA s3, sum
  SW s0, 0(s3)
  ADDIW s3, a0, 20
  LA s4, count
  SW s3, 0(s4)
  ADDW s0, s0, s3
  LA s4, sum
  SW s0, 0(s4)
  ADDIW s4, a0, 21
  LA s5, count
  SW s4, 0(s5)
  ADDW s0, s0, s3
  LA s3, sum
  SW s0, 0(s3)
  ADDIW s3, a0, 22
  LA s4, count
  SW s3, 0(s4)
  ADDIW s3, a0, 23
  LA s4, count
  SW s3, 0(s4)
  ADDW s0, s0, s3
  LA s3, sum
  SW s0, 0(s3)
  ADDIW s3, a0, 24
  LA s4, count
  SW s3, 0(s4)
  ADDW s0, s0, s3
  LA s4, sum
  SW s0, 0(s4)
  ADDIW s4, a0, 25
  LA s5, count
  SW s4, 0(s5)
  ADDW s0, s0, s4
  LA s4, sum
  SW s0, 0(s4)
  ADDW s0, s0, s3
  LA s4, sum
  SW s0, 0(s4)
  ADDW s0, s0, s3
  LA s3, sum
  SW s0, 0(s3)
  ADDW s0, s0, s2
  LA s3, sum
  SW s0, 0(s3)
  ADDIW s3, a0, 26
  LA s4, count
  SW s3, 0(s4)
  ADDW s0, s0, s2
  LA s3, sum
  SW s0, 0(s3)
  ADDIW s3, a0, 27
  LA s4, count
  SW s3, 0(s4)
  ADDW s0, s0, s3
  LA s3, sum
  SW s0, 0(s3)
  ADDIW s3, a0, 28
  LA s4, count
  SW s3, 0(s4)
  ADDW s0, s0, s3
  LA s4, sum
  SW s0, 0(s4)
  ADDIW s4, a0, 29
  LA s5, count
  SW s4, 0(s5)
  ADDW s0, s0, s3
  LA s3, sum
  SW s0, 0(s3)
  ADDIW s3, a0, 30
  LA s4, count
  SW s3, 0(s4)
  ADDW s0, s0, s3
  LA s3, sum
  SW s0, 0(s3)
  ADDIW s3, a0, 31
  LA s4, count
  SW s3, 0(s4)
  ADDW s0, s0, s3
  LA s4, sum
  SW s0, 0(s4)
  ADDIW s4, a0, 32
  LA s5, count
  SW s4, 0(s5)
  ADDW s0, s0, s4
  LA s4, sum
  SW s0, 0(s4)
  ADDW s0, s0, s3
  LA s4, sum
  SW s0, 0(s4)
  ADDW s0, s0, s3
  LA s3, sum
  SW s0, 0(s3)
  ADDW s0, s0, s2
  LA s3, sum
  SW s0, 0(s3)
  ADDIW s3, a0, 33
  LA s4, count
  SW s3, 0(s4)
  ADDW s0, s0, s2
  LA s3, sum
  SW s0, 0(s3)
  ADDIW s3, a0, 34
  LA s4, count
  SW s3, 0(s4)
  ADDW s0, s0, s3
  LA s3, sum
  SW s0, 0(s3)
  ADDIW s3, a0, 35
  LA s4, count
  SW s3, 0(s4)
  ADDW s0, s0, s3
  LA s4, sum
  SW s0, 0(s4)
  ADDIW s4, a0, 36
  LA s5, count
  SW s4, 0(s5)
  ADDW s0, s0, s3
  LA s3, sum
  SW s0, 0(s3)
  ADDIW s3, a0, 37
  LA s4, count
  SW s3, 0(s4)
  ADDW s0, s0, s3
  LA s3, sum
  SW s0, 0(s3)
  ADDIW s3, a0, 38
  LA s4, count
  SW s3, 0(s4)
  ADDW s0, s0, s3
  LA s4, sum
  SW s0, 0(s4)
  ADDIW s4, a0, 39
  LA s5, count
  SW s4, 0(s5)
  ADDW s0, s0, s4
  LA s4, sum
  SW s0, 0(s4)
  ADDW s0, s0, s3
  LA s4, sum
  SW s0, 0(s4)
  ADDW s0, s0, s3
  LA s3, sum
  SW s0, 0(s3)
  ADDW s0, s0, s2
  LA s3, sum
  SW s0, 0(s3)
  ADDIW s3, a0, 40
  LA s4, count
  SW s3, 0(s4)
  ADDW s0, s0, s2
  LA s3, sum
  SW s0, 0(s3)
  ADDIW s3, a0, 41
  LA s4, count
  SW s3, 0(s4)
  ADDW s0, s0, s3
  LA s3, sum
  SW s0, 0(s3)
  ADDIW s3, a0, 42
  LA s4, count
  SW s3, 0(s4)
  ADDW s0, s0, s3
  LA s4, sum
  SW s0, 0(s4)
  ADDIW s4, a0, 43
  LA s5, count
  SW s4, 0(s5)
  ADDW s0, s0, s3
  LA s3, sum
  SW s0, 0(s3)
  ADDW s0, s0, s1
  LA s3, sum
  SW s0, 0(s3)
  ADDIW s3, a0, 44
  LA s4, count
  SW s3, 0(s4)
  ADDW s0, s0, s3
  LA s4, sum
  SW s0, 0(s4)
  ADDIW s4, a0, 45
  LA s5, count
  SW s4, 0(s5)
  ADDW s0, s0, s4
  LA s4, sum
  SW s0, 0(s4)
  ADDW s0, s0, s3
  LA s4, sum
  SW s0, 0(s4)
  ADDW s0, s0, s3
  LA s3, sum
  SW s0, 0(s3)
  ADDW s0, s0, s2
  LA s3, sum
  SW s0, 0(s3)
  ADDIW s3, a0, 46
  LA s4, count
  SW s3, 0(s4)
  ADDW s0, s0, s2
  LA s3, sum
  SW s0, 0(s3)
  ADDIW s3, a0, 47
  LA s4, count
  SW s3, 0(s4)
  ADDW s0, s0, s3
  LA s3, sum
  SW s0, 0(s3)
  ADDIW s3, a0, 48
  LA s4, count
  SW s3, 0(s4)
  ADDW s0, s0, s3
  LA s4, sum
  SW s0, 0(s4)
  ADDIW a0, a0, 49
  LA s4, count
  SW a0, 0(s4)
  ADDW a0, s0, s3
  LA s0, sum
  SW a0, 0(s0)
  ADD a0, zero, zero
  ADD s0, zero, zero
  # implict jump to bb1
bb1:
  SLTI s3, s0, 3
  BNE s3, zero, bb3
  # implict jump to bb2
bb2:
  LA a0, sum
  LW a0, 0(a0)
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
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb3:
  # implict jump to bb4
bb4:
  LA s3, sum
  LW s3, 0(s3)
  ADDW s3, s3, s1
  LA s4, sum
  SW s3, 0(s4)
  LA s4, count
  LW s4, 0(s4)
  ADDIW s5, s4, 1
  LA s6, count
  SW s5, 0(s6)
  ADDW s3, s3, s5
  LA s6, sum
  SW s3, 0(s6)
  ADDIW s6, s4, 2
  LA s7, count
  SW s6, 0(s7)
  ADDW s3, s3, s6
  LA s6, sum
  SW s3, 0(s6)
  ADDW s3, s3, s5
  LA s6, sum
  SW s3, 0(s6)
  ADDW s3, s3, s5
  LA s5, sum
  SW s3, 0(s5)
  ADDW s3, s3, s2
  LA s5, sum
  SW s3, 0(s5)
  ADDIW s5, s4, 3
  LA s6, count
  SW s5, 0(s6)
  ADDW s3, s3, s2
  LA s5, sum
  SW s3, 0(s5)
  ADDIW s5, s4, 4
  LA s6, count
  SW s5, 0(s6)
  ADDW s3, s3, s5
  LA s5, sum
  SW s3, 0(s5)
  ADDIW s5, s4, 5
  LA s6, count
  SW s5, 0(s6)
  ADDW s3, s3, s5
  LA s6, sum
  SW s3, 0(s6)
  ADDIW s4, s4, 6
  LA s6, count
  SW s4, 0(s6)
  ADDW s3, s3, s5
  LA s4, sum
  SW s3, 0(s4)
  XORI s3, s0, 1
  SLTIU s3, s3, 1
  ADDIW s0, s0, 1
  BNE s3, zero, bb6
  # implict jump to bb5
bb5:
  LA s3, sum
  LW s3, 0(s3)
  ADDW s1, s3, s1
  LA s3, sum
  SW s1, 0(s3)
  LA s3, count
  LW s3, 0(s3)
  ADDIW s4, s3, 1
  LA s5, count
  SW s4, 0(s5)
  ADDW s1, s1, s4
  LA s5, sum
  SW s1, 0(s5)
  ADDIW s5, s3, 2
  LA s6, count
  SW s5, 0(s6)
  ADDW s1, s1, s5
  LA s5, sum
  SW s1, 0(s5)
  ADDW s1, s1, s4
  LA s5, sum
  SW s1, 0(s5)
  ADDW s1, s1, s4
  LA s4, sum
  SW s1, 0(s4)
  ADDW s1, s1, s2
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s4, s3, 3
  LA s5, count
  SW s4, 0(s5)
  ADDW s1, s1, s2
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s4, s3, 4
  LA s5, count
  SW s4, 0(s5)
  ADDW s1, s1, s4
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s4, s3, 5
  LA s5, count
  SW s4, 0(s5)
  ADDW s1, s1, s4
  LA s5, sum
  SW s1, 0(s5)
  ADDIW s5, s3, 6
  LA s6, count
  SW s5, 0(s6)
  ADDW s1, s1, s4
  LA s4, sum
  SW s1, 0(s4)
  ADDIW s1, s3, 7
  LA s3, count
  SW s1, 0(s3)
  JAL zero, bb1
bb6:
  LA a0, count
  LW s3, 0(a0)
  ADDIW a0, s3, 1
  LA s4, count
  SW a0, 0(s4)
  LA s4, sum
  LW s4, 0(s4)
  ADDW s4, s4, a0
  LA s5, sum
  SW s4, 0(s5)
  ADDIW s5, s3, 2
  LA s6, count
  SW s5, 0(s6)
  ADDW s4, s4, s5
  LA s6, sum
  SW s4, 0(s6)
  ADDIW s6, s3, 3
  LA s7, count
  SW s6, 0(s7)
  ADDW s4, s4, s6
  LA s6, sum
  SW s4, 0(s6)
  ADDW s4, s4, s5
  LA s6, sum
  SW s4, 0(s6)
  ADDW s4, s4, s5
  LA s5, sum
  SW s4, 0(s5)
  ADDW s4, s4, s2
  LA s5, sum
  SW s4, 0(s5)
  ADDIW s5, s3, 4
  LA s6, count
  SW s5, 0(s6)
  ADDW s4, s4, s2
  LA s5, sum
  SW s4, 0(s5)
  ADDIW s5, s3, 5
  LA s6, count
  SW s5, 0(s6)
  ADDW s4, s4, s5
  LA s5, sum
  SW s4, 0(s5)
  ADDIW s5, s3, 6
  LA s6, count
  SW s5, 0(s6)
  ADDW s4, s4, s5
  LA s6, sum
  SW s4, 0(s6)
  ADDIW s3, s3, 7
  LA s6, count
  SW s3, 0(s6)
  ADDW s3, s4, s5
  LA s4, sum
  SW s3, 0(s4)
  JAL zero, bb1
