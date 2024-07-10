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
  SLT s3, s2, s0
  BNE s3, zero, bb5
  # implict jump to bb2
bb2:
  LA s3, ans
  LW s4, 0(s3)
  SLT s3, s4, zero
  BNE s3, zero, bb4
  # implict jump to bb3
bb3:
  ADDI a0, zero, 102
  CALL _sysy_stoptime
  LA s3, ans
  LW s4, 0(s3)
  ADD a0, s4, zero
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
bb4:
  LA s3, ans
  LW s4, 0(s3)
  SUBW s3, zero, s4
  LA s4, ans
  SW s3, 0(s4)
  JAL zero, bb3
bb5:
  LA s3, ans
  LW s4, 0(s3)
  SLLIW s3, s2, 2
  LA s5, a
  ADD s6, s5, s3
  LW s3, 0(s6)
  ADDIW s5, s2, 2
  REMW s6, s3, s5
  MULW s3, s2, s6
  ADDW s5, s4, s3
  LA s3, ans
  SW s5, 0(s3)
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb1
getNumPos:
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
  ADD s1, a1, zero
  ADD s2, zero, zero
  ADD s3, s0, zero
  # implict jump to bb7
bb7:
  ADD s0, s3, zero
  ADD s4, s2, zero
  SLT s5, s4, s1
  BNE s5, zero, bb9
  # implict jump to bb8
bb8:
  ADDI s5, zero, 16
  REMW s6, s0, s5
  ADD a0, s6, zero
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
bb9:
  ADDI s5, zero, 16
  DIVW s6, s0, s5
  ADDIW s0, s4, 1
  ADD s2, s0, zero
  ADD s3, s6, zero
  JAL zero, bb7
radixSort:
  ADDI sp, sp, -368
  SD ra, 56(sp)
  SD s0, 64(sp)
  SD s1, 72(sp)
  SD s2, 80(sp)
  SD s3, 96(sp)
  SD s4, 104(sp)
  SD s5, 112(sp)
  SD s6, 120(sp)
  SD s7, 128(sp)
  SD s8, 136(sp)
  SD s9, 144(sp)
  SD s10, 152(sp)
  SD s11, 160(sp)
  ADD t4, a0, zero
  SW t4, 36(sp)
  ADD t4, a1, zero
  SD t4, 88(sp)
  ADD t4, a2, zero
  SW t4, 44(sp)
  ADD t4, a3, zero
  SW t4, 48(sp)
  ADDI t4, zero, 16
  SW t4, 0(sp)
  # implict jump to bb11
bb11:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t4, 32(sp)
  XOR s6, t4, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb50
  # implict jump to bb12
bb12:
  ADDI s6, zero, 16
  # implict jump to bb13
bb13:
  ADD s7, s6, zero
  XOR s8, s7, zero
  SLTU s9, zero, s8
  BNE s9, zero, bb49
  # implict jump to bb14
bb14:
  ADDI s8, zero, 16
  # implict jump to bb15
bb15:
  ADD s9, s8, zero
  XOR s10, s9, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb48
  # implict jump to bb16
bb16:
  LW t4, 36(sp)
  XORI s10, t4, -1
  SLTIU s11, s10, 1
  BNE s11, zero, bb47
  # implict jump to bb17
bb17:
  LW t4, 44(sp)
  ADDIW s10, t4, 1
  LW t4, 48(sp)
  SLT s11, s10, t4
  XORI s10, s11, 1
  ADD s11, s10, zero
  # implict jump to bb18
bb18:
  ADD s10, s11, zero
  BNE s10, zero, bb46
  # implict jump to bb19
bb19:
  LW t4, 44(sp)
  ADD s10, t4, zero
  # implict jump to bb20
bb20:
  ADD s11, s10, zero
  LW t4, 48(sp)
  SLT t0, s11, t4
  BNE t0, zero, bb42
  # implict jump to bb21
bb21:
  LW t4, 44(sp)
  SW t4, 168(sp)
  LW t0, 296(sp)
  LW t4, 44(sp)
  ADDW t1, t4, t0
  SW t1, 232(sp)
  ADDI t4, zero, 1
  SW t4, 12(sp)
  # implict jump to bb22
bb22:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t4, 16(sp)
  SLTI t2, t4, 16
  BNE t2, zero, bb41
  # implict jump to bb23
bb23:
  ADD t4, zero, zero
  SW t4, 20(sp)
  ADD t4, zero, zero
  SW t4, 4(sp)
  ADD t4, zero, zero
  SW t4, 24(sp)
  # implict jump to bb24
bb24:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 28(sp)
  SLTI s3, t4, 16
  BNE s3, zero, bb31
  # implict jump to bb25
bb25:
  LW t4, 44(sp)
  SW t4, 168(sp)
  LW s3, 296(sp)
  LW t4, 44(sp)
  ADDW s2, t4, s3
  SW s2, 232(sp)
  ADD s2, zero, zero
  # implict jump to bb26
bb26:
  ADD s3, s2, zero
  SLTI s1, s3, 16
  BNE s1, zero, bb28
  # implict jump to bb27
bb27:
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  LD s5, 112(sp)
  LD s6, 120(sp)
  LD s7, 128(sp)
  LD s8, 136(sp)
  LD s9, 144(sp)
  LD s10, 152(sp)
  LD s11, 160(sp)
  ADDI sp, sp, 368
  JALR zero, 0(ra)
bb28:
  SLT s1, zero, s3
  BNE s1, zero, bb30
  # implict jump to bb29
bb29:
  ADDI s0, zero, 1
  LW t4, 36(sp)
  SUBW s1, t4, s0
  SLLIW s0, s3, 2
  ADDI t5, sp, 168
  ADD s4, t5, s0
  LW s5, 0(s4)
  ADDI t5, sp, 232
  ADD s4, t5, s0
  LW s0, 0(s4)
  ADD a0, s1, zero
  LD t4, 88(sp)
  ADD a1, t4, zero
  ADD a2, s5, zero
  ADD a3, s0, zero
  CALL radixSort
  ADDIW s0, s3, 1
  ADD s2, s0, zero
  JAL zero, bb26
bb30:
  SLLIW s1, s3, 2
  ADDI t5, sp, 168
  ADD s0, t5, s1
  ADDI s4, zero, 1
  SUBW s5, s3, s4
  SLLIW s4, s5, 2
  ADDI t5, sp, 232
  ADD s5, t5, s4
  LW s4, 0(s5)
  SW s4, 0(s0)
  ADDI t5, sp, 232
  ADD s0, t5, s1
  ADDI t5, sp, 296
  ADD s5, t5, s1
  LW s1, 0(s5)
  ADDW s5, s4, s1
  SW s5, 0(s0)
  JAL zero, bb29
bb31:
  LW t4, 28(sp)
  SLLIW s0, t4, 2
  LW t4, 8(sp)
  ADD s1, t4, zero
  LW t4, 40(sp)
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
  LW t2, 0(t1)
  SLT t1, t0, t2
  BNE t1, zero, bb34
  # implict jump to bb33
bb33:
  LW t4, 28(sp)
  ADDIW t0, t4, 1
  ADD t4, s4, zero
  SW t4, 20(sp)
  ADD t4, s3, zero
  SW t4, 4(sp)
  ADD t4, t0, zero
  SW t4, 24(sp)
  JAL zero, bb24
bb34:
  LW s3, 0(s5)
  SLLIW t0, s3, 2
  LD t4, 88(sp)
  ADD s3, t4, t0
  LW t0, 0(s3)
  ADD s3, s4, zero
  ADD s4, t0, zero
  # implict jump to bb35
bb35:
  ADD t0, s4, zero
  ADD t1, s3, zero
  ADD t2, zero, zero
  ADD a0, t0, zero
  # implict jump to bb36
bb36:
  ADD a1, a0, zero
  ADD a2, t2, zero
  LW t4, 36(sp)
  SLT a3, a2, t4
  BNE a3, zero, bb40
  # implict jump to bb37
bb37:
  ADDI a3, zero, 16
  REMW a4, a1, a3
  LW t4, 28(sp)
  XOR a3, a4, t4
  SLTU a5, zero, a3
  BNE a5, zero, bb39
  # implict jump to bb38
bb38:
  LW a3, 0(s5)
  SLLIW a5, a3, 2
  LD t4, 88(sp)
  ADD a3, t4, a5
  SW t0, 0(a3)
  LW a3, 0(s5)
  ADDIW a5, a3, 1
  SW a5, 0(s5)
  ADD s1, t1, zero
  ADD s2, t0, zero
  JAL zero, bb32
bb39:
  SLLIW s1, a4, 2
  ADDI t5, sp, 168
  ADD s2, t5, s1
  LW s1, 0(s2)
  SLLIW a3, s1, 2
  LD t4, 88(sp)
  ADD s1, t4, a3
  LW a3, 0(s1)
  SW t0, 0(s1)
  LW s1, 0(s2)
  ADDIW a4, s1, 1
  SW a4, 0(s2)
  ADD s3, t0, zero
  ADD s4, a3, zero
  JAL zero, bb35
bb40:
  ADDI s1, zero, 16
  DIVW s2, a1, s1
  ADDIW s1, a2, 1
  ADD t2, s1, zero
  ADD a0, s2, zero
  JAL zero, bb36
bb41:
  LW t4, 16(sp)
  SLLIW s0, t4, 2
  ADDI t5, sp, 168
  ADD s1, t5, s0
  ADDI s2, zero, 1
  LW t4, 16(sp)
  SUBW s3, t4, s2
  SLLIW s2, s3, 2
  ADDI t5, sp, 232
  ADD s3, t5, s2
  LW s2, 0(s3)
  SW s2, 0(s1)
  ADDI t5, sp, 232
  ADD s1, t5, s0
  ADDI t5, sp, 296
  ADD s3, t5, s0
  LW s0, 0(s3)
  ADDW s3, s2, s0
  SW s3, 0(s1)
  LW t4, 16(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 12(sp)
  JAL zero, bb22
bb42:
  SLLIW s0, s11, 2
  LD t4, 88(sp)
  ADD s1, t4, s0
  LW s0, 0(s1)
  ADD s1, zero, zero
  ADD s2, s0, zero
  # implict jump to bb43
bb43:
  ADD s0, s2, zero
  ADD s3, s1, zero
  LW t4, 36(sp)
  SLT s4, s3, t4
  BNE s4, zero, bb45
  # implict jump to bb44
bb44:
  ADDI s4, zero, 16
  REMW s5, s0, s4
  SLLIW s4, s5, 2
  ADDI t5, sp, 296
  ADD s5, t5, s4
  LW s4, 0(s5)
  ADDIW t0, s4, 1
  SW t0, 0(s5)
  ADDIW s4, s11, 1
  ADD s10, s4, zero
  JAL zero, bb20
bb45:
  ADDI s4, zero, 16
  DIVW s5, s0, s4
  ADDIW s0, s3, 1
  ADD s1, s0, zero
  ADD s2, s5, zero
  JAL zero, bb43
bb46:
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  LD s5, 112(sp)
  LD s6, 120(sp)
  LD s7, 128(sp)
  LD s8, 136(sp)
  LD s9, 144(sp)
  LD s10, 152(sp)
  LD s11, 160(sp)
  ADDI sp, sp, 368
  JALR zero, 0(ra)
bb47:
  ADDI s11, zero, 1
  JAL zero, bb18
bb48:
  ADDI s0, zero, 1
  SUBW s1, s9, s0
  SLLIW s0, s1, 2
  ADDI t5, sp, 296
  ADD s2, t5, s0
  SW zero, 0(s2)
  ADD s8, s1, zero
  JAL zero, bb15
bb49:
  ADDI s0, zero, 1
  SUBW s1, s7, s0
  SLLIW s0, s1, 2
  ADDI t5, sp, 232
  ADD s2, t5, s0
  SW zero, 0(s2)
  ADD s6, s1, zero
  JAL zero, bb13
bb50:
  ADDI s0, zero, 1
  LW t4, 32(sp)
  SUBW s1, t4, s0
  SLLIW s0, s1, 2
  ADDI t5, sp, 168
  ADD s2, t5, s0
  SW zero, 0(s2)
  ADD t4, s1, zero
  SW t4, 0(sp)
  JAL zero, bb11
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
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  # implict jump to bb52
bb52:
  ADD s4, s3, zero
  ADD s5, s2, zero
  SLT s6, s5, s0
  BNE s6, zero, bb54
  # implict jump to bb53
bb53:
  ADD a0, s4, zero
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
bb54:
  SLLIW s6, s5, 2
  ADD s7, s1, s6
  LW s6, 0(s7)
  SLT s8, s4, s6
  BNE s8, zero, bb57
  # implict jump to bb55
bb55:
  ADD s6, s4, zero
  # implict jump to bb56
bb56:
  ADD s4, s6, zero
  ADDIW s6, s5, 1
  ADD s2, s6, zero
  ADD s3, s4, zero
  JAL zero, bb52
bb57:
  LW s4, 0(s7)
  ADD s6, s4, zero
  JAL zero, bb56
