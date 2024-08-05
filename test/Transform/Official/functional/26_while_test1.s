.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADDI t0, zero, 5
  ADDI a0, zero, 7
  # implict jump to bb1
bb1:
  ADDIW t0, t0, 30
  SLTI t1, a0, 100
  BNE t1, zero, bb6
  # implict jump to bb2
bb2:
  # implict jump to bb3
bb3:
  ADDI t1, zero, 100
  SUBW a0, a0, t1
  SLTI t1, t0, 100
  BNE t1, zero, bb5
  # implict jump to bb4
bb4:
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb5:
  JAL zero, bb1
bb6:
  # implict jump to bb7
bb7:
  ADDIW a0, a0, 6
  SLTI t1, a0, 100
  BNE t1, zero, bb9
  # implict jump to bb8
bb8:
  JAL zero, bb3
bb9:
  JAL zero, bb7
