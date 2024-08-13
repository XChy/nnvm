.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  LUI t0, 1048064
  ADDIW t0, t0, -320
  ADD sp, sp, t0
  SD s1, 144(sp)
  SD ra, 160(sp)
  SD s0, 168(sp)
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
  LUI a0, 128
  ADDIW a0, a0, 0
  ADD a0, zero, a0
  # implict jump to bb1
bb1:   # loop depth 1
  ADDI s1, zero, 0
  SLLIW s0, a0, 2
  ADDIW a0, a0, -1
  ADDI t6, sp, 312
  ADD s0, t6, s0
  SW s1, -4(s0)
  BNE a0, zero, bb57
  # implict jump to bb2
bb2:   # loop depth 0
  ADD s3, zero, zero
  ADD s0, zero, zero
  # implict jump to bb3
bb3:   # loop depth 1
  ADD s1, zero, zero
  SW s0, 120(sp)
  # implict jump to bb4
bb4:   # loop depth 2
  ADD s4, zero, zero
  SW s1, 116(sp)
  # implict jump to bb5
bb5:   # loop depth 3
  ADD s5, zero, zero
  SW s4, 112(sp)
  # implict jump to bb6
bb6:   # loop depth 4
  ADD s4, zero, zero
  SW s5, 108(sp)
  # implict jump to bb7
bb7:   # loop depth 5
  ADD s5, zero, zero
  SW s4, 104(sp)
  # implict jump to bb8
bb8:   # loop depth 6
  ADD s4, zero, zero
  SW s5, 100(sp)
  # implict jump to bb9
bb9:   # loop depth 7
  ADD s5, zero, zero
  SW s4, 96(sp)
  # implict jump to bb10
bb10:   # loop depth 8
  ADD s4, zero, zero
  SW s5, 92(sp)
  # implict jump to bb11
bb11:   # loop depth 9
  ADD s11, zero, zero
  SW s4, 88(sp)
  # implict jump to bb12
bb12:   # loop depth 10
  ADD s6, zero, zero
  # implict jump to bb13
bb13:   # loop depth 11
  ADD a0, zero, zero
  SW a0, 64(sp)
  # implict jump to bb14
bb14:   # loop depth 12
  ADD s7, zero, zero
  LW a0, 64(sp)
  SW a0, 64(sp)
  # implict jump to bb15
bb15:   # loop depth 13
  ADD s9, zero, zero
  # implict jump to bb16
bb16:   # loop depth 14
  ADD s8, zero, zero
  # implict jump to bb17
bb17:   # loop depth 15
  ADD s5, zero, zero
  # implict jump to bb18
bb18:   # loop depth 16
  ADD a0, zero, zero
  SW a0, 84(sp)
  # implict jump to bb19
bb19:   # loop depth 17
  ADD a0, zero, zero
  SW a0, 72(sp)
  LW a0, 84(sp)
  SW a0, 84(sp)
  # implict jump to bb20
bb20:   # loop depth 18
  LW a0, 120(sp)
  SLLIW s4, a0, 20
  LW a0, 116(sp)
  SLLIW a0, a0, 19
  SW a0, 76(sp)
  ADDI a0, sp, 312
  ADD a0, a0, s4
  SD a0, 256(sp)
  LW a0, 112(sp)
  SLLIW a0, a0, 18
  SW a0, 68(sp)
  LW a0, 76(sp)
  LD s0, 256(sp)
  ADD a0, s0, a0
  SD a0, 264(sp)
  LW a0, 108(sp)
  SLLIW a0, a0, 17
  SW a0, 60(sp)
  LW a0, 68(sp)
  LD s0, 264(sp)
  ADD a0, s0, a0
  SD a0, 272(sp)
  LW a0, 104(sp)
  SLLIW a0, a0, 16
  SW a0, 52(sp)
  LW a0, 60(sp)
  LD s0, 272(sp)
  ADD a0, s0, a0
  SD a0, 280(sp)
  LW a0, 100(sp)
  SLLIW a0, a0, 15
  SW a0, 44(sp)
  LW a0, 52(sp)
  LD s0, 280(sp)
  ADD a0, s0, a0
  SD a0, 152(sp)
  LW a0, 96(sp)
  SLLIW a0, a0, 14
  SW a0, 36(sp)
  LW a0, 44(sp)
  LD s0, 152(sp)
  ADD a0, s0, a0
  SD a0, 288(sp)
  LW a0, 92(sp)
  SLLIW a0, a0, 13
  SW a0, 28(sp)
  LW a0, 36(sp)
  LD s0, 288(sp)
  ADD a0, s0, a0
  SD a0, 296(sp)
  LW a0, 88(sp)
  SLLIW a0, a0, 12
  SW a0, 24(sp)
  LW a0, 28(sp)
  LD s0, 296(sp)
  ADD s4, s0, a0
  SLLIW a0, s11, 11
  SW a0, 20(sp)
  LW a0, 24(sp)
  ADD s4, s4, a0
  SLLIW a0, s6, 10
  SW a0, 16(sp)
  LW a0, 20(sp)
  ADD s4, s4, a0
  LW a0, 64(sp)
  SLLIW a0, a0, 9
  SW a0, 12(sp)
  LW a0, 16(sp)
  ADD s4, s4, a0
  SLLIW a0, s7, 8
  SW a0, 8(sp)
  LW a0, 12(sp)
  ADD s4, s4, a0
  SLLIW a0, s9, 7
  SW a0, 40(sp)
  LW a0, 8(sp)
  ADD s4, s4, a0
  SLLIW a0, s8, 6
  SW a0, 80(sp)
  LW a0, 40(sp)
  ADD s4, s4, a0
  SLLIW a0, s5, 5
  SW a0, 140(sp)
  LW a0, 80(sp)
  ADD s4, s4, a0
  LW a0, 84(sp)
  SLLIW a0, a0, 4
  SW a0, 136(sp)
  LW a0, 140(sp)
  ADD s4, s4, a0
  LW a0, 72(sp)
  SW a0, 72(sp)
  LW a0, 136(sp)
  ADD s4, s4, a0
  LW a0, 72(sp)
  SH3ADD a0, a0, s4
  SD a0, 304(sp)
  LW a0, 72(sp)
  ADDIW a0, a0, 1
  SW a0, 72(sp)
  ADDIW a0, s3, 1
  SW a0, 128(sp)
  LD a0, 304(sp)
  SW s3, 0(a0)
  LW a0, 72(sp)
  SLTI a0, a0, 2
  SB a0, 0(sp)
  ADDIW s3, s3, 2
  LW a0, 128(sp)
  LD s0, 304(sp)
  SW a0, 4(s0)
  LB a0, 0(sp)
  BNE a0, zero, bb56
  # implict jump to bb21
bb21:   # loop depth 17
  LW a0, 84(sp)
  ADDIW a0, a0, 1
  SW a0, 84(sp)
  LW a0, 84(sp)
  SLTI s10, a0, 2
  BNE s10, zero, bb55
  # implict jump to bb22
bb22:   # loop depth 16
  ADDIW s5, s5, 1
  SLTI s10, s5, 2
  BNE s10, zero, bb54
  # implict jump to bb23
bb23:   # loop depth 15
  ADDIW s8, s8, 1
  SLTI s5, s8, 2
  BNE s5, zero, bb53
  # implict jump to bb24
bb24:   # loop depth 14
  ADDIW s9, s9, 1
  SLTI s5, s9, 2
  BNE s5, zero, bb52
  # implict jump to bb25
bb25:   # loop depth 13
  ADDIW s7, s7, 1
  SLTI s5, s7, 2
  BNE s5, zero, bb51
  # implict jump to bb26
bb26:   # loop depth 12
  LW a0, 64(sp)
  ADDIW a0, a0, 1
  SW a0, 64(sp)
  LW a0, 64(sp)
  SLTI s5, a0, 2
  BNE s5, zero, bb50
  # implict jump to bb27
bb27:   # loop depth 11
  ADDIW s6, s6, 1
  SLTI s5, s6, 2
  BNE s5, zero, bb49
  # implict jump to bb28
bb28:   # loop depth 10
  ADDIW s11, s11, 1
  SLTI s5, s11, 2
  BNE s5, zero, bb48
  # implict jump to bb29
bb29:   # loop depth 9
  LW a0, 88(sp)
  ADDIW s4, a0, 1
  SLTI s5, s4, 2
  BNE s5, zero, bb47
  # implict jump to bb30
bb30:   # loop depth 8
  LW a0, 92(sp)
  ADDIW s5, a0, 1
  SLTI s6, s5, 2
  BNE s6, zero, bb46
  # implict jump to bb31
bb31:   # loop depth 7
  LW a0, 96(sp)
  ADDIW s4, a0, 1
  SLTI s5, s4, 2
  BNE s5, zero, bb45
  # implict jump to bb32
bb32:   # loop depth 6
  LW a0, 100(sp)
  ADDIW s5, a0, 1
  SLTI s6, s5, 2
  BNE s6, zero, bb44
  # implict jump to bb33
bb33:   # loop depth 5
  LW a0, 104(sp)
  ADDIW s4, a0, 1
  SLTI s5, s4, 2
  BNE s5, zero, bb43
  # implict jump to bb34
bb34:   # loop depth 4
  LW a0, 108(sp)
  ADDIW s5, a0, 1
  SLTI s2, s5, 2
  BNE s2, zero, bb42
  # implict jump to bb35
bb35:   # loop depth 3
  LW a0, 112(sp)
  ADDIW s4, a0, 1
  SLTI s2, s4, 2
  BNE s2, zero, bb41
  # implict jump to bb36
bb36:   # loop depth 2
  LW a0, 116(sp)
  ADDIW s1, a0, 1
  SLTI s2, s1, 2
  BNE s2, zero, bb40
  # implict jump to bb37
bb37:   # loop depth 1
  LW a0, 120(sp)
  ADDIW s0, a0, 1
  SLTI s1, s0, 2
  BNE s1, zero, bb39
  # implict jump to bb38
bb38:   # loop depth 0
  LW a0, 312(sp)
  LUI s0, 1
  ADDIW s0, s0, -872
  LUI s1, 6
  ADDI t6, sp, 312
  ADD s2, t6, s0
  ADDIW s1, s1, 1824
  LW s0, 320(sp)
  ADDI t6, sp, 312
  ADD s3, t6, s1
  LUI s4, 60
  LUI s5, 4
  ADDIW s4, s4, 912
  ADDIW s5, s5, -428
  LW s1, 316(sp)
  ADDW a0, a0, s0
  ADDI t6, sp, 312
  ADD s4, t6, s4
  ADDI t6, sp, 312
  ADD s5, t6, s5
  LUI s6, 202
  LUI s7, 69
  LW s0, 352(sp)
  ADDW a0, a0, s1
  ADDIW s6, s6, 972
  ADDIW s7, s7, -1024
  ADDI t6, sp, 312
  ADD s6, t6, s6
  ADDI t6, sp, 312
  ADD s7, t6, s7
  LW s1, 336(sp)
  ADDW a0, a0, s0
  LW s0, 540(sp)
  ADDW a0, a0, s1
  LW s1, 368(sp)
  ADDW a0, a0, s0
  LW s0, 1276(sp)
  ADDW a0, a0, s1
  LW s1, 536(sp)
  ADDW a0, a0, s0
  LW s0, 1116(sp)
  ADDW a0, a0, s1
  ADDI t6, sp, 312
  LW s1, 1996(t6)
  ADDW a0, a0, s0
  LW s0, 0(s2)
  ADDW a0, a0, s1
  LW s1, 0(s3)
  ADDW a0, a0, s0
  LW s0, 820(sp)
  ADDW a0, a0, s1
  LW s1, 436(sp)
  ADDW a0, a0, s0
  LW s0, 0(s4)
  ADDW a0, a0, s1
  LW s1, 0(s5)
  ADDW a0, a0, s0
  LW s0, 0(s6)
  ADDW a0, a0, s1
  LW s1, 0(s7)
  ADDW a0, a0, s0
  ADDW a0, a0, s1
  CALL putint
  ADD a0, zero, zero
  LD s1, 144(sp)
  LD ra, 160(sp)
  LD s0, 168(sp)
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
  LUI t0, 512
  ADDIW t0, t0, 320
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb39:   # loop depth 1
  JAL zero, bb3
bb40:   # loop depth 2
  JAL zero, bb4
bb41:   # loop depth 3
  JAL zero, bb5
bb42:   # loop depth 4
  JAL zero, bb6
bb43:   # loop depth 5
  JAL zero, bb7
bb44:   # loop depth 6
  JAL zero, bb8
bb45:   # loop depth 7
  JAL zero, bb9
bb46:   # loop depth 8
  JAL zero, bb10
bb47:   # loop depth 9
  JAL zero, bb11
bb48:   # loop depth 10
  JAL zero, bb12
bb49:   # loop depth 11
  JAL zero, bb13
bb50:   # loop depth 12
  LW a0, 64(sp)
  SW a0, 64(sp)
  JAL zero, bb14
bb51:   # loop depth 13
  JAL zero, bb15
bb52:   # loop depth 14
  JAL zero, bb16
bb53:   # loop depth 15
  JAL zero, bb17
bb54:   # loop depth 16
  JAL zero, bb18
bb55:   # loop depth 17
  LW a0, 84(sp)
  SW a0, 84(sp)
  JAL zero, bb19
bb56:   # loop depth 18
  LW a0, 72(sp)
  SW a0, 72(sp)
  JAL zero, bb20
bb57:   # loop depth 1
  JAL zero, bb1
