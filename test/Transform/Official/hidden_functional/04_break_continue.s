.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -272
  SD s4, 160(sp)
  SD s6, 168(sp)
  SD s1, 176(sp)
  SD s2, 184(sp)
  SD s3, 192(sp)
  SD s0, 200(sp)
  SD s5, 208(sp)
  SD s9, 216(sp)
  SD s10, 224(sp)
  SD s7, 232(sp)
  SD s8, 240(sp)
  SD s11, 248(sp)
  SD ra, 256(sp)
  ADD t4, zero, zero
  SW t4, 88(sp)
  ADD t4, zero, zero
  SW t4, 72(sp)
  ADD t4, zero, zero
  SW t4, 56(sp)
  ADD t4, zero, zero
  SB t4, 40(sp)
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  JAL zero, bb1
bb1:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t4, 24(sp)
  ADD s7, t4, zero
  LB t4, 40(sp)
  ADD s8, t4, zero
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t4, 72(sp)
  ADD s10, t4, zero
  LW t4, 88(sp)
  ADD s11, t4, zero
  LW t4, 96(sp)
  SLTI t0, t4, 20
  XOR t1, t0, zero
  SLTU t0, zero, t1
  BNE t0, zero, bb2
  JAL zero, bb3
bb2:
  ADD t0, s11, zero
  ADD s11, s10, zero
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  ADD t4, s8, zero
  SB t4, 136(sp)
  ADD t4, s7, zero
  SW t4, 120(sp)
  ADD t4, zero, zero
  SW t4, 104(sp)
  JAL zero, bb4
bb3:
  LW t4, 0(sp)
  ADD a0, t4, zero
  LD s4, 160(sp)
  LD s6, 168(sp)
  LD s1, 176(sp)
  LD s2, 184(sp)
  LD s3, 192(sp)
  LD s0, 200(sp)
  LD s5, 208(sp)
  LD s9, 216(sp)
  LD s10, 224(sp)
  LD s7, 232(sp)
  LD s8, 240(sp)
  LD s11, 248(sp)
  LD ra, 256(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb4:
  LW t4, 104(sp)
  ADD t2, t4, zero
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LB t3, 136(sp)
  ADD t4, t3, zero
  SB t4, 32(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  ADD t4, s11, zero
  SW t4, 64(sp)
  ADD t4, t0, zero
  SW t4, 80(sp)
  SLTI a5, t2, 10
  XOR a6, a5, zero
  SLTU a5, zero, a6
  BNE a5, zero, bb5
  JAL zero, bb6
bb5:
  LW t4, 80(sp)
  ADD a5, t4, zero
  LW t4, 64(sp)
  ADD a6, t4, zero
  LW t4, 48(sp)
  ADD a7, t4, zero
  LB t4, 32(sp)
  ADD s9, t4, zero
  ADD s5, zero, zero
  JAL zero, bb7
bb6:
  LW t4, 96(sp)
  ADDIW s0, t4, 1
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LB t3, 32(sp)
  ADD t4, t3, zero
  SB t4, 40(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  ADD t4, s0, zero
  SW t4, 8(sp)
  JAL zero, bb1
bb7:
  ADD t4, s5, zero
  SW t4, 112(sp)
  ADD t4, s9, zero
  SB t4, 128(sp)
  ADD t4, a7, zero
  SW t4, 144(sp)
  ADD s3, a6, zero
  ADD a2, a5, zero
  LW t4, 112(sp)
  SLTI s2, t4, 5
  XOR a3, s2, zero
  SLTU s2, zero, a3
  BNE s2, zero, bb8
  JAL zero, bb9
bb8:
  ADD s2, a2, zero
  ADD a3, zero, zero
  LW t4, 144(sp)
  ADD s1, t4, zero
  LB t4, 128(sp)
  ADD a4, t4, zero
  JAL zero, bb10
bb9:
  ADDIW s0, t2, 1
  ADD t0, a2, zero
  ADD s11, s3, zero
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LB t3, 128(sp)
  ADD t4, t3, zero
  SB t4, 136(sp)
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  ADD t4, s0, zero
  SW t4, 104(sp)
  JAL zero, bb4
bb10:
  ADD s0, a4, zero
  ADD s6, s1, zero
  ADD s7, a3, zero
  ADD a0, s2, zero
  SLTI s8, s7, 3
  XOR s4, s8, zero
  SLTU s8, zero, s4
  BNE s8, zero, bb11
  JAL zero, bb33
bb11:
  ADDIW s4, s7, 1
  SLTI s8, s4, 3
  XORI s4, s8, 1
  BNE s4, zero, bb13
  JAL zero, bb34
bb12:
  ADD a1, t1, zero
  JAL zero, bb27
bb13:
  XOR s4, s7, zero
  SLTU s8, zero, s4
  BNE s8, zero, bb15
  JAL zero, bb35
bb14:
  ADD s8, s9, zero
  ADD s10, zero, zero
  JAL zero, bb24
bb15:
  XOR s4, s7, zero
  SLTU s8, zero, s4
  BNE s8, zero, bb17
  JAL zero, bb18
bb16:
  ADD s8, s5, zero
  ADD s9, s8, zero
  JAL zero, bb14
bb17:
  ADDI s4, zero, 1
  JAL zero, bb19
bb18:
  XOR s1, s7, zero
  SLTU s2, zero, s1
  XORI s1, s2, 1
  ADD s2, s1, zero
  XOR s1, s2, zero
  SLTU s2, zero, s1
  XOR s1, s2, zero
  SLTU s2, zero, s1
  ADD s4, s2, zero
  JAL zero, bb19
bb19:
  ADD s8, s4, zero
  BNE s8, zero, bb20
  JAL zero, bb21
bb20:
  ADDI t1, zero, -1
  SUBW a1, s7, t1
  SLTI t1, a1, 3
  XORI a1, t1, 1
  BNE a1, zero, bb22
  JAL zero, bb23
bb21:
  ADD s5, s8, zero
  JAL zero, bb16
bb22:
  ADD t1, s8, zero
  JAL zero, bb12
bb23:
  JAL zero, bb21
bb24:
  ADD a1, s10, zero
  SLTI a5, a1, 2
  XOR a6, a5, zero
  SLTU a5, zero, a6
  BNE a5, zero, bb25
  JAL zero, bb26
bb25:
  ADDIW a5, a1, 1
  ADD s10, a5, zero
  JAL zero, bb24
bb26:
  ADDIW s10, s7, 1
  ADDIW a5, s6, 1
  ADD s2, a1, zero
  ADD a3, s10, zero
  ADD s1, a5, zero
  ADD a4, s8, zero
  JAL zero, bb10
bb27:
  JAL zero, bb28
bb28:
  JAL zero, bb30
bb29:
  LW t4, 112(sp)
  ADDIW s10, t4, 1
  ADD a5, a0, zero
  ADD a6, s7, zero
  ADD a7, s6, zero
  ADD s9, a1, zero
  ADD s5, s10, zero
  JAL zero, bb7
bb30:
  JAL zero, bb31
bb31:
  JAL zero, bb32
bb32:
  JAL zero, bb29
bb33:
  ADD t1, s0, zero
  JAL zero, bb12
bb34:
  ADD s9, s0, zero
  JAL zero, bb14
bb35:
  ADD s5, s0, zero
  JAL zero, bb16
