.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -432
  SD ra, 400(sp)
  SD s0, 408(sp)
  SD s1, 416(sp)
  SD s2, 424(sp)
  CALL getint
  ADD s0, a0, zero
  BNE s0, zero, bb9
  # implict jump to bb1
bb1:
  ADD t0, zero, zero
  # implict jump to bb2
bb2:
  BNE t0, zero, bb5
  # implict jump to bb3
bb3:
  ADD t0, zero, zero
  # implict jump to bb4
bb4:
  ADD t1, t0, zero
  ADDI t0, zero, 79
  REMW t0, t1, t0
  ADD a0, t0, zero
  LD ra, 400(sp)
  LD s0, 408(sp)
  LD s1, 416(sp)
  LD s2, 424(sp)
  ADDI sp, sp, 432
  JALR zero, 0(ra)
bb5:
  ADD t1, t0, zero
  ADD t0, zero, zero
  # implict jump to bb6
bb6:
  ADD t2, t0, zero
  ADDI t0, zero, 1
  SUBW t1, t1, t0
  SLLIW t0, t1, 2
  ADDI t5, sp, 0
  ADD t0, t5, t0
  LW t0, 0(t0)
  ADDW t0, t2, t0
  BNE t1, zero, bb8
  # implict jump to bb7
bb7:
  JAL zero, bb4
bb8:
  JAL zero, bb6
bb9:
  ADD s0, zero, zero
  # implict jump to bb10
bb10:
  ADD s1, s0, zero
  SLLIW s0, s1, 2
  ADDI t5, sp, 0
  ADD s0, t5, s0
  CALL getint
  ADD s2, a0, zero
  SW s2, 0(s0)
  ADDIW s0, s1, 1
  CALL getint
  ADD s1, a0, zero
  BNE s1, zero, bb12
  # implict jump to bb11
bb11:
  ADD t0, s0, zero
  JAL zero, bb2
bb12:
  JAL zero, bb10
