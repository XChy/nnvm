.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADD a0, zero, zero
  ADD a4, zero, zero
  ADD t0, zero, zero
  ADD a1, zero, zero
  # implict jump to bb1
bb1:
  ADD a3, zero, zero
  # implict jump to bb2
bb2:
  ADD a2, zero, zero
  # implict jump to bb3
bb3:
  ADD t1, zero, zero
  # implict jump to bb4
bb4:
  SLTI t2, t1, 3
  BNE t2, zero, bb13
  # implict jump to bb5
bb5:
  # implict jump to bb6
bb6:
  ADDIW a2, a2, 1
  SLTI t1, a2, 5
  BNE t1, zero, bb12
  # implict jump to bb7
bb7:
  ADDIW a3, a3, 1
  SLTI t1, a3, 10
  BNE t1, zero, bb11
  # implict jump to bb8
bb8:
  ADDIW a4, a4, 1
  SLTI t1, a4, 20
  BNE t1, zero, bb10
  # implict jump to bb9
bb9:
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb10:
  JAL zero, bb1
bb11:
  JAL zero, bb2
bb12:
  JAL zero, bb3
bb13:
  ADDIW t2, t1, 1
  SLTI a5, t2, 3
  XORI a5, a5, 1
  BNE a5, zero, bb16
  # implict jump to bb14
bb14:
  # implict jump to bb15
bb15:
  ADDIW a0, a0, 1
  ADDI a1, zero, 2
  ADD t1, t2, zero
  JAL zero, bb4
bb16:
  SLTU a5, zero, t1
  BNE t1, zero, bb19
  # implict jump to bb17
bb17:
  # implict jump to bb18
bb18:
  JAL zero, bb15
bb19:
  BNE t1, zero, bb25
  # implict jump to bb20
bb20:
  XORI t0, a5, 1
  SLTU t0, zero, t0
  # implict jump to bb21
bb21:
  BNE t0, zero, bb23
  # implict jump to bb22
bb22:
  JAL zero, bb18
bb23:
  ADDI a5, zero, -1
  SUBW t1, t1, a5
  SLTI t1, t1, 3
  XORI t1, t1, 1
  BNE t1, zero, bb24
  JAL zero, bb22
bb24:
  JAL zero, bb6
bb25:
  ADDI t0, zero, 1
  JAL zero, bb21
