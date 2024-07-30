.global main
.global mm
.section .bss
B:
.space 4194304
C:
.space 4194304
A:
.space 4194304

.section .data



N:
.word 0x00000400
.section .text
main:
  ADDI sp, sp, -304
  SD s5, 160(sp)
  SD ra, 168(sp)
  SD s0, 176(sp)
  SD s1, 184(sp)
  SD s2, 192(sp)
  SD s3, 200(sp)
  SD s4, 208(sp)
  SD s6, 216(sp)
  SD s7, 224(sp)
  SD s8, 232(sp)
  SD s9, 240(sp)
  SD s10, 280(sp)
  SD s11, 288(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 112(sp)
  ADDI t4, zero, 0
  SW t4, 104(sp)
  LW t4, 104(sp)
  LW t3, 112(sp)
  BLT t4, t3, bb71
  # implict jump to bb1
bb1:
  LW t4, 104(sp)
  LW t3, 112(sp)
  BLT t4, t3, bb64
  # implict jump to bb2
bb2:
  ADDI a0, zero, 65
  CALL _sysy_starttime
  ADD t4, zero, zero
  SW t4, 96(sp)
  # implict jump to bb3
bb3:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LW t4, 104(sp)
  LW t3, 112(sp)
  BLT t4, t3, bb57
  # implict jump to bb4
bb4:
  LW t4, 104(sp)
  LW t3, 112(sp)
  BLT t4, t3, bb43
  # implict jump to bb5
bb5:
  LW t4, 104(sp)
  LW t3, 112(sp)
  BLT t4, t3, bb36
  # implict jump to bb6
bb6:
  LW t4, 104(sp)
  LW t3, 112(sp)
  BLT t4, t3, bb22
  # implict jump to bb7
bb7:
  LW t4, 152(sp)
  ADDIW s2, t4, 1
  SLTI s9, s2, 5
  BNE s9, zero, bb21
  # implict jump to bb8
bb8:
  LW t4, 104(sp)
  LW t3, 112(sp)
  BLT t4, t3, bb11
  # implict jump to bb9
bb9:
  ADD s9, zero, zero
  # implict jump to bb10
bb10:
  ADDI a0, zero, 84
  CALL _sysy_stoptime
  ADD a0, s9, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD s5, 160(sp)
  LD ra, 168(sp)
  LD s0, 176(sp)
  LD s1, 184(sp)
  LD s2, 192(sp)
  LD s3, 200(sp)
  LD s4, 208(sp)
  LD s6, 216(sp)
  LD s7, 224(sp)
  LD s8, 232(sp)
  LD s9, 240(sp)
  LD s10, 280(sp)
  LD s11, 288(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
bb11:
  ADD s3, zero, zero
  ADD s1, zero, zero
  # implict jump to bb12
bb12:
  ADD s11, s1, zero
  ADD s7, s3, zero
  LW t4, 104(sp)
  LW t3, 112(sp)
  BLT t4, t3, bb17
  # implict jump to bb13
bb13:
  ADD s5, s11, zero
  # implict jump to bb14
bb14:
  ADDIW s10, s7, 1
  LW t4, 112(sp)
  BLT s10, t4, bb16
  # implict jump to bb15
bb15:
  ADD s9, s5, zero
  JAL zero, bb10
bb16:
  ADD s3, s10, zero
  ADD s1, s5, zero
  JAL zero, bb12
bb17:
  SLLIW s8, s7, 12
  LA s6, B
  ADD s6, s6, s8
  ADD s8, zero, zero
  # implict jump to bb18
bb18:
  ADD s10, s11, zero
  ADD s0, s8, zero
  SLLIW s4, s0, 2
  ADD s4, s6, s4
  LW s4, 0(s4)
  ADDW s4, s10, s4
  ADDIW s0, s0, 1
  LW t4, 112(sp)
  BLT s0, t4, bb20
  # implict jump to bb19
bb19:
  ADD s5, s4, zero
  JAL zero, bb14
bb20:
  ADD s8, s0, zero
  ADD s11, s4, zero
  JAL zero, bb18
bb21:
  ADD t4, s2, zero
  SW t4, 96(sp)
  JAL zero, bb3
bb22:
  ADD t4, zero, zero
  SW t4, 92(sp)
  ADD t4, zero, zero
  SW t4, 84(sp)
  # implict jump to bb23
bb23:
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t4, 92(sp)
  ADD s7, t4, zero
  ADD t4, s7, zero
  SW t4, 72(sp)
  ADD t4, zero, zero
  SW t4, 68(sp)
  # implict jump to bb24
bb24:
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LW t4, 80(sp)
  LW t3, 112(sp)
  BLT t4, t3, bb27
  # implict jump to bb25
bb25:
  LW t3, 64(sp)
  ADDIW t4, t3, 1
  SW t4, 88(sp)
  LW t4, 88(sp)
  LW t3, 112(sp)
  BLT t4, t3, bb26
  JAL zero, bb7
bb26:
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  JAL zero, bb23
bb27:
  LW t4, 80(sp)
  SLLIW s0, t4, 12
  LA s1, A
  ADD s1, s1, s0
  LW t4, 64(sp)
  SLLIW s2, t4, 2
  ADD s1, s1, s2
  LW s1, 0(s1)
  SLTIU s2, s1, 1
  BNE s2, zero, bb35
  # implict jump to bb28
bb28:
  LW t4, 104(sp)
  LW t3, 112(sp)
  BLT t4, t3, bb31
  # implict jump to bb29
bb29:
  ADD s2, zero, zero
  # implict jump to bb30
bb30:
  LW t4, 80(sp)
  ADDIW s6, t4, 1
  ADD t4, s2, zero
  SW t4, 72(sp)
  ADD t4, s6, zero
  SW t4, 68(sp)
  JAL zero, bb24
bb31:
  LA s3, B
  ADD s0, s3, s0
  LW t4, 64(sp)
  SLLIW s3, t4, 12
  LA s4, C
  ADD s3, s4, s3
  ADD s4, zero, zero
  # implict jump to bb32
bb32:
  ADD s5, s4, zero
  SLLIW s6, s5, 2
  ADD s7, s0, s6
  LW s8, 0(s7)
  ADD s6, s3, s6
  LW s6, 0(s6)
  MULW s6, s1, s6
  ADDW s6, s8, s6
  SW s6, 0(s7)
  ADDIW s5, s5, 1
  LW t4, 112(sp)
  BLT s5, t4, bb34
  # implict jump to bb33
bb33:
  ADD s2, s5, zero
  JAL zero, bb30
bb34:
  ADD s4, s5, zero
  JAL zero, bb32
bb35:
  LW t4, 80(sp)
  ADDIW s0, t4, 1
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  ADD t4, s0, zero
  SW t4, 68(sp)
  JAL zero, bb24
bb36:
  ADD t4, zero, zero
  SW t4, 56(sp)
  # implict jump to bb37
bb37:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t4, 104(sp)
  LW t3, 112(sp)
  BLT t4, t3, bb40
  # implict jump to bb38
bb38:
  LW t3, 44(sp)
  ADDIW t4, t3, 1
  SW t4, 60(sp)
  LW t4, 60(sp)
  LW t3, 112(sp)
  BLT t4, t3, bb39
  JAL zero, bb6
bb39:
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  JAL zero, bb37
bb40:
  LW t4, 44(sp)
  SLLIW s10, t4, 12
  LA s8, B
  ADD t4, s8, s10
  SD t4, 248(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  # implict jump to bb41
bb41:
  LW t4, 48(sp)
  ADD s2, t4, zero
  SLLIW s3, s2, 2
  LD t4, 248(sp)
  ADD s3, t4, s3
  SW zero, 0(s3)
  ADDIW t4, s2, 1
  SW t4, 0(sp)
  LW t4, 0(sp)
  LW t3, 112(sp)
  BLT t4, t3, bb42
  JAL zero, bb38
bb42:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb41
bb43:
  ADD t4, zero, zero
  SW t4, 40(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  # implict jump to bb44
bb44:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t4, 40(sp)
  ADD s3, t4, zero
  ADD t4, s3, zero
  SW t4, 20(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  # implict jump to bb45
bb45:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t4, 28(sp)
  LW t3, 112(sp)
  BLT t4, t3, bb48
  # implict jump to bb46
bb46:
  LW t3, 12(sp)
  ADDIW t4, t3, 1
  SW t4, 36(sp)
  LW t4, 36(sp)
  LW t3, 112(sp)
  BLT t4, t3, bb47
  JAL zero, bb5
bb47:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  JAL zero, bb44
bb48:
  LW t4, 28(sp)
  SLLIW s0, t4, 12
  LA s1, A
  ADD s1, s1, s0
  LW t4, 12(sp)
  SLLIW s2, t4, 2
  ADD s1, s1, s2
  LW s1, 0(s1)
  SLTIU s2, s1, 1
  BNE s2, zero, bb56
  # implict jump to bb49
bb49:
  LW t4, 104(sp)
  LW t3, 112(sp)
  BLT t4, t3, bb52
  # implict jump to bb50
bb50:
  ADD s2, zero, zero
  # implict jump to bb51
bb51:
  LW t4, 28(sp)
  ADDIW s6, t4, 1
  ADD t4, s2, zero
  SW t4, 20(sp)
  ADD t4, s6, zero
  SW t4, 16(sp)
  JAL zero, bb45
bb52:
  LA s3, C
  ADD s0, s3, s0
  LW t4, 12(sp)
  SLLIW s3, t4, 12
  LA s4, B
  ADD s3, s4, s3
  ADD s4, zero, zero
  # implict jump to bb53
bb53:
  ADD s5, s4, zero
  SLLIW s6, s5, 2
  ADD s7, s0, s6
  LW s8, 0(s7)
  ADD s6, s3, s6
  LW s6, 0(s6)
  MULW s6, s1, s6
  ADDW s6, s8, s6
  SW s6, 0(s7)
  ADDIW s5, s5, 1
  LW t4, 112(sp)
  BLT s5, t4, bb55
  # implict jump to bb54
bb54:
  ADD s2, s5, zero
  JAL zero, bb51
bb55:
  ADD s4, s5, zero
  JAL zero, bb53
bb56:
  LW t4, 28(sp)
  ADDIW s0, t4, 1
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  ADD t4, s0, zero
  SW t4, 16(sp)
  JAL zero, bb45
bb57:
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb58
bb58:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 148(sp)
  LW t4, 104(sp)
  LW t3, 112(sp)
  BLT t4, t3, bb61
  # implict jump to bb59
bb59:
  LW t3, 148(sp)
  ADDIW t4, t3, 1
  SW t4, 8(sp)
  LW t4, 8(sp)
  LW t3, 112(sp)
  BLT t4, t3, bb60
  JAL zero, bb4
bb60:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  JAL zero, bb58
bb61:
  LW t4, 148(sp)
  SLLIW s2, t4, 12
  LA s7, C
  ADD t4, s7, s2
  SD t4, 256(sp)
  ADD t4, zero, zero
  SW t4, 156(sp)
  # implict jump to bb62
bb62:
  LW t4, 156(sp)
  ADD s10, t4, zero
  SLLIW s9, s10, 2
  LD t4, 256(sp)
  ADD s9, t4, s9
  SW zero, 0(s9)
  ADDIW t4, s10, 1
  SW t4, 52(sp)
  LW t4, 52(sp)
  LW t3, 112(sp)
  BLT t4, t3, bb63
  JAL zero, bb59
bb63:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  JAL zero, bb62
bb64:
  ADD t4, zero, zero
  SW t4, 140(sp)
  # implict jump to bb65
bb65:
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  LW t4, 104(sp)
  LW t3, 112(sp)
  BLT t4, t3, bb68
  # implict jump to bb66
bb66:
  LW t3, 100(sp)
  ADDIW t4, t3, 1
  SW t4, 144(sp)
  LW t4, 144(sp)
  LW t3, 112(sp)
  BLT t4, t3, bb67
  JAL zero, bb2
bb67:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  JAL zero, bb65
bb68:
  LW t4, 100(sp)
  SLLIW s10, t4, 12
  LA s11, B
  ADD t4, s11, s10
  SD t4, 264(sp)
  ADD t4, zero, zero
  SW t4, 132(sp)
  # implict jump to bb69
bb69:
  LW t4, 132(sp)
  ADD s1, t4, zero
  SLLIW s4, s1, 2
  LD t4, 264(sp)
  ADD s4, t4, s4
  CALL getint
  ADD s3, a0, zero
  SW s3, 0(s4)
  ADDIW t4, s1, 1
  SW t4, 136(sp)
  LW t4, 136(sp)
  LW t3, 112(sp)
  BLT t4, t3, bb70
  JAL zero, bb66
bb70:
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  JAL zero, bb69
bb71:
  ADD t4, zero, zero
  SW t4, 124(sp)
  # implict jump to bb72
bb72:
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  LW t4, 104(sp)
  LW t3, 112(sp)
  BLT t4, t3, bb75
  # implict jump to bb73
bb73:
  LW t3, 108(sp)
  ADDIW t4, t3, 1
  SW t4, 128(sp)
  LW t4, 128(sp)
  LW t3, 112(sp)
  BLT t4, t3, bb74
  JAL zero, bb1
bb74:
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  JAL zero, bb72
bb75:
  LW t4, 108(sp)
  SLLIW s4, t4, 12
  LA s5, A
  ADD t4, s5, s4
  SD t4, 272(sp)
  ADD t4, zero, zero
  SW t4, 116(sp)
  # implict jump to bb76
bb76:
  LW t4, 116(sp)
  ADD s6, t4, zero
  SLLIW s7, s6, 2
  LD t4, 272(sp)
  ADD s7, t4, s7
  CALL getint
  ADD s8, a0, zero
  SW s8, 0(s7)
  ADDIW t4, s6, 1
  SW t4, 120(sp)
  LW t4, 120(sp)
  LW t3, 112(sp)
  BLT t4, t3, bb77
  JAL zero, bb73
bb77:
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  JAL zero, bb76
mm:
  ADDI sp, sp, -112
  SD ra, 8(sp)
  SD s0, 16(sp)
  SD s1, 24(sp)
  SD s2, 32(sp)
  SD s3, 40(sp)
  SD s4, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD s10, 96(sp)
  SD s11, 104(sp)
  ADD t4, a3, zero
  SD t4, 0(sp)
  BLT zero, a0, bb95
  # implict jump to bb79
bb79:
  BLT zero, a0, bb81
  # implict jump to bb80
bb80:
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s3, 40(sp)
  LD s4, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb81:
  ADD s6, zero, zero
  ADD s7, zero, zero
  # implict jump to bb82
bb82:
  ADD s8, s7, zero
  ADD s9, s6, zero
  ADD s10, zero, zero
  # implict jump to bb83
bb83:
  ADD s11, s10, zero
  ADD t0, s9, zero
  BLT s11, a0, bb86
  # implict jump to bb84
bb84:
  ADDIW t1, s8, 1
  BLT t1, a0, bb85
  JAL zero, bb80
bb85:
  ADD s6, t0, zero
  ADD s7, t1, zero
  JAL zero, bb82
bb86:
  SLLIW s6, s11, 12
  ADD s7, a1, s6
  SLLIW t1, s8, 2
  ADD s7, s7, t1
  LW t1, 0(s7)
  SLTIU t1, t1, 1
  BNE t1, zero, bb94
  # implict jump to bb87
bb87:
  BLT zero, a0, bb90
  # implict jump to bb88
bb88:
  ADD t1, zero, zero
  # implict jump to bb89
bb89:
  ADDIW a5, s11, 1
  ADD s9, t1, zero
  ADD s10, a5, zero
  JAL zero, bb83
bb90:
  LD t4, 0(sp)
  ADD s6, t4, s6
  SLLIW t2, s8, 12
  ADD t2, a2, t2
  ADD a4, zero, zero
  # implict jump to bb91
bb91:
  ADD a5, a4, zero
  SLLIW a6, a5, 2
  ADD a7, s6, a6
  LW t6, 0(a7)
  LW a3, 0(s7)
  ADD a6, t2, a6
  LW a6, 0(a6)
  MULW a3, a3, a6
  ADDW a3, t6, a3
  SW a3, 0(a7)
  ADDIW a3, a5, 1
  BLT a3, a0, bb93
  # implict jump to bb92
bb92:
  ADD t1, a3, zero
  JAL zero, bb89
bb93:
  ADD a4, a3, zero
  JAL zero, bb91
bb94:
  ADDIW s6, s11, 1
  ADD s9, t0, zero
  ADD s10, s6, zero
  JAL zero, bb83
bb95:
  ADD s0, zero, zero
  # implict jump to bb96
bb96:
  ADD s1, s0, zero
  BLT zero, a0, bb99
  # implict jump to bb97
bb97:
  ADDIW s5, s1, 1
  BLT s5, a0, bb98
  JAL zero, bb79
bb98:
  ADD s0, s5, zero
  JAL zero, bb96
bb99:
  SLLIW s2, s1, 12
  LD t4, 0(sp)
  ADD s2, t4, s2
  ADD s3, zero, zero
  # implict jump to bb100
bb100:
  ADD s4, s3, zero
  SLLIW s5, s4, 2
  ADD s5, s2, s5
  SW zero, 0(s5)
  ADDIW s4, s4, 1
  BLT s4, a0, bb101
  JAL zero, bb97
bb101:
  ADD s3, s4, zero
  JAL zero, bb100
