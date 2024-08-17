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
  ADDI sp, sp, -16
  SD ra, 0(sp)
  LA a6, sum
  ADDI t0, zero, 0
  LA a5, count
  LA a1, a
  SW t0, 0(a6)
  LW t0, 0(a5)
  ADDIW t1, t0, 1
  ADDIW t2, t0, 2
  SW t1, 0(a5)
  ADDW a0, t1, t2
  SW t1, 0(a1)
  ADDIW a1, t0, 3
  SW t1, 0(a6)
  ADDW a2, a0, a1
  SW t2, 0(a5)
  ADDIW a3, t0, 4
  SW a0, 0(a6)
  ADDW a0, a2, a3
  SW a1, 0(a5)
  ADDW a4, a0, a1
  SW a2, 0(a6)
  ADDW a1, a4, a1
  SW a3, 0(a5)
  ADDW a2, a1, t1
  SW a0, 0(a6)
  ADDIW a0, t0, 5
  SW a4, 0(a6)
  ADDW a3, a2, t1
  SW a1, 0(a6)
  ADDIW a1, t0, 6
  SW a2, 0(a6)
  ADDW a2, a3, a1
  SW a0, 0(a5)
  ADDIW a0, t0, 7
  SW a3, 0(a6)
  ADDW a3, a2, a0
  SW a1, 0(a5)
  ADDIW a1, t0, 8
  SW a2, 0(a6)
  ADDW a2, a3, a0
  SW a0, 0(a5)
  ADDW a0, a2, t2
  SW a3, 0(a6)
  ADDIW a3, t0, 9
  SW a1, 0(a5)
  ADDW a1, a0, a3
  SW a2, 0(a6)
  ADDIW a2, t0, 10
  SW a0, 0(a6)
  ADDW a0, a1, a2
  SW a3, 0(a5)
  ADDW a4, a0, a3
  SW a1, 0(a6)
  ADDW a1, a4, a3
  SW a2, 0(a5)
  ADDW a2, a1, t1
  SW a0, 0(a6)
  ADDIW a0, t0, 11
  SW a4, 0(a6)
  ADDW a3, a2, t1
  SW a1, 0(a6)
  ADDIW a1, t0, 12
  SW a2, 0(a6)
  ADDW a2, a3, a1
  SW a0, 0(a5)
  ADDIW a0, t0, 13
  SW a3, 0(a6)
  ADDW a3, a2, a0
  SW a1, 0(a5)
  ADDIW a1, t0, 14
  SW a2, 0(a6)
  ADDW a2, a3, a0
  SW a0, 0(a5)
  ADDIW a0, t0, 15
  SW a3, 0(a6)
  ADDW a3, a2, t2
  SW a1, 0(a5)
  ADDIW a1, t0, 16
  SW a2, 0(a6)
  ADDW a2, a3, a1
  SW a0, 0(a5)
  ADDIW a0, t0, 17
  SW a3, 0(a6)
  ADDW a3, a2, a0
  SW a1, 0(a5)
  ADDW a4, a3, a1
  SW a2, 0(a6)
  ADDW a1, a4, a1
  SW a0, 0(a5)
  ADDW a0, a1, t1
  SW a3, 0(a6)
  ADDIW a2, t0, 18
  SW a4, 0(a6)
  ADDW a3, a0, t1
  SW a1, 0(a6)
  ADDIW a1, t0, 19
  SW a0, 0(a6)
  ADDW a0, a3, a1
  SW a2, 0(a5)
  ADDIW a2, t0, 20
  SW a3, 0(a6)
  ADDW a3, a0, a2
  SW a1, 0(a5)
  ADDIW a1, t0, 21
  SW a0, 0(a6)
  ADDW a0, a3, a2
  SW a2, 0(a5)
  ADDIW a2, t0, 22
  SW a3, 0(a6)
  ADDIW a3, t0, 23
  SW a1, 0(a5)
  ADDW a1, a0, a3
  SW a0, 0(a6)
  ADDIW a0, t0, 24
  SW a2, 0(a5)
  ADDW a2, a1, a0
  SW a3, 0(a5)
  ADDIW a3, t0, 25
  SW a1, 0(a6)
  ADDW a1, a2, a3
  SW a0, 0(a5)
  ADDW a4, a1, a0
  SW a2, 0(a6)
  ADDW a0, a4, a0
  SW a3, 0(a5)
  ADDW a2, a0, t1
  SW a1, 0(a6)
  ADDIW a1, t0, 26
  SW a4, 0(a6)
  ADDW a3, a2, t1
  SW a0, 0(a6)
  ADDIW a0, t0, 27
  SW a2, 0(a6)
  ADDW a2, a3, a0
  SW a1, 0(a5)
  ADDIW a1, t0, 28
  SW a3, 0(a6)
  ADDW a3, a2, a1
  SW a0, 0(a5)
  ADDIW a0, t0, 29
  SW a2, 0(a6)
  ADDW a2, a3, a1
  SW a1, 0(a5)
  ADDIW a1, t0, 30
  SW a3, 0(a6)
  ADDW a3, a2, a1
  SW a0, 0(a5)
  ADDIW a0, t0, 31
  SW a2, 0(a6)
  ADDW a2, a3, a0
  SW a1, 0(a5)
  ADDIW a1, t0, 32
  SW a3, 0(a6)
  ADDW a3, a2, a1
  SW a0, 0(a5)
  ADDW a4, a3, a0
  SW a2, 0(a6)
  ADDW a0, a4, a0
  SW a1, 0(a5)
  ADDW a1, a0, t1
  SW a3, 0(a6)
  ADDIW a2, t0, 33
  SW a4, 0(a6)
  ADDW a3, a1, t1
  SW a0, 0(a6)
  ADDIW a0, t0, 34
  SW a1, 0(a6)
  ADDW a1, a3, a0
  SW a2, 0(a5)
  ADDIW a2, t0, 35
  SW a3, 0(a6)
  ADDW a3, a1, a2
  SW a0, 0(a5)
  ADDIW a0, t0, 36
  SW a1, 0(a6)
  ADDW a1, a3, a2
  SW a2, 0(a5)
  ADDIW a2, t0, 37
  SW a3, 0(a6)
  ADDW a3, a1, a2
  SW a0, 0(a5)
  ADDIW a0, t0, 38
  SW a1, 0(a6)
  ADDW a1, a3, a0
  SW a2, 0(a5)
  ADDIW a2, t0, 39
  SW a3, 0(a6)
  ADDW a3, a1, a2
  SW a0, 0(a5)
  ADDW a4, a3, a0
  SW a1, 0(a6)
  ADDW a0, a4, a0
  SW a2, 0(a5)
  ADDW a1, a0, t1
  SW a3, 0(a6)
  ADDIW a2, t0, 40
  SW a4, 0(a6)
  ADDW a3, a1, t1
  SW a0, 0(a6)
  ADDIW a0, t0, 41
  SW a1, 0(a6)
  ADDW a1, a3, a0
  SW a2, 0(a5)
  ADDIW a2, t0, 42
  SW a3, 0(a6)
  ADDW a3, a1, a2
  SW a0, 0(a5)
  ADDIW a0, t0, 43
  SW a1, 0(a6)
  ADDW a1, a3, a2
  SW a2, 0(a5)
  ADDW a2, a1, t2
  SW a3, 0(a6)
  ADDIW a3, t0, 44
  SW a0, 0(a5)
  ADDW a0, a2, a3
  SW a1, 0(a6)
  ADDIW a1, t0, 45
  SW a2, 0(a6)
  ADDW a2, a0, a1
  SW a3, 0(a5)
  ADDW a4, a2, a3
  SW a0, 0(a6)
  ADDW a0, a4, a3
  SW a1, 0(a5)
  ADDW a1, a0, t1
  SW a2, 0(a6)
  ADDIW a2, t0, 46
  SW a4, 0(a6)
  ADDW a3, a1, t1
  SW a0, 0(a6)
  ADDIW a0, t0, 47
  SW a1, 0(a6)
  ADDW a1, a3, a0
  SW a2, 0(a5)
  ADDIW a2, t0, 48
  SW a3, 0(a6)
  ADDW a3, a1, a2
  SW a0, 0(a5)
  ADDIW a0, t0, 49
  SW a1, 0(a6)
  ADDW a1, a3, a2
  SW a2, 0(a5)
  ADDW a2, a1, t2
  SW a3, 0(a6)
  ADDIW a3, t0, 50
  SW a0, 0(a5)
  ADDW a0, a2, a3
  SW a1, 0(a6)
  ADDIW a1, t0, 51
  SW a2, 0(a6)
  ADDW a2, a0, a1
  SW a3, 0(a5)
  ADDW a4, a2, a3
  SW a0, 0(a6)
  ADDW a0, a4, a3
  SW a1, 0(a5)
  ADDW a1, a0, t1
  SW a2, 0(a6)
  ADDIW a2, t0, 52
  SW a4, 0(a6)
  ADDW a3, a1, t1
  SW a0, 0(a6)
  ADDIW a0, t0, 53
  SW a1, 0(a6)
  ADDW a1, a3, a0
  SW a2, 0(a5)
  ADDIW a2, t0, 54
  SW a3, 0(a6)
  ADDW a3, a1, a2
  SW a0, 0(a5)
  ADDIW a0, t0, 55
  SW a1, 0(a6)
  ADDW a1, a3, a2
  SW a2, 0(a5)
  ADDW t2, a1, t2
  SW a3, 0(a6)
  ADDIW a2, t0, 56
  SW a0, 0(a5)
  ADDW a0, t2, a2
  SW a1, 0(a6)
  ADDIW a1, t0, 57
  SW t2, 0(a6)
  ADDW t2, a0, a1
  SW a2, 0(a5)
  ADDW a3, t2, a2
  SW a0, 0(a6)
  ADDW a0, a3, a2
  SW a1, 0(a5)
  ADDW a1, a0, t1
  SW t2, 0(a6)
  ADDIW t2, t0, 58
  SW a3, 0(a6)
  ADDW a2, a1, t1
  SW a0, 0(a6)
  ADDIW a0, t0, 59
  SW a1, 0(a6)
  ADDW a1, a2, a0
  SW t2, 0(a5)
  ADDIW t2, t0, 60
  SW a2, 0(a6)
  ADDW a2, a1, t2
  SW a0, 0(a5)
  ADDIW a0, t0, 61
  SW a1, 0(a6)
  ADDW a1, a2, t2
  SW t2, 0(a5)
  ADDIW t0, t0, 62
  SW a2, 0(a6)
  SW a0, 0(a5)
  SW a1, 0(a6)
  SW t0, 0(a5)
  # implict jump to bb1
bb1:   # loop depth 0
  LW t2, 0(a6)
  ADDW t2, t2, t0
  SW t2, 0(a6)
  LW a0, 0(a5)
  ADDIW a1, a0, 1
  ADDIW a2, a0, 2
  ADDW t2, t2, a1
  SW a1, 0(a5)
  SW t2, 0(a6)
  ADDW t2, t2, a2
  SW a2, 0(a5)
  ADDW a2, t2, a1
  SW t2, 0(a6)
  ADDW t2, a2, a1
  SW a2, 0(a6)
  ADDW a1, t2, t1
  SW t2, 0(a6)
  ADDIW t2, a0, 3
  SW a1, 0(a6)
  ADDW a1, a1, t1
  SW t2, 0(a5)
  ADDIW t2, a0, 4
  SW a1, 0(a6)
  ADDW a1, a1, t2
  SW t2, 0(a5)
  ADDIW t2, a0, 5
  SW a1, 0(a6)
  ADDW a1, a1, t2
  SW t2, 0(a5)
  ADDIW a2, a0, 6
  SW a1, 0(a6)
  ADDW t2, a1, t2
  SW a2, 0(a5)
  ADDIW a1, a0, 7
  SW t2, 0(a6)
  ADDW t2, t2, a1
  SW a1, 0(a5)
  ADDIW a1, a0, 8
  SW t2, 0(a6)
  ADDW t2, t2, a1
  SW a1, 0(a5)
  ADDIW a2, a0, 9
  SW t2, 0(a6)
  ADDW t2, t2, a2
  SW a2, 0(a5)
  ADDW a2, t2, a1
  SW t2, 0(a6)
  ADDW t2, a2, a1
  SW a2, 0(a6)
  ADDW a1, t2, t1
  SW t2, 0(a6)
  ADDIW t2, a0, 10
  SW a1, 0(a6)
  ADDW a1, a1, t1
  SW t2, 0(a5)
  ADDIW t2, a0, 11
  SW a1, 0(a6)
  ADDW a1, a1, t2
  SW t2, 0(a5)
  ADDIW t2, a0, 12
  SW a1, 0(a6)
  ADDW a1, a1, t2
  SW t2, 0(a5)
  ADDIW a0, a0, 13
  SW a1, 0(a6)
  ADDW t2, a1, t2
  SW a0, 0(a5)
  SW t2, 0(a6)
  # implict jump to bb2
bb2:   # loop depth 0
  LW t2, 0(a6)
  ADDW t2, t2, t0
  SW t2, 0(a6)
  LW a1, 0(a5)
  ADDIW a0, a1, 1
  ADDIW a2, a1, 2
  ADDW t2, t2, a0
  SW a0, 0(a5)
  SW t2, 0(a6)
  ADDW t2, t2, a2
  SW a2, 0(a5)
  ADDW a2, t2, a0
  SW t2, 0(a6)
  ADDW t2, a2, a0
  SW a2, 0(a6)
  ADDW a0, t2, t1
  SW t2, 0(a6)
  ADDIW t2, a1, 3
  SW a0, 0(a6)
  ADDW a0, a0, t1
  SW t2, 0(a5)
  ADDIW t2, a1, 4
  SW a0, 0(a6)
  ADDW a0, a0, t2
  SW t2, 0(a5)
  ADDIW t2, a1, 5
  SW a0, 0(a6)
  ADDW a0, a0, t2
  SW t2, 0(a5)
  ADDIW a2, a1, 6
  SW a0, 0(a6)
  ADDW t2, a0, t2
  SW a2, 0(a5)
  ADDW t0, t2, t0
  SW t2, 0(a6)
  ADDIW t2, a1, 7
  SW t0, 0(a6)
  ADDW t0, t0, t2
  SW t2, 0(a5)
  ADDIW a0, a1, 8
  SW t0, 0(a6)
  ADDW t0, t0, a0
  SW a0, 0(a5)
  ADDW a0, t0, t2
  SW t0, 0(a6)
  ADDW t0, a0, t2
  SW a0, 0(a6)
  ADDW t2, t0, t1
  SW t0, 0(a6)
  ADDIW t0, a1, 9
  SW t2, 0(a6)
  ADDW t1, t2, t1
  SW t0, 0(a5)
  ADDIW t0, a1, 10
  SW t1, 0(a6)
  ADDW t1, t1, t0
  SW t0, 0(a5)
  ADDIW t0, a1, 11
  SW t1, 0(a6)
  ADDW t1, t1, t0
  SW t0, 0(a5)
  ADDIW t2, a1, 12
  SW t1, 0(a6)
  ADDW a0, t1, t0
  SW t2, 0(a5)
  ADDIW t0, a1, 13
  SW a0, 0(a6)
  SW t0, 0(a5)
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
