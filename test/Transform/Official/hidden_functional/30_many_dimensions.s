.global main
.section .bss
.section .data
.section .text
main:
  LUI t0, 1048064
  ADDIW t0, t0, -272
  ADD sp, sp, t0
  SD ra, 112(sp)
  SD s0, 120(sp)
  SD s1, 128(sp)
  SD s2, 136(sp)
  SD s3, 144(sp)
  SD s4, 152(sp)
  SD s5, 160(sp)
  SD s6, 168(sp)
  SD s7, 176(sp)
  SD s8, 184(sp)
  SD s9, 192(sp)
  SD s10, 200(sp)
  SD s11, 208(sp)
  LUI a0, 128
  ADDIW a0, a0, 0
  ADD a0, zero, a0
  # implict jump to bb1
bb1:
  ADDI s0, zero, 1
  SUBW a0, a0, s0
  SLLIW s0, a0, 2
  ADDI t6, sp, 264
  ADD s0, t6, s0
  ADDI s1, zero, 0
  SW s1, 0(s0)
  BNE a0, zero, bb57
  # implict jump to bb2
bb2:
  ADD s1, zero, zero
  ADD s0, zero, zero
  # implict jump to bb3
bb3:
  SW s0, 48(sp)
  ADD a0, zero, zero
  # implict jump to bb4
bb4:
  SW a0, 44(sp)
  ADD a0, zero, zero
  # implict jump to bb5
bb5:
  SW a0, 4(sp)
  ADD a0, zero, zero
  # implict jump to bb6
bb6:
  SW a0, 36(sp)
  ADD s0, zero, zero
  # implict jump to bb7
bb7:
  SW s0, 32(sp)
  ADD s0, zero, zero
  # implict jump to bb8
bb8:
  SW s0, 28(sp)
  ADD s8, zero, zero
  # implict jump to bb9
bb9:
  ADD s9, zero, zero
  # implict jump to bb10
bb10:
  ADD s10, zero, zero
  # implict jump to bb11
bb11:
  ADD a0, zero, zero
  # implict jump to bb12
bb12:
  SW a0, 56(sp)
  ADD s7, zero, zero
  # implict jump to bb13
bb13:
  ADD a0, zero, zero
  # implict jump to bb14
bb14:
  SW a0, 52(sp)
  ADD s3, zero, zero
  # implict jump to bb15
bb15:
  ADD s2, zero, zero
  # implict jump to bb16
bb16:
  ADD s4, zero, zero
  # implict jump to bb17
bb17:
  ADD s5, zero, zero
  # implict jump to bb18
bb18:
  ADD s6, zero, zero
  # implict jump to bb19
bb19:
  ADD a0, zero, zero
  # implict jump to bb20
bb20:
  SW a0, 24(sp)
  LW a0, 48(sp)
  SLLIW s0, a0, 20
  ADDI a0, sp, 264
  ADD s0, a0, s0
  LW a0, 44(sp)
  SLLIW a0, a0, 19
  SW a0, 20(sp)
  LW a0, 20(sp)
  ADD s0, s0, a0
  LW a0, 4(sp)
  SLLIW a0, a0, 18
  SW a0, 16(sp)
  LW a0, 16(sp)
  ADD a0, s0, a0
  SD a0, 216(sp)
  LW a0, 36(sp)
  SLLIW s11, a0, 17
  LD a0, 216(sp)
  ADD s0, a0, s11
  LW a0, 32(sp)
  SLLIW a0, a0, 16
  SW a0, 8(sp)
  LW a0, 8(sp)
  ADD a0, s0, a0
  SD a0, 224(sp)
  LW a0, 28(sp)
  SLLIW s11, a0, 15
  LD a0, 224(sp)
  ADD s0, a0, s11
  SLLIW a0, s8, 14
  SW a0, 40(sp)
  LW a0, 40(sp)
  ADD a0, s0, a0
  SD a0, 232(sp)
  SLLIW s11, s9, 13
  LD a0, 232(sp)
  ADD s0, a0, s11
  SLLIW a0, s10, 12
  SW a0, 76(sp)
  LW a0, 76(sp)
  ADD s0, s0, a0
  LW a0, 56(sp)
  SLLIW a0, a0, 11
  SW a0, 80(sp)
  LW a0, 80(sp)
  ADD s0, s0, a0
  SLLIW a0, s7, 10
  SW a0, 84(sp)
  LW a0, 84(sp)
  ADD s0, s0, a0
  LW a0, 52(sp)
  SLLIW a0, a0, 9
  SW a0, 88(sp)
  LW a0, 88(sp)
  ADD s0, s0, a0
  SLLIW a0, s3, 8
  SW a0, 92(sp)
  LW a0, 92(sp)
  ADD s0, s0, a0
  SLLIW a0, s2, 7
  SW a0, 96(sp)
  LW a0, 96(sp)
  ADD a0, s0, a0
  SD a0, 240(sp)
  SLLIW s11, s4, 6
  LD a0, 240(sp)
  ADD s0, a0, s11
  SLLIW a0, s5, 5
  SW a0, 104(sp)
  LW a0, 104(sp)
  ADD a0, s0, a0
  SD a0, 248(sp)
  SLLIW s11, s6, 4
  LD a0, 248(sp)
  ADD a0, a0, s11
  SD a0, 256(sp)
  LW a0, 24(sp)
  SLLIW s11, a0, 3
  LD a0, 256(sp)
  ADD s0, a0, s11
  SW s1, 0(s0)
  ADDIW a0, s1, 1
  SW a0, 108(sp)
  LW a0, 108(sp)
  SW a0, 4(s0)
  ADDIW s1, s1, 2
  LW a0, 24(sp)
  ADDIW a0, a0, 1
  SLTI s0, a0, 2
  SB s0, 0(sp)
  LB s0, 0(sp)
  BNE s0, zero, bb56
  # implict jump to bb21
bb21:
  ADDIW s6, s6, 1
  SLTI a0, s6, 2
  BNE a0, zero, bb55
  # implict jump to bb22
bb22:
  ADDIW s5, s5, 1
  SLTI a0, s5, 2
  BNE a0, zero, bb54
  # implict jump to bb23
bb23:
  ADDIW s4, s4, 1
  SLTI a0, s4, 2
  BNE a0, zero, bb53
  # implict jump to bb24
bb24:
  ADDIW s2, s2, 1
  SLTI a0, s2, 2
  BNE a0, zero, bb52
  # implict jump to bb25
bb25:
  ADDIW s3, s3, 1
  SLTI a0, s3, 2
  BNE a0, zero, bb51
  # implict jump to bb26
bb26:
  LW a0, 52(sp)
  ADDIW a0, a0, 1
  SLTI s0, a0, 2
  BNE s0, zero, bb50
  # implict jump to bb27
bb27:
  ADDIW s7, s7, 1
  SLTI a0, s7, 2
  BNE a0, zero, bb49
  # implict jump to bb28
bb28:
  LW a0, 56(sp)
  ADDIW a0, a0, 1
  SLTI s0, a0, 2
  BNE s0, zero, bb48
  # implict jump to bb29
bb29:
  ADDIW s10, s10, 1
  SLTI s0, s10, 2
  BNE s0, zero, bb47
  # implict jump to bb30
bb30:
  ADDIW s9, s9, 1
  SLTI a0, s9, 2
  BNE a0, zero, bb46
  # implict jump to bb31
bb31:
  ADDIW s8, s8, 1
  SLTI a0, s8, 2
  BNE a0, zero, bb45
  # implict jump to bb32
bb32:
  LW a0, 28(sp)
  ADDIW s0, a0, 1
  SLTI a0, s0, 2
  BNE a0, zero, bb44
  # implict jump to bb33
bb33:
  LW a0, 32(sp)
  ADDIW s0, a0, 1
  SLTI a0, s0, 2
  BNE a0, zero, bb43
  # implict jump to bb34
bb34:
  LW a0, 36(sp)
  ADDIW a0, a0, 1
  SLTI s0, a0, 2
  BNE s0, zero, bb42
  # implict jump to bb35
bb35:
  LW a0, 4(sp)
  ADDIW a0, a0, 1
  SLTI s0, a0, 2
  BNE s0, zero, bb41
  # implict jump to bb36
bb36:
  LW a0, 44(sp)
  ADDIW a0, a0, 1
  SLTI s0, a0, 2
  BNE s0, zero, bb40
  # implict jump to bb37
bb37:
  LW a0, 48(sp)
  ADDIW s0, a0, 1
  SLTI a0, s0, 2
  BNE a0, zero, bb39
  # implict jump to bb38
bb38:
  LW a0, 264(sp)
  LW s0, 272(sp)
  ADDW a0, a0, s0
  LW s0, 268(sp)
  ADDW a0, a0, s0
  LW s0, 304(sp)
  ADDW a0, a0, s0
  LW s0, 288(sp)
  ADDW a0, a0, s0
  LW s0, 492(sp)
  ADDW a0, a0, s0
  LW s0, 320(sp)
  ADDW a0, a0, s0
  LW s0, 1228(sp)
  ADDW a0, a0, s0
  LW s0, 488(sp)
  ADDW a0, a0, s0
  LW s0, 1068(sp)
  ADDW a0, a0, s0
  ADDI t6, sp, 264
  LW s0, 1996(t6)
  ADDW a0, a0, s0
  LUI s0, 1
  ADDIW s0, s0, -872
  ADDI t6, sp, 264
  ADD s0, t6, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  LUI s0, 6
  ADDIW s0, s0, 1824
  ADDI t6, sp, 264
  ADD s0, t6, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  LW s0, 772(sp)
  ADDW a0, a0, s0
  LW s0, 388(sp)
  ADDW a0, a0, s0
  LUI s0, 60
  ADDIW s0, s0, 912
  ADDI t6, sp, 264
  ADD s0, t6, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  LUI s0, 4
  ADDIW s0, s0, -428
  ADDI t6, sp, 264
  ADD s0, t6, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  LUI s0, 202
  ADDIW s0, s0, 972
  ADDI t6, sp, 264
  ADD s0, t6, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  LUI s0, 69
  ADDIW s0, s0, -1024
  ADDI ra, sp, 264
  ADD s0, ra, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  CALL putint
  ADD a0, zero, zero
  LD ra, 112(sp)
  LD s0, 120(sp)
  LD s1, 128(sp)
  LD s2, 136(sp)
  LD s3, 144(sp)
  LD s4, 152(sp)
  LD s5, 160(sp)
  LD s6, 168(sp)
  LD s7, 176(sp)
  LD s8, 184(sp)
  LD s9, 192(sp)
  LD s10, 200(sp)
  LD s11, 208(sp)
  LUI t0, 512
  ADDIW t0, t0, 272
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
  JAL zero, bb11
bb48:
  JAL zero, bb12
bb49:
  JAL zero, bb13
bb50:
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
  JAL zero, bb19
bb56:
  JAL zero, bb20
bb57:
  JAL zero, bb1
