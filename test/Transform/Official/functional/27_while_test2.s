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
  ADD a2, t0, zero
  ADD t0, a0, zero
  ADDIW a1, t0, 3
  SLTI t0, t2, 10
  BNE t0, zero, bb7
  # implict jump to bb2
bb2:
  ADD t0, t2, zero
  ADD t2, t1, zero
  ADD t1, a2, zero
  # implict jump to bb3
bb3:
  ADD a2, t1, zero
  ADD a3, t2, zero
  ADD t1, t0, zero
  ADDI t0, zero, 2
  SUBW t1, t1, t0
  SLTI t0, a1, 20
  BNE t0, zero, bb6
  # implict jump to bb4
bb4:
  # implict jump to bb5
bb5:
  ADDW t0, t1, a2
  ADDW t0, a1, t0
  ADDW t0, t0, a3
  ADD a0, t0, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb6:
  ADD a0, a1, zero
  ADD t2, t1, zero
  ADD t1, a3, zero
  ADD t0, a2, zero
  JAL zero, bb1
bb7:
  ADD t0, a2, zero
  # implict jump to bb8
bb8:
  ADD a0, t0, zero
  ADD t0, t2, zero
  ADDIW a2, t0, 1
  XORI t0, t1, 7
  SLTIU t0, t0, 1
  BNE t0, zero, bb13
  # implict jump to bb9
bb9:
  ADD t0, t1, zero
  ADD t1, a0, zero
  # implict jump to bb10
bb10:
  ADD a0, t1, zero
  ADDIW t1, t0, 1
  SLTI t0, a2, 10
  BNE t0, zero, bb12
  # implict jump to bb11
bb11:
  ADD t0, a2, zero
  ADD t2, t1, zero
  ADD t1, a0, zero
  JAL zero, bb3
bb12:
  ADD t2, a2, zero
  ADD t0, a0, zero
  JAL zero, bb8
bb13:
  ADD t0, t1, zero
  ADD t1, a0, zero
  # implict jump to bb14
bb14:
  ADD t2, t0, zero
  ADDI t0, zero, 1
  SUBW t2, t2, t0
  SLTI t0, t1, 20
  BNE t0, zero, bb19
  # implict jump to bb15
bb15:
  ADD t0, t1, zero
  # implict jump to bb16
bb16:
  ADD t1, t0, zero
  ADDI t0, zero, 1
  SUBW t1, t1, t0
  XORI t0, t2, 7
  SLTIU t0, t0, 1
  BNE t0, zero, bb18
  # implict jump to bb17
bb17:
  ADD t0, t2, zero
  JAL zero, bb10
bb18:
  ADD t0, t2, zero
  JAL zero, bb14
bb19:
  ADD t0, t1, zero
  # implict jump to bb20
bb20:
  ADDIW t1, t0, 3
  SLTI t0, t1, 20
  BNE t0, zero, bb22
  # implict jump to bb21
bb21:
  ADD t0, t1, zero
  JAL zero, bb16
bb22:
  ADD t0, t1, zero
  JAL zero, bb20
