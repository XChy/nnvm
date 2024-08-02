.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADD a3, zero, zero
  ADD t0, zero, zero
  ADD t1, zero, zero
  ADD t2, zero, zero
  # implict jump to bb1
bb1:
  ADD a0, t2, zero
  ADD t2, t1, zero
  ADD t1, t0, zero
  ADD t0, a3, zero
  ADD a3, t0, zero
  ADD t0, zero, zero
  # implict jump to bb2
bb2:
  ADD a1, a0, zero
  ADD a0, t2, zero
  ADD t2, t0, zero
  ADD t0, a3, zero
  ADD a3, t0, zero
  ADD t0, zero, zero
  # implict jump to bb3
bb3:
  ADD a2, a1, zero
  ADD a1, a0, zero
  ADD a0, t0, zero
  ADD t0, a3, zero
  ADD a5, a2, zero
  ADD a4, zero, zero
  # implict jump to bb4
bb4:
  ADD a3, t0, zero
  ADD a2, a4, zero
  ADD t0, a1, zero
  ADD a1, a5, zero
  SLTI a4, a2, 3
  BNE a4, zero, bb13
  # implict jump to bb5
bb5:
  # implict jump to bb6
bb6:
  ADD a2, t0, zero
  ADDIW t0, a0, 1
  SLTI a0, t0, 5
  BNE a0, zero, bb12
  # implict jump to bb7
bb7:
  ADDIW t0, t2, 1
  SLTI t2, t0, 10
  BNE t2, zero, bb11
  # implict jump to bb8
bb8:
  ADDIW t0, t1, 1
  SLTI t1, t0, 20
  BNE t1, zero, bb10
  # implict jump to bb9
bb9:
  ADD a0, a3, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb10:
  ADD t1, a2, zero
  ADD t2, a1, zero
  JAL zero, bb1
bb11:
  ADD t2, a2, zero
  ADD a0, a1, zero
  JAL zero, bb2
bb12:
  ADD a0, a2, zero
  JAL zero, bb3
bb13:
  ADDIW a4, a2, 1
  SLTI a5, a4, 3
  XORI a5, a5, 1
  BNE a5, zero, bb19
  # implict jump to bb14
bb14:
  # implict jump to bb15
bb15:
  ADD a1, zero, zero
  # implict jump to bb16
bb16:
  ADDIW a1, a1, 1
  SLTI a2, a1, 2
  BNE a2, zero, bb18
  # implict jump to bb17
bb17:
  ADDIW a2, a3, 1
  ADD a5, a1, zero
  ADD a1, t0, zero
  ADD t0, a2, zero
  JAL zero, bb4
bb18:
  JAL zero, bb16
bb19:
  SLTU a5, zero, a2
  BNE a2, zero, bb22
  # implict jump to bb20
bb20:
  # implict jump to bb21
bb21:
  JAL zero, bb15
bb22:
  BNE a2, zero, bb28
  # implict jump to bb23
bb23:
  XORI t0, a5, 1
  SLTU t0, zero, t0
  # implict jump to bb24
bb24:
  BNE t0, zero, bb26
  # implict jump to bb25
bb25:
  JAL zero, bb21
bb26:
  ADDI a5, zero, -1
  SUBW a2, a2, a5
  SLTI a2, a2, 3
  XORI a2, a2, 1
  BNE a2, zero, bb27
  JAL zero, bb25
bb27:
  JAL zero, bb6
bb28:
  ADDI t0, zero, 1
  JAL zero, bb24
