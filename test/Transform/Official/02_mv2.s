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
  ADDI sp, sp, -272
  SD ra, 160(sp)
  SD s0, 168(sp)
  SD s1, 176(sp)
  SD s2, 184(sp)
  SD s3, 192(sp)
  SD s4, 200(sp)
  SD s5, 208(sp)
  SD s6, 216(sp)
  SD s8, 224(sp)
  SD s9, 232(sp)
  SD s7, 240(sp)
  SD s10, 248(sp)
  SD s11, 256(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 128(sp)
  ADDI s2, zero, 0
  LW t4, 128(sp)
  BLT s2, t4, bb60
  # implict jump to bb1
bb1:
  ADDI s2, zero, 0
  LW t4, 128(sp)
  BLT s2, t4, bb55
  # implict jump to bb2
bb2:
  ADDI a0, zero, 59
  CALL _sysy_starttime
  ADDI s2, zero, 0
  SLTI s2, s2, 50
  BNE s2, zero, bb4
  # implict jump to bb3
bb3:
  ADDI a0, zero, 67
  CALL _sysy_stoptime
  LW t4, 128(sp)
  ADD a0, t4, zero
  LA s0, C
  ADD a1, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 160(sp)
  LD s0, 168(sp)
  LD s1, 176(sp)
  LD s2, 184(sp)
  LD s3, 192(sp)
  LD s4, 200(sp)
  LD s5, 208(sp)
  LD s6, 216(sp)
  LD s8, 224(sp)
  LD s9, 232(sp)
  LD s7, 240(sp)
  LD s10, 248(sp)
  LD s11, 256(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb4:
  # implict jump to bb5
bb5:
  ADD s2, zero, zero
  # implict jump to bb6
bb6:
  ADD t4, s2, zero
  SW t4, 44(sp)
  ADDI s8, zero, 0
  LW t4, 128(sp)
  BLT s8, t4, bb50
  # implict jump to bb7
bb7:
  LW t4, 128(sp)
  BLT zero, t4, bb34
  # implict jump to bb8
bb8:
  LW t4, 128(sp)
  BLT zero, t4, bb29
  # implict jump to bb9
bb9:
  LW t4, 128(sp)
  BLT zero, t4, bb13
  # implict jump to bb10
bb10:
  LW t4, 44(sp)
  ADDIW s9, t4, 1
  # implict jump to bb11
bb11:
  SLTI s0, s9, 50
  BNE s0, zero, bb12
  JAL zero, bb3
bb12:
  ADD s2, s9, zero
  JAL zero, bb6
bb13:
  ADDI s1, zero, 11
  # implict jump to bb14
bb14:
  ADD t4, s1, zero
  SW t4, 92(sp)
  ADD t4, zero, zero
  SW t4, 96(sp)
  ADD t4, zero, zero
  SW t4, 100(sp)
  # implict jump to bb15
bb15:
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t4, 96(sp)
  ADD s6, t4, zero
  LW t4, 92(sp)
  ADD s7, t4, zero
  LW t4, 128(sp)
  BLT zero, t4, bb20
  # implict jump to bb16
bb16:
  ADD s8, s7, zero
  ADD s10, s6, zero
  # implict jump to bb17
bb17:
  ADD t4, s10, zero
  SW t4, 60(sp)
  ADD t4, s8, zero
  SW t4, 64(sp)
  LW t3, 72(sp)
  ADDIW t4, t3, 1
  SW t4, 56(sp)
  # implict jump to bb18
bb18:
  LW t4, 56(sp)
  LW t3, 128(sp)
  BLT t4, t3, bb19
  JAL zero, bb10
bb19:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  JAL zero, bb15
bb20:
  # implict jump to bb21
bb21:
  ADD t4, s7, zero
  SW t4, 84(sp)
  ADD t4, s6, zero
  SW t4, 80(sp)
  ADD t4, zero, zero
  SW t4, 76(sp)
  # implict jump to bb22
bb22:
  LW t4, 76(sp)
  ADD s0, t4, zero
  LW t4, 80(sp)
  ADD s5, t4, zero
  LW t4, 84(sp)
  ADD s11, t4, zero
  LUI s6, 2
  ADDIW s6, s6, -152
  LW t4, 72(sp)
  MULW s6, t4, s6
  LA s7, A
  ADD s6, s7, s6
  SLLIW s7, s0, 2
  ADD s6, s6, s7
  LW s6, 0(s6)
  SLTIU s4, s6, 1
  BNE s4, zero, bb28
  # implict jump to bb23
bb23:
  LW t4, 72(sp)
  SLLIW s4, t4, 2
  LA s3, B
  ADD s3, s3, s4
  LW s4, 0(s3)
  LA s1, C
  ADD s1, s1, s7
  LW s1, 0(s1)
  MULW s1, s6, s1
  ADDW s1, s4, s1
  SW s1, 0(s3)
  ADD s1, s5, zero
  ADD s3, s11, zero
  # implict jump to bb24
bb24:
  ADD t4, s3, zero
  SW t4, 52(sp)
  ADD t4, s1, zero
  SW t4, 48(sp)
  ADDIW t4, s0, 1
  SW t4, 0(sp)
  # implict jump to bb25
bb25:
  LW t4, 0(sp)
  LW t3, 128(sp)
  BLT t4, t3, bb27
  # implict jump to bb26
bb26:
  LW t4, 52(sp)
  ADD s8, t4, zero
  LW t4, 48(sp)
  ADD s10, t4, zero
  JAL zero, bb17
bb27:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  JAL zero, bb22
bb28:
  LW t4, 72(sp)
  SLLIW s4, t4, 2
  LA s6, C
  ADD s4, s6, s4
  LW s4, 0(s4)
  MULW s4, s11, s4
  LA s6, C
  ADD s6, s6, s7
  LW s6, 0(s6)
  ADDW s4, s4, s6
  SUBW s5, s5, s4
  ADD s1, s5, zero
  ADD s3, s4, zero
  JAL zero, bb24
bb29:
  # implict jump to bb30
bb30:
  ADD t4, zero, zero
  SW t4, 68(sp)
  # implict jump to bb31
bb31:
  LW t4, 68(sp)
  ADD s1, t4, zero
  SLLIW s3, s1, 2
  LA s4, B
  ADD s3, s4, s3
  SW zero, 0(s3)
  ADDIW t4, s1, 1
  SW t4, 28(sp)
  # implict jump to bb32
bb32:
  LW t4, 28(sp)
  LW t3, 128(sp)
  BLT t4, t3, bb33
  JAL zero, bb9
bb33:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  JAL zero, bb31
bb34:
  ADDI s5, zero, 11
  # implict jump to bb35
bb35:
  ADD t4, s5, zero
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  # implict jump to bb36
bb36:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t4, 20(sp)
  ADD s11, t4, zero
  LW t4, 24(sp)
  ADD s8, t4, zero
  LW t4, 128(sp)
  BLT zero, t4, bb41
  # implict jump to bb37
bb37:
  ADD s5, s8, zero
  ADD s4, s11, zero
  # implict jump to bb38
bb38:
  ADD t4, s4, zero
  SW t4, 104(sp)
  ADD t4, s5, zero
  SW t4, 8(sp)
  LW t3, 12(sp)
  ADDIW t4, t3, 1
  SW t4, 120(sp)
  # implict jump to bb39
bb39:
  LW t4, 120(sp)
  LW t3, 128(sp)
  BLT t4, t3, bb40
  JAL zero, bb8
bb40:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb36
bb41:
  # implict jump to bb42
bb42:
  ADD t4, s8, zero
  SW t4, 40(sp)
  ADD t4, s11, zero
  SW t4, 36(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  # implict jump to bb43
bb43:
  LW t4, 32(sp)
  ADD s11, t4, zero
  LW t4, 36(sp)
  ADD s8, t4, zero
  LW t4, 40(sp)
  ADD s0, t4, zero
  LUI s7, 2
  ADDIW s7, s7, -152
  LW t4, 12(sp)
  MULW s7, t4, s7
  LA s10, A
  ADD s7, s10, s7
  SLLIW s10, s11, 2
  ADD s7, s7, s10
  LW s7, 0(s7)
  SLTIU s1, s7, 1
  BNE s1, zero, bb49
  # implict jump to bb44
bb44:
  LW t4, 12(sp)
  SLLIW s1, t4, 2
  LA s6, C
  ADD s1, s6, s1
  LW s6, 0(s1)
  LA s3, B
  ADD s3, s3, s10
  LW s3, 0(s3)
  MULW s3, s7, s3
  ADDW s3, s6, s3
  SW s3, 0(s1)
  ADD s1, s8, zero
  ADD s3, s0, zero
  # implict jump to bb45
bb45:
  ADD t4, s3, zero
  SW t4, 152(sp)
  ADD t4, s1, zero
  SW t4, 148(sp)
  ADDIW t4, s11, 1
  SW t4, 132(sp)
  # implict jump to bb46
bb46:
  LW t4, 132(sp)
  LW t3, 128(sp)
  BLT t4, t3, bb48
  # implict jump to bb47
bb47:
  LW t4, 152(sp)
  ADD s5, t4, zero
  LW t4, 148(sp)
  ADD s4, t4, zero
  JAL zero, bb38
bb48:
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  JAL zero, bb43
bb49:
  LW t4, 12(sp)
  SLLIW s6, t4, 2
  LA s7, B
  ADD s6, s7, s6
  LW s6, 0(s6)
  MULW s0, s0, s6
  LA s6, B
  ADD s6, s6, s10
  LW s6, 0(s6)
  ADDW s0, s0, s6
  SUBW s6, s8, s0
  ADD s1, s6, zero
  ADD s3, s0, zero
  JAL zero, bb45
bb50:
  # implict jump to bb51
bb51:
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb52
bb52:
  LW t4, 4(sp)
  ADD s5, t4, zero
  SLLIW s8, s5, 2
  LA s11, C
  ADD s8, s11, s8
  SW zero, 0(s8)
  ADDIW t4, s5, 1
  SW t4, 124(sp)
  # implict jump to bb53
bb53:
  LW t4, 124(sp)
  LW t3, 128(sp)
  BLT t4, t3, bb54
  JAL zero, bb7
bb54:
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  JAL zero, bb52
bb55:
  # implict jump to bb56
bb56:
  ADD t4, zero, zero
  SW t4, 88(sp)
  # implict jump to bb57
bb57:
  LW t4, 88(sp)
  ADD s5, t4, zero
  SLLIW s8, s5, 2
  LA s2, B
  ADD s2, s2, s8
  CALL getint
  ADD s8, a0, zero
  SW s8, 0(s2)
  ADDIW t4, s5, 1
  SW t4, 116(sp)
  # implict jump to bb58
bb58:
  LW t4, 116(sp)
  LW t3, 128(sp)
  BLT t4, t3, bb59
  JAL zero, bb2
bb59:
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  JAL zero, bb57
bb60:
  # implict jump to bb61
bb61:
  ADD t4, zero, zero
  SW t4, 140(sp)
  # implict jump to bb62
bb62:
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  ADDI s2, zero, 0
  LW t4, 128(sp)
  BLT s2, t4, bb66
  # implict jump to bb63
bb63:
  LW t3, 136(sp)
  ADDIW t4, t3, 1
  SW t4, 112(sp)
  # implict jump to bb64
bb64:
  LW t4, 112(sp)
  LW t3, 128(sp)
  BLT t4, t3, bb65
  JAL zero, bb1
bb65:
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  JAL zero, bb62
bb66:
  # implict jump to bb67
bb67:
  ADD t4, zero, zero
  SW t4, 144(sp)
  # implict jump to bb68
bb68:
  LW t4, 144(sp)
  ADD s2, t4, zero
  LUI s5, 2
  ADDIW s5, s5, -152
  LW t4, 136(sp)
  MULW s5, t4, s5
  LA s8, A
  ADD s5, s8, s5
  SLLIW s8, s2, 2
  ADD s5, s5, s8
  CALL getint
  ADD s8, a0, zero
  SW s8, 0(s5)
  ADDIW t4, s2, 1
  SW t4, 108(sp)
  # implict jump to bb69
bb69:
  LW t4, 108(sp)
  LW t3, 128(sp)
  BLT t4, t3, bb70
  JAL zero, bb63
bb70:
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  JAL zero, bb68
mv:
  ADDI sp, sp, -144
  SD s4, 8(sp)
  SD s11, 16(sp)
  SD ra, 24(sp)
  SD s0, 32(sp)
  SD s1, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  SD s10, 104(sp)
  ADD t4, a0, zero
  SW t4, 0(sp)
  ADD t4, a1, zero
  SD t4, 112(sp)
  ADD t4, a2, zero
  SD t4, 120(sp)
  ADD t4, a3, zero
  SD t4, 128(sp)
  LW t4, 0(sp)
  BLT zero, t4, bb90
  # implict jump to bb72
bb72:
  LW t4, 0(sp)
  BLT zero, t4, bb74
  # implict jump to bb73
bb73:
  LD s4, 8(sp)
  LD s11, 16(sp)
  LD ra, 24(sp)
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  LD s10, 104(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb74:
  ADDI s8, zero, 11
  # implict jump to bb75
bb75:
  ADD s9, zero, zero
  ADD s10, zero, zero
  # implict jump to bb76
bb76:
  ADD s11, s10, zero
  ADD t0, s9, zero
  ADD t1, s8, zero
  LW t4, 0(sp)
  BLT zero, t4, bb81
  # implict jump to bb77
bb77:
  ADD t2, t1, zero
  ADD a4, t0, zero
  # implict jump to bb78
bb78:
  ADD s2, a4, zero
  ADD s3, t2, zero
  ADDIW s4, s11, 1
  # implict jump to bb79
bb79:
  LW t4, 0(sp)
  BLT s4, t4, bb80
  JAL zero, bb73
bb80:
  ADD s8, s3, zero
  ADD s9, s2, zero
  ADD s10, s4, zero
  JAL zero, bb76
bb81:
  # implict jump to bb82
bb82:
  ADD a5, zero, zero
  # implict jump to bb83
bb83:
  ADD a6, a5, zero
  ADD a7, t0, zero
  ADD t6, t1, zero
  LUI a3, 2
  ADDIW a3, a3, -152
  MULW a3, s11, a3
  LD t4, 112(sp)
  ADD a3, t4, a3
  SLLIW a2, a6, 2
  ADD a3, a3, a2
  LW a1, 0(a3)
  SLTIU a1, a1, 1
  BNE a1, zero, bb89
  # implict jump to bb84
bb84:
  SLLIW a1, s11, 2
  LD t4, 128(sp)
  ADD a1, t4, a1
  LW a0, 0(a1)
  LW a3, 0(a3)
  LD t4, 120(sp)
  ADD s7, t4, a2
  LW s7, 0(s7)
  MULW s7, a3, s7
  ADDW s7, a0, s7
  SW s7, 0(a1)
  ADD s7, a7, zero
  ADD a0, t6, zero
  # implict jump to bb85
bb85:
  ADD s6, a0, zero
  ADD s1, s7, zero
  ADDIW s0, a6, 1
  # implict jump to bb86
bb86:
  LW t4, 0(sp)
  BLT s0, t4, bb88
  # implict jump to bb87
bb87:
  ADD t2, s6, zero
  ADD a4, s1, zero
  JAL zero, bb78
bb88:
  ADD t1, s6, zero
  ADD t0, s1, zero
  ADD a5, s0, zero
  JAL zero, bb83
bb89:
  SLLIW a1, s11, 2
  LD t4, 120(sp)
  ADD a1, t4, a1
  LW a1, 0(a1)
  MULW a1, t6, a1
  LD t4, 120(sp)
  ADD a2, t4, a2
  LW a2, 0(a2)
  ADDW a1, a1, a2
  SUBW a2, a7, a1
  ADD s7, a2, zero
  ADD a0, a1, zero
  JAL zero, bb85
bb90:
  # implict jump to bb91
bb91:
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb92
bb92:
  LW t4, 4(sp)
  ADD s8, t4, zero
  SLLIW s9, s8, 2
  LD t4, 128(sp)
  ADD s9, t4, s9
  SW zero, 0(s9)
  ADDIW s5, s8, 1
  # implict jump to bb93
bb93:
  LW t4, 0(sp)
  BLT s5, t4, bb94
  JAL zero, bb72
bb94:
  ADD t4, s5, zero
  SW t4, 4(sp)
  JAL zero, bb92
