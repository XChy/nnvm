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
  ADD s1, zero, zero
  # implict jump to bb1
bb1:
  ADD s2, s1, zero
  BLT s2, s0, bb5
  # implict jump to bb2
bb2:
  LA s3, ans
  LW s3, 0(s3)
  BLT s3, zero, bb4
  # implict jump to bb3
bb3:
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
bb4:
  LA s3, ans
  LW s3, 0(s3)
  SUBW s3, zero, s3
  LA s4, ans
  SW s3, 0(s4)
  JAL zero, bb3
bb5:
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
  ADD s1, s2, zero
  JAL zero, bb1
getNumPos:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  ADD s0, a0, zero
  ADD s1, zero, zero
  # implict jump to bb7
bb7:
  ADD s2, s0, zero
  ADD s3, s1, zero
  BLT s3, a1, bb9
  # implict jump to bb8
bb8:
  ADDI s4, zero, 16
  REMW s4, s2, s4
  ADD a0, s4, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb9:
  ADDI s4, zero, 16
  DIVW s2, s2, s4
  ADDIW s3, s3, 1
  ADD s1, s3, zero
  ADD s0, s2, zero
  JAL zero, bb7
radixSort:
  ADDI sp, sp, -368
  SD ra, 56(sp)
  SD s2, 64(sp)
  SD s0, 136(sp)
  SD s1, 144(sp)
  SD s3, 160(sp)
  SD s4, 168(sp)
  SD s5, 176(sp)
  SD s6, 184(sp)
  SD s7, 192(sp)
  SD s8, 200(sp)
  SD s9, 208(sp)
  SD s10, 216(sp)
  SD s11, 224(sp)
  ADD t4, a0, zero
  SW t4, 24(sp)
  ADD t4, a1, zero
  SD t4, 152(sp)
  ADD t4, a2, zero
  SW t4, 16(sp)
  ADD t4, a3, zero
  SW t4, 12(sp)
  ADDI t4, zero, 16
  SW t4, 28(sp)
  # implict jump to bb11
bb11:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t4, 32(sp)
  BNE t4, zero, bb50
  # implict jump to bb12
bb12:
  ADDI t4, zero, 16
  SW t4, 36(sp)
  # implict jump to bb13
bb13:
  LW t4, 36(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb49
  # implict jump to bb14
bb14:
  ADDI s8, zero, 16
  # implict jump to bb15
bb15:
  ADD s9, s8, zero
  BNE s9, zero, bb48
  # implict jump to bb16
bb16:
  LW t4, 24(sp)
  XORI s10, t4, -1
  SLTIU s10, s10, 1
  BNE s10, zero, bb47
  # implict jump to bb17
bb17:
  LW t4, 16(sp)
  ADDIW s10, t4, 1
  LW t4, 12(sp)
  SLT s10, s10, t4
  XORI s10, s10, 1
  # implict jump to bb18
bb18:
  BNE s10, zero, bb46
  # implict jump to bb19
bb19:
  LW t4, 16(sp)
  ADD s10, t4, zero
  # implict jump to bb20
bb20:
  ADD s11, s10, zero
  LW t4, 12(sp)
  BLT s11, t4, bb42
  # implict jump to bb21
bb21:
  LW t4, 16(sp)
  SW t4, 296(sp)
  LW t0, 72(sp)
  LW t3, 16(sp)
  ADDW t4, t3, t0
  SW t4, 8(sp)
  LW t4, 8(sp)
  SW t4, 232(sp)
  ADDI t4, zero, 1
  SW t4, 4(sp)
  # implict jump to bb22
bb22:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t4, 44(sp)
  SLTI a4, t4, 16
  BNE a4, zero, bb41
  # implict jump to bb23
bb23:
  ADD t4, zero, zero
  SW t4, 48(sp)
  ADD t4, zero, zero
  SW t4, 52(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb24
bb24:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t4, 48(sp)
  ADD s3, t4, zero
  LW t4, 0(sp)
  SLTI s2, t4, 16
  BNE s2, zero, bb31
  # implict jump to bb25
bb25:
  LW t4, 16(sp)
  SW t4, 296(sp)
  LW t4, 8(sp)
  SW t4, 232(sp)
  ADDI s2, zero, 1
  LW t4, 24(sp)
  SUBW s2, t4, s2
  ADD s1, zero, zero
  # implict jump to bb26
bb26:
  ADD s0, s1, zero
  SLTI s4, s0, 16
  BNE s4, zero, bb28
  # implict jump to bb27
bb27:
  LD ra, 56(sp)
  LD s2, 64(sp)
  LD s0, 136(sp)
  LD s1, 144(sp)
  LD s3, 160(sp)
  LD s4, 168(sp)
  LD s5, 176(sp)
  LD s6, 184(sp)
  LD s7, 192(sp)
  LD s8, 200(sp)
  LD s9, 208(sp)
  LD s10, 216(sp)
  LD s11, 224(sp)
  ADDI sp, sp, 368
  JALR zero, 0(ra)
bb28:
  BLT zero, s0, bb30
  # implict jump to bb29
bb29:
  SLLIW s4, s0, 2
  ADDI t5, sp, 296
  ADD s5, t5, s4
  LW s5, 0(s5)
  ADDI a0, sp, 232
  ADD s4, a0, s4
  LW s4, 0(s4)
  ADD a0, s2, zero
  LD t4, 152(sp)
  ADD a1, t4, zero
  ADD a2, s5, zero
  ADD a3, s4, zero
  CALL radixSort
  ADDIW s0, s0, 1
  ADD s1, s0, zero
  JAL zero, bb26
bb30:
  SLLIW s4, s0, 2
  ADDI t5, sp, 296
  ADD s5, t5, s4
  ADDI s6, zero, 1
  SUBW s6, s0, s6
  SLLIW s6, s6, 2
  ADDI t5, sp, 232
  ADD s6, t5, s6
  LW s6, 0(s6)
  SW s6, 0(s5)
  ADDI t5, sp, 232
  ADD s5, t5, s4
  ADDI t5, sp, 72
  ADD s4, t5, s4
  LW s4, 0(s4)
  ADDW s4, s6, s4
  SW s4, 0(s5)
  JAL zero, bb29
bb31:
  LW t4, 0(sp)
  SLLIW s0, t4, 2
  ADDI t5, sp, 296
  ADD s1, t5, s0
  ADDI t5, sp, 232
  ADD s0, t5, s0
  ADD s2, s3, zero
  LW t4, 40(sp)
  ADD s3, t4, zero
  # implict jump to bb32
bb32:
  ADD s4, s3, zero
  ADD s5, s2, zero
  LW s6, 0(s1)
  LW t0, 0(s0)
  BLT s6, t0, bb34
  # implict jump to bb33
bb33:
  LW t4, 0(sp)
  ADDIW t0, t4, 1
  ADD t4, s5, zero
  SW t4, 48(sp)
  ADD t4, s4, zero
  SW t4, 52(sp)
  ADD t4, t0, zero
  SW t4, 20(sp)
  JAL zero, bb24
bb34:
  SLLIW s4, s6, 2
  LD t4, 152(sp)
  ADD s4, t4, s4
  LW s4, 0(s4)
  # implict jump to bb35
bb35:
  ADD s6, s4, zero
  ADD t0, s5, zero
  ADD t1, zero, zero
  ADD t2, s6, zero
  # implict jump to bb36
bb36:
  ADD a0, t2, zero
  ADD a1, t1, zero
  LW t4, 24(sp)
  BLT a1, t4, bb40
  # implict jump to bb37
bb37:
  ADDI a2, zero, 16
  REMW a2, a0, a2
  LW t4, 0(sp)
  BNE a2, t4, bb39
  # implict jump to bb38
bb38:
  LW a3, 0(s1)
  SLLIW a4, a3, 2
  LD t4, 152(sp)
  ADD a4, t4, a4
  SW s6, 0(a4)
  ADDIW a3, a3, 1
  SW a3, 0(s1)
  ADD s2, t0, zero
  ADD s3, s6, zero
  JAL zero, bb32
bb39:
  SLLIW s2, a2, 2
  ADDI t5, sp, 296
  ADD s2, t5, s2
  LW s3, 0(s2)
  SLLIW a2, s3, 2
  LD t4, 152(sp)
  ADD a2, t4, a2
  LW a3, 0(a2)
  SW s6, 0(a2)
  ADDIW s3, s3, 1
  SW s3, 0(s2)
  ADD s5, s6, zero
  ADD s4, a3, zero
  JAL zero, bb35
bb40:
  ADDI s2, zero, 16
  DIVW s2, a0, s2
  ADDIW s3, a1, 1
  ADD t1, s3, zero
  ADD t2, s2, zero
  JAL zero, bb36
bb41:
  LW t4, 44(sp)
  SLLIW s0, t4, 2
  ADDI t5, sp, 296
  ADD s1, t5, s0
  ADDI s2, zero, 1
  LW t4, 44(sp)
  SUBW s2, t4, s2
  SLLIW s2, s2, 2
  ADDI t5, sp, 232
  ADD s2, t5, s2
  LW s2, 0(s2)
  SW s2, 0(s1)
  ADDI t5, sp, 232
  ADD s1, t5, s0
  ADDI t4, sp, 72
  ADD s0, t4, s0
  LW s0, 0(s0)
  ADDW s0, s2, s0
  SW s0, 0(s1)
  LW t4, 44(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 4(sp)
  JAL zero, bb22
bb42:
  SLLIW s0, s11, 2
  LD t4, 152(sp)
  ADD s0, t4, s0
  LW s0, 0(s0)
  ADD s1, zero, zero
  # implict jump to bb43
bb43:
  ADD s2, s0, zero
  ADD s3, s1, zero
  LW t4, 24(sp)
  BLT s3, t4, bb45
  # implict jump to bb44
bb44:
  ADDI s4, zero, 16
  REMW s4, s2, s4
  SLLIW s4, s4, 2
  ADDI t5, sp, 72
  ADD s4, t5, s4
  LW s5, 0(s4)
  ADDIW s5, s5, 1
  SW s5, 0(s4)
  ADDIW s4, s11, 1
  ADD s10, s4, zero
  JAL zero, bb20
bb45:
  ADDI s4, zero, 16
  DIVW s2, s2, s4
  ADDIW s3, s3, 1
  ADD s1, s3, zero
  ADD s0, s2, zero
  JAL zero, bb43
bb46:
  LD ra, 56(sp)
  LD s2, 64(sp)
  LD s0, 136(sp)
  LD s1, 144(sp)
  LD s3, 160(sp)
  LD s4, 168(sp)
  LD s5, 176(sp)
  LD s6, 184(sp)
  LD s7, 192(sp)
  LD s8, 200(sp)
  LD s9, 208(sp)
  LD s10, 216(sp)
  LD s11, 224(sp)
  ADDI sp, sp, 368
  JALR zero, 0(ra)
bb47:
  ADDI s10, zero, 1
  JAL zero, bb18
bb48:
  ADDI s0, zero, 1
  SUBW s0, s9, s0
  SLLIW s1, s0, 2
  ADDI t5, sp, 72
  ADD s1, t5, s1
  SW zero, 0(s1)
  ADD s8, s0, zero
  JAL zero, bb15
bb49:
  ADDI s0, zero, 1
  SUBW s0, s7, s0
  SLLIW s1, s0, 2
  ADDI t4, sp, 232
  ADD s1, t4, s1
  SW zero, 0(s1)
  ADD t4, s0, zero
  SW t4, 36(sp)
  JAL zero, bb13
bb50:
  ADDI s0, zero, 1
  LW t4, 32(sp)
  SUBW s0, t4, s0
  SLLIW s1, s0, 2
  ADDI t4, sp, 296
  ADD s1, t4, s1
  SW zero, 0(s1)
  ADD t4, s0, zero
  SW t4, 28(sp)
  JAL zero, bb11
getMaxNum:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb52
bb52:
  ADD s3, s2, zero
  ADD s4, s1, zero
  BLT s4, s0, bb54
  # implict jump to bb53
bb53:
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb54:
  SLLIW s5, s4, 2
  ADD s5, a1, s5
  LW s5, 0(s5)
  BLT s3, s5, bb57
  # implict jump to bb55
bb55:
  # implict jump to bb56
bb56:
  ADDIW s4, s4, 1
  ADD s1, s4, zero
  ADD s2, s3, zero
  JAL zero, bb52
bb57:
  ADD s3, s5, zero
  JAL zero, bb56
