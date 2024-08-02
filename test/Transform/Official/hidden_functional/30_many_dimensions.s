.global main
.section .bss
.section .data
.section .text
main:
  LUI t0, 1048064
  ADDIW t0, t0, -160
  ADD sp, sp, t0
  SD ra, 80(sp)
  SD s0, 88(sp)
  SD s1, 96(sp)
  SD s2, 104(sp)
  SD s3, 112(sp)
  SD s4, 120(sp)
  SD s5, 128(sp)
  SD s6, 136(sp)
  SD s7, 144(sp)
  SD s8, 152(sp)
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
  ADD s0, t5, a0
  ADDI a0, zero, 0
  SW a0, 0(s0)
  BNE s1, zero, bb78
  # implict jump to bb2
bb2:
  ADD s0, zero, zero
  ADD a0, zero, zero
  # implict jump to bb3
bb3:
  SW a0, 68(sp)
  ADD a0, s0, zero
  ADD s0, a0, zero
  ADD a0, zero, zero
  # implict jump to bb4
bb4:
  SW a0, 8(sp)
  ADD a0, s0, zero
  ADD s0, a0, zero
  ADD a0, zero, zero
  # implict jump to bb5
bb5:
  SW a0, 64(sp)
  ADD a0, s0, zero
  ADD s0, a0, zero
  ADD a0, zero, zero
  # implict jump to bb6
bb6:
  SW a0, 40(sp)
  ADD a0, s0, zero
  ADD s0, a0, zero
  ADD a0, zero, zero
  # implict jump to bb7
bb7:
  SW a0, 52(sp)
  ADD a0, s0, zero
  ADD s0, zero, zero
  # implict jump to bb8
bb8:
  ADD s4, s0, zero
  ADD s0, a0, zero
  ADD a0, zero, zero
  # implict jump to bb9
bb9:
  SW a0, 60(sp)
  ADD a0, s0, zero
  ADD s0, a0, zero
  ADD a0, zero, zero
  # implict jump to bb10
bb10:
  SW a0, 48(sp)
  ADD a0, s0, zero
  ADD s0, a0, zero
  ADD a0, zero, zero
  # implict jump to bb11
bb11:
  SW a0, 56(sp)
  ADD a0, s0, zero
  ADD s0, zero, zero
  # implict jump to bb12
bb12:
  ADD s6, s0, zero
  ADD s0, zero, zero
  # implict jump to bb13
bb13:
  ADD s5, s0, zero
  ADD s0, a0, zero
  ADD a0, zero, zero
  # implict jump to bb14
bb14:
  SW a0, 16(sp)
  ADD a0, s0, zero
  ADD s0, a0, zero
  ADD a0, zero, zero
  # implict jump to bb15
bb15:
  SW a0, 0(sp)
  ADD a0, s0, zero
  ADD s0, zero, zero
  # implict jump to bb16
bb16:
  ADD s8, s0, zero
  ADD s0, zero, zero
  # implict jump to bb17
bb17:
  SW s0, 4(sp)
  ADD s0, zero, zero
  # implict jump to bb18
bb18:
  ADD s7, s0, zero
  ADD s0, a0, zero
  ADD a0, zero, zero
  # implict jump to bb19
bb19:
  SW a0, 44(sp)
  ADD a0, s0, zero
  ADD s0, a0, zero
  ADD a0, zero, zero
  # implict jump to bb20
bb20:
  SW a0, 12(sp)
  ADD s1, s0, zero
  LW a0, 68(sp)
  SLLIW a0, a0, 20
  ADDI t5, sp, 160
  ADD s0, t5, a0
  LW a0, 8(sp)
  SLLIW a0, a0, 19
  ADD s0, s0, a0
  LW a0, 64(sp)
  SLLIW a0, a0, 18
  ADD s0, s0, a0
  LW a0, 40(sp)
  SLLIW a0, a0, 17
  ADD s0, s0, a0
  LW a0, 52(sp)
  SLLIW a0, a0, 16
  ADD s0, s0, a0
  SLLIW a0, s4, 15
  ADD s0, s0, a0
  LW a0, 60(sp)
  SLLIW a0, a0, 14
  ADD s0, s0, a0
  LW a0, 48(sp)
  SLLIW a0, a0, 13
  ADD s0, s0, a0
  LW a0, 56(sp)
  SLLIW a0, a0, 12
  ADD s0, s0, a0
  SLLIW a0, s6, 11
  ADD s0, s0, a0
  SLLIW a0, s5, 10
  ADD s0, s0, a0
  LW a0, 16(sp)
  SLLIW a0, a0, 9
  ADD s0, s0, a0
  LW a0, 0(sp)
  SLLIW a0, a0, 8
  ADD s0, s0, a0
  SLLIW a0, s8, 7
  ADD s0, s0, a0
  LW a0, 4(sp)
  SLLIW a0, a0, 6
  ADD s0, s0, a0
  SLLIW a0, s7, 5
  ADD s0, s0, a0
  LW a0, 44(sp)
  SLLIW a0, a0, 4
  ADD s0, s0, a0
  LW a0, 12(sp)
  SLLIW a0, a0, 3
  ADD s3, s0, a0
  ADD a0, s1, zero
  ADD s0, zero, zero
  # implict jump to bb21
bb21:
  SLLIW s1, s0, 2
  ADD s1, s3, s1
  SW a0, 0(s1)
  ADDIW s2, a0, 1
  ADDIW s0, s0, 1
  SLTI a0, s0, 2
  BNE a0, zero, bb77
  # implict jump to bb22
bb22:
  # implict jump to bb23
bb23:
  LW a0, 12(sp)
  ADDIW s1, a0, 1
  SLTI a0, s1, 2
  BNE a0, zero, bb76
  # implict jump to bb24
bb24:
  # implict jump to bb25
bb25:
  LW a0, 44(sp)
  ADDIW s1, a0, 1
  SLTI a0, s1, 2
  BNE a0, zero, bb75
  # implict jump to bb26
bb26:
  # implict jump to bb27
bb27:
  ADDIW s0, s7, 1
  SLTI a0, s0, 2
  BNE a0, zero, bb74
  # implict jump to bb28
bb28:
  # implict jump to bb29
bb29:
  LW a0, 4(sp)
  ADDIW s0, a0, 1
  SLTI a0, s0, 2
  BNE a0, zero, bb73
  # implict jump to bb30
bb30:
  # implict jump to bb31
bb31:
  ADDIW s0, s8, 1
  SLTI a0, s0, 2
  BNE a0, zero, bb72
  # implict jump to bb32
bb32:
  # implict jump to bb33
bb33:
  LW a0, 0(sp)
  ADDIW s1, a0, 1
  SLTI a0, s1, 2
  BNE a0, zero, bb71
  # implict jump to bb34
bb34:
  # implict jump to bb35
bb35:
  LW a0, 16(sp)
  ADDIW s1, a0, 1
  SLTI a0, s1, 2
  BNE a0, zero, bb70
  # implict jump to bb36
bb36:
  # implict jump to bb37
bb37:
  ADDIW s0, s5, 1
  SLTI a0, s0, 2
  BNE a0, zero, bb69
  # implict jump to bb38
bb38:
  # implict jump to bb39
bb39:
  ADDIW s0, s6, 1
  SLTI a0, s0, 2
  BNE a0, zero, bb68
  # implict jump to bb40
bb40:
  # implict jump to bb41
bb41:
  LW a0, 56(sp)
  ADDIW s1, a0, 1
  SLTI a0, s1, 2
  BNE a0, zero, bb67
  # implict jump to bb42
bb42:
  # implict jump to bb43
bb43:
  LW a0, 48(sp)
  ADDIW s1, a0, 1
  SLTI a0, s1, 2
  BNE a0, zero, bb66
  # implict jump to bb44
bb44:
  # implict jump to bb45
bb45:
  LW a0, 60(sp)
  ADDIW s1, a0, 1
  SLTI a0, s1, 2
  BNE a0, zero, bb65
  # implict jump to bb46
bb46:
  # implict jump to bb47
bb47:
  ADDIW s0, s4, 1
  SLTI a0, s0, 2
  BNE a0, zero, bb64
  # implict jump to bb48
bb48:
  # implict jump to bb49
bb49:
  LW a0, 52(sp)
  ADDIW s1, a0, 1
  SLTI a0, s1, 2
  BNE a0, zero, bb63
  # implict jump to bb50
bb50:
  # implict jump to bb51
bb51:
  LW a0, 40(sp)
  ADDIW a0, a0, 1
  SLTI s0, a0, 2
  BNE s0, zero, bb62
  # implict jump to bb52
bb52:
  # implict jump to bb53
bb53:
  LW a0, 64(sp)
  ADDIW a0, a0, 1
  SLTI s0, a0, 2
  BNE s0, zero, bb61
  # implict jump to bb54
bb54:
  # implict jump to bb55
bb55:
  LW a0, 8(sp)
  ADDIW a0, a0, 1
  SLTI s0, a0, 2
  BNE s0, zero, bb60
  # implict jump to bb56
bb56:
  # implict jump to bb57
bb57:
  LW a0, 68(sp)
  ADDIW a0, a0, 1
  SLTI s0, a0, 2
  BNE s0, zero, bb59
  # implict jump to bb58
bb58:
  LW s0, 160(sp)
  LW a0, 168(sp)
  ADDW a0, s0, a0
  LW s0, 164(sp)
  ADDW s0, a0, s0
  LW a0, 200(sp)
  ADDW s0, s0, a0
  LW a0, 184(sp)
  ADDW s0, s0, a0
  LW a0, 388(sp)
  ADDW s0, s0, a0
  LW a0, 216(sp)
  ADDW a0, s0, a0
  LW s0, 1124(sp)
  ADDW s0, a0, s0
  LW a0, 384(sp)
  ADDW a0, s0, a0
  LW s0, 964(sp)
  ADDW a0, a0, s0
  ADDI t5, sp, 160
  LW s0, 1996(t5)
  ADDW s0, a0, s0
  LUI a0, 1
  ADDIW a0, a0, -872
  ADDI t5, sp, 160
  ADD a0, t5, a0
  LW a0, 0(a0)
  ADDW s0, s0, a0
  LUI a0, 6
  ADDIW a0, a0, 1824
  ADDI t5, sp, 160
  ADD a0, t5, a0
  LW a0, 0(a0)
  ADDW a0, s0, a0
  LW s0, 668(sp)
  ADDW s0, a0, s0
  LW a0, 284(sp)
  ADDW s0, s0, a0
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
  ADDW s0, s0, a0
  LUI a0, 69
  ADDIW a0, a0, -1024
  ADDI ra, sp, 160
  ADD a0, ra, a0
  LW a0, 0(a0)
  ADDW a0, s0, a0
  CALL putint
  ADD a0, zero, zero
  LD ra, 80(sp)
  LD s0, 88(sp)
  LD s1, 96(sp)
  LD s2, 104(sp)
  LD s3, 112(sp)
  LD s4, 120(sp)
  LD s5, 128(sp)
  LD s6, 136(sp)
  LD s7, 144(sp)
  LD s8, 152(sp)
  LUI t0, 512
  ADDIW t0, t0, 160
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb59:
  ADD s0, s2, zero
  JAL zero, bb3
bb60:
  ADD s0, s2, zero
  JAL zero, bb4
bb61:
  ADD s0, s2, zero
  JAL zero, bb5
bb62:
  ADD s0, s2, zero
  JAL zero, bb6
bb63:
  ADD s0, s2, zero
  ADD a0, s1, zero
  JAL zero, bb7
bb64:
  ADD a0, s2, zero
  JAL zero, bb8
bb65:
  ADD s0, s2, zero
  ADD a0, s1, zero
  JAL zero, bb9
bb66:
  ADD s0, s2, zero
  ADD a0, s1, zero
  JAL zero, bb10
bb67:
  ADD s0, s2, zero
  ADD a0, s1, zero
  JAL zero, bb11
bb68:
  ADD a0, s2, zero
  JAL zero, bb12
bb69:
  ADD a0, s2, zero
  JAL zero, bb13
bb70:
  ADD s0, s2, zero
  ADD a0, s1, zero
  JAL zero, bb14
bb71:
  ADD s0, s2, zero
  ADD a0, s1, zero
  JAL zero, bb15
bb72:
  ADD a0, s2, zero
  JAL zero, bb16
bb73:
  ADD a0, s2, zero
  JAL zero, bb17
bb74:
  ADD a0, s2, zero
  JAL zero, bb18
bb75:
  ADD s0, s2, zero
  ADD a0, s1, zero
  JAL zero, bb19
bb76:
  ADD s0, s2, zero
  ADD a0, s1, zero
  JAL zero, bb20
bb77:
  ADD a0, s2, zero
  JAL zero, bb21
bb78:
  ADD a0, s1, zero
  JAL zero, bb1
