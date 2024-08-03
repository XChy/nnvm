.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADD t2, zero, zero
  ADD t1, zero, zero
  ADD a0, zero, zero
  ADD t0, zero, zero
  # implict jump to bb1
bb1:
  ADD a1, a0, zero
  ADD a2, t1, zero
  ADD t1, t2, zero
  ADD a0, t1, zero
  ADD t2, zero, zero
  ADD t1, a1, zero
  # implict jump to bb2
bb2:
  ADD a1, t0, zero
  ADD t0, a0, zero
  ADD a3, zero, zero
  ADD a0, t1, zero
  ADD t1, a1, zero
  # implict jump to bb3
bb3:
  ADD a1, a0, zero
  ADD a0, t0, zero
  ADD t0, t1, zero
  ADD a6, a1, zero
  ADD a1, zero, zero
  ADD t1, a0, zero
  # implict jump to bb4
bb4:
  ADD a4, t1, zero
  ADD a5, a1, zero
  ADD a0, a6, zero
  ADD a1, t0, zero
  SLTI t0, a5, 3
  BNE t0, zero, bb13
  # implict jump to bb5
bb5:
  ADD t0, a0, zero
  # implict jump to bb6
bb6:
  ADD a5, t0, zero
  ADDIW t1, a3, 1
  SLTI t0, t1, 5
  BNE t0, zero, bb12
  # implict jump to bb7
bb7:
  ADDIW t0, t2, 1
  SLTI t1, t0, 10
  BNE t1, zero, bb11
  # implict jump to bb8
bb8:
  ADDIW t1, a2, 1
  SLTI t0, t1, 20
  BNE t0, zero, bb10
  # implict jump to bb9
bb9:
  ADD a0, a4, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb10:
  ADD t2, a4, zero
  ADD a0, a5, zero
  ADD t0, a1, zero
  JAL zero, bb1
bb11:
  ADD a0, a4, zero
  ADD t2, t0, zero
  ADD t1, a5, zero
  ADD t0, a1, zero
  JAL zero, bb2
bb12:
  ADD t0, a4, zero
  ADD a3, t1, zero
  ADD a0, a5, zero
  ADD t1, a1, zero
  JAL zero, bb3
bb13:
  ADDIW t1, a5, 1
  SLTI t0, t1, 3
  XORI t0, t0, 1
  BNE t0, zero, bb16
  # implict jump to bb14
bb14:
  ADD t0, a0, zero
  # implict jump to bb15
bb15:
  ADD a0, t0, zero
  ADDIW a4, a4, 1
  ADDI t0, zero, 2
  ADD a6, a0, zero
  ADD a1, t1, zero
  ADD t1, a4, zero
  JAL zero, bb4
bb16:
  SLTU t0, zero, a5
  BNE a5, zero, bb19
  # implict jump to bb17
bb17:
  ADD t0, a0, zero
  # implict jump to bb18
bb18:
  JAL zero, bb15
bb19:
  BNE a5, zero, bb25
  # implict jump to bb20
bb20:
  XORI t0, t0, 1
  SLTU t0, zero, t0
  # implict jump to bb21
bb21:
  ADD a0, t0, zero
  BNE a0, zero, bb23
  # implict jump to bb22
bb22:
  ADD t0, a0, zero
  JAL zero, bb18
bb23:
  ADDI t0, zero, -1
  SUBW t0, a5, t0
  SLTI t0, t0, 3
  XORI t0, t0, 1
  BNE t0, zero, bb24
  JAL zero, bb22
bb24:
  ADD t0, a0, zero
  JAL zero, bb6
bb25:
  ADDI t0, zero, 1
  JAL zero, bb21
