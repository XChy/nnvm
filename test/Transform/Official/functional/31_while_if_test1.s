.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADD t0, zero, zero
  # implict jump to bb1
bb1:
  ADD t1, t0, zero
  XORI t0, t1, 5
  SLTIU t0, t0, 1
  BNE t0, zero, bb9
  # implict jump to bb2
bb2:
  XORI t0, t1, 10
  SLTIU t0, t0, 1
  BNE t0, zero, bb8
  # implict jump to bb3
bb3:
  SLLIW t0, t1, 1
  # implict jump to bb4
bb4:
  # implict jump to bb5
bb5:
  ADD t2, t0, zero
  ADDIW t1, t1, 1
  SLTI t0, t1, 100
  BNE t0, zero, bb7
  # implict jump to bb6
bb6:
  ADD a0, t2, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb7:
  ADD t0, t1, zero
  JAL zero, bb1
bb8:
  ADDI t0, zero, 42
  JAL zero, bb4
bb9:
  ADDI t0, zero, 25
  JAL zero, bb5
