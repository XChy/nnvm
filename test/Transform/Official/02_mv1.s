.global main
.global mv
.section .bss
B:
.space 8040
C:
.space 8040
A:
.space 16160400


.section .data



N:
.word 0x000007da
x:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -304
  SD ra, 168(sp)
  SD s0, 176(sp)
  SD s1, 184(sp)
  SD s2, 192(sp)
  SD s7, 200(sp)
  SD s6, 208(sp)
  SD s3, 216(sp)
  SD s4, 224(sp)
  SD s5, 232(sp)
  SD s8, 248(sp)
  SD s10, 256(sp)
  SD s11, 264(sp)
  SD s9, 272(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 148(sp)
  ADDI s11, zero, 0
  LW t4, 148(sp)
  BLT s11, t4, bb60
  # implict jump to bb1
bb1:
  ADDI s5, zero, 0
  LW t4, 148(sp)
  BLT s5, t4, bb55
  # implict jump to bb2
bb2:
  ADDI a0, zero, 59
  CALL _sysy_starttime
  ADDI s5, zero, 0
  SLTI s5, s5, 50
  BNE s5, zero, bb4
  # implict jump to bb3
bb3:
  ADDI a0, zero, 67
  CALL _sysy_stoptime
  LW t4, 148(sp)
  ADD a0, t4, zero
  LA s0, C
  ADD a1, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 168(sp)
  LD s0, 176(sp)
  LD s1, 184(sp)
  LD s2, 192(sp)
  LD s7, 200(sp)
  LD s6, 208(sp)
  LD s3, 216(sp)
  LD s4, 224(sp)
  LD s5, 232(sp)
  LD s8, 248(sp)
  LD s10, 256(sp)
  LD s11, 264(sp)
  LD s9, 272(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
bb4:
  # implict jump to bb5
bb5:
  ADDI t4, zero, 0
  SW t4, 116(sp)
  ADD s5, zero, zero
  # implict jump to bb6
bb6:
  ADD t4, s5, zero
  SW t4, 12(sp)
  LW t4, 116(sp)
  LW t3, 148(sp)
  BLT t4, t3, bb50
  # implict jump to bb7
bb7:
  LW t4, 148(sp)
  BLT zero, t4, bb34
  # implict jump to bb8
bb8:
  LW t4, 148(sp)
  BLT zero, t4, bb29
  # implict jump to bb9
bb9:
  LW t4, 148(sp)
  BLT zero, t4, bb13
  # implict jump to bb10
bb10:
  LW t4, 12(sp)
  ADDIW s9, t4, 1
  # implict jump to bb11
bb11:
  SLTI s0, s9, 50
  BNE s0, zero, bb12
  JAL zero, bb3
bb12:
  ADD s5, s9, zero
  JAL zero, bb6
bb13:
  ADDI s1, zero, 11
  # implict jump to bb14
bb14:
  ADD t4, s1, zero
  SW t4, 96(sp)
  ADD t4, zero, zero
  SW t4, 100(sp)
  ADD t4, zero, zero
  SW t4, 128(sp)
  # implict jump to bb15
bb15:
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  LW t4, 100(sp)
  ADD s6, t4, zero
  LW t4, 96(sp)
  ADD s7, t4, zero
  LW t4, 148(sp)
  BLT zero, t4, bb20
  # implict jump to bb16
bb16:
  ADD s8, s7, zero
  ADD s10, s6, zero
  # implict jump to bb17
bb17:
  ADD t4, s10, zero
  SW t4, 72(sp)
  ADD t4, s8, zero
  SW t4, 76(sp)
  LW t3, 84(sp)
  ADDIW t4, t3, 1
  SW t4, 68(sp)
  # implict jump to bb18
bb18:
  LW t4, 68(sp)
  LW t3, 148(sp)
  BLT t4, t3, bb19
  JAL zero, bb10
bb19:
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  JAL zero, bb15
bb20:
  # implict jump to bb21
bb21:
  LUI s11, 2
  ADDIW s11, s11, -152
  LW t4, 84(sp)
  MULW s11, t4, s11
  LA s0, A
  ADD t4, s0, s11
  SD t4, 240(sp)
  ADD t4, s7, zero
  SW t4, 140(sp)
  ADD t4, s6, zero
  SW t4, 44(sp)
  ADD t4, zero, zero
  SW t4, 88(sp)
  # implict jump to bb22
bb22:
  LW t4, 88(sp)
  ADD s11, t4, zero
  LW t4, 44(sp)
  ADD s4, t4, zero
  LW t4, 140(sp)
  ADD s7, t4, zero
  SLLIW s6, s11, 2
  LD t4, 240(sp)
  ADD s0, t4, s6
  LW s0, 0(s0)
  SLTIU s3, s0, 1
  BNE s3, zero, bb28
  # implict jump to bb23
bb23:
  LW t4, 84(sp)
  SLLIW s3, t4, 2
  LA s2, B
  ADD s2, s2, s3
  LW s3, 0(s2)
  LA s1, C
  ADD s1, s1, s6
  LW s1, 0(s1)
  MULW s0, s0, s1
  ADDW s0, s3, s0
  SW s0, 0(s2)
  ADD s0, s4, zero
  ADD s1, s7, zero
  # implict jump to bb24
bb24:
  ADD t4, s1, zero
  SW t4, 64(sp)
  ADD t4, s0, zero
  SW t4, 144(sp)
  ADDIW t4, s11, 1
  SW t4, 0(sp)
  # implict jump to bb25
bb25:
  LW t4, 0(sp)
  LW t3, 148(sp)
  BLT t4, t3, bb27
  # implict jump to bb26
bb26:
  LW t4, 64(sp)
  ADD s8, t4, zero
  LW t4, 144(sp)
  ADD s10, t4, zero
  JAL zero, bb17
bb27:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  JAL zero, bb22
bb28:
  LW t4, 84(sp)
  SLLIW s2, t4, 2
  LA s3, C
  ADD s2, s3, s2
  LW s2, 0(s2)
  MULW s2, s7, s2
  LA s3, C
  ADD s3, s3, s6
  LW s3, 0(s3)
  ADDW s2, s2, s3
  SUBW s3, s4, s2
  ADD s0, s3, zero
  ADD s1, s2, zero
  JAL zero, bb24
bb29:
  # implict jump to bb30
bb30:
  ADD t4, zero, zero
  SW t4, 80(sp)
  # implict jump to bb31
bb31:
  LW t4, 80(sp)
  ADD s1, t4, zero
  SLLIW s2, s1, 2
  LA s3, B
  ADD s2, s3, s2
  SW zero, 0(s2)
  ADDIW t4, s1, 1
  SW t4, 40(sp)
  # implict jump to bb32
bb32:
  LW t4, 40(sp)
  LW t3, 148(sp)
  BLT t4, t3, bb33
  JAL zero, bb9
bb33:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  JAL zero, bb31
bb34:
  ADDI s6, zero, 11
  # implict jump to bb35
bb35:
  ADD t4, s6, zero
  SW t4, 36(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  ADD t4, zero, zero
  SW t4, 28(sp)
  # implict jump to bb36
bb36:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t4, 32(sp)
  ADD s11, t4, zero
  LW t4, 36(sp)
  ADD s7, t4, zero
  LW t4, 148(sp)
  BLT zero, t4, bb41
  # implict jump to bb37
bb37:
  ADD s6, s7, zero
  ADD s8, s11, zero
  # implict jump to bb38
bb38:
  ADD t4, s8, zero
  SW t4, 4(sp)
  ADD t4, s6, zero
  SW t4, 20(sp)
  LW t3, 24(sp)
  ADDIW t4, t3, 1
  SW t4, 132(sp)
  # implict jump to bb39
bb39:
  LW t4, 132(sp)
  LW t3, 148(sp)
  BLT t4, t3, bb40
  JAL zero, bb8
bb40:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  JAL zero, bb36
bb41:
  # implict jump to bb42
bb42:
  LUI s2, 2
  ADDIW s2, s2, -152
  LW t4, 24(sp)
  MULW s2, t4, s2
  LA s0, A
  ADD t4, s0, s2
  SD t4, 280(sp)
  ADD t4, s7, zero
  SW t4, 60(sp)
  ADD t4, s11, zero
  SW t4, 56(sp)
  ADD t4, zero, zero
  SW t4, 52(sp)
  # implict jump to bb43
bb43:
  LW t4, 52(sp)
  ADD s11, t4, zero
  LW t4, 56(sp)
  ADD s7, t4, zero
  LW t4, 60(sp)
  ADD s2, t4, zero
  SLLIW s0, s11, 2
  LD t4, 280(sp)
  ADD s1, t4, s0
  LW s1, 0(s1)
  SLTIU s10, s1, 1
  BNE s10, zero, bb49
  # implict jump to bb44
bb44:
  LW t4, 24(sp)
  SLLIW s10, t4, 2
  LA s3, C
  ADD s3, s3, s10
  LW s10, 0(s3)
  LA s4, B
  ADD s4, s4, s0
  LW s4, 0(s4)
  MULW s1, s1, s4
  ADDW s1, s10, s1
  SW s1, 0(s3)
  ADD s1, s7, zero
  ADD s3, s2, zero
  # implict jump to bb45
bb45:
  ADD t4, s3, zero
  SW t4, 92(sp)
  ADD t4, s1, zero
  SW t4, 152(sp)
  ADDIW t4, s11, 1
  SW t4, 136(sp)
  # implict jump to bb46
bb46:
  LW t4, 136(sp)
  LW t3, 148(sp)
  BLT t4, t3, bb48
  # implict jump to bb47
bb47:
  LW t4, 92(sp)
  ADD s6, t4, zero
  LW t4, 152(sp)
  ADD s8, t4, zero
  JAL zero, bb38
bb48:
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  JAL zero, bb43
bb49:
  LW t4, 24(sp)
  SLLIW s4, t4, 2
  LA s10, B
  ADD s4, s10, s4
  LW s4, 0(s4)
  MULW s2, s2, s4
  LA s4, B
  ADD s0, s4, s0
  LW s0, 0(s0)
  ADDW s0, s2, s0
  SUBW s2, s7, s0
  ADD s1, s2, zero
  ADD s3, s0, zero
  JAL zero, bb45
bb50:
  # implict jump to bb51
bb51:
  ADD t4, zero, zero
  SW t4, 16(sp)
  # implict jump to bb52
bb52:
  LW t4, 16(sp)
  ADD s7, t4, zero
  SLLIW s11, s7, 2
  LA s6, C
  ADD s6, s6, s11
  SW zero, 0(s6)
  ADDIW t4, s7, 1
  SW t4, 124(sp)
  # implict jump to bb53
bb53:
  LW t4, 124(sp)
  LW t3, 148(sp)
  BLT t4, t3, bb54
  JAL zero, bb7
bb54:
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb52
bb55:
  # implict jump to bb56
bb56:
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb57
bb57:
  LW t4, 8(sp)
  ADD s7, t4, zero
  SLLIW s11, s7, 2
  LA s5, B
  ADD s5, s5, s11
  CALL getint
  ADD s11, a0, zero
  SW s11, 0(s5)
  ADDIW t4, s7, 1
  SW t4, 112(sp)
  # implict jump to bb58
bb58:
  LW t4, 112(sp)
  LW t3, 148(sp)
  BLT t4, t3, bb59
  JAL zero, bb2
bb59:
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  JAL zero, bb57
bb60:
  # implict jump to bb61
bb61:
  ADDI t4, zero, 0
  SW t4, 104(sp)
  ADD t4, zero, zero
  SW t4, 160(sp)
  # implict jump to bb62
bb62:
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  LW t4, 104(sp)
  LW t3, 148(sp)
  BLT t4, t3, bb66
  # implict jump to bb63
bb63:
  LW t3, 156(sp)
  ADDIW t4, t3, 1
  SW t4, 108(sp)
  # implict jump to bb64
bb64:
  LW t4, 108(sp)
  LW t3, 148(sp)
  BLT t4, t3, bb65
  JAL zero, bb1
bb65:
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  JAL zero, bb62
bb66:
  # implict jump to bb67
bb67:
  LUI s11, 2
  ADDIW s11, s11, -152
  LW t4, 156(sp)
  MULW s11, t4, s11
  LA s7, A
  ADD t4, s7, s11
  SD t4, 288(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  # implict jump to bb68
bb68:
  LW t4, 48(sp)
  ADD s11, t4, zero
  SLLIW s7, s11, 2
  LD t4, 288(sp)
  ADD s7, t4, s7
  CALL getint
  ADD s5, a0, zero
  SW s5, 0(s7)
  ADDIW t4, s11, 1
  SW t4, 120(sp)
  # implict jump to bb69
bb69:
  LW t4, 120(sp)
  LW t3, 148(sp)
  BLT t4, t3, bb70
  JAL zero, bb63
bb70:
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb68
mv:
  ADDI sp, sp, -144
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  SD s10, 104(sp)
  SD s11, 112(sp)
  ADD t4, a0, zero
  SW t4, 0(sp)
  ADD t4, a1, zero
  SD t4, 120(sp)
  ADD t4, a2, zero
  SD t4, 128(sp)
  ADD t4, a3, zero
  SD t4, 136(sp)
  LW t4, 0(sp)
  BLT zero, t4, bb90
  # implict jump to bb72
bb72:
  LW t4, 0(sp)
  BLT zero, t4, bb74
  # implict jump to bb73
bb73:
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  LD s10, 104(sp)
  LD s11, 112(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb74:
  ADDI s9, zero, 11
  # implict jump to bb75
bb75:
  ADD s10, zero, zero
  ADD s11, zero, zero
  # implict jump to bb76
bb76:
  ADD t0, s11, zero
  ADD t1, s10, zero
  ADD t2, s9, zero
  LW t4, 0(sp)
  BLT zero, t4, bb81
  # implict jump to bb77
bb77:
  ADD a4, t2, zero
  ADD a5, t1, zero
  # implict jump to bb78
bb78:
  ADD s4, a5, zero
  ADD s6, a4, zero
  ADDIW s2, t0, 1
  # implict jump to bb79
bb79:
  LW t4, 0(sp)
  BLT s2, t4, bb80
  JAL zero, bb73
bb80:
  ADD s9, s6, zero
  ADD s10, s4, zero
  ADD s11, s2, zero
  JAL zero, bb76
bb81:
  # implict jump to bb82
bb82:
  LUI a6, 2
  ADDIW a6, a6, -152
  MULW a6, t0, a6
  LD t4, 120(sp)
  ADD s7, t4, a6
  ADD a6, zero, zero
  # implict jump to bb83
bb83:
  ADD a7, a6, zero
  ADD t6, t1, zero
  ADD a3, t2, zero
  SLLIW a2, a7, 2
  ADD a1, s7, a2
  LW a0, 0(a1)
  SLTIU a0, a0, 1
  BNE a0, zero, bb89
  # implict jump to bb84
bb84:
  SLLIW a0, t0, 2
  LD t4, 136(sp)
  ADD a0, t4, a0
  LW s8, 0(a0)
  LW a1, 0(a1)
  LD t4, 128(sp)
  ADD s3, t4, a2
  LW s3, 0(s3)
  MULW s3, a1, s3
  ADDW s3, s8, s3
  SW s3, 0(a0)
  ADD s3, t6, zero
  ADD s8, a3, zero
  # implict jump to bb85
bb85:
  ADD s1, s8, zero
  ADD s5, s3, zero
  ADDIW s0, a7, 1
  # implict jump to bb86
bb86:
  LW t4, 0(sp)
  BLT s0, t4, bb88
  # implict jump to bb87
bb87:
  ADD a4, s1, zero
  ADD a5, s5, zero
  JAL zero, bb78
bb88:
  ADD t2, s1, zero
  ADD t1, s5, zero
  ADD a6, s0, zero
  JAL zero, bb83
bb89:
  SLLIW a0, t0, 2
  LD t4, 128(sp)
  ADD a0, t4, a0
  LW a0, 0(a0)
  MULW a0, a3, a0
  LD t4, 128(sp)
  ADD a1, t4, a2
  LW a1, 0(a1)
  ADDW a0, a0, a1
  SUBW a1, t6, a0
  ADD s3, a1, zero
  ADD s8, a0, zero
  JAL zero, bb85
bb90:
  # implict jump to bb91
bb91:
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb92
bb92:
  LW t4, 4(sp)
  ADD s9, t4, zero
  SLLIW s10, s9, 2
  LD t4, 136(sp)
  ADD s10, t4, s10
  SW zero, 0(s10)
  ADDIW t4, s9, 1
  SW t4, 8(sp)
  # implict jump to bb93
bb93:
  LW t4, 8(sp)
  LW t3, 0(sp)
  BLT t4, t3, bb94
  JAL zero, bb72
bb94:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  JAL zero, bb92
