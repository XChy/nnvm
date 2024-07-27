.global main
.global getNumPos
.global radixSort
.global getMaxNum
.section .bss

a:
.space 120000040

.section .data
ans:
.word 0x00000000

base:
.word 0x00000010
.section .text
main:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  LA s1, a
  ADD a0, s1, zero
  CALL getarray
  ADD s1, a0, zero
  ADDI a0, zero, 90
  CALL _sysy_starttime
  ADDI a0, zero, 8
  LA s2, a
  ADD a1, s2, zero
  ADD a2, zero, zero
  ADD a3, s1, zero
  CALL radixSort
  BLT zero, s1, bb4
  # implict jump to bb1
bb1:
  LA s3, ans
  LW s3, 0(s3)
  BLT s3, zero, bb3
  # implict jump to bb2
bb2:
  ADDI a0, zero, 102
  CALL _sysy_stoptime
  LA s3, ans
  LW s3, 0(s3)
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb3:
  LA s3, ans
  LW s3, 0(s3)
  SUBW s3, zero, s3
  LA s4, ans
  SW s3, 0(s4)
  JAL zero, bb2
bb4:
  # implict jump to bb5
bb5:
  ADD s2, zero, zero
  # implict jump to bb6
bb6:
  ADD s3, s2, zero
  LA s4, ans
  LW s4, 0(s4)
  SLLIW s5, s3, 2
  LA s6, a
  ADD s5, s6, s5
  LW s5, 0(s5)
  ADDIW s6, s3, 2
  REMW s5, s5, s6
  MULW s5, s3, s5
  ADDW s4, s4, s5
  LA s5, ans
  SW s4, 0(s5)
  ADDIW s0, s3, 1
  # implict jump to bb7
bb7:
  BLT s0, s1, bb8
  JAL zero, bb1
bb8:
  ADD s2, s0, zero
  JAL zero, bb6
getNumPos:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  ADD s2, a0, zero
  BLT zero, a1, bb12
  # implict jump to bb10
bb10:
  ADD s3, s2, zero
  # implict jump to bb11
bb11:
  ADDI s5, zero, 16
  REMW s3, s3, s5
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb12:
  # implict jump to bb13
bb13:
  ADD s4, zero, zero
  # implict jump to bb14
bb14:
  ADD s5, s4, zero
  ADD s6, s2, zero
  ADDI s7, zero, 16
  DIVW s0, s6, s7
  ADDIW s1, s5, 1
  # implict jump to bb15
bb15:
  BLT s1, a1, bb17
  # implict jump to bb16
bb16:
  ADD s3, s0, zero
  JAL zero, bb11
bb17:
  ADD s2, s0, zero
  ADD s4, s1, zero
  JAL zero, bb14
radixSort:
  ADDI sp, sp, -464
  SD ra, 136(sp)
  SD s1, 144(sp)
  SD s3, 152(sp)
  SD s4, 160(sp)
  SD s6, 168(sp)
  SD s9, 176(sp)
  SD s0, 192(sp)
  SD s2, 200(sp)
  SD s5, 208(sp)
  SD s7, 216(sp)
  SD s8, 224(sp)
  SD s10, 232(sp)
  SD s11, 240(sp)
  ADD t4, a0, zero
  SW t4, 88(sp)
  ADD t4, a1, zero
  SD t4, 256(sp)
  ADD t4, a2, zero
  SW t4, 92(sp)
  ADD t4, a3, zero
  SW t4, 96(sp)
  XORI a5, zero, 16
  BNE a5, zero, bb90
  # implict jump to bb19
bb19:
  XORI a6, zero, 16
  BNE a6, zero, bb85
  # implict jump to bb20
bb20:
  XORI a7, zero, 16
  BNE a7, zero, bb80
  # implict jump to bb21
bb21:
  LW t4, 88(sp)
  XORI a4, t4, -1
  SLTIU a4, a4, 1
  BNE a4, zero, bb79
  # implict jump to bb22
bb22:
  LW t4, 92(sp)
  ADDIW a4, t4, 1
  LW t4, 96(sp)
  SLT a4, a4, t4
  XORI a4, a4, 1
  # implict jump to bb23
bb23:
  BNE a4, zero, bb78
  # implict jump to bb24
bb24:
  LW t4, 92(sp)
  LW t3, 96(sp)
  BLT t4, t3, bb65
  # implict jump to bb25
bb25:
  LW t4, 92(sp)
  SW t4, 264(sp)
  LW s4, 392(sp)
  LW t3, 92(sp)
  ADDW t4, t3, s4
  SW t4, 16(sp)
  LW t4, 16(sp)
  SW t4, 328(sp)
  ADDI s6, zero, 1
  SLTI s6, s6, 16
  BNE s6, zero, bb60
  # implict jump to bb26
bb26:
  SLTI s9, zero, 16
  BNE s9, zero, bb36
  # implict jump to bb27
bb27:
  LW t4, 92(sp)
  SW t4, 264(sp)
  LW t4, 16(sp)
  SW t4, 328(sp)
  SLTI s1, zero, 16
  BNE s1, zero, bb29
  # implict jump to bb28
bb28:
  LD ra, 136(sp)
  LD s1, 144(sp)
  LD s3, 152(sp)
  LD s4, 160(sp)
  LD s6, 168(sp)
  LD s9, 176(sp)
  LD s0, 192(sp)
  LD s2, 200(sp)
  LD s5, 208(sp)
  LD s7, 216(sp)
  LD s8, 224(sp)
  LD s10, 232(sp)
  LD s11, 240(sp)
  ADDI sp, sp, 464
  JALR zero, 0(ra)
bb29:
  # implict jump to bb30
bb30:
  ADD s1, zero, zero
  # implict jump to bb31
bb31:
  ADD s6, s1, zero
  BLT zero, s6, bb35
  # implict jump to bb32
bb32:
  ADDI s0, zero, 1
  LW t4, 88(sp)
  SUBW s0, t4, s0
  SLLIW s5, s6, 2
  ADDI t5, sp, 264
  ADD s11, t5, s5
  LW s11, 0(s11)
  ADDI a0, sp, 328
  ADD s5, a0, s5
  LW s5, 0(s5)
  ADD a0, s0, zero
  LD t4, 256(sp)
  ADD a1, t4, zero
  ADD a2, s11, zero
  ADD a3, s5, zero
  CALL radixSort
  ADDIW t4, s6, 1
  SW t4, 64(sp)
  # implict jump to bb33
bb33:
  LW t4, 64(sp)
  SLTI s0, t4, 16
  BNE s0, zero, bb34
  JAL zero, bb28
bb34:
  LW t4, 64(sp)
  ADD s1, t4, zero
  JAL zero, bb31
bb35:
  SLLIW s11, s6, 2
  ADDI t5, sp, 264
  ADD s5, t5, s11
  ADDI s0, zero, 1
  SUBW s0, s6, s0
  SLLIW s0, s0, 2
  ADDI t5, sp, 328
  ADD s0, t5, s0
  LW s0, 0(s0)
  SW s0, 0(s5)
  ADDI t5, sp, 328
  ADD s5, t5, s11
  ADDI t5, sp, 392
  ADD s11, t5, s11
  LW s11, 0(s11)
  ADDW s0, s0, s11
  SW s0, 0(s5)
  JAL zero, bb32
bb36:
  # implict jump to bb37
bb37:
  ADD s9, zero, zero
  ADD t4, zero, zero
  SW t4, 80(sp)
  ADD t4, zero, zero
  SW t4, 60(sp)
  # implict jump to bb38
bb38:
  LW t4, 60(sp)
  ADD t6, t4, zero
  LW t4, 80(sp)
  ADD s1, t4, zero
  ADD t4, s9, zero
  SW t4, 0(sp)
  LW t4, 0(sp)
  SLLIW s11, t4, 2
  ADDI a4, sp, 264
  ADD a4, a4, s11
  LW s7, 0(a4)
  ADDI t5, sp, 328
  ADD s11, t5, s11
  LW s11, 0(s11)
  BLT s7, s11, bb43
  # implict jump to bb39
bb39:
  ADD s11, t6, zero
  # implict jump to bb40
bb40:
  ADD t4, s11, zero
  SW t4, 76(sp)
  ADD t4, s1, zero
  SW t4, 68(sp)
  LW t4, 0(sp)
  ADDIW s3, t4, 1
  # implict jump to bb41
bb41:
  SLTI s1, s3, 16
  BNE s1, zero, bb42
  JAL zero, bb27
bb42:
  ADD s9, s3, zero
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  JAL zero, bb38
bb43:
  # implict jump to bb44
bb44:
  ADD t4, a4, zero
  SD t4, 248(sp)
  ADD t4, t6, zero
  SW t4, 56(sp)
  # implict jump to bb45
bb45:
  LW t4, 56(sp)
  ADD s4, t4, zero
  LD t3, 248(sp)
  ADD t4, t3, zero
  SD t4, 184(sp)
  ADD s10, s7, zero
  SLLIW s10, s10, 2
  LD t4, 256(sp)
  ADD s10, t4, s10
  LW s10, 0(s10)
  # implict jump to bb46
bb46:
  ADD t4, s10, zero
  SW t4, 28(sp)
  ADD t4, s4, zero
  SW t4, 32(sp)
  LW t4, 88(sp)
  BLT zero, t4, bb54
  # implict jump to bb47
bb47:
  LW t4, 28(sp)
  ADD s2, t4, zero
  # implict jump to bb48
bb48:
  ADDI s6, zero, 16
  REMW s2, s2, s6
  LW t4, 0(sp)
  BNE s2, t4, bb53
  # implict jump to bb49
bb49:
  LD t4, 184(sp)
  LW s6, 0(t4)
  SLLIW s8, s6, 2
  LD t4, 256(sp)
  ADD s8, t4, s8
  LW t4, 28(sp)
  SW t4, 0(s8)
  ADDIW s6, s6, 1
  LD t4, 184(sp)
  SW s6, 0(t4)
  # implict jump to bb50
bb50:
  LW t4, 0(sp)
  SLLIW s6, t4, 2
  ADDI t5, sp, 264
  ADD s8, t5, s6
  LW t4, 0(s8)
  SW t4, 84(sp)
  ADDI t4, sp, 328
  ADD s6, t4, s6
  LW s6, 0(s6)
  LW t4, 84(sp)
  BLT t4, s6, bb52
  # implict jump to bb51
bb51:
  LW t4, 28(sp)
  ADD s1, t4, zero
  LW t4, 32(sp)
  ADD s11, t4, zero
  JAL zero, bb40
bb52:
  LW t4, 84(sp)
  ADD s7, t4, zero
  ADD t4, s8, zero
  SD t4, 248(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  JAL zero, bb45
bb53:
  SLLIW s0, s2, 2
  ADDI t5, sp, 264
  ADD s0, t5, s0
  LW s1, 0(s0)
  SLLIW s2, s1, 2
  LD t4, 256(sp)
  ADD s2, t4, s2
  LW s3, 0(s2)
  LW t4, 28(sp)
  SW t4, 0(s2)
  ADDIW s1, s1, 1
  SW s1, 0(s0)
  LW t4, 28(sp)
  ADD s4, t4, zero
  ADD s10, s3, zero
  JAL zero, bb46
bb54:
  # implict jump to bb55
bb55:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  ADD t4, zero, zero
  SW t4, 40(sp)
  # implict jump to bb56
bb56:
  LW t4, 40(sp)
  ADD a5, t4, zero
  LW t4, 48(sp)
  ADD s6, t4, zero
  ADDI s8, zero, 16
  DIVW t4, s6, s8
  SW t4, 52(sp)
  ADDIW t4, a5, 1
  SW t4, 44(sp)
  # implict jump to bb57
bb57:
  LW t4, 44(sp)
  LW t3, 88(sp)
  BLT t4, t3, bb59
  # implict jump to bb58
bb58:
  LW t4, 52(sp)
  ADD s2, t4, zero
  JAL zero, bb48
bb59:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb56
bb60:
  ADDI s6, zero, 1
  # implict jump to bb61
bb61:
  ADD t4, s6, zero
  SW t4, 20(sp)
  # implict jump to bb62
bb62:
  LW t4, 20(sp)
  ADD s9, t4, zero
  SLLIW a7, s9, 2
  ADDI t6, sp, 264
  ADD t6, t6, a7
  ADDI a6, zero, 1
  SUBW a6, s9, a6
  SLLIW a6, a6, 2
  ADDI t5, sp, 328
  ADD a6, t5, a6
  LW a6, 0(a6)
  SW a6, 0(t6)
  ADDI t6, sp, 328
  ADD t6, t6, a7
  ADDI t4, sp, 392
  ADD a7, t4, a7
  LW a7, 0(a7)
  ADDW a6, a6, a7
  SW a6, 0(t6)
  ADDIW t4, s9, 1
  SW t4, 24(sp)
  # implict jump to bb63
bb63:
  LW t4, 24(sp)
  SLTI s9, t4, 16
  BNE s9, zero, bb64
  JAL zero, bb26
bb64:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb62
bb65:
  # implict jump to bb66
bb66:
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  # implict jump to bb67
bb67:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LW t4, 124(sp)
  SLLIW a5, t4, 2
  LD t4, 256(sp)
  ADD a5, t4, a5
  LW a5, 0(a5)
  LW t4, 88(sp)
  BLT zero, t4, bb72
  # implict jump to bb68
bb68:
  ADD s6, a5, zero
  # implict jump to bb69
bb69:
  ADDI s4, zero, 16
  REMW s4, s6, s4
  SLLIW s4, s4, 2
  ADDI t5, sp, 392
  ADD s4, t5, s4
  LW s6, 0(s4)
  ADDIW s6, s6, 1
  SW s6, 0(s4)
  LW t3, 124(sp)
  ADDIW t4, t3, 1
  SW t4, 12(sp)
  # implict jump to bb70
bb70:
  LW t4, 12(sp)
  LW t3, 96(sp)
  BLT t4, t3, bb71
  JAL zero, bb25
bb71:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  JAL zero, bb67
bb72:
  # implict jump to bb73
bb73:
  ADD t4, a5, zero
  SW t4, 36(sp)
  ADD t4, zero, zero
  SW t4, 128(sp)
  # implict jump to bb74
bb74:
  LW t4, 128(sp)
  ADD s4, t4, zero
  LW t4, 36(sp)
  ADD a7, t4, zero
  ADDI s9, zero, 16
  DIVW t4, a7, s9
  SW t4, 4(sp)
  ADDIW t4, s4, 1
  SW t4, 72(sp)
  # implict jump to bb75
bb75:
  LW t4, 72(sp)
  LW t3, 88(sp)
  BLT t4, t3, bb77
  # implict jump to bb76
bb76:
  LW t4, 4(sp)
  ADD s6, t4, zero
  JAL zero, bb69
bb77:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  JAL zero, bb74
bb78:
  LD ra, 136(sp)
  LD s1, 144(sp)
  LD s3, 152(sp)
  LD s4, 160(sp)
  LD s6, 168(sp)
  LD s9, 176(sp)
  LD s0, 192(sp)
  LD s2, 200(sp)
  LD s5, 208(sp)
  LD s7, 216(sp)
  LD s8, 224(sp)
  LD s10, 232(sp)
  LD s11, 240(sp)
  ADDI sp, sp, 464
  JALR zero, 0(ra)
bb79:
  ADDI a4, zero, 1
  JAL zero, bb23
bb80:
  ADDI a7, zero, 16
  # implict jump to bb81
bb81:
  ADD t4, a7, zero
  SW t4, 116(sp)
  # implict jump to bb82
bb82:
  LW t4, 116(sp)
  ADD t6, t4, zero
  ADDI a4, zero, 1
  SUBW t4, t6, a4
  SW t4, 120(sp)
  LW t4, 120(sp)
  SLLIW a4, t4, 2
  ADDI t5, sp, 392
  ADD a4, t5, a4
  SW zero, 0(a4)
  # implict jump to bb83
bb83:
  LW t4, 120(sp)
  BNE t4, zero, bb84
  JAL zero, bb21
bb84:
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  JAL zero, bb82
bb85:
  ADDI a6, zero, 16
  # implict jump to bb86
bb86:
  ADD t4, a6, zero
  SW t4, 108(sp)
  # implict jump to bb87
bb87:
  LW t4, 108(sp)
  ADD a7, t4, zero
  ADDI t6, zero, 1
  SUBW t4, a7, t6
  SW t4, 112(sp)
  LW t4, 112(sp)
  SLLIW a7, t4, 2
  ADDI t5, sp, 328
  ADD a7, t5, a7
  SW zero, 0(a7)
  # implict jump to bb88
bb88:
  LW t4, 112(sp)
  BNE t4, zero, bb89
  JAL zero, bb20
bb89:
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  JAL zero, bb87
bb90:
  ADDI a5, zero, 16
  # implict jump to bb91
bb91:
  ADD t4, a5, zero
  SW t4, 100(sp)
  # implict jump to bb92
bb92:
  LW t4, 100(sp)
  ADD a6, t4, zero
  ADDI a7, zero, 1
  SUBW t4, a6, a7
  SW t4, 104(sp)
  LW t4, 104(sp)
  SLLIW a6, t4, 2
  ADDI t5, sp, 264
  ADD a6, t5, a6
  SW zero, 0(a6)
  # implict jump to bb93
bb93:
  LW t4, 104(sp)
  BNE t4, zero, bb94
  JAL zero, bb19
bb94:
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  JAL zero, bb92
getMaxNum:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  ADD s2, a0, zero
  BLT zero, s2, bb98
  # implict jump to bb96
bb96:
  ADD s3, zero, zero
  # implict jump to bb97
bb97:
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb98:
  # implict jump to bb99
bb99:
  ADD s4, zero, zero
  ADD s5, zero, zero
  # implict jump to bb100
bb100:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLLIW s8, s6, 2
  ADD s8, a1, s8
  LW s8, 0(s8)
  BLT s7, s8, bb106
  # implict jump to bb101
bb101:
  # implict jump to bb102
bb102:
  ADD s0, s7, zero
  ADDIW s1, s6, 1
  # implict jump to bb103
bb103:
  BLT s1, s2, bb105
  # implict jump to bb104
bb104:
  ADD s3, s0, zero
  JAL zero, bb97
bb105:
  ADD s4, s0, zero
  ADD s5, s1, zero
  JAL zero, bb100
bb106:
  ADD s7, s8, zero
  JAL zero, bb102
