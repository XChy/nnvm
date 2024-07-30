.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -128
  SD ra, 24(sp)
  SD s0, 32(sp)
  SD s1, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s5, 72(sp)
  SD s6, 80(sp)
  SD s7, 88(sp)
  SD s8, 96(sp)
  SD s9, 104(sp)
  SD s10, 112(sp)
  SD s11, 120(sp)
  ADD s2, zero, zero
  ADD s3, zero, zero
  ADD s4, zero, zero
  ADD s5, zero, zero
  # implict jump to bb1
bb1:
  ADD s6, s5, zero
  ADD s7, s4, zero
  ADD t4, s3, zero
  SW t4, 8(sp)
  ADD s9, s2, zero
  ADD s10, zero, zero
  # implict jump to bb2
bb2:
  ADD s11, s6, zero
  ADD t0, s7, zero
  ADD t4, s10, zero
  SW t4, 4(sp)
  ADD t2, s9, zero
  ADD t4, zero, zero
  SW t4, 20(sp)
  ADD t4, t0, zero
  SB t4, 0(sp)
  ADD t4, s11, zero
  SW t4, 12(sp)
  # implict jump to bb3
bb3:
  LW t4, 12(sp)
  ADD a1, t4, zero
  LB t4, 0(sp)
  ADD a2, t4, zero
  LW t4, 20(sp)
  ADD a3, t4, zero
  ADD a4, t2, zero
  ADD a5, zero, zero
  # implict jump to bb4
bb4:
  ADD a6, a4, zero
  ADD a7, a5, zero
  ADD t6, a2, zero
  ADD t4, a1, zero
  SW t4, 16(sp)
  SLTI t1, a7, 3
  BNE t1, zero, bb16
  # implict jump to bb5
bb5:
  ADD t1, t6, zero
  # implict jump to bb6
bb6:
  ADD s0, t1, zero
  ADDIW s1, a3, 1
  SLTI s8, s1, 5
  BNE s8, zero, bb15
  # implict jump to bb7
bb7:
  # implict jump to bb8
bb8:
  LW t4, 4(sp)
  ADDIW s8, t4, 1
  SLTI s11, s8, 10
  BNE s11, zero, bb14
  # implict jump to bb9
bb9:
  # implict jump to bb10
bb10:
  LW t4, 8(sp)
  ADDIW s11, t4, 1
  SLTI t0, s11, 20
  BNE t0, zero, bb13
  # implict jump to bb11
bb11:
  # implict jump to bb12
bb12:
  ADD a0, a6, zero
  LD ra, 24(sp)
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s5, 72(sp)
  LD s6, 80(sp)
  LD s7, 88(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  LD s10, 112(sp)
  LD s11, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb13:
  ADD s2, a6, zero
  ADD s3, s11, zero
  ADD s4, s0, zero
  LW t4, 16(sp)
  ADD s5, t4, zero
  JAL zero, bb1
bb14:
  ADD s9, a6, zero
  ADD s10, s8, zero
  ADD s7, s0, zero
  LW t4, 16(sp)
  ADD s6, t4, zero
  JAL zero, bb2
bb15:
  ADD t2, a6, zero
  ADD t4, s1, zero
  SW t4, 20(sp)
  ADD t4, s0, zero
  SB t4, 0(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  JAL zero, bb3
bb16:
  ADDIW s8, a7, 1
  SLTI s11, s8, 3
  XORI s11, s11, 1
  BNE s11, zero, bb23
  # implict jump to bb17
bb17:
  ADD s11, t6, zero
  # implict jump to bb18
bb18:
  ADD t0, zero, zero
  # implict jump to bb19
bb19:
  ADD a7, t0, zero
  ADDIW a7, a7, 1
  SLTI t6, a7, 2
  BNE t6, zero, bb22
  # implict jump to bb20
bb20:
  # implict jump to bb21
bb21:
  ADDIW t6, a6, 1
  ADD a1, a7, zero
  ADD a2, s11, zero
  ADD a5, s8, zero
  ADD a4, t6, zero
  JAL zero, bb4
bb22:
  ADD t0, a7, zero
  JAL zero, bb19
bb23:
  SLTU s1, zero, a7
  BNE a7, zero, bb26
  # implict jump to bb24
bb24:
  # implict jump to bb25
bb25:
  ADD s11, t6, zero
  JAL zero, bb18
bb26:
  BNE a7, zero, bb32
  # implict jump to bb27
bb27:
  XORI s1, s1, 1
  SLTU s1, zero, s1
  # implict jump to bb28
bb28:
  BNE s1, zero, bb30
  # implict jump to bb29
bb29:
  ADD t6, s1, zero
  JAL zero, bb25
bb30:
  ADDI t0, zero, -1
  SUBW t0, a7, t0
  SLTI t0, t0, 3
  XORI t0, t0, 1
  BNE t0, zero, bb31
  JAL zero, bb29
bb31:
  ADD t1, s1, zero
  JAL zero, bb6
bb32:
  ADDI s1, zero, 1
  JAL zero, bb28
