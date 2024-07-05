.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -144
  SD s11, 40(sp)
  SD s6, 48(sp)
  SD s2, 56(sp)
  SD s7, 64(sp)
  SD s4, 72(sp)
  SD s1, 80(sp)
  SD s0, 88(sp)
  SD s5, 96(sp)
  SD s10, 104(sp)
  SD s3, 112(sp)
  SD s8, 120(sp)
  SD s9, 128(sp)
  SD ra, 136(sp)
  ADD s0, zero, zero
  ADD s3, zero, zero
  ADD t4, zero, zero
  SW t4, 0(sp)
  ADD s5, zero, zero
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  JAL zero, bb1
bb1:
  LW t4, 8(sp)
  SLTI s8, t4, 20
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb2
  JAL zero, bb3
bb2:
  ADD s8, s0, zero
  ADD s9, s3, zero
  LW t4, 0(sp)
  ADD s10, t4, zero
  ADD t4, s5, zero
  SB t4, 32(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  ADD t1, zero, zero
  JAL zero, bb4
bb3:
  LW t4, 0(sp)
  ADD a0, t4, zero
  LD s11, 40(sp)
  LD s6, 48(sp)
  LD s2, 56(sp)
  LD s7, 64(sp)
  LD s4, 72(sp)
  LD s1, 80(sp)
  LD s0, 88(sp)
  LD s5, 96(sp)
  LD s10, 104(sp)
  LD s3, 112(sp)
  LD s8, 120(sp)
  LD s9, 128(sp)
  LD ra, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb4:
  SLTI t2, t1, 10
  XOR a0, t2, zero
  SLTU t2, zero, a0
  BNE t2, zero, bb5
  JAL zero, bb6
bb5:
  ADD t2, s8, zero
  ADD a0, s9, zero
  ADD a1, s10, zero
  LB t4, 32(sp)
  ADD a2, t4, zero
  ADD a3, zero, zero
  JAL zero, bb7
bb6:
  LW t4, 8(sp)
  ADDIW s1, t4, 1
  ADD s0, s8, zero
  ADD s3, s9, zero
  ADD t4, s10, zero
  SW t4, 0(sp)
  LB t4, 32(sp)
  ADD s5, t4, zero
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  ADD t4, s1, zero
  SW t4, 8(sp)
  JAL zero, bb1
bb7:
  SLTI a4, a3, 5
  XOR a5, a4, zero
  SLTU a4, zero, a5
  BNE a4, zero, bb8
  JAL zero, bb9
bb8:
  ADD a4, t2, zero
  ADD a5, zero, zero
  ADD a6, a1, zero
  ADD a7, a2, zero
  JAL zero, bb10
bb9:
  ADDIW s1, t1, 1
  ADD s8, t2, zero
  ADD s9, a0, zero
  ADD s10, a1, zero
  ADD t4, a2, zero
  SB t4, 32(sp)
  ADD t4, a3, zero
  SW t4, 16(sp)
  ADD t1, s1, zero
  JAL zero, bb4
bb10:
  SLTI s4, a5, 3
  XOR s7, s4, zero
  SLTU s4, zero, s7
  BNE s4, zero, bb11
  JAL zero, bb33
bb11:
  ADDIW s4, a5, 1
  SLTI s7, s4, 3
  XORI s4, s7, 1
  BNE s4, zero, bb13
  JAL zero, bb34
bb12:
  JAL zero, bb27
bb13:
  XOR s4, a5, zero
  SLTU s7, zero, s4
  BNE s7, zero, bb15
  JAL zero, bb35
bb14:
  ADD t0, zero, zero
  JAL zero, bb24
bb15:
  XOR s4, a5, zero
  SLTU s7, zero, s4
  BNE s7, zero, bb17
  JAL zero, bb18
bb16:
  ADD s2, s7, zero
  JAL zero, bb14
bb17:
  ADDI s4, zero, 1
  JAL zero, bb19
bb18:
  XOR s6, a5, zero
  SLTU s11, zero, s6
  XORI s6, s11, 1
  ADD s11, s6, zero
  XOR s6, s11, zero
  SLTU s11, zero, s6
  XOR s6, s11, zero
  SLTU s11, zero, s6
  ADD s4, s11, zero
  JAL zero, bb19
bb19:
  BNE s4, zero, bb20
  JAL zero, bb21
bb20:
  ADDI s7, zero, 1
  SUBW t0, zero, s7
  SUBW s7, a5, t0
  SLTI t0, s7, 3
  XORI s7, t0, 1
  BNE s7, zero, bb22
  JAL zero, bb23
bb21:
  ADD s7, s4, zero
  JAL zero, bb16
bb22:
  ADD s1, s4, zero
  JAL zero, bb12
bb23:
  JAL zero, bb21
bb24:
  SLTI s6, t0, 2
  XOR s11, s6, zero
  SLTU s6, zero, s11
  BNE s6, zero, bb25
  JAL zero, bb26
bb25:
  ADDIW s6, t0, 1
  ADD t0, s6, zero
  JAL zero, bb24
bb26:
  ADDIW s6, a5, 1
  ADDIW s11, a6, 1
  ADD a4, t0, zero
  ADD a5, s6, zero
  ADD a6, s11, zero
  ADD a7, s2, zero
  JAL zero, bb10
bb27:
  XORI s7, zero, 1
  SLTU t0, zero, s7
  BNE t0, zero, bb28
  JAL zero, bb29
bb28:
  JAL zero, bb30
bb29:
  ADDIW s7, a3, 1
  ADD t2, a4, zero
  ADD a0, a5, zero
  ADD a1, a6, zero
  ADD a2, s1, zero
  ADD a3, s7, zero
  JAL zero, bb7
bb30:
  XORI s7, zero, 1
  SLTU t0, zero, s7
  BNE t0, zero, bb31
  JAL zero, bb32
bb31:
  JAL zero, bb32
bb32:
  JAL zero, bb29
bb33:
  ADD s1, a7, zero
  JAL zero, bb12
bb34:
  ADD s2, a7, zero
  JAL zero, bb14
bb35:
  ADD s7, a7, zero
  JAL zero, bb16
