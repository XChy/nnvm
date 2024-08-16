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
  LA t3, sum
  ADDI t0, zero, 0
  LA a7, count
  LA a3, a
  SW t0, 0(t3)
  ADD t1, zero, zero
  LW t0, 0(a7)
  ADD t2, zero, zero
  ADDIW a1, t0, 1
  ADDIW a0, t0, 2
  SW a1, 0(a7)
  ADDW a2, a1, a0
  SW a1, 0(a3)
  ADDIW a3, t0, 3
  SW a1, 0(t3)
  ADDW a4, a2, a3
  SW a0, 0(a7)
  ADDIW a5, t0, 4
  SW a2, 0(t3)
  ADDW a2, a4, a5
  SW a3, 0(a7)
  ADDW a6, a2, a3
  SW a4, 0(t3)
  ADDW a3, a6, a3
  SW a5, 0(a7)
  ADDW a4, a3, a1
  SW a2, 0(t3)
  ADDIW a2, t0, 5
  SW a6, 0(t3)
  ADDW a5, a4, a1
  SW a3, 0(t3)
  ADDIW a3, t0, 6
  SW a4, 0(t3)
  ADDW a4, a5, a3
  SW a2, 0(a7)
  ADDIW a2, t0, 7
  SW a5, 0(t3)
  ADDW a5, a4, a2
  SW a3, 0(a7)
  ADDIW a3, t0, 8
  SW a4, 0(t3)
  ADDW a4, a5, a2
  SW a2, 0(a7)
  ADDW a2, a4, a0
  SW a5, 0(t3)
  ADDIW a5, t0, 9
  SW a3, 0(a7)
  ADDW a3, a2, a5
  SW a4, 0(t3)
  ADDIW a4, t0, 10
  SW a2, 0(t3)
  ADDW a2, a3, a4
  SW a5, 0(a7)
  ADDW a6, a2, a5
  SW a3, 0(t3)
  ADDW a3, a6, a5
  SW a4, 0(a7)
  ADDW a4, a3, a1
  SW a2, 0(t3)
  ADDIW a2, t0, 11
  SW a6, 0(t3)
  ADDW a5, a4, a1
  SW a3, 0(t3)
  ADDIW a3, t0, 12
  SW a4, 0(t3)
  ADDW a4, a5, a3
  SW a2, 0(a7)
  ADDIW a2, t0, 13
  SW a5, 0(t3)
  ADDW a5, a4, a2
  SW a3, 0(a7)
  ADDIW a3, t0, 14
  SW a4, 0(t3)
  ADDW a4, a5, a2
  SW a2, 0(a7)
  ADDIW a2, t0, 15
  SW a5, 0(t3)
  ADDW a5, a4, a0
  SW a3, 0(a7)
  ADDIW a3, t0, 16
  SW a4, 0(t3)
  ADDW a4, a5, a3
  SW a2, 0(a7)
  ADDIW a2, t0, 17
  SW a5, 0(t3)
  ADDW a5, a4, a2
  SW a3, 0(a7)
  ADDW a6, a5, a3
  SW a4, 0(t3)
  ADDW a3, a6, a3
  SW a2, 0(a7)
  ADDW a2, a3, a1
  SW a5, 0(t3)
  ADDIW a4, t0, 18
  SW a6, 0(t3)
  ADDW a5, a2, a1
  SW a3, 0(t3)
  ADDIW a3, t0, 19
  SW a2, 0(t3)
  ADDW a2, a5, a3
  SW a4, 0(a7)
  ADDIW a4, t0, 20
  SW a5, 0(t3)
  ADDW a5, a2, a4
  SW a3, 0(a7)
  ADDIW a3, t0, 21
  SW a2, 0(t3)
  ADDW a2, a5, a4
  SW a4, 0(a7)
  ADDIW a4, t0, 22
  SW a5, 0(t3)
  ADDIW a5, t0, 23
  SW a3, 0(a7)
  ADDW a3, a2, a5
  SW a2, 0(t3)
  ADDIW a2, t0, 24
  SW a4, 0(a7)
  ADDW a4, a3, a2
  SW a5, 0(a7)
  ADDIW a5, t0, 25
  SW a3, 0(t3)
  ADDW a3, a4, a5
  SW a2, 0(a7)
  ADDW a6, a3, a2
  SW a4, 0(t3)
  ADDW a2, a6, a2
  SW a5, 0(a7)
  ADDW a4, a2, a1
  SW a3, 0(t3)
  ADDIW a3, t0, 26
  SW a6, 0(t3)
  ADDW a5, a4, a1
  SW a2, 0(t3)
  ADDIW a2, t0, 27
  SW a4, 0(t3)
  ADDW a4, a5, a2
  SW a3, 0(a7)
  ADDIW a3, t0, 28
  SW a5, 0(t3)
  ADDW a5, a4, a3
  SW a2, 0(a7)
  ADDIW a2, t0, 29
  SW a4, 0(t3)
  ADDW a4, a5, a3
  SW a3, 0(a7)
  ADDIW a3, t0, 30
  SW a5, 0(t3)
  ADDW a5, a4, a3
  SW a2, 0(a7)
  ADDIW a2, t0, 31
  SW a4, 0(t3)
  ADDW a4, a5, a2
  SW a3, 0(a7)
  ADDIW a3, t0, 32
  SW a5, 0(t3)
  ADDW a5, a4, a3
  SW a2, 0(a7)
  ADDW a6, a5, a2
  SW a4, 0(t3)
  ADDW a2, a6, a2
  SW a3, 0(a7)
  ADDW a3, a2, a1
  SW a5, 0(t3)
  ADDIW a4, t0, 33
  SW a6, 0(t3)
  ADDW a5, a3, a1
  SW a2, 0(t3)
  ADDIW a2, t0, 34
  SW a3, 0(t3)
  ADDW a3, a5, a2
  SW a4, 0(a7)
  ADDIW a4, t0, 35
  SW a5, 0(t3)
  ADDW a5, a3, a4
  SW a2, 0(a7)
  ADDIW a2, t0, 36
  SW a3, 0(t3)
  ADDW a3, a5, a4
  SW a4, 0(a7)
  ADDIW a4, t0, 37
  SW a5, 0(t3)
  ADDW a5, a3, a4
  SW a2, 0(a7)
  ADDIW a2, t0, 38
  SW a3, 0(t3)
  ADDW a3, a5, a2
  SW a4, 0(a7)
  ADDIW a4, t0, 39
  SW a5, 0(t3)
  ADDW a5, a3, a4
  SW a2, 0(a7)
  ADDW a6, a5, a2
  SW a3, 0(t3)
  ADDW a2, a6, a2
  SW a4, 0(a7)
  ADDW a3, a2, a1
  SW a5, 0(t3)
  ADDIW a4, t0, 40
  SW a6, 0(t3)
  ADDW a5, a3, a1
  SW a2, 0(t3)
  ADDIW a2, t0, 41
  SW a3, 0(t3)
  ADDW a3, a5, a2
  SW a4, 0(a7)
  ADDIW a4, t0, 42
  SW a5, 0(t3)
  ADDW a5, a3, a4
  SW a2, 0(a7)
  ADDIW a2, t0, 43
  SW a3, 0(t3)
  ADDW a3, a5, a4
  SW a4, 0(a7)
  ADDW a4, a3, a0
  SW a5, 0(t3)
  ADDIW a5, t0, 44
  SW a2, 0(a7)
  ADDW a2, a4, a5
  SW a3, 0(t3)
  ADDIW a3, t0, 45
  SW a4, 0(t3)
  ADDW a4, a2, a3
  SW a5, 0(a7)
  ADDW a6, a4, a5
  SW a2, 0(t3)
  ADDW a2, a6, a5
  SW a3, 0(a7)
  ADDW a3, a2, a1
  SW a4, 0(t3)
  ADDIW a4, t0, 46
  SW a6, 0(t3)
  ADDW a5, a3, a1
  SW a2, 0(t3)
  ADDIW a2, t0, 47
  SW a3, 0(t3)
  ADDW a3, a5, a2
  SW a4, 0(a7)
  ADDIW a4, t0, 48
  SW a5, 0(t3)
  ADDW a5, a3, a4
  SW a2, 0(a7)
  ADDIW t0, t0, 49
  SW a3, 0(t3)
  ADDW a2, a5, a4
  SW a4, 0(a7)
  SW a5, 0(t3)
  SW t0, 0(a7)
  SW a2, 0(t3)
  # implict jump to bb1
bb1:   # loop depth 1
  ADD t0, t1, zero
  SLTI t1, t0, 3
  BNE t1, zero, bb3
  # implict jump to bb2
bb2:   # loop depth 0
  LW a0, 0(t3)
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb3:   # loop depth 1
  LW a2, 0(t3)
  ADDIW t1, t0, 1
  XORI a5, t0, 1
  ADDW t0, a2, a0
  SW t0, 0(t3)
  LW a2, 0(a7)
  ADDIW a3, a2, 1
  ADDIW a4, a2, 2
  ADDW t0, t0, a3
  SW a3, 0(a7)
  SW t0, 0(t3)
  ADDW t0, t0, a4
  SW a4, 0(a7)
  ADDW a4, t0, a3
  SW t0, 0(t3)
  ADDW t0, a4, a3
  SW a4, 0(t3)
  ADDW a3, t0, a1
  SW t0, 0(t3)
  ADDIW t0, a2, 3
  SW a3, 0(t3)
  ADDW a3, a3, a1
  SW t0, 0(a7)
  ADDIW t0, a2, 4
  SW a3, 0(t3)
  ADDW a3, a3, t0
  SW t0, 0(a7)
  ADDIW t0, a2, 5
  SW a3, 0(t3)
  ADDW a3, a3, t0
  SW t0, 0(a7)
  ADDIW a2, a2, 6
  SW a3, 0(t3)
  ADDW t0, a3, t0
  SW a2, 0(a7)
  SW t0, 0(t3)
  BEQ a5, zero, bb6
  # implict jump to bb4
bb4:   # loop depth 1
  LW t0, 0(t3)
  ADDW t0, t0, a0
  SW t0, 0(t3)
  LW a0, 0(a7)
  ADDIW a2, a0, 1
  ADDIW a3, a0, 2
  ADDW t0, t0, a2
  SW a2, 0(a7)
  SW t0, 0(t3)
  ADDW t0, t0, a3
  SW a3, 0(a7)
  ADDW a3, t0, a2
  SW t0, 0(t3)
  ADDW t0, a3, a2
  SW a3, 0(t3)
  ADDW a2, t0, a1
  SW t0, 0(t3)
  ADDIW t0, a0, 3
  SW a2, 0(t3)
  ADDW a2, a2, a1
  SW t0, 0(a7)
  ADDIW t0, a0, 4
  SW a2, 0(t3)
  ADDW a2, a2, t0
  SW t0, 0(a7)
  ADDIW t0, a0, 5
  SW a2, 0(t3)
  ADDW a2, a2, t0
  SW t0, 0(a7)
  ADDIW a3, a0, 6
  SW a2, 0(t3)
  ADDW a2, a2, t0
  SW a3, 0(a7)
  ADDIW t0, a0, 7
  SW a2, 0(t3)
  ADD a0, t0, zero
  SW t0, 0(a7)
  # implict jump to bb5
bb5:   # loop depth 1
  JAL zero, bb1
bb6:   # loop depth 1
  LW t2, 0(a7)
  ADDIW t0, t2, 1
  ADDIW a3, t2, 2
  SW t0, 0(a7)
  ADDIW a4, t2, 3
  LW a2, 0(t3)
  ADDIW a5, t2, 4
  ADDIW a6, t2, 5
  ADDIW t4, t2, 6
  ADDIW t5, t2, 7
  ADD t2, t0, zero
  ADDW t0, a2, t0
  SW t0, 0(t3)
  ADDW t0, t0, a3
  SW a3, 0(a7)
  ADDW a2, t0, a4
  SW t0, 0(t3)
  ADDW t0, a2, a3
  SW a4, 0(a7)
  ADDW a3, t0, a3
  SW a2, 0(t3)
  ADDW a2, a3, a1
  SW t0, 0(t3)
  ADDW t0, a2, a1
  SW a3, 0(t3)
  ADDW a3, t0, a6
  SW a2, 0(t3)
  ADDW a2, a3, t4
  SW a5, 0(a7)
  ADDW a4, a2, t4
  SW t0, 0(t3)
  SW a6, 0(a7)
  SW a3, 0(t3)
  SW t4, 0(a7)
  SW a2, 0(t3)
  SW t5, 0(a7)
  SW a4, 0(t3)
  JAL zero, bb1
