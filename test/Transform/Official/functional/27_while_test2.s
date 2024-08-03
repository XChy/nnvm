.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADDI a0, zero, 5
  ADDI t2, zero, 6
  ADDI t1, zero, 7
  ADDI t0, zero, 10
  # implict jump to bb1
bb1:
  ADD a1, t0, zero
  ADD a2, t1, zero
  ADD t1, t2, zero
  ADD t0, a0, zero
  ADDIW a0, t0, 3
  SLTI t0, t1, 10
  BNE t0, zero, bb6
  # implict jump to bb2
bb2:
  ADD t0, t1, zero
  ADD t2, a2, zero
  ADD t1, a1, zero
  # implict jump to bb3
bb3:
  ADD a1, t1, zero
  ADD a2, t2, zero
  ADD t1, t0, zero
  ADDI t0, zero, 2
  SUBW t0, t1, t0
  SLTI t1, a0, 20
  BNE t1, zero, bb5
  # implict jump to bb4
bb4:
  ADDW t0, t0, a1
  ADDW t0, a0, t0
  ADDW t0, t0, a2
  ADD a0, t0, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb5:
  ADD t2, t0, zero
  ADD t1, a2, zero
  ADD t0, a1, zero
  JAL zero, bb1
bb6:
  ADD t2, t1, zero
  ADD t1, a2, zero
  ADD t0, a1, zero
  # implict jump to bb7
bb7:
  ADD a1, t0, zero
  ADD t0, t2, zero
  ADDIW t2, t0, 1
  XORI t0, t1, 7
  SLTIU t0, t0, 1
  BNE t0, zero, bb12
  # implict jump to bb8
bb8:
  ADD t0, t1, zero
  ADD t1, a1, zero
  # implict jump to bb9
bb9:
  ADD a1, t1, zero
  ADDIW t1, t0, 1
  SLTI t0, t2, 10
  BNE t0, zero, bb11
  # implict jump to bb10
bb10:
  ADD t0, t2, zero
  ADD t2, t1, zero
  ADD t1, a1, zero
  JAL zero, bb3
bb11:
  ADD t0, a1, zero
  JAL zero, bb7
bb12:
  ADD t0, t1, zero
  ADD t1, a1, zero
  # implict jump to bb13
bb13:
  ADD a1, t1, zero
  ADD t1, t0, zero
  ADDI t0, zero, 1
  SUBW a2, t1, t0
  SLTI t0, a1, 20
  BNE t0, zero, bb18
  # implict jump to bb14
bb14:
  ADD t0, a1, zero
  # implict jump to bb15
bb15:
  ADD t1, t0, zero
  ADDI t0, zero, 1
  SUBW t1, t1, t0
  XORI t0, a2, 7
  SLTIU t0, t0, 1
  BNE t0, zero, bb17
  # implict jump to bb16
bb16:
  ADD t0, a2, zero
  JAL zero, bb9
bb17:
  ADD t0, a2, zero
  JAL zero, bb13
bb18:
  ADD t0, a1, zero
  # implict jump to bb19
bb19:
  ADDIW t1, t0, 3
  SLTI t0, t1, 20
  BNE t0, zero, bb21
  # implict jump to bb20
bb20:
  ADD t0, t1, zero
  JAL zero, bb15
bb21:
  ADD t0, t1, zero
  JAL zero, bb19
