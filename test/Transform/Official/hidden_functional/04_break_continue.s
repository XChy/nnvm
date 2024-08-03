.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADD a0, zero, zero
  ADD t2, zero, zero
  ADD t1, zero, zero
  ADD t0, zero, zero
  # implict jump to bb1
bb1:
  ADD a3, t0, zero
  ADD a1, t1, zero
  ADD a2, t2, zero
  ADD t0, a0, zero
  ADD t1, t0, zero
  ADD t0, zero, zero
  ADD a0, a1, zero
  ADD t2, a3, zero
  # implict jump to bb2
bb2:
  ADD a1, t2, zero
  ADD t2, a0, zero
  ADD a3, t0, zero
  ADD t0, t1, zero
  ADD a0, zero, zero
  ADD t1, a1, zero
  # implict jump to bb3
bb3:
  ADD a1, t1, zero
  ADD a4, a0, zero
  ADD t1, t0, zero
  ADD t0, a1, zero
  ADD a0, t2, zero
  ADD t2, zero, zero
  # implict jump to bb4
bb4:
  ADD a6, t1, zero
  ADD t1, a0, zero
  ADD a5, t0, zero
  SLTI t0, t2, 3
  BNE t0, zero, bb16
  # implict jump to bb5
bb5:
  ADD t0, t1, zero
  # implict jump to bb6
bb6:
  ADD a1, t0, zero
  ADDIW t1, a4, 1
  SLTI t0, t1, 5
  BNE t0, zero, bb15
  # implict jump to bb7
bb7:
  # implict jump to bb8
bb8:
  ADDIW t0, a3, 1
  SLTI t1, t0, 10
  BNE t1, zero, bb14
  # implict jump to bb9
bb9:
  # implict jump to bb10
bb10:
  ADDIW t0, a2, 1
  SLTI t1, t0, 20
  BNE t1, zero, bb13
  # implict jump to bb11
bb11:
  # implict jump to bb12
bb12:
  ADD a0, a6, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb13:
  ADD a0, a6, zero
  ADD t2, t0, zero
  ADD t1, a1, zero
  ADD t0, a5, zero
  JAL zero, bb1
bb14:
  ADD t1, a6, zero
  ADD a0, a1, zero
  ADD t2, a5, zero
  JAL zero, bb2
bb15:
  ADD t0, a6, zero
  ADD a0, t1, zero
  ADD t2, a1, zero
  ADD t1, a5, zero
  JAL zero, bb3
bb16:
  ADDIW a7, t2, 1
  SLTI t0, a7, 3
  XORI t0, t0, 1
  BNE t0, zero, bb23
  # implict jump to bb17
bb17:
  ADD t0, t1, zero
  # implict jump to bb18
bb18:
  ADD t1, t0, zero
  ADD t0, zero, zero
  # implict jump to bb19
bb19:
  ADDIW t2, t0, 1
  SLTI t0, t2, 2
  BNE t0, zero, bb22
  # implict jump to bb20
bb20:
  # implict jump to bb21
bb21:
  ADDIW a1, a6, 1
  ADD t0, t2, zero
  ADD a0, t1, zero
  ADD t2, a7, zero
  ADD t1, a1, zero
  JAL zero, bb4
bb22:
  ADD t0, t2, zero
  JAL zero, bb19
bb23:
  SLTU t0, zero, t2
  BNE t2, zero, bb26
  # implict jump to bb24
bb24:
  ADD t0, t1, zero
  # implict jump to bb25
bb25:
  JAL zero, bb18
bb26:
  BNE t2, zero, bb32
  # implict jump to bb27
bb27:
  XORI t0, t0, 1
  SLTU t0, zero, t0
  # implict jump to bb28
bb28:
  ADD t1, t0, zero
  BNE t1, zero, bb30
  # implict jump to bb29
bb29:
  ADD t0, t1, zero
  JAL zero, bb25
bb30:
  ADDI t0, zero, -1
  SUBW t0, t2, t0
  SLTI t0, t0, 3
  XORI t0, t0, 1
  BNE t0, zero, bb31
  JAL zero, bb29
bb31:
  ADD t0, t1, zero
  JAL zero, bb6
bb32:
  ADDI t0, zero, 1
  JAL zero, bb28
