.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADD a1, zero, zero
  ADD t0, zero, zero
  ADD a2, zero, zero
  ADD a0, zero, zero
  # implict jump to bb1
bb1:   # loop depth 1
  ADD a4, zero, zero
  # implict jump to bb2
bb2:   # loop depth 2
  ADD a3, zero, zero
  # implict jump to bb3
bb3:   # loop depth 3
  ADD t1, zero, zero
  # implict jump to bb4
bb4:   # loop depth 4
  SLTI t2, t1, 3
  BNE t2, zero, bb13
  # implict jump to bb5
bb5:   # loop depth 4
  # implict jump to bb6
bb6:   # loop depth 3
  ADDIW a3, a3, 1
  SLTI t1, a3, 5
  BNE t1, zero, bb12
  # implict jump to bb7
bb7:   # loop depth 2
  ADDIW a4, a4, 1
  SLTI t1, a4, 10
  BNE t1, zero, bb11
  # implict jump to bb8
bb8:   # loop depth 1
  ADDIW a2, a2, 1
  SLTI t1, a2, 20
  BNE t1, zero, bb10
  # implict jump to bb9
bb9:   # loop depth 0
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb10:   # loop depth 1
  JAL zero, bb1
bb11:   # loop depth 2
  JAL zero, bb2
bb12:   # loop depth 3
  JAL zero, bb3
bb13:   # loop depth 4
  ADDIW t2, t1, 1
  SLTI a5, t2, 3
  XORI a5, a5, 1
  BNE a5, zero, bb16
  # implict jump to bb14
bb14:   # loop depth 4
  # implict jump to bb15
bb15:   # loop depth 4
  ADDIW a0, a0, 1
  ADD t1, t2, zero
  ADDI a1, zero, 2
  JAL zero, bb4
bb16:   # loop depth 4
  SLTU a6, zero, t1
  BNE t1, zero, bb19
  # implict jump to bb17
bb17:   # loop depth 4
  # implict jump to bb18
bb18:   # loop depth 4
  JAL zero, bb15
bb19:   # loop depth 4
  BNE t1, zero, bb25
  # implict jump to bb20
bb20:   # loop depth 4
  XORI t0, a6, 1
  SLTU t0, zero, t0
  # implict jump to bb21
bb21:   # loop depth 4
  BNE t0, zero, bb23
  # implict jump to bb22
bb22:   # loop depth 4
  JAL zero, bb18
bb23:   # loop depth 4
  BNE a5, zero, bb24
  JAL zero, bb22
bb24:   # loop depth 3
  JAL zero, bb6
bb25:   # loop depth 4
  ADDI t0, zero, 1
  JAL zero, bb21
