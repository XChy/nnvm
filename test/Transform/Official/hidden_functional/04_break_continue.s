.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -224
  SD ra, 120(sp)
  SD s0, 128(sp)
  SD s1, 136(sp)
  SD s2, 144(sp)
  SD s3, 152(sp)
  SD s4, 160(sp)
  SD s5, 168(sp)
  SD s6, 176(sp)
  SD s7, 184(sp)
  SD s8, 192(sp)
  SD s9, 200(sp)
  SD s10, 208(sp)
  SD s11, 216(sp)
  ADDI a3, zero, 0
  SLTI a3, a3, 20
  BNE a3, zero, bb3
  # implict jump to bb1
bb1:
  ADD t4, zero, zero
  SW t4, 56(sp)
  # implict jump to bb2
bb2:
  LW t4, 56(sp)
  ADD s0, t4, zero
  ADD a0, s0, zero
  LD ra, 120(sp)
  LD s0, 128(sp)
  LD s1, 136(sp)
  LD s2, 144(sp)
  LD s3, 152(sp)
  LD s4, 160(sp)
  LD s5, 168(sp)
  LD s6, 176(sp)
  LD s7, 184(sp)
  LD s8, 192(sp)
  LD s9, 200(sp)
  LD s10, 208(sp)
  LD s11, 216(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb3:
  ADD t4, zero, zero
  SW t4, 48(sp)
  ADD t4, zero, zero
  SW t4, 40(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  ADD t4, zero, zero
  SB t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 100(sp)
  # implict jump to bb4
bb4:
  LW t4, 100(sp)
  ADD a2, t4, zero
  LB t4, 0(sp)
  ADD s3, t4, zero
  LW t4, 12(sp)
  ADD a0, t4, zero
  LW t4, 8(sp)
  ADD t0, t4, zero
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  LW t4, 48(sp)
  ADD t2, t4, zero
  ADDI a1, zero, 0
  SLTI a1, a1, 10
  BNE a1, zero, bb10
  # implict jump to bb5
bb5:
  ADD t4, t2, zero
  SW t4, 60(sp)
  ADD s7, a0, zero
  ADD s0, s3, zero
  ADD t1, a2, zero
  # implict jump to bb6
bb6:
  ADD t4, t1, zero
  SW t4, 68(sp)
  ADD t4, s0, zero
  SB t4, 2(sp)
  ADD t4, s7, zero
  SW t4, 28(sp)
  ADD t4, t0, zero
  SW t4, 36(sp)
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t3, 84(sp)
  ADDIW t4, t3, 1
  SW t4, 44(sp)
  # implict jump to bb7
bb7:
  LW t4, 44(sp)
  SLTI s0, t4, 20
  BNE s0, zero, bb9
  # implict jump to bb8
bb8:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  JAL zero, bb2
bb9:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LB t3, 2(sp)
  ADD t4, t3, zero
  SB t4, 0(sp)
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  JAL zero, bb4
bb10:
  ADD t4, t2, zero
  SW t4, 64(sp)
  ADD t4, zero, zero
  SW t4, 104(sp)
  ADD t4, a0, zero
  SW t4, 112(sp)
  ADD t4, s3, zero
  SB t4, 4(sp)
  ADD t4, a2, zero
  SW t4, 108(sp)
  # implict jump to bb11
bb11:
  LW t4, 108(sp)
  ADD a2, t4, zero
  LB t4, 4(sp)
  ADD s3, t4, zero
  LW t4, 112(sp)
  ADD a0, t4, zero
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  LW t4, 64(sp)
  ADD t2, t4, zero
  ADDI s2, zero, 0
  SLTI s2, s2, 5
  BNE s2, zero, bb17
  # implict jump to bb12
bb12:
  ADD s2, t2, zero
  ADD t6, zero, zero
  ADD s9, s3, zero
  ADD a7, a2, zero
  # implict jump to bb13
bb13:
  ADD t4, a7, zero
  SW t4, 80(sp)
  ADD t4, s9, zero
  SB t4, 3(sp)
  ADD t4, a0, zero
  SW t4, 88(sp)
  ADD s11, t6, zero
  ADD t4, s2, zero
  SW t4, 96(sp)
  LW t3, 116(sp)
  ADDIW t4, t3, 1
  SW t4, 92(sp)
  # implict jump to bb14
bb14:
  LW t4, 92(sp)
  SLTI s1, t4, 10
  BNE s1, zero, bb16
  # implict jump to bb15
bb15:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  ADD t0, s11, zero
  LW t4, 88(sp)
  ADD s7, t4, zero
  LB t4, 3(sp)
  ADD s0, t4, zero
  LW t4, 80(sp)
  ADD t1, t4, zero
  JAL zero, bb6
bb16:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LB t3, 3(sp)
  ADD t4, t3, zero
  SB t4, 4(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  JAL zero, bb11
bb17:
  ADD t4, t2, zero
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  ADD t4, s3, zero
  SB t4, 5(sp)
  ADD t4, a2, zero
  SW t4, 20(sp)
  # implict jump to bb18
bb18:
  LW t4, 20(sp)
  ADD a2, t4, zero
  LB t4, 5(sp)
  ADD s3, t4, zero
  LW t4, 16(sp)
  ADD t2, t4, zero
  LW t4, 24(sp)
  ADD s6, t4, zero
  ADD a6, zero, zero
  # implict jump to bb19
bb19:
  ADD t4, s6, zero
  SW t4, 76(sp)
  ADD s1, a6, zero
  ADD s8, s3, zero
  ADD t4, a2, zero
  SW t4, 32(sp)
  SLTI a5, s1, 3
  BNE a5, zero, bb25
  # implict jump to bb20
bb20:
  ADD a5, s8, zero
  # implict jump to bb21
bb21:
  ADD t4, a5, zero
  SB t4, 1(sp)
  ADDIW t4, t2, 1
  SW t4, 72(sp)
  # implict jump to bb22
bb22:
  LW t4, 72(sp)
  SLTI s3, t4, 5
  BNE s3, zero, bb24
  # implict jump to bb23
bb23:
  LW t4, 76(sp)
  ADD s2, t4, zero
  LW t4, 72(sp)
  ADD t6, t4, zero
  ADD a0, s1, zero
  LB t4, 1(sp)
  ADD s9, t4, zero
  LW t4, 32(sp)
  ADD a7, t4, zero
  JAL zero, bb13
bb24:
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LB t3, 1(sp)
  ADD t4, t3, zero
  SB t4, 5(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb18
bb25:
  ADDIW s10, s1, 1
  SLTI a4, s10, 3
  XORI a4, a4, 1
  BNE a4, zero, bb35
  # implict jump to bb26
bb26:
  ADD a4, s8, zero
  # implict jump to bb27
bb27:
  SLTI s8, zero, 2
  BNE s8, zero, bb30
  # implict jump to bb28
bb28:
  ADD s8, zero, zero
  # implict jump to bb29
bb29:
  LW t4, 76(sp)
  ADDIW a1, t4, 1
  ADD a2, s8, zero
  ADD s3, a4, zero
  ADD a6, s10, zero
  ADD s6, a1, zero
  JAL zero, bb19
bb30:
  ADD a3, zero, zero
  # implict jump to bb31
bb31:
  ADD a1, a3, zero
  ADDIW s5, a1, 1
  # implict jump to bb32
bb32:
  SLTI a1, s5, 2
  BNE a1, zero, bb34
  # implict jump to bb33
bb33:
  ADD s8, s5, zero
  JAL zero, bb29
bb34:
  ADD a3, s5, zero
  JAL zero, bb31
bb35:
  SLTU s4, zero, s1
  BNE s1, zero, bb38
  # implict jump to bb36
bb36:
  # implict jump to bb37
bb37:
  ADD a4, s8, zero
  JAL zero, bb27
bb38:
  BNE s1, zero, bb44
  # implict jump to bb39
bb39:
  XORI s4, s4, 1
  SLTU s4, zero, s4
  # implict jump to bb40
bb40:
  BNE s4, zero, bb42
  # implict jump to bb41
bb41:
  ADD s8, s4, zero
  JAL zero, bb37
bb42:
  ADDI a3, zero, -1
  SUBW a3, s1, a3
  SLTI a3, a3, 3
  XORI a3, a3, 1
  BNE a3, zero, bb43
  JAL zero, bb41
bb43:
  ADD a5, s4, zero
  JAL zero, bb21
bb44:
  ADDI s4, zero, 1
  JAL zero, bb40
