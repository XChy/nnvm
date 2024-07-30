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
  LA s0, a
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  ADDI a0, zero, 90
  CALL _sysy_starttime
  ADDI a0, zero, 8
  LA s1, a
  ADD a1, s1, zero
  ADD a2, zero, zero
  ADD a3, s0, zero
  CALL radixSort
  BLT zero, s0, bb4
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
  ADD s1, zero, zero
  # implict jump to bb5
bb5:
  ADD s2, s1, zero
  LA s3, ans
  LW s3, 0(s3)
  SLLIW s4, s2, 2
  LA s5, a
  ADD s4, s5, s4
  LW s4, 0(s4)
  ADDIW s5, s2, 2
  REMW s4, s4, s5
  MULW s4, s2, s4
  ADDW s3, s3, s4
  LA s4, ans
  SW s3, 0(s4)
  ADDIW s2, s2, 1
  BLT s2, s0, bb6
  JAL zero, bb1
bb6:
  ADD s1, s2, zero
  JAL zero, bb5
getNumPos:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  ADD s0, a0, zero
  BLT zero, a1, bb10
  # implict jump to bb8
bb8:
  ADD s1, s0, zero
  # implict jump to bb9
bb9:
  ADDI s5, zero, 16
  REMW s1, s1, s5
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb10:
  ADD s2, zero, zero
  # implict jump to bb11
bb11:
  ADD s3, s2, zero
  ADD s4, s0, zero
  ADDI s5, zero, 16
  DIVW s4, s4, s5
  ADDIW s3, s3, 1
  BLT s3, a1, bb13
  # implict jump to bb12
bb12:
  ADD s1, s4, zero
  JAL zero, bb9
bb13:
  ADD s0, s4, zero
  ADD s2, s3, zero
  JAL zero, bb11
radixSort:
  ADDI sp, sp, -464
  SD ra, 128(sp)
  SD s1, 136(sp)
  SD s0, 216(sp)
  SD s4, 352(sp)
  SD s11, 360(sp)
  SD s2, 384(sp)
  SD s3, 392(sp)
  SD s5, 400(sp)
  SD s6, 408(sp)
  SD s7, 416(sp)
  SD s8, 424(sp)
  SD s9, 432(sp)
  SD s10, 440(sp)
  ADD t4, a0, zero
  SW t4, 96(sp)
  ADD t4, a1, zero
  SD t4, 368(sp)
  ADD t4, a2, zero
  SW t4, 104(sp)
  ADD t4, a3, zero
  SW t4, 108(sp)
  ADDI t4, zero, 16
  SW t4, 92(sp)
  # implict jump to bb15
bb15:
  LW t4, 92(sp)
  ADD s5, t4, zero
  ADDI s6, zero, 1
  SUBW t4, s5, s6
  SW t4, 88(sp)
  LW t4, 88(sp)
  SLLIW s6, t4, 2
  ADDI t4, sp, 288
  ADD s6, t4, s6
  SW zero, 0(s6)
  LW t4, 88(sp)
  BNE t4, zero, bb64
  # implict jump to bb16
bb16:
  ADDI t4, zero, 16
  SW t4, 84(sp)
  # implict jump to bb17
bb17:
  LW t4, 84(sp)
  ADD s7, t4, zero
  ADDI s8, zero, 1
  SUBW t4, s7, s8
  SW t4, 80(sp)
  LW t4, 80(sp)
  SLLIW s8, t4, 2
  ADDI t4, sp, 224
  ADD s8, t4, s8
  SW zero, 0(s8)
  LW t4, 80(sp)
  BNE t4, zero, bb63
  # implict jump to bb18
bb18:
  ADDI t4, zero, 16
  SW t4, 76(sp)
  # implict jump to bb19
bb19:
  LW t4, 76(sp)
  ADD s9, t4, zero
  ADDI s10, zero, 1
  SUBW t4, s9, s10
  SW t4, 72(sp)
  LW t4, 72(sp)
  SLLIW s10, t4, 2
  ADDI t4, sp, 144
  ADD s10, t4, s10
  SW zero, 0(s10)
  LW t4, 72(sp)
  BNE t4, zero, bb62
  # implict jump to bb20
bb20:
  LW t4, 96(sp)
  XORI s10, t4, -1
  SLTIU s10, s10, 1
  BNE s10, zero, bb61
  # implict jump to bb21
bb21:
  LW t4, 104(sp)
  ADDIW s10, t4, 1
  LW t4, 108(sp)
  SLT s10, s10, t4
  XORI s10, s10, 1
  # implict jump to bb22
bb22:
  BNE s10, zero, bb60
  # implict jump to bb23
bb23:
  LW t4, 104(sp)
  LW t3, 108(sp)
  BLT t4, t3, bb51
  # implict jump to bb24
bb24:
  LW t4, 104(sp)
  SW t4, 288(sp)
  LW a6, 144(sp)
  LW t3, 104(sp)
  ADDW t4, t3, a6
  SW t4, 24(sp)
  LW t4, 24(sp)
  SW t4, 224(sp)
  ADDI t4, zero, 1
  SW t4, 28(sp)
  # implict jump to bb25
bb25:
  LW t4, 28(sp)
  ADD t6, t4, zero
  SLLIW s3, t6, 2
  ADDI t5, sp, 288
  ADD s2, t5, s3
  ADDI s1, zero, 1
  SUBW s1, t6, s1
  SLLIW s1, s1, 2
  ADDI t5, sp, 224
  ADD s1, t5, s1
  LW s1, 0(s1)
  SW s1, 0(s2)
  ADDI t5, sp, 224
  ADD s2, t5, s3
  ADDI t4, sp, 144
  ADD s3, t4, s3
  LW s3, 0(s3)
  ADDW s1, s1, s3
  SW s1, 0(s2)
  ADDIW t4, t6, 1
  SW t4, 32(sp)
  LW t4, 32(sp)
  SLTI s2, t4, 16
  BNE s2, zero, bb50
  # implict jump to bb26
bb26:
  ADD s2, zero, zero
  ADD s3, zero, zero
  ADD t4, zero, zero
  SW t4, 44(sp)
  # implict jump to bb27
bb27:
  LW t4, 44(sp)
  ADD s0, t4, zero
  ADD s4, s3, zero
  ADD t4, s2, zero
  SW t4, 56(sp)
  LW t4, 56(sp)
  SLLIW s6, t4, 2
  ADDI t4, sp, 288
  ADD t4, t4, s6
  SD t4, 208(sp)
  LD t4, 208(sp)
  LW s8, 0(t4)
  ADDI t4, sp, 224
  ADD t4, t4, s6
  SD t4, 448(sp)
  LD t4, 448(sp)
  LW s9, 0(t4)
  BLT s8, s9, bb37
  # implict jump to bb28
bb28:
  ADD s9, s0, zero
  # implict jump to bb29
bb29:
  LW t3, 56(sp)
  ADDIW t4, t3, 1
  SW t4, 52(sp)
  LW t4, 52(sp)
  SLTI s6, t4, 16
  BNE s6, zero, bb36
  # implict jump to bb30
bb30:
  LW t4, 104(sp)
  SW t4, 288(sp)
  LW t4, 24(sp)
  SW t4, 224(sp)
  ADD s6, zero, zero
  # implict jump to bb31
bb31:
  ADD s7, s6, zero
  BLT zero, s7, bb35
  # implict jump to bb32
bb32:
  ADDI s1, zero, 1
  LW t4, 96(sp)
  SUBW s1, t4, s1
  SLLIW s5, s7, 2
  ADDI a7, sp, 288
  ADD a7, a7, s5
  LW a7, 0(a7)
  ADDI a0, sp, 224
  ADD s5, a0, s5
  LW s5, 0(s5)
  ADD a0, s1, zero
  LD t4, 368(sp)
  ADD a1, t4, zero
  ADD a2, a7, zero
  ADD a3, s5, zero
  CALL radixSort
  ADDIW s1, s7, 1
  SLTI s5, s1, 16
  BNE s5, zero, bb34
  # implict jump to bb33
bb33:
  LD ra, 128(sp)
  LD s1, 136(sp)
  LD s0, 216(sp)
  LD s4, 352(sp)
  LD s11, 360(sp)
  LD s2, 384(sp)
  LD s3, 392(sp)
  LD s5, 400(sp)
  LD s6, 408(sp)
  LD s7, 416(sp)
  LD s8, 424(sp)
  LD s9, 432(sp)
  LD s10, 440(sp)
  ADDI sp, sp, 464
  JALR zero, 0(ra)
bb34:
  ADD s6, s1, zero
  JAL zero, bb31
bb35:
  SLLIW s5, s7, 2
  ADDI a7, sp, 288
  ADD a7, a7, s5
  ADDI s1, zero, 1
  SUBW s1, s7, s1
  SLLIW s1, s1, 2
  ADDI t5, sp, 224
  ADD s1, t5, s1
  LW s1, 0(s1)
  SW s1, 0(a7)
  ADDI a7, sp, 224
  ADD a7, a7, s5
  ADDI t5, sp, 144
  ADD s5, t5, s5
  LW s5, 0(s5)
  ADDW s1, s1, s5
  SW s1, 0(a7)
  JAL zero, bb32
bb36:
  LW t4, 52(sp)
  ADD s2, t4, zero
  ADD s3, s4, zero
  ADD t4, s9, zero
  SW t4, 44(sp)
  JAL zero, bb27
bb37:
  LD t4, 208(sp)
  ADD s11, t4, zero
  # implict jump to bb38
bb38:
  ADD t2, s0, zero
  ADD t4, s11, zero
  SD t4, 376(sp)
  ADD t0, s8, zero
  SLLIW t0, t0, 2
  LD t4, 368(sp)
  ADD t0, t4, t0
  LW t0, 0(t0)
  ADD t4, t2, zero
  SW t4, 116(sp)
  ADD t4, t0, zero
  SW t4, 100(sp)
  # implict jump to bb39
bb39:
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t4, 96(sp)
  BLT zero, t4, bb46
  # implict jump to bb40
bb40:
  LW t4, 0(sp)
  ADD t1, t4, zero
  # implict jump to bb41
bb41:
  ADDI a5, zero, 16
  REMW t4, t1, a5
  SW t4, 48(sp)
  LW t4, 48(sp)
  LW t3, 56(sp)
  BNE t4, t3, bb45
  # implict jump to bb42
bb42:
  LD t4, 376(sp)
  LW a5, 0(t4)
  SLLIW a4, a5, 2
  LD t4, 368(sp)
  ADD a4, t4, a4
  LW t4, 0(sp)
  SW t4, 0(a4)
  ADDIW a4, a5, 1
  LD t4, 376(sp)
  SW a4, 0(t4)
  LD t3, 208(sp)
  LW t4, 0(t3)
  SW t4, 120(sp)
  LD t4, 448(sp)
  LW a5, 0(t4)
  LW t4, 120(sp)
  BLT t4, a5, bb44
  # implict jump to bb43
bb43:
  LW t4, 0(sp)
  ADD s4, t4, zero
  LW t4, 40(sp)
  ADD s9, t4, zero
  JAL zero, bb29
bb44:
  LW t4, 120(sp)
  ADD s8, t4, zero
  LD t4, 208(sp)
  ADD s11, t4, zero
  LW t4, 40(sp)
  ADD s0, t4, zero
  JAL zero, bb38
bb45:
  LW t4, 48(sp)
  SLLIW s0, t4, 2
  ADDI t5, sp, 288
  ADD s0, t5, s0
  LW s1, 0(s0)
  SLLIW s2, s1, 2
  LD t4, 368(sp)
  ADD s2, t4, s2
  LW s3, 0(s2)
  LW t4, 0(sp)
  SW t4, 0(s2)
  ADDIW s1, s1, 1
  SW s1, 0(s0)
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  ADD t4, s3, zero
  SW t4, 100(sp)
  JAL zero, bb39
bb46:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  ADD t4, zero, zero
  SW t4, 60(sp)
  # implict jump to bb47
bb47:
  LW t4, 60(sp)
  ADD s1, t4, zero
  LW t4, 112(sp)
  ADD a5, t4, zero
  ADDI s10, zero, 16
  DIVW s10, a5, s10
  ADDIW t4, s1, 1
  SW t4, 64(sp)
  LW t4, 64(sp)
  LW t3, 96(sp)
  BLT t4, t3, bb49
  # implict jump to bb48
bb48:
  ADD t1, s10, zero
  JAL zero, bb41
bb49:
  ADD t4, s10, zero
  SW t4, 112(sp)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  JAL zero, bb47
bb50:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  JAL zero, bb25
bb51:
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  # implict jump to bb52
bb52:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LW t4, 68(sp)
  SLLIW t0, t4, 2
  LD t4, 368(sp)
  ADD t0, t4, t0
  LW t0, 0(t0)
  LW t4, 96(sp)
  BLT zero, t4, bb56
  # implict jump to bb53
bb53:
  ADD t1, t0, zero
  # implict jump to bb54
bb54:
  ADDI a6, zero, 16
  REMW t1, t1, a6
  SLLIW t1, t1, 2
  ADDI a6, sp, 144
  ADD t1, a6, t1
  LW a6, 0(t1)
  ADDIW a6, a6, 1
  SW a6, 0(t1)
  LW t3, 68(sp)
  ADDIW t4, t3, 1
  SW t4, 20(sp)
  LW t4, 20(sp)
  LW t3, 108(sp)
  BLT t4, t3, bb55
  JAL zero, bb24
bb55:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb52
bb56:
  ADD t4, t0, zero
  SW t4, 8(sp)
  ADD t4, zero, zero
  SW t4, 36(sp)
  # implict jump to bb57
bb57:
  LW t4, 36(sp)
  ADD a4, t4, zero
  LW t4, 8(sp)
  ADD a5, t4, zero
  ADDI a6, zero, 16
  DIVW t4, a5, a6
  SW t4, 12(sp)
  ADDIW t4, a4, 1
  SW t4, 4(sp)
  LW t4, 4(sp)
  LW t3, 96(sp)
  BLT t4, t3, bb59
  # implict jump to bb58
bb58:
  LW t4, 12(sp)
  ADD t1, t4, zero
  JAL zero, bb54
bb59:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  JAL zero, bb57
bb60:
  LD ra, 128(sp)
  LD s1, 136(sp)
  LD s0, 216(sp)
  LD s4, 352(sp)
  LD s11, 360(sp)
  LD s2, 384(sp)
  LD s3, 392(sp)
  LD s5, 400(sp)
  LD s6, 408(sp)
  LD s7, 416(sp)
  LD s8, 424(sp)
  LD s9, 432(sp)
  LD s10, 440(sp)
  ADDI sp, sp, 464
  JALR zero, 0(ra)
bb61:
  ADDI s10, zero, 1
  JAL zero, bb22
bb62:
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  JAL zero, bb19
bb63:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  JAL zero, bb17
bb64:
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  JAL zero, bb15
getMaxNum:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  ADD s0, a0, zero
  BLT zero, s0, bb68
  # implict jump to bb66
bb66:
  ADD s1, zero, zero
  # implict jump to bb67
bb67:
  ADD a0, s1, zero
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
bb68:
  ADD s2, zero, zero
  ADD s3, zero, zero
  # implict jump to bb69
bb69:
  ADD s4, s3, zero
  ADD s5, s2, zero
  SLLIW s6, s4, 2
  ADD s6, a1, s6
  LW s6, 0(s6)
  BLT s5, s6, bb74
  # implict jump to bb70
bb70:
  # implict jump to bb71
bb71:
  ADDIW s4, s4, 1
  BLT s4, s0, bb73
  # implict jump to bb72
bb72:
  ADD s1, s5, zero
  JAL zero, bb67
bb73:
  ADD s2, s5, zero
  ADD s3, s4, zero
  JAL zero, bb69
bb74:
  ADD s5, s6, zero
  JAL zero, bb71
