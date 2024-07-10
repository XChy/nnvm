.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -352
  SD ra, 240(sp)
  SD s0, 248(sp)
  SD s1, 256(sp)
  SD s2, 264(sp)
  SD s3, 272(sp)
  SD s4, 280(sp)
  SD s5, 288(sp)
  SD s6, 296(sp)
  SD s7, 304(sp)
  SD s8, 312(sp)
  SD s9, 320(sp)
  SD s10, 328(sp)
  SD s11, 336(sp)
  ADD s0, zero, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADD s6, zero, zero
  ADD s7, zero, zero
  ADD s8, zero, zero
  ADD t4, zero, zero
  SW t4, 148(sp)
  ADD t4, zero, zero
  SW t4, 144(sp)
  ADD t4, zero, zero
  SW t4, 140(sp)
  ADD t4, zero, zero
  SW t4, 136(sp)
  ADD t4, zero, zero
  SW t4, 132(sp)
  ADD t4, zero, zero
  SW t4, 128(sp)
  # implict jump to bb1
bb1:
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t4, 136(sp)
  ADD a2, t4, zero
  LW t4, 140(sp)
  ADD a3, t4, zero
  LW t4, 144(sp)
  ADD a4, t4, zero
  LW t4, 148(sp)
  ADD a5, t4, zero
  ADD a6, s8, zero
  ADD a7, s7, zero
  ADD t6, s6, zero
  ADD a1, s5, zero
  ADD t2, s4, zero
  ADD t1, s3, zero
  ADD t0, s2, zero
  ADD s11, s1, zero
  ADD s10, s0, zero
  LW t4, 64(sp)
  SLTI s9, t4, 3
  BNE s9, zero, bb3
  # implict jump to bb2
bb2:
  LW t4, 152(sp)
  ADD a0, t4, zero
  LD ra, 240(sp)
  LD s0, 248(sp)
  LD s1, 256(sp)
  LD s2, 264(sp)
  LD s3, 272(sp)
  LD s4, 280(sp)
  LD s5, 288(sp)
  LD s6, 296(sp)
  LD s7, 304(sp)
  LD s8, 312(sp)
  LD s9, 320(sp)
  LD s10, 328(sp)
  LD s11, 336(sp)
  ADDI sp, sp, 352
  JALR zero, 0(ra)
bb3:
  ADD t4, s10, zero
  SW t4, 212(sp)
  ADD t4, s11, zero
  SW t4, 216(sp)
  ADD t4, t0, zero
  SW t4, 220(sp)
  ADD t4, t1, zero
  SW t4, 224(sp)
  ADD t4, t2, zero
  SW t4, 228(sp)
  ADD t4, a1, zero
  SW t4, 232(sp)
  ADD t4, t6, zero
  SW t4, 236(sp)
  ADD t4, a7, zero
  SW t4, 184(sp)
  ADD t4, a6, zero
  SW t4, 188(sp)
  ADD t4, a5, zero
  SW t4, 180(sp)
  ADD t4, a4, zero
  SW t4, 176(sp)
  ADD t4, a3, zero
  SW t4, 172(sp)
  ADD t4, a2, zero
  SW t4, 168(sp)
  ADD t4, zero, zero
  SW t4, 164(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  # implict jump to bb4
bb4:
  LW t4, 156(sp)
  ADD t6, t4, zero
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  LW t4, 168(sp)
  ADD a2, t4, zero
  LW t4, 172(sp)
  ADD a3, t4, zero
  LW t4, 176(sp)
  ADD a4, t4, zero
  LW t4, 180(sp)
  ADD a5, t4, zero
  LW t4, 188(sp)
  ADD a6, t4, zero
  LW t4, 184(sp)
  ADD a7, t4, zero
  LW t4, 236(sp)
  ADD a1, t4, zero
  LW t4, 232(sp)
  ADD a0, t4, zero
  LW t4, 228(sp)
  ADD t2, t4, zero
  LW t4, 224(sp)
  ADD t1, t4, zero
  LW t4, 220(sp)
  ADD t0, t4, zero
  LW t4, 216(sp)
  ADD s11, t4, zero
  LW t4, 212(sp)
  ADD s10, t4, zero
  LW t4, 160(sp)
  SLTI s9, t4, 4
  BNE s9, zero, bb6
  # implict jump to bb5
bb5:
  LW t4, 64(sp)
  ADDIW s9, t4, 1
  ADD s0, s10, zero
  ADD s1, s11, zero
  ADD s2, t0, zero
  ADD s3, t1, zero
  ADD s4, t2, zero
  ADD s5, a0, zero
  ADD s6, a1, zero
  ADD s7, a7, zero
  ADD s8, a6, zero
  ADD t4, a5, zero
  SW t4, 148(sp)
  ADD t4, a4, zero
  SW t4, 144(sp)
  ADD t4, a3, zero
  SW t4, 140(sp)
  ADD t4, a2, zero
  SW t4, 136(sp)
  ADD t4, s9, zero
  SW t4, 132(sp)
  ADD t4, t6, zero
  SW t4, 128(sp)
  JAL zero, bb1
bb6:
  ADD s0, s10, zero
  ADD s1, zero, zero
  ADD s2, t0, zero
  ADD s3, t1, zero
  ADD s4, t2, zero
  ADD s5, a0, zero
  ADD s6, a1, zero
  ADD s7, a7, zero
  ADD s8, a6, zero
  ADD s9, a5, zero
  ADD t4, a4, zero
  SW t4, 124(sp)
  ADD t4, a3, zero
  SW t4, 196(sp)
  ADD t4, a2, zero
  SW t4, 204(sp)
  ADD t4, t6, zero
  SW t4, 208(sp)
  # implict jump to bb7
bb7:
  LW t4, 208(sp)
  ADD t2, t4, zero
  LW t4, 204(sp)
  ADD a0, t4, zero
  LW t4, 196(sp)
  ADD a1, t4, zero
  LW t4, 124(sp)
  ADD a2, t4, zero
  ADD a3, s9, zero
  ADD a4, s8, zero
  ADD a5, s7, zero
  ADD a6, s6, zero
  ADD a7, s5, zero
  ADD t6, s4, zero
  ADD t1, s3, zero
  ADD t0, s2, zero
  ADD t4, s1, zero
  SW t4, 200(sp)
  ADD s11, s0, zero
  LW t4, 200(sp)
  SLTI s10, t4, 5
  BNE s10, zero, bb9
  # implict jump to bb8
bb8:
  LW t4, 160(sp)
  ADDIW s10, t4, 1
  ADD t4, s11, zero
  SW t4, 212(sp)
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 216(sp)
  ADD t4, t0, zero
  SW t4, 220(sp)
  ADD t4, t1, zero
  SW t4, 224(sp)
  ADD t4, t6, zero
  SW t4, 228(sp)
  ADD t4, a7, zero
  SW t4, 232(sp)
  ADD t4, a6, zero
  SW t4, 236(sp)
  ADD t4, a5, zero
  SW t4, 184(sp)
  ADD t4, a4, zero
  SW t4, 188(sp)
  ADD t4, a3, zero
  SW t4, 180(sp)
  ADD t4, a2, zero
  SW t4, 176(sp)
  ADD t4, a1, zero
  SW t4, 172(sp)
  ADD t4, a0, zero
  SW t4, 168(sp)
  ADD t4, s10, zero
  SW t4, 164(sp)
  ADD t4, t2, zero
  SW t4, 156(sp)
  JAL zero, bb4
bb9:
  ADD s10, zero, zero
  ADD t4, t0, zero
  SW t4, 48(sp)
  ADD t4, t1, zero
  SW t4, 40(sp)
  ADD t4, t6, zero
  SW t4, 36(sp)
  ADD t4, a7, zero
  SW t4, 32(sp)
  ADD t4, a6, zero
  SW t4, 28(sp)
  ADD t4, a5, zero
  SW t4, 24(sp)
  ADD t4, a4, zero
  SW t4, 20(sp)
  ADD t4, a3, zero
  SW t4, 16(sp)
  ADD t4, a2, zero
  SW t4, 12(sp)
  ADD t4, a1, zero
  SW t4, 8(sp)
  ADD t4, a0, zero
  SW t4, 4(sp)
  ADD t4, t2, zero
  SW t4, 192(sp)
  # implict jump to bb10
bb10:
  LW t4, 192(sp)
  ADD t2, t4, zero
  LW t4, 4(sp)
  ADD a0, t4, zero
  LW t4, 8(sp)
  ADD a1, t4, zero
  LW t4, 12(sp)
  ADD a2, t4, zero
  LW t4, 16(sp)
  ADD a3, t4, zero
  LW t4, 20(sp)
  ADD a4, t4, zero
  LW t4, 24(sp)
  ADD a5, t4, zero
  LW t4, 28(sp)
  ADD a6, t4, zero
  LW t4, 32(sp)
  ADD a7, t4, zero
  LW t4, 36(sp)
  ADD t6, t4, zero
  LW t4, 40(sp)
  ADD t1, t4, zero
  LW t4, 48(sp)
  ADD t0, t4, zero
  ADD t4, s10, zero
  SW t4, 44(sp)
  LW t4, 44(sp)
  SLTI s11, t4, 3
  BNE s11, zero, bb12
  # implict jump to bb11
bb11:
  LW t4, 200(sp)
  ADDIW s11, t4, 1
  LW t4, 44(sp)
  ADD s0, t4, zero
  ADD s1, s11, zero
  ADD s2, t0, zero
  ADD s3, t1, zero
  ADD s4, t6, zero
  ADD s5, a7, zero
  ADD s6, a6, zero
  ADD s7, a5, zero
  ADD s8, a4, zero
  ADD s9, a3, zero
  ADD t4, a2, zero
  SW t4, 124(sp)
  ADD t4, a1, zero
  SW t4, 196(sp)
  ADD t4, a0, zero
  SW t4, 204(sp)
  ADD t4, t2, zero
  SW t4, 208(sp)
  JAL zero, bb7
bb12:
  ADD s0, zero, zero
  ADD s1, t1, zero
  ADD s2, t6, zero
  ADD s3, a7, zero
  ADD s4, a6, zero
  ADD s5, a5, zero
  ADD s6, a4, zero
  ADD s7, a3, zero
  ADD s8, a2, zero
  ADD s9, a1, zero
  ADD s11, a0, zero
  ADD t4, t2, zero
  SW t4, 56(sp)
  # implict jump to bb13
bb13:
  LW t4, 56(sp)
  ADD t1, t4, zero
  ADD t2, s11, zero
  ADD a0, s9, zero
  ADD a1, s8, zero
  ADD a2, s7, zero
  ADD a3, s6, zero
  ADD a4, s5, zero
  ADD a5, s4, zero
  ADD a6, s3, zero
  ADD a7, s2, zero
  ADD t6, s1, zero
  ADD t4, s0, zero
  SW t4, 52(sp)
  LW t4, 52(sp)
  SLTI t0, t4, 5
  BNE t0, zero, bb15
  # implict jump to bb14
bb14:
  LW t4, 44(sp)
  ADDIW t0, t4, 1
  ADD s10, t0, zero
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  ADD t4, t6, zero
  SW t4, 40(sp)
  ADD t4, a7, zero
  SW t4, 36(sp)
  ADD t4, a6, zero
  SW t4, 32(sp)
  ADD t4, a5, zero
  SW t4, 28(sp)
  ADD t4, a4, zero
  SW t4, 24(sp)
  ADD t4, a3, zero
  SW t4, 20(sp)
  ADD t4, a2, zero
  SW t4, 16(sp)
  ADD t4, a1, zero
  SW t4, 12(sp)
  ADD t4, a0, zero
  SW t4, 8(sp)
  ADD t4, t2, zero
  SW t4, 4(sp)
  ADD t4, t1, zero
  SW t4, 192(sp)
  JAL zero, bb10
bb15:
  ADD s10, zero, zero
  ADD t0, a7, zero
  ADD t4, a6, zero
  SW t4, 96(sp)
  ADD t4, a5, zero
  SW t4, 88(sp)
  ADD t4, a4, zero
  SW t4, 84(sp)
  ADD t4, a3, zero
  SW t4, 80(sp)
  ADD t4, a2, zero
  SW t4, 76(sp)
  ADD t4, a1, zero
  SW t4, 72(sp)
  ADD t4, a0, zero
  SW t4, 68(sp)
  ADD t4, t2, zero
  SW t4, 0(sp)
  ADD t4, t1, zero
  SW t4, 60(sp)
  # implict jump to bb16
bb16:
  LW t4, 60(sp)
  ADD t1, t4, zero
  LW t4, 0(sp)
  ADD t6, t4, zero
  LW t4, 68(sp)
  ADD t2, t4, zero
  LW t4, 72(sp)
  ADD a0, t4, zero
  LW t4, 76(sp)
  ADD a1, t4, zero
  LW t4, 80(sp)
  ADD a2, t4, zero
  LW t4, 84(sp)
  ADD a3, t4, zero
  LW t4, 88(sp)
  ADD a4, t4, zero
  LW t4, 96(sp)
  ADD a5, t4, zero
  ADD a6, t0, zero
  ADD t4, s10, zero
  SW t4, 92(sp)
  LW t4, 92(sp)
  SLTI a7, t4, 4
  BNE a7, zero, bb18
  # implict jump to bb17
bb17:
  LW t4, 52(sp)
  ADDIW a7, t4, 1
  ADD s0, a7, zero
  LW t4, 92(sp)
  ADD s1, t4, zero
  ADD s2, a6, zero
  ADD s3, a5, zero
  ADD s4, a4, zero
  ADD s5, a3, zero
  ADD s6, a2, zero
  ADD s7, a1, zero
  ADD s8, a0, zero
  ADD s9, t2, zero
  ADD s11, t6, zero
  ADD t4, t1, zero
  SW t4, 56(sp)
  JAL zero, bb13
bb18:
  ADD s0, zero, zero
  ADD s1, a5, zero
  ADD s2, a4, zero
  ADD s3, a3, zero
  ADD s4, a2, zero
  ADD s5, a1, zero
  ADD s6, a0, zero
  ADD s7, t2, zero
  ADD s8, t6, zero
  ADD s9, t1, zero
  # implict jump to bb19
bb19:
  ADD s11, s9, zero
  ADD t1, s8, zero
  ADD t2, s7, zero
  ADD a0, s6, zero
  ADD a1, s5, zero
  ADD a2, s4, zero
  ADD a3, s3, zero
  ADD a4, s2, zero
  ADD a5, s1, zero
  ADD t4, s0, zero
  SW t4, 100(sp)
  LW t4, 100(sp)
  SLTI a7, t4, 6
  BNE a7, zero, bb21
  # implict jump to bb20
bb20:
  LW t4, 92(sp)
  ADDIW a7, t4, 1
  ADD s10, a7, zero
  LW t4, 100(sp)
  ADD t0, t4, zero
  ADD t4, a5, zero
  SW t4, 96(sp)
  ADD t4, a4, zero
  SW t4, 88(sp)
  ADD t4, a3, zero
  SW t4, 84(sp)
  ADD t4, a2, zero
  SW t4, 80(sp)
  ADD t4, a1, zero
  SW t4, 76(sp)
  ADD t4, a0, zero
  SW t4, 72(sp)
  ADD t4, t2, zero
  SW t4, 68(sp)
  ADD t4, t1, zero
  SW t4, 0(sp)
  ADD t4, s11, zero
  SW t4, 60(sp)
  JAL zero, bb16
bb21:
  ADD s10, zero, zero
  ADD t0, a4, zero
  ADD a4, a3, zero
  ADD a3, a2, zero
  ADD a2, a1, zero
  ADD t4, a0, zero
  SW t4, 120(sp)
  ADD t4, t2, zero
  SW t4, 112(sp)
  ADD t4, t1, zero
  SW t4, 108(sp)
  ADD t4, s11, zero
  SW t4, 104(sp)
  # implict jump to bb22
bb22:
  LW t4, 104(sp)
  ADD s11, t4, zero
  LW t4, 108(sp)
  ADD a5, t4, zero
  LW t4, 112(sp)
  ADD a7, t4, zero
  LW t4, 120(sp)
  ADD t6, t4, zero
  ADD a6, a2, zero
  ADD t1, a3, zero
  ADD t2, a4, zero
  ADD a0, t0, zero
  ADD t4, s10, zero
  SW t4, 116(sp)
  LW t4, 116(sp)
  SLTI a1, t4, 5
  BNE a1, zero, bb24
  # implict jump to bb23
bb23:
  LW t4, 100(sp)
  ADDIW a1, t4, 1
  ADD s0, a1, zero
  LW t4, 116(sp)
  ADD s1, t4, zero
  ADD s2, a0, zero
  ADD s3, t2, zero
  ADD s4, t1, zero
  ADD s5, a6, zero
  ADD s6, t6, zero
  ADD s7, a7, zero
  ADD s8, a5, zero
  ADD s9, s11, zero
  JAL zero, bb19
bb24:
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, t1, zero
  ADD s3, a6, zero
  ADD s4, t6, zero
  ADD s5, a7, zero
  ADD s6, a5, zero
  ADD s7, s11, zero
  # implict jump to bb25
bb25:
  ADD s8, s7, zero
  ADD s9, s6, zero
  ADD s11, s5, zero
  ADD t1, s4, zero
  ADD t2, s3, zero
  ADD a0, s2, zero
  ADD a1, s1, zero
  ADD a5, s0, zero
  SLTI a6, a1, 5
  BNE a6, zero, bb27
  # implict jump to bb26
bb26:
  LW t4, 116(sp)
  ADDIW a6, t4, 1
  ADD s10, a6, zero
  ADD t0, a5, zero
  ADD a4, a1, zero
  ADD a3, a0, zero
  ADD a2, t2, zero
  ADD t4, t1, zero
  SW t4, 120(sp)
  ADD t4, s11, zero
  SW t4, 112(sp)
  ADD t4, s9, zero
  SW t4, 108(sp)
  ADD t4, s8, zero
  SW t4, 104(sp)
  JAL zero, bb22
bb27:
  ADD s10, zero, zero
  ADD t0, a0, zero
  ADD a0, t2, zero
  ADD t2, t1, zero
  ADD t1, s11, zero
  ADD s11, s9, zero
  ADD s9, s8, zero
  # implict jump to bb28
bb28:
  ADD s8, s9, zero
  ADD a2, s11, zero
  ADD a3, t1, zero
  ADD a4, t2, zero
  ADD a5, a0, zero
  ADD a6, t0, zero
  ADD a7, s10, zero
  SLTI t6, a7, 3
  BNE t6, zero, bb30
  # implict jump to bb29
bb29:
  ADDIW t6, a1, 1
  ADD s0, a7, zero
  ADD s1, t6, zero
  ADD s2, a6, zero
  ADD s3, a5, zero
  ADD s4, a4, zero
  ADD s5, a3, zero
  ADD s6, a2, zero
  ADD s7, s8, zero
  JAL zero, bb25
bb30:
  ADD s0, zero, zero
  ADD s1, a5, zero
  ADD s2, a4, zero
  ADD s3, a3, zero
  ADD s4, a2, zero
  ADD s5, s8, zero
  # implict jump to bb31
bb31:
  ADD s6, s5, zero
  ADD s7, s4, zero
  ADD s8, s3, zero
  ADD a2, s2, zero
  ADD a3, s1, zero
  ADD a4, s0, zero
  SLTI a5, a4, 6
  BNE a5, zero, bb33
  # implict jump to bb32
bb32:
  ADDIW a5, a7, 1
  ADD s10, a5, zero
  ADD t0, a4, zero
  ADD a0, a3, zero
  ADD t2, a2, zero
  ADD t1, s8, zero
  ADD s11, s7, zero
  ADD s9, s6, zero
  JAL zero, bb28
bb33:
  ADD s9, zero, zero
  ADD s10, a2, zero
  ADD s11, s8, zero
  ADD s8, s7, zero
  ADD s7, s6, zero
  # implict jump to bb34
bb34:
  ADD s6, s7, zero
  ADD t0, s8, zero
  ADD t1, s11, zero
  ADD t2, s10, zero
  ADD a0, s9, zero
  SLTI a2, a0, 7
  BNE a2, zero, bb36
  # implict jump to bb35
bb35:
  ADDIW a2, a4, 2
  ADD s0, a2, zero
  ADD s1, a0, zero
  ADD s2, t2, zero
  ADD s3, t1, zero
  ADD s4, t0, zero
  ADD s5, s6, zero
  JAL zero, bb31
bb36:
  ADD s0, zero, zero
  ADD s1, t1, zero
  ADD s2, t0, zero
  ADD s3, s6, zero
  # implict jump to bb37
bb37:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s6, s1, zero
  ADD t0, s0, zero
  SLTI t1, t0, 5
  BNE t1, zero, bb39
  # implict jump to bb38
bb38:
  ADDIW t1, a0, 2
  ADD s9, t1, zero
  ADD s10, t0, zero
  ADD s11, s6, zero
  ADD s8, s5, zero
  ADD s7, s4, zero
  JAL zero, bb34
bb39:
  ADD s6, zero, zero
  ADD s7, s5, zero
  ADD s5, s4, zero
  # implict jump to bb40
bb40:
  ADD s4, s5, zero
  ADD s8, s7, zero
  ADD s9, s6, zero
  SLTI s10, s9, 3
  BNE s10, zero, bb42
  # implict jump to bb41
bb41:
  ADDIW s10, t0, 2
  ADD s0, s10, zero
  ADD s1, s9, zero
  ADD s2, s8, zero
  ADD s3, s4, zero
  JAL zero, bb37
bb42:
  ADD s0, zero, zero
  ADD s1, s4, zero
  # implict jump to bb43
bb43:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s3, 6
  BNE s4, zero, bb45
  # implict jump to bb44
bb44:
  ADDIW s4, s9, 1
  ADD s6, s4, zero
  ADD s7, s3, zero
  ADD s5, s2, zero
  JAL zero, bb40
bb45:
  ADDIW s4, s2, 3
  ADDI s2, zero, 999
  REMW s5, s4, s2
  ADDIW s2, s3, 3
  ADD s0, s2, zero
  ADD s1, s5, zero
  JAL zero, bb43
