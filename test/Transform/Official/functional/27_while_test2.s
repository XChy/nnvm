.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADDI t0, zero, 5
  ADDI t1, zero, 6
  ADDI t2, zero, 7
  ADDI a0, zero, 10
  # implict jump to bb1
bb1:
  ADDIW t0, t0, 3
  SLTI a1, t1, 10
  BNE a1, zero, bb6
  # implict jump to bb2
bb2:
  # implict jump to bb3
bb3:
  ADDI a1, zero, 2
  SUBW t1, t1, a1
  SLTI a1, t0, 20
  BNE a1, zero, bb5
  # implict jump to bb4
bb4:
  ADDW t1, t1, a0
  ADDW t0, t0, t1
  ADDW t0, t0, t2
  ADD a0, t0, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb5:
  JAL zero, bb1
bb6:
  # implict jump to bb7
bb7:
  ADDIW t1, t1, 1
  XORI a1, t2, 7
  SLTIU a1, a1, 1
  BNE a1, zero, bb12
  # implict jump to bb8
bb8:
  # implict jump to bb9
bb9:
  ADDIW t2, t2, 1
  SLTI a1, t1, 10
  BNE a1, zero, bb11
  # implict jump to bb10
bb10:
  JAL zero, bb3
bb11:
  JAL zero, bb7
bb12:
  # implict jump to bb13
bb13:
  ADDI a1, zero, 1
  SUBW t2, t2, a1
  SLTI a1, a0, 20
  BNE a1, zero, bb18
  # implict jump to bb14
bb14:
  # implict jump to bb15
bb15:
  ADDI a1, zero, 1
  SUBW a0, a0, a1
  XORI a1, t2, 7
  SLTIU a1, a1, 1
  BNE a1, zero, bb17
  # implict jump to bb16
bb16:
  JAL zero, bb9
bb17:
  JAL zero, bb13
bb18:
  # implict jump to bb19
bb19:
  ADDIW a0, a0, 3
  SLTI a1, a0, 20
  BNE a1, zero, bb21
  # implict jump to bb20
bb20:
  JAL zero, bb15
bb21:
  JAL zero, bb19
