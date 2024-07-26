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
  ADD s2, zero, zero
  # implict jump to bb5
bb5:
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
  # implict jump to bb6
bb6:
  BLT s0, s1, bb7
  JAL zero, bb1
bb7:
  ADD s2, s0, zero
  JAL zero, bb5
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
  BLT zero, a1, bb11
  # implict jump to bb9
bb9:
  ADD s3, s2, zero
  # implict jump to bb10
bb10:
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
bb11:
  ADD s4, zero, zero
  # implict jump to bb12
bb12:
  ADD s5, s4, zero
  ADD s6, s2, zero
  ADDI s7, zero, 16
  DIVW s0, s6, s7
  ADDIW s1, s5, 1
  # implict jump to bb13
bb13:
  BLT s1, a1, bb15
  # implict jump to bb14
bb14:
  ADD s3, s0, zero
  JAL zero, bb10
bb15:
  ADD s2, s0, zero
  ADD s4, s1, zero
  JAL zero, bb12
radixSort:
  ADDI sp, sp, -464
  SD ra, 128(sp)
  SD s0, 136(sp)
  SD s1, 144(sp)
  SD s2, 152(sp)
  SD s3, 160(sp)
  SD s4, 168(sp)
  SD s5, 176(sp)
  SD s6, 184(sp)
  SD s7, 216(sp)
  SD s10, 224(sp)
  SD s11, 240(sp)
  SD s8, 312(sp)
  SD s9, 320(sp)
  ADD t4, a0, zero
  SW t4, 76(sp)
  ADD t4, a1, zero
  SD t4, 232(sp)
  ADD t4, a2, zero
  SW t4, 80(sp)
  ADD t4, a3, zero
  SW t4, 84(sp)
  XORI a5, zero, 16
  BNE a5, zero, bb79
  # implict jump to bb17
bb17:
  XORI a6, zero, 16
  BNE a6, zero, bb75
  # implict jump to bb18
bb18:
  XORI a7, zero, 16
  BNE a7, zero, bb71
  # implict jump to bb19
bb19:
  LW t4, 76(sp)
  XORI a4, t4, -1
  SLTIU a4, a4, 1
  BNE a4, zero, bb70
  # implict jump to bb20
bb20:
  LW t4, 80(sp)
  ADDIW a4, t4, 1
  LW t4, 84(sp)
  SLT a4, a4, t4
  XORI a4, a4, 1
  # implict jump to bb21
bb21:
  BNE a4, zero, bb69
  # implict jump to bb22
bb22:
  LW t4, 80(sp)
  LW t3, 84(sp)
  BLT t4, t3, bb58
  # implict jump to bb23
bb23:
  LW t4, 80(sp)
  SW t4, 248(sp)
  LW s6, 392(sp)
  LW t3, 80(sp)
  ADDW t4, t3, s6
  SW t4, 12(sp)
  LW t4, 12(sp)
  SW t4, 328(sp)
  ADDI s8, zero, 1
  SLTI s8, s8, 16
  BNE s8, zero, bb54
  # implict jump to bb24
bb24:
  SLTI s9, zero, 16
  BNE s9, zero, bb33
  # implict jump to bb25
bb25:
  LW t4, 80(sp)
  SW t4, 248(sp)
  LW t4, 12(sp)
  SW t4, 328(sp)
  SLTI s2, zero, 16
  BNE s2, zero, bb27
  # implict jump to bb26
bb26:
  LD ra, 128(sp)
  LD s0, 136(sp)
  LD s1, 144(sp)
  LD s2, 152(sp)
  LD s3, 160(sp)
  LD s4, 168(sp)
  LD s5, 176(sp)
  LD s6, 184(sp)
  LD s7, 216(sp)
  LD s10, 224(sp)
  LD s11, 240(sp)
  LD s8, 312(sp)
  LD s9, 320(sp)
  ADDI sp, sp, 464
  JALR zero, 0(ra)
bb27:
  ADD s2, zero, zero
  # implict jump to bb28
bb28:
  ADD s3, s2, zero
  BLT zero, s3, bb32
  # implict jump to bb29
bb29:
  ADDI s1, zero, 1
  LW t4, 76(sp)
  SUBW s1, t4, s1
  SLLIW s8, s3, 2
  ADDI t0, sp, 248
  ADD t0, t0, s8
  LW t0, 0(t0)
  ADDI a0, sp, 328
  ADD s8, a0, s8
  LW s8, 0(s8)
  ADD a0, s1, zero
  LD t4, 232(sp)
  ADD a1, t4, zero
  ADD a2, t0, zero
  ADD a3, s8, zero
  CALL radixSort
  ADDIW t4, s3, 1
  SW t4, 56(sp)
  # implict jump to bb30
bb30:
  LW t4, 56(sp)
  SLTI s1, t4, 16
  BNE s1, zero, bb31
  JAL zero, bb26
bb31:
  LW t4, 56(sp)
  ADD s2, t4, zero
  JAL zero, bb28
bb32:
  SLLIW s8, s3, 2
  ADDI t0, sp, 248
  ADD t0, t0, s8
  ADDI s1, zero, 1
  SUBW s1, s3, s1
  SLLIW s1, s1, 2
  ADDI t5, sp, 328
  ADD s1, t5, s1
  LW s1, 0(s1)
  SW s1, 0(t0)
  ADDI t0, sp, 328
  ADD t0, t0, s8
  ADDI t5, sp, 392
  ADD s8, t5, s8
  LW s8, 0(s8)
  ADDW s1, s1, s8
  SW s1, 0(t0)
  JAL zero, bb29
bb33:
  ADD s9, zero, zero
  ADD t4, zero, zero
  SW t4, 60(sp)
  ADD t4, zero, zero
  SW t4, 52(sp)
  # implict jump to bb34
bb34:
  LW t4, 52(sp)
  ADD t6, t4, zero
  LW t4, 60(sp)
  ADD s2, t4, zero
  ADD t4, s9, zero
  SW t4, 32(sp)
  LW t4, 32(sp)
  SLLIW s3, t4, 2
  ADDI a4, sp, 248
  ADD a4, a4, s3
  LW s5, 0(a4)
  ADDI t5, sp, 328
  ADD s3, t5, s3
  LW s3, 0(s3)
  BLT s5, s3, bb39
  # implict jump to bb35
bb35:
  ADD s3, t6, zero
  # implict jump to bb36
bb36:
  ADD s10, s3, zero
  ADD s4, s2, zero
  LW t4, 32(sp)
  ADDIW s11, t4, 1
  # implict jump to bb37
bb37:
  SLTI s2, s11, 16
  BNE s2, zero, bb38
  JAL zero, bb25
bb38:
  ADD s9, s11, zero
  ADD t4, s4, zero
  SW t4, 60(sp)
  ADD t4, s10, zero
  SW t4, 52(sp)
  JAL zero, bb34
bb39:
  ADD t4, a4, zero
  SD t4, 200(sp)
  ADD t4, t6, zero
  SW t4, 68(sp)
  # implict jump to bb40
bb40:
  LW t4, 68(sp)
  ADD s6, t4, zero
  LD t3, 200(sp)
  ADD t4, t3, zero
  SD t4, 208(sp)
  ADD s7, s5, zero
  SLLIW s7, s7, 2
  LD t4, 232(sp)
  ADD s7, t4, s7
  LW s7, 0(s7)
  # implict jump to bb41
bb41:
  ADD t4, s7, zero
  SW t4, 24(sp)
  ADD t4, s6, zero
  SW t4, 28(sp)
  LW t4, 76(sp)
  BLT zero, t4, bb49
  # implict jump to bb42
bb42:
  LW t4, 24(sp)
  ADD t1, t4, zero
  # implict jump to bb43
bb43:
  ADDI s0, zero, 16
  REMW s0, t1, s0
  LW t4, 32(sp)
  BNE s0, t4, bb48
  # implict jump to bb44
bb44:
  LD t4, 208(sp)
  LW s8, 0(t4)
  SLLIW t1, s8, 2
  LD t4, 232(sp)
  ADD t1, t4, t1
  LW t4, 24(sp)
  SW t4, 0(t1)
  ADDIW s8, s8, 1
  LD t4, 208(sp)
  SW s8, 0(t4)
  # implict jump to bb45
bb45:
  LW t4, 32(sp)
  SLLIW s8, t4, 2
  ADDI t4, sp, 248
  ADD t4, t4, s8
  SD t4, 192(sp)
  LD t3, 192(sp)
  LW t4, 0(t3)
  SW t4, 64(sp)
  ADDI t4, sp, 328
  ADD s8, t4, s8
  LW s8, 0(s8)
  LW t4, 64(sp)
  BLT t4, s8, bb47
  # implict jump to bb46
bb46:
  LW t4, 24(sp)
  ADD s2, t4, zero
  LW t4, 28(sp)
  ADD s3, t4, zero
  JAL zero, bb36
bb47:
  LW t4, 64(sp)
  ADD s5, t4, zero
  LD t3, 192(sp)
  ADD t4, t3, zero
  SD t4, 200(sp)
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  JAL zero, bb40
bb48:
  SLLIW s0, s0, 2
  ADDI t5, sp, 248
  ADD s0, t5, s0
  LW s1, 0(s0)
  SLLIW s2, s1, 2
  LD t4, 232(sp)
  ADD s2, t4, s2
  LW s3, 0(s2)
  LW t4, 24(sp)
  SW t4, 0(s2)
  ADDIW s1, s1, 1
  SW s1, 0(s0)
  LW t4, 24(sp)
  ADD s6, t4, zero
  ADD s7, s3, zero
  JAL zero, bb41
bb49:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  ADD t4, zero, zero
  SW t4, 0(sp)
  # implict jump to bb50
bb50:
  LW t4, 0(sp)
  ADD a5, t4, zero
  LW t4, 44(sp)
  ADD s8, t4, zero
  ADDI s0, zero, 16
  DIVW t4, s8, s0
  SW t4, 48(sp)
  ADDIW t4, a5, 1
  SW t4, 40(sp)
  # implict jump to bb51
bb51:
  LW t4, 40(sp)
  LW t3, 76(sp)
  BLT t4, t3, bb53
  # implict jump to bb52
bb52:
  LW t4, 48(sp)
  ADD t1, t4, zero
  JAL zero, bb43
bb53:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  JAL zero, bb50
bb54:
  ADDI t4, zero, 1
  SW t4, 16(sp)
  # implict jump to bb55
bb55:
  LW t4, 16(sp)
  ADD s9, t4, zero
  SLLIW a7, s9, 2
  ADDI t6, sp, 248
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
  SW t4, 20(sp)
  # implict jump to bb56
bb56:
  LW t4, 20(sp)
  SLTI s9, t4, 16
  BNE s9, zero, bb57
  JAL zero, bb24
bb57:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb55
bb58:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  # implict jump to bb59
bb59:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t4, 112(sp)
  SLLIW a5, t4, 2
  LD t4, 232(sp)
  ADD a5, t4, a5
  LW a5, 0(a5)
  LW t4, 76(sp)
  BLT zero, t4, bb64
  # implict jump to bb60
bb60:
  ADD s6, a5, zero
  # implict jump to bb61
bb61:
  ADDI s8, zero, 16
  REMW s6, s6, s8
  SLLIW s6, s6, 2
  ADDI t5, sp, 392
  ADD s6, t5, s6
  LW s8, 0(s6)
  ADDIW s8, s8, 1
  SW s8, 0(s6)
  LW t3, 112(sp)
  ADDIW t4, t3, 1
  SW t4, 8(sp)
  # implict jump to bb62
bb62:
  LW t4, 8(sp)
  LW t3, 84(sp)
  BLT t4, t3, bb63
  JAL zero, bb23
bb63:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  JAL zero, bb59
bb64:
  ADD t4, a5, zero
  SW t4, 120(sp)
  ADD t4, zero, zero
  SW t4, 116(sp)
  # implict jump to bb65
bb65:
  LW t4, 116(sp)
  ADD s8, t4, zero
  LW t4, 120(sp)
  ADD a7, t4, zero
  ADDI s9, zero, 16
  DIVW t4, a7, s9
  SW t4, 4(sp)
  ADDIW t4, s8, 1
  SW t4, 72(sp)
  # implict jump to bb66
bb66:
  LW t4, 72(sp)
  LW t3, 76(sp)
  BLT t4, t3, bb68
  # implict jump to bb67
bb67:
  LW t4, 4(sp)
  ADD s6, t4, zero
  JAL zero, bb61
bb68:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  JAL zero, bb65
bb69:
  LD ra, 128(sp)
  LD s0, 136(sp)
  LD s1, 144(sp)
  LD s2, 152(sp)
  LD s3, 160(sp)
  LD s4, 168(sp)
  LD s5, 176(sp)
  LD s6, 184(sp)
  LD s7, 216(sp)
  LD s10, 224(sp)
  LD s11, 240(sp)
  LD s8, 312(sp)
  LD s9, 320(sp)
  ADDI sp, sp, 464
  JALR zero, 0(ra)
bb70:
  ADDI a4, zero, 1
  JAL zero, bb21
bb71:
  ADDI t4, zero, 16
  SW t4, 104(sp)
  # implict jump to bb72
bb72:
  LW t4, 104(sp)
  ADD t6, t4, zero
  ADDI a4, zero, 1
  SUBW t4, t6, a4
  SW t4, 108(sp)
  LW t4, 108(sp)
  SLLIW a4, t4, 2
  ADDI t5, sp, 392
  ADD a4, t5, a4
  SW zero, 0(a4)
  # implict jump to bb73
bb73:
  LW t4, 108(sp)
  BNE t4, zero, bb74
  JAL zero, bb19
bb74:
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  JAL zero, bb72
bb75:
  ADDI t4, zero, 16
  SW t4, 96(sp)
  # implict jump to bb76
bb76:
  LW t4, 96(sp)
  ADD a7, t4, zero
  ADDI t6, zero, 1
  SUBW t4, a7, t6
  SW t4, 100(sp)
  LW t4, 100(sp)
  SLLIW a7, t4, 2
  ADDI t5, sp, 328
  ADD a7, t5, a7
  SW zero, 0(a7)
  # implict jump to bb77
bb77:
  LW t4, 100(sp)
  BNE t4, zero, bb78
  JAL zero, bb18
bb78:
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  JAL zero, bb76
bb79:
  ADDI t4, zero, 16
  SW t4, 88(sp)
  # implict jump to bb80
bb80:
  LW t4, 88(sp)
  ADD a6, t4, zero
  ADDI a7, zero, 1
  SUBW t4, a6, a7
  SW t4, 92(sp)
  LW t4, 92(sp)
  SLLIW a6, t4, 2
  ADDI t5, sp, 248
  ADD a6, t5, a6
  SW zero, 0(a6)
  # implict jump to bb81
bb81:
  LW t4, 92(sp)
  BNE t4, zero, bb82
  JAL zero, bb17
bb82:
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  JAL zero, bb80
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
  BLT zero, s2, bb86
  # implict jump to bb84
bb84:
  ADD s3, zero, zero
  # implict jump to bb85
bb85:
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
bb86:
  ADD s4, zero, zero
  ADD s5, zero, zero
  # implict jump to bb87
bb87:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLLIW s8, s6, 2
  ADD s8, a1, s8
  LW s8, 0(s8)
  BLT s7, s8, bb93
  # implict jump to bb88
bb88:
  # implict jump to bb89
bb89:
  ADD s1, s7, zero
  ADDIW s0, s6, 1
  # implict jump to bb90
bb90:
  BLT s0, s2, bb92
  # implict jump to bb91
bb91:
  ADD s3, s1, zero
  JAL zero, bb85
bb92:
  ADD s4, s1, zero
  ADD s5, s0, zero
  JAL zero, bb87
bb93:
  ADD s7, s8, zero
  JAL zero, bb89
