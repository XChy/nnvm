.global main
.section .bss
.section .data
.section .text
main:
  LUI t0, 1048064
  ADDIW t0, t0, -304
  ADD sp, sp, t0
  SD ra, 128(sp)
  SD s0, 136(sp)
  SD s1, 144(sp)
  SD s2, 152(sp)
  SD s3, 160(sp)
  SD s4, 168(sp)
  SD s5, 176(sp)
  SD s6, 184(sp)
  SD s7, 192(sp)
  SD s8, 200(sp)
  SD s9, 208(sp)
  SD s10, 216(sp)
  SD s11, 224(sp)
  LUI a0, 128
  ADDIW a0, a0, 0
  ADD a0, zero, a0
  # implict jump to bb1
bb1:
  ADDI s0, zero, 1
  SUBW a0, a0, s0
  SLLIW s0, a0, 2
  ADDI t5, sp, 304
  ADD s0, t5, s0
  ADDI s1, zero, 0
  SW s1, 0(s0)
  BNE a0, zero, bb60
  # implict jump to bb2
bb2:
  ADD s1, zero, zero
  ADD a0, zero, zero
  # implict jump to bb3
bb3:
  SW a0, 96(sp)
  ADD a0, s1, zero
  ADD s2, a0, zero
  ADD a0, zero, zero
  # implict jump to bb4
bb4:
  ADD s1, a0, zero
  ADD a0, s2, zero
  ADD s3, a0, zero
  ADD a0, zero, zero
  # implict jump to bb5
bb5:
  ADD s2, a0, zero
  ADD a0, s3, zero
  ADD s4, a0, zero
  ADD a0, zero, zero
  # implict jump to bb6
bb6:
  SW a0, 44(sp)
  ADD a0, s4, zero
  ADD s5, a0, zero
  ADD a0, zero, zero
  # implict jump to bb7
bb7:
  SW a0, 52(sp)
  ADD a0, s5, zero
  ADD s6, a0, zero
  ADD a0, zero, zero
  # implict jump to bb8
bb8:
  ADD s5, a0, zero
  ADD a0, s6, zero
  ADD s7, a0, zero
  ADD a0, zero, zero
  # implict jump to bb9
bb9:
  ADD s6, a0, zero
  ADD a0, s7, zero
  ADD s7, a0, zero
  ADD a0, zero, zero
  # implict jump to bb10
bb10:
  SW a0, 48(sp)
  ADD a0, s7, zero
  ADD s7, a0, zero
  ADD a0, zero, zero
  # implict jump to bb11
bb11:
  SW a0, 124(sp)
  ADD a0, s7, zero
  ADD s8, a0, zero
  ADD a0, zero, zero
  # implict jump to bb12
bb12:
  ADD s7, a0, zero
  ADD a0, s8, zero
  ADD s9, a0, zero
  ADD a0, zero, zero
  # implict jump to bb13
bb13:
  ADD s8, a0, zero
  ADD a0, s9, zero
  ADD s10, a0, zero
  ADD a0, zero, zero
  # implict jump to bb14
bb14:
  ADD s9, a0, zero
  ADD a0, s10, zero
  ADD s10, a0, zero
  ADD a0, zero, zero
  # implict jump to bb15
bb15:
  SW a0, 40(sp)
  ADD a0, s10, zero
  ADD s10, a0, zero
  ADD a0, zero, zero
  # implict jump to bb16
bb16:
  SW a0, 4(sp)
  ADD a0, s10, zero
  ADD s10, a0, zero
  ADD a0, zero, zero
  # implict jump to bb17
bb17:
  SW a0, 120(sp)
  ADD a0, s10, zero
  ADD s11, a0, zero
  ADD a0, zero, zero
  # implict jump to bb18
bb18:
  ADD s10, a0, zero
  ADD a0, s11, zero
  ADD s11, a0, zero
  ADD a0, zero, zero
  # implict jump to bb19
bb19:
  SW a0, 112(sp)
  ADD a0, s11, zero
  ADD s11, a0, zero
  ADD a0, zero, zero
  # implict jump to bb20
bb20:
  SW a0, 28(sp)
  ADD a0, s11, zero
  SW a0, 88(sp)
  LW a0, 96(sp)
  SLLIW a0, a0, 20
  ADDI t5, sp, 304
  ADD a0, t5, a0
  SLLIW s0, s1, 19
  SW s0, 32(sp)
  LW s0, 32(sp)
  ADD a0, a0, s0
  SLLIW s0, s2, 18
  SW s0, 100(sp)
  LW s0, 100(sp)
  ADD a0, a0, s0
  SD a0, 264(sp)
  LW a0, 44(sp)
  SLLIW s11, a0, 17
  LD a0, 264(sp)
  ADD a0, a0, s11
  SD a0, 288(sp)
  LW a0, 52(sp)
  SLLIW s11, a0, 16
  LD a0, 288(sp)
  ADD a0, a0, s11
  SLLIW s0, s5, 15
  SW s0, 116(sp)
  LW s0, 116(sp)
  ADD a0, a0, s0
  SLLIW s0, s6, 14
  SW s0, 16(sp)
  LW s0, 16(sp)
  ADD a0, a0, s0
  SD a0, 240(sp)
  LW a0, 48(sp)
  SLLIW s11, a0, 13
  LD a0, 240(sp)
  ADD a0, a0, s11
  LW s0, 124(sp)
  SLLIW s0, s0, 12
  SW s0, 36(sp)
  LW s0, 36(sp)
  ADD a0, a0, s0
  SLLIW s0, s7, 11
  SW s0, 8(sp)
  LW s0, 8(sp)
  ADD a0, a0, s0
  SLLIW s0, s8, 10
  SW s0, 12(sp)
  LW s0, 12(sp)
  ADD a0, a0, s0
  SLLIW s0, s9, 9
  SW s0, 92(sp)
  LW s0, 92(sp)
  ADD a0, a0, s0
  SD a0, 272(sp)
  LW a0, 40(sp)
  SLLIW s11, a0, 8
  LD a0, 272(sp)
  ADD a0, a0, s11
  LW s0, 4(sp)
  SLLIW s0, s0, 7
  SW s0, 108(sp)
  LW s0, 108(sp)
  ADD a0, a0, s0
  SD a0, 256(sp)
  LW a0, 120(sp)
  SLLIW s11, a0, 6
  LD a0, 256(sp)
  ADD a0, a0, s11
  SD a0, 280(sp)
  SLLIW s11, s10, 5
  LD a0, 280(sp)
  ADD a0, a0, s11
  LW s0, 112(sp)
  SLLIW s0, s0, 4
  SW s0, 76(sp)
  LW s0, 76(sp)
  ADD a0, a0, s0
  SD a0, 296(sp)
  LW a0, 28(sp)
  SLLIW s11, a0, 3
  LD a0, 296(sp)
  ADD a0, a0, s11
  SD a0, 248(sp)
  LW a0, 88(sp)
  SW a0, 84(sp)
  ADD s11, zero, zero
  # implict jump to bb21
bb21:
  ADD a0, s11, zero
  SW a0, 20(sp)
  LW a0, 84(sp)
  SW a0, 64(sp)
  LW a0, 20(sp)
  SLLIW a0, a0, 2
  SW a0, 60(sp)
  LD a0, 248(sp)
  LW s0, 60(sp)
  ADD a0, a0, s0
  SD a0, 232(sp)
  LW a0, 64(sp)
  LD s0, 232(sp)
  SW a0, 0(s0)
  LW a0, 64(sp)
  ADDIW a0, a0, 1
  SW a0, 72(sp)
  LW a0, 20(sp)
  ADDIW s11, a0, 1
  SLTI a0, s11, 2
  SB a0, 0(sp)
  LB a0, 0(sp)
  BNE a0, zero, bb59
  # implict jump to bb22
bb22:
  LW a0, 28(sp)
  ADDIW a0, a0, 1
  SLTI s11, a0, 2
  BNE s11, zero, bb58
  # implict jump to bb23
bb23:
  LW a0, 112(sp)
  ADDIW a0, a0, 1
  SLTI s11, a0, 2
  BNE s11, zero, bb57
  # implict jump to bb24
bb24:
  ADDIW a0, s10, 1
  SLTI s10, a0, 2
  BNE s10, zero, bb56
  # implict jump to bb25
bb25:
  LW a0, 120(sp)
  ADDIW a0, a0, 1
  SLTI s10, a0, 2
  BNE s10, zero, bb55
  # implict jump to bb26
bb26:
  LW a0, 4(sp)
  ADDIW a0, a0, 1
  SLTI s10, a0, 2
  BNE s10, zero, bb54
  # implict jump to bb27
bb27:
  LW a0, 40(sp)
  ADDIW a0, a0, 1
  SLTI s10, a0, 2
  BNE s10, zero, bb53
  # implict jump to bb28
bb28:
  ADDIW a0, s9, 1
  SLTI s9, a0, 2
  BNE s9, zero, bb52
  # implict jump to bb29
bb29:
  ADDIW a0, s8, 1
  SLTI s8, a0, 2
  BNE s8, zero, bb51
  # implict jump to bb30
bb30:
  ADDIW a0, s7, 1
  SLTI s7, a0, 2
  BNE s7, zero, bb50
  # implict jump to bb31
bb31:
  LW a0, 124(sp)
  ADDIW a0, a0, 1
  SLTI s7, a0, 2
  BNE s7, zero, bb49
  # implict jump to bb32
bb32:
  LW a0, 48(sp)
  ADDIW a0, a0, 1
  SLTI s7, a0, 2
  BNE s7, zero, bb48
  # implict jump to bb33
bb33:
  ADDIW a0, s6, 1
  SLTI s6, a0, 2
  BNE s6, zero, bb47
  # implict jump to bb34
bb34:
  ADDIW a0, s5, 1
  SLTI s5, a0, 2
  BNE s5, zero, bb46
  # implict jump to bb35
bb35:
  LW a0, 52(sp)
  ADDIW a0, a0, 1
  SLTI s4, a0, 2
  BNE s4, zero, bb45
  # implict jump to bb36
bb36:
  LW a0, 44(sp)
  ADDIW a0, a0, 1
  SLTI s3, a0, 2
  BNE s3, zero, bb44
  # implict jump to bb37
bb37:
  ADDIW a0, s2, 1
  SLTI s2, a0, 2
  BNE s2, zero, bb43
  # implict jump to bb38
bb38:
  ADDIW a0, s1, 1
  SLTI s1, a0, 2
  BNE s1, zero, bb42
  # implict jump to bb39
bb39:
  LW a0, 96(sp)
  ADDIW a0, a0, 1
  SLTI s0, a0, 2
  BNE s0, zero, bb41
  # implict jump to bb40
bb40:
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
  ADDI t5, sp, 304
  LW s0, 1996(t5)
  ADDW a0, a0, s0
  LUI s0, 1
  ADDIW s0, s0, -872
  ADDI t5, sp, 304
  ADD s0, t5, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  LUI s0, 6
  ADDIW s0, s0, 1824
  ADDI t5, sp, 304
  ADD s0, t5, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  LW s0, 812(sp)
  ADDW a0, a0, s0
  LW s0, 428(sp)
  ADDW a0, a0, s0
  LUI s0, 60
  ADDIW s0, s0, 912
  ADDI t5, sp, 304
  ADD s0, t5, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  LUI s0, 4
  ADDIW s0, s0, -428
  ADDI t5, sp, 304
  ADD s0, t5, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  LUI s0, 202
  ADDIW s0, s0, 972
  ADDI t5, sp, 304
  ADD s0, t5, s0
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
  LD ra, 128(sp)
  LD s0, 136(sp)
  LD s1, 144(sp)
  LD s2, 152(sp)
  LD s3, 160(sp)
  LD s4, 168(sp)
  LD s5, 176(sp)
  LD s6, 184(sp)
  LD s7, 192(sp)
  LD s8, 200(sp)
  LD s9, 208(sp)
  LD s10, 216(sp)
  LD s11, 224(sp)
  LUI t0, 512
  ADDIW t0, t0, 304
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb41:
  LW s0, 72(sp)
  ADD s1, s0, zero
  JAL zero, bb3
bb42:
  LW s0, 72(sp)
  ADD s2, s0, zero
  JAL zero, bb4
bb43:
  LW s0, 72(sp)
  ADD s3, s0, zero
  JAL zero, bb5
bb44:
  LW s0, 72(sp)
  ADD s4, s0, zero
  JAL zero, bb6
bb45:
  LW s0, 72(sp)
  ADD s5, s0, zero
  JAL zero, bb7
bb46:
  LW s0, 72(sp)
  ADD s6, s0, zero
  JAL zero, bb8
bb47:
  LW s0, 72(sp)
  ADD s7, s0, zero
  JAL zero, bb9
bb48:
  LW s0, 72(sp)
  ADD s7, s0, zero
  JAL zero, bb10
bb49:
  LW s0, 72(sp)
  ADD s7, s0, zero
  JAL zero, bb11
bb50:
  LW s0, 72(sp)
  ADD s8, s0, zero
  JAL zero, bb12
bb51:
  LW s0, 72(sp)
  ADD s9, s0, zero
  JAL zero, bb13
bb52:
  LW s0, 72(sp)
  ADD s10, s0, zero
  JAL zero, bb14
bb53:
  LW s0, 72(sp)
  ADD s10, s0, zero
  JAL zero, bb15
bb54:
  LW s0, 72(sp)
  ADD s10, s0, zero
  JAL zero, bb16
bb55:
  LW s0, 72(sp)
  ADD s10, s0, zero
  JAL zero, bb17
bb56:
  LW s0, 72(sp)
  ADD s11, s0, zero
  JAL zero, bb18
bb57:
  LW s0, 72(sp)
  ADD s11, s0, zero
  JAL zero, bb19
bb58:
  LW s0, 72(sp)
  ADD s11, s0, zero
  JAL zero, bb20
bb59:
  LW a0, 72(sp)
  SW a0, 84(sp)
  JAL zero, bb21
bb60:
  JAL zero, bb1
