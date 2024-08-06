.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -432
  SD ra, 400(sp)
  SD s0, 408(sp)
  SD s1, 416(sp)
  SD s2, 424(sp)
  CALL getint
  ADD s0, a0, zero
  BNE s0, zero, bb9
  # implict jump to bb1
bb1:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb2
bb2:   # loop depth 0
  BNE s0, zero, bb5
  # implict jump to bb3
bb3:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb4
bb4:   # loop depth 0
  ADDI t1, zero, 79
  REMW a0, t0, t1
  LD ra, 400(sp)
  LD s0, 408(sp)
  LD s1, 416(sp)
  LD s2, 424(sp)
  ADDI sp, sp, 432
  JALR zero, 0(ra)
bb5:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb6
bb6:   # loop depth 1
  ADDI t1, zero, 1
  SUBW s0, s0, t1
  SLLIW t1, s0, 2
  ADDI t6, sp, 0
  ADD t1, t6, t1
  LW t1, 0(t1)
  ADDW t0, t0, t1
  BNE s0, zero, bb8
  # implict jump to bb7
bb7:   # loop depth 0
  JAL zero, bb4
bb8:   # loop depth 0
  JAL zero, bb6
bb9:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb10
bb10:   # loop depth 1
  SLLIW s1, s0, 2
  ADDI t6, sp, 0
  ADD s2, t6, s1
  CALL getint
  ADD s1, a0, zero
  SW s1, 0(s2)
  ADDIW s0, s0, 1
  CALL getint
  ADD s1, a0, zero
  BNE s1, zero, bb12
  # implict jump to bb11
bb11:   # loop depth 0
  JAL zero, bb2
bb12:   # loop depth 0
  JAL zero, bb10
