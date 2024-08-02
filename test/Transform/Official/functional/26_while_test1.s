.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADDI t0, zero, 5
  ADDI t1, zero, 7
  # implict jump to bb1
bb1:
  ADDIW t0, t0, 30
  SLTI t2, t1, 100
  BNE t2, zero, bb6
  # implict jump to bb2
bb2:
  # implict jump to bb3
bb3:
  ADDI t2, zero, 100
  SUBW t1, t1, t2
  SLTI t2, t0, 100
  BNE t2, zero, bb5
  # implict jump to bb4
bb4:
  ADD a0, t1, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb5:
  JAL zero, bb1
bb6:
  # implict jump to bb7
bb7:
  ADDIW t1, t1, 6
  SLTI t2, t1, 100
  BNE t2, zero, bb9
  # implict jump to bb8
bb8:
  JAL zero, bb3
bb9:
  JAL zero, bb7
