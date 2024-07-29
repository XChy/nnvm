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
  ADDI a5, zero, 0
  SLTI a5, a5, 20
  BNE a5, zero, bb3
  # implict jump to bb1
bb1:
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb2
bb2:
  LW t4, 20(sp)
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
  # implict jump to bb4
bb4:
  ADDI a6, zero, 0
  SLTI t4, a6, 10
  SB t4, 7(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  ADD t4, zero, zero
  SW t4, 52(sp)
  ADD t4, zero, zero
  SB t4, 1(sp)
  ADD t4, zero, zero
  SW t4, 92(sp)
  # implict jump to bb5
bb5:
  LW t4, 92(sp)
  ADD s9, t4, zero
  LB t4, 1(sp)
  ADD a4, t4, zero
  LW t4, 52(sp)
  ADD a1, t4, zero
  LW t4, 32(sp)
  ADD s3, t4, zero
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t4, 12(sp)
  ADD a3, t4, zero
  LB t4, 7(sp)
  BNE t4, zero, bb11
  # implict jump to bb6
bb6:
  ADD t4, a3, zero
  SW t4, 44(sp)
  ADD t1, a1, zero
  ADD t0, a4, zero
  ADD a0, s9, zero
  # implict jump to bb7
bb7:
  ADD t4, a0, zero
  SW t4, 96(sp)
  ADD t4, t0, zero
  SB t4, 2(sp)
  ADD t4, t1, zero
  SW t4, 36(sp)
  ADD t4, s3, zero
  SW t4, 28(sp)
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 80(sp)
  ADDIW t4, t3, 1
  SW t4, 16(sp)
  # implict jump to bb8
bb8:
  LW t4, 16(sp)
  SLTI s0, t4, 20
  BNE s0, zero, bb10
  # implict jump to bb9
bb9:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb2
bb10:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LB t3, 2(sp)
  ADD t4, t3, zero
  SB t4, 1(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  JAL zero, bb5
bb11:
  # implict jump to bb12
bb12:
  ADDI s1, zero, 0
  SLTI t4, s1, 5
  SB t4, 0(sp)
  ADD t4, a3, zero
  SW t4, 116(sp)
  ADD t4, zero, zero
  SW t4, 60(sp)
  ADD t4, a1, zero
  SW t4, 108(sp)
  ADD t4, a4, zero
  SB t4, 3(sp)
  ADD t4, s9, zero
  SW t4, 100(sp)
  # implict jump to bb13
bb13:
  LW t4, 100(sp)
  ADD s9, t4, zero
  LB t4, 3(sp)
  ADD a4, t4, zero
  LW t4, 108(sp)
  ADD a1, t4, zero
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t4, 116(sp)
  ADD a3, t4, zero
  LB t4, 0(sp)
  BNE t4, zero, bb19
  # implict jump to bb14
bb14:
  ADD s1, a3, zero
  ADD s5, zero, zero
  ADD s7, a4, zero
  ADD a2, s9, zero
  # implict jump to bb15
bb15:
  ADD t4, a2, zero
  SW t4, 76(sp)
  ADD t4, s7, zero
  SB t4, 5(sp)
  ADD t4, a1, zero
  SW t4, 84(sp)
  ADD s10, s5, zero
  ADD t4, s1, zero
  SW t4, 104(sp)
  LW t3, 112(sp)
  ADDIW t4, t3, 1
  SW t4, 88(sp)
  # implict jump to bb16
bb16:
  LW t4, 88(sp)
  SLTI s0, t4, 10
  BNE s0, zero, bb18
  # implict jump to bb17
bb17:
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  ADD s3, s10, zero
  LW t4, 84(sp)
  ADD t1, t4, zero
  LB t4, 5(sp)
  ADD t0, t4, zero
  LW t4, 76(sp)
  ADD a0, t4, zero
  JAL zero, bb7
bb18:
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  LB t3, 5(sp)
  ADD t4, t3, zero
  SB t4, 3(sp)
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  JAL zero, bb13
bb19:
  # implict jump to bb20
bb20:
  ADD t4, a3, zero
  SW t4, 40(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  ADD t4, a4, zero
  SB t4, 4(sp)
  ADD t4, s9, zero
  SW t4, 56(sp)
  # implict jump to bb21
bb21:
  LW t4, 56(sp)
  ADD s9, t4, zero
  LB t4, 4(sp)
  ADD a4, t4, zero
  LW t4, 48(sp)
  ADD a3, t4, zero
  LW t4, 40(sp)
  ADD s6, t4, zero
  ADD t6, zero, zero
  # implict jump to bb22
bb22:
  ADD t4, s6, zero
  SW t4, 72(sp)
  ADD t2, t6, zero
  ADD s4, a4, zero
  ADD t4, s9, zero
  SW t4, 64(sp)
  SLTI a7, t2, 3
  BNE a7, zero, bb28
  # implict jump to bb23
bb23:
  ADD a7, s4, zero
  # implict jump to bb24
bb24:
  ADD t4, a7, zero
  SB t4, 6(sp)
  ADDIW t4, a3, 1
  SW t4, 68(sp)
  # implict jump to bb25
bb25:
  LW t4, 68(sp)
  SLTI s0, t4, 5
  BNE s0, zero, bb27
  # implict jump to bb26
bb26:
  LW t4, 72(sp)
  ADD s1, t4, zero
  LW t4, 68(sp)
  ADD s5, t4, zero
  ADD a1, t2, zero
  LB t4, 6(sp)
  ADD s7, t4, zero
  LW t4, 64(sp)
  ADD a2, t4, zero
  JAL zero, bb15
bb27:
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LB t3, 6(sp)
  ADD t4, t3, zero
  SB t4, 4(sp)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  JAL zero, bb21
bb28:
  ADDIW s11, t2, 1
  SLTI a6, s11, 3
  XORI a6, a6, 1
  BNE a6, zero, bb39
  # implict jump to bb29
bb29:
  ADD a6, s4, zero
  # implict jump to bb30
bb30:
  SLTI s4, zero, 2
  BNE s4, zero, bb33
  # implict jump to bb31
bb31:
  ADD s4, zero, zero
  # implict jump to bb32
bb32:
  LW t4, 72(sp)
  ADDIW s8, t4, 1
  ADD s9, s4, zero
  ADD a4, a6, zero
  ADD t6, s11, zero
  ADD s6, s8, zero
  JAL zero, bb22
bb33:
  # implict jump to bb34
bb34:
  ADD a5, zero, zero
  # implict jump to bb35
bb35:
  ADD s8, a5, zero
  ADDIW s0, s8, 1
  # implict jump to bb36
bb36:
  SLTI s8, s0, 2
  BNE s8, zero, bb38
  # implict jump to bb37
bb37:
  ADD s4, s0, zero
  JAL zero, bb32
bb38:
  ADD a5, s0, zero
  JAL zero, bb35
bb39:
  SLTU s2, zero, t2
  BNE t2, zero, bb42
  # implict jump to bb40
bb40:
  # implict jump to bb41
bb41:
  ADD a6, s4, zero
  JAL zero, bb30
bb42:
  BNE t2, zero, bb48
  # implict jump to bb43
bb43:
  XORI s2, s2, 1
  SLTU s2, zero, s2
  # implict jump to bb44
bb44:
  BNE s2, zero, bb46
  # implict jump to bb45
bb45:
  ADD s4, s2, zero
  JAL zero, bb41
bb46:
  ADDI a5, zero, -1
  SUBW a5, t2, a5
  SLTI a5, a5, 3
  XORI a5, a5, 1
  BNE a5, zero, bb47
  JAL zero, bb45
bb47:
  ADD a7, s2, zero
  JAL zero, bb24
bb48:
  ADDI s2, zero, 1
  JAL zero, bb44
