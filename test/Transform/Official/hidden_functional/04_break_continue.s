.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  ADD s0, zero, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  ADD s4, zero, zero
  ADD s5, zero, zero
  # implict jump to bb1
bb1:
  ADD s6, s5, zero
  ADD s7, s4, zero
  ADD s8, s3, zero
  ADD s9, s2, zero
  ADD s10, s1, zero
  ADD s11, s0, zero
  SLTI t0, s6, 20
  BNE t0, zero, bb3
  # implict jump to bb2
bb2:
  ADD a0, s7, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb3:
  ADD s11, s11, zero
  ADD s10, s10, zero
  ADD s9, s9, zero
  ADD s8, s8, zero
  ADD s7, s7, zero
  ADD t0, zero, zero
  # implict jump to bb4
bb4:
  ADD t1, t0, zero
  ADD t2, s7, zero
  ADD a0, s8, zero
  ADD a1, s9, zero
  ADD a2, s10, zero
  ADD a3, s11, zero
  SLTI a4, t1, 10
  BNE a4, zero, bb6
  # implict jump to bb5
bb5:
  ADDIW a4, s6, 1
  ADD s0, a3, zero
  ADD s1, a2, zero
  ADD s2, a1, zero
  ADD s3, a0, zero
  ADD s4, t2, zero
  ADD s5, a4, zero
  JAL zero, bb1
bb6:
  ADD s0, a3, zero
  ADD s1, a2, zero
  ADD s2, a1, zero
  ADD s3, zero, zero
  ADD s4, t2, zero
  # implict jump to bb7
bb7:
  ADD s5, s4, zero
  ADD t2, s3, zero
  ADD a0, s2, zero
  ADD a1, s1, zero
  ADD a2, s0, zero
  SLTI a3, t2, 5
  BNE a3, zero, bb9
  # implict jump to bb8
bb8:
  ADDIW a3, t1, 1
  ADD s11, a2, zero
  ADD s10, a1, zero
  ADD s9, a0, zero
  ADD s8, t2, zero
  ADD s7, s5, zero
  ADD t0, a3, zero
  JAL zero, bb4
bb9:
  ADD s7, a2, zero
  ADD s8, zero, zero
  ADD s9, a0, zero
  ADD s5, s5, zero
  # implict jump to bb10
bb10:
  ADD s10, s5, zero
  ADD s11, s9, zero
  ADD t0, s8, zero
  ADD a0, s7, zero
  SLTI a1, t0, 3
  BNE a1, zero, bb13
  # implict jump to bb11
bb11:
  ADD a1, s11, zero
  # implict jump to bb12
bb12:
  ADD a1, a1, zero
  ADDIW s5, t2, 1
  ADD s0, a0, zero
  ADD s1, t0, zero
  ADD s2, a1, zero
  ADD s3, s5, zero
  ADD s4, s10, zero
  JAL zero, bb7
bb13:
  ADDIW a2, t0, 1
  SLTI a3, a2, 3
  XORI a3, a3, 1
  BNE a3, zero, bb19
  # implict jump to bb14
bb14:
  ADD a3, s11, zero
  # implict jump to bb15
bb15:
  ADD a3, a3, zero
  ADD s11, zero, zero
  # implict jump to bb16
bb16:
  ADD a5, s11, zero
  SLTI a6, a5, 2
  BNE a6, zero, bb18
  # implict jump to bb17
bb17:
  ADDIW a6, s10, 1
  ADD s7, a5, zero
  ADD s8, a2, zero
  ADD s9, a3, zero
  ADD s5, a6, zero
  JAL zero, bb10
bb18:
  ADDIW s5, a5, 1
  ADD s11, s5, zero
  JAL zero, bb16
bb19:
  XOR a4, t0, zero
  SLTU a4, zero, a4
  BNE a4, zero, bb22
  # implict jump to bb20
bb20:
  ADD s11, s11, zero
  # implict jump to bb21
bb21:
  ADD s11, s11, zero
  ADD a3, s11, zero
  JAL zero, bb15
bb22:
  BNE a4, zero, bb28
  # implict jump to bb23
bb23:
  XORI a4, a4, 1
  XOR a4, a4, zero
  SLTU a4, zero, a4
  ADD a4, a4, zero
  # implict jump to bb24
bb24:
  ADD a4, a4, zero
  BNE a4, zero, bb26
  # implict jump to bb25
bb25:
  ADD s11, a4, zero
  JAL zero, bb21
bb26:
  ADDI a5, zero, -1
  SUBW a5, t0, a5
  SLTI a5, a5, 3
  XORI a5, a5, 1
  BNE a5, zero, bb27
  JAL zero, bb25
bb27:
  ADD a1, a4, zero
  JAL zero, bb12
bb28:
  ADDI a4, zero, 1
  JAL zero, bb24
