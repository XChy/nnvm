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
  SD s0, 64(sp)
  SD s1, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
  SD s5, 104(sp)
  SD s6, 112(sp)
  SD s11, 128(sp)
  SD s7, 136(sp)
  SD s8, 144(sp)
  SD s9, 152(sp)
  SD s10, 160(sp)
  ADD t4, a0, zero
  SW t4, 36(sp)
  ADD t4, a1, zero
  SD t4, 120(sp)
  ADD t4, a2, zero
  SW t4, 40(sp)
  ADD t4, a3, zero
  SW t4, 44(sp)
  ADDI t4, zero, 16
  SW t4, 0(sp)
  # implict jump to bb11
bb11:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t4, 32(sp)
  BNE t4, zero, bb50
  # implict jump to bb12
bb12:
  ADDI s6, zero, 16
  # implict jump to bb13
bb13:
  ADD s7, s6, zero
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
  LW t4, 36(sp)
  XORI s10, t4, -1
  SLTIU s10, s10, 1
  BNE s10, zero, bb47
  # implict jump to bb17
bb17:
  LW t4, 40(sp)
  ADDIW s10, t4, 1
  LW t4, 44(sp)
  SLT s10, s10, t4
  XORI s10, s10, 1
  # implict jump to bb18
bb18:
  BNE s10, zero, bb46
  # implict jump to bb19
bb19:
  LW t4, 40(sp)
  ADD s10, t4, zero
  # implict jump to bb20
bb20:
  ADD s11, s10, zero
  LW t4, 44(sp)
  BLT s11, t4, bb42
  # implict jump to bb21
bb21:
  LW t4, 40(sp)
  SW t4, 168(sp)
  LW t4, 296(sp)
  SW t4, 12(sp)
  LW t4, 40(sp)
  LW t3, 12(sp)
  ADDW t1, t4, t3
  SW t1, 232(sp)
  ADDI t4, zero, 1
  SW t4, 8(sp)
  # implict jump to bb22
bb22:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t4, 16(sp)
  SLTI a4, t4, 16
  BNE a4, zero, bb41
  # implict jump to bb23
bb23:
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 4(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  # implict jump to bb24
bb24:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t4, 24(sp)
  ADD s3, t4, zero
  LW t4, 20(sp)
  SLTI s2, t4, 16
  BNE s2, zero, bb31
  # implict jump to bb25
bb25:
  LW t4, 40(sp)
  SW t4, 168(sp)
  LW t4, 40(sp)
  LW t3, 12(sp)
  ADDW s2, t4, t3
  SW s2, 232(sp)
  ADD s2, zero, zero
  # implict jump to bb26
bb26:
  ADD s1, s2, zero
  SLTI s0, s1, 16
  BNE s0, zero, bb28
  # implict jump to bb27
bb27:
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  LD s5, 104(sp)
  LD s6, 112(sp)
  LD s11, 128(sp)
  LD s7, 136(sp)
  LD s8, 144(sp)
  LD s9, 152(sp)
  LD s10, 160(sp)
  ADDI sp, sp, 368
  JALR zero, 0(ra)
bb28:
  BLT zero, s1, bb30
  # implict jump to bb29
bb29:
  ADDI s0, zero, 1
  LW t4, 36(sp)
  SUBW s0, t4, s0
  SLLIW s4, s1, 2
  ADDI t5, sp, 168
  ADD s5, t5, s4
  LW s5, 0(s5)
  ADDI a0, sp, 232
  ADD s4, a0, s4
  LW s4, 0(s4)
  ADD a0, s0, zero
  LD t4, 120(sp)
  ADD a1, t4, zero
  ADD a2, s5, zero
  ADD a3, s4, zero
  CALL radixSort
  ADDIW s0, s1, 1
  ADD s2, s0, zero
  JAL zero, bb26
bb30:
  SLLIW s0, s1, 2
  ADDI t5, sp, 168
  ADD s4, t5, s0
  ADDI s5, zero, 1
  SUBW s5, s1, s5
  SLLIW s5, s5, 2
  ADDI t5, sp, 232
  ADD s5, t5, s5
  LW s5, 0(s5)
  SW s5, 0(s4)
  ADDI t5, sp, 232
  ADD s4, t5, s0
  ADDI t5, sp, 296
  ADD s0, t5, s0
  LW s0, 0(s0)
  ADDW s0, s5, s0
  SW s0, 0(s4)
  JAL zero, bb29
bb31:
  LW t4, 20(sp)
  SLLIW s0, t4, 2
  ADD s1, s3, zero
  LW t4, 28(sp)
  ADD s2, t4, zero
  # implict jump to bb32
bb32:
  ADD s3, s2, zero
  ADD s4, s1, zero
  ADDI t5, sp, 168
  ADD s5, t5, s0
  LW t0, 0(s5)
  ADDI t1, sp, 232
  ADD t1, t1, s0
  LW t1, 0(t1)
  BLT t0, t1, bb34
  # implict jump to bb33
bb33:
  LW t4, 20(sp)
  ADDIW t1, t4, 1
  ADD t4, s4, zero
  SW t4, 24(sp)
  ADD t4, s3, zero
  SW t4, 4(sp)
  ADD t4, t1, zero
  SW t4, 48(sp)
  JAL zero, bb24
bb34:
  SLLIW s3, t0, 2
  LD t4, 120(sp)
  ADD s3, t4, s3
  LW s3, 0(s3)
  # implict jump to bb35
bb35:
  ADD t0, s3, zero
  ADD t1, s4, zero
  ADD t2, zero, zero
  ADD a0, t0, zero
  # implict jump to bb36
bb36:
  ADD a1, a0, zero
  ADD a2, t2, zero
  LW t4, 36(sp)
  BLT a2, t4, bb40
  # implict jump to bb37
bb37:
  ADDI a3, zero, 16
  REMW a3, a1, a3
  LW t4, 20(sp)
  BNE a3, t4, bb39
  # implict jump to bb38
bb38:
  LW a4, 0(s5)
  SLLIW a5, a4, 2
  LD t4, 120(sp)
  ADD a5, t4, a5
  SW t0, 0(a5)
  ADDIW a4, a4, 1
  SW a4, 0(s5)
  ADD s1, t1, zero
  ADD s2, t0, zero
  JAL zero, bb32
bb39:
  SLLIW s1, a3, 2
  ADDI t5, sp, 168
  ADD s1, t5, s1
  LW s2, 0(s1)
  SLLIW a3, s2, 2
  LD t4, 120(sp)
  ADD a3, t4, a3
  LW a4, 0(a3)
  SW t0, 0(a3)
  ADDIW s2, s2, 1
  SW s2, 0(s1)
  ADD s4, t0, zero
  ADD s3, a4, zero
  JAL zero, bb35
bb40:
  ADDI s1, zero, 16
  DIVW s1, a1, s1
  ADDIW s2, a2, 1
  ADD t2, s2, zero
  ADD a0, s1, zero
  JAL zero, bb36
bb41:
  LW t4, 16(sp)
  SLLIW s0, t4, 2
  ADDI t5, sp, 168
  ADD s1, t5, s0
  ADDI s2, zero, 1
  LW t4, 16(sp)
  SUBW s2, t4, s2
  SLLIW s2, s2, 2
  ADDI t5, sp, 232
  ADD s2, t5, s2
  LW s2, 0(s2)
  SW s2, 0(s1)
  ADDI t5, sp, 232
  ADD s1, t5, s0
  ADDI t4, sp, 296
  ADD s0, t4, s0
  LW s0, 0(s0)
  ADDW s0, s2, s0
  SW s0, 0(s1)
  LW t4, 16(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 8(sp)
  JAL zero, bb22
bb42:
  SLLIW s0, s11, 2
  LD t4, 120(sp)
  ADD s0, t4, s0
  LW s0, 0(s0)
  ADD s1, zero, zero
  # implict jump to bb43
bb43:
  ADD s2, s0, zero
  ADD s3, s1, zero
  LW t4, 36(sp)
  BLT s3, t4, bb45
  # implict jump to bb44
bb44:
  ADDI s4, zero, 16
  REMW s4, s2, s4
  SLLIW s4, s4, 2
  ADDI t5, sp, 296
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
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  LD s5, 104(sp)
  LD s6, 112(sp)
  LD s11, 128(sp)
  LD s7, 136(sp)
  LD s8, 144(sp)
  LD s9, 152(sp)
  LD s10, 160(sp)
  ADDI sp, sp, 368
  JALR zero, 0(ra)
bb47:
  ADDI s10, zero, 1
  JAL zero, bb18
bb48:
  ADDI s0, zero, 1
  SUBW s0, s9, s0
  SLLIW s1, s0, 2
  ADDI t5, sp, 296
  ADD s1, t5, s1
  SW zero, 0(s1)
  ADD s8, s0, zero
  JAL zero, bb15
bb49:
  ADDI s0, zero, 1
  SUBW s0, s7, s0
  SLLIW s1, s0, 2
  ADDI t5, sp, 232
  ADD s1, t5, s1
  SW zero, 0(s1)
  ADD s6, s0, zero
  JAL zero, bb13
bb50:
  ADDI s0, zero, 1
  LW t4, 32(sp)
  SUBW s0, t4, s0
  SLLIW s1, s0, 2
  ADDI t4, sp, 168
  ADD s1, t4, s1
  SW zero, 0(s1)
  ADD t4, s0, zero
  SW t4, 0(sp)
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
