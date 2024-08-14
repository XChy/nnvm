.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
main:   # loop depth 0
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  LA t0, sum
  LA t2, count
  ADDI t1, zero, 0
  LA a0, count
  SW t1, 0(t0)
  LA a2, a
  LW t0, 0(t2)
  LA a3, sum
  LA a4, count
  LA a5, sum
  LA a6, count
  LA a7, sum
  ADDIW a1, t0, 1
  ADDIW t2, t0, 2
  SW a1, 0(a0)
  ADDW t1, a1, t2
  SW a1, 0(a2)
  ADDIW a0, t0, 3
  SW a1, 0(a3)
  LA a3, count
  SW t2, 0(a4)
  ADDW a2, t1, a0
  SW t1, 0(a5)
  LA a4, sum
  SW a0, 0(a6)
  ADDIW t1, t0, 4
  SW a2, 0(a7)
  LA a5, sum
  ADDW a2, a2, t1
  SW t1, 0(a3)
  LA a3, sum
  ADDW t1, a2, a0
  SW a2, 0(a4)
  LA a2, sum
  ADDW a0, t1, a0
  SW t1, 0(a5)
  LA a4, count
  ADDW t1, a0, a1
  SW a0, 0(a3)
  LA a3, sum
  ADDIW a0, t0, 5
  SW t1, 0(a2)
  LA a2, count
  ADDW t1, t1, a1
  SW a0, 0(a4)
  LA a4, sum
  ADDIW a0, t0, 6
  SW t1, 0(a3)
  LA a3, count
  ADDW t1, t1, a0
  SW a0, 0(a2)
  LA a5, sum
  ADDIW a0, t0, 7
  SW t1, 0(a4)
  LA a4, count
  ADDW t1, t1, a0
  SW a0, 0(a3)
  LA a3, sum
  ADDIW a2, t0, 8
  SW t1, 0(a5)
  LA a5, sum
  ADDW t1, t1, a0
  SW a2, 0(a4)
  LA a2, count
  ADDW a0, t1, t2
  SW t1, 0(a3)
  LA a3, sum
  ADDIW t1, t0, 9
  SW a0, 0(a5)
  LA a4, count
  ADDW a0, a0, t1
  SW t1, 0(a2)
  LA a5, sum
  ADDIW a2, t0, 10
  SW a0, 0(a3)
  LA a3, sum
  ADDW a0, a0, a2
  SW a2, 0(a4)
  LA a4, sum
  ADDW a2, a0, t1
  SW a0, 0(a5)
  LA a5, sum
  ADDW t1, a2, t1
  SW a2, 0(a3)
  LA a2, count
  ADDW a0, t1, a1
  SW t1, 0(a4)
  LA a3, sum
  ADDIW t1, t0, 11
  SW a0, 0(a5)
  LA a4, count
  ADDW a0, a0, a1
  SW t1, 0(a2)
  LA a2, sum
  ADDIW t1, t0, 12
  SW a0, 0(a3)
  LA a3, count
  ADDW a0, a0, t1
  SW t1, 0(a4)
  LA a4, sum
  ADDIW t1, t0, 13
  SW a0, 0(a2)
  LA a5, count
  ADDW a0, a0, t1
  SW t1, 0(a3)
  LA a3, sum
  ADDIW a2, t0, 14
  SW a0, 0(a4)
  LA a4, count
  ADDW t1, a0, t1
  SW a2, 0(a5)
  LA a2, sum
  ADDIW a0, t0, 15
  SW t1, 0(a3)
  LA a3, count
  ADDW t1, t1, t2
  SW a0, 0(a4)
  LA a4, sum
  ADDIW a0, t0, 16
  SW t1, 0(a2)
  LA a5, count
  ADDW t1, t1, a0
  SW a0, 0(a3)
  LA a3, sum
  ADDIW a2, t0, 17
  SW t1, 0(a4)
  LA a4, sum
  ADDW t1, t1, a2
  SW a2, 0(a5)
  LA a5, sum
  ADDW a2, t1, a0
  SW t1, 0(a3)
  LA a3, sum
  ADDW t1, a2, a0
  SW a2, 0(a4)
  LA a2, count
  ADDW a0, t1, a1
  SW t1, 0(a5)
  LA a4, sum
  ADDIW t1, t0, 18
  SW a0, 0(a3)
  LA a3, count
  ADDW a0, a0, a1
  SW t1, 0(a2)
  LA a2, sum
  ADDIW t1, t0, 19
  SW a0, 0(a4)
  LA a4, count
  ADDW a0, a0, t1
  SW t1, 0(a3)
  LA a3, sum
  ADDIW t1, t0, 20
  SW a0, 0(a2)
  LA a5, count
  ADDW a0, a0, t1
  SW t1, 0(a4)
  LA a4, sum
  ADDIW a2, t0, 21
  SW a0, 0(a3)
  LA a3, count
  ADDW t1, a0, t1
  SW a2, 0(a5)
  LA a5, count
  ADDIW a0, t0, 22
  SW t1, 0(a4)
  LA a4, sum
  ADDIW a2, t0, 23
  SW a0, 0(a3)
  LA a3, count
  ADDW t1, t1, a2
  SW a2, 0(a5)
  LA a5, sum
  ADDIW a0, t0, 24
  SW t1, 0(a4)
  LA a4, count
  ADDW t1, t1, a0
  SW a0, 0(a3)
  LA a3, sum
  ADDIW a2, t0, 25
  SW t1, 0(a5)
  LA a5, sum
  ADDW t1, t1, a2
  SW a2, 0(a4)
  LA a4, sum
  ADDW a2, t1, a0
  SW t1, 0(a3)
  LA a3, sum
  ADDW t1, a2, a0
  SW a2, 0(a5)
  LA a2, count
  ADDW a0, t1, a1
  SW t1, 0(a4)
  LA a4, sum
  ADDIW t1, t0, 26
  SW a0, 0(a3)
  LA a3, count
  ADDW a0, a0, a1
  SW t1, 0(a2)
  LA a2, sum
  ADDIW t1, t0, 27
  SW a0, 0(a4)
  LA a4, count
  ADDW a0, a0, t1
  SW t1, 0(a3)
  LA a3, sum
  ADDIW t1, t0, 28
  SW a0, 0(a2)
  LA a5, count
  ADDW a0, a0, t1
  SW t1, 0(a4)
  LA a4, sum
  ADDIW a2, t0, 29
  SW a0, 0(a3)
  LA a3, count
  ADDW t1, a0, t1
  SW a2, 0(a5)
  LA a2, sum
  ADDIW a0, t0, 30
  SW t1, 0(a4)
  LA a4, count
  ADDW t1, t1, a0
  SW a0, 0(a3)
  LA a3, sum
  ADDIW a0, t0, 31
  SW t1, 0(a2)
  LA a5, count
  ADDW t1, t1, a0
  SW a0, 0(a4)
  LA a4, sum
  ADDIW a2, t0, 32
  SW t1, 0(a3)
  LA a3, sum
  ADDW t1, t1, a2
  SW a2, 0(a5)
  LA a5, sum
  ADDW a2, t1, a0
  SW t1, 0(a4)
  LA a4, sum
  ADDW t1, a2, a0
  SW a2, 0(a3)
  LA a2, count
  ADDW a0, t1, a1
  SW t1, 0(a5)
  LA a3, sum
  ADDIW t1, t0, 33
  SW a0, 0(a4)
  LA a4, count
  ADDW a0, a0, a1
  SW t1, 0(a2)
  LA a2, sum
  ADDIW t1, t0, 34
  SW a0, 0(a3)
  LA a3, count
  ADDW a0, a0, t1
  SW t1, 0(a4)
  LA a4, sum
  ADDIW t1, t0, 35
  SW a0, 0(a2)
  LA a5, count
  ADDW a0, a0, t1
  SW t1, 0(a3)
  LA a3, sum
  ADDIW a2, t0, 36
  SW a0, 0(a4)
  LA a4, count
  ADDW t1, a0, t1
  SW a2, 0(a5)
  LA a2, sum
  ADDIW a0, t0, 37
  SW t1, 0(a3)
  LA a3, count
  ADDW t1, t1, a0
  SW a0, 0(a4)
  LA a4, sum
  ADDIW a0, t0, 38
  SW t1, 0(a2)
  LA a5, count
  ADDW t1, t1, a0
  SW a0, 0(a3)
  LA a3, sum
  ADDIW a2, t0, 39
  SW t1, 0(a4)
  LA a4, sum
  ADDW t1, t1, a2
  SW a2, 0(a5)
  LA a5, sum
  ADDW a2, t1, a0
  SW t1, 0(a3)
  LA a3, sum
  ADDW t1, a2, a0
  SW a2, 0(a4)
  LA a2, count
  ADDW a0, t1, a1
  SW t1, 0(a5)
  LA a4, sum
  ADDIW t1, t0, 40
  SW a0, 0(a3)
  LA a3, count
  ADDW a0, a0, a1
  SW t1, 0(a2)
  LA a2, sum
  ADDIW t1, t0, 41
  SW a0, 0(a4)
  LA a4, count
  ADDW a0, a0, t1
  SW t1, 0(a3)
  LA a3, sum
  ADDIW t1, t0, 42
  SW a0, 0(a2)
  LA a5, count
  ADDW a0, a0, t1
  SW t1, 0(a4)
  LA a4, sum
  ADDIW a2, t0, 43
  SW a0, 0(a3)
  LA a3, sum
  ADDW t1, a0, t1
  SW a2, 0(a5)
  LA a2, count
  ADDW a0, t1, t2
  SW t1, 0(a4)
  LA a4, sum
  ADDIW t1, t0, 44
  SW a0, 0(a3)
  LA a3, count
  ADDW a0, a0, t1
  SW t1, 0(a2)
  LA a5, sum
  ADDIW a2, t0, 45
  SW a0, 0(a4)
  LA a4, sum
  ADDW a0, a0, a2
  SW a2, 0(a3)
  LA a3, sum
  ADDW a2, a0, t1
  SW a0, 0(a5)
  LA a5, sum
  ADDW t1, a2, t1
  SW a2, 0(a4)
  LA a2, count
  ADDW a0, t1, a1
  SW t1, 0(a3)
  LA a3, sum
  ADDIW t1, t0, 46
  SW a0, 0(a5)
  LA a4, count
  ADDW a0, a0, a1
  SW t1, 0(a2)
  LA a2, sum
  ADDIW t1, t0, 47
  SW a0, 0(a3)
  LA a3, count
  ADDW a0, a0, t1
  SW t1, 0(a4)
  LA a4, sum
  ADDIW t1, t0, 48
  SW a0, 0(a2)
  LA a2, count
  ADDW a0, a0, t1
  SW t1, 0(a3)
  LA a3, sum
  ADDIW t0, t0, 49
  SW a0, 0(a4)
  ADDW t1, a0, t1
  SW t0, 0(a2)
  ADD t0, zero, zero
  ADD a0, zero, zero
  SW t1, 0(a3)
  # implict jump to bb1
bb1:   # loop depth 1
  SLTI t1, t0, 3
  BNE t1, zero, bb3
  # implict jump to bb2
bb2:   # loop depth 0
  LA t0, sum
  LW a0, 0(t0)
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
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb3:   # loop depth 1
  LA t1, sum
  LA a2, sum
  LA a3, count
  LA a5, count
  LW t1, 0(t1)
  LA a6, sum
  LA s6, count
  LA s5, sum
  LA s4, sum
  LA a7, sum
  ADDW t1, t1, t2
  LA t3, sum
  SW t1, 0(a2)
  LA t4, count
  LW a2, 0(a3)
  LA s3, sum
  LA s2, count
  LA s1, sum
  LA s0, count
  LA t5, sum
  ADDIW a3, a2, 1
  ADDIW a4, a2, 2
  ADDW t1, t1, a3
  SW a3, 0(a5)
  SW t1, 0(a6)
  ADDW t1, t1, a4
  SW a4, 0(s6)
  ADDW a4, t1, a3
  SW t1, 0(s5)
  ADDW t1, a4, a3
  SW a4, 0(s4)
  ADDW a3, t1, a1
  SW t1, 0(a7)
  ADDIW t1, a2, 3
  SW a3, 0(t3)
  ADDW a3, a3, a1
  SW t1, 0(t4)
  ADDIW t1, a2, 4
  SW a3, 0(s3)
  ADDW a3, a3, t1
  SW t1, 0(s2)
  ADDIW t1, a2, 5
  SW a3, 0(s1)
  LA a4, count
  ADDW a3, a3, t1
  SW t1, 0(s0)
  LA a5, sum
  ADDIW a2, a2, 6
  SW a3, 0(t5)
  ADDW a3, a3, t1
  SW a2, 0(a4)
  ADDIW t1, t0, 1
  XORI t0, t0, 1
  SW a3, 0(a5)
  BEQ t0, zero, bb6
  # implict jump to bb4
bb4:   # loop depth 1
  LA t0, sum
  LA a2, sum
  LA a3, count
  LA a4, count
  LW t0, 0(t0)
  LA a5, sum
  LA s5, count
  LA s4, sum
  LA a6, sum
  LA a7, sum
  ADDW t0, t0, t2
  LA t3, sum
  SW t0, 0(a2)
  LA t4, count
  LW t2, 0(a3)
  LA s3, sum
  LA s2, count
  LA s1, sum
  LA s0, count
  LA t5, sum
  ADDIW a2, t2, 1
  ADDIW a3, t2, 2
  ADDW t0, t0, a2
  SW a2, 0(a4)
  SW t0, 0(a5)
  ADDW t0, t0, a3
  SW a3, 0(s5)
  ADDW a3, t0, a2
  SW t0, 0(s4)
  ADDW t0, a3, a2
  SW a3, 0(a6)
  ADDW a2, t0, a1
  SW t0, 0(a7)
  ADDIW t0, t2, 3
  SW a2, 0(t3)
  ADDW a2, a2, a1
  SW t0, 0(t4)
  ADDIW t0, t2, 4
  SW a2, 0(s3)
  ADDW a2, a2, t0
  SW t0, 0(s2)
  ADDIW t0, t2, 5
  SW a2, 0(s1)
  LA a4, count
  ADDW a2, a2, t0
  SW t0, 0(s0)
  LA a5, sum
  ADDIW a3, t2, 6
  SW a2, 0(t5)
  LA a6, count
  ADDW a2, a2, t0
  SW a3, 0(a4)
  ADDIW t0, t2, 7
  SW a2, 0(a5)
  ADD t2, t0, zero
  SW t0, 0(a6)
  # implict jump to bb5
bb5:   # loop depth 1
  ADD t0, t1, zero
  JAL zero, bb1
bb6:   # loop depth 1
  LA t0, count
  LA a2, count
  LA a5, sum
  LA a7, sum
  LW t0, 0(t0)
  LA t3, count
  LA t4, sum
  LA s6, count
  LA t5, sum
  LA s0, sum
  ADDIW a0, t0, 1
  ADDIW a3, t0, 2
  SW a0, 0(a2)
  ADDIW a4, t0, 3
  LW a2, 0(a5)
  LA s1, sum
  LA s5, sum
  LA s2, count
  LA s3, sum
  ADDIW a6, t0, 4
  ADDW a2, a2, a0
  LA s4, count
  SW a2, 0(a7)
  ADDW a2, a2, a3
  SW a3, 0(t3)
  ADDW a5, a2, a4
  SW a2, 0(t4)
  ADDW a2, a5, a3
  SW a4, 0(s6)
  ADDW a3, a2, a3
  SW a5, 0(t5)
  ADDW a4, a3, a1
  SW a2, 0(s0)
  ADDW a2, a4, a1
  SW a3, 0(s1)
  LA a5, sum
  SW a4, 0(s5)
  ADDIW a3, t0, 5
  SW a6, 0(s2)
  LA a4, count
  SW a2, 0(s3)
  ADDW a2, a2, a3
  SW a3, 0(s4)
  LA a6, sum
  ADDIW a3, t0, 6
  SW a2, 0(a5)
  LA a5, count
  ADDW a2, a2, a3
  SW a3, 0(a4)
  LA a4, sum
  ADDIW t0, t0, 7
  SW a2, 0(a6)
  ADDW a2, a2, a3
  SW t0, 0(a5)
  SW a2, 0(a4)
  JAL zero, bb5
