.global main
.section .bss
.section .data
.section .text
main:
  LUI t0, 1048064
  ADDIW t0, t0, -288
  ADD sp, sp, t0
  SD ra, 96(sp)
  SD s0, 104(sp)
  SD s1, 112(sp)
  SD s2, 120(sp)
  SD s4, 128(sp)
  SD s5, 136(sp)
  SD s6, 144(sp)
  SD s7, 152(sp)
  SD s8, 160(sp)
  SD s9, 168(sp)
  SD s10, 176(sp)
  SD s11, 184(sp)
  LUI a0, 128
  ADDIW a0, a0, 0
  ADD a0, zero, a0
  # implict jump to bb1
bb1:
  ADDI s0, zero, 1
  SUBW a0, a0, s0
  SLLIW s0, a0, 2
  ADDI t6, sp, 288
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
  SW s0, 48(sp)
  ADD s1, zero, zero
  # implict jump to bb4
bb4:
  SW s1, 84(sp)
  ADD a0, zero, zero
  # implict jump to bb5
bb5:
  SW a0, 80(sp)
  ADD s1, zero, zero
  # implict jump to bb6
bb6:
  ADD s5, s1, zero
  ADD a0, zero, zero
  # implict jump to bb7
bb7:
  SW a0, 76(sp)
  ADD s2, zero, zero
  # implict jump to bb8
bb8:
  SW s2, 72(sp)
  ADD s6, zero, zero
  # implict jump to bb9
bb9:
  SW s6, 68(sp)
  ADD a0, zero, zero
  # implict jump to bb10
bb10:
  ADD s6, a0, zero
  ADD a0, zero, zero
  # implict jump to bb11
bb11:
  ADD s7, a0, zero
  ADD s11, zero, zero
  # implict jump to bb12
bb12:
  ADD s8, zero, zero
  # implict jump to bb13
bb13:
  ADD s10, zero, zero
  # implict jump to bb14
bb14:
  ADD a0, zero, zero
  SW a0, 12(sp)
  # implict jump to bb15
bb15:
  LW a0, 12(sp)
  SW a0, 12(sp)
  ADD a0, zero, zero
  # implict jump to bb16
bb16:
  SW a0, 88(sp)
  ADD a0, zero, zero
  # implict jump to bb17
bb17:
  SW a0, 4(sp)
  ADD a0, zero, zero
  # implict jump to bb18
bb18:
  SW a0, 32(sp)
  ADD a0, zero, zero
  # implict jump to bb19
bb19:
  SW a0, 28(sp)
  ADD a0, zero, zero
  # implict jump to bb20
bb20:
  SW a0, 60(sp)
  SW s4, 64(sp)
  LW a0, 48(sp)
  SLLIW s4, a0, 20
  ADDI a0, sp, 288
  ADD a0, a0, s4
  SD a0, 192(sp)
  LW a0, 84(sp)
  SLLIW s4, a0, 19
  LD a0, 192(sp)
  ADD a0, a0, s4
  SD a0, 200(sp)
  LW a0, 80(sp)
  SLLIW s4, a0, 18
  LD a0, 200(sp)
  ADD a0, a0, s4
  SD a0, 208(sp)
  SLLIW s4, s5, 17
  LD a0, 208(sp)
  ADD s4, a0, s4
  LW a0, 76(sp)
  SLLIW a0, a0, 16
  SW a0, 16(sp)
  LW a0, 16(sp)
  ADD s4, s4, a0
  LW a0, 72(sp)
  SLLIW a0, a0, 15
  SW a0, 20(sp)
  LW a0, 20(sp)
  ADD a0, s4, a0
  SD a0, 216(sp)
  LW a0, 68(sp)
  SLLIW s4, a0, 14
  LD a0, 216(sp)
  ADD a0, a0, s4
  SD a0, 224(sp)
  SLLIW s4, s6, 13
  LD a0, 224(sp)
  ADD a0, a0, s4
  SD a0, 232(sp)
  SLLIW s4, s7, 12
  LD a0, 232(sp)
  ADD a0, a0, s4
  SD a0, 240(sp)
  SLLIW s4, s11, 11
  LD a0, 240(sp)
  ADD s4, a0, s4
  SLLIW a0, s8, 10
  SW a0, 24(sp)
  LW a0, 24(sp)
  ADD a0, s4, a0
  SD a0, 248(sp)
  SLLIW s4, s10, 9
  LD a0, 248(sp)
  ADD a0, a0, s4
  SD a0, 256(sp)
  LW a0, 12(sp)
  SLLIW s4, a0, 8
  LD a0, 256(sp)
  ADD a0, a0, s4
  SD a0, 264(sp)
  LW a0, 88(sp)
  SLLIW s4, a0, 7
  LD a0, 264(sp)
  ADD s4, a0, s4
  LW a0, 4(sp)
  SLLIW a0, a0, 6
  SW a0, 36(sp)
  LW a0, 36(sp)
  ADD a0, s4, a0
  SD a0, 272(sp)
  LW a0, 32(sp)
  SLLIW s4, a0, 5
  LD a0, 272(sp)
  ADD s4, a0, s4
  LW a0, 28(sp)
  SLLIW a0, a0, 4
  SW a0, 40(sp)
  LW a0, 40(sp)
  ADD s4, s4, a0
  LW a0, 60(sp)
  SLLIW a0, a0, 3
  SW a0, 44(sp)
  LW a0, 44(sp)
  ADD a0, s4, a0
  SD a0, 280(sp)
  LW a0, 64(sp)
  LD s0, 280(sp)
  SW a0, 0(s0)
  LW a0, 64(sp)
  ADDIW s4, a0, 1
  LD a0, 280(sp)
  SW s4, 4(a0)
  LW a0, 64(sp)
  ADDIW s4, a0, 2
  LW a0, 60(sp)
  ADDIW a0, a0, 1
  SLTI s0, a0, 2
  SB s0, 0(sp)
  LB s0, 0(sp)
  BNE s0, zero, bb56
  # implict jump to bb21
bb21:
  LW a0, 28(sp)
  ADDIW a0, a0, 1
  SLTI s9, a0, 2
  BNE s9, zero, bb55
  # implict jump to bb22
bb22:
  LW a0, 32(sp)
  ADDIW a0, a0, 1
  SLTI s9, a0, 2
  BNE s9, zero, bb54
  # implict jump to bb23
bb23:
  LW a0, 4(sp)
  ADDIW a0, a0, 1
  SLTI s9, a0, 2
  BNE s9, zero, bb53
  # implict jump to bb24
bb24:
  LW a0, 88(sp)
  ADDIW a0, a0, 1
  SLTI s9, a0, 2
  BNE s9, zero, bb52
  # implict jump to bb25
bb25:
  LW a0, 12(sp)
  ADDIW a0, a0, 1
  SW a0, 12(sp)
  LW a0, 12(sp)
  SLTI s9, a0, 2
  BNE s9, zero, bb51
  # implict jump to bb26
bb26:
  ADDIW s10, s10, 1
  SLTI s9, s10, 2
  BNE s9, zero, bb50
  # implict jump to bb27
bb27:
  ADDIW s8, s8, 1
  SLTI s9, s8, 2
  BNE s9, zero, bb49
  # implict jump to bb28
bb28:
  ADDIW s11, s11, 1
  SLTI s8, s11, 2
  BNE s8, zero, bb48
  # implict jump to bb29
bb29:
  ADDIW a0, s7, 1
  SLTI s7, a0, 2
  BNE s7, zero, bb47
  # implict jump to bb30
bb30:
  ADDIW a0, s6, 1
  SLTI s6, a0, 2
  BNE s6, zero, bb46
  # implict jump to bb31
bb31:
  LW a0, 68(sp)
  ADDIW s6, a0, 1
  SLTI a0, s6, 2
  BNE a0, zero, bb45
  # implict jump to bb32
bb32:
  LW a0, 72(sp)
  ADDIW s2, a0, 1
  SLTI a0, s2, 2
  BNE a0, zero, bb44
  # implict jump to bb33
bb33:
  LW a0, 76(sp)
  ADDIW a0, a0, 1
  SLTI s1, a0, 2
  BNE s1, zero, bb43
  # implict jump to bb34
bb34:
  ADDIW s1, s5, 1
  SLTI a0, s1, 2
  BNE a0, zero, bb42
  # implict jump to bb35
bb35:
  LW a0, 80(sp)
  ADDIW a0, a0, 1
  SLTI s1, a0, 2
  BNE s1, zero, bb41
  # implict jump to bb36
bb36:
  LW a0, 84(sp)
  ADDIW s1, a0, 1
  SLTI a0, s1, 2
  BNE a0, zero, bb40
  # implict jump to bb37
bb37:
  LW a0, 48(sp)
  ADDIW s0, a0, 1
  SLTI s1, s0, 2
  BNE s1, zero, bb39
  # implict jump to bb38
bb38:
  LW a0, 288(sp)
  LW s0, 296(sp)
  ADDW a0, a0, s0
  LW s0, 292(sp)
  ADDW a0, a0, s0
  LW s0, 328(sp)
  ADDW a0, a0, s0
  LW s0, 312(sp)
  ADDW a0, a0, s0
  LW s0, 516(sp)
  ADDW a0, a0, s0
  LW s0, 344(sp)
  ADDW a0, a0, s0
  LW s0, 1252(sp)
  ADDW a0, a0, s0
  LW s0, 512(sp)
  ADDW a0, a0, s0
  LW s0, 1092(sp)
  ADDW a0, a0, s0
  ADDI t6, sp, 288
  LW s0, 1996(t6)
  ADDW a0, a0, s0
  LUI s0, 1
  ADDIW s0, s0, -872
  ADDI t6, sp, 288
  ADD s0, t6, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  LUI s0, 6
  ADDIW s0, s0, 1824
  ADDI t6, sp, 288
  ADD s0, t6, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  LW s0, 796(sp)
  ADDW a0, a0, s0
  LW s0, 412(sp)
  ADDW a0, a0, s0
  LUI s0, 60
  ADDIW s0, s0, 912
  ADDI t6, sp, 288
  ADD s0, t6, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  LUI s0, 4
  ADDIW s0, s0, -428
  ADDI t6, sp, 288
  ADD s0, t6, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  LUI s0, 202
  ADDIW s0, s0, 972
  ADDI t6, sp, 288
  ADD s0, t6, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  LUI s0, 69
  ADDIW s0, s0, -1024
  ADDI ra, sp, 288
  ADD s0, ra, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  CALL putint
  ADD a0, zero, zero
  LD ra, 96(sp)
  LD s0, 104(sp)
  LD s1, 112(sp)
  LD s2, 120(sp)
  LD s4, 128(sp)
  LD s5, 136(sp)
  LD s6, 144(sp)
  LD s7, 152(sp)
  LD s8, 160(sp)
  LD s9, 168(sp)
  LD s10, 176(sp)
  LD s11, 184(sp)
  LUI t0, 512
  ADDIW t0, t0, 288
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
  LW a0, 12(sp)
  SW a0, 12(sp)
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
