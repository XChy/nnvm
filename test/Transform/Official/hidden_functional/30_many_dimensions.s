.global main
.section .bss
.section .data
.section .text
main:
  LUI t0, 1048064
  ADDIW t0, t0, -304
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
  SD s10, 208(sp)
  SD s11, 216(sp)
  LUI a0, 128
  ADDIW a0, a0, 0
  ADD a0, zero, a0
  # implict jump to bb1
bb1:
  ADDI s0, zero, 1
  SUBW a0, a0, s0
  SLLIW s0, a0, 2
  ADDI t6, sp, 304
  ADD s0, t6, s0
  ADDI s1, zero, 0
  SW s1, 0(s0)
  BNE a0, zero, bb57
  # implict jump to bb2
bb2:
  ADD s4, zero, zero
  ADD s0, zero, zero
  # implict jump to bb3
bb3:
  SW s0, 92(sp)
  ADD s1, zero, zero
  # implict jump to bb4
bb4:
  SW s1, 88(sp)
  ADD s3, zero, zero
  # implict jump to bb5
bb5:
  SW s3, 84(sp)
  ADD s3, zero, zero
  # implict jump to bb6
bb6:
  SW s3, 80(sp)
  ADD s2, zero, zero
  # implict jump to bb7
bb7:
  SW s2, 72(sp)
  ADD s3, zero, zero
  # implict jump to bb8
bb8:
  SW s3, 68(sp)
  ADD s11, zero, zero
  # implict jump to bb9
bb9:
  ADD s10, zero, zero
  # implict jump to bb10
bb10:
  ADD s9, zero, zero
  # implict jump to bb11
bb11:
  ADD s3, zero, zero
  # implict jump to bb12
bb12:
  ADD s5, s3, zero
  ADD s3, zero, zero
  # implict jump to bb13
bb13:
  ADD s6, s3, zero
  ADD s3, zero, zero
  # implict jump to bb14
bb14:
  ADD s7, s3, zero
  ADD s3, zero, zero
  # implict jump to bb15
bb15:
  ADD s8, s3, zero
  ADD a0, zero, zero
  # implict jump to bb16
bb16:
  SW a0, 52(sp)
  ADD a0, zero, zero
  # implict jump to bb17
bb17:
  SW a0, 48(sp)
  ADD a0, zero, zero
  # implict jump to bb18
bb18:
  SW a0, 4(sp)
  ADD a0, zero, zero
  # implict jump to bb19
bb19:
  SW a0, 32(sp)
  ADD s0, zero, zero
  # implict jump to bb20
bb20:
  SW s0, 76(sp)
  SW s4, 100(sp)
  LW a0, 92(sp)
  SLLIW s4, a0, 20
  ADDI a0, sp, 304
  ADD a0, a0, s4
  SD a0, 224(sp)
  LW a0, 88(sp)
  SLLIW s4, a0, 19
  LD a0, 224(sp)
  ADD a0, a0, s4
  SD a0, 232(sp)
  LW a0, 84(sp)
  SLLIW s4, a0, 18
  LD a0, 232(sp)
  ADD s4, a0, s4
  LW a0, 80(sp)
  SLLIW a0, a0, 17
  SW a0, 24(sp)
  LW a0, 24(sp)
  ADD a0, s4, a0
  SD a0, 200(sp)
  LW a0, 72(sp)
  SLLIW s4, a0, 16
  LD a0, 200(sp)
  ADD s4, a0, s4
  LW a0, 68(sp)
  SLLIW a0, a0, 15
  SW a0, 20(sp)
  LW a0, 20(sp)
  ADD s4, s4, a0
  SLLIW a0, s11, 14
  SW a0, 16(sp)
  LW a0, 16(sp)
  ADD a0, s4, a0
  SD a0, 240(sp)
  SLLIW s4, s10, 13
  LD a0, 240(sp)
  ADD a0, a0, s4
  SD a0, 248(sp)
  SLLIW s4, s9, 12
  LD a0, 248(sp)
  ADD a0, a0, s4
  SD a0, 256(sp)
  SLLIW s4, s5, 11
  LD a0, 256(sp)
  ADD a0, a0, s4
  SD a0, 264(sp)
  SLLIW s4, s6, 10
  LD a0, 264(sp)
  ADD s4, a0, s4
  SLLIW a0, s7, 9
  SW a0, 40(sp)
  LW a0, 40(sp)
  ADD a0, s4, a0
  SD a0, 272(sp)
  SLLIW s4, s8, 8
  LD a0, 272(sp)
  ADD s4, a0, s4
  LW a0, 52(sp)
  SLLIW a0, a0, 7
  SW a0, 12(sp)
  LW a0, 12(sp)
  ADD s4, s4, a0
  LW a0, 48(sp)
  SLLIW a0, a0, 6
  SW a0, 8(sp)
  LW a0, 8(sp)
  ADD a0, s4, a0
  SD a0, 280(sp)
  LW a0, 4(sp)
  SLLIW s4, a0, 5
  LD a0, 280(sp)
  ADD a0, a0, s4
  SD a0, 288(sp)
  LW a0, 32(sp)
  SLLIW s4, a0, 4
  LD a0, 288(sp)
  ADD s4, a0, s4
  LW a0, 76(sp)
  SLLIW a0, a0, 3
  SW a0, 96(sp)
  LW a0, 96(sp)
  ADD a0, s4, a0
  SD a0, 296(sp)
  LW a0, 100(sp)
  LD s0, 296(sp)
  SW a0, 0(s0)
  LW a0, 100(sp)
  ADDIW s4, a0, 1
  LD a0, 296(sp)
  SW s4, 4(a0)
  LW a0, 100(sp)
  ADDIW s4, a0, 2
  LW a0, 76(sp)
  ADDIW s0, a0, 1
  SLTI a0, s0, 2
  SB a0, 0(sp)
  LB a0, 0(sp)
  BNE a0, zero, bb56
  # implict jump to bb21
bb21:
  LW a0, 32(sp)
  ADDIW a0, a0, 1
  SW a0, 104(sp)
  LW a0, 104(sp)
  SLTI a0, a0, 2
  BNE a0, zero, bb55
  # implict jump to bb22
bb22:
  LW a0, 4(sp)
  ADDIW a0, a0, 1
  SW a0, 28(sp)
  LW a0, 28(sp)
  SLTI a0, a0, 2
  BNE a0, zero, bb54
  # implict jump to bb23
bb23:
  LW a0, 48(sp)
  ADDIW a0, a0, 1
  SW a0, 36(sp)
  LW a0, 36(sp)
  SLTI s3, a0, 2
  BNE s3, zero, bb53
  # implict jump to bb24
bb24:
  LW a0, 52(sp)
  ADDIW a0, a0, 1
  SW a0, 44(sp)
  LW a0, 44(sp)
  SLTI s3, a0, 2
  BNE s3, zero, bb52
  # implict jump to bb25
bb25:
  ADDIW s3, s8, 1
  SLTI a0, s3, 2
  BNE a0, zero, bb51
  # implict jump to bb26
bb26:
  ADDIW s3, s7, 1
  SLTI a0, s3, 2
  BNE a0, zero, bb50
  # implict jump to bb27
bb27:
  ADDIW s3, s6, 1
  SLTI s6, s3, 2
  BNE s6, zero, bb49
  # implict jump to bb28
bb28:
  ADDIW s3, s5, 1
  SLTI a0, s3, 2
  BNE a0, zero, bb48
  # implict jump to bb29
bb29:
  ADDIW s9, s9, 1
  SLTI a0, s9, 2
  BNE a0, zero, bb47
  # implict jump to bb30
bb30:
  ADDIW s10, s10, 1
  SLTI a0, s10, 2
  BNE a0, zero, bb46
  # implict jump to bb31
bb31:
  ADDIW s11, s11, 1
  SLTI s3, s11, 2
  BNE s3, zero, bb45
  # implict jump to bb32
bb32:
  LW a0, 68(sp)
  ADDIW s3, a0, 1
  SLTI a0, s3, 2
  BNE a0, zero, bb44
  # implict jump to bb33
bb33:
  LW a0, 72(sp)
  ADDIW s2, a0, 1
  SLTI a0, s2, 2
  BNE a0, zero, bb43
  # implict jump to bb34
bb34:
  LW a0, 80(sp)
  ADDIW s3, a0, 1
  SLTI s2, s3, 2
  BNE s2, zero, bb42
  # implict jump to bb35
bb35:
  LW a0, 84(sp)
  ADDIW s3, a0, 1
  SLTI s2, s3, 2
  BNE s2, zero, bb41
  # implict jump to bb36
bb36:
  LW a0, 88(sp)
  ADDIW s1, a0, 1
  SLTI s2, s1, 2
  BNE s2, zero, bb40
  # implict jump to bb37
bb37:
  LW a0, 92(sp)
  ADDIW s0, a0, 1
  SLTI a0, s0, 2
  BNE a0, zero, bb39
  # implict jump to bb38
bb38:
  LW a0, 304(sp)
  LW s0, 312(sp)
  ADDW a0, a0, s0
  LW s0, 308(sp)
  ADDW a0, a0, s0
  LW s0, 344(sp)
  ADDW a0, a0, s0
  LW s0, 328(sp)
  ADDW a0, a0, s0
  LW s0, 532(sp)
  ADDW a0, a0, s0
  LW s0, 360(sp)
  ADDW a0, a0, s0
  LW s0, 1268(sp)
  ADDW a0, a0, s0
  LW s0, 528(sp)
  ADDW a0, a0, s0
  LW s0, 1108(sp)
  ADDW a0, a0, s0
  ADDI t6, sp, 304
  LW s0, 1996(t6)
  ADDW a0, a0, s0
  LUI s0, 1
  ADDIW s0, s0, -872
  ADDI t6, sp, 304
  ADD s0, t6, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  LUI s0, 6
  ADDIW s0, s0, 1824
  ADDI t6, sp, 304
  ADD s0, t6, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  LW s0, 812(sp)
  ADDW a0, a0, s0
  LW s0, 428(sp)
  ADDW a0, a0, s0
  LUI s0, 60
  ADDIW s0, s0, 912
  ADDI t6, sp, 304
  ADD s0, t6, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  LUI s0, 4
  ADDIW s0, s0, -428
  ADDI t6, sp, 304
  ADD s0, t6, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  LUI s0, 202
  ADDIW s0, s0, 972
  ADDI t6, sp, 304
  ADD s0, t6, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  LUI s0, 69
  ADDIW s0, s0, -1024
  ADDI ra, sp, 304
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
  LD s10, 208(sp)
  LD s11, 216(sp)
  LUI t0, 512
  ADDIW t0, t0, 304
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
  LW a0, 44(sp)
  JAL zero, bb16
bb53:
  LW a0, 36(sp)
  JAL zero, bb17
bb54:
  LW a0, 28(sp)
  JAL zero, bb18
bb55:
  LW a0, 104(sp)
  JAL zero, bb19
bb56:
  JAL zero, bb20
bb57:
  JAL zero, bb1
