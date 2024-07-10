.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -192
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD s6, 96(sp)
  SD s1, 104(sp)
  SD s2, 112(sp)
  SD s3, 120(sp)
  SD s0, 128(sp)
  SD s7, 136(sp)
  SD s10, 144(sp)
  SD s8, 152(sp)
  SD s9, 160(sp)
  SD s11, 168(sp)
  SD ra, 176(sp)
  ADD t4, zero, zero
  SW t4, 40(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  ADD t4, zero, zero
  SB t4, 25(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb1
bb1:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t4, 20(sp)
  ADD s8, t4, zero
  LB t4, 25(sp)
  ADD s9, t4, zero
  LW t4, 32(sp)
  ADD s10, t4, zero
  LW t4, 40(sp)
  ADD s11, t4, zero
  LW t4, 44(sp)
  SLTI t0, t4, 20
  BNE t0, zero, bb3
  # implict jump to bb2
bb2:
  LW t4, 0(sp)
  ADD a0, t4, zero
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  LD s1, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s0, 128(sp)
  LD s7, 136(sp)
  LD s10, 144(sp)
  LD s8, 152(sp)
  LD s9, 160(sp)
  LD s11, 168(sp)
  LD ra, 176(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb3:
  ADD t0, s11, zero
  ADD s11, s10, zero
  ADD t4, s9, zero
  SB t4, 69(sp)
  ADD t4, s8, zero
  SW t4, 64(sp)
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  # implict jump to bb4
bb4:
  LW t4, 48(sp)
  ADD t2, t4, zero
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LB t3, 69(sp)
  ADD t4, t3, zero
  SB t4, 24(sp)
  ADD t4, s11, zero
  SW t4, 28(sp)
  ADD t4, t0, zero
  SW t4, 36(sp)
  SLTI a5, t2, 10
  BNE a5, zero, bb6
  # implict jump to bb5
bb5:
  LW t4, 44(sp)
  ADDIW s0, t4, 1
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LB t3, 24(sp)
  ADD t4, t3, zero
  SB t4, 25(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  ADD t4, s0, zero
  SW t4, 4(sp)
  JAL zero, bb1
bb6:
  LW t4, 36(sp)
  ADD a5, t4, zero
  LW t4, 28(sp)
  ADD a6, t4, zero
  LB t4, 24(sp)
  ADD a7, t4, zero
  ADD t6, zero, zero
  LW t4, 8(sp)
  ADD s7, t4, zero
  # implict jump to bb7
bb7:
  ADD t4, s7, zero
  SW t4, 52(sp)
  ADD t4, t6, zero
  SW t4, 60(sp)
  ADD t4, a7, zero
  SB t4, 68(sp)
  ADD t4, a6, zero
  SW t4, 72(sp)
  ADD s3, a5, zero
  LW t4, 60(sp)
  SLTI a2, t4, 5
  BNE a2, zero, bb9
  # implict jump to bb8
bb8:
  ADDIW s0, t2, 1
  ADD t0, s3, zero
  LW t4, 72(sp)
  ADD s11, t4, zero
  LB t3, 68(sp)
  ADD t4, t3, zero
  SB t4, 69(sp)
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  ADD t4, s0, zero
  SW t4, 48(sp)
  JAL zero, bb4
bb9:
  ADD a2, s3, zero
  ADD s2, zero, zero
  LB t4, 68(sp)
  ADD a3, t4, zero
  LW t4, 52(sp)
  ADD s1, t4, zero
  # implict jump to bb10
bb10:
  ADD a4, s1, zero
  ADD s0, a3, zero
  ADD s6, s2, zero
  ADD t1, a2, zero
  SLTI s5, s6, 3
  BNE s5, zero, bb13
  # implict jump to bb11
bb11:
  ADD s4, s0, zero
  # implict jump to bb12
bb12:
  ADD s10, s4, zero
  LW t4, 60(sp)
  ADDIW a1, t4, 1
  ADD a5, t1, zero
  ADD a6, s6, zero
  ADD a7, s10, zero
  ADD t6, a1, zero
  ADD s7, a4, zero
  JAL zero, bb7
bb13:
  ADDIW s5, s6, 1
  SLTI s8, s5, 3
  XORI a0, s8, 1
  BNE a0, zero, bb19
  # implict jump to bb14
bb14:
  ADD s10, s0, zero
  # implict jump to bb15
bb15:
  ADD s9, s10, zero
  ADD a1, zero, zero
  # implict jump to bb16
bb16:
  ADD a5, a1, zero
  SLTI a6, a5, 2
  BNE a6, zero, bb18
  # implict jump to bb17
bb17:
  ADDIW a1, a4, 1
  ADD a2, a5, zero
  ADD s2, s5, zero
  ADD a3, s9, zero
  ADD s1, a1, zero
  JAL zero, bb10
bb18:
  ADDIW a6, a5, 1
  ADD a1, a6, zero
  JAL zero, bb16
bb19:
  XOR s8, s6, zero
  SLTU a0, zero, s8
  BNE a0, zero, bb22
  # implict jump to bb20
bb20:
  ADD s7, s0, zero
  # implict jump to bb21
bb21:
  ADD s9, s7, zero
  ADD s10, s9, zero
  JAL zero, bb15
bb22:
  BNE a0, zero, bb28
  # implict jump to bb23
bb23:
  XORI s1, a0, 1
  XOR s2, s1, zero
  SLTU s1, zero, s2
  ADD s8, s1, zero
  # implict jump to bb24
bb24:
  ADD s9, s8, zero
  BNE s9, zero, bb26
  # implict jump to bb25
bb25:
  ADD s7, s9, zero
  JAL zero, bb21
bb26:
  ADDI s4, zero, -1
  SUBW s10, s6, s4
  SLTI s4, s10, 3
  XORI s10, s4, 1
  BNE s10, zero, bb27
  JAL zero, bb25
bb27:
  ADD s4, s9, zero
  JAL zero, bb12
bb28:
  ADDI s8, zero, 1
  JAL zero, bb24
