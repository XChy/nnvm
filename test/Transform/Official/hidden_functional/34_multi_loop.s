.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -256
  SD ra, 152(sp)
  SD s0, 160(sp)
  SD s1, 168(sp)
  SD s2, 176(sp)
  SD s3, 184(sp)
  SD s4, 192(sp)
  SD s5, 200(sp)
  SD s6, 208(sp)
  SD s7, 216(sp)
  SD s8, 224(sp)
  SD s9, 232(sp)
  SD s10, 240(sp)
  SD s11, 248(sp)
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb1
bb1:
  ADD s2, s1, zero
  ADD t4, s0, zero
  SW t4, 116(sp)
  ADD s4, zero, zero
  # implict jump to bb2
bb2:
  ADD s5, s2, zero
  ADD t4, s4, zero
  SW t4, 112(sp)
  ADD s7, zero, zero
  # implict jump to bb3
bb3:
  ADD t4, s7, zero
  SW t4, 108(sp)
  ADD s9, s5, zero
  ADD s10, zero, zero
  # implict jump to bb4
bb4:
  ADD t4, s10, zero
  SW t4, 100(sp)
  ADD t0, s9, zero
  ADD t1, zero, zero
  # implict jump to bb5
bb5:
  ADD t2, t0, zero
  ADD t4, t1, zero
  SW t4, 96(sp)
  ADD a1, zero, zero
  # implict jump to bb6
bb6:
  ADD a2, t2, zero
  ADD t4, a1, zero
  SW t4, 88(sp)
  ADD a4, zero, zero
  # implict jump to bb7
bb7:
  ADD a5, a2, zero
  ADD t4, a4, zero
  SW t4, 84(sp)
  ADD a7, zero, zero
  ADD t4, a5, zero
  SW t4, 72(sp)
  # implict jump to bb8
bb8:
  LW t4, 72(sp)
  ADD t6, t4, zero
  ADD t4, a7, zero
  SW t4, 40(sp)
  ADD t4, zero, zero
  SW t4, 64(sp)
  ADD t4, t6, zero
  SW t4, 60(sp)
  # implict jump to bb9
bb9:
  LW t4, 60(sp)
  ADD a3, t4, zero
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  ADD t4, zero, zero
  SW t4, 52(sp)
  ADD t4, a3, zero
  SW t4, 48(sp)
  # implict jump to bb10
bb10:
  LW t4, 48(sp)
  ADD s11, t4, zero
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  ADD t4, zero, zero
  SW t4, 0(sp)
  ADD t4, s11, zero
  SW t4, 16(sp)
  # implict jump to bb11
bb11:
  LW t4, 16(sp)
  ADD s6, t4, zero
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  ADD t4, s6, zero
  SW t4, 148(sp)
  # implict jump to bb12
bb12:
  LW t4, 148(sp)
  ADD s6, t4, zero
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  ADD t4, zero, zero
  SW t4, 140(sp)
  ADD t4, s6, zero
  SW t4, 136(sp)
  # implict jump to bb13
bb13:
  LW t4, 136(sp)
  ADD s6, t4, zero
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  ADD t4, zero, zero
  SW t4, 128(sp)
  ADD t4, s6, zero
  SW t4, 80(sp)
  # implict jump to bb14
bb14:
  LW t4, 80(sp)
  ADD s6, t4, zero
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  ADD t4, zero, zero
  SW t4, 4(sp)
  ADD t4, s6, zero
  SW t4, 8(sp)
  # implict jump to bb15
bb15:
  LW t4, 8(sp)
  ADD s6, t4, zero
  LW t4, 4(sp)
  ADD s3, t4, zero
  ADDIW s6, s6, 3
  ADDI s11, zero, 999
  REMW t4, s6, s11
  SW t4, 20(sp)
  ADDIW t4, s3, 3
  SW t4, 24(sp)
  LW t4, 24(sp)
  SLTI s11, t4, 6
  BNE s11, zero, bb60
  # implict jump to bb16
bb16:
  # implict jump to bb17
bb17:
  LW t3, 124(sp)
  ADDIW t4, t3, 1
  SW t4, 28(sp)
  LW t4, 28(sp)
  SLTI s6, t4, 3
  BNE s6, zero, bb59
  # implict jump to bb18
bb18:
  # implict jump to bb19
bb19:
  LW t3, 132(sp)
  ADDIW t4, t3, 2
  SW t4, 32(sp)
  LW t4, 32(sp)
  SLTI s3, t4, 5
  BNE s3, zero, bb58
  # implict jump to bb20
bb20:
  # implict jump to bb21
bb21:
  LW t3, 144(sp)
  ADDIW t4, t3, 2
  SW t4, 36(sp)
  LW t4, 36(sp)
  SLTI s11, t4, 7
  BNE s11, zero, bb57
  # implict jump to bb22
bb22:
  # implict jump to bb23
bb23:
  LW t3, 120(sp)
  ADDIW t4, t3, 2
  SW t4, 44(sp)
  LW t4, 44(sp)
  SLTI s6, t4, 6
  BNE s6, zero, bb56
  # implict jump to bb24
bb24:
  # implict jump to bb25
bb25:
  LW t3, 104(sp)
  ADDIW t4, t3, 1
  SW t4, 56(sp)
  LW t4, 56(sp)
  SLTI s3, t4, 3
  BNE s3, zero, bb55
  # implict jump to bb26
bb26:
  # implict jump to bb27
bb27:
  LW t3, 92(sp)
  ADDIW t4, t3, 1
  SW t4, 68(sp)
  LW t4, 68(sp)
  SLTI s8, t4, 5
  BNE s8, zero, bb54
  # implict jump to bb28
bb28:
  # implict jump to bb29
bb29:
  LW t4, 40(sp)
  ADDIW s8, t4, 1
  SLTI s11, s8, 5
  BNE s11, zero, bb53
  # implict jump to bb30
bb30:
  # implict jump to bb31
bb31:
  LW t4, 84(sp)
  ADDIW s11, t4, 1
  SLTI a3, s11, 6
  BNE a3, zero, bb52
  # implict jump to bb32
bb32:
  # implict jump to bb33
bb33:
  LW t4, 88(sp)
  ADDIW a3, t4, 1
  SLTI a0, a3, 4
  BNE a0, zero, bb51
  # implict jump to bb34
bb34:
  # implict jump to bb35
bb35:
  LW t3, 96(sp)
  ADDIW t4, t3, 1
  SW t4, 76(sp)
  LW t4, 76(sp)
  SLTI s6, t4, 5
  BNE s6, zero, bb50
  # implict jump to bb36
bb36:
  # implict jump to bb37
bb37:
  LW t4, 100(sp)
  ADDIW s6, t4, 1
  SLTI t6, s6, 3
  BNE t6, zero, bb49
  # implict jump to bb38
bb38:
  # implict jump to bb39
bb39:
  LW t4, 108(sp)
  ADDIW t6, t4, 1
  SLTI a6, t6, 5
  BNE a6, zero, bb48
  # implict jump to bb40
bb40:
  # implict jump to bb41
bb41:
  LW t4, 112(sp)
  ADDIW a6, t4, 1
  SLTI s3, a6, 4
  BNE s3, zero, bb47
  # implict jump to bb42
bb42:
  # implict jump to bb43
bb43:
  LW t4, 116(sp)
  ADDIW s3, t4, 1
  SLTI a5, s3, 3
  BNE a5, zero, bb46
  # implict jump to bb44
bb44:
  # implict jump to bb45
bb45:
  LW t4, 20(sp)
  ADD a0, t4, zero
  LD ra, 152(sp)
  LD s0, 160(sp)
  LD s1, 168(sp)
  LD s2, 176(sp)
  LD s3, 184(sp)
  LD s4, 192(sp)
  LD s5, 200(sp)
  LD s6, 208(sp)
  LD s7, 216(sp)
  LD s8, 224(sp)
  LD s9, 232(sp)
  LD s10, 240(sp)
  LD s11, 248(sp)
  ADDI sp, sp, 256
  JALR zero, 0(ra)
bb46:
  ADD s0, s3, zero
  LW t4, 20(sp)
  ADD s1, t4, zero
  JAL zero, bb1
bb47:
  ADD s4, a6, zero
  LW t4, 20(sp)
  ADD s2, t4, zero
  JAL zero, bb2
bb48:
  LW t4, 20(sp)
  ADD s5, t4, zero
  ADD s7, t6, zero
  JAL zero, bb3
bb49:
  LW t4, 20(sp)
  ADD s9, t4, zero
  ADD s10, s6, zero
  JAL zero, bb4
bb50:
  LW t4, 76(sp)
  ADD t1, t4, zero
  LW t4, 20(sp)
  ADD t0, t4, zero
  JAL zero, bb5
bb51:
  ADD a1, a3, zero
  LW t4, 20(sp)
  ADD t2, t4, zero
  JAL zero, bb6
bb52:
  ADD a4, s11, zero
  LW t4, 20(sp)
  ADD a2, t4, zero
  JAL zero, bb7
bb53:
  ADD a7, s8, zero
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  JAL zero, bb8
bb54:
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  JAL zero, bb9
bb55:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb10
bb56:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb11
bb57:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 148(sp)
  JAL zero, bb12
bb58:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  JAL zero, bb13
bb59:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  JAL zero, bb14
bb60:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  JAL zero, bb15
