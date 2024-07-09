.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -288
  SD s3, 176(sp)
  SD s4, 184(sp)
  SD s6, 192(sp)
  SD s1, 200(sp)
  SD s2, 208(sp)
  SD s0, 216(sp)
  SD s5, 224(sp)
  SD s7, 232(sp)
  SD s10, 240(sp)
  SD s8, 248(sp)
  SD s9, 256(sp)
  SD s11, 264(sp)
  SD ra, 272(sp)
  ADD t4, zero, zero
  SW t4, 88(sp)
  ADD t4, zero, zero
  SW t4, 72(sp)
  ADD t4, zero, zero
  SB t4, 56(sp)
  ADD t4, zero, zero
  SW t4, 40(sp)
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  JAL zero, bb1
bb1:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t4, 40(sp)
  ADD s8, t4, zero
  LB t4, 56(sp)
  ADD s9, t4, zero
  LW t4, 72(sp)
  ADD s10, t4, zero
  LW t4, 88(sp)
  ADD s11, t4, zero
  LW t4, 96(sp)
  SLTI t0, t4, 20
  BNE t0, zero, bb2
  JAL zero, bb3
bb2:
  ADD t0, s11, zero
  ADD t4, s10, zero
  SW t4, 168(sp)
  ADD t4, s9, zero
  SB t4, 152(sp)
  ADD t4, s8, zero
  SW t4, 136(sp)
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  ADD t4, zero, zero
  SW t4, 104(sp)
  JAL zero, bb4
bb3:
  LW t4, 0(sp)
  ADD a0, t4, zero
  LD s3, 176(sp)
  LD s4, 184(sp)
  LD s6, 192(sp)
  LD s1, 200(sp)
  LD s2, 208(sp)
  LD s0, 216(sp)
  LD s5, 224(sp)
  LD s7, 232(sp)
  LD s10, 240(sp)
  LD s8, 248(sp)
  LD s9, 256(sp)
  LD s11, 264(sp)
  LD ra, 272(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
bb4:
  LW t4, 104(sp)
  ADD t2, t4, zero
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LB t3, 152(sp)
  ADD t4, t3, zero
  SB t4, 48(sp)
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  ADD t4, t0, zero
  SW t4, 80(sp)
  SLTI a5, t2, 10
  BNE a5, zero, bb5
  JAL zero, bb6
bb5:
  LW t4, 80(sp)
  ADD a5, t4, zero
  LW t4, 64(sp)
  ADD a6, t4, zero
  LB t4, 48(sp)
  ADD a7, t4, zero
  ADD s7, zero, zero
  LW t4, 16(sp)
  ADD s5, t4, zero
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
  LB t3, 48(sp)
  ADD t4, t3, zero
  SB t4, 56(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  ADD t4, s0, zero
  SW t4, 8(sp)
  JAL zero, bb1
bb7:
  ADD t4, s5, zero
  SW t4, 112(sp)
  ADD t4, s7, zero
  SW t4, 128(sp)
  ADD t4, a7, zero
  SB t4, 144(sp)
  ADD t4, a6, zero
  SW t4, 160(sp)
  ADD a2, a5, zero
  LW t4, 128(sp)
  SLTI s2, t4, 5
  BNE s2, zero, bb8
  JAL zero, bb9
bb8:
  ADD s2, a2, zero
  ADD a3, zero, zero
  LB t4, 144(sp)
  ADD s1, t4, zero
  LW t4, 112(sp)
  ADD a4, t4, zero
  JAL zero, bb10
bb9:
  ADDIW s0, t2, 1
  ADD t0, a2, zero
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LB t3, 144(sp)
  ADD t4, t3, zero
  SB t4, 152(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  ADD t4, s0, zero
  SW t4, 104(sp)
  JAL zero, bb4
bb10:
  ADD s0, a4, zero
  ADD s6, s1, zero
  ADD t1, a3, zero
  ADD a0, s2, zero
  SLTI s8, t1, 3
  BNE s8, zero, bb11
  JAL zero, bb27
bb11:
  ADDIW s8, t1, 1
  SLTI s4, s8, 3
  XORI s9, s4, 1
  BNE s9, zero, bb13
  JAL zero, bb28
bb12:
  ADD s10, s3, zero
  LW t4, 128(sp)
  ADDIW s11, t4, 1
  ADD a5, a0, zero
  ADD a6, t1, zero
  ADD a7, s10, zero
  ADD s7, s11, zero
  ADD s5, s0, zero
  JAL zero, bb7
bb13:
  XOR s4, t1, zero
  SLTU s9, zero, s4
  BNE s9, zero, bb15
  JAL zero, bb29
bb14:
  ADD s7, s10, zero
  ADD s11, zero, zero
  JAL zero, bb24
bb15:
  BNE s9, zero, bb17
  JAL zero, bb18
bb16:
  ADD s7, s5, zero
  ADD s10, s7, zero
  JAL zero, bb14
bb17:
  ADDI s4, zero, 1
  JAL zero, bb19
bb18:
  XORI s1, s9, 1
  XOR s2, s1, zero
  SLTU s1, zero, s2
  ADD s4, s1, zero
  JAL zero, bb19
bb19:
  ADD a1, s4, zero
  BNE a1, zero, bb20
  JAL zero, bb21
bb20:
  ADDI s10, zero, -1
  SUBW s3, t1, s10
  SLTI s10, s3, 3
  XORI s3, s10, 1
  BNE s3, zero, bb22
  JAL zero, bb23
bb21:
  ADD s5, a1, zero
  JAL zero, bb16
bb22:
  ADD s3, a1, zero
  JAL zero, bb12
bb23:
  JAL zero, bb21
bb24:
  ADD a1, s11, zero
  SLTI a5, a1, 2
  BNE a5, zero, bb25
  JAL zero, bb26
bb25:
  ADDIW a5, a1, 1
  ADD s11, a5, zero
  JAL zero, bb24
bb26:
  ADDIW s11, s0, 1
  ADD s2, a1, zero
  ADD a3, s8, zero
  ADD s1, s7, zero
  ADD a4, s11, zero
  JAL zero, bb10
bb27:
  ADD s3, s6, zero
  JAL zero, bb12
bb28:
  ADD s10, s6, zero
  JAL zero, bb14
bb29:
  ADD s5, s6, zero
  JAL zero, bb16
