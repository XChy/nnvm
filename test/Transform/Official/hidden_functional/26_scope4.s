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
  LA s0, sum
  ADDI a0, zero, 0
  SW a0, 0(s0)
  LA a0, count
  LW s2, 0(a0)
  ADDIW s0, s2, 1
  LA a0, count
  SW s0, 0(a0)
  LA a0, a
  SW s0, 0(a0)
  LA a0, sum
  SW s0, 0(a0)
  ADDIW s1, s2, 2
  LA a0, count
  SW s1, 0(a0)
  ADDW s3, s0, s1
  LA a0, sum
  SW s3, 0(a0)
  ADDIW s4, s2, 3
  LA a0, count
  SW s4, 0(a0)
  ADDW s5, s3, s4
  LA a0, sum
  SW s5, 0(a0)
  ADDIW s3, s2, 4
  LA a0, count
  SW s3, 0(a0)
  ADDW s3, s5, s3
  LA a0, sum
  SW s3, 0(a0)
  ADDW s3, s3, s4
  LA a0, sum
  SW s3, 0(a0)
  ADDW s3, s3, s4
  LA a0, sum
  SW s3, 0(a0)
  ADDW s4, s3, s0
  LA a0, sum
  SW s4, 0(a0)
  ADDIW s3, s2, 5
  LA a0, count
  SW s3, 0(a0)
  ADDW s4, s4, s0
  LA a0, sum
  SW s4, 0(a0)
  ADDIW s3, s2, 6
  LA a0, count
  SW s3, 0(a0)
  ADDW s4, s4, s3
  LA a0, sum
  SW s4, 0(a0)
  ADDIW s3, s2, 7
  LA a0, count
  SW s3, 0(a0)
  ADDW s5, s4, s3
  LA a0, sum
  SW s5, 0(a0)
  ADDIW s4, s2, 8
  LA a0, count
  SW s4, 0(a0)
  ADDW s3, s5, s3
  LA a0, sum
  SW s3, 0(a0)
  ADDW s3, s3, s1
  LA a0, sum
  SW s3, 0(a0)
  ADDIW s4, s2, 9
  LA a0, count
  SW s4, 0(a0)
  ADDW s3, s3, s4
  LA a0, sum
  SW s3, 0(a0)
  ADDIW s5, s2, 10
  LA a0, count
  SW s5, 0(a0)
  ADDW s3, s3, s5
  LA a0, sum
  SW s3, 0(a0)
  ADDW s3, s3, s4
  LA a0, sum
  SW s3, 0(a0)
  ADDW s3, s3, s4
  LA a0, sum
  SW s3, 0(a0)
  ADDW s4, s3, s0
  LA a0, sum
  SW s4, 0(a0)
  ADDIW s3, s2, 11
  LA a0, count
  SW s3, 0(a0)
  ADDW s3, s4, s0
  LA a0, sum
  SW s3, 0(a0)
  ADDIW s4, s2, 12
  LA a0, count
  SW s4, 0(a0)
  ADDW s3, s3, s4
  LA a0, sum
  SW s3, 0(a0)
  ADDIW s4, s2, 13
  LA a0, count
  SW s4, 0(a0)
  ADDW s5, s3, s4
  LA a0, sum
  SW s5, 0(a0)
  ADDIW s3, s2, 14
  LA a0, count
  SW s3, 0(a0)
  ADDW s4, s5, s4
  LA a0, sum
  SW s4, 0(a0)
  ADDIW s3, s2, 15
  LA a0, count
  SW s3, 0(a0)
  ADDW s3, s4, s1
  LA a0, sum
  SW s3, 0(a0)
  ADDIW s4, s2, 16
  LA a0, count
  SW s4, 0(a0)
  ADDW s3, s3, s4
  LA a0, sum
  SW s3, 0(a0)
  ADDIW s5, s2, 17
  LA a0, count
  SW s5, 0(a0)
  ADDW s3, s3, s5
  LA a0, sum
  SW s3, 0(a0)
  ADDW s3, s3, s4
  LA a0, sum
  SW s3, 0(a0)
  ADDW s3, s3, s4
  LA a0, sum
  SW s3, 0(a0)
  ADDW s4, s3, s0
  LA a0, sum
  SW s4, 0(a0)
  ADDIW s3, s2, 18
  LA a0, count
  SW s3, 0(a0)
  ADDW s4, s4, s0
  LA a0, sum
  SW s4, 0(a0)
  ADDIW s3, s2, 19
  LA a0, count
  SW s3, 0(a0)
  ADDW s3, s4, s3
  LA a0, sum
  SW s3, 0(a0)
  ADDIW s5, s2, 20
  LA a0, count
  SW s5, 0(a0)
  ADDW s4, s3, s5
  LA a0, sum
  SW s4, 0(a0)
  ADDIW s3, s2, 21
  LA a0, count
  SW s3, 0(a0)
  ADDW s4, s4, s5
  LA a0, sum
  SW s4, 0(a0)
  ADDIW s3, s2, 22
  LA a0, count
  SW s3, 0(a0)
  ADDIW s3, s2, 23
  LA a0, count
  SW s3, 0(a0)
  ADDW s3, s4, s3
  LA a0, sum
  SW s3, 0(a0)
  ADDIW s5, s2, 24
  LA a0, count
  SW s5, 0(a0)
  ADDW s4, s3, s5
  LA a0, sum
  SW s4, 0(a0)
  ADDIW s3, s2, 25
  LA a0, count
  SW s3, 0(a0)
  ADDW s3, s4, s3
  LA a0, sum
  SW s3, 0(a0)
  ADDW s3, s3, s5
  LA a0, sum
  SW s3, 0(a0)
  ADDW s3, s3, s5
  LA a0, sum
  SW s3, 0(a0)
  ADDW s3, s3, s0
  LA a0, sum
  SW s3, 0(a0)
  ADDIW s4, s2, 26
  LA a0, count
  SW s4, 0(a0)
  ADDW s3, s3, s0
  LA a0, sum
  SW s3, 0(a0)
  ADDIW s4, s2, 27
  LA a0, count
  SW s4, 0(a0)
  ADDW s3, s3, s4
  LA a0, sum
  SW s3, 0(a0)
  ADDIW s4, s2, 28
  LA a0, count
  SW s4, 0(a0)
  ADDW s3, s3, s4
  LA a0, sum
  SW s3, 0(a0)
  ADDIW s5, s2, 29
  LA a0, count
  SW s5, 0(a0)
  ADDW s3, s3, s4
  LA a0, sum
  SW s3, 0(a0)
  ADDIW s4, s2, 30
  LA a0, count
  SW s4, 0(a0)
  ADDW s3, s3, s4
  LA a0, sum
  SW s3, 0(a0)
  ADDIW s4, s2, 31
  LA a0, count
  SW s4, 0(a0)
  ADDW s5, s3, s4
  LA a0, sum
  SW s5, 0(a0)
  ADDIW s3, s2, 32
  LA a0, count
  SW s3, 0(a0)
  ADDW s3, s5, s3
  LA a0, sum
  SW s3, 0(a0)
  ADDW s3, s3, s4
  LA a0, sum
  SW s3, 0(a0)
  ADDW s3, s3, s4
  LA a0, sum
  SW s3, 0(a0)
  ADDW s4, s3, s0
  LA a0, sum
  SW s4, 0(a0)
  ADDIW s3, s2, 33
  LA a0, count
  SW s3, 0(a0)
  ADDW s4, s4, s0
  LA a0, sum
  SW s4, 0(a0)
  ADDIW s3, s2, 34
  LA a0, count
  SW s3, 0(a0)
  ADDW s3, s4, s3
  LA a0, sum
  SW s3, 0(a0)
  ADDIW s5, s2, 35
  LA a0, count
  SW s5, 0(a0)
  ADDW s3, s3, s5
  LA a0, sum
  SW s3, 0(a0)
  ADDIW s4, s2, 36
  LA a0, count
  SW s4, 0(a0)
  ADDW s4, s3, s5
  LA a0, sum
  SW s4, 0(a0)
  ADDIW s3, s2, 37
  LA a0, count
  SW s3, 0(a0)
  ADDW s4, s4, s3
  LA a0, sum
  SW s4, 0(a0)
  ADDIW s3, s2, 38
  LA a0, count
  SW s3, 0(a0)
  ADDW s4, s4, s3
  LA a0, sum
  SW s4, 0(a0)
  ADDIW s5, s2, 39
  LA a0, count
  SW s5, 0(a0)
  ADDW s4, s4, s5
  LA a0, sum
  SW s4, 0(a0)
  ADDW s4, s4, s3
  LA a0, sum
  SW s4, 0(a0)
  ADDW s3, s4, s3
  LA a0, sum
  SW s3, 0(a0)
  ADDW s3, s3, s0
  LA a0, sum
  SW s3, 0(a0)
  ADDIW s4, s2, 40
  LA a0, count
  SW s4, 0(a0)
  ADDW s3, s3, s0
  LA a0, sum
  SW s3, 0(a0)
  ADDIW s4, s2, 41
  LA a0, count
  SW s4, 0(a0)
  ADDW s3, s3, s4
  LA a0, sum
  SW s3, 0(a0)
  ADDIW s5, s2, 42
  LA a0, count
  SW s5, 0(a0)
  ADDW s3, s3, s5
  LA a0, sum
  SW s3, 0(a0)
  ADDIW s4, s2, 43
  LA a0, count
  SW s4, 0(a0)
  ADDW s3, s3, s5
  LA a0, sum
  SW s3, 0(a0)
  ADDW s3, s3, s1
  LA a0, sum
  SW s3, 0(a0)
  ADDIW s4, s2, 44
  LA a0, count
  SW s4, 0(a0)
  ADDW s5, s3, s4
  LA a0, sum
  SW s5, 0(a0)
  ADDIW s3, s2, 45
  LA a0, count
  SW s3, 0(a0)
  ADDW s3, s5, s3
  LA a0, sum
  SW s3, 0(a0)
  ADDW s3, s3, s4
  LA a0, sum
  SW s3, 0(a0)
  ADDW s3, s3, s4
  LA a0, sum
  SW s3, 0(a0)
  ADDW s4, s3, s0
  LA a0, sum
  SW s4, 0(a0)
  ADDIW s3, s2, 46
  LA a0, count
  SW s3, 0(a0)
  ADDW s3, s4, s0
  LA a0, sum
  SW s3, 0(a0)
  ADDIW s4, s2, 47
  LA a0, count
  SW s4, 0(a0)
  ADDW s3, s3, s4
  LA a0, sum
  SW s3, 0(a0)
  ADDIW s4, s2, 48
  LA a0, count
  SW s4, 0(a0)
  ADDW s3, s3, s4
  LA a0, sum
  SW s3, 0(a0)
  ADDIW s2, s2, 49
  LA a0, count
  SW s2, 0(a0)
  ADDW s2, s3, s4
  LA a0, sum
  SW s2, 0(a0)
  ADD s2, zero, zero
  ADD s3, s1, zero
  ADD a0, zero, zero
  # implict jump to bb1
bb1:
  ADD s1, a0, zero
  SLTI a0, s1, 3
  BNE a0, zero, bb3
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
  LA a0, sum
  LW a0, 0(a0)
  ADDW s5, a0, s3
  LA a0, sum
  SW s5, 0(a0)
  LA a0, count
  LW s4, 0(a0)
  ADDIW s6, s4, 1
  LA a0, count
  SW s6, 0(a0)
  ADDW s7, s5, s6
  LA a0, sum
  SW s7, 0(a0)
  ADDIW s5, s4, 2
  LA a0, count
  SW s5, 0(a0)
  ADDW s5, s7, s5
  LA a0, sum
  SW s5, 0(a0)
  ADDW s5, s5, s6
  LA a0, sum
  SW s5, 0(a0)
  ADDW s5, s5, s6
  LA a0, sum
  SW s5, 0(a0)
  ADDW s5, s5, s0
  LA a0, sum
  SW s5, 0(a0)
  ADDIW s6, s4, 3
  LA a0, count
  SW s6, 0(a0)
  ADDW s5, s5, s0
  LA a0, sum
  SW s5, 0(a0)
  ADDIW s6, s4, 4
  LA a0, count
  SW s6, 0(a0)
  ADDW s5, s5, s6
  LA a0, sum
  SW s5, 0(a0)
  ADDIW s6, s4, 5
  LA a0, count
  SW s6, 0(a0)
  ADDW s5, s5, s6
  LA a0, sum
  SW s5, 0(a0)
  ADDIW s4, s4, 6
  LA a0, count
  SW s4, 0(a0)
  ADDW s4, s5, s6
  LA a0, sum
  SW s4, 0(a0)
  XORI a0, s1, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb6
  # implict jump to bb5
bb5:
  LA a0, sum
  LW a0, 0(a0)
  ADDW s4, a0, s3
  LA a0, sum
  SW s4, 0(a0)
  LA a0, count
  LW s3, 0(a0)
  ADDIW s5, s3, 1
  LA a0, count
  SW s5, 0(a0)
  ADDW s4, s4, s5
  LA a0, sum
  SW s4, 0(a0)
  ADDIW s6, s3, 2
  LA a0, count
  SW s6, 0(a0)
  ADDW s4, s4, s6
  LA a0, sum
  SW s4, 0(a0)
  ADDW s4, s4, s5
  LA a0, sum
  SW s4, 0(a0)
  ADDW s4, s4, s5
  LA a0, sum
  SW s4, 0(a0)
  ADDW s5, s4, s0
  LA a0, sum
  SW s5, 0(a0)
  ADDIW s4, s3, 3
  LA a0, count
  SW s4, 0(a0)
  ADDW s4, s5, s0
  LA a0, sum
  SW s4, 0(a0)
  ADDIW s5, s3, 4
  LA a0, count
  SW s5, 0(a0)
  ADDW s4, s4, s5
  LA a0, sum
  SW s4, 0(a0)
  ADDIW s6, s3, 5
  LA a0, count
  SW s6, 0(a0)
  ADDW s4, s4, s6
  LA a0, sum
  SW s4, 0(a0)
  ADDIW s5, s3, 6
  LA a0, count
  SW s5, 0(a0)
  ADDW s4, s4, s6
  LA a0, sum
  SW s4, 0(a0)
  ADDIW s3, s3, 7
  LA a0, count
  SW s3, 0(a0)
  ADDIW a0, s1, 1
  JAL zero, bb1
bb6:
  LA a0, count
  LW s4, 0(a0)
  ADDIW s2, s4, 1
  LA a0, count
  SW s2, 0(a0)
  LA a0, sum
  LW a0, 0(a0)
  ADDW s6, a0, s2
  LA a0, sum
  SW s6, 0(a0)
  ADDIW s5, s4, 2
  LA a0, count
  SW s5, 0(a0)
  ADDW s6, s6, s5
  LA a0, sum
  SW s6, 0(a0)
  ADDIW s7, s4, 3
  LA a0, count
  SW s7, 0(a0)
  ADDW s6, s6, s7
  LA a0, sum
  SW s6, 0(a0)
  ADDW s6, s6, s5
  LA a0, sum
  SW s6, 0(a0)
  ADDW s5, s6, s5
  LA a0, sum
  SW s5, 0(a0)
  ADDW s5, s5, s0
  LA a0, sum
  SW s5, 0(a0)
  ADDIW s6, s4, 4
  LA a0, count
  SW s6, 0(a0)
  ADDW s5, s5, s0
  LA a0, sum
  SW s5, 0(a0)
  ADDIW s6, s4, 5
  LA a0, count
  SW s6, 0(a0)
  ADDW s5, s5, s6
  LA a0, sum
  SW s5, 0(a0)
  ADDIW s6, s4, 6
  LA a0, count
  SW s6, 0(a0)
  ADDW s5, s5, s6
  LA a0, sum
  SW s5, 0(a0)
  ADDIW s4, s4, 7
  LA a0, count
  SW s4, 0(a0)
  ADDW s4, s5, s6
  LA a0, sum
  SW s4, 0(a0)
  ADDIW a0, s1, 1
  JAL zero, bb1
