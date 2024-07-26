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
  SD s6, 192(sp)
  SD s7, 200(sp)
  SD s3, 208(sp)
  SD s4, 216(sp)
  SD s5, 224(sp)
  SD s8, 232(sp)
  SD s9, 240(sp)
  SD s10, 248(sp)
  SD s11, 256(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 124(sp)
  ADDI s9, zero, 0
  LW t4, 124(sp)
  BLT s9, t4, bb52
  # implict jump to bb1
bb1:
  ADDI s6, zero, 0
  LW t4, 124(sp)
  BLT s6, t4, bb48
  # implict jump to bb2
bb2:
  ADDI a0, zero, 59
  CALL _sysy_starttime
  ADDI s6, zero, 0
  SLTI s6, s6, 50
  BNE s6, zero, bb4
  # implict jump to bb3
bb3:
  ADDI a0, zero, 67
  CALL _sysy_stoptime
  LW t4, 124(sp)
  ADD a0, t4, zero
  LA s0, C
  ADD a1, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 160(sp)
  LD s0, 168(sp)
  LD s1, 176(sp)
  LD s2, 184(sp)
  LD s6, 192(sp)
  LD s7, 200(sp)
  LD s3, 208(sp)
  LD s4, 216(sp)
  LD s5, 224(sp)
  LD s8, 232(sp)
  LD s9, 240(sp)
  LD s10, 248(sp)
  LD s11, 256(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb4:
  ADD s6, zero, zero
  # implict jump to bb5
bb5:
  ADD t4, s6, zero
  SW t4, 44(sp)
  ADDI s11, zero, 0
  LW t4, 124(sp)
  BLT s11, t4, bb44
  # implict jump to bb6
bb6:
  LW t4, 124(sp)
  BLT zero, t4, bb30
  # implict jump to bb7
bb7:
  LW t4, 124(sp)
  BLT zero, t4, bb26
  # implict jump to bb8
bb8:
  LW t4, 124(sp)
  BLT zero, t4, bb12
  # implict jump to bb9
bb9:
  LW t4, 44(sp)
  ADDIW s8, t4, 1
  # implict jump to bb10
bb10:
  SLTI s0, s8, 50
  BNE s0, zero, bb11
  JAL zero, bb3
bb11:
  ADD s6, s8, zero
  JAL zero, bb5
bb12:
  ADDI t4, zero, 11
  SW t4, 92(sp)
  ADD t4, zero, zero
  SW t4, 96(sp)
  ADD t4, zero, zero
  SW t4, 100(sp)
  # implict jump to bb13
bb13:
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t4, 96(sp)
  ADD s5, t4, zero
  LW t4, 92(sp)
  ADD s7, t4, zero
  LW t4, 124(sp)
  BLT zero, t4, bb18
  # implict jump to bb14
bb14:
  ADD s9, s7, zero
  ADD s10, s5, zero
  # implict jump to bb15
bb15:
  ADD t4, s10, zero
  SW t4, 60(sp)
  ADD t4, s9, zero
  SW t4, 64(sp)
  LW t3, 72(sp)
  ADDIW t4, t3, 1
  SW t4, 56(sp)
  # implict jump to bb16
bb16:
  LW t4, 56(sp)
  LW t3, 124(sp)
  BLT t4, t3, bb17
  JAL zero, bb9
bb17:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  JAL zero, bb13
bb18:
  ADD t4, s7, zero
  SW t4, 84(sp)
  ADD t4, s5, zero
  SW t4, 80(sp)
  ADD t4, zero, zero
  SW t4, 76(sp)
  # implict jump to bb19
bb19:
  LW t4, 76(sp)
  ADD s0, t4, zero
  LW t4, 80(sp)
  ADD s4, t4, zero
  LW t4, 84(sp)
  ADD s11, t4, zero
  LUI s5, 2
  ADDIW s5, s5, -152
  LW t4, 72(sp)
  MULW s5, t4, s5
  LA s7, A
  ADD s5, s7, s5
  SLLIW s7, s0, 2
  ADD s5, s5, s7
  LW s5, 0(s5)
  SLTIU s3, s5, 1
  BNE s3, zero, bb25
  # implict jump to bb20
bb20:
  LW t4, 72(sp)
  SLLIW s3, t4, 2
  LA s2, B
  ADD s2, s2, s3
  LW s3, 0(s2)
  LA s1, C
  ADD s1, s1, s7
  LW s1, 0(s1)
  MULW s1, s5, s1
  ADDW s1, s3, s1
  SW s1, 0(s2)
  ADD s1, s4, zero
  ADD s2, s11, zero
  # implict jump to bb21
bb21:
  ADD t4, s2, zero
  SW t4, 52(sp)
  ADD t4, s1, zero
  SW t4, 48(sp)
  ADDIW t4, s0, 1
  SW t4, 0(sp)
  # implict jump to bb22
bb22:
  LW t4, 0(sp)
  LW t3, 124(sp)
  BLT t4, t3, bb24
  # implict jump to bb23
bb23:
  LW t4, 52(sp)
  ADD s9, t4, zero
  LW t4, 48(sp)
  ADD s10, t4, zero
  JAL zero, bb15
bb24:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  JAL zero, bb19
bb25:
  LW t4, 72(sp)
  SLLIW s3, t4, 2
  LA s5, C
  ADD s3, s5, s3
  LW s3, 0(s3)
  MULW s3, s11, s3
  LA s5, C
  ADD s5, s5, s7
  LW s5, 0(s5)
  ADDW s3, s3, s5
  SUBW s4, s4, s3
  ADD s1, s4, zero
  ADD s2, s3, zero
  JAL zero, bb21
bb26:
  ADD t4, zero, zero
  SW t4, 68(sp)
  # implict jump to bb27
bb27:
  LW t4, 68(sp)
  ADD s1, t4, zero
  SLLIW s2, s1, 2
  LA s3, B
  ADD s2, s3, s2
  SW zero, 0(s2)
  ADDIW t4, s1, 1
  SW t4, 28(sp)
  # implict jump to bb28
bb28:
  LW t4, 28(sp)
  LW t3, 124(sp)
  BLT t4, t3, bb29
  JAL zero, bb8
bb29:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  JAL zero, bb27
bb30:
  ADDI t4, zero, 11
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  # implict jump to bb31
bb31:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t4, 20(sp)
  ADD s11, t4, zero
  LW t4, 24(sp)
  ADD s10, t4, zero
  LW t4, 124(sp)
  BLT zero, t4, bb36
  # implict jump to bb32
bb32:
  ADD s9, s10, zero
  ADD s5, s11, zero
  # implict jump to bb33
bb33:
  ADD t4, s5, zero
  SW t4, 148(sp)
  ADD t4, s9, zero
  SW t4, 8(sp)
  LW t3, 12(sp)
  ADDIW t4, t3, 1
  SW t4, 144(sp)
  # implict jump to bb34
bb34:
  LW t4, 144(sp)
  LW t3, 124(sp)
  BLT t4, t3, bb35
  JAL zero, bb7
bb35:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb31
bb36:
  ADD t4, s10, zero
  SW t4, 40(sp)
  ADD t4, s11, zero
  SW t4, 36(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  # implict jump to bb37
bb37:
  LW t4, 32(sp)
  ADD s11, t4, zero
  LW t4, 36(sp)
  ADD s10, t4, zero
  LW t4, 40(sp)
  ADD s7, t4, zero
  LUI s1, 2
  ADDIW s1, s1, -152
  LW t4, 12(sp)
  MULW s1, t4, s1
  LA s0, A
  ADD s0, s0, s1
  SLLIW s1, s11, 2
  ADD s0, s0, s1
  LW s0, 0(s0)
  SLTIU s2, s0, 1
  BNE s2, zero, bb43
  # implict jump to bb38
bb38:
  LW t4, 12(sp)
  SLLIW s2, t4, 2
  LA s4, C
  ADD s2, s4, s2
  LW s4, 0(s2)
  LA s3, B
  ADD s3, s3, s1
  LW s3, 0(s3)
  MULW s0, s0, s3
  ADDW s0, s4, s0
  SW s0, 0(s2)
  ADD s0, s10, zero
  ADD s2, s7, zero
  # implict jump to bb39
bb39:
  ADD t4, s2, zero
  SW t4, 128(sp)
  ADD t4, s0, zero
  SW t4, 104(sp)
  ADDIW t4, s11, 1
  SW t4, 120(sp)
  # implict jump to bb40
bb40:
  LW t4, 120(sp)
  LW t3, 124(sp)
  BLT t4, t3, bb42
  # implict jump to bb41
bb41:
  LW t4, 128(sp)
  ADD s9, t4, zero
  LW t4, 104(sp)
  ADD s5, t4, zero
  JAL zero, bb33
bb42:
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  JAL zero, bb37
bb43:
  LW t4, 12(sp)
  SLLIW s3, t4, 2
  LA s4, B
  ADD s3, s4, s3
  LW s3, 0(s3)
  MULW s3, s7, s3
  LA s4, B
  ADD s1, s4, s1
  LW s1, 0(s1)
  ADDW s1, s3, s1
  SUBW s3, s10, s1
  ADD s0, s3, zero
  ADD s2, s1, zero
  JAL zero, bb39
bb44:
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb45
bb45:
  LW t4, 4(sp)
  ADD s9, t4, zero
  SLLIW s11, s9, 2
  LA s10, C
  ADD s10, s10, s11
  SW zero, 0(s10)
  ADDIW t4, s9, 1
  SW t4, 88(sp)
  # implict jump to bb46
bb46:
  LW t4, 88(sp)
  LW t3, 124(sp)
  BLT t4, t3, bb47
  JAL zero, bb6
bb47:
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  JAL zero, bb45
bb48:
  ADD t4, zero, zero
  SW t4, 152(sp)
  # implict jump to bb49
bb49:
  LW t4, 152(sp)
  ADD s9, t4, zero
  SLLIW s11, s9, 2
  LA s6, B
  ADD s6, s6, s11
  CALL getint
  ADD s11, a0, zero
  SW s11, 0(s6)
  ADDIW t4, s9, 1
  SW t4, 116(sp)
  # implict jump to bb50
bb50:
  LW t4, 116(sp)
  LW t3, 124(sp)
  BLT t4, t3, bb51
  JAL zero, bb2
bb51:
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  JAL zero, bb49
bb52:
  ADD t4, zero, zero
  SW t4, 136(sp)
  # implict jump to bb53
bb53:
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  ADDI s9, zero, 0
  LW t4, 124(sp)
  BLT s9, t4, bb57
  # implict jump to bb54
bb54:
  LW t3, 132(sp)
  ADDIW t4, t3, 1
  SW t4, 112(sp)
  # implict jump to bb55
bb55:
  LW t4, 112(sp)
  LW t3, 124(sp)
  BLT t4, t3, bb56
  JAL zero, bb1
bb56:
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  JAL zero, bb53
bb57:
  ADD t4, zero, zero
  SW t4, 140(sp)
  # implict jump to bb58
bb58:
  LW t4, 140(sp)
  ADD s9, t4, zero
  LUI s11, 2
  ADDIW s11, s11, -152
  LW t4, 132(sp)
  MULW s11, t4, s11
  LA s6, A
  ADD s6, s6, s11
  SLLIW s11, s9, 2
  ADD s6, s6, s11
  CALL getint
  ADD s11, a0, zero
  SW s11, 0(s6)
  ADDIW t4, s9, 1
  SW t4, 108(sp)
  # implict jump to bb59
bb59:
  LW t4, 108(sp)
  LW t3, 124(sp)
  BLT t4, t3, bb60
  JAL zero, bb54
bb60:
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  JAL zero, bb58
mv:
  ADDI sp, sp, -144
  SD s2, 8(sp)
  SD s11, 16(sp)
  SD ra, 24(sp)
  SD s0, 32(sp)
  SD s1, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
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
  BLT zero, t4, bb78
  # implict jump to bb62
bb62:
  LW t4, 0(sp)
  BLT zero, t4, bb64
  # implict jump to bb63
bb63:
  LD s2, 8(sp)
  LD s11, 16(sp)
  LD ra, 24(sp)
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  LD s10, 104(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb64:
  ADDI s8, zero, 11
  ADD s9, zero, zero
  ADD s10, zero, zero
  # implict jump to bb65
bb65:
  ADD s11, s10, zero
  ADD t0, s9, zero
  ADD t1, s8, zero
  LW t4, 0(sp)
  BLT zero, t4, bb70
  # implict jump to bb66
bb66:
  ADD t2, t1, zero
  ADD a4, t0, zero
  # implict jump to bb67
bb67:
  ADD s3, a4, zero
  ADD s4, t2, zero
  ADDIW s2, s11, 1
  # implict jump to bb68
bb68:
  LW t4, 0(sp)
  BLT s2, t4, bb69
  JAL zero, bb63
bb69:
  ADD s8, s4, zero
  ADD s9, s3, zero
  ADD s10, s2, zero
  JAL zero, bb65
bb70:
  ADD a5, zero, zero
  # implict jump to bb71
bb71:
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
  BNE a1, zero, bb77
  # implict jump to bb72
bb72:
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
  # implict jump to bb73
bb73:
  ADD s1, a0, zero
  ADD s5, s7, zero
  ADDIW s0, a6, 1
  # implict jump to bb74
bb74:
  LW t4, 0(sp)
  BLT s0, t4, bb76
  # implict jump to bb75
bb75:
  ADD t2, s1, zero
  ADD a4, s5, zero
  JAL zero, bb67
bb76:
  ADD t1, s1, zero
  ADD t0, s5, zero
  ADD a5, s0, zero
  JAL zero, bb71
bb77:
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
  JAL zero, bb73
bb78:
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb79
bb79:
  LW t4, 4(sp)
  ADD s8, t4, zero
  SLLIW s9, s8, 2
  LD t4, 128(sp)
  ADD s9, t4, s9
  SW zero, 0(s9)
  ADDIW s6, s8, 1
  # implict jump to bb80
bb80:
  LW t4, 0(sp)
  BLT s6, t4, bb81
  JAL zero, bb62
bb81:
  ADD t4, s6, zero
  SW t4, 4(sp)
  JAL zero, bb79
