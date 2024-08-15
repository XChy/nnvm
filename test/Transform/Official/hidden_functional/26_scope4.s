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
  ADD a0, zero, zero
  LW t1, 0(a7)
  ADD t0, zero, zero
  ADDIW a1, t1, 1
  ADDIW t2, t1, 2
  SW a1, 0(a7)
  ADDW a2, a1, t2
  SW a1, 0(a3)
  ADDIW a3, t1, 3
  SW a1, 0(t3)
  ADDW a4, a2, a3
  SW t2, 0(a7)
  ADDIW a5, t1, 4
  SW a2, 0(t3)
  ADDW a2, a4, a5
  SW a3, 0(a7)
  ADDW a6, a2, a3
  SW a4, 0(t3)
  ADDW a3, a6, a3
  SW a5, 0(a7)
  ADDW a4, a3, a1
  SW a2, 0(t3)
  ADDIW a2, t1, 5
  SW a6, 0(t3)
  ADDW a5, a4, a1
  SW a3, 0(t3)
  ADDIW a3, t1, 6
  SW a4, 0(t3)
  ADDW a4, a5, a3
  SW a2, 0(a7)
  ADDIW a2, t1, 7
  SW a5, 0(t3)
  ADDW a5, a4, a2
  SW a3, 0(a7)
  ADDIW a3, t1, 8
  SW a4, 0(t3)
  ADDW a4, a5, a2
  SW a2, 0(a7)
  ADDW a2, a4, t2
  SW a5, 0(t3)
  ADDIW a5, t1, 9
  SW a3, 0(a7)
  ADDW a3, a2, a5
  SW a4, 0(t3)
  ADDIW a4, t1, 10
  SW a2, 0(t3)
  ADDW a2, a3, a4
  SW a5, 0(a7)
  ADDW a6, a2, a5
  SW a3, 0(t3)
  ADDW a3, a6, a5
  SW a4, 0(a7)
  ADDW a4, a3, a1
  SW a2, 0(t3)
  ADDIW a2, t1, 11
  SW a6, 0(t3)
  ADDW a5, a4, a1
  SW a3, 0(t3)
  ADDIW a3, t1, 12
  SW a4, 0(t3)
  ADDW a4, a5, a3
  SW a2, 0(a7)
  ADDIW a2, t1, 13
  SW a5, 0(t3)
  ADDW a5, a4, a2
  SW a3, 0(a7)
  ADDIW a3, t1, 14
  SW a4, 0(t3)
  ADDW a4, a5, a2
  SW a2, 0(a7)
  ADDIW a2, t1, 15
  SW a5, 0(t3)
  ADDW a5, a4, t2
  SW a3, 0(a7)
  ADDIW a3, t1, 16
  SW a4, 0(t3)
  ADDW a4, a5, a3
  SW a2, 0(a7)
  ADDIW a2, t1, 17
  SW a5, 0(t3)
  ADDW a5, a4, a2
  SW a3, 0(a7)
  ADDW a6, a5, a3
  SW a4, 0(t3)
  ADDW a3, a6, a3
  SW a2, 0(a7)
  ADDW a2, a3, a1
  SW a5, 0(t3)
  ADDIW a4, t1, 18
  SW a6, 0(t3)
  ADDW a5, a2, a1
  SW a3, 0(t3)
  ADDIW a3, t1, 19
  SW a2, 0(t3)
  ADDW a2, a5, a3
  SW a4, 0(a7)
  ADDIW a4, t1, 20
  SW a5, 0(t3)
  ADDW a5, a2, a4
  SW a3, 0(a7)
  ADDIW a3, t1, 21
  SW a2, 0(t3)
  ADDW a2, a5, a4
  SW a4, 0(a7)
  ADDIW a4, t1, 22
  SW a5, 0(t3)
  ADDIW a5, t1, 23
  SW a3, 0(a7)
  ADDW a3, a2, a5
  SW a2, 0(t3)
  ADDIW a2, t1, 24
  SW a4, 0(a7)
  ADDW a4, a3, a2
  SW a5, 0(a7)
  ADDIW a5, t1, 25
  SW a3, 0(t3)
  ADDW a3, a4, a5
  SW a2, 0(a7)
  ADDW a6, a3, a2
  SW a4, 0(t3)
  ADDW a2, a6, a2
  SW a5, 0(a7)
  ADDW a4, a2, a1
  SW a3, 0(t3)
  ADDIW a3, t1, 26
  SW a6, 0(t3)
  ADDW a5, a4, a1
  SW a2, 0(t3)
  ADDIW a2, t1, 27
  SW a4, 0(t3)
  ADDW a4, a5, a2
  SW a3, 0(a7)
  ADDIW a3, t1, 28
  SW a5, 0(t3)
  ADDW a5, a4, a3
  SW a2, 0(a7)
  ADDIW a2, t1, 29
  SW a4, 0(t3)
  ADDW a4, a5, a3
  SW a3, 0(a7)
  ADDIW a3, t1, 30
  SW a5, 0(t3)
  ADDW a5, a4, a3
  SW a2, 0(a7)
  ADDIW a2, t1, 31
  SW a4, 0(t3)
  ADDW a4, a5, a2
  SW a3, 0(a7)
  ADDIW a3, t1, 32
  SW a5, 0(t3)
  ADDW a5, a4, a3
  SW a2, 0(a7)
  ADDW a6, a5, a2
  SW a4, 0(t3)
  ADDW a2, a6, a2
  SW a3, 0(a7)
  ADDW a3, a2, a1
  SW a5, 0(t3)
  ADDIW a4, t1, 33
  SW a6, 0(t3)
  ADDW a5, a3, a1
  SW a2, 0(t3)
  ADDIW a2, t1, 34
  SW a3, 0(t3)
  ADDW a3, a5, a2
  SW a4, 0(a7)
  ADDIW a4, t1, 35
  SW a5, 0(t3)
  ADDW a5, a3, a4
  SW a2, 0(a7)
  ADDIW a2, t1, 36
  SW a3, 0(t3)
  ADDW a3, a5, a4
  SW a4, 0(a7)
  ADDIW a4, t1, 37
  SW a5, 0(t3)
  ADDW a5, a3, a4
  SW a2, 0(a7)
  ADDIW a2, t1, 38
  SW a3, 0(t3)
  ADDW a3, a5, a2
  SW a4, 0(a7)
  ADDIW a4, t1, 39
  SW a5, 0(t3)
  ADDW a5, a3, a4
  SW a2, 0(a7)
  ADDW a6, a5, a2
  SW a3, 0(t3)
  ADDW a2, a6, a2
  SW a4, 0(a7)
  ADDW a3, a2, a1
  SW a5, 0(t3)
  ADDIW a4, t1, 40
  SW a6, 0(t3)
  ADDW a5, a3, a1
  SW a2, 0(t3)
  ADDIW a2, t1, 41
  SW a3, 0(t3)
  ADDW a3, a5, a2
  SW a4, 0(a7)
  ADDIW a4, t1, 42
  SW a5, 0(t3)
  ADDW a5, a3, a4
  SW a2, 0(a7)
  ADDIW a2, t1, 43
  SW a3, 0(t3)
  ADDW a3, a5, a4
  SW a4, 0(a7)
  ADDW a4, a3, t2
  SW a5, 0(t3)
  ADDIW a5, t1, 44
  SW a2, 0(a7)
  ADDW a2, a4, a5
  SW a3, 0(t3)
  ADDIW a3, t1, 45
  SW a4, 0(t3)
  ADDW a4, a2, a3
  SW a5, 0(a7)
  ADDW a6, a4, a5
  SW a2, 0(t3)
  ADDW a2, a6, a5
  SW a3, 0(a7)
  ADDW a3, a2, a1
  SW a4, 0(t3)
  ADDIW a4, t1, 46
  SW a6, 0(t3)
  ADDW a5, a3, a1
  SW a2, 0(t3)
  ADDIW a2, t1, 47
  SW a3, 0(t3)
  ADDW a3, a5, a2
  SW a4, 0(a7)
  ADDIW a4, t1, 48
  SW a5, 0(t3)
  ADDW a5, a3, a4
  SW a2, 0(a7)
  ADDIW t1, t1, 49
  SW a3, 0(t3)
  ADDW a2, a5, a4
  SW a4, 0(a7)
  SW a5, 0(t3)
  SW t1, 0(a7)
  SW a2, 0(t3)
  # implict jump to bb1
bb1:   # loop depth 1
  ADD t1, a0, zero
  SLTI a0, t1, 3
  BNE a0, zero, bb3
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
  ADDIW a0, t1, 1
  XORI a5, t1, 1
  ADDW t1, a2, t2
  SW t1, 0(t3)
  LW a2, 0(a7)
  ADDIW a3, a2, 1
  ADDIW a4, a2, 2
  ADDW t1, t1, a3
  SW a3, 0(a7)
  SW t1, 0(t3)
  ADDW t1, t1, a4
  SW a4, 0(a7)
  ADDW a4, t1, a3
  SW t1, 0(t3)
  ADDW t1, a4, a3
  SW a4, 0(t3)
  ADDW a3, t1, a1
  SW t1, 0(t3)
  ADDIW t1, a2, 3
  SW a3, 0(t3)
  ADDW a3, a3, a1
  SW t1, 0(a7)
  ADDIW t1, a2, 4
  SW a3, 0(t3)
  ADDW a3, a3, t1
  SW t1, 0(a7)
  ADDIW t1, a2, 5
  SW a3, 0(t3)
  ADDW a3, a3, t1
  SW t1, 0(a7)
  ADDIW a2, a2, 6
  SW a3, 0(t3)
  ADDW t1, a3, t1
  SW a2, 0(a7)
  SW t1, 0(t3)
  BEQ a5, zero, bb6
  # implict jump to bb4
bb4:   # loop depth 1
  LW t1, 0(t3)
  ADDW t1, t1, t2
  SW t1, 0(t3)
  LW t2, 0(a7)
  ADDIW a2, t2, 1
  ADDIW a3, t2, 2
  ADDW t1, t1, a2
  SW a2, 0(a7)
  SW t1, 0(t3)
  ADDW t1, t1, a3
  SW a3, 0(a7)
  ADDW a3, t1, a2
  SW t1, 0(t3)
  ADDW t1, a3, a2
  SW a3, 0(t3)
  ADDW a2, t1, a1
  SW t1, 0(t3)
  ADDIW t1, t2, 3
  SW a2, 0(t3)
  ADDW a2, a2, a1
  SW t1, 0(a7)
  ADDIW t1, t2, 4
  SW a2, 0(t3)
  ADDW a2, a2, t1
  SW t1, 0(a7)
  ADDIW t1, t2, 5
  SW a2, 0(t3)
  ADDW a2, a2, t1
  SW t1, 0(a7)
  ADDIW a3, t2, 6
  SW a2, 0(t3)
  ADDW a2, a2, t1
  SW a3, 0(a7)
  ADDIW t1, t2, 7
  SW a2, 0(t3)
  ADD t2, t1, zero
  SW t1, 0(a7)
  # implict jump to bb5
bb5:   # loop depth 1
  JAL zero, bb1
bb6:   # loop depth 1
  LW t0, 0(a7)
  ADDIW t1, t0, 1
  ADDIW a3, t0, 2
  SW t1, 0(a7)
  ADDIW a4, t0, 3
  LW a2, 0(t3)
  ADDIW a5, t0, 4
  ADDIW a6, t0, 5
  ADDIW t4, t0, 6
  ADDIW t5, t0, 7
  ADD t0, t1, zero
  ADDW t1, a2, t1
  SW t1, 0(t3)
  ADDW t1, t1, a3
  SW a3, 0(a7)
  ADDW a2, t1, a4
  SW t1, 0(t3)
  ADDW t1, a2, a3
  SW a4, 0(a7)
  ADDW a3, t1, a3
  SW a2, 0(t3)
  ADDW a2, a3, a1
  SW t1, 0(t3)
  ADDW t1, a2, a1
  SW a3, 0(t3)
  ADDW a3, t1, a6
  SW a2, 0(t3)
  ADDW a2, a3, t4
  SW a5, 0(a7)
  ADDW a4, a2, t4
  SW t1, 0(t3)
  SW a6, 0(a7)
  SW a3, 0(t3)
  SW t4, 0(a7)
  SW a2, 0(t3)
  SW t5, 0(a7)
  SW a4, 0(t3)
  JAL zero, bb5
