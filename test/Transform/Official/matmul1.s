.global main
.section .bss

c:
.space 4000000
b:
.space 4000000
a:
.space 4000000
.section .data
MAX:
.word 0x7fffffff



.section .text
main:
  ADDI sp, sp, -272
  SD ra, 160(sp)
  SD s0, 168(sp)
  SD s1, 176(sp)
  SD s2, 184(sp)
  SD s3, 192(sp)
  SD s4, 200(sp)
  SD s5, 208(sp)
  SD s6, 216(sp)
  SD s7, 224(sp)
  SD s8, 232(sp)
  SD s9, 240(sp)
  SD s10, 248(sp)
  SD s11, 256(sp)
  ADD t4, zero, zero
  SW t4, 132(sp)
  # implict jump to bb1
bb1:
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  LW t4, 108(sp)
  SLTI a6, t4, 1000
  BNE a6, zero, bb76
  # implict jump to bb2
bb2:
  ADDI a0, zero, 23
  CALL _sysy_starttime
  SLTI s6, zero, 1000
  BNE s6, zero, bb67
  # implict jump to bb3
bb3:
  SLTI s3, zero, 1000
  BNE s3, zero, bb49
  # implict jump to bb4
bb4:
  SLTI s0, zero, 1000
  BNE s0, zero, bb30
  # implict jump to bb5
bb5:
  SLTI s8, zero, 1000
  BNE s8, zero, bb21
  # implict jump to bb6
bb6:
  SLTI s3, zero, 1000
  BNE s3, zero, bb9
  # implict jump to bb7
bb7:
  ADD s3, zero, zero
  # implict jump to bb8
bb8:
  ADDI a0, zero, 92
  CALL _sysy_stoptime
  ADD a0, s3, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 160(sp)
  LD s0, 168(sp)
  LD s1, 176(sp)
  LD s2, 184(sp)
  LD s3, 192(sp)
  LD s4, 200(sp)
  LD s5, 208(sp)
  LD s6, 216(sp)
  LD s7, 224(sp)
  LD s8, 232(sp)
  LD s9, 240(sp)
  LD s10, 248(sp)
  LD s11, 256(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb9:
  ADD s5, zero, zero
  ADD s6, zero, zero
  # implict jump to bb10
bb10:
  ADD s11, s6, zero
  ADD t4, s5, zero
  SW t4, 92(sp)
  SLTI s7, zero, 1000
  BNE s7, zero, bb16
  # implict jump to bb11
bb11:
  ADD s7, s11, zero
  # implict jump to bb12
bb12:
  ADD s2, s7, zero
  LW t4, 92(sp)
  ADDIW s1, t4, 1
  # implict jump to bb13
bb13:
  SLTI s4, s1, 1000
  BNE s4, zero, bb15
  # implict jump to bb14
bb14:
  ADD s3, s2, zero
  JAL zero, bb8
bb15:
  ADD s5, s1, zero
  ADD s6, s2, zero
  JAL zero, bb10
bb16:
  ADD s0, zero, zero
  # implict jump to bb17
bb17:
  ADD s9, s11, zero
  ADD s10, s0, zero
  LUI s8, 1
  ADDIW s8, s8, -96
  LW t4, 92(sp)
  MULW s8, t4, s8
  LA s4, c
  ADD s4, s4, s8
  SLLIW s8, s10, 2
  ADD s4, s4, s8
  LW s4, 0(s4)
  ADDW t4, s9, s4
  SW t4, 48(sp)
  ADDIW t4, s10, 1
  SW t4, 52(sp)
  # implict jump to bb18
bb18:
  LW t4, 52(sp)
  SLTI s4, t4, 1000
  BNE s4, zero, bb20
  # implict jump to bb19
bb19:
  LW t4, 48(sp)
  ADD s7, t4, zero
  JAL zero, bb12
bb20:
  LW t4, 52(sp)
  ADD s0, t4, zero
  LW t4, 48(sp)
  ADD s11, t4, zero
  JAL zero, bb17
bb21:
  ADD t4, zero, zero
  SW t4, 96(sp)
  # implict jump to bb22
bb22:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  SLTI s10, zero, 1000
  BNE s10, zero, bb26
  # implict jump to bb23
bb23:
  LW t3, 80(sp)
  ADDIW t4, t3, 1
  SW t4, 0(sp)
  # implict jump to bb24
bb24:
  LW t4, 0(sp)
  SLTI s3, t4, 1000
  BNE s3, zero, bb25
  JAL zero, bb6
bb25:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  JAL zero, bb22
bb26:
  ADD t4, zero, zero
  SW t4, 84(sp)
  # implict jump to bb27
bb27:
  LW t4, 84(sp)
  ADD s11, t4, zero
  LUI s3, 1
  ADDIW s3, s3, -96
  LW t4, 80(sp)
  MULW s3, t4, s3
  LA s6, c
  ADD s3, s6, s3
  SLLIW s6, s11, 2
  ADD s3, s3, s6
  LUI s6, 1
  ADDIW s6, s6, -96
  MULW s6, s11, s6
  LA s5, c
  ADD s5, s5, s6
  LW t4, 80(sp)
  SLLIW s6, t4, 2
  ADD s5, s5, s6
  LW s5, 0(s5)
  SUBW s5, zero, s5
  SW s5, 0(s3)
  ADDIW t4, s11, 1
  SW t4, 40(sp)
  # implict jump to bb28
bb28:
  LW t4, 40(sp)
  SLTI s3, t4, 1000
  BNE s3, zero, bb29
  JAL zero, bb23
bb29:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  JAL zero, bb27
bb30:
  ADD t4, zero, zero
  SW t4, 76(sp)
  # implict jump to bb31
bb31:
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  SLTI s4, zero, 1000
  BNE s4, zero, bb41
  # implict jump to bb32
bb32:
  LUI s4, 524288
  ADDIW s4, s4, -1
  ADD s4, zero, s4
  # implict jump to bb33
bb33:
  ADD t4, s4, zero
  SW t4, 68(sp)
  SLTI s7, zero, 1000
  BNE s7, zero, bb37
  # implict jump to bb34
bb34:
  LW t3, 56(sp)
  ADDIW t4, t3, 1
  SW t4, 36(sp)
  # implict jump to bb35
bb35:
  LW t4, 36(sp)
  SLTI s8, t4, 1000
  BNE s8, zero, bb36
  JAL zero, bb5
bb36:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  JAL zero, bb31
bb37:
  ADD t4, zero, zero
  SW t4, 72(sp)
  # implict jump to bb38
bb38:
  LW t4, 72(sp)
  ADD s8, t4, zero
  LUI s9, 1
  ADDIW s9, s9, -96
  LW t4, 56(sp)
  MULW s9, t4, s9
  LA s10, c
  ADD s9, s10, s9
  SLLIW s10, s8, 2
  ADD s9, s9, s10
  LW t4, 68(sp)
  SW t4, 0(s9)
  ADDIW t4, s8, 1
  SW t4, 124(sp)
  # implict jump to bb39
bb39:
  LW t4, 124(sp)
  SLTI s8, t4, 1000
  BNE s8, zero, bb40
  JAL zero, bb34
bb40:
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  JAL zero, bb38
bb41:
  ADD t4, zero, zero
  SW t4, 64(sp)
  LUI s6, 524288
  ADDIW s6, s6, -1
  ADD t4, zero, s6
  SW t4, 60(sp)
  # implict jump to bb42
bb42:
  LW t4, 60(sp)
  ADD s7, t4, zero
  LW t4, 64(sp)
  ADD s8, t4, zero
  LUI s9, 1
  ADDIW s9, s9, -96
  LW t4, 56(sp)
  MULW s9, t4, s9
  LA s10, c
  ADD s9, s10, s9
  SLLIW s10, s8, 2
  ADD s9, s9, s10
  LW s9, 0(s9)
  BLT s9, s7, bb48
  # implict jump to bb43
bb43:
  # implict jump to bb44
bb44:
  ADD t4, s7, zero
  SW t4, 88(sp)
  ADDIW t4, s8, 1
  SW t4, 44(sp)
  # implict jump to bb45
bb45:
  LW t4, 44(sp)
  SLTI s7, t4, 1000
  BNE s7, zero, bb47
  # implict jump to bb46
bb46:
  LW t4, 88(sp)
  ADD s4, t4, zero
  JAL zero, bb33
bb47:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  JAL zero, bb42
bb48:
  ADD s7, s9, zero
  JAL zero, bb44
bb49:
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb50
bb50:
  LW t4, 4(sp)
  ADD s7, t4, zero
  LW t4, 12(sp)
  ADD s6, t4, zero
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  SLTI s4, zero, 1000
  BNE s4, zero, bb55
  # implict jump to bb51
bb51:
  ADD s4, s6, zero
  ADD s6, s7, zero
  # implict jump to bb52
bb52:
  ADD t4, s6, zero
  SW t4, 136(sp)
  ADD t4, s4, zero
  SW t4, 120(sp)
  LW t3, 8(sp)
  ADDIW t4, t3, 1
  SW t4, 128(sp)
  # implict jump to bb53
bb53:
  LW t4, 128(sp)
  SLTI s0, t4, 1000
  BNE s0, zero, bb54
  JAL zero, bb4
bb54:
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  JAL zero, bb50
bb55:
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb56
bb56:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  SLTI s7, zero, 1000
  BNE s7, zero, bb62
  # implict jump to bb57
bb57:
  ADD s7, zero, zero
  ADD s3, zero, zero
  # implict jump to bb58
bb58:
  ADD s9, s3, zero
  ADD t4, s7, zero
  SW t4, 104(sp)
  LUI s0, 1
  ADDIW s0, s0, -96
  LW t4, 8(sp)
  MULW s0, t4, s0
  LA s3, c
  ADD s0, s3, s0
  LW t4, 16(sp)
  SLLIW s3, t4, 2
  ADD s0, s0, s3
  SW s9, 0(s0)
  LW t3, 16(sp)
  ADDIW t4, t3, 1
  SW t4, 156(sp)
  # implict jump to bb59
bb59:
  LW t4, 156(sp)
  SLTI s0, t4, 1000
  BNE s0, zero, bb61
  # implict jump to bb60
bb60:
  LW t4, 104(sp)
  ADD s4, t4, zero
  ADD s6, s9, zero
  JAL zero, bb52
bb61:
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb56
bb62:
  ADD t4, zero, zero
  SW t4, 28(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  # implict jump to bb63
bb63:
  LW t4, 32(sp)
  ADD s11, t4, zero
  LW t4, 28(sp)
  ADD s8, t4, zero
  LUI s10, 1
  ADDIW s10, s10, -96
  LW t4, 8(sp)
  MULW s10, t4, s10
  LA s0, a
  ADD s0, s0, s10
  SLLIW s10, s8, 2
  ADD s0, s0, s10
  LW s0, 0(s0)
  LUI s10, 1
  ADDIW s10, s10, -96
  MULW s10, s8, s10
  LA s5, b
  ADD s5, s5, s10
  LW t4, 16(sp)
  SLLIW s10, t4, 2
  ADD s5, s5, s10
  LW s5, 0(s5)
  MULW s0, s0, s5
  ADDW t4, s11, s0
  SW t4, 112(sp)
  ADDIW t4, s8, 1
  SW t4, 100(sp)
  # implict jump to bb64
bb64:
  LW t4, 100(sp)
  SLTI s0, t4, 1000
  BNE s0, zero, bb66
  # implict jump to bb65
bb65:
  LW t4, 100(sp)
  ADD s7, t4, zero
  LW t4, 112(sp)
  ADD s3, t4, zero
  JAL zero, bb58
bb66:
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  JAL zero, bb63
bb67:
  ADD t4, zero, zero
  SW t4, 148(sp)
  # implict jump to bb68
bb68:
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  SLTI s6, zero, 1000
  BNE s6, zero, bb72
  # implict jump to bb69
bb69:
  LW t3, 144(sp)
  ADDIW t4, t3, 1
  SW t4, 116(sp)
  # implict jump to bb70
bb70:
  LW t4, 116(sp)
  SLTI s3, t4, 1000
  BNE s3, zero, bb71
  JAL zero, bb3
bb71:
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 148(sp)
  JAL zero, bb68
bb72:
  ADD t4, zero, zero
  SW t4, 152(sp)
  # implict jump to bb73
bb73:
  LW t4, 152(sp)
  ADD s6, t4, zero
  LUI s7, 1
  ADDIW s7, s7, -96
  LW t4, 144(sp)
  MULW s7, t4, s7
  LA s4, b
  ADD s4, s4, s7
  SLLIW s7, s6, 2
  ADD s4, s4, s7
  LUI s7, 1
  ADDIW s7, s7, -96
  MULW s7, s6, s7
  LA s3, a
  ADD s3, s3, s7
  LW t4, 144(sp)
  SLLIW s7, t4, 2
  ADD s3, s3, s7
  LW s3, 0(s3)
  SW s3, 0(s4)
  ADDIW t4, s6, 1
  SW t4, 140(sp)
  # implict jump to bb74
bb74:
  LW t4, 140(sp)
  SLTI s3, t4, 1000
  BNE s3, zero, bb75
  JAL zero, bb69
bb75:
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  JAL zero, bb73
bb76:
  LUI s0, 1
  ADDIW s0, s0, -96
  LW t4, 108(sp)
  MULW s0, t4, s0
  LA s1, a
  ADD s0, s1, s0
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  XORI s1, s0, 1000
  BNE s1, zero, bb78
  # implict jump to bb77
bb77:
  LW t4, 108(sp)
  ADDIW s1, t4, 1
  ADD t4, s1, zero
  SW t4, 132(sp)
  JAL zero, bb1
bb78:
  ADD a0, s0, zero
  LD ra, 160(sp)
  LD s0, 168(sp)
  LD s1, 176(sp)
  LD s2, 184(sp)
  LD s3, 192(sp)
  LD s4, 200(sp)
  LD s5, 208(sp)
  LD s6, 216(sp)
  LD s7, 224(sp)
  LD s8, 232(sp)
  LD s9, 240(sp)
  LD s10, 248(sp)
  LD s11, 256(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
