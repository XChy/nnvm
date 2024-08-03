.global main
.section .bss
.section .data
.section .text
main:
  LUI t0, 1048064
  ADDIW t0, t0, -160
  ADD sp, sp, t0
  SD ra, 72(sp)
  SD s0, 80(sp)
  SD s1, 88(sp)
  SD s2, 96(sp)
  SD s3, 104(sp)
  SD s4, 112(sp)
  SD s5, 120(sp)
  SD s6, 128(sp)
  SD s7, 136(sp)
  SD s8, 144(sp)
  SD s9, 152(sp)
  LUI a0, 128
  ADDIW a0, a0, 0
  ADD a0, zero, a0
  # implict jump to bb1
bb1:
  ADD s0, a0, zero
  ADDI a0, zero, 1
  SUBW s1, s0, a0
  SLLIW a0, s1, 2
  ADDI t5, sp, 160
  ADD a0, t5, a0
  ADDI s0, zero, 0
  SW s0, 0(a0)
  BNE s1, zero, bb57
  # implict jump to bb2
bb2:
  ADD s0, zero, zero
  ADD a0, zero, zero
  # implict jump to bb3
bb3:
  SW a0, 36(sp)
  ADD a0, s0, zero
  ADD s0, a0, zero
  ADD a0, zero, zero
  # implict jump to bb4
bb4:
  SW a0, 0(sp)
  ADD a0, s0, zero
  ADD s1, a0, zero
  ADD a0, zero, zero
  # implict jump to bb5
bb5:
  SW a0, 40(sp)
  ADD a0, s1, zero
  ADD s1, a0, zero
  ADD a0, zero, zero
  # implict jump to bb6
bb6:
  ADD s0, a0, zero
  ADD a0, s1, zero
  ADD s1, a0, zero
  ADD a0, zero, zero
  # implict jump to bb7
bb7:
  SW a0, 44(sp)
  ADD a0, s1, zero
  ADD s1, a0, zero
  ADD a0, zero, zero
  # implict jump to bb8
bb8:
  SW a0, 48(sp)
  ADD a0, s1, zero
  ADD s1, zero, zero
  # implict jump to bb9
bb9:
  ADD s3, s1, zero
  ADD s1, a0, zero
  ADD a0, zero, zero
  # implict jump to bb10
bb10:
  ADD s4, a0, zero
  ADD a0, s1, zero
  ADD s1, a0, zero
  ADD a0, zero, zero
  # implict jump to bb11
bb11:
  ADD s6, a0, zero
  ADD a0, s1, zero
  ADD s1, a0, zero
  ADD a0, zero, zero
  # implict jump to bb12
bb12:
  ADD s2, a0, zero
  ADD a0, s1, zero
  ADD s1, zero, zero
  # implict jump to bb13
bb13:
  ADD s9, s1, zero
  ADD s1, a0, zero
  ADD a0, zero, zero
  # implict jump to bb14
bb14:
  ADD s7, a0, zero
  ADD a0, s1, zero
  ADD s1, a0, zero
  ADD a0, zero, zero
  # implict jump to bb15
bb15:
  ADD s5, a0, zero
  ADD a0, s1, zero
  ADD s1, a0, zero
  ADD a0, zero, zero
  # implict jump to bb16
bb16:
  SW a0, 24(sp)
  ADD a0, s1, zero
  ADD s1, a0, zero
  ADD a0, zero, zero
  # implict jump to bb17
bb17:
  SW a0, 28(sp)
  ADD a0, s1, zero
  ADD s1, a0, zero
  ADD a0, zero, zero
  # implict jump to bb18
bb18:
  SW a0, 52(sp)
  ADD a0, s1, zero
  ADD s1, a0, zero
  ADD a0, zero, zero
  # implict jump to bb19
bb19:
  SW a0, 56(sp)
  ADD a0, s1, zero
  ADD s1, a0, zero
  ADD a0, zero, zero
  # implict jump to bb20
bb20:
  ADD s8, a0, zero
  ADD a0, s1, zero
  SW a0, 60(sp)
  LW a0, 36(sp)
  SLLIW a0, a0, 20
  ADDI t5, sp, 160
  ADD s1, t5, a0
  LW a0, 0(sp)
  SLLIW a0, a0, 19
  ADD s1, s1, a0
  LW a0, 40(sp)
  SLLIW a0, a0, 18
  ADD s1, s1, a0
  SLLIW a0, s0, 17
  ADD s1, s1, a0
  LW a0, 44(sp)
  SLLIW a0, a0, 16
  ADD s1, s1, a0
  LW a0, 48(sp)
  SLLIW a0, a0, 15
  ADD a0, s1, a0
  SLLIW s1, s3, 14
  ADD a0, a0, s1
  SLLIW s1, s4, 13
  ADD a0, a0, s1
  SLLIW s1, s6, 12
  ADD a0, a0, s1
  SLLIW s1, s2, 11
  ADD s1, a0, s1
  SLLIW a0, s9, 10
  ADD a0, s1, a0
  SLLIW s1, s7, 9
  ADD a0, a0, s1
  SLLIW s1, s5, 8
  ADD s1, a0, s1
  LW a0, 24(sp)
  SLLIW a0, a0, 7
  ADD s1, s1, a0
  LW a0, 28(sp)
  SLLIW a0, a0, 6
  ADD s1, s1, a0
  LW a0, 52(sp)
  SLLIW a0, a0, 5
  ADD s1, s1, a0
  LW a0, 56(sp)
  SLLIW a0, a0, 4
  ADD a0, s1, a0
  SLLIW s1, s8, 3
  ADD s1, a0, s1
  LW a0, 60(sp)
  SW a0, 0(s1)
  LW a0, 60(sp)
  ADDIW a0, a0, 1
  SW a0, 4(s1)
  LW a0, 60(sp)
  ADDIW s1, a0, 2
  ADDIW a0, s8, 1
  SW a0, 64(sp)
  LW a0, 64(sp)
  SLTI a0, a0, 2
  BNE a0, zero, bb56
  # implict jump to bb21
bb21:
  LW a0, 56(sp)
  ADDIW a0, a0, 1
  SLTI s8, a0, 2
  BNE s8, zero, bb55
  # implict jump to bb22
bb22:
  LW a0, 52(sp)
  ADDIW a0, a0, 1
  SLTI s8, a0, 2
  BNE s8, zero, bb54
  # implict jump to bb23
bb23:
  LW a0, 28(sp)
  ADDIW s8, a0, 1
  SLTI a0, s8, 2
  BNE a0, zero, bb53
  # implict jump to bb24
bb24:
  LW a0, 24(sp)
  ADDIW a0, a0, 1
  SLTI s8, a0, 2
  BNE s8, zero, bb52
  # implict jump to bb25
bb25:
  ADDIW a0, s5, 1
  SLTI s5, a0, 2
  BNE s5, zero, bb51
  # implict jump to bb26
bb26:
  ADDIW a0, s7, 1
  SLTI s5, a0, 2
  BNE s5, zero, bb50
  # implict jump to bb27
bb27:
  ADDIW s5, s9, 1
  SLTI a0, s5, 2
  BNE a0, zero, bb49
  # implict jump to bb28
bb28:
  ADDIW a0, s2, 1
  SLTI s2, a0, 2
  BNE s2, zero, bb48
  # implict jump to bb29
bb29:
  ADDIW a0, s6, 1
  SLTI s2, a0, 2
  BNE s2, zero, bb47
  # implict jump to bb30
bb30:
  ADDIW a0, s4, 1
  SLTI s2, a0, 2
  BNE s2, zero, bb46
  # implict jump to bb31
bb31:
  ADDIW s2, s3, 1
  SLTI a0, s2, 2
  BNE a0, zero, bb45
  # implict jump to bb32
bb32:
  LW a0, 48(sp)
  ADDIW a0, a0, 1
  SLTI s2, a0, 2
  BNE s2, zero, bb44
  # implict jump to bb33
bb33:
  LW a0, 44(sp)
  ADDIW a0, a0, 1
  SLTI s2, a0, 2
  BNE s2, zero, bb43
  # implict jump to bb34
bb34:
  ADDIW a0, s0, 1
  SLTI s0, a0, 2
  BNE s0, zero, bb42
  # implict jump to bb35
bb35:
  LW a0, 40(sp)
  ADDIW s0, a0, 1
  SLTI a0, s0, 2
  BNE a0, zero, bb41
  # implict jump to bb36
bb36:
  LW a0, 0(sp)
  ADDIW s2, a0, 1
  SLTI a0, s2, 2
  BNE a0, zero, bb40
  # implict jump to bb37
bb37:
  LW a0, 36(sp)
  ADDIW a0, a0, 1
  SLTI s0, a0, 2
  BNE s0, zero, bb39
  # implict jump to bb38
bb38:
  LW s0, 160(sp)
  LW a0, 168(sp)
  ADDW s0, s0, a0
  LW a0, 164(sp)
  ADDW a0, s0, a0
  LW s0, 200(sp)
  ADDW a0, a0, s0
  LW s0, 184(sp)
  ADDW a0, a0, s0
  LW s0, 388(sp)
  ADDW s0, a0, s0
  LW a0, 216(sp)
  ADDW a0, s0, a0
  LW s0, 1124(sp)
  ADDW s0, a0, s0
  LW a0, 384(sp)
  ADDW s0, s0, a0
  LW a0, 964(sp)
  ADDW a0, s0, a0
  ADDI t5, sp, 160
  LW s0, 1996(t5)
  ADDW s0, a0, s0
  LUI a0, 1
  ADDIW a0, a0, -872
  ADDI t5, sp, 160
  ADD a0, t5, a0
  LW a0, 0(a0)
  ADDW a0, s0, a0
  LUI s0, 6
  ADDIW s0, s0, 1824
  ADDI t5, sp, 160
  ADD s0, t5, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  LW s0, 668(sp)
  ADDW a0, a0, s0
  LW s0, 284(sp)
  ADDW s0, a0, s0
  LUI a0, 60
  ADDIW a0, a0, 912
  ADDI t5, sp, 160
  ADD a0, t5, a0
  LW a0, 0(a0)
  ADDW s0, s0, a0
  LUI a0, 4
  ADDIW a0, a0, -428
  ADDI t5, sp, 160
  ADD a0, t5, a0
  LW a0, 0(a0)
  ADDW s0, s0, a0
  LUI a0, 202
  ADDIW a0, a0, 972
  ADDI t5, sp, 160
  ADD a0, t5, a0
  LW a0, 0(a0)
  ADDW a0, s0, a0
  LUI s0, 69
  ADDIW s0, s0, -1024
  ADDI ra, sp, 160
  ADD s0, ra, s0
  LW s0, 0(s0)
  ADDW a0, a0, s0
  CALL putint
  ADD a0, zero, zero
  LD ra, 72(sp)
  LD s0, 80(sp)
  LD s1, 88(sp)
  LD s2, 96(sp)
  LD s3, 104(sp)
  LD s4, 112(sp)
  LD s5, 120(sp)
  LD s6, 128(sp)
  LD s7, 136(sp)
  LD s8, 144(sp)
  LD s9, 152(sp)
  LUI t0, 512
  ADDIW t0, t0, 160
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb39:
  ADD s0, s1, zero
  JAL zero, bb3
bb40:
  ADD s0, s1, zero
  ADD a0, s2, zero
  JAL zero, bb4
bb41:
  ADD a0, s0, zero
  JAL zero, bb5
bb42:
  JAL zero, bb6
bb43:
  JAL zero, bb7
bb44:
  JAL zero, bb8
bb45:
  ADD a0, s1, zero
  ADD s1, s2, zero
  JAL zero, bb9
bb46:
  JAL zero, bb10
bb47:
  JAL zero, bb11
bb48:
  JAL zero, bb12
bb49:
  ADD a0, s1, zero
  ADD s1, s5, zero
  JAL zero, bb13
bb50:
  JAL zero, bb14
bb51:
  JAL zero, bb15
bb52:
  JAL zero, bb16
bb53:
  ADD a0, s8, zero
  JAL zero, bb17
bb54:
  JAL zero, bb18
bb55:
  JAL zero, bb19
bb56:
  LW a0, 64(sp)
  JAL zero, bb20
bb57:
  ADD a0, s1, zero
  JAL zero, bb1
