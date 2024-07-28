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
  ADDI sp, sp, -336
  SD ra, 184(sp)
  SD s0, 192(sp)
  SD s1, 200(sp)
  SD s3, 208(sp)
  SD s7, 216(sp)
  SD s8, 224(sp)
  SD s9, 232(sp)
  SD s10, 240(sp)
  SD s11, 248(sp)
  SD s2, 264(sp)
  SD s4, 272(sp)
  SD s5, 280(sp)
  SD s6, 288(sp)
  ADD t4, zero, zero
  SW t4, 100(sp)
  # implict jump to bb1
bb1:
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LW t4, 144(sp)
  SLTI a4, t4, 1000
  BNE a4, zero, bb88
  # implict jump to bb2
bb2:
  ADDI a0, zero, 23
  CALL _sysy_starttime
  SLTI s11, zero, 1000
  BNE s11, zero, bb77
  # implict jump to bb3
bb3:
  SLTI s8, zero, 1000
  BNE s8, zero, bb56
  # implict jump to bb4
bb4:
  SLTI s3, zero, 1000
  BNE s3, zero, bb34
  # implict jump to bb5
bb5:
  SLTI s9, zero, 1000
  BNE s9, zero, bb23
  # implict jump to bb6
bb6:
  SLTI s5, zero, 1000
  BNE s5, zero, bb9
  # implict jump to bb7
bb7:
  ADD s5, zero, zero
  # implict jump to bb8
bb8:
  ADDI a0, zero, 92
  CALL _sysy_stoptime
  ADD a0, s5, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 184(sp)
  LD s0, 192(sp)
  LD s1, 200(sp)
  LD s3, 208(sp)
  LD s7, 216(sp)
  LD s8, 224(sp)
  LD s9, 232(sp)
  LD s10, 240(sp)
  LD s11, 248(sp)
  LD s2, 264(sp)
  LD s4, 272(sp)
  LD s5, 280(sp)
  LD s6, 288(sp)
  ADDI sp, sp, 336
  JALR zero, 0(ra)
bb9:
  # implict jump to bb10
bb10:
  SLTI t4, zero, 1000
  SB t4, 0(sp)
  ADD s6, zero, zero
  ADD s7, zero, zero
  # implict jump to bb11
bb11:
  ADD s11, s7, zero
  ADD s8, s6, zero
  LB t4, 0(sp)
  BNE t4, zero, bb17
  # implict jump to bb12
bb12:
  ADD s3, s11, zero
  # implict jump to bb13
bb13:
  ADD t4, s3, zero
  SW t4, 152(sp)
  ADDIW s2, s8, 1
  # implict jump to bb14
bb14:
  SLTI s1, s2, 1000
  BNE s1, zero, bb16
  # implict jump to bb15
bb15:
  LW t4, 152(sp)
  ADD s5, t4, zero
  JAL zero, bb8
bb16:
  ADD s6, s2, zero
  LW t4, 152(sp)
  ADD s7, t4, zero
  JAL zero, bb11
bb17:
  # implict jump to bb18
bb18:
  LUI s10, 1
  ADDIW s10, s10, -96
  MULW s10, s8, s10
  LA s4, c
  ADD t4, s4, s10
  SD t4, 296(sp)
  ADD s4, zero, zero
  ADD s10, s11, zero
  # implict jump to bb19
bb19:
  ADD s11, s10, zero
  ADD s9, s4, zero
  SLLIW s1, s9, 2
  LD t4, 296(sp)
  ADD s1, t4, s1
  LW s1, 0(s1)
  ADDW t4, s11, s1
  SW t4, 160(sp)
  ADDIW s0, s9, 1
  # implict jump to bb20
bb20:
  SLTI s1, s0, 1000
  BNE s1, zero, bb22
  # implict jump to bb21
bb21:
  LW t4, 160(sp)
  ADD s3, t4, zero
  JAL zero, bb13
bb22:
  ADD s4, s0, zero
  LW t4, 160(sp)
  ADD s10, t4, zero
  JAL zero, bb19
bb23:
  # implict jump to bb24
bb24:
  SLTI t4, zero, 1000
  SB t4, 2(sp)
  ADD t4, zero, zero
  SW t4, 104(sp)
  # implict jump to bb25
bb25:
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LB t4, 2(sp)
  BNE t4, zero, bb29
  # implict jump to bb26
bb26:
  LW t3, 112(sp)
  ADDIW t4, t3, 1
  SW t4, 84(sp)
  # implict jump to bb27
bb27:
  LW t4, 84(sp)
  SLTI s5, t4, 1000
  BNE s5, zero, bb28
  JAL zero, bb6
bb28:
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  JAL zero, bb25
bb29:
  # implict jump to bb30
bb30:
  LUI s11, 1
  ADDIW s11, s11, -96
  LW t4, 112(sp)
  MULW s11, t4, s11
  LA s4, c
  ADD t4, s4, s11
  SD t4, 304(sp)
  LW t3, 112(sp)
  SLLIW t4, t3, 2
  SW t4, 172(sp)
  ADD t4, zero, zero
  SW t4, 108(sp)
  # implict jump to bb31
bb31:
  LW t4, 108(sp)
  ADD s11, t4, zero
  SLLIW s6, s11, 2
  LD t4, 304(sp)
  ADD s6, t4, s6
  LUI s7, 1
  ADDIW s7, s7, -96
  MULW s7, s11, s7
  LA s5, c
  ADD s5, s5, s7
  LW t4, 172(sp)
  ADD s5, s5, t4
  LW s5, 0(s5)
  SUBW s5, zero, s5
  SW s5, 0(s6)
  ADDIW t4, s11, 1
  SW t4, 80(sp)
  # implict jump to bb32
bb32:
  LW t4, 80(sp)
  SLTI s5, t4, 1000
  BNE s5, zero, bb33
  JAL zero, bb26
bb33:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  JAL zero, bb31
bb34:
  # implict jump to bb35
bb35:
  SLTI t4, zero, 1000
  SB t4, 1(sp)
  ADD t4, zero, zero
  SW t4, 116(sp)
  # implict jump to bb36
bb36:
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LB t4, 1(sp)
  BNE t4, zero, bb47
  # implict jump to bb37
bb37:
  LUI s5, 524288
  ADDIW s5, s5, -1
  ADD s5, zero, s5
  # implict jump to bb38
bb38:
  ADD t4, s5, zero
  SW t4, 68(sp)
  SLTI s8, zero, 1000
  BNE s8, zero, bb42
  # implict jump to bb39
bb39:
  LW t3, 88(sp)
  ADDIW t4, t3, 1
  SW t4, 156(sp)
  # implict jump to bb40
bb40:
  LW t4, 156(sp)
  SLTI s9, t4, 1000
  BNE s9, zero, bb41
  JAL zero, bb5
bb41:
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  JAL zero, bb36
bb42:
  # implict jump to bb43
bb43:
  LUI s8, 1
  ADDIW s8, s8, -96
  LW t4, 88(sp)
  MULW s8, t4, s8
  LA s9, c
  ADD t4, s9, s8
  SD t4, 256(sp)
  ADD t4, zero, zero
  SW t4, 24(sp)
  # implict jump to bb44
bb44:
  LW t4, 24(sp)
  ADD s9, t4, zero
  SLLIW s10, s9, 2
  LD t4, 256(sp)
  ADD s10, t4, s10
  LW t4, 68(sp)
  SW t4, 0(s10)
  ADDIW t4, s9, 1
  SW t4, 64(sp)
  # implict jump to bb45
bb45:
  LW t4, 64(sp)
  SLTI s9, t4, 1000
  BNE s9, zero, bb46
  JAL zero, bb39
bb46:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  JAL zero, bb44
bb47:
  LUI s6, 524288
  ADDIW s6, s6, -1
  ADD s6, zero, s6
  # implict jump to bb48
bb48:
  LUI s7, 1
  ADDIW s7, s7, -96
  LW t4, 88(sp)
  MULW s7, t4, s7
  LA s8, c
  ADD t4, s8, s7
  SD t4, 312(sp)
  ADD t4, zero, zero
  SW t4, 96(sp)
  ADD t4, s6, zero
  SW t4, 92(sp)
  # implict jump to bb49
bb49:
  LW t4, 92(sp)
  ADD s8, t4, zero
  LW t4, 96(sp)
  ADD s9, t4, zero
  SLLIW s10, s9, 2
  LD t4, 312(sp)
  ADD s10, t4, s10
  LW s10, 0(s10)
  BLT s10, s8, bb55
  # implict jump to bb50
bb50:
  # implict jump to bb51
bb51:
  ADD t4, s8, zero
  SW t4, 140(sp)
  ADDIW t4, s9, 1
  SW t4, 28(sp)
  # implict jump to bb52
bb52:
  LW t4, 28(sp)
  SLTI s8, t4, 1000
  BNE s8, zero, bb54
  # implict jump to bb53
bb53:
  LW t4, 140(sp)
  ADD s5, t4, zero
  JAL zero, bb38
bb54:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  JAL zero, bb49
bb55:
  ADD s8, s10, zero
  JAL zero, bb51
bb56:
  # implict jump to bb57
bb57:
  SLTI t4, zero, 1000
  SB t4, 4(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  ADD t4, zero, zero
  SW t4, 56(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb58
bb58:
  LW t4, 20(sp)
  ADD s11, t4, zero
  LW t4, 56(sp)
  ADD s10, t4, zero
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LB t4, 4(sp)
  BNE t4, zero, bb63
  # implict jump to bb59
bb59:
  # implict jump to bb60
bb60:
  ADD t4, s11, zero
  SW t4, 164(sp)
  ADD t4, s10, zero
  SW t4, 48(sp)
  LW t3, 16(sp)
  ADDIW t4, t3, 1
  SW t4, 36(sp)
  # implict jump to bb61
bb61:
  LW t4, 36(sp)
  SLTI s3, t4, 1000
  BNE s3, zero, bb62
  JAL zero, bb4
bb62:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb58
bb63:
  # implict jump to bb64
bb64:
  SLTI t4, zero, 1000
  SB t4, 5(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb65
bb65:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LB t4, 5(sp)
  BNE t4, zero, bb71
  # implict jump to bb66
bb66:
  ADD s9, zero, zero
  ADD s8, zero, zero
  # implict jump to bb67
bb67:
  ADD t4, s8, zero
  SW t4, 168(sp)
  ADD t4, s9, zero
  SW t4, 60(sp)
  LUI s3, 1
  ADDIW s3, s3, -96
  LW t4, 16(sp)
  MULW s3, t4, s3
  LA s4, c
  ADD s3, s4, s3
  LW t4, 52(sp)
  SLLIW s4, t4, 2
  ADD s3, s3, s4
  LW t4, 168(sp)
  SW t4, 0(s3)
  LW t3, 52(sp)
  ADDIW t4, t3, 1
  SW t4, 176(sp)
  # implict jump to bb68
bb68:
  LW t4, 176(sp)
  SLTI s3, t4, 1000
  BNE s3, zero, bb70
  # implict jump to bb69
bb69:
  LW t4, 60(sp)
  ADD s10, t4, zero
  LW t4, 168(sp)
  ADD s11, t4, zero
  JAL zero, bb60
bb70:
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  JAL zero, bb65
bb71:
  # implict jump to bb72
bb72:
  LUI s7, 1
  ADDIW s7, s7, -96
  LW t4, 16(sp)
  MULW s7, t4, s7
  LA s4, a
  ADD t4, s4, s7
  SD t4, 320(sp)
  LW t3, 52(sp)
  SLLIW t4, t3, 2
  SW t4, 132(sp)
  ADD t4, zero, zero
  SW t4, 76(sp)
  ADD t4, zero, zero
  SW t4, 72(sp)
  # implict jump to bb73
bb73:
  LW t4, 72(sp)
  ADD s7, t4, zero
  LW t4, 76(sp)
  ADD s4, t4, zero
  SLLIW s6, s4, 2
  LD t4, 320(sp)
  ADD s6, t4, s6
  LW s6, 0(s6)
  LUI s3, 1
  ADDIW s3, s3, -96
  MULW s3, s4, s3
  LA s5, b
  ADD s3, s5, s3
  LW t4, 132(sp)
  ADD s3, s3, t4
  LW s3, 0(s3)
  MULW s3, s6, s3
  ADDW t4, s7, s3
  SW t4, 136(sp)
  ADDIW t4, s4, 1
  SW t4, 148(sp)
  # implict jump to bb74
bb74:
  LW t4, 148(sp)
  SLTI s3, t4, 1000
  BNE s3, zero, bb76
  # implict jump to bb75
bb75:
  LW t4, 148(sp)
  ADD s9, t4, zero
  LW t4, 136(sp)
  ADD s8, t4, zero
  JAL zero, bb67
bb76:
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  JAL zero, bb73
bb77:
  # implict jump to bb78
bb78:
  SLTI t4, zero, 1000
  SB t4, 3(sp)
  ADD t4, zero, zero
  SW t4, 40(sp)
  # implict jump to bb79
bb79:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LB t4, 3(sp)
  BNE t4, zero, bb83
  # implict jump to bb80
bb80:
  LW t3, 44(sp)
  ADDIW t4, t3, 1
  SW t4, 128(sp)
  # implict jump to bb81
bb81:
  LW t4, 128(sp)
  SLTI s8, t4, 1000
  BNE s8, zero, bb82
  JAL zero, bb3
bb82:
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb79
bb83:
  # implict jump to bb84
bb84:
  LUI s11, 1
  ADDIW s11, s11, -96
  LW t4, 44(sp)
  MULW s11, t4, s11
  LA s10, b
  ADD t4, s10, s11
  SD t4, 328(sp)
  LW t3, 44(sp)
  SLLIW t4, t3, 2
  SW t4, 120(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  # implict jump to bb85
bb85:
  LW t4, 32(sp)
  ADD s11, t4, zero
  SLLIW s10, s11, 2
  LD t4, 328(sp)
  ADD s10, t4, s10
  LUI s9, 1
  ADDIW s9, s9, -96
  MULW s9, s11, s9
  LA s8, a
  ADD s8, s8, s9
  LW t4, 120(sp)
  ADD s8, s8, t4
  LW s8, 0(s8)
  SW s8, 0(s10)
  ADDIW t4, s11, 1
  SW t4, 124(sp)
  # implict jump to bb86
bb86:
  LW t4, 124(sp)
  SLTI s8, t4, 1000
  BNE s8, zero, bb87
  JAL zero, bb80
bb87:
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  JAL zero, bb85
bb88:
  LUI s0, 1
  ADDIW s0, s0, -96
  LW t4, 144(sp)
  MULW s0, t4, s0
  LA s1, a
  ADD s0, s1, s0
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  XORI s1, s0, 1000
  BNE s1, zero, bb90
  # implict jump to bb89
bb89:
  LW t4, 144(sp)
  ADDIW s1, t4, 1
  ADD t4, s1, zero
  SW t4, 100(sp)
  JAL zero, bb1
bb90:
  ADD a0, s0, zero
  LD ra, 184(sp)
  LD s0, 192(sp)
  LD s1, 200(sp)
  LD s3, 208(sp)
  LD s7, 216(sp)
  LD s8, 224(sp)
  LD s9, 232(sp)
  LD s10, 240(sp)
  LD s11, 248(sp)
  LD s2, 264(sp)
  LD s4, 272(sp)
  LD s5, 280(sp)
  LD s6, 288(sp)
  ADDI sp, sp, 336
  JALR zero, 0(ra)
