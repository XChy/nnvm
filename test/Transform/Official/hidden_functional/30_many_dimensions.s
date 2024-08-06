.global main
.section .bss
.section .data
.section .text
main:
  LUI t0, 1048064
  ADDIW t0, t0, -416
  ADD sp, sp, t0
  SD ra, 160(sp)
  SD s0, 168(sp)
  SD s1, 176(sp)
  SD s2, 184(sp)
  SD s3, 192(sp)
  SD s4, 200(sp)
  SD s5, 216(sp)
  SD s6, 224(sp)
  SD s7, 232(sp)
  SD s8, 240(sp)
  SD s9, 248(sp)
  SD s10, 256(sp)
  SD s11, 264(sp)
  LUI a0, 128
  ADDIW a0, a0, 0
  ADD a0, zero, a0
  # implict jump to bb1
bb1:
  ADDI s0, zero, 1
  SUBW a0, a0, s0
  SLLIW s0, a0, 2
  ADDI t6, sp, 280
  ADD s0, t6, s0
  ADDI s1, zero, 0
  SW s1, 0(s0)
  BNE a0, zero, bb57
  # implict jump to bb2
bb2:
  ADD s5, zero, zero
  ADD s0, zero, zero
  # implict jump to bb3
bb3:
  SW s0, 120(sp)
  ADD s1, zero, zero
  # implict jump to bb4
bb4:
  SW s1, 116(sp)
  ADD s2, zero, zero
  # implict jump to bb5
bb5:
  SW s2, 112(sp)
  ADD s3, zero, zero
  # implict jump to bb6
bb6:
  SW s3, 108(sp)
  ADD s6, zero, zero
  # implict jump to bb7
bb7:
  SW s6, 104(sp)
  ADD s4, zero, zero
  # implict jump to bb8
bb8:
  SW s4, 100(sp)
  ADD s6, zero, zero
  # implict jump to bb9
bb9:
  SW s6, 96(sp)
  ADD s4, zero, zero
  # implict jump to bb10
bb10:
  SW s4, 92(sp)
  ADD a0, zero, zero
  SW a0, 64(sp)
  # implict jump to bb11
bb11:
  LW a0, 64(sp)
  SW a0, 64(sp)
  ADD s6, zero, zero
  # implict jump to bb12
bb12:
  ADD s8, zero, zero
  # implict jump to bb13
bb13:
  ADD a0, zero, zero
  SW a0, 56(sp)
  # implict jump to bb14
bb14:
  LW a0, 56(sp)
  SW a0, 56(sp)
  ADD s11, zero, zero
  # implict jump to bb15
bb15:
  ADD s7, zero, zero
  # implict jump to bb16
bb16:
  ADD s9, zero, zero
  # implict jump to bb17
bb17:
  ADD s4, zero, zero
  # implict jump to bb18
bb18:
  ADD a0, zero, zero
  SW a0, 128(sp)
  # implict jump to bb19
bb19:
  LW a0, 128(sp)
  SW a0, 152(sp)
  ADD s0, zero, zero
  SW s0, 124(sp)
  # implict jump to bb20
bb20:
  LW s0, 124(sp)
  SW s0, 88(sp)
  LW s0, 120(sp)
  SLLIW s0, s0, 20
  SW s0, 144(sp)
  LW s0, 144(sp)
  ADDI t6, sp, 280
  ADD s0, t6, s0
  LUI t6, 512
  ADDIW t6, t6, 336
  ADD t6, t6, sp
  SD s0, 0(t6)
  LW s0, 116(sp)
  SLLIW s0, s0, 19
  SW s0, 156(sp)
  LW s0, 156(sp)
  LUI t6, 512
  ADDIW t6, t6, 336
  ADD t6, t6, sp
  LD s1, 0(t6)
  ADD s0, s1, s0
  LUI t6, 512
  ADDIW t6, t6, 400
  ADD t6, t6, sp
  SD s0, 0(t6)
  LW s0, 112(sp)
  SLLIW s0, s0, 18
  SW s0, 20(sp)
  LW s0, 20(sp)
  LUI t6, 512
  ADDIW t6, t6, 400
  ADD t6, t6, sp
  LD s1, 0(t6)
  ADD s0, s1, s0
  LUI t6, 512
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  SD s0, 0(t6)
  LW s0, 108(sp)
  SLLIW s0, s0, 17
  SW s0, 8(sp)
  LW s0, 8(sp)
  LUI t6, 512
  ADDIW t6, t6, 392
  ADD t6, t6, sp
  LD s1, 0(t6)
  ADD s0, s1, s0
  LUI t6, 512
  ADDIW t6, t6, 384
  ADD t6, t6, sp
  SD s0, 0(t6)
  LW s0, 104(sp)
  SLLIW s0, s0, 16
  SW s0, 76(sp)
  LW s0, 76(sp)
  LUI t6, 512
  ADDIW t6, t6, 384
  ADD t6, t6, sp
  LD s1, 0(t6)
  ADD s0, s1, s0
  LUI t6, 512
  ADDIW t6, t6, 376
  ADD t6, t6, sp
  SD s0, 0(t6)
  LW s0, 100(sp)
  SLLIW s0, s0, 15
  SW s0, 68(sp)
  LW s0, 68(sp)
  LUI t6, 512
  ADDIW t6, t6, 376
  ADD t6, t6, sp
  LD s1, 0(t6)
  ADD s0, s1, s0
  LUI t6, 512
  ADDIW t6, t6, 368
  ADD t6, t6, sp
  SD s0, 0(t6)
  LW s0, 96(sp)
  SLLIW s0, s0, 14
  SW s0, 60(sp)
  LW s0, 60(sp)
  LUI t6, 512
  ADDIW t6, t6, 368
  ADD t6, t6, sp
  LD s1, 0(t6)
  ADD s0, s1, s0
  LUI t6, 512
  ADDIW t6, t6, 360
  ADD t6, t6, sp
  SD s0, 0(t6)
  LW s0, 92(sp)
  SLLIW s0, s0, 13
  SW s0, 52(sp)
  LW s0, 52(sp)
  LUI t6, 512
  ADDIW t6, t6, 360
  ADD t6, t6, sp
  LD s1, 0(t6)
  ADD s0, s1, s0
  SD s0, 208(sp)
  LW a0, 64(sp)
  SLLIW s0, a0, 12
  SW s0, 48(sp)
  LW s0, 48(sp)
  LD s1, 208(sp)
  ADD s0, s1, s0
  LUI t6, 512
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  SD s0, 0(t6)
  SLLIW s0, s6, 11
  SW s0, 44(sp)
  LW s0, 44(sp)
  LUI t6, 512
  ADDIW t6, t6, 352
  ADD t6, t6, sp
  LD s1, 0(t6)
  ADD s0, s1, s0
  LUI t6, 512
  ADDIW t6, t6, 344
  ADD t6, t6, sp
  SD s0, 0(t6)
  SLLIW s0, s8, 10
  SW s0, 40(sp)
  LW s0, 40(sp)
  LUI t6, 512
  ADDIW t6, t6, 344
  ADD t6, t6, sp
  LD s1, 0(t6)
  ADD s0, s1, s0
  SD s0, 272(sp)
  LW a0, 56(sp)
  SLLIW s0, a0, 9
  SW s0, 36(sp)
  LW s0, 36(sp)
  LD s1, 272(sp)
  ADD s0, s1, s0
  LUI t6, 512
  ADDIW t6, t6, 328
  ADD t6, t6, sp
  SD s0, 0(t6)
  SLLIW s0, s11, 8
  SW s0, 32(sp)
  LW s0, 32(sp)
  LUI t6, 512
  ADDIW t6, t6, 328
  ADD t6, t6, sp
  LD s1, 0(t6)
  ADD s0, s1, s0
  LUI t6, 512
  ADDIW t6, t6, 320
  ADD t6, t6, sp
  SD s0, 0(t6)
  SLLIW s0, s7, 7
  SW s0, 24(sp)
  LW s0, 24(sp)
  LUI t6, 512
  ADDIW t6, t6, 320
  ADD t6, t6, sp
  LD s1, 0(t6)
  ADD s0, s1, s0
  LUI t6, 512
  ADDIW t6, t6, 312
  ADD t6, t6, sp
  SD s0, 0(t6)
  SLLIW s0, s9, 6
  SW s0, 16(sp)
  LW s0, 16(sp)
  LUI t6, 512
  ADDIW t6, t6, 312
  ADD t6, t6, sp
  LD s1, 0(t6)
  ADD s0, s1, s0
  LUI t6, 512
  ADDIW t6, t6, 304
  ADD t6, t6, sp
  SD s0, 0(t6)
  SLLIW s0, s4, 5
  SW s0, 4(sp)
  LW s0, 4(sp)
  LUI t6, 512
  ADDIW t6, t6, 304
  ADD t6, t6, sp
  LD s1, 0(t6)
  ADD s0, s1, s0
  LUI t6, 512
  ADDIW t6, t6, 296
  ADD t6, t6, sp
  SD s0, 0(t6)
  LW s0, 152(sp)
  SLLIW s0, s0, 4
  SW s0, 84(sp)
  LW s0, 84(sp)
  LUI t6, 512
  ADDIW t6, t6, 296
  ADD t6, t6, sp
  LD s1, 0(t6)
  ADD s0, s1, s0
  LUI t6, 512
  ADDIW t6, t6, 288
  ADD t6, t6, sp
  SD s0, 0(t6)
  LW s0, 88(sp)
  SLLIW s0, s0, 3
  SW s0, 148(sp)
  LW s0, 148(sp)
  LUI t6, 512
  ADDIW t6, t6, 288
  ADD t6, t6, sp
  LD s1, 0(t6)
  ADD s0, s1, s0
  LUI t6, 512
  ADDIW t6, t6, 280
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 512
  ADDIW t6, t6, 280
  ADD t6, t6, sp
  LD s0, 0(t6)
  SW s5, 0(s0)
  ADDIW s0, s5, 1
  SW s0, 140(sp)
  LW s0, 140(sp)
  LUI t6, 512
  ADDIW t6, t6, 280
  ADD t6, t6, sp
  LD s1, 0(t6)
  SW s0, 4(s1)
  ADDIW s5, s5, 2
  LW s0, 88(sp)
  ADDIW s0, s0, 1
  SW s0, 136(sp)
  LW s0, 136(sp)
  SLTI s0, s0, 2
  SB s0, 1(sp)
  LB s0, 1(sp)
  BNE s0, zero, bb56
  # implict jump to bb21
bb21:
  LW s0, 152(sp)
  ADDIW s0, s0, 1
  SW s0, 132(sp)
  LW s0, 132(sp)
  SLTI s0, s0, 2
  SB s0, 2(sp)
  LB s0, 2(sp)
  BNE s0, zero, bb55
  # implict jump to bb22
bb22:
  ADDIW s4, s4, 1
  SLTI s0, s4, 2
  SB s0, 0(sp)
  LB s0, 0(sp)
  BNE s0, zero, bb54
  # implict jump to bb23
bb23:
  ADDIW s9, s9, 1
  SLTI s10, s9, 2
  BNE s10, zero, bb53
  # implict jump to bb24
bb24:
  ADDIW s7, s7, 1
  SLTI s9, s7, 2
  BNE s9, zero, bb52
  # implict jump to bb25
bb25:
  ADDIW s11, s11, 1
  SLTI s7, s11, 2
  BNE s7, zero, bb51
  # implict jump to bb26
bb26:
  LW a0, 56(sp)
  ADDIW a0, a0, 1
  SW a0, 56(sp)
  LW a0, 56(sp)
  SLTI s7, a0, 2
  BNE s7, zero, bb50
  # implict jump to bb27
bb27:
  ADDIW s8, s8, 1
  SLTI s7, s8, 2
  BNE s7, zero, bb49
  # implict jump to bb28
bb28:
  ADDIW s6, s6, 1
  SLTI s7, s6, 2
  BNE s7, zero, bb48
  # implict jump to bb29
bb29:
  LW a0, 64(sp)
  ADDIW a0, a0, 1
  SW a0, 64(sp)
  LW a0, 64(sp)
  SLTI s6, a0, 2
  BNE s6, zero, bb47
  # implict jump to bb30
bb30:
  LW s0, 92(sp)
  ADDIW s4, s0, 1
  SLTI s6, s4, 2
  BNE s6, zero, bb46
  # implict jump to bb31
bb31:
  LW s0, 96(sp)
  ADDIW s6, s0, 1
  SLTI s4, s6, 2
  BNE s4, zero, bb45
  # implict jump to bb32
bb32:
  LW s0, 100(sp)
  ADDIW s4, s0, 1
  SLTI s6, s4, 2
  BNE s6, zero, bb44
  # implict jump to bb33
bb33:
  LW s0, 104(sp)
  ADDIW s6, s0, 1
  SLTI s4, s6, 2
  BNE s4, zero, bb43
  # implict jump to bb34
bb34:
  LW s0, 108(sp)
  ADDIW s3, s0, 1
  SLTI s4, s3, 2
  BNE s4, zero, bb42
  # implict jump to bb35
bb35:
  LW s0, 112(sp)
  ADDIW s2, s0, 1
  SLTI s3, s2, 2
  BNE s3, zero, bb41
  # implict jump to bb36
bb36:
  LW s0, 116(sp)
  ADDIW s1, s0, 1
  SLTI s2, s1, 2
  BNE s2, zero, bb40
  # implict jump to bb37
bb37:
  LW s0, 120(sp)
  ADDIW s0, s0, 1
  SLTI s1, s0, 2
  BNE s1, zero, bb39
  # implict jump to bb38
bb38:
  LW a0, 280(sp)
  LW s0, 288(sp)
  ADDW a0, a0, s0
  LW s0, 284(sp)
  ADDW a0, a0, s0
  LW s0, 320(sp)
  ADDW a0, a0, s0
  LW s0, 304(sp)
  ADDW a0, a0, s0
  LW s0, 508(sp)
  ADDW a0, a0, s0
  LW s0, 336(sp)
  ADDW a0, a0, s0
  LW s0, 1244(sp)
  ADDW a0, a0, s0
  LW s0, 504(sp)
  ADDW a0, a0, s0
  LW s0, 1084(sp)
  ADDW a0, a0, s0
  ADDI t6, sp, 280
  LW s0, 1996(t6)
  ADDW a0, a0, s0
  LUI s0, 1
  ADDIW s0, s0, -872
  ADDI t6, sp, 280
  ADD s0, t6, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  LUI s0, 6
  ADDIW s0, s0, 1824
  ADDI t6, sp, 280
  ADD s0, t6, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  LW s0, 788(sp)
  ADDW a0, a0, s0
  LW s0, 404(sp)
  ADDW a0, a0, s0
  LUI s0, 60
  ADDIW s0, s0, 912
  ADDI t6, sp, 280
  ADD s0, t6, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  LUI s0, 4
  ADDIW s0, s0, -428
  ADDI t6, sp, 280
  ADD s0, t6, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  LUI s0, 202
  ADDIW s0, s0, 972
  ADDI t6, sp, 280
  ADD s0, t6, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  LUI s0, 69
  ADDIW s0, s0, -1024
  ADDI ra, sp, 280
  ADD s0, ra, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  CALL putint
  ADD a0, zero, zero
  LD ra, 160(sp)
  LD s0, 168(sp)
  LD s1, 176(sp)
  LD s2, 184(sp)
  LD s3, 192(sp)
  LD s4, 200(sp)
  LD s5, 216(sp)
  LD s6, 224(sp)
  LD s7, 232(sp)
  LD s8, 240(sp)
  LD s9, 248(sp)
  LD s10, 256(sp)
  LD s11, 264(sp)
  LUI t0, 512
  ADDIW t0, t0, 416
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb39:
  JAL zero, bb3
bb40:
  JAL zero, bb4
bb41:
  JAL zero, bb5
bb42:
  JAL zero, bb6
bb43:
  JAL zero, bb7
bb44:
  JAL zero, bb8
bb45:
  JAL zero, bb9
bb46:
  JAL zero, bb10
bb47:
  LW a0, 64(sp)
  SW a0, 64(sp)
  JAL zero, bb11
bb48:
  JAL zero, bb12
bb49:
  JAL zero, bb13
bb50:
  LW a0, 56(sp)
  SW a0, 56(sp)
  JAL zero, bb14
bb51:
  JAL zero, bb15
bb52:
  JAL zero, bb16
bb53:
  JAL zero, bb17
bb54:
  JAL zero, bb18
bb55:
  LW a0, 132(sp)
  SW a0, 128(sp)
  JAL zero, bb19
bb56:
  LW s0, 136(sp)
  SW s0, 124(sp)
  JAL zero, bb20
bb57:
  JAL zero, bb1
