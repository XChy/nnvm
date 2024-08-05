.global main
.global radixSort
.section .bss

a:
.space 120000040
.section .data
ans:
.word 0x00000000

.section .text
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  LA a0, a
  CALL getarray
  ADD s0, a0, zero
  ADDI a0, zero, 90
  CALL _sysy_starttime
  ADDI a0, zero, 8
  LA a1, a
  ADD a2, zero, zero
  ADD a3, s0, zero
  CALL radixSort
  BLT zero, s0, bb4
  # implict jump to bb1
bb1:
  LA a0, ans
  LW a0, 0(a0)
  BLT a0, zero, bb3
  # implict jump to bb2
bb2:
  ADDI a0, zero, 102
  CALL _sysy_stoptime
  LA a0, ans
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb3:
  LA a0, ans
  LW a0, 0(a0)
  SUBW a0, zero, a0
  LA s0, ans
  SW a0, 0(s0)
  JAL zero, bb2
bb4:
  ADD a0, zero, zero
  # implict jump to bb5
bb5:
  LA s1, ans
  LW s1, 0(s1)
  SLLIW s2, a0, 2
  LA s3, a
  ADD s2, s3, s2
  LW s2, 0(s2)
  ADDIW s3, a0, 2
  REMW s2, s2, s3
  MULW s2, a0, s2
  ADDW s1, s1, s2
  LA s2, ans
  SW s1, 0(s2)
  ADDIW a0, a0, 1
  BLT a0, s0, bb6
  JAL zero, bb1
bb6:
  JAL zero, bb5
radixSort:
  ADDI sp, sp, -272
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  ADD s1, a1, zero
  ADDI a1, zero, 16
  # implict jump to bb8
bb8:
  ADDI s0, zero, 1
  SUBW a1, a1, s0
  SLLIW s0, a1, 2
  ADDI t6, sp, 72
  ADD s0, t6, s0
  SW zero, 0(s0)
  BNE a1, zero, bb49
  # implict jump to bb9
bb9:
  ADDI a1, zero, 16
  # implict jump to bb10
bb10:
  ADDI s0, zero, 1
  SUBW a1, a1, s0
  SLLIW s0, a1, 2
  ADDI t6, sp, 136
  ADD s0, t6, s0
  SW zero, 0(s0)
  BNE a1, zero, bb48
  # implict jump to bb11
bb11:
  ADDI a1, zero, 16
  # implict jump to bb12
bb12:
  ADDI s0, zero, 1
  SUBW a1, a1, s0
  SLLIW s0, a1, 2
  ADDI t6, sp, 200
  ADD s0, t6, s0
  SW zero, 0(s0)
  BNE a1, zero, bb47
  # implict jump to bb13
bb13:
  XORI a1, a0, -1
  SLTIU a1, a1, 1
  BNE a1, zero, bb46
  # implict jump to bb14
bb14:
  ADDIW a1, a2, 1
  SLT a1, a1, a3
  XORI a1, a1, 1
  # implict jump to bb15
bb15:
  BNE a1, zero, bb45
  # implict jump to bb16
bb16:
  BLT a2, a3, bb36
  # implict jump to bb17
bb17:
  SW a2, 72(sp)
  LW a1, 200(sp)
  ADDW a3, a2, a1
  SW a3, 136(sp)
  SW a3, 76(sp)
  LW a1, 204(sp)
  ADDW a1, a3, a1
  SW a1, 140(sp)
  SW a1, 80(sp)
  LW s0, 208(sp)
  ADDW a1, a1, s0
  SW a1, 144(sp)
  SW a1, 84(sp)
  LW s0, 212(sp)
  ADDW a1, a1, s0
  SW a1, 148(sp)
  SW a1, 88(sp)
  LW s0, 216(sp)
  ADDW a1, a1, s0
  SW a1, 152(sp)
  SW a1, 92(sp)
  LW s0, 220(sp)
  ADDW a1, a1, s0
  SW a1, 156(sp)
  SW a1, 96(sp)
  LW s0, 224(sp)
  ADDW a1, a1, s0
  SW a1, 160(sp)
  SW a1, 100(sp)
  LW s0, 228(sp)
  ADDW a1, a1, s0
  SW a1, 164(sp)
  SW a1, 104(sp)
  LW s0, 232(sp)
  ADDW a1, a1, s0
  SW a1, 168(sp)
  SW a1, 108(sp)
  LW s0, 236(sp)
  ADDW a1, a1, s0
  SW a1, 172(sp)
  SW a1, 112(sp)
  LW s0, 240(sp)
  ADDW a1, a1, s0
  SW a1, 176(sp)
  SW a1, 116(sp)
  LW s0, 244(sp)
  ADDW a1, a1, s0
  SW a1, 180(sp)
  SW a1, 120(sp)
  LW s0, 248(sp)
  ADDW a1, a1, s0
  SW a1, 184(sp)
  SW a1, 124(sp)
  LW s0, 252(sp)
  ADDW a1, a1, s0
  SW a1, 188(sp)
  SW a1, 128(sp)
  LW s0, 256(sp)
  ADDW a1, a1, s0
  SW a1, 192(sp)
  SW a1, 132(sp)
  LW s0, 260(sp)
  ADDW a1, a1, s0
  SW a1, 196(sp)
  ADD s3, zero, zero
  ADD s2, zero, zero
  ADD a1, zero, zero
  # implict jump to bb18
bb18:
  SLLIW s5, s3, 2
  ADDI t6, sp, 72
  ADD s4, t6, s5
  LW s0, 0(s4)
  ADDI t6, sp, 136
  ADD s5, t6, s5
  LW s6, 0(s5)
  BLT s0, s6, bb23
  # implict jump to bb19
bb19:
  # implict jump to bb20
bb20:
  ADDIW s3, s3, 1
  SLTI s0, s3, 16
  BNE s0, zero, bb22
  # implict jump to bb21
bb21:
  SW a2, 72(sp)
  SW a3, 136(sp)
  ADDI a1, zero, 1
  SUBW s0, a0, a1
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL radixSort
  LW a2, 136(sp)
  SW a2, 76(sp)
  LW a0, 204(sp)
  ADDW a3, a2, a0
  SW a3, 140(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL radixSort
  LW a2, 140(sp)
  SW a2, 80(sp)
  LW a0, 208(sp)
  ADDW a3, a2, a0
  SW a3, 144(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL radixSort
  LW a2, 144(sp)
  SW a2, 84(sp)
  LW a0, 212(sp)
  ADDW a3, a2, a0
  SW a3, 148(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL radixSort
  LW a2, 148(sp)
  SW a2, 88(sp)
  LW a0, 216(sp)
  ADDW a3, a2, a0
  SW a3, 152(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL radixSort
  LW a2, 152(sp)
  SW a2, 92(sp)
  LW a0, 220(sp)
  ADDW a3, a2, a0
  SW a3, 156(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL radixSort
  LW a2, 156(sp)
  SW a2, 96(sp)
  LW a0, 224(sp)
  ADDW a3, a2, a0
  SW a3, 160(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL radixSort
  LW a2, 160(sp)
  SW a2, 100(sp)
  LW a0, 228(sp)
  ADDW a3, a2, a0
  SW a3, 164(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL radixSort
  LW a2, 164(sp)
  SW a2, 104(sp)
  LW a0, 232(sp)
  ADDW a3, a2, a0
  SW a3, 168(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL radixSort
  LW a2, 168(sp)
  SW a2, 108(sp)
  LW a0, 236(sp)
  ADDW a3, a2, a0
  SW a3, 172(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL radixSort
  LW a2, 172(sp)
  SW a2, 112(sp)
  LW a0, 240(sp)
  ADDW a3, a2, a0
  SW a3, 176(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL radixSort
  LW a2, 176(sp)
  SW a2, 116(sp)
  LW a0, 244(sp)
  ADDW a3, a2, a0
  SW a3, 180(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL radixSort
  LW a2, 180(sp)
  SW a2, 120(sp)
  LW a0, 248(sp)
  ADDW a3, a2, a0
  SW a3, 184(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL radixSort
  LW a2, 184(sp)
  SW a2, 124(sp)
  LW a0, 252(sp)
  ADDW a3, a2, a0
  SW a3, 188(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL radixSort
  LW a2, 188(sp)
  SW a2, 128(sp)
  LW a0, 256(sp)
  ADDW a3, a2, a0
  SW a3, 192(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL radixSort
  LW a2, 192(sp)
  SW a2, 132(sp)
  LW a0, 260(sp)
  ADDW a3, a2, a0
  SW a3, 196(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL radixSort
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb22:
  JAL zero, bb18
bb23:
  # implict jump to bb24
bb24:
  SLLIW a1, s0, 2
  ADD a1, s1, a1
  LW s0, 0(a1)
  # implict jump to bb25
bb25:
  ADD a1, s0, zero
  BLT zero, a0, bb32
  # implict jump to bb26
bb26:
  ADD s0, a1, zero
  # implict jump to bb27
bb27:
  SLLI s6, s0, 1
  SRLI s6, s6, 60
  ADD s6, s0, s6
  ANDI s6, s6, -16
  SUBW s0, s0, s6
  BNE s0, s3, bb31
  # implict jump to bb28
bb28:
  LW s0, 0(s4)
  SLLIW s6, s0, 2
  ADD s6, s1, s6
  SW a1, 0(s6)
  ADDIW s0, s0, 1
  SW s0, 0(s4)
  LW s0, 0(s4)
  LW s6, 0(s5)
  BLT s0, s6, bb30
  # implict jump to bb29
bb29:
  JAL zero, bb20
bb30:
  JAL zero, bb24
bb31:
  SLLIW s0, s0, 2
  ADDI t6, sp, 72
  ADD s2, t6, s0
  LW s6, 0(s2)
  SLLIW s0, s6, 2
  ADD s7, s1, s0
  LW s0, 0(s7)
  SW a1, 0(s7)
  ADDIW s6, s6, 1
  SW s6, 0(s2)
  ADD s2, a1, zero
  JAL zero, bb25
bb32:
  ADD s0, a1, zero
  ADD s6, zero, zero
  # implict jump to bb33
bb33:
  SRAIW s7, s0, 31
  SRLIW s7, s7, 28
  ADD s0, s0, s7
  SRAIW s0, s0, 4
  ADDIW s6, s6, 1
  BLT s6, a0, bb35
  # implict jump to bb34
bb34:
  JAL zero, bb27
bb35:
  JAL zero, bb33
bb36:
  ADD s2, a2, zero
  # implict jump to bb37
bb37:
  SLLIW a1, s2, 2
  ADD a1, s1, a1
  LW a1, 0(a1)
  BLT zero, a0, bb41
  # implict jump to bb38
bb38:
  # implict jump to bb39
bb39:
  SLLI s0, a1, 1
  SRLI s0, s0, 60
  ADD s0, a1, s0
  ANDI s0, s0, -16
  SUBW a1, a1, s0
  SLLIW a1, a1, 2
  ADDI t6, sp, 200
  ADD a1, t6, a1
  LW s0, 0(a1)
  ADDIW s0, s0, 1
  SW s0, 0(a1)
  ADDIW s2, s2, 1
  BLT s2, a3, bb40
  JAL zero, bb17
bb40:
  JAL zero, bb37
bb41:
  ADD s0, zero, zero
  # implict jump to bb42
bb42:
  SRAIW s3, a1, 31
  SRLIW s3, s3, 28
  ADD a1, a1, s3
  SRAIW a1, a1, 4
  ADDIW s0, s0, 1
  BLT s0, a0, bb44
  # implict jump to bb43
bb43:
  JAL zero, bb39
bb44:
  JAL zero, bb42
bb45:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb46:
  ADDI a1, zero, 1
  JAL zero, bb15
bb47:
  JAL zero, bb12
bb48:
  JAL zero, bb10
bb49:
  JAL zero, bb8
